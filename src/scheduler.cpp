//
// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"

List<TCB> Scheduler::readyThreadQueue;

TCB *Scheduler::get()
{

    TCB* t = readyThreadQueue.removeFirst();


    return t;
}


    void Scheduler::put(TCB *ccb)
    {

        readyThreadQueue.addLast(ccb);


    }


void Scheduler::putFirst(TCB *ccb){
    readyThreadQueue.addFirst(ccb);
}