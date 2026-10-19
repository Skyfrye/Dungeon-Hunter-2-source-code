// Track B batch e2-pydata-accessors-Structs-66b9bc-1 (category pydata-accessors, owner Structs, part 2 of 2).
// The read(IStreamBase*) bodies of 12 Structs record classes. Each body follows the Hex-Rays order of
// reads, frees and allocations. The element arrays use the block of the Arrays readers
// (e2-pydata-accessors-Arrays-b90cc9-0.cpp): an 8-byte header (stride word, count word), then the elements,
// built by pydata::NewAndReadElementTable (element_table.hpp). The elements are host objects constructed in place
// (so the element's default member initialisers give the zeroed buffer pointers that the listing clears:
// v2QuestObjectiveStub +0x14 and +0x1c), reached through a typed pointer, and the stride word holds the original
// 32-bit stride (Structs::ListingStride, struct_strides.hpp: 36 for LootEntry, 16 for v2ConditionStub and
// v2QuestRewardStub, 44 for v2QuestObjectiveStub). A host table is never addressed with those strides.

#include <cstddef>
#include <cstdint>

#include "pydata-accessors/deps/stream_reader.hpp"
#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/struct_strides.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

namespace Structs {

// 0x4fcff0 _ZN7Structs21FastTravelDestination4readEP11IStreamBase
void FastTravelDestination::read(IStreamBase* stream) {
    DescriptionId = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    EntryPointId = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    LevelNameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc, length of the string
    if (LevelName != nullptr) CustomFree(LevelName);
    char* text = static_cast<char*>(::operator new[](static_cast<std::size_t>(LevelNameSize) + 1, kPydataBufferHint));
    LevelName = text;  // +0x10
    StreamReader::readStringEx(stream, text, LevelNameSize);
    text[LevelNameSize] = '\0';
    LocationType = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    StringId = StreamReader::readAs<std::int32_t>(stream);  // +0x18
}

// 0x4fe794 _ZN7Structs4Loot4readEP11IStreamBase
void Loot::read(IStreamBase* stream) {
    RollType = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    NumRandomItemProbs = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    // Table A: LootEntry elements (listing stride 36).
    RandomLootEntriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc, count of table A
    pydata::DeleteElementTable<LootEntry>(RandomLootEntries);
    RandomLootEntries = pydata::NewAndReadElementTable<LootEntry>(ListingStride::LootEntry, RandomLootEntriesSize, stream);
    // Table B: LootEntry elements (listing stride 36).
    FixedLootEntriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x14, count of table B
    pydata::DeleteElementTable<LootEntry>(FixedLootEntries);
    FixedLootEntries = pydata::NewAndReadElementTable<LootEntry>(ListingStride::LootEntry, FixedLootEntriesSize, stream);
    // Table C: plain int32 words (stride 4), no element header.
    SubLootsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x1c, count of table C
    if (SubLoots != nullptr) CustomFree(SubLoots);
    SubLoots = ::operator new[](static_cast<std::size_t>(SubLootsSize) * 4, kPydataBufferHint);
    auto* words = static_cast<std::int32_t*>(SubLoots);
    for (std::uint32_t i = 0; i < SubLootsSize; ++i) {
        words[i] = StreamReader::readAs<std::int32_t>(stream);
    }
}

// 0x4fec08 _ZN7Structs9LootEntry4readEP11IStreamBase
void LootEntry::read(IStreamBase* stream) {
    ItemListID = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    ItemPowerList = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    MProb = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    NumPowerProbs = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Pct = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    Prob = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    RProb = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
    WProb = StreamReader::readAs<std::int32_t>(stream);  // +0x20
}

// 0x50358c _ZN7Structs16v2QuestObjective4readEP11IStreamBase
void v2QuestObjective::read(IStreamBase* stream) {
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Desc = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    OnComplete = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x504818 _ZN7Structs20v2QuestObjectiveStub4readEP11IStreamBase
void v2QuestObjectiveStub::read(IStreamBase* stream) {
    v2QuestObjective::read(stream);  // base read first (+0x4..+0xc)
    Str1Size = StreamReader::readAs<std::uint32_t>(stream);  // +0x10, length of Str1
    if (Str1 != nullptr) CustomFree(Str1);
    char* first = static_cast<char*>(::operator new[](static_cast<std::size_t>(Str1Size) + 1, kPydataBufferHint));
    Str1 = first;  // +0x14
    StreamReader::readStringEx(stream, first, Str1Size);
    first[Str1Size] = '\0';
    Str2Size = StreamReader::readAs<std::uint32_t>(stream);  // +0x18, length of Str2
    if (Str2 != nullptr) CustomFree(Str2);
    char* second = static_cast<char*>(::operator new[](static_cast<std::size_t>(Str2Size) + 1, kPydataBufferHint));
    Str2 = second;  // +0x1c
    StreamReader::readStringEx(stream, second, Str2Size);
    second[Str2Size] = '\0';
    OID1 = StreamReader::readAs<std::int32_t>(stream);  // +0x20
    OID2 = StreamReader::readAs<std::int32_t>(stream);  // +0x24
    Value = StreamReader::readAs<std::int32_t>(stream);  // +0x28
}

// 0x504a94 _ZN7Structs7v2Quest4readEP11IStreamBase
void v2Quest::read(IStreamBase* stream) {
    Name = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Description = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    PostDescription = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    StaticObjective = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    // Table 1: v2ConditionStub elements (listing stride 16).
    PreReqsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x14
    pydata::DeleteElementTable<v2ConditionStub>(PreReqs);
    PreReqs = pydata::NewAndReadElementTable<v2ConditionStub>(ListingStride::v2ConditionStub, PreReqsSize, stream);
    // Table 2: v2QuestObjectiveStub elements (listing stride 44).
    ObjectivesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x1c
    pydata::DeleteElementTable<v2QuestObjectiveStub>(Objectives);
    Objectives = pydata::NewAndReadElementTable<v2QuestObjectiveStub>(ListingStride::v2QuestObjectiveStub, ObjectivesSize, stream);
    // Table 3: v2QuestRewardStub elements (listing stride 16).
    RewardsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x24
    pydata::DeleteElementTable<v2QuestRewardStub>(Rewards);
    Rewards = pydata::NewAndReadElementTable<v2QuestRewardStub>(ListingStride::v2QuestRewardStub, RewardsSize, stream);
    // Table 4: v2QuestRewardStub elements (listing stride 16).
    RewardsHardSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x2c
    pydata::DeleteElementTable<v2QuestRewardStub>(RewardsHard);
    RewardsHard = pydata::NewAndReadElementTable<v2QuestRewardStub>(ListingStride::v2QuestRewardStub, RewardsHardSize, stream);
    // Table 5: v2QuestRewardStub elements (listing stride 16).
    RewardsVeryHardSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x34
    pydata::DeleteElementTable<v2QuestRewardStub>(RewardsVeryHard);
    RewardsVeryHard = pydata::NewAndReadElementTable<v2QuestRewardStub>(ListingStride::v2QuestRewardStub, RewardsVeryHardSize, stream);
    // Two embedded objective stubs, then the scripts block.
    AcceptType.v2QuestObjectiveStub::read(stream);  // +0x3c
    EndType.v2QuestObjectiveStub::read(stream);  // +0x68
    TargetLevel = StreamReader::readAs<std::int32_t>(stream);  // +0x94
    Repeatable = StreamReader::readAs<bool>(stream);  // +0x98, one byte
    State = StreamReader::readAs<std::int32_t>(stream);  // +0x9c
    Scripts.v2QuestScripts::read(stream);  // +0xa0
    Priority = StreamReader::readAs<std::int32_t>(stream);  // +0x114
    Act = StreamReader::readAs<std::int32_t>(stream);  // +0x118
}

// 0x5053fc _ZN7Structs13v2QuestReward4readEP11IStreamBase
void v2QuestReward::read(IStreamBase* stream) {
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x4
}

// 0x50589c _ZN7Structs17v2QuestRewardStub4readEP11IStreamBase
void v2QuestRewardStub::read(IStreamBase* stream) {
    v2QuestReward::read(stream);  // base read first (+0x4)
    Param1 = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Param2 = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x505b28 _ZN7Structs11v2Condition4readEP11IStreamBase
void v2Condition::read(IStreamBase* stream) {
    Op = StreamReader::readAs<std::int32_t>(stream);  // +0x4
}

// 0x50600c _ZN7Structs15v2ConditionStub4readEP11IStreamBase
void v2ConditionStub::read(IStreamBase* stream) {
    v2Condition::read(stream);  // base read first (+0x4)
    Op1 = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Op2 = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x50637c _ZN7Structs5Faery4readEP11IStreamBase
void Faery::read(IStreamBase* stream) {
    Description = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Elemental = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    ModelFile = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Name = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    SpellScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x14, length of SpellScript
    if (SpellScript != nullptr) CustomFree(SpellScript);
    char* text = static_cast<char*>(::operator new[](static_cast<std::size_t>(SpellScriptSize) + 1, kPydataBufferHint));
    SpellScript = text;  // +0x18
    StreamReader::readStringEx(stream, text, SpellScriptSize);
    text[SpellScriptSize] = '\0';
    SpellType = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x20
}

// 0x506f3c _ZN7Structs7AIProps4readEP11IStreamBase
void AIProps::read(IStreamBase* stream) {
    AttackDelay = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    CombatBeat = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    CombatMusic = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    DelayedLoad = StreamReader::readAs<bool>(stream);  // +0x10, one byte
    Flags = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    StreamReader::readAs<float>(stream, &InteractRadius);  // +0x18
    StreamReader::readAs<float>(stream, &LeashDistance);  // +0x1c
    StreamReader::readAs<float>(stream, &MeleeRadius);  // +0x20
    OnAggroSFX = StreamReader::readAs<std::int32_t>(stream);  // +0x24
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x28, length of Script
    if (Script != nullptr) CustomFree(Script);
    char* text = static_cast<char*>(::operator new[](static_cast<std::size_t>(ScriptSize) + 1, kPydataBufferHint));
    Script = text;  // +0x2c
    StreamReader::readStringEx(stream, text, ScriptSize);
    text[ScriptSize] = '\0';
    SelfFX = StreamReader::readAs<std::int32_t>(stream);  // +0x30
    Trophy = StreamReader::readAs<std::int32_t>(stream);  // +0x34
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x38
    StreamReader::readAs<float>(stream, &ViewRadius);  // +0x3c
    StreamReader::readAs<float>(stream, &ViewRadiusNoAggro);  // +0x40
}

}  // namespace Structs
