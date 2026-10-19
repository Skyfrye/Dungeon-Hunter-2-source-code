#pragma once

// Structs records for slice structs_1 (see NOTES.md, "Structs records" and "Thunks: read and finalize forwarders").
// Quest rewards (v2QuestReward family), LangSheetList/LangSheet, the quest objective family
// (v2QuestObjective family), v2Event and v2Quest. Field names are m_wN (word N, offset 4*N); the
// original 32-bit offset is in each comment. Freed pointers are void* or char* (the CustomFree argument).
//
// Bases come from structs_records.hpp (v2QuestReward, v2QuestObjective) and array_element.hpp
// (LangSheet). Classes in this header are defined here. Structs::v2Quest, Structs::v2Event and
// Structs::LangSheetList also carry their PyData name tables (kCount, m_dataNames), so member_names.hpp
// can share a translation unit with this header.
//
// "partial" methods are declared here with their stores; the base read call is not declared (no header
// defines v2QuestReward::read or v2QuestObjective::read), so it is omitted (see the ledger notes).

#include <cstddef>
#include <cstdint>

#include "pydata-accessors/array_element.hpp"
#include "pydata-accessors/deps/stream_reader.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/structs_records.hpp"

namespace Structs {

// ---- Quest rewards: base v2QuestReward (structs_records.hpp) ----

class v2QuestRewardGiveXP : public v2QuestReward {
public:
    ~v2QuestRewardGiveXP() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::int32_t XP = 0;  // +0x8
    std::int32_t NotUsed = 0;  // +0xc
};
void DeletingDestructor(v2QuestRewardGiveXP* self);

class v2QuestRewardGiveGold : public v2QuestReward {
public:
    ~v2QuestRewardGiveGold() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::int32_t Gold = 0;  // +0x8
    std::int32_t NotUsed = 0;  // +0xc
};
void DeletingDestructor(v2QuestRewardGiveGold* self);

class v2QuestRewardGiveCharProps : public v2QuestReward {
public:
    ~v2QuestRewardGiveCharProps() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::int32_t Amount = 0;  // +0x8
    std::int32_t Props = 0;  // +0xc
};
void DeletingDestructor(v2QuestRewardGiveCharProps* self);

// Read and finalize are forwarders (thunks) to v2QuestRewardGiveCharProps.
class v2QuestRewardGiveSkillPoint : public v2QuestRewardGiveCharProps {
public:
    ~v2QuestRewardGiveSkillPoint() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(v2QuestRewardGiveSkillPoint* self);

class v2QuestRewardGiveStatPoint : public v2QuestRewardGiveCharProps {
public:
    ~v2QuestRewardGiveStatPoint() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(v2QuestRewardGiveStatPoint* self);

class v2QuestRewardGiveMaxMPBonus : public v2QuestRewardGiveCharProps {
public:
    ~v2QuestRewardGiveMaxMPBonus() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(v2QuestRewardGiveMaxMPBonus* self);

class v2QuestRewardGiveLoot : public v2QuestReward {
public:
    ~v2QuestRewardGiveLoot() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::int32_t NotUsed = 0;  // +0x8
    std::int32_t Loot = 0;  // +0xc
};
void DeletingDestructor(v2QuestRewardGiveLoot* self);

class v2QuestRewardConsumeLoot : public v2QuestReward {
public:
    ~v2QuestRewardConsumeLoot() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::int32_t Qty = 0;  // +0x8
    std::int32_t Loot = 0;  // +0xc
};
void DeletingDestructor(v2QuestRewardConsumeLoot* self);

// ---- LangSheetList and its elements ----

// Element of LangSheetList. The element base is pydata::ArrayElement (vptr at +0x0).
class LangSheet : public pydata::ArrayElement {
public:
    ~LangSheet() override;
    void finalize() override;
    void read(IStreamBase* stream) override;  // partial: see ledger
    std::uint32_t filenameSize = 0;  // +0x4
    char* filename = nullptr;    // +0x8
    std::uint32_t nameSize = 0;  // +0xc
    char* name = nullptr;    // +0x10
};
void DeletingDestructor(LangSheet* self);

class LangSheetList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~LangSheetList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t listSize = 0;     // +0x4  element count
    void* list = nullptr;       // +0x8  members (LangSheet elements, listing stride 20; header at members - 8 / - 4)
};
void DeletingDestructor(LangSheetList* self);

// ---- Quest objectives: base v2QuestObjective (structs_records.hpp) ----

// Objectives with two strings (length word, buffer) at +0x10 and +0x18 and three int32 at +0x20..+0x28.
class v2QuestMoveInZone : public v2QuestObjective {
public:
    ~v2QuestMoveInZone() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::uint32_t NotUsed1Size = 0;  // +0x10
    char* NotUsed1 = nullptr;    // +0x14
    std::uint32_t ObjectSize = 0;  // +0x18
    char* Object = nullptr;    // +0x1c
    std::int32_t Level = 0;   // +0x20
    std::int32_t Character = 0;   // +0x24
    std::int32_t NotUsed3 = 0;  // +0x28
};
void DeletingDestructor(v2QuestMoveInZone* self);

class v2QuestGatherLoot : public v2QuestObjective {
public:
    ~v2QuestGatherLoot() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::uint32_t NotUsed1Size = 0;  // +0x10
    char* NotUsed1 = nullptr;    // +0x14
    std::uint32_t NotUsed2Size = 0;  // +0x18
    char* NotUsed2 = nullptr;    // +0x1c
    std::int32_t Level = 0;   // +0x20
    std::int32_t Loot = 0;   // +0x24
    std::int32_t Qty = 0;  // +0x28
};
void DeletingDestructor(v2QuestGatherLoot* self);

class v2QuestClearEnemyTemplate : public v2QuestObjective {
public:
    ~v2QuestClearEnemyTemplate() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::uint32_t NotUsed1Size = 0;  // +0x10
    char* NotUsed1 = nullptr;    // +0x14
    std::uint32_t NotUsed2Size = 0;  // +0x18
    char* NotUsed2 = nullptr;    // +0x1c
    std::int32_t Level = 0;   // +0x20
    std::int32_t EnemyType = 0;   // +0x24
    std::int32_t NotUsed3 = 0;  // +0x28
};
void DeletingDestructor(v2QuestClearEnemyTemplate* self);

class v2QuestKillEnemyTemplate : public v2QuestObjective {
public:
    ~v2QuestKillEnemyTemplate() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::uint32_t NotUsed1Size = 0;  // +0x10
    char* NotUsed1 = nullptr;    // +0x14
    std::uint32_t NotUsed2Size = 0;  // +0x18
    char* NotUsed2 = nullptr;    // +0x1c
    std::int32_t EnemyType = 0;   // +0x20
    std::int32_t Level = 0;   // +0x24
    std::int32_t Qty = 0;  // +0x28
};
void DeletingDestructor(v2QuestKillEnemyTemplate* self);

class v2QuestClearEnemies : public v2QuestObjective {
public:
    ~v2QuestClearEnemies() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::uint32_t NotUsed1Size = 0;  // +0x10
    char* NotUsed1 = nullptr;    // +0x14
    std::uint32_t NotUsed2Size = 0;  // +0x18
    char* NotUsed2 = nullptr;    // +0x1c
    std::int32_t Level = 0;   // +0x20
    std::int32_t EnemyType = 0;   // +0x24
    std::int32_t NotUsed3 = 0;  // +0x28
};
void DeletingDestructor(v2QuestClearEnemies* self);

class v2QuestKillEnemies : public v2QuestObjective {
public:
    ~v2QuestKillEnemies() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::uint32_t NotUsed1Size = 0;  // +0x10
    char* NotUsed1 = nullptr;    // +0x14
    std::uint32_t NotUsed2Size = 0;  // +0x18
    char* NotUsed2 = nullptr;    // +0x1c
    std::int32_t EnemyType = 0;   // +0x20
    std::int32_t Level = 0;   // +0x24
    std::int32_t Qty = 0;  // +0x28
};
void DeletingDestructor(v2QuestKillEnemies* self);

// Base of the six objectives below. Its field layout is the same as the one above.
class v2QuestInteractWithDoNotUseThisObjectiveDirectly : public v2QuestObjective {
public:
    ~v2QuestInteractWithDoNotUseThisObjectiveDirectly() override;
    void finalize() override;
    virtual void read(IStreamBase* stream);  // partial: base read call omitted
    std::uint32_t NotUsed1Size = 0;  // +0x10
    char* NotUsed1 = nullptr;    // +0x14
    std::uint32_t NotUsed2Size = 0;  // +0x18
    char* NotUsed2 = nullptr;    // +0x1c
    std::int32_t Object = 0;   // +0x20
    std::int32_t Level = 0;   // +0x24
    std::int32_t Qty = 0;  // +0x28
};
void DeletingDestructor(v2QuestInteractWithDoNotUseThisObjectiveDirectly* self);

// The six classes below add no fields. Their finalize and destructor release m_w5 and m_w7 themselves,
// then call the base. Their read is a forwarder to the base read.
class v2QuestTalkToNPC : public v2QuestInteractWithDoNotUseThisObjectiveDirectly {
public:
    ~v2QuestTalkToNPC() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(v2QuestTalkToNPC* self);

class v2QuestPickedUpLiftable : public v2QuestInteractWithDoNotUseThisObjectiveDirectly {
public:
    ~v2QuestPickedUpLiftable() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(v2QuestPickedUpLiftable* self);

class v2QuestTriggerOn : public v2QuestInteractWithDoNotUseThisObjectiveDirectly {
public:
    ~v2QuestTriggerOn() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(v2QuestTriggerOn* self);

class v2QuestTriggerPlate : public v2QuestInteractWithDoNotUseThisObjectiveDirectly {
public:
    ~v2QuestTriggerPlate() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(v2QuestTriggerPlate* self);

class v2QuestOpenGameObject : public v2QuestInteractWithDoNotUseThisObjectiveDirectly {
public:
    ~v2QuestOpenGameObject() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(v2QuestOpenGameObject* self);

class v2QuestDestroyGameObject : public v2QuestInteractWithDoNotUseThisObjectiveDirectly {
public:
    ~v2QuestDestroyGameObject() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};
void DeletingDestructor(v2QuestDestroyGameObject* self);

// ---- v2Event and v2Quest (no base in this slice) ----

// The element class of v2Event's table is v2QuestObjectiveStub (listing stride 44, vtable off_96A030).
class v2Event {
public:
    static constexpr int kCount = 3;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~v2Event();
    virtual void finalize();
    virtual void read(IStreamBase* stream);  // full listing body; the Hex-Rays 5th readStringEx argument is a register residue
    std::int32_t Level = 0;    // +0x4
    std::uint32_t ScriptSize = 0;   // +0x8  length of m_w3
    char* Script = nullptr;     // +0xc
    std::uint32_t TriggersSize = 0;   // +0x10 element count
    void* Triggers = nullptr;     // +0x14 members (v2QuestObjectiveStub elements, listing stride 44)
};
void DeletingDestructor(v2Event* self);

// Five element tables at +0x18, +0x20, +0x28, +0x30, +0x38 with listing strides 16, 44, 16, 16, 16: v2ConditionStub,
// v2QuestObjectiveStub, then v2QuestRewardStub three times (Hex-Rays vtables of 0x504a94).
class v2Quest {
public:
    static constexpr int kCount = 17;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~v2Quest();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Name = 0;      // +0x4
    std::int32_t Description = 0;      // +0x8
    std::int32_t PostDescription = 0;      // +0xc
    std::int32_t StaticObjective = 0;      // +0x10
    std::uint32_t PreReqsSize = 0;     // +0x14 size of table 1
    void* PreReqs = nullptr;  // 0x18 v2ConditionStub elements (listing stride 16)
    std::uint32_t ObjectivesSize = 0;     // +0x1c size of table 2
    void* Objectives = nullptr;  // 0x20 v2QuestObjectiveStub elements (listing stride 44)
    std::uint32_t RewardsSize = 0;     // +0x24 size of table 3
    void* Rewards = nullptr;  // 0x28 v2QuestRewardStub elements (listing stride 16)
    std::uint32_t RewardsHardSize = 0;    // +0x2c size of table 4
    void* RewardsHard = nullptr;  // 0x30 v2QuestRewardStub elements (listing stride 16)
    std::uint32_t RewardsVeryHardSize = 0;    // +0x34 size of table 5
    void* RewardsVeryHard = nullptr;  // 0x38 v2QuestRewardStub elements (listing stride 16)

    v2QuestObjectiveStub AcceptType;  // +0x3c, subobject destroyed after the body (listing call)
    v2QuestObjectiveStub EndType;  // +0x68, subobject destroyed after the body (listing call)
    std::int32_t TargetLevel = 0;     // +0x94
    bool Repeatable = false;         // +0x98
    std::int32_t State = 0;     // +0x9c
    v2QuestScripts Scripts;  // +0xa0, subobject destroyed after the body (listing call)
    std::int32_t Priority = 0;     // +0x114
    std::int32_t Act = 0;     // +0x118
};

}  // namespace Structs
