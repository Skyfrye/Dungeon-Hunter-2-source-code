// Element tables of the Arrays::X reads: slice arrays_27 (27 tables), the other tables of w7_arrays_00.hpp and the
// five e2 reads. Strides: Track B decisions 2 and 3 (NOTES.md, "Element tables").
//
// For every row:
//  - Arrays::ListingStride::X equals the stride in the Hex-Rays body of X::read (`*result = N`,
//    `operator new[](N * count + 8)`), as listed in this file;
//  - a table of 3 elements read from a stream that invents distinct values for every field holds, in each host
//    element, exactly what the same element decodes to on its own from the same bytes (no overlap between
//    neighbours, whatever sizeof(Elem) is). The block header holds the 32-bit listing stride and the count, and the
//    stream is consumed exactly as the standalone decode consumes it plus the count word;
//  - the same for a table of 0 elements (header only).
// Explicit field-by-field checks of hand-built PACKED records follow for Projectile (80 bytes on the host against a
// listing stride of 72 and 59 bytes in the file), DestructibleContainer (80 against 68) and the three tables that
// held a stride open in STATUS.md: LootTable, ItemList and DropTilePriorityTable.
#include "table_test_support.hpp"

#include "pydata-accessors/array_strides.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_arrays_01.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

#define ROW_MEMBER_FINALIZE(T, E, STRIDE)                                                                     \
    do {                                                                                                      \
        CHECK(Arrays::ListingStride::T == (STRIDE));                                                          \
        for (std::uint32_t n : {3u, 0u}) {                                                                    \
            CHECK((TableMatchesStandaloneDecode<E>(#T, Arrays::T::members, Arrays::T::size, (STRIDE), n,      \
                                                   [](IStreamBase* s) { Arrays::T::read(s); },                \
                                                   [] { Arrays::T::finalize(); })));                          \
        }                                                                                                     \
    } while (0)

