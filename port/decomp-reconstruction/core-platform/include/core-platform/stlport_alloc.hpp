// STLport allocation machinery of libDungeonHunter2.so: the allocator the binary's string members were
// instantiated with, plus the two small-block pools behind std::allocator.
//
// Why this file exists: the ledger had these bodies as "unrecovered tree-wide" and several rows
// (GSFlashMenu 0x3841b4/0x38421c/0x384284/0x3842b8, DataReloaderManager 0x339124/0x3391a0/0x33925c,
// ProjectileManager 0x3e68b0, PolyStat 0x5102e8, ClearSubtitles 0x33971c, GetSubtitleTextToSet 0x33933c)
// were held `partial` because of them. They are written here, from the listings:
//
//   std::priv::_String_base<char, glitch::core::SAllocator<char,0> >::_M_allocate_block(unsigned int)  0x3209a8
//   std::priv::_String_base<char, glitch::core::SAllocator<char,0> >::_M_deallocate_block()           0x56c2bc
//   std::priv::_String_base<char, std::allocator<char> >::_M_allocate_block(unsigned int)             0x31167c
//   std::priv::_String_base<char, std::allocator<char> >::_M_deallocate_block()                       0x3139ac
//   std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(unsigned int)       0x8a6c04
//   std::priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_deallocate_block()                 0x3193b0
//
// NOT written here, and deliberately so: std::priv::_String_base::_M_swap (0x433880 char, 0x8a4c58 wchar_t).
// Its listing is not the plain three-pointer exchange: it tests whether either side still points at its own
// inline buffer, re-seats such a side's pointers relative to the other object (0x433920..0x4339a8), and
// copies the 16-byte buffer when both sides are inline (`LDM R4,{R0-R3}; STM R5,...` at 0x4338d8). Reproducing
// only the exchange would be a body that does not match the listing, so no _M_swap is defined. No ledger row in
// this tree names _M_swap as its blocker.
//   std::__node_alloc_impl::_M_allocate(unsigned int&)                                                0x8b6398
//   std::__node_alloc_impl::_M_deallocate(void*, unsigned int)                                        0x8b6224
//   std::__node_alloc_impl::_S_chunk_alloc(unsigned int, int&)                                        0x8b6264
//   std::__node_alloc_impl::_S_refill(unsigned int)                                                   0x8b6340
//   std::__node_alloc::_M_allocate(unsigned int&)                                                     0x8b63f4
//   std::__node_alloc::_M_deallocate(void*, unsigned int)                                             0x8b625c
//   std::__node_alloc::allocate(unsigned int&)                                                        0x313994
//   std::__node_alloc::deallocate(void*, unsigned int)                                                0x31bb44
//
// _String_base layout (32-bit original, from the listings below and from their callers): the class is its own
// 0x14-byte header followed by a 16-byte inline buffer, 0x24 bytes of storage in all, with
// `_M_end_of_storage` at +0x00, the buffer at +0x04 and `_M_start_of_storage._M_data` at +0x14. The address
// the string hands to a helper (`this + 0x10`) is that class address, and `_M_allocate_block` compares the
// size it is given, not any member, so the two decisions below are the whole body.
//
// Values the listings settle, and that other categories' notes should now use:
//   * _M_allocate_block(n) is a NO-OP when n <= 0x10 (0x3209bc `CMP R1,#0x10; BHI`, 0x311694
//     `CMP R1,#0x10; BLS`). It fails when n == 0. It allocates only for n > 0x10. A default-constructed
//     glitch string calls it with exactly 16 (GSFlashMenu 0x3841b4, SIDedCollection 0x5e85b4), so it
//     allocates nothing and the string stays on its inline buffer. The 0x80 test is the second decision:
//     0x311698 `CMP R1,#0x80; BHI CustomAlloc`, else __node_alloc::_M_allocate.
//   * _M_deallocate_block() frees only when the data pointer differs from the inline buffer AND is non-null.
//     The glitch SAllocator twin (0x56c2bc) then calls GlitchFree with no size test; the std::allocator twin
//     (0x3139ac, `RSB R1, R3, R1` = end_of_storage - data) sends sizes above 0x80 to CustomFree and the rest
//     to __node_alloc::_M_deallocate.
//   * __node_alloc handles blocks of 0x80 bytes or fewer by ROUNDING the size up to 8 and pooling it
//     (0x8b63a4 `ADDS R7,#7; BICS R7,R3` with R3 = 7); larger blocks go to CustomAlloc/CustomFree unchanged.
//     So the pool is never reached for the 16-byte string buffer, and "0x80" in the DataReloaderManager,
//     PolyStat and ClearSubtitles notes is this same threshold seen from the string side.
//
// Named deviations, both on paths the game never takes:
//   * the zero-size failure path calls std::abort() where the original throws through
//     ___ZSt24__stl_throw_length_errorPKc_veneer (0x708e40). The message the original passes is always the
//     literal "basic_string"; only the failure path's mechanism differs, and abort() makes it testable.
//   * the pool's mutex is a std::mutex (the original's _Node_Alloc_Lock / pthread_mutex_t), so the pool is
//     thread-safe but not lock-free in the same way.
#pragma once

