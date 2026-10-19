// Behaviour test for the reconstructed STLport allocation machinery
// (core-platform/stlport_alloc.hpp). Every expectation below comes from a listing:
//   0x3209a8 / 0x31167c  _String_base::_M_allocate_block  (0x10 no-op, 0x80 allocator switch)
//   0x56c2bc / 0x3139ac  _String_base::_M_deallocate_block
//   0x8b6398 / 0x8b63f4  __node_alloc(_impl)::_M_allocate   (8-byte round-up, visible in the size)
//   0x8b6224 / 0x31bb44  __node_alloc(_impl)::_M_deallocate (0x80 switch)
#include "core-platform/stlport_alloc.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>

// The four heap entry points this test drives. The real ones are memory.cpp's (GlitchAlloc 0x310568,
// GlitchFree 0x310450, CustomAlloc 0x310454, CustomFree 0x310440), which reach the device-layer malloc;
// here they are plain malloc/free so the pool logic can be observed byte for byte. Tests link with
// -Wl,--allow-multiple-definition and these definitions come first, so the library's are not used by this
// executable only (the CMake test comment describes the same convention).
void* GlitchAlloc(unsigned size, glitch::memory::E_MEMORY_HINT) { return std::malloc(size); }
void GlitchFree(void* p) { std::free(p); }
void* CustomAlloc(unsigned size) { return std::malloc(size); }
void CustomFree(void* p) { std::free(p); }

namespace {

int failures = 0;
#define CHECK(cond)                                                        \
    do {                                                                   \
        if (!(cond)) {                                                     \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #cond);     \
            ++failures;                                                    \
        }                                                                  \
    } while (0)

using SAllocString = std::priv::_String_base<char, glitch::core::SAllocator<char, glitch::memory::EMH_UNRECOVERED> >;
using PlainString = std::priv::_String_base<char, std::allocator<char> >;

// 0x3209a8 / 0x31167c: a request of exactly 16 allocates nothing and writes no pointer. This is the case
// every default-constructed glitch string hits (GSFlashMenu 0x3841b4 calls it with 16).
template <typename String>
void CheckInlineSizeIsANoOp() {
    String s;
    char* const data = s._M_start_of_storage._M_data;
    char* const end = s._M_end_of_storage;
    s._M_allocate_block(0x10);
    CHECK(s._M_start_of_storage._M_data == data);
    CHECK(s._M_end_of_storage == end);
    CHECK(data == s._M_buffers._M_static);  // still on the inline buffer
}

template <typename String>
void CheckGrowAndRelease() {
    String s;
    s._M_allocate_block(0x20);
    CHECK(s._M_start_of_storage._M_data != s._M_buffers._M_static);
    CHECK(s._M_start_of_storage._M_data != nullptr);
    // The block end is start + the size the allocator ran with. 0x20 is above the pool threshold, so for
    // the plain-allocator string the size is 0x20; for the glitch string it is GlitchAlloc(0x20) as well.
    CHECK(static_cast<std::size_t>(s._M_end_of_storage - s._M_start_of_storage._M_data) == 0x20);
    std::memcpy(s._M_start_of_storage._M_data, "0123456789abcdefghijklmnopqrstuv", 0x20);
    s._M_deallocate_block();
}

// 0x3139ac: at 0x80 bytes or fewer the block goes to the pool, which rounds its size up to 8; above 0x80 it
// goes to CustomFree. 0x8b63a4 is the "ADDS #7; BICS #7" that performs the rounding.
void CheckNodeAllocPooling() {
    unsigned int n = 0x11;  // 17 -> 24
    void* p = std::__node_alloc::_M_allocate(n);
    CHECK(p != nullptr);
    CHECK(n == 0x18);
    // The pool hands back 8-byte-spaced blocks out of one chunk, so two live blocks differ by >= 0x18.
    unsigned int m = 0x11;
    void* q = std::__node_alloc::_M_allocate(m);
    CHECK(q != nullptr);
    CHECK(m == 0x18);
    const std::ptrdiff_t delta = static_cast<char*>(q) - static_cast<char*>(p);
    CHECK(delta >= 0x18 || delta <= -0x18);
    std::__node_alloc::_M_deallocate(q, m);
    std::__node_alloc::_M_deallocate(p, n);
    // A freed block of the same size class comes back: the pool reuses it rather than refilling.
    unsigned int r = 0x11;
    void* again = std::__node_alloc::_M_allocate(r);
    CHECK(again == p || again == q);
    std::__node_alloc::_M_deallocate(again, r);
}

// 0x313994 / 0x31bb44: the 0x80 switch. Above it the requested size is not rounded.
void CheckNodeAllocThreshold() {
    unsigned int big = 0x81;
    void* p = std::__node_alloc::_M_allocate(big);
    CHECK(p != nullptr);
    CHECK(big == 0x81);  // untouched: CustomAlloc took the raw size
    std::__node_alloc::_M_deallocate(p, big);

    unsigned int small = 0x80;
    void* q = std::__node_alloc::_M_allocate(small);
    CHECK(q != nullptr);
    CHECK(small == 0x80);  // already a multiple of 8, so rounding is invisible here
    std::__node_alloc::_M_deallocate(q, small);
}

// 0x433f00 is NOT tested here: _String_base::_M_swap handles the both-sides-inline case by copying buffers and
// re-seating the pointers, and this reconstruction does not define it (see the header's note).

}  // namespace

int main() {
    CheckInlineSizeIsANoOp<SAllocString>();
    CheckInlineSizeIsANoOp<PlainString>();
    CheckGrowAndRelease<SAllocString>();
    CheckGrowAndRelease<PlainString>();
    CheckNodeAllocPooling();
    CheckNodeAllocThreshold();
    std::printf("%s\n", failures ? "stlport_alloc: FAILED" : "stlport_alloc: ok");
    return failures != 0;
}
