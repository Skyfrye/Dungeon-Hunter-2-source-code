// Memory wrappers around malloc/free (0x310414..0x310660, 0x317bb0..0x317c94).
// The original's custom heap is not present in this build; allocation goes
// straight through malloc, keeping the original hooks and call shapes.
#pragma once

#include <cstddef>

#include "glitch-core-io/core/memory_hint.hpp"  // glitch::memory::E_MEMORY_HINT (canonical)
#include "core-platform/deps/swf_types.hpp"

// Memory-hint state used by the tagged operator new overloads.
enum MemoryHintState : int {
    MHS_UNRECOVERED = 0,
};

extern int gAssertLevel;

void InitMemory();
void UnInitMem();
void ShowMemoryStats(const char* title);
void UnInitUnitMemory();
void ShowUnitHeapMemoryStats(const char* title);

void SwfFree(void* p);
void GlitchFree(void* p);
void* SwfAlloc(unsigned size, swf::MemHint hint);
void* SwfAlloc(unsigned size, swf::MemHint hint, const char* file, int line);
void* GlitchAlloc(unsigned size, glitch::memory::E_MEMORY_HINT hint);
void* GlitchAlloc(unsigned size, glitch::memory::E_MEMORY_HINT hint, int, const char* file, int line);
void* GlitchAlloc(unsigned size, glitch::memory::E_MEMORY_HINT hint, int, const char* file, int line,
                  const char* func);
void* CustomAlloc(unsigned size, const char* file, unsigned line, const char* func);
void* CustomAlloc(unsigned size);                                // 0x310454
void CustomFree(void* p);                                        // 0x310440 (not in queue)
void* CustomRealloc(void* p, unsigned size);                     // 0x310574
void* CustomMemalign(unsigned alignment, unsigned size);         // 0x3105b4
void* internal_malloc_aligned(unsigned alignment, unsigned size, const char* file, unsigned line,
                              const char* func);                 // 0x317c00
void* AllocateMem(unsigned size, unsigned alignment, const char* file, unsigned line,
                  const char* func);                             // 0x317c98

void* internal_malloc(unsigned size, const char* file, unsigned line, const char* func);
void internal_free(void* p);
void LockMemoryMutex();
void UnlockMemoryMutex();
void FreeMem(void* p);

// Tagged global operator new/delete overloads (defined in src/memory.cpp).
void* operator new(std::size_t size, glitch::memory::E_MEMORY_HINT hint);
void* operator new[](std::size_t size, glitch::memory::E_MEMORY_HINT hint);
void* operator new(std::size_t size, glitch::memory::E_MEMORY_HINT hint, int, const char* file, int line);
void* operator new[](std::size_t size, glitch::memory::E_MEMORY_HINT hint, int, const char* file, int line);
void operator delete(void* p, glitch::memory::E_MEMORY_HINT);
void operator delete[](void* p, glitch::memory::E_MEMORY_HINT);
void operator delete(void* p, glitch::memory::E_MEMORY_HINT, int, const char* file, int line);
void operator delete[](void* p, glitch::memory::E_MEMORY_HINT, int, const char* file, int line);
void* operator new(std::size_t size, MemoryHintState hint, const char* file, unsigned line, const char* func);
void* operator new[](std::size_t size, MemoryHintState hint, const char* file, unsigned line, const char* func);
void* operator new(std::size_t size, swf::MemHint hint);
void* operator new[](std::size_t size, swf::MemHint hint);
void* operator new(std::size_t size, swf::MemHint hint, const char* file, int line);
void* operator new[](std::size_t size, swf::MemHint hint, const char* file, int line);
