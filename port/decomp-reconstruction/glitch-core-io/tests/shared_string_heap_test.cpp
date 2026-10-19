// glitch::core::detail shared-string layout (shared_string_heap.hpp): the sign-extended hash used by
// SData::get (0x6a5074) and release (0x6a4d9c), the SData text selection of release, the table's
// initial state from initSharedStringHeap (0x6a5538), and the prime table read from ELF 0x8eafc0.
#include <cstdio>

#include "glitch-core-io/core/shared_string_heap.hpp"

#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

int main() {
    using namespace glitch::core::detail;
    int failures = 0;

    // Hash vectors. "a": 0 ^ (0 + 0x61 + 0x9E3779B9 + 0) = 0x9E377A1A. The two-byte vectors are
    // computed with the same rule; "\x80" is sign-extended to -128 (SXTAB at 0x6a50d8).
    CHECK(sharedStringHash("") == 0u);
    CHECK(sharedStringHash("a") == 0x9E377A1Au);
    CHECK(sharedStringHash("ab") == 0xCD94A53Bu);
    const char signedByte[] = {static_cast<char>(0x80), 0x01, 0};
    CHECK(sharedStringHash(signedByte) == 0xCD94DF71u);
    // An unsigned byte would give a different hash, so the sign extension is observable.
    CHECK(sharedStringHash(signedByte) != 0xCD949CB1u);
    // Bucket index for the initial 11 buckets: hash % 11 (__aeabi_uidivmod at 0x6a5100).
    CHECK(sharedStringHash(signedByte) % 11u == 4u);

    // Prime table (ELF 0x8eafc0): first entries 5, 11, 17; the first value above 10 is 11.
    CHECK(kSharedStringPrimes[0] == 5u);
    CHECK(kSharedStringPrimes[1] == 11u);
    CHECK(kSharedStringPrimes[2] == 17u);
    CHECK(kSharedStringPrimes[39] == 4294967291u);
    bool increasing = true;
    for (int i = 1; i < 40; ++i) increasing = increasing && kSharedStringPrimes[i - 1] < kSharedStringPrimes[i];
    CHECK(increasing);

    // Table defaults: load factor 1.0f (0x3F800000 at +0x08), initial count 11, threshold ceil(1.0 * 11).
    SSharedStringHeapTable table;
    CHECK(table.maxLoadFactor == 1.0f);
    CHECK(table.size == 0u);
    CHECK(table.buckets.empty());
    table.bucketCount = kSharedStringPrimes[1];
    table.buckets.assign(table.bucketCount + 1, nullptr);  // count + 1 slots, last is the end sentinel
    table.cursor = table.bucketCount;                      // empty table: cursor at the end sentinel
    table.rehashThreshold = static_cast<std::size_t>(table.maxLoadFactor * static_cast<float>(table.bucketCount));
    CHECK(table.bucketCount == 11u);
    CHECK(table.rehashThreshold == 11u);
    CHECK(table.buckets.size() == 12u);
    CHECK(table.cursor == table.bucketCount);

    // SData: the uncommitted form reads the external text (release: a1[1] == 0 gives *a1); the committed
    // form reads the inline text (a1[1] != 0 gives a1 + 1).
    SSharedStringData key;
    key.external = "shared";
    CHECK(!key.committed);
    CHECK(key.text() == key.external);

    SSharedStringData block;
    block.committed = true;
    block.inlineText = "inline";
    CHECK(block.text() == block.inlineText.c_str());

    // A chain record starts with no value and no next (GlitchAlloc(8) then *v11 = 0, v11[1] = 0 in get).
    SSharedStringNode node;
    CHECK(node.value == nullptr);
    CHECK(node.next == nullptr);

    if (failures == 0) std::printf("shared_string_heap_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
