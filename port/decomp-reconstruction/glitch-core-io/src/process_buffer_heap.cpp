#include "glitch-core-io/core/process_buffer.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "glitch-core-io/os/logging.hpp"
#include "core-platform/memory.hpp"  // operator new[](size, E_MEMORY_HINT), the original's overflow allocator

namespace glitch::core {

namespace {

// The heap object (20 bytes in the original). A block is a run of 32-bit words: its first
// word is the header and its last word the footer. A positive value is an allocated block
// of that many words (header included); a negative value is a free block. The raw
// allocation starts with a zero word, so start is one word past it.
struct CProcessBufferHeap {
    int* start = nullptr;        // +0x00: first block word
    int* end = nullptr;          // +0x04: bound (start plus the data words)
    int* top = nullptr;          // +0x08: first unused word
    int defaultSize = 0;         // +0x0c: size the heap is created with by allocProcessBuffer
    void* rawBase = nullptr;     // host: the malloc block; start is placed so every payload is 16-byte aligned (see setSize)
    // +0x10: allocations may fall back to the allocator when full. The static initializer sets it
    // to 1 at startup (0x534584, byte_9F65C4 = 1), so it starts enabled.
    bool excessEnabled = true;

    // 0x53427c: 0 when the heap now has the requested size, 1 when blocks are in use and
    // force is clear (nothing changes), 2 when the new storage could not be allocated.
    int setSize(int bytes, bool force);
    // 0x53434c: writes each allocated block to the logger.
    void dump(glitch::os::ILogger* logger, glitch::os::ELOG_LEVEL level) const;
    // 0x53443c (D1): releases the storage; reports blocks that are still in use.
    ~CProcessBufferHeap();
};

CProcessBufferHeap heap;

}  // namespace

// 0x53427c _ZN6glitch4core12_GLOBAL__N_118CProcessBufferHeap7setSizeEib
// The decompiled delete passes the start pointer; the ARM listing subtracts four bytes
// first, so the raw allocation (one word before start) is what gets freed.
int CProcessBufferHeap::setSize(int bytes, bool force) {
    const auto words = (static_cast<std::uint32_t>(bytes) + 3u) >> 2;
    if (start) {
        if (words == static_cast<std::uint32_t>(end - start)) return 0;
        if (start < top && !force) return 1;
        std::free(rawBase);
        rawBase = nullptr;
        start = nullptr;
        end = nullptr;
        top = nullptr;
    }
    if (words == 0) return 0;
    // Deviation (W2 sanitizer finding 6): the original (32-bit ARM) hands out blocks on 4-byte words. On a 64-bit host the objects placed in the
    // heap (SCreationState, CMaterial heap copies) have 8-byte members, and ldxr/atomics or vector stores on a misaligned address fault on arm64.
    // The first block word is placed so that header + 4 bytes (the payload) is 16-byte aligned, and every block is a multiple of 4 words, so all
    // payloads stay aligned. The word before start is still the zero sentinel; the heap logic is otherwise unchanged.
    auto* raw = static_cast<int*>(std::malloc((static_cast<std::size_t>(words) + 8) * sizeof(int)));
    if (!raw) return 2;
    rawBase = raw;
    int* aligned = raw + 1;
    while ((reinterpret_cast<std::uintptr_t>(aligned + 1) & 15u) != 0) ++aligned;
    aligned[-1] = 0;
    start = aligned;
    end = start + words;
    top = start;
    return 0;
}

// 0x53434c _ZNK6glitch4core12_GLOBAL__N_118CProcessBufferHeap4dumpEPNS_7ILoggerENS_10ELOG_LEVELE
void CProcessBufferHeap::dump(glitch::os::ILogger* logger, glitch::os::ELOG_LEVEL level) const {
    int* block = start;
    while (block != top) {
        const int header = *block;
        int step = 0;
        if (header < 1) {
            step = -header;
        } else {
            char text[1024];
            std::snprintf(text, sizeof text, "0x%08lx: %8d",
                          static_cast<unsigned long>(reinterpret_cast<std::uintptr_t>(block + 1)),
                          (header - 2) * 4);
            if (logger) logger->log(text, level);
            step = header;
        }
        // A zero header cannot occur in a valid heap; stop rather than loop forever.
        if (step == 0) break;
        block += step;
    }
}

// 0x53443c _ZN6glitch4core12_GLOBAL__N_118CProcessBufferHeapD1Ev
CProcessBufferHeap::~CProcessBufferHeap() {
    if (setSize(0, false) == 1) {
        os::Printer::log("Destroying process buffer heap with allocated blocks:", os::ELL_ERROR);
        dump(os::Printer::Logger, os::ELL_ERROR);
        if (start) std::free(rawBase);
    }
}

// 0x534218 _ZN6glitch4core24getProcessBufferHeapSizeEv
int getProcessBufferHeapSize() {
    return static_cast<int>(reinterpret_cast<std::uintptr_t>(heap.end) - reinterpret_cast<std::uintptr_t>(heap.start));
}

// 0x534234 _ZN6glitch4core35getProcessBufferHeapAvailableMemoryEv
int getProcessBufferHeapAvailableMemory() {
    const auto free = static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(heap.end) -
                                                 reinterpret_cast<std::uintptr_t>(heap.top)) &
                      0xfffffffcu;
    return static_cast<int>(free) - 8;
}

