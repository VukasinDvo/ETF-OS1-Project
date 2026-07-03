//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"

#include "../h/MemoryAllocator.hpp"
#include "../h/print.hpp"
#include "../h/Semaphore.hpp"



void Riscv::popSppSpie() {
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();


        uint64 broj = Riscv::r_a0();
        int returnVal;
        switch (broj) {
            case 0x01:
                size_t size;
                void *ptr;

                __asm__ volatile("mv %0,a1":"=r"(size));
                ptr = MemoryAllocator::mem_alloc(size);
                __asm__ volatile("mv t0, %0" : : "r"(ptr));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            case 0x02:
                void *freePtr;
                __asm__ volatile("mv %0,a1":"=r"(freePtr));

                returnVal = MemoryAllocator::mem_free(freePtr);
                __asm__ volatile("mv t0,%0":"=r"(returnVal));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            case 0x10: {
                TCB* tcb;
                __asm__ volatile("mv %0, a1" : "=r"(tcb));
                TCB::thread_start(tcb);
                break;
            }

            case 0x09: {
                TCB *main = TCB::createMainThread();
                TCB::running = main;
                __asm__ volatile ("li t0, 0");
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            }

            case 0x11:
                TCB** tcb;
                TCB::Body body;
                void* arg;
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
                __asm__ volatile ("mv %0, a2" : "=r" (body));
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
                *tcb = TCB::createThread(body, arg);
                if(*tcb != nullptr) {
                   // __asm__ volatile ("li a0, 0");
                    __asm__ volatile ("li t0, 0");
                    __asm__ volatile ("sd t0, 80(x8)");
                }
                else {
                    //__asm__ volatile ("li a0, -1");
                    __asm__ volatile ("li t0, -1");
                    __asm__ volatile ("sd t0, 80(x8)");
                }
                break;


            case 0x12:
                TCB::running->setFinished(true);
                TCB::dispatch();

                __asm__ volatile("li t0,0");
                __asm__ volatile("sw t0,80(x8)");
                break;
            case 0x13:
                TCB::dispatch();

                break;
            default:
                break;
            case 0x15:
                TCB** TcbNoStart;
                TCB::Body bodyNoStart;
                void* argNoStart;
                __asm__ volatile ("mv %0, a1" : "=r" (TcbNoStart));
                __asm__ volatile ("mv %0, a2" : "=r" (bodyNoStart));
                __asm__ volatile ("mv %0, a3" : "=r" (argNoStart));
                *TcbNoStart = TCB::createThreadNoStart(bodyNoStart, argNoStart);
                if(*TcbNoStart != nullptr) {
                    // __asm__ volatile ("li a0, 0");
                    __asm__ volatile ("li t0, 0");
                    __asm__ volatile ("sd t0, 80(x8)");
                }
                else {
                    //__asm__ volatile ("li a0, -1");
                    __asm__ volatile ("li t0, -1");
                    __asm__ volatile ("sd t0, 80(x8)");
                }
            case 0x21: {
                MySemaphore** semHandle;
                unsigned init;
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
                __asm__ volatile ("mv %0, a2" : "=r" (init));
                *semHandle = MySemaphore::createSemaphore(init);
                if (*semHandle != nullptr) {
                    __asm__ volatile ("li a0, 0");
                } else {
                    __asm__ volatile ("li a0, -1");
                }
                break;
            }

            case 0x22: {
                MySemaphore* sem;
                __asm__ volatile ("mv %0, a1" : "=r"(sem));
                if (sem != nullptr) {
                    returnVal = sem->close();
                } else {
                    returnVal = -1;
                }
                __asm__ volatile ("mv a0, %0" : : "r"(returnVal));
                break;
            }
            case 0x23: {
                MySemaphore* sem;
                __asm__ volatile ("mv %0, a1" : "=r"(sem));
                if (sem != nullptr) {
                    returnVal = sem->wait();
                } else {
                    returnVal = -1;
                }
                __asm__ volatile ("mv a0, %0" : : "r"(returnVal));
                break;
            }
            case 0x24: {
                MySemaphore* sem;
                __asm__ volatile ("mv %0, a1" : "=r"(sem));
                if (sem != nullptr) {
                    returnVal = sem->signal();
                } else {
                    returnVal = -1;
                }
                __asm__ volatile ("mv a0, %0" : : "r"(returnVal));
                break;
            }

            case 0x41:
                //getc
                returnVal = __getc();
                __asm__ volatile ("mv t0, %0" : : "r"(returnVal));
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            case 0x42:
                //putc
                char c;
                __asm__ volatile ("mv %0, a1" : "=r" (c));
                __putc(c);
                break;



        }


        w_sstatus(sstatus);
        w_sepc(sepc);
    }
else if(scause == 0x8000000000000001UL){
mc_sip(SIP_SSIP);
} else if(scause == 0x8000000000000009UL){
console_handler();
}
    else
    {
        printStr("Error:");
        printInteger(scause);
        uint64 fault_address;
        __asm__ volatile("csrr %0, sepc" : "=r"(fault_address));

        printStr("Prekid na adresi (sepc): 0x");
        printInteger(fault_address); // Odštampaj je kao hex
        printStr("\n");
        while(1);
    }
}

void Riscv::handleConsoleInterrupt() {
    uint64 irq =plic_claim();
    if(irq==0x0a) {
        console_handler();
    }
    plic_complete(irq);
}

void Riscv::handleTimerInterrupt() {
    mc_sip(SIP_SSIP);
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
}

