// Structs records for slice structs_1 (quest rewards, LangSheetList/LangSheet, quest objectives,
// v2Event, v2Quest). Declarations are in include/pydata-accessors/w7_structs_1.hpp. Each function has
// its address and mangled symbol above it. See NOTES.md, "Structs records" and "Arrays element ABI".
#include <cstring>
#include <new>

#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/struct_strides.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

namespace Structs {

namespace {

// (length, buffer) pair as the listing finalizes it: free the buffer if set, then clear both words.
void FinalizeStringField(std::uint32_t& len, char*& buf) {
    if (buf != nullptr) {
        CustomFree(buf);
        len = 0;
        buf = nullptr;
    }
}

// Listing read of a string field whose length was just read: free the old buffer, allocate len + 1,
// read len raw bytes, then NUL-terminate. Hex-Rays prints a fifth 64-bit argument (high word 1) at the
// readStringEx call sites, but readStringEx itself (0x317454) reads only R0..R3: R1 is the stream, R2 the
// destination and R3 the length, so the extra value the decompiler shows is a register residue the callee
// never looks at. It is therefore not passed here.
void ReadStringField(IStreamBase* stream, std::uint32_t len, char*& buf) {
    if (buf != nullptr) CustomFree(buf);
    buf = static_cast<char*>(::operator new[](static_cast<std::size_t>(len) + 1, kPydataBufferHint));
    StreamReader::readStringEx(stream, buf, len);
    buf[len] = '\0';
}

// Words 4..10 shared by the objective family (see the headers). Only the stores are here; the base read
// call is omitted.
void ReadObjectiveWords(IStreamBase* stream, std::uint32_t& w4, char*& w5, std::uint32_t& w6, char*& w7,
                        std::int32_t& w8, std::int32_t& w9, std::int32_t& w10) {
    w4 = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    ReadStringField(stream, w4, w5);                   // +0x14
    w6 = StreamReader::readAs<std::uint32_t>(stream);  // +0x18
    ReadStringField(stream, w6, w7);                   // +0x1c
    w8 = StreamReader::readAs<std::int32_t>(stream);   // +0x20
    w9 = StreamReader::readAs<std::int32_t>(stream);   // +0x24
    w10 = StreamReader::readAs<std::int32_t>(stream);  // +0x28
}

}  // namespace

// ===== Quest rewards: v2QuestReward family =====

// 0x4c8844 _ZN7Structs19v2QuestRewardGiveXPD2Ev
// 0x4c8878 _ZN7Structs19v2QuestRewardGiveXPD1Ev
v2QuestRewardGiveXP::~v2QuestRewardGiveXP() {
}

// 0x4cd948 _ZN7Structs19v2QuestRewardGiveXPD0Ev
void DeletingDestructor(v2QuestRewardGiveXP* self) {
    self->v2QuestRewardGiveXP::~v2QuestRewardGiveXP();
    CustomFree(self);
}

// 0x4c88ac _ZN7Structs19v2QuestRewardGiveXP8finalizeEv
// thunk: forwards to v2QuestReward::finalize
void v2QuestRewardGiveXP::finalize() {
    v2QuestReward::finalize();
}

// 0x5057c8 _ZN7Structs19v2QuestRewardGiveXP4readEP11IStreamBase
// Listing: Structs::v2QuestReward::read (BL 0x5053fc) first (+0x4), then +0x8 and +0xc readAs<int>.
// v2QuestReward::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestRewardGiveXP::read(IStreamBase* stream) {
    v2QuestReward::read(stream);  // +0x4, base read first
    XP = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    NotUsed = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c88b0 _ZN7Structs21v2QuestRewardGiveGoldD2Ev
// 0x4c88e4 _ZN7Structs21v2QuestRewardGiveGoldD1Ev
v2QuestRewardGiveGold::~v2QuestRewardGiveGold() {
}

// 0x4cd92c _ZN7Structs21v2QuestRewardGiveGoldD0Ev
void DeletingDestructor(v2QuestRewardGiveGold* self) {
    self->v2QuestRewardGiveGold::~v2QuestRewardGiveGold();
    CustomFree(self);
}

// 0x4c8918 _ZN7Structs21v2QuestRewardGiveGold8finalizeEv
// thunk: forwards to v2QuestReward::finalize
void v2QuestRewardGiveGold::finalize() {
    v2QuestReward::finalize();
}

// 0x5056f4 _ZN7Structs21v2QuestRewardGiveGold4readEP11IStreamBase
// Listing: Structs::v2QuestReward::read (BL 0x5053fc) first (+0x4), then +0x8 and +0xc readAs<int>.
// v2QuestReward::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestRewardGiveGold::read(IStreamBase* stream) {
    v2QuestReward::read(stream);  // +0x4, base read first
    Gold = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    NotUsed = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c891c _ZN7Structs26v2QuestRewardGiveCharPropsD2Ev
// 0x4c8950 _ZN7Structs26v2QuestRewardGiveCharPropsD1Ev
v2QuestRewardGiveCharProps::~v2QuestRewardGiveCharProps() {
}

// 0x4cd8bc _ZN7Structs26v2QuestRewardGiveCharPropsD0Ev
void DeletingDestructor(v2QuestRewardGiveCharProps* self) {
    self->v2QuestRewardGiveCharProps::~v2QuestRewardGiveCharProps();
    CustomFree(self);
}

// 0x4c8984 _ZN7Structs26v2QuestRewardGiveCharProps8finalizeEv
// thunk: forwards to v2QuestReward::finalize
void v2QuestRewardGiveCharProps::finalize() {
    v2QuestReward::finalize();
}

// 0x505614 _ZN7Structs26v2QuestRewardGiveCharProps4readEP11IStreamBase
// Listing: Structs::v2QuestReward::read (BL 0x5053fc) first (+0x4), then +0x8 and +0xc readAs<int>.
// v2QuestReward::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestRewardGiveCharProps::read(IStreamBase* stream) {
    v2QuestReward::read(stream);  // +0x4, base read first
    Amount = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Props = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c8988 _ZN7Structs27v2QuestRewardGiveSkillPointD2Ev
// 0x4c89bc _ZN7Structs27v2QuestRewardGiveSkillPointD1Ev
v2QuestRewardGiveSkillPoint::~v2QuestRewardGiveSkillPoint() {
}

// 0x4cd910 _ZN7Structs27v2QuestRewardGiveSkillPointD0Ev
void DeletingDestructor(v2QuestRewardGiveSkillPoint* self) {
    self->v2QuestRewardGiveSkillPoint::~v2QuestRewardGiveSkillPoint();
    CustomFree(self);
}

// 0x4c89f0 _ZN7Structs27v2QuestRewardGiveSkillPoint8finalizeEv
// thunk: forwards to v2QuestRewardGiveCharProps::finalize
void v2QuestRewardGiveSkillPoint::finalize() {
    v2QuestRewardGiveCharProps::finalize();
}

// 0x5056f0 _ZN7Structs27v2QuestRewardGiveSkillPoint4readEP11IStreamBase
// thunk: forwards to v2QuestRewardGiveCharProps::read
void v2QuestRewardGiveSkillPoint::read(IStreamBase* stream) {
    v2QuestRewardGiveCharProps::read(stream);
}

// 0x4c89f4 _ZN7Structs26v2QuestRewardGiveStatPointD2Ev
// 0x4c8a28 _ZN7Structs26v2QuestRewardGiveStatPointD1Ev
v2QuestRewardGiveStatPoint::~v2QuestRewardGiveStatPoint() {
}

// 0x4cd8f4 _ZN7Structs26v2QuestRewardGiveStatPointD0Ev
void DeletingDestructor(v2QuestRewardGiveStatPoint* self) {
    self->v2QuestRewardGiveStatPoint::~v2QuestRewardGiveStatPoint();
    CustomFree(self);
}

// 0x4c8a5c _ZN7Structs26v2QuestRewardGiveStatPoint8finalizeEv
// thunk: forwards to v2QuestRewardGiveCharProps::finalize
void v2QuestRewardGiveStatPoint::finalize() {
    v2QuestRewardGiveCharProps::finalize();
}

// 0x5056ec _ZN7Structs26v2QuestRewardGiveStatPoint4readEP11IStreamBase
// thunk: forwards to v2QuestRewardGiveCharProps::read
void v2QuestRewardGiveStatPoint::read(IStreamBase* stream) {
    v2QuestRewardGiveCharProps::read(stream);
}

// 0x4c8a60 _ZN7Structs27v2QuestRewardGiveMaxMPBonusD2Ev
// 0x4c8a94 _ZN7Structs27v2QuestRewardGiveMaxMPBonusD1Ev
v2QuestRewardGiveMaxMPBonus::~v2QuestRewardGiveMaxMPBonus() {
}

// 0x4cd8d8 _ZN7Structs27v2QuestRewardGiveMaxMPBonusD0Ev
void DeletingDestructor(v2QuestRewardGiveMaxMPBonus* self) {
    self->v2QuestRewardGiveMaxMPBonus::~v2QuestRewardGiveMaxMPBonus();
    CustomFree(self);
}

// 0x4c8ac8 _ZN7Structs27v2QuestRewardGiveMaxMPBonus8finalizeEv
// thunk: forwards to v2QuestRewardGiveCharProps::finalize
void v2QuestRewardGiveMaxMPBonus::finalize() {
    v2QuestRewardGiveCharProps::finalize();
}

// 0x5056e8 _ZN7Structs27v2QuestRewardGiveMaxMPBonus4readEP11IStreamBase
// thunk: forwards to v2QuestRewardGiveCharProps::read
void v2QuestRewardGiveMaxMPBonus::read(IStreamBase* stream) {
    v2QuestRewardGiveCharProps::read(stream);
}

// 0x4c8acc _ZN7Structs21v2QuestRewardGiveLootD2Ev
// 0x4c8b00 _ZN7Structs21v2QuestRewardGiveLootD1Ev
v2QuestRewardGiveLoot::~v2QuestRewardGiveLoot() {
}

// 0x4cd8a0 _ZN7Structs21v2QuestRewardGiveLootD0Ev
void DeletingDestructor(v2QuestRewardGiveLoot* self) {
    self->v2QuestRewardGiveLoot::~v2QuestRewardGiveLoot();
    CustomFree(self);
}

// 0x4c8b34 _ZN7Structs21v2QuestRewardGiveLoot8finalizeEv
// thunk: forwards to v2QuestReward::finalize
void v2QuestRewardGiveLoot::finalize() {
    v2QuestReward::finalize();
}

// 0x505540 _ZN7Structs21v2QuestRewardGiveLoot4readEP11IStreamBase
// Listing: Structs::v2QuestReward::read (BL 0x5053fc) first (+0x4), then +0x8 and +0xc readAs<int>.
// v2QuestReward::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestRewardGiveLoot::read(IStreamBase* stream) {
    v2QuestReward::read(stream);  // +0x4, base read first
    NotUsed = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Loot = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c8b38 _ZN7Structs24v2QuestRewardConsumeLootD2Ev
// 0x4c8b6c _ZN7Structs24v2QuestRewardConsumeLootD1Ev
v2QuestRewardConsumeLoot::~v2QuestRewardConsumeLoot() {
}

// 0x4cd884 _ZN7Structs24v2QuestRewardConsumeLootD0Ev
void DeletingDestructor(v2QuestRewardConsumeLoot* self) {
    self->v2QuestRewardConsumeLoot::~v2QuestRewardConsumeLoot();
    CustomFree(self);
}

// 0x4c8ba0 _ZN7Structs24v2QuestRewardConsumeLoot8finalizeEv
// thunk: forwards to v2QuestReward::finalize
void v2QuestRewardConsumeLoot::finalize() {
    v2QuestReward::finalize();
}

// 0x50546c _ZN7Structs24v2QuestRewardConsumeLoot4readEP11IStreamBase
// Listing: Structs::v2QuestReward::read (BL 0x5053fc) first (+0x4), then +0x8 and +0xc readAs<int>.
// v2QuestReward::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestRewardConsumeLoot::read(IStreamBase* stream) {
    v2QuestReward::read(stream);  // +0x4, base read first
    Qty = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Loot = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// ===== LangSheetList and LangSheet =====

// 0x4ceb00 _ZN7Structs13LangSheetList8finalizeEv
void LangSheetList::finalize() {
    if (list != nullptr) {
        pydata::DeleteElementTable<LangSheet>(list);
        listSize = 0;
        list = nullptr;
    }
}

// 0x4dc2ac _ZN7Structs13LangSheetList4readEP11IStreamBase
void LangSheetList::read(IStreamBase* stream) {
    listSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    pydata::DeleteElementTable<LangSheet>(list);
    // Listing stride 20 (Structs::ListingStride::LangSheet); the elements are host LangSheet objects, constructed in
    // place (vptr set, the two buffer pointers null as the listing zeroes +0x8 and +0x10).
    list = pydata::NewAndReadElementTable<LangSheet>(ListingStride::LangSheet, listSize, stream);
}

// 0x4ceb68 _ZN7Structs13LangSheetListD1Ev
// 0x4cec04 _ZN7Structs13LangSheetListD2Ev
LangSheetList::~LangSheetList() {
    pydata::DeleteElementTable<LangSheet>(list);
}

// 0x4cebe8 _ZN7Structs13LangSheetListD0Ev
void DeletingDestructor(LangSheetList* self) {
    self->LangSheetList::~LangSheetList();
    CustomFree(self);
}

// 0x4cec84 _ZN7Structs9LangSheet8finalizeEv
void LangSheet::finalize() {
    FinalizeStringField(filenameSize, filename);
    FinalizeStringField(nameSize, name);
}

// 0x4dd38c _ZN7Structs9LangSheet4readEP11IStreamBase
// Listing: uint32 length at +0x4, that many raw bytes into +0x8 (readStringEx 0x317454), then the same for
// +0xc and +0x10. The readStringEx "fifth 64-bit argument" Hex-Rays prints is a register residue the callee
// ignores, so it is not passed (see ReadStringField above). The second readStringEx result stays in r0 in the
// original; this slot returns void (ArrayElement::read, array_element.hpp), so that residue is dropped.
void LangSheet::read(IStreamBase* stream) {
    filenameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    ReadStringField(stream, filenameSize, filename);                 // +0x8
    nameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    ReadStringField(stream, nameSize, name);                 // +0x10
}

// 0x4cecc8 _ZN7Structs9LangSheetD1Ev
// 0x4ced34 _ZN7Structs9LangSheetD2Ev
LangSheet::~LangSheet() {
    if (filename != nullptr) CustomFree(filename);
    if (name != nullptr) CustomFree(name);
}

// 0x4ced18 _ZN7Structs9LangSheetD0Ev
void DeletingDestructor(LangSheet* self) {
    self->LangSheet::~LangSheet();
    CustomFree(self);
}

// ===== Quest objectives: v2QuestObjective family =====

// 0x4cee48 _ZN7Structs17v2QuestMoveInZone8finalizeEv
void v2QuestMoveInZone::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(ObjectSize, Object);
    v2QuestObjective::finalize();
}

