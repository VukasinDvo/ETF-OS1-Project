//
// Created by os on 6/3/26.
//
#include "../h/syscall_cpp.hpp"
#include "../h/tcb.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"


Thread::Thread(void (*body)(void*), void* arg)
{
    thread_create(&this->myHandle,body,arg);
}

Thread::~Thread()
{
    delete this->myHandle;
}

int Thread::start()
{
    thread_start(this->myHandle);
    return 0;
}

void Thread::dispatch()
{
    thread_dispatch();
}

int Thread::sleep(time_t) {
    return 0;
}


Thread::Thread() {
    thread_create_wo_start(&this->myHandle, runWrapper, this);
}



Semaphore::Semaphore(unsigned init) {
    printString("sem_open start\n");
    sem_open(&this->myHandle, init);
    printString("sem_open done\n");
}

Semaphore::~Semaphore() {
    sem_close(this->myHandle);
}

int Semaphore::wait() {
    return sem_wait(this->myHandle);
}

int Semaphore::signal() {
    return sem_signal(this->myHandle);
}



char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    return mem_alloc(n);
}

void *operator new[](size_t n)
{
    return mem_alloc(n);
}

void operator delete(void *p) noexcept
{
mem_free(p);
}

void operator delete[](void *p) noexcept
{
mem_free(p);
}