// 0x534254 _ZN6glitch4core32isProcessBufferHeapExcessEnabledEv
bool isProcessBufferHeapExcessEnabled() { return heap.excessEnabled; }

// 0x534268 _ZN6glitch4core33setProcessBufferHeapExcessEnabledEb
void setProcessBufferHeapExcessEnabled(bool enabled) { heap.excessEnabled = enabled; }

// 0x534334 _ZN6glitch4core24setProcessBufferHeapSizeEi
void setProcessBufferHeapSize(int size) { heap.setSize(size, false); }

// 0x5344b4 _ZN6glitch4core28dumpProcessBufferAllocationsEPNS_7ILoggerENS_10ELOG_LEVELE
void dumpProcessBufferAllocations(glitch::os::ILogger* logger, glitch::os::ELOG_LEVEL level) {
    heap.dump(logger, level);
}

// 0x5344d0 _ZN6glitch4core12_GLOBAL__N_121processBufferHeapInitEb
// The startup size is the immediate 0x40000 (`mov r0, #0x40000` in the byte listing). The shutdown
// branch calls setSize(0, true) (force from the setSize result, which is 1 on this path).
void processBufferHeapInit(bool atStartup) {
    if (atStartup) {
        setProcessBufferHeapSize(0x40000);
        return;
    }
    if (heap.setSize(0, false) != 1) return;
    os::Printer::log("Freeing process buffer heap would fail due to the following allocated blocks:",
                     os::ELL_ERROR);
    dumpProcessBufferAllocations(os::Printer::Logger, os::ELL_ERROR);
    os::Printer::log("Freeing anyways (at Glitch exit)", os::ELL_ERROR);
    heap.setSize(0, true);
}

// 0x5345f4 _ZN6glitch4core18allocProcessBufferEi
// The overflow path calls operator new[](size, glitch::memory::E_MEMORY_HINT 0) (0x5341a8, a thunk to
// GlitchAlloc 0x310568 and then CustomAlloc 0x310454), reproduced through the tagged operator new[] of
// core-platform/memory.hpp; in this build CustomAlloc is malloc, and releaseProcessBuffer's out-of-heap
// path calls CustomFree on it, so the pair stays consistent. The size the heap is first created with is
// dword_9F65C0, which the static initializer sets to 0 (0x5345a0), so the default is 0 and the heap is
// only created by an explicit setProcessBufferHeapSize call. Block/footer arithmetic matches the listing.
int* allocProcessBuffer(int size) {
    if (!heap.start) heap.setSize(heap.defaultSize, false);
    const auto words = static_cast<std::ptrdiff_t>((((static_cast<std::uint32_t>(size) + 3u) >> 2) + 2u + 3u) & ~3u);  // multiple of 4 words (16 bytes), see setSize
    if (words <= heap.end - heap.top) {
        int* block = heap.top;
        *block = static_cast<int>(words);
        heap.top += words;
        heap.top[-1] = static_cast<int>(words);
        return block + 1;
    }
    if (!heap.excessEnabled) return nullptr;
    return static_cast<int*>(::operator new[](static_cast<std::size_t>(size), glitch::memory::E_MEMORY_HINT(0)));
}

