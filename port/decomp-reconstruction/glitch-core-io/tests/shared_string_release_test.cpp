// releaseSharedString (SData::release 0x6a4d9c): unlink from the bucket chain, size and cursor update.
#include <cstdio>

#include "glitch-core-io/core/shared_string_heap_ops.hpp"

#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

namespace {

using namespace glitch::core::detail;

// Inserts at the head of the bucket chain, as get does, and moves the cursor down when needed.
SSharedStringData* insert(SSharedStringHeapTable& table, const char* text) {
    auto* data = new SSharedStringData;
    data->external = text;
    const std::size_t index = sharedStringHash(text) % table.bucketCount;
    auto* node = new SSharedStringNode;
    node->value = data;
    node->next = table.buckets[index];
    table.buckets[index] = node;
    ++table.size;
    if (index < table.cursor) table.cursor = index;
    return data;
}

}  // namespace

int main() {
    int failures = 0;
    SSharedStringHeapTable table;
    table.bucketCount = 11;
    table.buckets.assign(12, nullptr);
    table.cursor = table.bucketCount;

    // Two texts in different buckets: "a" hashes to 0x9E377A1A % 11, "ab" to 0xCD94A53B % 11.
    const std::size_t bucketA = sharedStringHash("a") % 11u;
    const std::size_t bucketAB = sharedStringHash("ab") % 11u;
    SSharedStringData* a = insert(table, "a");
    SSharedStringData* ab = insert(table, "ab");
    CHECK(table.size == 2u);
    CHECK(table.cursor == (bucketA < bucketAB ? bucketA : bucketAB));

    // Releasing the record at the cursor moves the cursor to the other record's bucket.
    const std::size_t low = bucketA < bucketAB ? bucketA : bucketAB;
    SSharedStringData* lowData = bucketA < bucketAB ? a : ab;
    SSharedStringData* highData = bucketA < bucketAB ? ab : a;
    releaseSharedString(table, lowData);
    CHECK(table.size == 1u);
    CHECK(table.buckets[low] == nullptr);
    CHECK(table.cursor == (bucketA < bucketAB ? bucketAB : bucketA));

    // Releasing the last record puts the cursor at the end sentinel.
    releaseSharedString(table, highData);
    CHECK(table.size == 0u);
    CHECK(table.cursor == table.bucketCount);

    if (failures == 0) std::printf("shared_string_release_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
