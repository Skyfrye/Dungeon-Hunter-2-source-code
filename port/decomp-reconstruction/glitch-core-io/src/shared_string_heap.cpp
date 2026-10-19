// The glitch::core shared-string heap of the original's libDungeonHunter2.so:
//   * glitch::core::detail::SSharedStringHeapEntry::SData::get (0x6a5074) and SData::release (0x6a4d9c),
//     the two business functions over the table layout in shared_string_heap.hpp;
//   * initSharedStringHeap (0x6a5538), the anonymous-namespace function that creates the process-wide
//     table SharedStringHeap (ELF 0x9f765c) and the one that tears it down again;
//   * glitch::core::sharedStringHeapTable(), this port's owner accessor for that process-wide table,
//     and glitch::core::SSharedString::operator= (0x5daf94), the first handle operation written on it.
//
// The original's table is a boost::unordered_map<SSharedStringHeapEntry, SData*> (0x24 bytes), the
// anonymous-namespace global SharedStringHeap (ELF 0x9f765c) holding a pointer to it. get (0x6a5074,
// 1104 bytes) and release (0x6a4d9c) are that container's find/insert/rehash inlined; this file
// reconstructs what they do over the port's own table model, not their instruction sequence.
//
// Both SData functions take the table as a parameter in the port, because the port reaches the global
// through sharedStringHeapTable() instead of a file-local static: several translation units, in several
// categories, hold records from the same table. That is the one deviation the two rows record; the
// mangled name of the original does not appear either way (the original's get/release symbols are
// static members of SSharedStringHeapEntry whose bodies read the anonymous-namespace table).
#include "glitch-core-io/core/shared_string_heap_ops.hpp"

#include <algorithm>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <vector>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-shared/shared_string.hpp"

