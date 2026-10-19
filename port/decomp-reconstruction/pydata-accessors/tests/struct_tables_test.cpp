// Element tables owned by Structs records (Loot, v2Quest, ItemPowerRef, AnimTpl, ClassFuncList, CharTemplate, ...).
// Same rules as array_strides_test.cpp: a table is read from packed fields, kept as host objects constructed in
// place at sizeof(Elem), reached through typed pointers, and its stride word holds the 32-bit stride of the Hex-Rays
// body (Structs::ListingStride). The destroy loops of the owners used to step by that 32-bit stride (or, in
// w7_structs_4, by 16) over tables that the reads had built at the host stride; every row below reads a table and
// destroys it two ways (finalize, then the destructor of the next read), which corrupted the heap before.
#include "table_test_support.hpp"

#include "pydata-accessors/struct_strides.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_4.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// Reads an OWNER from a stream that invents every value, checks the table behind OWNER::PTR (count word CNT) and
// its stride word, then finalizes (the pointer and count are cleared, as the listing does), reads again into the
// same object (the read frees the old table first) and lets the destructor free the second table.
#define OWNER_ROW(OWNER, PTR, CNT, ELEM, STRIDE)                                                              \
    do {                                                                                                      \
        CHECK(Structs::ListingStride::ELEM == (STRIDE));                                                      \
        Structs::OWNER o;                                                                                     \
        CounterStream s1(0, false);                                                                           \
        o.read(&s1);                                                                                          \
        CHECK(o.PTR != nullptr);                                                                              \
        if (o.PTR != nullptr) {                                                                               \
            CHECK(pydata::ElementTableListingStride(o.PTR) == (STRIDE));                                      \
            CHECK(pydata::ElementTableCount(o.PTR) == o.CNT);                                                 \
        }                                                                                                     \
        o.finalize();                                                                                         \
        CHECK(o.PTR == nullptr && o.CNT == 0);                                                                \
        CounterStream s2(0, false);                                                                           \
        o.read(&s2);                                                                                          \
        CounterStream s3(0, false);                                                                           \
        o.read(&s3); /* the second read destroys the first table */                                           \
        CHECK(o.PTR != nullptr);                                                                              \
    } while (0)

static void ConditionalWordsOfTheOwners() {
    OWNER_ROW(LangSheetList, list, listSize, LangSheet, 20);
    OWNER_ROW(v2Event, Triggers, TriggersSize, v2QuestObjectiveStub, 44);
    OWNER_ROW(v2CondAnd, Conds, CondsSize, v2ConditionStub, 16);
    OWNER_ROW(SpawnGroup, Spawns, SpawnsSize, SpawnInfo, 16);
    OWNER_ROW(Merchant, MerchandiseList, MerchandiseListSize, MerchandiseListEntry, 12);
    OWNER_ROW(TileOffsetList, list_entries, list_entriesSize, TileOffset, 8);
    OWNER_ROW(NumProbList, list_entries, list_entriesSize, NumProb, 8);
    OWNER_ROW(ItemListEntryList, list_entries, list_entriesSize, ItemListEntry, 12);
    OWNER_ROW(Loot, RandomLootEntries, RandomLootEntriesSize, LootEntry, 36);
    OWNER_ROW(Loot, FixedLootEntries, FixedLootEntriesSize, LootEntry, 36);
    OWNER_ROW(AnimFXTpl, Steps, StepsSize, AnimFX, 48);
    OWNER_ROW(DialogStepList, steps, stepsSize, DialogStep, 20);
    OWNER_ROW(ConditionalDialog, List, ListSize, DialogCondition, 16);
    OWNER_ROW(CharTemplate, CharInfo, CharInfoSize, CharInfoName, 8);
    OWNER_ROW(StatAutoAssignTargetList, list_entries, list_entriesSize, StatAutoAssignTarget, 16);
    OWNER_ROW(ClassFuncList, list_entries, list_entriesSize, ClassFunc, 24);
    OWNER_ROW(AnimTpl, Steps, StepsSize, AnimStep, 56);
    OWNER_ROW(AIFactions, factions, factionsSize, AIFaction, 12);
    OWNER_ROW(ItemPowerEntryList, list_entries, list_entriesSize, ItemPowerEntry, 12);
    OWNER_ROW(ItemPowerRef, AttrBonusList, AttrBonusListSize, AttrBonusEntry, 16);
}

static void V2QuestFiveTables() {
    // v2Quest owns five tables: v2ConditionStub (16), v2QuestObjectiveStub (44) and v2QuestRewardStub three times (16).
    Structs::v2Quest q;
    CounterStream s(0, false);
    q.read(&s);
    CHECK(q.PreReqs != nullptr && pydata::ElementTableListingStride(q.PreReqs) == 16);
    CHECK(q.Objectives != nullptr && pydata::ElementTableListingStride(q.Objectives) == 44);
    CHECK(q.Rewards != nullptr && pydata::ElementTableListingStride(q.Rewards) == 16);
    CHECK(q.RewardsHard != nullptr && pydata::ElementTableListingStride(q.RewardsHard) == 16);
    CHECK(q.RewardsVeryHard != nullptr && pydata::ElementTableListingStride(q.RewardsVeryHard) == 16);
    CHECK(pydata::ElementTableCount(q.PreReqs) == q.PreReqsSize);
    CHECK(pydata::ElementTableCount(q.Objectives) == q.ObjectivesSize);
    CHECK(pydata::ElementTableCount(q.Rewards) == q.RewardsSize);
    CHECK(pydata::ElementTableCount(q.RewardsHard) == q.RewardsHardSize);
    CHECK(pydata::ElementTableCount(q.RewardsVeryHard) == q.RewardsVeryHardSize);
    if (sizeof(void*) == 8) {
        CHECK(sizeof(Structs::v2ConditionStub) > Structs::ListingStride::v2ConditionStub);
        CHECK(sizeof(Structs::v2QuestObjectiveStub) > Structs::ListingStride::v2QuestObjectiveStub);
    }
    q.finalize();
    CHECK(q.PreReqs == nullptr && q.Objectives == nullptr && q.Rewards == nullptr && q.RewardsHard == nullptr && q.RewardsVeryHard == nullptr);
    CHECK(q.PreReqsSize == 0 && q.ObjectivesSize == 0 && q.RewardsSize == 0 && q.RewardsHardSize == 0 && q.RewardsVeryHardSize == 0);
    CounterStream s2(0, false);
    q.read(&s2);  // read again, then the destructor frees the second set
}