// 0x5036b8 _ZN7Structs17v2QuestMoveInZone4readEP11IStreamBase
// Listing: Structs::v2QuestObjective::read (BL 0x50358c) first, then words +0x10..+0x28.
// v2QuestObjective::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestMoveInZone::read(IStreamBase* stream) {
    v2QuestObjective::read(stream);  // +0x4..+0xc, base read first
    ReadObjectiveWords(stream, NotUsed1Size, NotUsed1, ObjectSize, Object, Level, Character, NotUsed3);
}

// 0x4cee94 _ZN7Structs17v2QuestMoveInZoneD1Ev
// 0x4cef08 _ZN7Structs17v2QuestMoveInZoneD2Ev
v2QuestMoveInZone::~v2QuestMoveInZone() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (Object != nullptr) CustomFree(Object);
}

// 0x4ceeec _ZN7Structs17v2QuestMoveInZoneD0Ev
void DeletingDestructor(v2QuestMoveInZone* self) {
    self->v2QuestMoveInZone::~v2QuestMoveInZone();
    CustomFree(self);
}

// 0x4cef60 _ZN7Structs17v2QuestGatherLoot8finalizeEv
void v2QuestGatherLoot::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestObjective::finalize();
}

// 0x503930 _ZN7Structs17v2QuestGatherLoot4readEP11IStreamBase
// Listing: Structs::v2QuestObjective::read (BL 0x50358c) first, then words +0x10..+0x28.
// v2QuestObjective::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestGatherLoot::read(IStreamBase* stream) {
    v2QuestObjective::read(stream);  // +0x4..+0xc, base read first
    ReadObjectiveWords(stream, NotUsed1Size, NotUsed1, NotUsed2Size, NotUsed2, Level, Loot, Qty);
}

