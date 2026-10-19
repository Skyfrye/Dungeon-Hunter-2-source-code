#include "vox-audio/vox/memory.hpp"

#include <cstdlib>

#include "core-platform/memory.hpp"  // CustomAlloc, CustomMemalign (core-platform: malloc plus the Out of memory report and the gAssertLevel 1/2 branches)

namespace vox {

// Port seam, not in the original: the report that CustomAlloc makes through ShowMemoryStats is core-platform's
// (its body is empty there). Kept so callers that registered a hook still link; it is not called by VoxAlloc now
// that the allocations go to the real CustomAlloc / CustomMemalign.
namespace {
OutOfMemoryHook g_out_of_memory_hook = nullptr;
}
void SetOutOfMemoryHook(OutOfMemoryHook hook) { g_out_of_memory_hook = hook; }

}  // namespace vox

// 0x3104f8 _Z8VoxAllocj
// Verified from the listing: a single `B` to CustomAlloc(uint) at 0x310454, which mallocs and, on a null result,
// runs ShowMemoryStats("Out of memory:") and the gAssertLevel 2 (null write) / 1 (ASSERT report, "ptr",
// memory.cpp:58) branches. The port forwards to core-platform's CustomAlloc, which has those branches.
void* VoxAlloc(std::size_t size) { return CustomAlloc(static_cast<unsigned>(size)); }

// 0x310648 _Z8VoxAllocjN3vox10VoxMemHintE
// Verified from the listing: the hint is tested (SUBS R3,R1,#0); a hint above 0 branches to
// CustomMemalign(hint, size) at 0x3105b4 and anything else to CustomAlloc(size) at 0x310454.
void* VoxAlloc(std::size_t size, vox::VoxMemHint hint) {
    if (hint > 0) {
        return CustomMemalign(static_cast<unsigned>(hint), static_cast<unsigned>(size));
    }
    return CustomAlloc(static_cast<unsigned>(size));
}

// 0x310664 _Z8VoxAllocjN3vox10VoxMemHintEPKcS2_i
// Verified from the listing: with a hint above 0 it tail-calls CustomMemalign(hint, size); otherwise it
// tail-calls CustomAlloc(size, file, line, nullptr) at 0x310660, which only forwards to CustomAlloc(uint). The
// function argument is dropped (the listing sets r0, r1, r2 and r3 only).
void* VoxAlloc(std::size_t size, vox::VoxMemHint hint, const char* file, const char* /*function*/, int line) {
    if (hint > 0) {
        return CustomMemalign(static_cast<unsigned>(hint), static_cast<unsigned>(size));
    }
    return CustomAlloc(static_cast<unsigned>(size), file, static_cast<unsigned>(line), nullptr);
}

// 0x31068c _Z8VoxAllocjPKcS0_i
// Verified from the listing: it moves the line argument into the third slot and passes nullptr as the fourth, then
// tail-calls CustomAlloc(uint, char const*, uint, char const*) at 0x310660 (a one-instruction `B` to
// CustomAlloc(uint)); the function argument is dropped. This is VoxAlloc_c's (0x889494) target.
void* VoxAlloc(std::size_t size, const char* file, const char* /*function*/, int line) {
    return CustomAlloc(static_cast<unsigned>(size), file, static_cast<unsigned>(line), nullptr);
}

// 0x310444 _Z7VoxFreePv
void VoxFree(void* ptr) { std::free(ptr); }

// 0x889490 VoxFree_c
extern "C" void VoxFree_c(void* ptr) { std::free(ptr); }
