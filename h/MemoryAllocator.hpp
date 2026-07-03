//
// Created by os on 6/3/26.
//
#ifndef PROJECT_BASE_MEMORYALOCATOR_H
#define PROJECT_BASE_MEMORYALOCATOR_H

#include "../lib/hw.h"

struct Block
{
    Block* next;
    Block* prev;
    size_t size;
};

class MemoryAllocator
{
public:
    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;

    static MemoryAllocator instance;

    static Block* free;
    static Block* used;

    static MemoryAllocator& getInstance();

    static void* mem_alloc(size_t size);
    static int mem_free(void* ptr);
    static int tryToJoin(Block* curr);
    static void initMem();

private:
    MemoryAllocator();
    ~MemoryAllocator();
};

#endif

//PROJECT_BASE_MEMORYALOCATOR_H
