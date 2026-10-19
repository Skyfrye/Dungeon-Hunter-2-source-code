// The shared string heap's own types in the binary: glitch::core::detail::SSharedStringHeapEntry (the record holder whose commit makes the
// record own its text) and boost::unordered_detail::hash_table_data_unique_keys<SAllocator<SSharedStringHeapEntry>> (the bucket array of
// the table: delete_buckets 0x6a4f18, create_buckets 0x6a4f84, constructor 0x6a4fd8). The port keeps the table itself in
// shared_string_heap.hpp (SSharedStringData and the process-wide table); these are the original-symbol twins of the same operations, over
// the original's field order (host-width words).
//
// hash_table_data_unique_keys (the fields the three functions use, 32-bit offsets):
//   +0x00  not touched by them   +0x04  bucket array (bucketCount + 1 words, the last is the end sentinel)
//   +0x08  bucket count (a prime of boost::unordered_detail::prime_list_template<unsigned>::value, 0x8eafc0, 40 entries)
//   +0x0c  the cached first non-empty bucket (the sentinel when empty)   +0x10  node count
// A node is two words, a value and the chain link; the buckets and the chain addresses hold the address of the LINK word, so a node is
// freed at link - 1 word.
#pragma once

#include <cstddef>

#include "glitch-core-io/core/memory_hint.hpp"

namespace glitch::core {
template <typename T, glitch::memory::E_MEMORY_HINT I>
struct SAllocator;
}  // namespace glitch::core

namespace glitch::core::detail {

// 0x6a4cb8 commit: the holder's first word is the address of an uncommitted record, whose first word is the text pointer. commit allocates
// a block of max(strlen + 5, 8) bytes, zeroes its first word (the use count) and copies the text behind it, and makes the holder point at
// the block: the record now owns its text.
struct SSharedStringHeapEntry {
    mutable void* data = nullptr;
    void commit() const;
};

}  // namespace glitch::core::detail

namespace boost::unordered_detail {

template <class Allocator>
struct hash_table_data_unique_keys {
    // 0x6a4fd8 (C1): picks the first prime that is not less than `minimumBuckets` from the 40-entry prime list (the last one when it is
    // larger than all), and creates the buckets.
    // The first argument is a table of the same type that is not read (the listing ignores it): the sizing constructor boost uses when it
    // builds the bigger table of a rehash.
    hash_table_data_unique_keys(const hash_table_data_unique_keys& other, unsigned minimumBuckets);
    // 0x6a4f84: bucketCount + 1 zeroed words; the last word points at itself and is also the cached first bucket.
    void create_buckets();
    // 0x6a4f18: frees every chain from the cached first bucket to the end, then the bucket array.
    void delete_buckets();

    hash_table_data_unique_keys() = default;
    void* reserved = nullptr;            // +0x00
    void** buckets = nullptr;            // +0x04
    unsigned bucketCount = 0;            // +0x08
    void** cachedBegin = nullptr;        // +0x0c
    unsigned size = 0;                   // +0x10
};

using SSharedStringHeapBucketData = hash_table_data_unique_keys<
    glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, glitch::memory::EMH_UNRECOVERED>>;

}  // namespace boost::unordered_detail
