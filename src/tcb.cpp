//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include"../h/print.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body,void* arg)
{

    TCB* newThread= new TCB(body,arg);
    Scheduler::put(newThread);
    return newThread;
}
TCB *TCB::createThreadNoStart(Body body,void* arg){
    TCB* newThread= new TCB(body,arg);
    return newThread;
}

void TCB::yield()
{
    __asm__ volatile ("ecall");
}
TCB* TCB::createMainThread() {
    TCB* main = new TCB(nullptr, nullptr);
    return main;
}


void TCB::dispatch() {
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) {
        Scheduler::put(old);
    }
    running = Scheduler::get();
    if (running == nullptr) {
        running = old;
        return;
    }
    TCB::contextSwitch(&old->context, &running->context);
}


void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    thread_dispatch();

}
void TCB::thread_start(TCB *ThreadToStart) {

    Scheduler::put(ThreadToStart);
}
