// The shared-string heap's process-wide owner and SSharedString::operator=.
//
// Covers what this pass wrote: initSharedStringHeap (0x6a5538) through
// glitch::core::sharedStringHeapTable(), the use-count word of SSharedStringData
// (SData + 0x00, commit 0x6a4cb8 zeroes it, operator= 0x5daf94 takes and drops it),
// and the operator= contract itself (create-form get 0x6a5074, last-use release
// 0x6a4d9c). Release's own chain/cursor behaviour is covered by
// shared_string_release_test.cpp.
#include <cstdio>
#include <cstring>

#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-shared/shared_string.hpp"

#define CHECK(c)                                                     \
    do {                                                             \
        if (!(c)) {                                                  \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);  \
            ++failures;                                              \
        }                                                            \
    } while (0)

int main() {
    using glitch::core::SSharedString;
    using namespace glitch::core::detail;

    int failures = 0;

    // initSharedStringHeap(true) (0x6a5538) over the one process-wide table: the 0x24-byte object's
    // fields, as the listing stores them. The initial bucket count is what the listing's prime search
    // at 0x6a55b8..0x6a560c returns for its target 10, and the threshold is ceil(1.0 * count).
    initSharedStringHeap(true);
    SSharedStringHeapTable& table = sharedStringHeapTable();
    CHECK(table.maxLoadFactor == 1.0f);
    CHECK(table.bucketCount == 11u);
    CHECK(table.buckets.size() == table.bucketCount + 1);
    CHECK(table.cursor == table.bucketCount);  // empty table: the cursor is the end sentinel
    CHECK(table.size == 0u);
    CHECK(table.rehashThreshold == 11u);

    // The table is process-wide, not per translation unit: the accessor hands out the same object and
    // its address is stable across calls.
    CHECK(&sharedStringHeapTable() == &table);

    // get (0x6a5074): a null and an empty text intern nothing (its first two exits).
    CHECK(getSharedString(table, nullptr, false) == nullptr);
    CHECK(getSharedString(table, "", false) == nullptr);
    CHECK(getSharedString(table, nullptr, true) == nullptr);
    CHECK(getSharedString(table, "", true) == nullptr);

    // A committed record: the interned text is the record's own text, the use count starts at 0 (get
    // does not touch it - commit 0x6a4cb8 zeroes the word at +0x00), and a second create-form lookup
    // finds the same record instead of making a new one.
    SSharedStringData* record = getSharedString(table, "shared_string_test", false);
    CHECK(record != nullptr);
    CHECK(record->committed);
    CHECK(std::strcmp(record->text(), "shared_string_test") == 0);
    CHECK(record->useCount == 0u);
    CHECK(table.size == 1u);
    CHECK(getSharedString(table, "shared_string_test", false) == record);
    CHECK(getSharedString(table, "shared_string_test", true) == record);
    CHECK(table.size == 1u);

    // The pure-lookup form never creates.
    CHECK(getSharedString(table, "not interned", true) == nullptr);
    CHECK(table.size == 1u);

    // operator= (0x5daf94) on a handle that holds nothing: the new record is installed and its use
    // count is taken (1). Assigning the same text again reuses the same record, takes another use and
    // drops the old one (the listing's take happens before the drop, so the count balances).
    SSharedString handle;
    CHECK(handle.data() == nullptr);
    handle = "shared_string_test";
    CHECK(handle.data() == record);
    CHECK(record->useCount == 1u);
    CHECK(std::strcmp(handle.data()->text(), "shared_string_test") == 0);
    handle = "shared_string_test";
    CHECK(handle.data() == record);
    CHECK(record->useCount == 1u);

    // A different text moves the handle to that text's record and drops the old use. "shared_string_test"
    // reaches 0 and is released (unlinked and freed), so the table shrinks and the old record is gone.
    handle = "shared_string_other";
    SSharedStringData* other = handle.data();
    CHECK(other != nullptr);
    CHECK(other != record);
    CHECK(std::strcmp(other->text(), "shared_string_other") == 0);
    CHECK(other->useCount == 1u);
    CHECK(table.size == 1u);

    // A null text interns nothing and releases the handle's use, as the listing does (get answers null,
    // the use branch is skipped, and the old record is dropped).
    handle = nullptr;
    CHECK(handle.data() == nullptr);
    CHECK(table.size == 0u);
    CHECK(table.cursor == table.bucketCount);
    CHECK(table.buckets[sharedStringHash("shared_string_other") % table.bucketCount] == nullptr);

    // Two handles on one record: the second one takes its own use (2); dropping one leaves the other's
    // use in place, which is exactly the reason the count word had to exist. Without it the first drop
    // would free the record the second handle still points at.
    SSharedString first;
    SSharedString second;
    first = "shared_string_shared";
    CHECK(first.data() != nullptr);
    CHECK(first.data()->useCount == 1u);
    second = "shared_string_shared";
    CHECK(second.data() == first.data());
    CHECK(first.data()->useCount == 2u);
    second = "shared_string_other";
    CHECK(first.data()->useCount == 1u);
    CHECK(std::strcmp(first.data()->text(), "shared_string_shared") == 0);

    // Drop both handles before the teardown below: the table brings itself back to its pre-init state
    // without walking the records (the port's teardown owns the chains, the handles own the records),
    // so a handle must not be left holding a record across initSharedStringHeap(false) - the same
    // contract the original's teardown assumes.
    first = nullptr;
    second = nullptr;
    CHECK(table.size == 0u);

    // The table's teardown direction: initSharedStringHeap(false) empties it (no records are left, so
    // the listing's warning path is not taken) and the next accessor call does not resurrect records.
    initSharedStringHeap(false);
    SSharedStringHeapTable& after = sharedStringHeapTable();
    CHECK(after.size == 0u);
    CHECK(after.bucketCount == 0u);
    CHECK(after.buckets.empty());

    // ... and initSharedStringHeap(true) brings it back to its initial state, usable again.
    initSharedStringHeap(true);
    SSharedStringHeapTable& rebuilt = sharedStringHeapTable();
    CHECK(rebuilt.bucketCount == 11u);
    CHECK(rebuilt.buckets.size() == 12u);
    CHECK(rebuilt.size == 0u);
    CHECK(rebuilt.rehashThreshold == 11u);
    SSharedStringData* fresh = getSharedString(rebuilt, "shared_string_again", false);
    CHECK(fresh != nullptr);
    CHECK(rebuilt.size == 1u);

    // The listing's warning path (0x6a569c): with a record still in the table, initSharedStringHeap(false)
    // logs "Shared string objects not properly cleaned up" at ELL_ERROR before it tears the table down.
    // Printer::log is a no-op with no logger installed, so what is checked here is the teardown itself.
    initSharedStringHeap(false);
    SSharedStringHeapTable& warned = sharedStringHeapTable();
    CHECK(warned.size == 0u);
    CHECK(warned.bucketCount == 0u);
    CHECK(warned.buckets.empty());

    if (failures == 0) std::printf("shared_string_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
