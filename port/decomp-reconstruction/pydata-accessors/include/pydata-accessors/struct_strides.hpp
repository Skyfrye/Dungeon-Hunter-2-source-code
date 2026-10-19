#pragma once

// The 32-bit element stride of every element table owned by a Structs record, from the Hex-Rays bodies of the
// owner's read (`*result = N; operator new[](N * count + 8, 1)`) and of its finalize and destructors (`v += N` in
// the destroy loop). Like Arrays::ListingStride (array_strides.hpp) these are sizes of the ORIGINAL in-memory
// elements on ARM32, not host strides: the port stores them in the stride word of the block and addresses the
// host elements through typed pointers (element_table.hpp). Each constant is named by its element class; the
// comment gives the owner, the 32-bit offset of the table pointer and the Hex-Rays addresses that show the stride.
#include <cstdint>

namespace Structs {
namespace ListingStride {

constexpr std::uint32_t LangSheet = 20;               // LangSheetList +0x8; read 0x4dc2ac, finalize 0x4ceb00
constexpr std::uint32_t v2QuestObjectiveStub = 44;    // v2Event +0x14 (read 0x4ebc38) and v2Quest +0x20 (read 0x504a94)
constexpr std::uint32_t v2ConditionStub = 16;         // v2Quest +0x18 (0x504a94) and v2CondAnd +0x8 (read 0x505970)
constexpr std::uint32_t v2QuestRewardStub = 16;       // v2Quest +0x28, +0x30, +0x38 (read 0x504a94)
constexpr std::uint32_t SpawnInfo = 16;               // SpawnGroup +0x10; read 0x4eb244, finalize 0x4d0b2c
constexpr std::uint32_t MerchandiseListEntry = 12;    // Merchant +0x10; read 0x4ff604, finalize 0x4d3c40
constexpr std::uint32_t TileOffset = 8;               // TileOffsetList +0x8; read 0x4dc4e0, finalize 0x4d3dc4
constexpr std::uint32_t NumProb = 8;                  // NumProbList +0x8; read 0x4dc638, finalize 0x4d3f3c
constexpr std::uint32_t ItemListEntry = 12;           // ItemListEntryList +0x8; read 0x4dc790, finalize 0x4d40b4
constexpr std::uint32_t LootEntry = 36;               // Loot +0x10 and +0x18; read 0x4fe794, finalize 0x4d4238
constexpr std::uint32_t AnimFX = 48;                  // AnimFXTpl +0x10; read 0x4ed73c, finalize 0x4da580
constexpr std::uint32_t DialogStep = 20;              // DialogStepList +0x8; read 0x4dca68, finalize 0x4da7c8
constexpr std::uint32_t DialogCondition = 16;         // ConditionalDialog +0x8; read 0x4dcbd4, finalize 0x4da94c
constexpr std::uint32_t CharInfoName = 8;             // CharTemplate +0x8; read 0x4dcd38, finalize 0x4dad10
constexpr std::uint32_t StatAutoAssignTarget = 16;    // StatAutoAssignTargetList +0x8; read 0x4dce90, finalize 0x4daf4c
constexpr std::uint32_t ClassFunc = 24;               // ClassFuncList +0x8; read 0x4dcfec, finalize 0x4db0c4
constexpr std::uint32_t AnimStep = 56;                // AnimTpl +0xc; read 0x4ef2f0, finalize 0x4db40c
constexpr std::uint32_t AIFaction = 12;               // AIFactions +0x8; read 0x4dd158, finalize 0x4db654
constexpr std::uint32_t ItemPowerEntry = 12;          // ItemPowerEntryList +0x8; read 0x4dc8fc, finalize 0x4d9a54
constexpr std::uint32_t AttrBonusEntry = 16;          // ItemPowerRef +0x10; read 0x4ecdc8, finalize 0x4d573c

}  // namespace ListingStride
}  // namespace Structs