// 0x4cefac _ZN7Structs17v2QuestGatherLootD1Ev
// 0x4cf020 _ZN7Structs17v2QuestGatherLootD2Ev
v2QuestGatherLoot::~v2QuestGatherLoot() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cf004 _ZN7Structs17v2QuestGatherLootD0Ev
void DeletingDestructor(v2QuestGatherLoot* self) {
    self->v2QuestGatherLoot::~v2QuestGatherLoot();
    CustomFree(self);
}

// 0x4cf078 _ZN7Structs25v2QuestClearEnemyTemplate8finalizeEv
void v2QuestClearEnemyTemplate::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestObjective::finalize();
}

// 0x503ba8 _ZN7Structs25v2QuestClearEnemyTemplate4readEP11IStreamBase
// Listing: Structs::v2QuestObjective::read (BL 0x50358c) first, then words +0x10..+0x28.
// v2QuestObjective::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestClearEnemyTemplate::read(IStreamBase* stream) {
    v2QuestObjective::read(stream);  // +0x4..+0xc, base read first
    ReadObjectiveWords(stream, NotUsed1Size, NotUsed1, NotUsed2Size, NotUsed2, Level, EnemyType, NotUsed3);
}

// 0x4cf0c4 _ZN7Structs25v2QuestClearEnemyTemplateD1Ev
// 0x4cf138 _ZN7Structs25v2QuestClearEnemyTemplateD2Ev
v2QuestClearEnemyTemplate::~v2QuestClearEnemyTemplate() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cf11c _ZN7Structs25v2QuestClearEnemyTemplateD0Ev
void DeletingDestructor(v2QuestClearEnemyTemplate* self) {
    self->v2QuestClearEnemyTemplate::~v2QuestClearEnemyTemplate();
    CustomFree(self);
}

