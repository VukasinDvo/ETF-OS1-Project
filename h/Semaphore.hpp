//
// Created by os on 6/26/26.
//

#ifndef PROJECT_BASE_SEMAPHORE_H
#define PROJECT_BASE_SEMAPHORE_H
#include "syscall_cpp.hpp"
#include "list.hpp"
#include "MemoryAllocator.hpp"

class TCB;

class MySemaphore {
public:
    MySemaphore(unsigned init = 1) : value((int)init), closed(false) {}

    ~MySemaphore() { close(); }

    static MySemaphore* createSemaphore(unsigned init) {
        return new MySemaphore(init);
    }

    int wait();
    int signal();
    int close();

    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }
    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    int value;
    bool closed;
    List<TCB> blocked;
};


#endif //PROJECT_BASE_SEMAPHORE_H
