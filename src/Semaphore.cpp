//
// Created by os on 6/26/26.
//

#include "../h/Semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"
#include "syscall.h"
class TCB;

int MySemaphore::wait() {
    if(closed) return -1;
    this->value--;
    if (this->value < 0) {
        TCB::running->setBlocked(true);
        blocked.addLast(TCB::running);
        thread_dispatch();
    }
    return 0;
}

int MySemaphore::signal() {
    this->value++;
    if (value <= 0) {
        TCB* t = blocked.removeFirst();
        if (t != nullptr) {
            t->setBlocked(false);
            Scheduler::put(t);
        }
    }
    return 0;
}

int MySemaphore::close() {
    closed=true;
    TCB* t = blocked.removeFirst();
    while (t != nullptr) {
        t->setBlocked(false);
        Scheduler::put(t);
        t = blocked.removeFirst();
    }
    return 0;
}