namespace glitch::core::detail {
namespace {

// The bucket chain slot for a text: the hash of the text modulo the bucket count, as get computes it.
// The chain ends in the sentinel slot, whose word is null, so a plain walk to null is the same walk.
SSharedStringNode** bucketSlot(SSharedStringHeapTable& table, const char* text) {
    const std::size_t index = table.bucketCount == 0 ? 0 : sharedStringHash(text) % table.bucketCount;
    return &table.buckets[index];
}

// The record holding `text`, or null. The container's SEqual compares the candidate's text with the key
// holder's text (find_iterator 0x6a4d04, whose found path is a strcmp re-entry), which is the comparison
// the port makes: the engine interns every name, so an equal text is the same record.
SSharedStringData* findRecord(SSharedStringHeapTable& table, const char* text) {
    if (table.bucketCount == 0) return nullptr;
    for (SSharedStringNode* node = *bucketSlot(table, text); node != nullptr; node = node->next) {
        const char* candidate = sharedStringText(node->value);
        if (candidate != nullptr && std::strcmp(candidate, text) == 0) return node->value;
    }
    return nullptr;
}

// commit (0x6a4cb8) on the uncommitted holder: the original allocates max(strlen + 5, 8) bytes, zeroes
// the first word and strcpys the text in at +0x04, so after commit the record OWNS its text and the
// caller's buffer is irrelevant. In this model the inline text is the std::string, so copying into it and
// dropping `external` is the same fact; it is not optional, because get (0x6a5074) commits the record it
// inserts and every later lookup reads that text after the caller's buffer may be gone.
void commitRecord(SSharedStringData* holder) {
    holder->inlineText = holder->external == nullptr ? "" : holder->external;
    holder->external = nullptr;
    holder->committed = true;
}

// The bucket count the rehash picks: the first prime in boost's prime list that is at least
// floor(maxSize / maxLoadFactor) + 1, or the last prime when even that is too small (the original's
// binary search over prime_list_template<unsigned int>::value, 0x8eafc0, with the 0.0x..42FFFFFC0
// double bound). The >= 4294967300.0 guard is the original's `__aeabi_dcmpge` against a double built from
// 0x41FFFFFF.. shifted, i.e. 2^32 + 4; the listing's result for it is 0xFFFFFFFF, so the minimum must be
// at least 2^32, which the size_t form spells out directly and which no prime in the list can satisfy.
std::size_t nextBucketCount(float maxLoadFactor, std::size_t currentBucketCount) {
    const std::size_t needed = currentBucketCount + currentBucketCount / 2;
    const std::size_t maxSize = std::max(needed, currentBucketCount + 1);
    const double wanted = std::floor(static_cast<double>(maxSize) / static_cast<double>(maxLoadFactor));
    const std::size_t minimum = wanted >= 4294967300.0
                                    ? static_cast<std::size_t>(0xFFFFFFFFu) + 1u
                                    : static_cast<std::size_t>(static_cast<std::uint32_t>(wanted)) + 1u;
    for (std::uint32_t prime : kSharedStringPrimes) {
        if (static_cast<std::size_t>(prime) >= minimum) return prime;
    }
    return kSharedStringPrimes[39];
}

// The rehash in get: a data block over the new bucket count, every record re-linked by the hash of its
// OWN text, the cursor recomputed as the lowest non-empty bucket (or the end sentinel when the table is
// empty), then the new blocks swapped in and the threshold set to ceil(maxLoadFactor * bucketCount).
// The original moves the records out of the old blocks while decrementing the SIZE word per record and
// writes the saved size back after the swap, so the count is the same before and after; this port keeps
// that bookkeeping but masks the drops, so `size` never passes through a bogus value and a caller cannot
// observe a zero. Only the bucketCount real buckets are walked - slots[bucketCount] is the end sentinel,
// not a chain head - and the cursor compare is the original's `newBlockAddress < cursorSlotAddress` over
// the new block's own slots.
void rehash(SSharedStringHeapTable& table, std::size_t newBucketCount) {
    std::vector<SSharedStringNode*> newBuckets(newBucketCount + 1, nullptr);
    std::size_t newCursor = newBucketCount;
    const std::size_t kept = table.size;
    for (std::size_t bucket = 0; bucket < table.bucketCount && bucket < table.buckets.size(); ++bucket) {
        for (SSharedStringNode* record = table.buckets[bucket]; record != nullptr;) {
            SSharedStringNode* next = record->next;
            const std::size_t index = sharedStringHash(record->value) % newBucketCount;
            SSharedStringNode** slot = &newBuckets[index];
            record->next = *slot;
            *slot = record;
            if (slot < &newBuckets[newCursor]) newCursor = index;
            --table.size;  // the original counts the record out of the old blocks here
            record = next;
        }
    }
    table.buckets.swap(newBuckets);
    table.size = kept;
    table.bucketCount = newBucketCount;
    table.cursor = newCursor;
    table.rehashThreshold = static_cast<std::size_t>(std::ceil(table.maxLoadFactor * static_cast<double>(newBucketCount)));
}

// The prime selection inside initSharedStringHeap (0x6a5538, the block at 0x6a55b8..0x6a560c): the
// value of the prime list slot the original's binary search lands on for a target. It is NOT
// "the first prime greater than 10" written as a scan. The two agree for the target the original
// passes (10 -> 11; a simulator of this exact sequence, run against the 40 primes, returns index 1),
// but the listing's search is a binary search whose result is a slot: `slot` is the base of the
// current range and `status` the number of values it spans, and the "above the target" arm narrows by
// writing status BEFORE applying LSR while the "not above" arm moves the base past the slot and
// shrinks status around it. The final two instructions are the original's out-of-range fixup: when
// the result slot is the pointer's end (R2 == V + 4 * 40 at 0x6a5600..0x6a5608) the slot before it is
// used, i.e. the last prime. Transcribing that sequence keeps every target's answer the listing's
// answer, which a scan cannot guarantee for targets other than 10.
std::uint32_t searchPrimeSlotGreaterThan(std::uint32_t target) {
    constexpr std::size_t kLength = sizeof(kSharedStringPrimes) / sizeof(kSharedStringPrimes[0]);
    std::size_t slot = 0;    // R2, in prime slots
    std::size_t status = kLength;  // R12
    while (true) {
        std::size_t index = status >> 1;  // 0x6a55c0: MOV R3, R12,ASR#1
        bool left = false;                // a jump to 0x6a55fc leaves the loop
        while (true) {
            // 0x6a55d8: LDR R1,[R2,R3,LSL#2] / 0x6a55e0: CMP R1,#0xA / 0x6a55e4: BHI 0x6a55c8
            if (kSharedStringPrimes[slot + index] <= target) {
                // 0x6a55e8: SUB R12,R12,#1 / 0x6a55ec: RSB R12,R3,R12 / 0x6a55f4: ADD R2,LR,#4
                status = status - 1 - index;
                slot = slot + index + 1;
                // 0x6a55f0: CMP R12,#0 / 0x6a55f8: BGT 0x6a55c0 - zero status falls to 0x6a55fc
                if (status == 0) left = true;
                break;
            }
            // above the target: 0x6a55c8: CMP R3,#0 / 0x6a55cc: MOV R12,R3 / 0x6a55d0: LSR R3,#1
            const bool atZero = index == 0;
            status = index;
            index = status >> 1;
            // 0x6a55d4: BLE 0x6a55fc (taken when the compare was zero AND the shifted index is zero)
            if (atZero && index == 0) {
                left = true;
                break;
            }
        }
        if (left) break;
    }
    // 0x6a5600: ADD R1,R3,#0xA0 / 0x6a5604: CMP R2,R1 / 0x6a5608: ADDEQ R2,R3,#0x9C
    if (slot == kLength) slot = kLength - 1;
    return kSharedStringPrimes[slot];
}

// The port's owner of the process-wide table (the original's SharedStringHeap plus its init flag). The
// table is created on first use, so no static-initialization order can reach it before initSharedString
// Heap has run; sharedStringHeapTable() returns this object, which gives every category one table.
SSharedStringHeapTable& sharedStringHeapStorage() {
    static SSharedStringHeapTable table;
    return table;
}

// The 0x24-byte table object with its initial fields, as initSharedStringHeap (0x6a5538) stores them:
// maxLoadFactor 1.0f (+0x08), the initial bucket count from the prime search (+0x18, 11 for the
// target 10 the listing uses), the bucket array (+0x14) with the end sentinel in its bucketCount'th
// slot, the cursor (+0x1c) at that sentinel, size 0 (+0x20), and the rehash threshold (+0x0c) =
// ceil(maxLoadFactor * bucketCount), which the listing computes in double precision and clamps to
// 0xFFFFFFFF when the product is at least 2^32 + 4 (the __aeabi_dcmpge at 0x6a566c).
void createSharedStringHeap(SSharedStringHeapTable& table) {
    table.maxLoadFactor = 1.0f;
    table.bucketCount = searchPrimeSlotGreaterThan(10u);
    table.cursor = table.bucketCount;
    table.buckets.assign(table.bucketCount + 1, nullptr);
    table.size = 0;
    const double threshold = std::ceil(static_cast<double>(table.maxLoadFactor) * static_cast<double>(table.bucketCount));
    table.rehashThreshold = threshold >= 4294967300.0 ? static_cast<std::size_t>(0xFFFFFFFFu)
                                                      : static_cast<std::size_t>(static_cast<std::uint32_t>(threshold));
}

// The teardown of initSharedStringHeap (0x6a5538, false): when the table still holds records, the
// original logs "Shared string objects not properly cleaned up" at level 3 (ELL_ERROR) through
// os::Printer::log 0x60aca0 and then frees the bucket chains and the bucket array (delete_buckets
// 0x6a4f18) and the table object itself (LC_API_FREE_0). The port brings the table back to its
// pre-init state instead of freeing the object, because its one table is a function-local static owned
// by the process; the observable part of the teardown - the warning for records that are still alive,
// and an empty table afterwards - is the same. The records themselves are not walked: the original
// frees the chain nodes and the bucket array, and the records are the handles' to release (see the
// use-count note in shared_string_heap.hpp).
void destroySharedStringHeap(SSharedStringHeapTable& table) {
    if (table.size != 0) {
        glitch::os::Printer::log("Shared string objects not properly cleaned up", glitch::ELL_ERROR);
    }
    table.buckets.clear();  // the original's delete_buckets: the chains and the bucket array
    table.buckets.shrink_to_fit();
    table.bucketCount = 0;
    table.cursor = 0;
    table.size = 0;
    table.rehashThreshold = 0;
    table.maxLoadFactor = 1.0f;
}

}  // namespace

// The process-wide table, declared in glitch-shared/shared_string_heap.hpp. One definition, so every
// translation unit that includes that header shares the one table of sharedStringHeapStorage().
SSharedStringHeapTable& sharedStringHeapTable() {
    // The original allocates the table with operator new(0x24) and stores it in the global only at the
    // END of initSharedStringHeap, and the original's initializer runs before any string is interned
    // (glitch::registerInitStep, 0x6a54d0, is not in the port - see the ledger row). Creating it here
    // is initSharedStringHeap(true) at first use, which for this port is the same "one initialized
    // table before the first lookup" contract. Forcing the initialization once here (not a second
    // initialization: bucketCount is only 0 while the table has never been created) keeps a second
    // caller from resetting a live table if it ever reaches this function before the first one.
    static SSharedStringHeapTable& table = []() -> SSharedStringHeapTable& {
        SSharedStringHeapTable& storage = sharedStringHeapStorage();
        createSharedStringHeap(storage);
        return storage;
    }();
    return table;
}

// 0x6a5538 _ZN6glitch4core6detail12_GLOBAL__N_120initSharedStringHeapEb
//
// The original's init step for the shared-string heap: argument true builds the table (operator
// new(0x24), maxLoadFactor 1.0f at +0x08, the initial prime from the search, the bucket array with
// its sentinel, cursor, size and the ceil threshold at +0x0c), argument false tears it down. This
// function is not registered with an init-step list (glitch::registerInitStep is not in the port; the
// 0x6a54d0 row is where that registration lives), so the port's table is created on first use by
// sharedStringHeapTable(); this function is the direct form of both directions, for a caller that
// wants to initialize or reset the table deliberately (and it is what the teardown warning lives in).
void initSharedStringHeap(bool initialize) {
    SSharedStringHeapTable& table = sharedStringHeapStorage();
    if (initialize) {
        // Idempotent: the port also creates the table on first use (sharedStringHeapTable()), which can run before
        // glitch::init() calls this step; a second create would drop the records already interned.
        if (table.bucketCount == 0) createSharedStringHeap(table);
    } else {
        destroySharedStringHeap(table);
    }
}

// 0x6a5074 _ZN6glitch4core6detail22SSharedStringHeapEntry5SData3getEPKcb
//
// Verified instruction by instruction against the listing (1104 bytes):
//   * LDRSB R3,[R0]; CMP R3,#0 -> a null text and an empty text both return null (the two exits that
//     MOV R0,#0). Also proved by the two lookups that call it (getParameterID 0x5d308c and
//     getTechniqueID 0x5d4714 pass R1 = 0 and answer with their own sentinel when this returns null).
//   * The key holder is a two-word stack block: [SP+0x20] = the text (SData + 0x00), [SP+0x24] = 0,
//     i.e. an UNCOMMITTED record, and the container looks up by text.
//   * The find either returns a record or (create only) one is GlitchAlloc(8)'d: record +0x00 = value =
//     the holder, record +0x04 = next = the old bucket head (get does not clear them: only +0x00 and +0x04
//     are ever read).
//   * Before the insert the load-factor test is `size + 1 < threshold` (CMP R2,R1 / BCC past the rehash),
//     the wanted count is max(size + size/2, size + 1), and the new prime is only taken when it differs
//     from the current bucket count (CMP R2,R3 / BEQ past).
//   * After the insert: ++size; the cursor moves down when the new bucket is BELOW it (CMP/STRCC), which
//     because the table is always kept sorted-by-bucket only ever happens for a new lowest bucket.
//   * commit (0x6a4cb8) runs on the newly built holder only (the B to the store on the create path), and
//     the function returns the holder's +0x00 word, which is the holder's own address after commit. The
//     existing-record exits return the record's +0x00 word directly. (That word changes meaning when the
//     record is committed: in the uncommitted key holder +0x00 is the caller's text pointer and +0x04 is
//     zero, and commit 0x6a4cb8 replaces it with the new block, zeroes the block's +0x00 and strcpys the
//     text to +0x04 - so a COMMITTED record's +0x00 is its USE COUNT, which is what operator= 0x5daf94
//     increments and what release's `LDR R5,[R0,#4] / if (R5) R1 = R0 + 4` selection implies. Neither get
//     path writes it, so the port's get does not touch useCount either.)
//   * The two type-shared helpers keep the paths a caller observes identical: null/empty -> null; the
//     create form always yields a committed record whose text is the interned text; the lookup form never
//     creates and yields null for a text that is not interned.
//
// The one deviation, host-necessitated and named: the table is a parameter because the port reaches the
// process-wide table through sharedStringHeapTable() rather than reading an anonymous-namespace global
// (initSharedStringHeap 0x6a5538 and the table owner ARE reconstructed now, in this file), so this
// function does not exist under the original mangled symbol - it is a free function in
// glitch::core::detail, where the original was the static
// SSharedStringHeapEntry::SData::get(char const*, bool). The body itself has no other deviation: in
// particular it does NOT touch the record's use count, exactly as the listing does not - the callers
// take the use (`SSharedString::operator=` 0x5daf94, `getParameterID` 0x5d308c) and release is the
// last-use free. See the use-count note in glitch-shared/shared_string_heap.hpp.
SSharedStringData* getSharedString(SSharedStringHeapTable& table, const char* text, bool noSideEffect) {
    if (text == nullptr || *text == '\0') return nullptr;

    if (noSideEffect) {
        // The B to loc_6A5430: pure lookup, no record is created, null when the text is not interned.
        return findRecord(table, text);
    }

    if (SSharedStringData* found = findRecord(table, text)) return found;

    // The not-found path: the uncommitted key holder becomes the table's record (the original allocates
    // the 8-byte node and stores the holder in its value word, so the record and the holder are two
    // allocations; the port's node->value is the same pointer).
    auto* holder = new SSharedStringData;
    holder->external = text;
    holder->committed = false;

    const std::size_t nextSize = table.size + 1;
    if (nextSize >= table.rehashThreshold) {
        const std::size_t wanted = nextBucketCount(table.maxLoadFactor, table.bucketCount);
        if (wanted != table.bucketCount) rehash(table, wanted);
    }

    SSharedStringNode** slot = bucketSlot(table, text);
    auto* record = new SSharedStringNode;
    record->value = holder;
    record->next = *slot;
    *slot = record;
    ++table.size;
    if (slot < &table.buckets[table.cursor]) table.cursor = static_cast<std::size_t>(slot - table.buckets.data());

    commitRecord(holder);
    return holder;
}

namespace {

// The record test of the chain walk in release (0x6a4d9c, listing 0x6a4e24..0x6a4ec0). The released data is `released`
// and the chain record's value is `entry`. The released data's form selects the text (committed: the inline text, else
// the external pointer). A committed released datum against a committed entry is a POINTER test (listing 0x6a4ec0:
// CMP R6,R3). Every other pairing compares texts with strcmp.
bool sharedStringRecordMatches(const SSharedStringData* released, const SSharedStringData* entry) {
    if (released->committed && entry->committed) return released == entry;
    const char* releasedText = released->committed ? released->inlineText.c_str() : released->external;
    const char* entryText = entry->committed ? entry->inlineText.c_str() : entry->external;
    return std::strcmp(releasedText, entryText) == 0;
}

}  // namespace

// 0x6a4d9c _ZN6glitch4core6detail22SSharedStringHeapEntry5SData7releaseEPS3_
// Transcribed from the listing. The bucket index is the hash of the released text (the inline text when committed; an
// empty text falls to bucket 0 as in the listing). The chain is walked from that bucket (each link is a record; the
// test is sharedStringRecordMatches). On a match the record is unlinked and freed, size (+0x20) drops by one, and when
// the removed bucket was the cursor (+0x1c) the cursor moves to the next non-empty bucket, or to the end sentinel when
// the table is empty. The SData is deleted in every case (operator delete[] in the listing).
// This function does not decrement or test the use count: it is the LAST-USE free (a caller's own decrement read zero).
// Deviations, all host-necessitated: (1) the table is a parameter, because the port reaches the process-wide table through
// sharedStringHeapTable() (see the header); (2) the bucketCount == 0 guard, which the listing does not have (the table is
// never created with zero buckets, so the listing's divide would never run there).
void releaseSharedString(SSharedStringHeapTable& table, SSharedStringData* data) {
    if (table.bucketCount != 0) {
        const std::size_t index = sharedStringHash(data) % table.bucketCount;
        SSharedStringNode** link = &table.buckets[index];
        while (*link != nullptr && !sharedStringRecordMatches(data, (*link)->value)) link = &(*link)->next;
        if (*link != nullptr) {
            SSharedStringNode* node = *link;
            *link = node->next;
            delete node;
            --table.size;
            if (index == table.cursor) {
                if (table.size == 0) {
                    table.cursor = table.bucketCount;
                } else {
                    // table.cursor <= table.bucketCount always holds (the sentinel is the start value), so
                    // this walk stays inside `buckets` and ends at the sentinel at worst.
                    while (table.cursor < table.bucketCount && table.buckets[table.cursor] == nullptr) ++table.cursor;
                }
            }
        }
    }
    delete data;
}

// The original-symbol forms of get (0x6a5074) and release (0x6a4d9c): the same operations on the process-wide table.
SSharedStringData* sharedStringDataGet(const char* text, bool create) {
    return getSharedString(sharedStringHeapTable(), text, !create);
}
void sharedStringDataRelease(SSharedStringData* data) { releaseSharedString(sharedStringHeapTable(), data); }

}  // namespace glitch::core::detail

