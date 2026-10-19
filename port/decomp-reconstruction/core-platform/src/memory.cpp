#include "core-platform/memory.hpp"
#include "core-platform/lc_api.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"  // gameswf::malloc_internal (0x752b3c), the thunk targets

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <mutex>

int gAssertLevel = 0;

namespace {
// The original guards its unit heap with a CMutex (s_mem_mutex).
std::mutex s_mem_mutex;

// Shared malloc path with the original's out-of-memory handling.
void* MallocOrReport(std::size_t size) {
    void* p = std::malloc(size);
    if (p == nullptr) {
        ShowMemoryStats("Out of memory:");
        if (gAssertLevel == 2) {
            // The original writes to address 0 here to force a crash.
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT FAILED: out of memory\n");
        }
    }
    return p;
}
}  // namespace

// 0x310414 InitMemory
void InitMemory() {}

// 0x310418 UnInitMem
void UnInitMem() {}

// 0x31041c ShowMemoryStats(char const*)
void ShowMemoryStats(const char*) {}

// 0x317bb0 UnInitUnitMemory
void UnInitUnitMemory() {}

// 0x317bb4 ShowUnitHeapMemoryStats(char const*)
void ShowUnitHeapMemoryStats(const char*) {}

// 0x31044c _Z7SwfFreePv
void SwfFree(void* p) { CustomFree(p); }

// 0x310450 _Z10GlitchFreePv
void GlitchFree(void* p) { CustomFree(p); }

// 0x310564 _Z8SwfAllocjN3swf7MemHintE
void* SwfAlloc(unsigned size, swf::MemHint) { return CustomAlloc(size); }

// 0x310698 _Z8SwfAllocjN3swf7MemHintEPKci
void* SwfAlloc(unsigned size, swf::MemHint, const char* file, int line) {
    return CustomAlloc(size, file, static_cast<unsigned>(line), nullptr);
}

// 0x310568 _Z11GlitchAllocjN6glitch6memory13E_MEMORY_HINTE
void* GlitchAlloc(unsigned size, glitch::memory::E_MEMORY_HINT) { return CustomAlloc(size); }

// 0x3106a8 _Z11GlitchAllocjN6glitch6memory13E_MEMORY_HINTEiPKci
void* GlitchAlloc(unsigned size, glitch::memory::E_MEMORY_HINT, int, const char* file, int line) {
    return CustomAlloc(size, file, static_cast<unsigned>(line), nullptr);
}

// 0x3106b8 _Z11GlitchAllocjN6glitch6memory13E_MEMORY_HINTEiPKciS3_
void* GlitchAlloc(unsigned size, glitch::memory::E_MEMORY_HINT, int, const char* file, int line,
                  const char* func) {
    return CustomAlloc(size, file, static_cast<unsigned>(line), func);
}

// 0x310660 _Z11CustomAllocjPKcjS0_ (thunk: forwards to the one-argument CustomAlloc)
void* CustomAlloc(unsigned size, const char*, unsigned, const char*) { return CustomAlloc(size); }

// 0x317c94 _Z15internal_mallocjPKcjS0_ (thunk: forwards to LC_API_MALLOC, 0x89d364)
void* internal_malloc(unsigned size, const char*, unsigned, const char*) { return LC_API_MALLOC(size); }

// 0x317bd8 _Z13internal_freePv
void internal_free(void* p) { std::free(p); }

// 0x317bc8 _Z15LockMemoryMutexv
void LockMemoryMutex() { s_mem_mutex.lock(); }

// 0x317bb8 _Z17UnlockMemoryMutexv
void UnlockMemoryMutex() { s_mem_mutex.unlock(); }

// 0x317bdc _Z7FreeMemPv
void FreeMem(void* p) {
    if (p != nullptr) {
        LockMemoryMutex();
        internal_free(p);
        UnlockMemoryMutex();
    }
}