// 0x4cf190 _ZN7Structs24v2QuestKillEnemyTemplate8finalizeEv
void v2QuestKillEnemyTemplate::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestObjective::finalize();
}

// 0x503e20 _ZN7Structs24v2QuestKillEnemyTemplate4readEP11IStreamBase
// Listing: Structs::v2QuestObjective::read (BL 0x50358c) first, then words +0x10..+0x28.
// v2QuestObjective::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestKillEnemyTemplate::read(IStreamBase* stream) {
    v2QuestObjective::read(stream);  // +0x4..+0xc, base read first
    ReadObjectiveWords(stream, NotUsed1Size, NotUsed1, NotUsed2Size, NotUsed2, EnemyType, Level, Qty);
}

// 0x4cf1dc _ZN7Structs24v2QuestKillEnemyTemplateD1Ev
// 0x4cf250 _ZN7Structs24v2QuestKillEnemyTemplateD2Ev
v2QuestKillEnemyTemplate::~v2QuestKillEnemyTemplate() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cf234 _ZN7Structs24v2QuestKillEnemyTemplateD0Ev
void DeletingDestructor(v2QuestKillEnemyTemplate* self) {
    self->v2QuestKillEnemyTemplate::~v2QuestKillEnemyTemplate();
    CustomFree(self);
}

