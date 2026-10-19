// glitch::core::detail::SSharedStringHeapEntry::SData and the anonymous-namespace SharedStringHeap table,
// layout recovered from the binary (ARM, 32-bit offsets). Offsets are comments only; no pointer
// arithmetic is done on them.
//
// Shared header: used by glitch-core-io (SData::release 0x6a4d9c, SData::get 0x6a5074, commit 0x6a4cb8,
// the bucket find 0x6a4d04, initSharedStringHeap 0x6a5538) and by glitch-video and sid_collection, which
// hold SData pointers (the SIDedCollection entries and CMaterialRenderer / CGLSLShader names).
//
// Evidence summary (addresses are the function that shows the fact):
//   The table global is a pointer, SharedStringHeap (ELF 0x9f765c, 4 bytes). initSharedStringHeap
//   (0x6a5538) allocates a 0x24-byte object (operator new(0x24)) and stores it in the global at its end.
//   The object's fields, from the same function and from release (0x6a4d9c) and get (0x6a5074):
//
// Table object (SharedStringHeap, 0x24 bytes):
//   +0x08  float maxLoadFactor (init writes 0x3F800000 = 1.0f; used as the divisor in get 0x6a5074)
//   +0x0c  rehash threshold (size_t). init and the rehash set it to ceil(maxLoadFactor * bucketCount).
//          get grows the table when size + 1 >= this value (0x6a5074, "v14 >= v3[3]").
//   +0x10  hash_table_data object (create_buckets 0x6a4f84 receives this+0x10; the fields below are at
//          +0x14 .. +0x20 of the table object).
//   +0x14  bucket array (pointer). create_buckets allocates 4 * (count + 1) bytes, zeroed; the last
//          slot is an end sentinel (create_buckets stores the sentinel's own address there).
//   +0x18  bucket count (prime). init takes the first table value greater than 10 (11 with the table
//          below); rehash takes the first table value greater than floor(wanted / maxLoadFactor).
//   +0x1c  cursor: address of the lowest non-empty bucket slot, or the end sentinel when the table is
//          empty (release 0x6a4d9c: when the cursor slot is emptied it advances, or is set to
//          buckets + 4 * count when size reaches 0; get 0x6a5074: a new node below the cursor moves it).
//   +0x20  size (number of records). release decrements it, get increments it.
//
// Record (GlitchAlloc(8) in get 0x6a5074), one per shared string:
//   +0x00  value: SData pointer (get stores the key holder first, then commit replaces it)
//   +0x04  next record's link (the bucket and chain pointers address this word: bucket[i] = node + 4,
//          and the record is reached as link - 4; release frees link - 4 at 0x6a4d9c)
//
// SData (SSharedStringHeapEntry::SData; two forms):
//   Uncommitted, the key holder built by get (0x6a5074): +0x00 char* text, +0x04 zero.
//   Committed, the block made by commit (0x6a4cb8): +0x00 zero, text copied to +0x04 (allocation of
//          max(strlen + 5, 8) bytes; the terminating zero is inside it).
//   release (0x6a4d9c) selects the text as a1 + 1 when the word at +0x04 is nonzero, and *a1 otherwise.
//   For a committed non-empty text the first byte at +0x04 is nonzero, so this picks the inline text.
//   An empty committed string would have a zero word at +0x04; the original then reads a null text.
//   That case is unreachable through the original's own get: get returns 0 for a null and for an empty
//   text, so nothing ever inserts one (get 0x6a5074's first two exits). The model below cannot produce
//   it either - SSharedStringData::committed with an empty inlineText reads as "", and sharedStringText
//   reports an empty string rather than the original's null - but no code path inserts such a record.
//
// The +0x00 word is the record's USE COUNT, and it is the same word in both forms (commit 0x6a4cb8
// zeroes it and puts the text at +4, so a committed record's +0x00 is the count, not the text). Three
// independent listing reads (all in this tree's evidence):
//   * SSharedString::operator= 0x5daf94: `BL get; SUBS R3,R0,#0; LDRNE R2,[R3]; ADDNE R2,R2,#1;
//     STRNE R2,[R3]` takes a use on the record get returned; on the OLD record it does
//     `LDR R3,[R0]; SUB R3,R3,#1; CMP R3,#0; STR R3,[R0]; BNE` and calls release only at zero.
//   * CMaterialRenderer::getParameterID 0x5d308c does the identical take-and-drop around its lookup
//     (`LDR R6,[R0]; ADD R6,R6,#1; STR R6,[R1],#4` with R1 walking on to +4, the text address).
//   * commit 0x6a4cb8 `STR R2,[R3],#4` zeroes that word before strcpying the text in behind it.
// So the count belongs to the record's non-table owners (the SSharedString handles) and get does NOT
// touch it: a record get returns - found or freshly committed - arrives with whatever count it had,
// zero for a new one, and every caller that keeps the pointer takes the use itself. release
// (0x6a4d9c) is the LAST-USE operation: it is not the decrement, it is what a caller runs once its own
// decrement read zero, and then it unlinks and frees the record unconditionally. The port's
// SSharedStringData carries that count as useCount; the port's releaseSharedString is that same
// last-use operation (see shared_string_heap_ops.hpp).
//
// Hash (get 0x6a5074, release 0x6a4d9c): each byte c of the text, in order, is sign-extended (the
// listing uses SXTAB at 0x6a50d8 for the byte load; char is signed in this step) and folded in as
//   h ^= (h << 6) + int8(c) + 0x9E3779B9 + (h >> 2)     (unsigned 32-bit arithmetic; h starts at 0)
// The bucket index is h % bucketCount (__aeabi_uidivmod at 0x6a5100 in get). The text is equal to a
// record's text when strcmp returns 0 (find 0x6a4d04).
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