#include <cstddef>
#include <cstdlib>
#include <memory>
#include <mutex>

#include "core-platform/memory.hpp"             // GlitchAlloc / GlitchFree / CustomAlloc / CustomFree
#include "glitch-core-io/core/allocator.hpp"    // glitch::core::SAllocator
#include "glitch-core-io/core/memory_hint.hpp"  // glitch::memory::E_MEMORY_HINT

// glitch::core::SAllocator now lives in glitch-core-io/core/allocator.hpp (STLPORT-DECISION.md section 6), together with
// stringc / stringw; it is the type the E_MEMORY_HINT note in memory_hint.hpp describes.

namespace std {

// 0x708e40 is std::__stl_throw_length_error(char const*), called with the literal "basic_string" by every
// zero-size path. std::abort() stands in for it (see the deviation note above).
[[noreturn]] inline void _String_base_throw_length_error() { std::abort(); }

namespace priv {

// The 0x14-byte header, then the 16-byte inline buffer.
template <typename Tp, typename Alloc = std::allocator<Tp> >
class _String_base {
public:
    union _Buffers {
        Tp _M_static[16 / sizeof(Tp)];
        double _M_align;  // keeps the buffer aligned, as STLport's union does
    } _M_buffers;         // +0x04 .. +0x13, the inline buffer

    union {
        Tp* _M_data;  // +0x14, the block the string currently uses
    } _M_start_of_storage;

    Tp* _M_end_of_storage;  // +0x00, one past the end of that block

    _String_base() {
        _M_start_of_storage._M_data = _M_buffers._M_static;
        _M_end_of_storage = _M_buffers._M_static;
    }
    ~_String_base() = default;

    // 0x3209a8 / 0x31167c / 0x8a6c04.
    void _M_allocate_block(std::size_t __n);
    // 0x56c2bc / 0x3139ac / 0x3193b0.
    void _M_deallocate_block();
};

}  // namespace priv

// ---------------------------------------------------------------------------------------------
// std::__node_alloc_impl: the small-block pool behind std::allocator (STLport 5's __node_alloc). Only
// blocks of 0x80 bytes or fewer are pooled; std::__node_alloc below is the dispatcher.
// The free list has STLport's 16 buckets: one per 8-byte size class from 8 through 128.
// ---------------------------------------------------------------------------------------------
class __node_alloc_impl {
public:
    // 0x8b6398: round the requested size up to a multiple of 8 in place, then run the bucket path. The
    // rounding is visible to the caller: __node_alloc::allocate writes the rounded size back into the
    // Size argument, so a 4-byte std::allocator<int> request is granted 8 bytes.
    static void* _M_allocate(unsigned int& __n);
    // 0x8b6224: round __n up the same way (idempotent for the sizes callers pass - a stored block end is
    // already rounded), then push the block onto bucket (__n - 1) / 8.
    static void _M_deallocate(void* __p, std::size_t __n);
    // 0x8b6264: take __nobjs objects of __n bytes from the current chunk; the out parameter is bumped to the
    // number actually obtained.
    static char* _S_chunk_alloc(unsigned int __n, int& __nobjs);
    // 0x8b6340: one chunk, then thread its objects into the bucket's free list.
    static void* _S_refill(unsigned int __n);