// 0x4cf2a8 _ZN7Structs19v2QuestClearEnemies8finalizeEv
void v2QuestClearEnemies::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestObjective::finalize();
}

// 0x504098 _ZN7Structs19v2QuestClearEnemies4readEP11IStreamBase
// Listing: Structs::v2QuestObjective::read (BL 0x50358c) first, then words +0x10..+0x28.
// v2QuestObjective::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestClearEnemies::read(IStreamBase* stream) {
    v2QuestObjective::read(stream);  // +0x4..+0xc, base read first
    ReadObjectiveWords(stream, NotUsed1Size, NotUsed1, NotUsed2Size, NotUsed2, Level, EnemyType, NotUsed3);
}

// 0x4cf2f4 _ZN7Structs19v2QuestClearEnemiesD1Ev
// 0x4cf368 _ZN7Structs19v2QuestClearEnemiesD2Ev
v2QuestClearEnemies::~v2QuestClearEnemies() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cf34c _ZN7Structs19v2QuestClearEnemiesD0Ev
void DeletingDestructor(v2QuestClearEnemies* self) {
    self->v2QuestClearEnemies::~v2QuestClearEnemies();
    CustomFree(self);
}

// 0x4cf3c0 _ZN7Structs18v2QuestKillEnemies8finalizeEv
void v2QuestKillEnemies::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestObjective::finalize();
}

// 0x504310 _ZN7Structs18v2QuestKillEnemies4readEP11IStreamBase
// Listing: Structs::v2QuestObjective::read (BL 0x50358c) first, then words +0x10..+0x28.
// v2QuestObjective::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestKillEnemies::read(IStreamBase* stream) {
    v2QuestObjective::read(stream);  // +0x4..+0xc, base read first
    ReadObjectiveWords(stream, NotUsed1Size, NotUsed1, NotUsed2Size, NotUsed2, EnemyType, Level, Qty);
}