static void DestructorOfAnUnreadRecordIsSafe() {
    // The destructors test each table pointer (the listing: `if (v1)`); an unread record owns no table.
    { Structs::v2Quest q; }
    { Structs::Loot l; }
    { Structs::AnimTpl a; }
    { Structs::ClassFuncList c; }
    { Structs::ItemPowerRef r; }
    CHECK(true);
}

static void ItemPowerFamilyFinalizeThenDestroy() {
    // A derived ItemPower record frees its table in finalize and clears the pointer, so the destructors (whose
    // base repeats the loop, as the listing does) find nothing left to free. Elements are AttrBonusEntry, listing
    // stride 16, host objects larger than that.
    Structs::ItemPowerAR a;
    CounterStream s(0, false);
    a.read(&s);
    CHECK(a.AttrBonusList != nullptr && pydata::ElementTableListingStride(a.AttrBonusList) == 16);
    CHECK(pydata::ElementTableCount(a.AttrBonusList) == a.AttrBonusListSize);
    if (sizeof(void*) == 8) CHECK(sizeof(Structs::AttrBonusEntry) > Structs::ListingStride::AttrBonusEntry);
    a.finalize();
    CHECK(a.AttrBonusList == nullptr && a.AttrBonusListSize == 0);
}

static void PackedLangSheetList() {
    // Explicit decode: LangSheetList = count, then per element two (length, text) pairs; listing stride 20, file
    // bytes per element = 4 + len + 4 + len.
    BufferStream s;
    s.u32(2);
    s.u32(2).str("en").u32(3).str("one");
    s.u32(4).str("fran").u32(5).str("deux!");
    Structs::LangSheetList l;
    l.read(&s);
    CHECK(s.pos == s.bytes.size());
    CHECK(l.listSize == 2 && l.list != nullptr);
    if (l.list == nullptr) return;
    CHECK(pydata::ElementTableListingStride(l.list) == 20);
    const auto* e = static_cast<const Structs::LangSheet*>(l.list);
    CHECK(e[0].filenameSize == 2 && std::memcmp(e[0].filename, "en", 3) == 0 && e[0].nameSize == 3 && std::memcmp(e[0].name, "one", 4) == 0);
    CHECK(e[1].filenameSize == 4 && std::memcmp(e[1].filename, "fran", 5) == 0 && e[1].nameSize == 5 && std::memcmp(e[1].name, "deux!", 6) == 0);
}

static void PackedAnimTpl() {
    // AnimTpl = int, count, AnimStep table, int. AnimStep = 4 bools/ints, a count + int32 array, ... (listing 56,
    // host larger). Two steps with empty arrays; the surrounding words come back unchanged.
    BufferStream s;
    s.i32(77).u32(2);
    for (int e = 0; e < 2; ++e) {
        s.u8(1).i32(10 * e + 1).i32(10 * e + 2).i32(10 * e + 3).u8(0).i32(10 * e + 4).u8(1);  // +0x4 .. +0x1c
        s.u32(2).i32(100 * e + 1).i32(100 * e + 2);                                          // +0x20 count, +0x24 words
        s.i32(10 * e + 5).i32(10 * e + 6).f32(2.5f + e).u8(e);                               // +0x28 .. +0x34
    }
    s.i32(88);
    Structs::AnimTpl t;
    t.read(&s);
    CHECK(s.pos == s.bytes.size());
    CHECK(t.Loop == 77 && t.StepsSize == 2 && t.Type == 88);
    CHECK(t.Steps != nullptr);
    if (t.Steps == nullptr) return;
    CHECK(pydata::ElementTableListingStride(t.Steps) == 56);
    const auto* st = static_cast<const Structs::AnimStep*>(t.Steps);
    for (int e = 0; e < 2; ++e) {
        CHECK(st[e].AnchorFX == true && st[e].Anim == 10 * e + 1 && st[e].BlendOut == 10 * e + 2 && st[e].Cam == 10 * e + 3);
        CHECK(st[e].CamDir == false && st[e].FX == 10 * e + 4 && st[e].MoveGO == true);
        CHECK(st[e].RandomCamSize == 2 && st[e].RandomCam != nullptr);
        if (st[e].RandomCam != nullptr) {
            const auto* w = static_cast<const std::int32_t*>(st[e].RandomCam);
            CHECK(w[0] == 100 * e + 1 && w[1] == 100 * e + 2);
        }
        CHECK(st[e].Redir == 10 * e + 5 && st[e].Sound == 10 * e + 6 && st[e].Speed == 2.5f + e && st[e].Swoosh == (e != 0));
    }
}

int main() {
    ConditionalWordsOfTheOwners();
    V2QuestFiveTables();
    DestructorOfAnUnreadRecordIsSafe();
    ItemPowerFamilyFinalizeThenDestroy();
    PackedLangSheetList();
    PackedAnimTpl();
    if (failures == 0) std::printf("struct_tables_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