// 0x5d8ac4 _ZN6glitch4core20SSharedProcessBuffer5resetEi
// Refcount release of the old block (header is one word below data), then, for a positive size, a new
// block of size + 4 bytes with the count 1 in the first word and data one word past it.
void SSharedProcessBuffer::reset(int size) {
    if (data != nullptr) {
        if (--data[-1] == 0) releaseProcessBuffer(data - 1);
        data = nullptr;
    }
    if (size > 0) {
        int* block = allocProcessBuffer(size + 4);
        if (block != nullptr) {
            block[0] = 1;
            data = block + 1;
        }
    }
}

// 0x5d93c8 _ZN6glitch4core36SScopedEnableProcessBufferHeapExcessC1Eb.clone.1
// GCC clone with the bool argument folded to a constant: the listing stores the old flag at +0x00
// and calls the setter with 1 (the setter's second register is not an argument). The parameter is
// not read, so enabling is unconditional, as in the clone.
SScopedEnableProcessBufferHeapExcess::SScopedEnableProcessBufferHeapExcess(bool enable) {
    (void)enable;
    previous = isProcessBufferHeapExcessEnabled();
    setProcessBufferHeapExcessEnabled(true);
}

// 0x534688 _ZN6glitch4core20releaseProcessBufferEPv
// The original takes the pointer as an unsigned 32-bit value; it is a void* here.
void releaseProcessBuffer(void* block) {
    const auto addr = reinterpret_cast<std::uintptr_t>(block);
    if (addr < reinterpret_cast<std::uintptr_t>(heap.start) || reinterpret_cast<std::uintptr_t>(heap.end) <= addr) {
        if (block) std::free(block);
        return;
    }
    int* header = static_cast<int*>(block) - 1;
    // Mark the block free: header and footer hold its negated size.
    int h = -*header;
    *header = h;
    header[~h] = h;

    if (heap.top[-1] < 0) {
        // The block (or the free block below it) ends at the top: give the space back.
        heap.top += heap.top[-1];
        if (heap.top[-1] < 0) heap.top += heap.top[-1];
        return;
    }
    if (header[-1] < 0) {
        // Merge with the free block before it.
        h += header[-1];
        header += header[-1];
        *header = h;
        header[~h] = h;
    }
    const int next = header[-h];
    if (next < 0) {
        // Merge with the free block after it.
        h += next;
        *header = h;
        header[~h] = h;
    }
}

}  // namespace glitch::core

// The static initialiser of ProcessBufferHeap.cpp (0x534564): the heap is set to size 0 and processBufferHeapInit is registered as an init
// step (processBufferHeapInitDummy = glitch::registerInitStep(processBufferHeapInit)); glitch::init() then gives the heap its 0x40000 bytes.
// (Found by the stub audit: nothing registered it, so the pool was never created and every process buffer came from the allocator.)
namespace glitch {
int registerInitStep(void (*step)(bool));  // 0x6a10b0, glitch-scene-collada-gui/src/recon/slice_24.cpp
}  // namespace glitch

namespace glitch::core {
namespace {
[[maybe_unused]] const int processBufferHeapInitDummy = glitch::registerInitStep(processBufferHeapInit);
}  // namespace
}  // namespace glitch::core