// 0x4cf40c _ZN7Structs18v2QuestKillEnemiesD1Ev
// 0x4cf480 _ZN7Structs18v2QuestKillEnemiesD2Ev
v2QuestKillEnemies::~v2QuestKillEnemies() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cf464 _ZN7Structs18v2QuestKillEnemiesD0Ev
void DeletingDestructor(v2QuestKillEnemies* self) {
    self->v2QuestKillEnemies::~v2QuestKillEnemies();
    CustomFree(self);
}

// 0x4cf4d8 _ZN7Structs48v2QuestInteractWithDoNotUseThisObjectiveDirectly8finalizeEv
void v2QuestInteractWithDoNotUseThisObjectiveDirectly::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestObjective::finalize();
}

// 0x504588 _ZN7Structs48v2QuestInteractWithDoNotUseThisObjectiveDirectly4readEP11IStreamBase
// Listing: Structs::v2QuestObjective::read (BL 0x50358c) first, then words +0x10..+0x28.
// v2QuestObjective::read is defined in e2-pydata-accessors-Structs-66b9bc-1.cpp; the qualified call
// below is the listing's. Was partial while that body was believed missing.
void v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(IStreamBase* stream) {
    v2QuestObjective::read(stream);  // +0x4..+0xc, base read first
    ReadObjectiveWords(stream, NotUsed1Size, NotUsed1, NotUsed2Size, NotUsed2, Object, Level, Qty);
}

// 0x4cf6ec _ZN7Structs48v2QuestInteractWithDoNotUseThisObjectiveDirectlyD1Ev
// 0x4cf760 _ZN7Structs48v2QuestInteractWithDoNotUseThisObjectiveDirectlyD2Ev
v2QuestInteractWithDoNotUseThisObjectiveDirectly::~v2QuestInteractWithDoNotUseThisObjectiveDirectly() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cf744 _ZN7Structs48v2QuestInteractWithDoNotUseThisObjectiveDirectlyD0Ev
void DeletingDestructor(v2QuestInteractWithDoNotUseThisObjectiveDirectly* self) {
    self->v2QuestInteractWithDoNotUseThisObjectiveDirectly::~v2QuestInteractWithDoNotUseThisObjectiveDirectly();
    CustomFree(self);
}

// The six classes below have no fields of their own. Their finalize and destructor release m_w5 and m_w7
// (the base's words) before calling the base. The listing releases them again in the base destructor and
// does not reset them in between (see the ledger note on 0x4cf7b8). The port keeps that order.

// 0x4cf524 _ZN7Structs16v2QuestTalkToNPC8finalizeEv
void v2QuestTalkToNPC::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::finalize();
}

// 0x504800 _ZN7Structs16v2QuestTalkToNPC4readEP11IStreamBase
// thunk: forwards to v2QuestInteractWithDoNotUseThisObjectiveDirectly::read
void v2QuestTalkToNPC::read(IStreamBase* stream) {
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(stream);
}

// 0x4cf7b8 _ZN7Structs16v2QuestTalkToNPCD1Ev
// 0x4cf82c _ZN7Structs16v2QuestTalkToNPCD2Ev
v2QuestTalkToNPC::~v2QuestTalkToNPC() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cf810 _ZN7Structs16v2QuestTalkToNPCD0Ev
void DeletingDestructor(v2QuestTalkToNPC* self) {
    self->v2QuestTalkToNPC::~v2QuestTalkToNPC();
    CustomFree(self);
}

// 0x4cf570 _ZN7Structs23v2QuestPickedUpLiftable8finalizeEv
void v2QuestPickedUpLiftable::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::finalize();
}

// 0x504804 _ZN7Structs23v2QuestPickedUpLiftable4readEP11IStreamBase
// thunk: forwards to v2QuestInteractWithDoNotUseThisObjectiveDirectly::read
void v2QuestPickedUpLiftable::read(IStreamBase* stream) {
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(stream);
}

// 0x4cf884 _ZN7Structs23v2QuestPickedUpLiftableD1Ev
// 0x4cf8f8 _ZN7Structs23v2QuestPickedUpLiftableD2Ev
v2QuestPickedUpLiftable::~v2QuestPickedUpLiftable() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cf8dc _ZN7Structs23v2QuestPickedUpLiftableD0Ev
void DeletingDestructor(v2QuestPickedUpLiftable* self) {
    self->v2QuestPickedUpLiftable::~v2QuestPickedUpLiftable();
    CustomFree(self);
}