// Tagged operator new/delete overloads. Hint-tagged forms that the original
// forwards to CustomAlloc/malloc keep that behaviour; the extra parameters are
// accepted and ignored by the malloc path, as in the original.

// 0x5341ac _ZnwjN6glitch6memory13E_MEMORY_HINTE
void* operator new(std::size_t size, glitch::memory::E_MEMORY_HINT hint) { return GlitchAlloc(static_cast<unsigned>(size), hint); }

// 0x5341a8 _ZnajN6glitch6memory13E_MEMORY_HINTE
void* operator new[](std::size_t size, glitch::memory::E_MEMORY_HINT hint) { return GlitchAlloc(static_cast<unsigned>(size), hint); }

// 0x53419c _ZnwjN6glitch6memory13E_MEMORY_HINTEiPKci
void* operator new(std::size_t size, glitch::memory::E_MEMORY_HINT hint, int flags, const char* file, int line) {
    return GlitchAlloc(static_cast<unsigned>(size), hint, flags, file, static_cast<unsigned>(line));
}

// 0x534198 _ZnajN6glitch6memory13E_MEMORY_HINTEiPKci
void* operator new[](std::size_t size, glitch::memory::E_MEMORY_HINT hint, int flags, const char* file, int line) {
    return GlitchAlloc(static_cast<unsigned>(size), hint, flags, file, static_cast<unsigned>(line));
}

// 0x534194 _ZdlPvN6glitch6memory13E_MEMORY_HINTE
void operator delete(void* p, glitch::memory::E_MEMORY_HINT) { GlitchFree(p); }

// 0x534190 _ZdaPvN6glitch6memory13E_MEMORY_HINTE
void operator delete[](void* p, glitch::memory::E_MEMORY_HINT) { GlitchFree(p); }

// 0x53417c _ZdlPvN6glitch6memory13E_MEMORY_HINTEiPKci
void operator delete(void* p, glitch::memory::E_MEMORY_HINT, int, const char*, int) { GlitchFree(p); }

// 0x534178 _ZdaPvN6glitch6memory13E_MEMORY_HINTEiPKci
void operator delete[](void* p, glitch::memory::E_MEMORY_HINT, int, const char*, int) { GlitchFree(p); }

// 0x3106d4 _Znwj15MemoryHintStatePKcjS1_
void* operator new(std::size_t size, MemoryHintState, const char* file, unsigned line, const char* func) {
    return CustomAlloc(static_cast<unsigned>(size), file, line, func);
}

// 0x3106c4 _Znaj15MemoryHintStatePKcjS1_
void* operator new[](std::size_t size, MemoryHintState, const char* file, unsigned line, const char* func) {
    return CustomAlloc(static_cast<unsigned>(size), file, line, func);
}

// 0x752ba8 _ZnwjN3swf7MemHintE
void* operator new(std::size_t size, swf::MemHint hint) { return SwfAlloc(static_cast<unsigned>(size), hint); }

// 0x752ba4 _ZnajN3swf7MemHintE
void* operator new[](std::size_t size, swf::MemHint hint) { return SwfAlloc(static_cast<unsigned>(size), hint); }

// 0x752b48 _ZnwjN3swf7MemHintEPKci
// The listing is one instruction (B gameswf::malloc_internal(uint, swf::MemHint, char const*, int),
// 0x752b3c), so decision 4 forwards it to that target; the target is reconstructed in this tree at
// vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-0.cpp, which is where the forward goes. The
// target replaces the caller's hint with 0 and tail-calls SwfAlloc (its ARM listing is "MOV R1,#0;
// B SwfAlloc"), so the hint this thunk receives is not the one SwfAlloc sees.
void* operator new(std::size_t size, swf::MemHint hint, const char* file, int line) {
    return gameswf::malloc_internal(static_cast<unsigned>(size), hint, file, line);
}