namespace glitch::core::detail {

// The hash constant 0x9E3779B9, the boost hash_combine constant (the original adds -1640531527).
inline constexpr std::uint32_t kSharedStringHashSeed = 0x9E3779B9u;

// Hash of a shared-string text (see the comment above). The empty text is never stored: get returns 0 for it.
inline std::uint32_t sharedStringHash(const char* text) {
    std::uint32_t h = 0;
    for (const char* p = text; *p != '\0'; ++p) {
        const std::int32_t c = static_cast<std::int8_t>(*p);  // SXTAB: sign-extended
        h ^= (h << 6) + static_cast<std::uint32_t>(c) + kSharedStringHashSeed + (h >> 2);
    }
    return h;
}

// SSharedStringHeapEntry::SData. The original keeps the two forms in one block; this model keeps the
// fields apart and reports the text the way release (0x6a4d9c) selects it. Host width note as for the
// table below: the original record is two 4-byte words in a block of max(strlen + 5, 8) bytes; here the
// text is a std::string and the count is its own word, so the ORIGINAL offsets are comments about the
// original's layout, not this struct's.
struct SSharedStringData {
    std::uint32_t useCount = 0;      // +0x00: the use count, see the note above (commit zeroes it)
    const char* external = nullptr;  // +0x00 in the uncommitted form: the text pointer; zero when committed
    bool committed = false;          // true after commit (0x6a4cb8); the text then lives at +0x04
    std::string inlineText;          // +0x04: committed text

    const char* text() const { return committed ? inlineText.c_str() : external; }
};

// The text of a record, exactly the selection release (0x6a4d9c) and the rehash in get (0x6a5074)
// make: the inline text at +0x04 when the +0x04 word is non-zero (committed), the pointer at +0x00
// otherwise. Null-safe, because get and the parameter/technique lookups all accept a null handle.
inline const char* sharedStringText(const SSharedStringData* data) {
    return data == nullptr ? nullptr : data->text();
}

// Hash of a record's own text, the bucket index the rehash in get recomputes for every record.
inline std::uint32_t sharedStringHash(const SSharedStringData* data) {
    const char* text = sharedStringText(data);
    return text == nullptr ? 0u : sharedStringHash(text);
}

// One record of the bucket chains (GlitchAlloc(8) in get). The original links records by address
// of their +0x04 word; here the chain is a pointer to the next record.
struct SSharedStringNode {
    SSharedStringData* value = nullptr;  // +0x00
    SSharedStringNode* next = nullptr;   // +0x04
};

// The SharedStringHeap table (+0x08 .. +0x20 of the 0x24-byte object; the fields are listed in the
// comment above). The cursor is an index into buckets (the original stores a slot address); the
// index bucketCount is the end sentinel.
struct SSharedStringHeapTable {
    float maxLoadFactor = 1.0f;                 // +0x08
    std::size_t rehashThreshold = 0;            // +0x0c
    std::vector<SSharedStringNode*> buckets;    // +0x14 (bucketCount + 1 slots)
    std::size_t bucketCount = 0;                // +0x18
    std::size_t cursor = 0;                     // +0x1c (index of the lowest non-empty bucket, or bucketCount)
    std::size_t size = 0;                       // +0x20
};

// The process-wide table, i.e. the port's owner of the original's SharedStringHeap (ELF 0x9f765c, a
// 4-byte pointer initialized by initSharedStringHeap 0x6a5538). The original reaches it as an
// anonymous-namespace global; the port keeps exactly one table and hands it out, because
// sharedStringHeapTable() is DEFINED ONCE (glitch-core-io/src/shared_string_heap.cpp) and simply
// returns the address of that one table. Two translation units, and therefore two categories, share
// the same records - which is the whole point of the interning table: an uncommitted record is looked
// up on the caller's only buffer (SData::get 0x6a5074) and a committed record's text then lives in the
// record, so the table must not be duplicated per module.
//
// It is declared here, next to the layout, because it is the same subsystem's ownership: this header
// already owns the table type, the record type and the record lifetime rule (release is last-use).
// Sharing it here rather than in a category-private header keeps one glitch-shared home for that state
// and keeps a caller from having to drag a second category's internal ops header in; the one definition
// stays in glitch-core-io, next to initSharedStringHeap, the only code that creates or destroys it.
// No ownership is transferred: the caller must not destroy the returned table.
SSharedStringHeapTable& sharedStringHeapTable();

// Primes used for bucket counts: boost::unordered_detail::prime_list_template<unsigned int>::value at
// ELF 0x8eafc0, read from the binary (40 entries, the last is 4294967291). The first entry above 10 is
// 11, the initial bucket count (init 0x6a5538).
inline constexpr std::uint32_t kSharedStringPrimes[40] = {
    5u,          11u,         17u,         29u,         37u,         53u,         67u,         79u,
    97u,         131u,        193u,        257u,        389u,        521u,        769u,        1031u,
    1543u,       2053u,       3079u,       6151u,       12289u,      24593u,      49157u,      98317u,
    196613u,     393241u,     786433u,     1572869u,    3145739u,    6291469u,    12582917u,   25165843u,
    50331653u,   100663319u,  201326611u,  402653189u,  805306457u,  1610612741u, 3221225473u, 4294967291u,
};

}  // namespace glitch::core::detail