// 0x4cf5bc _ZN7Structs16v2QuestTriggerOn8finalizeEv
void v2QuestTriggerOn::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::finalize();
}

// 0x504808 _ZN7Structs16v2QuestTriggerOn4readEP11IStreamBase
// thunk: forwards to v2QuestInteractWithDoNotUseThisObjectiveDirectly::read
void v2QuestTriggerOn::read(IStreamBase* stream) {
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(stream);
}

// 0x4cf950 _ZN7Structs16v2QuestTriggerOnD1Ev
// 0x4cf9c4 _ZN7Structs16v2QuestTriggerOnD2Ev
v2QuestTriggerOn::~v2QuestTriggerOn() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cf9a8 _ZN7Structs16v2QuestTriggerOnD0Ev
void DeletingDestructor(v2QuestTriggerOn* self) {
    self->v2QuestTriggerOn::~v2QuestTriggerOn();
    CustomFree(self);
}

// 0x4cf608 _ZN7Structs19v2QuestTriggerPlate8finalizeEv
void v2QuestTriggerPlate::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::finalize();
}

// 0x50480c _ZN7Structs19v2QuestTriggerPlate4readEP11IStreamBase
// thunk: forwards to v2QuestInteractWithDoNotUseThisObjectiveDirectly::read
void v2QuestTriggerPlate::read(IStreamBase* stream) {
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(stream);
}

// 0x4cfa1c _ZN7Structs19v2QuestTriggerPlateD1Ev
// 0x4cfa90 _ZN7Structs19v2QuestTriggerPlateD2Ev
v2QuestTriggerPlate::~v2QuestTriggerPlate() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cfa74 _ZN7Structs19v2QuestTriggerPlateD0Ev
void DeletingDestructor(v2QuestTriggerPlate* self) {
    self->v2QuestTriggerPlate::~v2QuestTriggerPlate();
    CustomFree(self);
}

// 0x4cf654 _ZN7Structs21v2QuestOpenGameObject8finalizeEv
void v2QuestOpenGameObject::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::finalize();
}

// 0x504810 _ZN7Structs21v2QuestOpenGameObject4readEP11IStreamBase
// thunk: forwards to v2QuestInteractWithDoNotUseThisObjectiveDirectly::read
void v2QuestOpenGameObject::read(IStreamBase* stream) {
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(stream);
}

// 0x4cfae8 _ZN7Structs21v2QuestOpenGameObjectD1Ev
// 0x4cfb5c _ZN7Structs21v2QuestOpenGameObjectD2Ev
v2QuestOpenGameObject::~v2QuestOpenGameObject() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cfb40 _ZN7Structs21v2QuestOpenGameObjectD0Ev
void DeletingDestructor(v2QuestOpenGameObject* self) {
    self->v2QuestOpenGameObject::~v2QuestOpenGameObject();
    CustomFree(self);
}

// 0x4cf6a0 _ZN7Structs24v2QuestDestroyGameObject8finalizeEv
void v2QuestDestroyGameObject::finalize() {
    FinalizeStringField(NotUsed1Size, NotUsed1);
    FinalizeStringField(NotUsed2Size, NotUsed2);
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::finalize();
}

// 0x504814 _ZN7Structs24v2QuestDestroyGameObject4readEP11IStreamBase
// thunk: forwards to v2QuestInteractWithDoNotUseThisObjectiveDirectly::read
void v2QuestDestroyGameObject::read(IStreamBase* stream) {
    v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(stream);
}

// 0x4cfbb4 _ZN7Structs24v2QuestDestroyGameObjectD1Ev
// 0x4cfc28 _ZN7Structs24v2QuestDestroyGameObjectD2Ev
v2QuestDestroyGameObject::~v2QuestDestroyGameObject() {
    if (NotUsed1 != nullptr) CustomFree(NotUsed1);
    if (NotUsed2 != nullptr) CustomFree(NotUsed2);
}

// 0x4cfc0c _ZN7Structs24v2QuestDestroyGameObjectD0Ev
void DeletingDestructor(v2QuestDestroyGameObject* self) {
    self->v2QuestDestroyGameObject::~v2QuestDestroyGameObject();
    CustomFree(self);
}