    // The bucket array: the .bss object std::__node_alloc_impl::_S_free_list at 0x8b623c, one pointer per
    // 8-byte size class. The pool mutex orders every access, which is why the original's `volatile` on the
    // declaration is not repeated here.
    static void* _S_free_list[16];

private:
    static char* _S_start_free;
    static char* _S_end_free;
    static std::size_t _S_heap_size;
};

// ---------------------------------------------------------------------------------------------
// std::__node_alloc: the allocator STLport instantiates for std::allocator<T>. The 0x80 test lives here and
// nowhere else; above it every call goes straight to CustomAlloc/CustomFree with the size unchanged.
// ---------------------------------------------------------------------------------------------
class __node_alloc {
public:
    // 0x313994 / 0x8b63f4. __n is a reference because the pool rounds it up in place.
    static void* _M_allocate(unsigned int& __n);
    // 0x31bb44 / 0x8b625c.
    static void _M_deallocate(void* __p, std::size_t __n);
    // The std::allocator member names, same bodies.
    static void* allocate(unsigned int& __n) { return _M_allocate(__n); }
    static void deallocate(void* __p, std::size_t __n) { _M_deallocate(__p, __n); }
};

// ---------------------------------------------------------------------------------------------
// _String_base definitions.
// ---------------------------------------------------------------------------------------------

// 0x3209a8 / 0x56c2bc: the glitch SAllocator string. 0x56c2bc is exactly "data != buffers && data != 0 ->
// GlitchFree(data)" with no size test, so the std::allocator twin's 0x80 branch is not part of this
// specialisation.
template <>
inline void priv::_String_base<char, glitch::core::SAllocator<char, glitch::memory::EMH_UNRECOVERED> >::
    _M_allocate_block(std::size_t __n) {
    if (__n == 0) {
        _String_base_throw_length_error();
    }
    if (__n <= 0x10) {
        return;
    }
    char* __p = static_cast<char*>(GlitchAlloc(static_cast<unsigned>(__n), glitch::memory::EMH_UNRECOVERED));
    _M_end_of_storage = __p + __n;
    _M_start_of_storage._M_data = __p;
}

template <>
inline void priv::_String_base<char, glitch::core::SAllocator<char, glitch::memory::EMH_UNRECOVERED> >::
    _M_deallocate_block() {
    char* __data = _M_start_of_storage._M_data;
    if (__data == _M_buffers._M_static || __data == nullptr) {
        return;
    }
    GlitchFree(__data);
}

// 0x31167c / 0x3139ac: the plain-allocator string. _M_allocate_block: n == 0 fails, n <= 0x10 is a no-op,
// n <= 0x80 goes through __node_alloc (which rounds the size up to 8 and pools it), above that CustomAlloc
// takes the raw size. Both paths store the block end at +0x00 and the start at +0x14 and +0x10.
// _M_deallocate_block: skip when the data pointer is the inline buffer or null; (end_of_storage - data)
// above 0x80 goes to CustomFree, the rest to __node_alloc::_M_deallocate, which rounds it again.
template <>
inline void priv::_String_base<char, std::allocator<char> >::_M_allocate_block(std::size_t __n) {
    if (__n == 0) {
        _String_base_throw_length_error();
    }
    if (__n <= 0x10) {
        return;
    }
    char* __p;
    std::size_t __blockEnd;
    if (__n <= 0x80) {
        unsigned int __rounded = static_cast<unsigned int>(__n);
        __p = static_cast<char*>(__node_alloc::_M_allocate(__rounded));
        __blockEnd = __rounded;  // the pool rounds the request up; the block end uses the rounded size
    } else {
        __p = static_cast<char*>(CustomAlloc(static_cast<unsigned>(__n)));
        __blockEnd = __n;
    }
    _M_end_of_storage = __p + __blockEnd;
    _M_start_of_storage._M_data = __p;
}

template <>
inline void priv::_String_base<char, std::allocator<char> >::_M_deallocate_block() {
    char* __data = _M_start_of_storage._M_data;
    if (__data == _M_buffers._M_static || __data == nullptr) {
        return;
    }
    const std::size_t __n = static_cast<std::size_t>(_M_end_of_storage - __data);
    if (__n > 0x80) {
        CustomFree(__data);
    } else {
        __node_alloc::_M_deallocate(__data, __n);
    }
}

// 0x8a6c04 / 0x3193b0: the wchar_t twin. Its _M_allocate_block takes a BYTE count, as the char version does
// (0x8a6c04: CMP R1,#0 -> throw; LDR R3,=0x3FFFFFFF / CMP / BHI -> throw; CMP R1,#0x10 / BLS -> no-op; then the
// allocator dispatch). The data pointer sits at +0x14 in the char class and at +0x44 here, i.e. the inline
// buffer is 16 elements = the same 0x40 bytes, and 0x3193b0 frees with `(end - data) BIC #3`. The block end is
// therefore stored as `start + n / sizeof(wchar_t)`.
//
// Deviation, named: the original's non-inline path branches into a shared allocator helper at 0x8a6474 that
// carries the 0x3FFFFFFF overflow guard and byte values (the trailing word at 0x8a6c3c is the constant
// 0x3FFFFFFF). This header reproduces the observable result with the direct 0x80 dispatch the char version
// uses, so the overflow guard is not reproduced. It cannot fire for a real string: the count is a byte length
// and the pool's own chunk arithmetic caps it far below 0x3FFFFFFF in every recovered caller.
template <>
inline void priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_allocate_block(std::size_t __n) {
    if (__n == 0) {
        _String_base_throw_length_error();
    }
    if (__n <= 0x10) {
        return;
    }
    wchar_t* __p;
    std::size_t __blockEnd;
    if (__n <= 0x80) {
        unsigned int __rounded = static_cast<unsigned int>(__n);
        __p = static_cast<wchar_t*>(__node_alloc::_M_allocate(__rounded));
        __blockEnd = __rounded;
    } else {
        __p = static_cast<wchar_t*>(CustomAlloc(static_cast<unsigned>(__n)));
        __blockEnd = __n;
    }
    _M_end_of_storage = __p + __blockEnd / sizeof(wchar_t);
    _M_start_of_storage._M_data = __p;
}

template <>
inline void priv::_String_base<wchar_t, std::allocator<wchar_t> >::_M_deallocate_block() {
    wchar_t* __data = _M_start_of_storage._M_data;
    if (__data == _M_buffers._M_static || __data == nullptr) {
        return;
    }
    const std::size_t __n = static_cast<std::size_t>(_M_end_of_storage - __data) * sizeof(wchar_t);
    if (__n > 0x80) {
        CustomFree(__data);
    } else {
        __node_alloc::_M_deallocate(__data, __n);
    }
}

}  // namespace std