// 0x752b44 _ZnajN3swf7MemHintEPKci
// The one-instruction twin of 0x752b48 ("B gameswf::malloc_internal" as well), forwarded to the
// same reconstructed target in vendor-gameswf.
void* operator new[](std::size_t size, swf::MemHint hint, const char* file, int line) {
    return gameswf::malloc_internal(static_cast<unsigned>(size), hint, file, line);
}

namespace {
// Source paths and the assert format of the original, as printed to stderr.
constexpr const char kMemoryCppPath[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\memory.cpp";
constexpr const char kUnitHeapCppPath[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\UnitHeap.cpp";

// The original prints "ASSERT(%s) FAILED: %s:%d" when gAssertLevel is 1.
void ReportAssert(const char* condition, const char* file, int line) {
    std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", condition, file, line);
}

// File-scope heap statistics that AllocateMem initialises (never read back).
bool s_heapsInitialized = false;
unsigned s_totalAllocated = 0;
unsigned s_heapTotalAllocated = 0;
}  // namespace

// 0x310440 CustomFree(void*): a tail call to free. Not in this category's queue.
void CustomFree(void* p) { std::free(p); }

// 0x310454 _Z11CustomAllocj
// Hex-Rays: LC_API_MALLOC, then on failure ShowMemoryStats("Out of memory:") and
// the assert for level 2 (the original writes to address 0; abort() here, same
// effect: the process stops) or level 1 (condition text "ptr", line 58).
void* CustomAlloc(unsigned size) {
    void* p = std::malloc(size);
    if (p == nullptr) {
        ShowMemoryStats("Out of memory:");
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            ReportAssert("ptr", kMemoryCppPath, 0x3a);
        }
    }
    return p;
}

// 0x310574 _Z13CustomReallocPvj
// Allocates the new block, copies `size` bytes from the old block when both are
// non-null (the original copies the full new size, which can read past a smaller
// old block; kept as is), frees the old block, and returns the new block.
void* CustomRealloc(void* p, unsigned size) {
    void* dest = CustomAlloc(size);
    if (dest != nullptr && p != nullptr) {
        std::memcpy(dest, p, size);
    }
    CustomFree(p);
    return dest;
}

// 0x3105b4 _Z14CustomMemalignjj
// The alignment is ignored: the original reports the assert and returns
// CustomAlloc(size) (a tail call).
void* CustomMemalign(unsigned, unsigned size) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        ReportAssert("0", kMemoryCppPath, 0x50);
    }
    return CustomAlloc(size);
}

// 0x317c00 _Z23internal_malloc_alignedjjPKcjS0_
// The alignment is not used: the original's aligned path is a tail call to
// malloc(size) after the assert report.
void* internal_malloc_aligned(unsigned, unsigned size, const char*, unsigned, const char*) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        ReportAssert("0", kUnitHeapCppPath, 0x51);
    }
    return std::malloc(size);
}

// 0x317c98 _Z11AllocateMemjjPKcjS0_
// Takes the heap mutex, tries the aligned path when an alignment is given, then
// falls back to the plain internal heap. Reports out-of-memory on a null result.
// The fallback call passes size, file, line and function (the IDA listing sets
// four argument registers for internal_malloc at 0x317c94).
void* AllocateMem(unsigned size, unsigned alignment, const char* file, unsigned line, const char* func) {
    LockMemoryMutex();
    if (!s_heapsInitialized) {
        s_totalAllocated = 0;
        s_heapsInitialized = true;
        s_heapTotalAllocated = 0;
    }
    void* p = nullptr;
    bool needPlain = true;
    if (alignment != 0) {
        p = internal_malloc_aligned(alignment, size, file, line, func);
        needPlain = (p == nullptr);
    }
    if (needPlain) {
        p = internal_malloc(size, file, line, func);
    }
    if (p == nullptr) {
        ShowMemoryStats("Out of memory.");
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            ReportAssert("0", kUnitHeapCppPath, 0x1cd);
        }
    }
    UnlockMemoryMutex();
    return p;
}