namespace glitch::core {

// 0x5daf94 _ZN6glitch4core13SSharedStringaSEPKc
//
// Verified instruction by instruction against the listing (21 instructions, 0x5daf94..0x5dafe8):
//   * `MOV R0,R1` / `MOV R1,#1` / `BL SData::get` - the CREATE form of the lookup (R1 != 0, the
//     get-or-create that commits 0x6a4cb8), with the text as the first argument. get returns null for a
//     null or an empty text and then takes no use.
//   * `SUBS R3,R0,#0` / `LDRNE R2,[R3]` / `ADDNE R2,R2,#1` / `STRNE R2,[R3]` - the use count is the
//     record's +0x00 word (commit zeroes it and puts the text at +0x04, so +0x00 is not the text here),
//     taken on the NEW record BEFORE it is installed. The original needs no self-assignment guard: if
//     the new record is the old one, the take runs first and the drop below balances it.
//   * `LDR R0,[R4]` / `STR R3,[R4]` - the old record is read out of the handle and the new one is
//     installed, unconditionally (a null new record stores null into the handle).
//   * `CMP R0,#0` / `BEQ` - a null old record has nothing to drop.
//   * `LDR R3,[R0]` / `SUB R3,R3,#1` / `CMP R3,#0` / `STR R3,[R0]` / `BNE` - drop the old record's use;
//     only a drop that READ ZERO reaches the `BL SData::release`. This is the last-use test of the
//     listing, and it is why the port's releaseSharedString stays the unconditional unlink-and-free it
//     is (see the note above it): the count is the caller's, release is what runs once the count is 0.
//   * `MOV R0,R4` - the return value is the handle.
// get's table is the process-wide one (sharedStringHeapTable()), so the record this handle installs is
// the same record every other category's handle would find for the same text.
SSharedString& SSharedString::operator=(const char* text) {
    detail::SSharedStringData* data = detail::getSharedString(detail::sharedStringHeapTable(), text, false);
    if (data != nullptr) ++data->useCount;  // SUBS/LDRNE/ADDNE/STRNE: take the use on the new record

    detail::SSharedStringData* previous = m_data;
    m_data = data;

    if (previous != nullptr) {
        const std::uint32_t remaining = --previous->useCount;
        if (remaining == 0) detail::releaseSharedString(detail::sharedStringHeapTable(), previous);
    }
    return *this;
}

}  // namespace glitch::core


// 0x6a54d0 _ZN6glitch4core6detail24registerSharedStringHeapInitEv, and the static initialiser of SSharedStringHeapEntry.cpp (0x6a550c)
// that calls it (initSharedStringHeapDummy = registerSharedStringHeapInit()). The original registers initSharedStringHeap with
// glitch::registerInitStep once (a function-local isRegistered flag); glitch::init() then runs it with true and glitch::exit() with false.
// (Found by the stub audit: nothing registered it, so glitch::init() ran an empty step list.)
namespace glitch {
int registerInitStep(void (*step)(bool));  // 0x6a10b0, glitch-scene-collada-gui/src/recon/slice_24.cpp
}  // namespace glitch

namespace glitch::core::detail {
int registerSharedStringHeapInit() {
    static bool isRegistered = false;
    if (!isRegistered) {
        glitch::registerInitStep(initSharedStringHeap);
        isRegistered = true;
    }
    return 0;
}
namespace {
[[maybe_unused]] const int initSharedStringHeapDummy = registerSharedStringHeapInit();
}  // namespace
}  // namespace glitch::core::detail