#define ROW_FREE_FINALIZE(T, E, STRIDE)                                                                       \
    do {                                                                                                      \
        CHECK(Arrays::ListingStride::T == (STRIDE));                                                          \
        for (std::uint32_t n : {3u, 0u}) {                                                                    \
            CHECK((TableMatchesStandaloneDecode<E>(                                                           \
                #T, Arrays::T::members, Arrays::T::size, (STRIDE), n,                                         \
                [](IStreamBase* s) { Arrays::T::read(s); },                                                   \
                [] { Arrays::Finalize##T(Arrays::T::members, Arrays::T::size); })));                          \
        }                                                                                                     \
    } while (0)

static void ProjectilePackedRecords() {
    // One Structs::Projectile in the file: 20 fields, 59 bytes, packed. The original keeps it in a 72-byte slot
    // (ListingStride::ProjectileTable); on this host the object is larger than that.
    BufferStream s;
    s.u32(3);
    for (int e = 0; e < 3; ++e) {
        const int base = 1000 * (e + 1);
        s.u8((e + 0) & 1).u8((e + 1) & 1).i32(base + 2).i32(base + 3).u8((e + 2) & 1).i32(base + 5).i32(base + 6);
        s.u8((e + 3) & 1).u8((e + 4) & 1).f32(base + 8.5f).f32(base + 9.5f).i32(base + 10).i32(base + 11).i32(base + 12);
        s.u8((e + 5) & 1).u8((e + 6) & 1).i32(base + 14).i32(base + 15).f32(base + 16.5f).f32(base + 17.5f);
    }
    CHECK(s.bytes.size() == 4 + 3 * 59);

    Arrays::ProjectileTable::read(&s);
    CHECK(s.pos == s.bytes.size());
    CHECK(Arrays::ProjectileTable::size == 3);
    std::uint8_t* members = Arrays::ProjectileTable::members;
    CHECK(members != nullptr);
    if (members == nullptr) return;
    CHECK(pydata::ElementTableListingStride(members) == 72);
    CHECK(pydata::ElementTableListingStride(members) == Arrays::ListingStride::ProjectileTable);
    CHECK(pydata::ElementTableCount(members) == 3);

    const auto* p = reinterpret_cast<const Structs::Projectile*>(members);
    if (sizeof(void*) == 8) CHECK(sizeof(Structs::Projectile) > Arrays::ListingStride::ProjectileTable);
    for (int e = 0; e < 3; ++e) {
        const int base = 1000 * (e + 1);
        CHECK(p[e].Dedicated == (((e + 0) & 1) != 0));
        CHECK(p[e].DisappearOnHit == (((e + 1) & 1) != 0));
        CHECK(p[e].ExpireFX == base + 2 && p[e].ExpireSFX == base + 3);
        CHECK(p[e].FriendlyFire == (((e + 2) & 1) != 0));
        CHECK(p[e].ImpactFX == base + 5 && p[e].ImpactSFX == base + 6);
        CHECK(p[e].IsLaser == (((e + 3) & 1) != 0) && p[e].IsMagic == (((e + 4) & 1) != 0));
        CHECK(p[e].MaxDistance == base + 8.5f && p[e].MaxRotation == base + 9.5f);
        CHECK(p[e].Model == base + 10 && p[e].ObjectImpactFX == base + 11 && p[e].ObjectImpactSFX == base + 12);
        CHECK(p[e].StayOnFloor == (((e + 5) & 1) != 0) && p[e].TargetLock == (((e + 6) & 1) != 0));
        CHECK(p[e].TimeBetweenHit == base + 14 && p[e].Timer == base + 15);
        CHECK(p[e].Velocity == base + 16.5f && p[e].VelocityDamping == base + 17.5f);
    }
    // The tail of element 0 (m_w16, m_w17) lies beyond byte 72 of its slot on this host. A table stepped at the
    // 32-bit stride would have put the vptr of element 1 there; element 0 still holds its own values, and element 1
    // starts sizeof(Projectile) after element 0.
    const std::size_t tail = reinterpret_cast<const std::uint8_t*>(&p[0].VelocityDamping) - members;
    if (sizeof(void*) == 8) CHECK(tail + sizeof(float) > Arrays::ListingStride::ProjectileTable);
    CHECK(reinterpret_cast<const std::uint8_t*>(&p[1]) - members == static_cast<std::ptrdiff_t>(sizeof(Structs::Projectile)));
    Arrays::ProjectileTable::finalize();
    CHECK(Arrays::ProjectileTable::members == nullptr);
}

static void DestructibleContainerPackedRecords() {
    // One element in the file: 7 ints, a bool, 2 ints, a length-prefixed name, 4 ints. The original slot is 68
    // bytes (ListingStride::DestructibleContainers); the host object is larger.
    const char* names[3] = {"box", "barrel!!", "crate"};
    BufferStream s;
    s.u32(3);
    for (int e = 0; e < 3; ++e) {
        const int base = 100 * (e + 1);
        for (int w = 1; w <= 7; ++w) s.i32(base + w);
        s.u8(e & 1);
        s.i32(base + 9).i32(base + 10);
        s.u32(static_cast<std::uint32_t>(std::strlen(names[e]))).str(names[e]);
        for (int w = 13; w <= 16; ++w) s.i32(base + w);
    }
    Arrays::DestructibleContainers::read(&s);
    CHECK(s.pos == s.bytes.size());
    CHECK(Arrays::DestructibleContainers::size == 3);
    std::uint8_t* members = Arrays::DestructibleContainers::members;
    CHECK(members != nullptr);
    if (members == nullptr) return;
    CHECK(pydata::ElementTableListingStride(members) == 68);
    CHECK(pydata::ElementTableCount(members) == 3);
    const auto* d = reinterpret_cast<const Structs::DestructibleContainer*>(members);
    if (sizeof(void*) == 8) CHECK(sizeof(Structs::DestructibleContainer) > Arrays::ListingStride::DestructibleContainers);
    for (int e = 0; e < 3; ++e) {
        const int base = 100 * (e + 1);
        CHECK(d[e].AirResist == base + 1 && d[e].InteractSound == base + 7);
        CHECK(d[e].KeepSolid == ((e & 1) != 0));
        CHECK(d[e].LightningResist == base + 9 && d[e].Loot == base + 10);
        CHECK(d[e].ScriptSize == std::strlen(names[e]));
        CHECK(d[e].Script != nullptr && std::memcmp(d[e].Script, names[e], std::strlen(names[e])) == 0);
        CHECK(d[e].Script != nullptr && d[e].Script[std::strlen(names[e])] == '\0');
        CHECK(d[e].TrapChance == base + 13 && d[e].WaterResist == base + 16);
    }
    Arrays::FinalizeDestructibleContainers(Arrays::DestructibleContainers::members, Arrays::DestructibleContainers::size);
    CHECK(Arrays::DestructibleContainers::members == nullptr);
}

static void LootTablePackedRecords() {
    // LootTable: Structs::Loot elements (listing stride 36). Each Loot is two ints, then table A and table B of
    // LootEntry records (8 ints, listing stride 36 again) and a table C of plain int32 words.
    BufferStream s;
    s.u32(2);
    // element 0: A = 2 entries, B = 1 entry, C = 3 words
    s.i32(11).i32(12).u32(2);
    for (int e = 0; e < 2; ++e) for (int w = 1; w <= 8; ++w) s.i32(100 * (e + 1) + w);
    s.u32(1);
    for (int w = 1; w <= 8; ++w) s.i32(300 + w);
    s.u32(3).i32(41).i32(42).i32(43);
    // element 1: A = 0 entries, B = 2 entries, C = 0 words
    s.i32(21).i32(22).u32(0).u32(2);
    for (int e = 0; e < 2; ++e) for (int w = 1; w <= 8; ++w) s.i32(500 + 100 * e + w);
    s.u32(0);

    Arrays::LootTable::read(&s);
    CHECK(s.pos == s.bytes.size());
    CHECK(Arrays::LootTable::size == 2);
    std::uint8_t* members = Arrays::LootTable::members;
    CHECK(members != nullptr);
    if (members == nullptr) return;
    CHECK(pydata::ElementTableListingStride(members) == 36);
    CHECK(pydata::ElementTableListingStride(members) == Arrays::ListingStride::LootTable);
    CHECK(pydata::ElementTableCount(members) == 2);
    const auto* loot = reinterpret_cast<const Structs::Loot*>(members);
    if (sizeof(void*) == 8) CHECK(sizeof(Structs::Loot) > Arrays::ListingStride::LootTable);

    CHECK(loot[0].RollType == 11 && loot[0].NumRandomItemProbs == 12 && loot[0].RandomLootEntriesSize == 2 && loot[0].FixedLootEntriesSize == 1 && loot[0].SubLootsSize == 3);
    CHECK(loot[1].RollType == 21 && loot[1].NumRandomItemProbs == 22 && loot[1].RandomLootEntriesSize == 0 && loot[1].FixedLootEntriesSize == 2 && loot[1].SubLootsSize == 0);
    // Nested LootEntry tables: listing stride 36 in the stride word, host objects at sizeof(LootEntry).
    CHECK(loot[0].RandomLootEntries != nullptr && pydata::ElementTableListingStride(loot[0].RandomLootEntries) == 36);
    CHECK(loot[0].RandomLootEntries != nullptr && pydata::ElementTableCount(loot[0].RandomLootEntries) == 2);
    if (sizeof(void*) == 8) CHECK(sizeof(Structs::LootEntry) > 36);
    if (loot[0].RandomLootEntries != nullptr) {
        const auto* a = static_cast<const Structs::LootEntry*>(loot[0].RandomLootEntries);
        CHECK(a[0].ItemListID == 101 && a[0].WProb == 108 && a[1].ItemListID == 201 && a[1].WProb == 208);
    }
    CHECK(loot[0].FixedLootEntries != nullptr && pydata::ElementTableListingStride(loot[0].FixedLootEntries) == 36);
    if (loot[0].FixedLootEntries != nullptr) {
        const auto* b = static_cast<const Structs::LootEntry*>(loot[0].FixedLootEntries);
        CHECK(b[0].ItemListID == 301 && b[0].WProb == 308);
    }
    CHECK(loot[0].SubLoots != nullptr);
    if (loot[0].SubLoots != nullptr) {
        const auto* c = static_cast<const std::int32_t*>(loot[0].SubLoots);
        CHECK(c[0] == 41 && c[1] == 42 && c[2] == 43);
    }
    CHECK(loot[1].RandomLootEntries != nullptr && pydata::ElementTableCount(loot[1].RandomLootEntries) == 0);  // an empty table still has a header
    CHECK(loot[1].FixedLootEntries != nullptr && pydata::ElementTableCount(loot[1].FixedLootEntries) == 2);
    if (loot[1].FixedLootEntries != nullptr) {
        const auto* b = static_cast<const Structs::LootEntry*>(loot[1].FixedLootEntries);
        CHECK(b[0].ItemListID == 501 && b[1].ItemListID == 601 && b[1].WProb == 608);
    }
    Arrays::LootTable::finalize();  // destroys the nested tables through Loot::~Loot, then the outer block
    CHECK(Arrays::LootTable::members == nullptr);
}

static void ItemListPackedRecords() {
    // ItemList: Structs::ItemListEntryList elements (listing stride 12), the element named by the vtable in
    // Hex-Rays 0x4ba27c; the finalize of this table used to step by sizeof(ItemListEntry) instead. Each list is a
    // count and that many ItemListEntry records (int32, int16, int8: 7 bytes in the file, listing stride 12).
    BufferStream s;
    s.u32(3);
    const int counts[3] = {2, 0, 3};
    for (int e = 0; e < 3; ++e) {
        s.u32(counts[e]);
        for (int k = 0; k < counts[e]; ++k) s.i32(1000 * (e + 1) + k).i16(10 * (e + 1) + k).u8(100 + 10 * e + k);
    }
    Arrays::ItemList::read(&s);
    CHECK(s.pos == s.bytes.size());
    CHECK(Arrays::ItemList::size == 3);
    std::uint8_t* members = Arrays::ItemList::members;
    CHECK(members != nullptr);
    if (members == nullptr) return;
    CHECK(pydata::ElementTableListingStride(members) == 12);
    CHECK(pydata::ElementTableListingStride(members) == Arrays::ListingStride::ItemList);
    CHECK(pydata::ElementTableCount(members) == 3);
    const auto* lists = reinterpret_cast<const Structs::ItemListEntryList*>(members);
    for (int e = 0; e < 3; ++e) {
        CHECK(lists[e].list_entriesSize == static_cast<std::uint32_t>(counts[e]));
        CHECK(lists[e].list_entries != nullptr);
        if (lists[e].list_entries == nullptr) continue;
        CHECK(pydata::ElementTableListingStride(lists[e].list_entries) == 12);
        CHECK(pydata::ElementTableCount(lists[e].list_entries) == static_cast<std::uint32_t>(counts[e]));
        const auto* entries = static_cast<const Structs::ItemListEntry*>(lists[e].list_entries);
        for (int k = 0; k < counts[e]; ++k) {
            CHECK(entries[k].ItemID == 1000 * (e + 1) + k);
            CHECK(entries[k].Prob == 10 * (e + 1) + k);
            CHECK(entries[k].Qty == 100 + 10 * e + k);
        }
    }
    Arrays::ItemList::finalize();  // the finalize now walks ItemListEntryList elements, as the read built them
    CHECK(Arrays::ItemList::members == nullptr);
}

static void DropTilePriorityPackedRecords() {
    // DropTilePriorityTable: Structs::TileOffsetList elements (listing stride 12; the finalize used to keep
    // stride 12 for a host element of 16 bytes). Each list is a count and that many TileOffset records (two
    // int16: 4 bytes in the file, listing stride 8, 16 bytes on a 64-bit host).
    BufferStream s;
    s.u32(2);
    s.u32(3).i16(1).i16(2).i16(3).i16(4).i16(5).i16(6);
    s.u32(1).i16(-7).i16(8);
    Arrays::DropTilePriorityTable::read(&s);
    CHECK(s.pos == s.bytes.size());
    CHECK(Arrays::DropTilePriorityTable::size == 2);
    std::uint8_t* members = Arrays::DropTilePriorityTable::members;
    CHECK(members != nullptr);
    if (members == nullptr) return;
    CHECK(pydata::ElementTableListingStride(members) == 12);
    CHECK(pydata::ElementTableListingStride(members) == Arrays::ListingStride::DropTilePriorityTable);
    CHECK(pydata::ElementTableCount(members) == 2);
    const auto* lists = reinterpret_cast<const Structs::TileOffsetList*>(members);
    CHECK(lists[0].list_entriesSize == 3 && lists[1].list_entriesSize == 1);
    CHECK(lists[0].list_entries != nullptr && lists[1].list_entries != nullptr);
    if (lists[0].list_entries != nullptr) {
        CHECK(pydata::ElementTableListingStride(lists[0].list_entries) == 8);
        const auto* t = static_cast<const Structs::TileOffset*>(lists[0].list_entries);
        CHECK(t[0].X == 1 && t[0].Y == 2 && t[1].X == 3 && t[1].Y == 4 && t[2].X == 5 && t[2].Y == 6);
    }
    if (lists[1].list_entries != nullptr) {
        const auto* t = static_cast<const Structs::TileOffset*>(lists[1].list_entries);
        CHECK(t[0].X == -7 && t[0].Y == 8);
    }
    Arrays::DropTilePriorityTable::finalize();
    CHECK(Arrays::DropTilePriorityTable::members == nullptr);
}

static void TableReplacedByASecondRead() {
    // A second read finalizes (destroys and frees) the first table before it builds the new one.
    // Structs::SkillList reads a count and that many words; SkillListTable has the listing stride 12.
    BufferStream sa;
    sa.u32(2).u32(1).i32(70).u32(2).i32(71).i32(72);
    Arrays::SkillListTable::read(&sa);
    CHECK(Arrays::SkillListTable::size == 2);
    BufferStream sb;
    sb.u32(1).u32(3).i32(80).i32(81).i32(82);
    Arrays::SkillListTable::read(&sb);
    CHECK(Arrays::SkillListTable::size == 1);
    CHECK(pydata::ElementTableCount(Arrays::SkillListTable::members) == 1);
    const auto* list = reinterpret_cast<const Structs::SkillList*>(Arrays::SkillListTable::members);
    CHECK(list[0].ListSize == 3);
    CHECK(list[0].List != nullptr && static_cast<const std::int32_t*>(list[0].List)[2] == 82);
    Arrays::SkillListTable::finalize();
}

int main() {
    ProjectilePackedRecords();
    DestructibleContainerPackedRecords();
    LootTablePackedRecords();
    ItemListPackedRecords();
    DropTilePriorityPackedRecords();
    TableReplacedByASecondRead();

    // ---- tables declared in w7_arrays_00.hpp (member finalize); stride = Hex-Rays `*result = N` of X::read ----
    ROW_MEMBER_FINALIZE(ModelDict, Structs::ColladaFile, 12);
    ROW_MEMBER_FINALIZE(v2Quests, Structs::v2Quest, 284);
    ROW_MEMBER_FINALIZE(SkillTable, Structs::Skill, 76);
    ROW_MEMBER_FINALIZE(SkillListTable, Structs::SkillList, 12);
    ROW_MEMBER_FINALIZE(ProjectileTable, Structs::Projectile, 72);
    ROW_MEMBER_FINALIZE(NumProbArray, Structs::NumProbList, 12);
    ROW_MEMBER_FINALIZE(MerchantTable, Structs::Merchant, 20);
    ROW_MEMBER_FINALIZE(LootTable, Structs::Loot, 36);
    ROW_MEMBER_FINALIZE(ItemTypeList, Structs::ItemTypeListList, 12);
    ROW_MEMBER_FINALIZE(ItemList, Structs::ItemListEntryList, 12);
    ROW_MEMBER_FINALIZE(InventoryTable, Structs::Inventory, 8);
    ROW_MEMBER_FINALIZE(DropTilePriorityTable, Structs::TileOffsetList, 12);
    ROW_MEMBER_FINALIZE(ItemAudioVisualTable, Structs::ItemAudioVisual, 20);
    ROW_MEMBER_FINALIZE(LevelList, Structs::LevelDeclaration, 72);
    ROW_MEMBER_FINALIZE(FastTravelList, Structs::FastTravelDestination, 28);
    ROW_MEMBER_FINALIZE(ItemBonusAttrMonopoly, Structs::ItemBonusAttrList, 12);
    // ---- tables declared in w7_arrays27.hpp (finalize is the free function of w7_arrays_01.hpp) ----
    ROW_FREE_FINALIZE(ItemPowerTable, Structs::ItemPowerRef, 40);
    ROW_FREE_FINALIZE(HintPages, Structs::HintPage, 12);
    ROW_FREE_FINALIZE(HelpPages, Structs::HelpPage, 12);
    ROW_FREE_FINALIZE(TriggerTraps, Structs::TriggerTrap, 28);
    ROW_FREE_FINALIZE(TriggerPlates, Structs::TriggerPlate, 32);
    ROW_FREE_FINALIZE(TriggerObjects, Structs::TriggerObject, 24);
    ROW_FREE_FINALIZE(TimerTraps, Structs::TimerTrap, 32);
    ROW_FREE_FINALIZE(ProjectileTraps, Structs::ProjectileTrap, 40);
    ROW_FREE_FINALIZE(OpenableContainers, Structs::OpenableContainer, 40);
    ROW_FREE_FINALIZE(LiftableObjects, Structs::LiftableObject, 8);
    ROW_FREE_FINALIZE(GameObjectDamager, Structs::GameObjectDamage, 24);
    ROW_FREE_FINALIZE(ExplosiveTraps, Structs::ExplosiveTrap, 24);
    ROW_FREE_FINALIZE(Doors, Structs::Door, 24);
    ROW_FREE_FINALIZE(DestructibleContainers, Structs::DestructibleContainer, 68);
    ROW_FREE_FINALIZE(FontPalette, Structs::FontColorDef, 12);
    ROW_FREE_FINALIZE(FootstepEffectTable, Structs::FootstepEffect, 32);
    ROW_FREE_FINALIZE(CharEffectTable, Structs::CharEffect, 24);
    ROW_FREE_FINALIZE(AnimatedEffectTable, Structs::AnimFXTpl, 24);
    ROW_FREE_FINALIZE(Dialogs, Structs::DialogStepList, 12);
    ROW_FREE_FINALIZE(DialogActors, Structs::DialogActor, 20);
    ROW_FREE_FINALIZE(GameOptionTable, Structs::GameOption, 32);
    ROW_FREE_FINALIZE(ItemPowerList, Structs::ItemPowerEntryList, 12);
    ROW_FREE_FINALIZE(FaeryTable, Structs::Faery, 36);
    ROW_FREE_FINALIZE(FaeryListTable, Structs::FaeryList, 12);
    ROW_FREE_FINALIZE(Charater_Templates, Structs::CharTemplate, 12);
    ROW_FREE_FINALIZE(CharacterTable, Structs::CharacterProperties, 900);
    ROW_FREE_FINALIZE(ClassTable, Structs::ClassFuncList, 12);
    ROW_FREE_FINALIZE(ItemTable, Structs::Item, 164);

    if (failures == 0) std::printf("array_strides_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
