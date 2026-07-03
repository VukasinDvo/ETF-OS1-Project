#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"

extern const size_t MEM_BLOCK_SIZE;

void* mem_alloc(size_t size) {
    size_t new_size;
    if (size % MEM_BLOCK_SIZE != 0) {
        new_size = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    } else {
        new_size = size;
    }
    void* return_val;
    __asm__ volatile ("mv a1, %0" : : "r"(new_size) : "a1");
    __asm__ volatile ("li a0, 0x01" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(return_val));
    return return_val;
}

int mem_free(void* ptr) {
    uint64 return_val;
    __asm__ volatile ("mv a1, %0" : : "r"(ptr) : "a1");
    __asm__ volatile ("li a0, 0x02" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(return_val));
    return (int)return_val;
}

int create_main_thread() {
    uint64 returnValue;
    __asm__ volatile ("li a0, 0x09" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int thread_create_wo_start(thread_t* handle, void (*start_routine)(void*), void* arg) {
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(handle) : "a1");
    __asm__ volatile ("mv a2, %0" : : "r"(start_routine) : "a2");
    __asm__ volatile ("mv a3, %0" : : "r"(arg) : "a3");
    __asm__ volatile ("li a0, 0x15" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

void thread_start(thread_t tcb) {
    __asm__ volatile ("mv a1, %0" : : "r"(tcb) : "a1");
    __asm__ volatile ("li a0, 0x10" : : : "a0");
    __asm__ volatile ("ecall");
}

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(handle) : "a1");
    __asm__ volatile ("mv a2, %0" : : "r"(start_routine) : "a2");
    __asm__ volatile ("mv a3, %0" : : "r"(arg) : "a3");
    __asm__ volatile ("li a0, 0x11" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int thread_exit() {
    uint64 returnValue;
    __asm__ volatile ("li a0, 0x12" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

void thread_dispatch() {
    __asm__ volatile ("li a0, 0x13" : : : "a0");
    __asm__ volatile ("ecall");
}

void thread_join(thread_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r"(handle) : "a1");
    __asm__ volatile ("li a0, 0x14" : : : "a0");
    __asm__ volatile ("ecall");
}

int sem_open(sem_t* handle, unsigned init) {
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(handle) : "a1");
    __asm__ volatile ("mv a2, %0" : : "r"(init) : "a2");
    __asm__ volatile ("li a0, 0x21" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int sem_close(sem_t handle) {
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(handle) : "a1");
    __asm__ volatile ("li a0, 0x22" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int sem_wait(sem_t id) {
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(id) : "a1");
    __asm__ volatile ("li a0, 0x23" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int sem_signal(sem_t id) {
    uint64 returnValue;
    __asm__ volatile ("mv a1, %0" : : "r"(id) : "a1");
    __asm__ volatile ("li a0, 0x24" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

char getc() {
    char returnValue;
    __asm__ volatile ("li a0, 0x41" : : : "a0");
    __asm__ volatile ("ecall");
    __asm__ volatile ("mv %0, a0" : "=r"(returnValue));
    return returnValue;
}

void putc(char c) {
    __asm__ volatile ("mv a1, %0" : : "r"(c) : "a1");
    __asm__ volatile ("li a0, 0x42" : : : "a0");
    __asm__ volatile ("ecall");
}

int time_sleep(time_t time) {
    return 0;
}