#pragma once

// Element tables of the pydata records (Track B decisions 2 and 3; NOTES.md, "Element tables").
//
// What the original does. Every Arrays::X table and every Structs record with an element pointer owns one
// block, `operator new[](stride * count + 8, 1)`:
//     +0x0  u32 stride      the 32-bit size of one element (for example 72 for Arrays::ProjectileTable)
//     +0x4  u32 count
//     +0x8  element 0, element 1, ...  (polymorphic records: vptr at +0, slot 0 D1, slot 2 finalize, slot 3 read)
// and `members` points at element 0. Nothing is read from a file at that stride: after the count word,
// each element's read slot pulls its own fields from the stream one value at a time (StreamReader::readAs).
// The 32-bit stride is only the size of the original's in-memory element.
//
// What the port does. The elements are host objects, so the stride on the host is sizeof(Elem), which is
// larger than the 32-bit stride wherever a record holds a pointer or a vptr (80 against 72 for
// Structs::Projectile). The port therefore:
//   - allocates sizeof(Elem) * count + 8 bytes and constructs every element in place (`new (p) Elem()`), so
//     the vptr is real and every member has its default value. The words that the original zeroes by hand
//     (buffer pointers that the read frees first) are the members' `= nullptr` defaults;
//   - reaches elements through the typed pointer (`first[i]`), never through `members + stride * i` on
//     bytes, so no 32-bit stride can be applied to a host table by mistake;
//   - writes the original 32-bit stride into the stride word, as a named constant at each call site
//     (`Arrays::ListingStride::X`, or a `kXxxListingStride` constant beside the record code). Host code never
//     indexes with it; it records the original layout and is checked by the tests;
//   - decodes the stream field by field into the host members. A host record is never filled by copying
//     file bytes over it.
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <new>

#include "pydata-accessors/deps/stream_reader.hpp"

namespace pydata {

// The two header words in front of element 0 (the original's stride and count).
constexpr std::size_t kElementTableHeaderBytes = 8;

// Header word at members - 8: the original 32-bit element stride the table was built with.
inline std::uint32_t ElementTableListingStride(const void* members) {
    std::uint32_t value = 0;
    std::memcpy(&value, static_cast<const std::uint8_t*>(members) - 8, sizeof value);
    return value;
}

// Header word at members - 4: the element count.
inline std::uint32_t ElementTableCount(const void* members) {
    std::uint32_t value = 0;
    std::memcpy(&value, static_cast<const std::uint8_t*>(members) - 4, sizeof value);
    return value;
}

// Original `operator new[](listing_stride * count + 8, 1)` followed by the header stores and the per-element
// vptr (+ zeroed words) loop. Returns members (element 0). A count of zero still allocates the header.
template <class Elem>
Elem* NewElementTable(std::uint32_t listing_stride, std::uint32_t count) {
    static_assert(alignof(Elem) <= kElementTableHeaderBytes, "the header must keep the elements aligned");
    auto* block = static_cast<std::uint8_t*>(
        ::operator new[](sizeof(Elem) * static_cast<std::size_t>(count) + kElementTableHeaderBytes, kPydataBufferHint));
    std::memcpy(block, &listing_stride, sizeof listing_stride);
    std::memcpy(block + 4, &count, sizeof count);
    Elem* first = reinterpret_cast<Elem*>(block + kElementTableHeaderBytes);
    for (std::uint32_t i = 0; i < count; ++i) {
        ::new (static_cast<void*>(first + i)) Elem();
    }
    return first;
}

// Original read loop: every element's read slot (+0xc), in index order, with the stream.
template <class Elem>
void ReadElementTable(void* members, std::uint32_t count, IStreamBase* stream) {
    Elem* first = static_cast<Elem*>(members);
    for (std::uint32_t i = 0; i < count; ++i) {
        first[i].read(stream);
    }
}

// The tail of every Structs::X::read that owns an element table: allocate the block for `count` elements, then run
// every element's read slot with the stream. Returns members (the caller stores it in the owner's pointer word).
template <class Elem>
Elem* NewAndReadElementTable(std::uint32_t listing_stride, std::uint32_t count, IStreamBase* stream) {
    Elem* first = NewElementTable<Elem>(listing_stride, count);
    ReadElementTable<Elem>(first, count, stream);
    return first;
}

// Original finalize loop: every element's finalize slot (+0x8), in index order.
template <class Elem>
void FinalizeElementTable(void* members, std::uint32_t count) {
    Elem* first = static_cast<Elem*>(members);
    for (std::uint32_t i = 0; i < count; ++i) {
        first[i].finalize();
    }
}

// Original destroy loop: the elements' slot 0 (D1) from the last one to the first, then CustomFree(members - 8).
// The count is the header word at members - 4. A null table is left alone. The pointer is not cleared (the
// original's destructors never do; finalize does, at the call site).
template <class Elem>
void DeleteElementTable(void* members) {
    if (members == nullptr) return;
    Elem* first = static_cast<Elem*>(members);
    for (std::uint32_t i = ElementTableCount(members); i > 0; --i) {
        first[i - 1].~Elem();
    }
    CustomFree(static_cast<std::uint8_t*>(members) - kElementTableHeaderBytes);
}

// Shared body of the Arrays::X::finalize family (Hex-Rays, identical in all 71 tables apart from the stride):
//   if members is set: when size != 0 run every element's finalize (forward); then, if members is still set,
//   destroy the elements back to front, free the block, and clear members.
template <class Elem>
void FinalizeArrayTable(std::uint8_t*& members, std::uint32_t size) {
    if (members == nullptr) return;
    if (size != 0) FinalizeElementTable<Elem>(members, size);
    DeleteElementTable<Elem>(members);
    members = nullptr;
}

// Shared body of the Arrays::X::read family (Hex-Rays, identical in all tables apart from stride, element
// class and the zeroed words):
//   count = readAs<u32>; Table::finalize(); Table::size = count; members = new block with `count` elements;
//   then every element's read slot with the stream.
// `finalize` is the table's own finalize (a callable taking no arguments).
template <class Elem, class Finalize>
void ReadArrayTable(std::uint8_t*& members, std::uint32_t& size, std::uint32_t listing_stride, IStreamBase* stream,
                    Finalize finalize) {
    const std::uint32_t count = StreamReader::readAs<std::uint32_t>(stream);
    finalize();
    size = count;
    members = reinterpret_cast<std::uint8_t*>(NewElementTable<Elem>(listing_stride, count));
    ReadElementTable<Elem>(members, size, stream);
}

}  // namespace pydata