// ===== v2Event and v2Quest =====

// 0x4cfc80 _ZN7Structs7v2Event8finalizeEv
void v2Event::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);
        ScriptSize = 0;
        Script = nullptr;
    }
    if (Triggers != nullptr) {
        pydata::DeleteElementTable<v2QuestObjectiveStub>(Triggers);
        TriggersSize = 0;
        Triggers = nullptr;
    }
}

// 0x4ebc38 _ZN7Structs7v2Event4readEP11IStreamBase
// Matches the listing: int32 +0x4, uint32 length +0x8, that many raw bytes into +0xc, uint32 count +0x10, then
// the old v2QuestObjectiveStub table (+0x14) destroyed, `m_w4` new elements built (listing stride 44, vtable
// off_96A030, pointer words +0x14 and +0x1c null by construction) and read in order. The readStringEx "fifth
// 64-bit argument" Hex-Rays prints is a register residue the callee (0x317454) never reads, so it is not
// passed. The original returns the last element read's result; this slot returns void (see LangSheet::read).
void v2Event::read(IStreamBase* stream) {
    Level = StreamReader::readAs<std::int32_t>(stream);   // +0x4
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    ReadStringField(stream, ScriptSize, Script);                 // +0xc
    TriggersSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    pydata::DeleteElementTable<v2QuestObjectiveStub>(Triggers);
    Triggers = pydata::NewAndReadElementTable<v2QuestObjectiveStub>(ListingStride::v2QuestObjectiveStub, TriggersSize, stream);
}

// 0x4cfd04 _ZN7Structs7v2EventD1Ev
// 0x4cfdb0 _ZN7Structs7v2EventD2Ev
v2Event::~v2Event() {
    if (Script != nullptr) CustomFree(Script);
    pydata::DeleteElementTable<v2QuestObjectiveStub>(Triggers);
}

// 0x4cfd94 _ZN7Structs7v2EventD0Ev
void DeletingDestructor(v2Event* self) {
    self->v2Event::~v2Event();
    CustomFree(self);
}

// 0x4cfe40 _ZN7Structs7v2Quest8finalizeEv
// Five element tables (+0x18 v2ConditionStub, +0x20 v2QuestObjectiveStub, +0x28/+0x30/+0x38 v2QuestRewardStub; listing
// strides 16, 44, 16, 16, 16), each destroyed back to front and freed, then its count and pointer cleared.
void v2Quest::finalize() {
    if (PreReqs != nullptr) {
        pydata::DeleteElementTable<v2ConditionStub>(PreReqs);
        PreReqsSize = 0;
        PreReqs = nullptr;
    }
    if (Objectives != nullptr) {
        pydata::DeleteElementTable<v2QuestObjectiveStub>(Objectives);
        ObjectivesSize = 0;
        Objectives = nullptr;
    }
    if (Rewards != nullptr) {
        pydata::DeleteElementTable<v2QuestRewardStub>(Rewards);
        RewardsSize = 0;
        Rewards = nullptr;
    }
    if (RewardsHard != nullptr) {
        pydata::DeleteElementTable<v2QuestRewardStub>(RewardsHard);
        RewardsHardSize = 0;
        RewardsHard = nullptr;
    }
    if (RewardsVeryHard != nullptr) {
        pydata::DeleteElementTable<v2QuestRewardStub>(RewardsVeryHard);
        RewardsVeryHardSize = 0;
        RewardsVeryHard = nullptr;
    }
}

// 0x4d06c0 _ZN7Structs7v2QuestD2Ev
// 0x4d04dc _ZN7Structs7v2QuestD1Ev
// Each table is destroyed only when its pointer is set (the listing tests it); the subobject destructors
// (+0xa0, +0x68, +0x3c) run after this body as members.
v2Quest::~v2Quest() {
    pydata::DeleteElementTable<v2ConditionStub>(PreReqs);       // +0x18, listing stride 16
    pydata::DeleteElementTable<v2QuestObjectiveStub>(Objectives);  // +0x20, listing stride 44
    pydata::DeleteElementTable<v2QuestRewardStub>(Rewards);    // +0x28, listing stride 16
    pydata::DeleteElementTable<v2QuestRewardStub>(RewardsHard);    // +0x30, listing stride 16
    pydata::DeleteElementTable<v2QuestRewardStub>(RewardsVeryHard);    // +0x38, listing stride 16
}

}  // namespace Structs
