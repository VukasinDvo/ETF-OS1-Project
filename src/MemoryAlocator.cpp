#include "../h/MemoryAllocator.hpp"

Block* MemoryAllocator::free= nullptr;
Block* MemoryAllocator::used=nullptr;



MemoryAllocator::MemoryAllocator()
{
    initMem();
}
MemoryAllocator::~MemoryAllocator()
{
}
void MemoryAllocator::initMem() {

        free = (Block*)HEAP_START_ADDR;

        free->next = nullptr;
        free->prev = nullptr;

        free->size =
                (size_t)((char*)HEAP_END_ADDR
                         - (char*)HEAP_START_ADDR
                         - sizeof(Block));

        used = nullptr;
    }

void* MemoryAllocator::mem_alloc(size_t size)
{
    if(size == 0) return nullptr;

    size_t newSize =
            ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE)
            * MEM_BLOCK_SIZE;

    Block* prev = nullptr;
    Block* blk = free;

    for(; blk != nullptr; prev = blk, blk = blk->next)
    {
        if(blk->size >= newSize)
            break;
    }

    if(blk == nullptr)
        return nullptr;

    size_t remainingSize = blk->size - newSize;

    if(remainingSize >= sizeof(Block) + MEM_BLOCK_SIZE)
    {
        Block* newBlk =
                (Block*)((char*)blk + sizeof(Block) + newSize);

        newBlk->size = remainingSize - sizeof(Block);
        newBlk->next = blk->next;
        newBlk->prev = prev;

        if(prev)
            prev->next = newBlk;
        else
            free = newBlk;

        if(newBlk->next)
            newBlk->next->prev = newBlk;

        blk->size = newSize;
    }
    else
    {
        if(prev)
            prev->next = blk->next;
        else
            free = blk->next;

        if(blk->next)
            blk->next->prev = prev;
    }

    blk->prev = nullptr;
    blk->next = used;

    if(used)
        used->prev = blk;

    used = blk;

    return (char*)blk + sizeof(Block);
}
int MemoryAllocator::tryToJoin(Block* curr)
{
    if(curr == nullptr || curr->next == nullptr)
        return -1;

    if((char*)curr + sizeof(Block) + curr->size == (char*)curr->next)
    {
        Block* nextBlk = curr->next;

        curr->size += sizeof(Block) + nextBlk->size;
        curr->next = nextBlk->next;

        if(curr->next)
            curr->next->prev = curr;

        return 0;
    }
    return -1;
}
int MemoryAllocator::mem_free(void* ptr)
{
    if(ptr == nullptr)
        return -1;

    Block* curr = (Block*)((char*)ptr - sizeof(Block));

    if(curr->prev)
        curr->prev->next = curr->next;
    else
        used = curr->next;

    if(curr->next)
        curr->next->prev = curr->prev;
    Block* prev = nullptr;
    Block* iter = free;

    while(iter && (char*)iter < (char*)curr)
    {
        prev = iter;
        iter = iter->next;
    }

    curr->prev = prev;
    curr->next = iter;

    if(iter)
        iter->prev = curr;

    if(prev)
        prev->next = curr;
    else
        free = curr;

    tryToJoin(curr);

    if(prev)
        tryToJoin(prev);
    return 0;
}