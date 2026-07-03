//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"

#include "../test/printing.hpp"
#include "../h/riscv.hpp"


extern void userMain();

void userMainWrapper(void*) {
    userMain();
}

int main() {
    MemoryAllocator::initMem();
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);

    create_main_thread();

    thread_t userMainThread;
    thread_create(&userMainThread, userMainWrapper, nullptr);

    while(true) {
        thread_dispatch();
    }
    return 0;
}
