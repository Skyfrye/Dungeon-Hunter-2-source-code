// glitch::core process buffer heap: a single heap of 32-bit words that small per-frame
// buffers are carved from (see src/process_buffer_heap.cpp for the block layout). The
// accessors read and write the heap state; the heap functions below operate on it.
#pragma once

#include "glitch-core-io/os/logging.hpp"

namespace glitch::core {

// 0x534218: heap size in bytes (end bound minus start).
int getProcessBufferHeapSize();
// 0x534234: free bytes between the top of the heap and its bound, less the header of 8.
int getProcessBufferHeapAvailableMemory();
// 0x534254
bool isProcessBufferHeapExcessEnabled();
// 0x534268
void setProcessBufferHeapExcessEnabled(bool enabled);

// 0x534334: resizes the heap to the given number of bytes; fails silently when blocks are in use.
void setProcessBufferHeapSize(int size);
// 0x5344b4: writes every allocated block (address and size) to the logger.
void dumpProcessBufferAllocations(glitch::os::ILogger* logger, glitch::os::ELOG_LEVEL level);
// 0x5344d0 (anonymous namespace in the original; the static init and exit calls are not
// wired here): true at startup sets a 0x40000 byte heap; false at exit frees it, logging
// any blocks still in use.
void processBufferHeapInit(bool atStartup);
// A reference counted block from the process buffer heap. The count is the word before the
// data word that data points at; the block is released when the count reaches zero.
struct SSharedProcessBuffer {
    int* data = nullptr;  // +0x00: first data word (null when empty)
    // 0x5d8ac4: drops the current block and, for a positive size, takes a block of size + 4
    // bytes with a count of one. PARTIAL: when the heap cannot give the block, the buffer is left
    // empty (the original would write through the null block).
    void reset(int size);
};

// 0x5d93c8: records whether excess was enabled, then enables it. The GCC clone has the bool
// argument folded to true, so the argument is not read. The matching restore is not in this queue.
struct SScopedEnableProcessBufferHeapExcess {
    explicit SScopedEnableProcessBufferHeapExcess(bool enable);
    bool previous = false;  // +0x00
};

// 0x5345f4: a block of the given bytes from the heap, or from malloc when the heap is full
// and excess is enabled; null otherwise.
int* allocProcessBuffer(int size);
// 0x534688: returns a block to the heap (or frees it when it came from malloc).
void releaseProcessBuffer(void* block);

}  // namespace glitch::core
