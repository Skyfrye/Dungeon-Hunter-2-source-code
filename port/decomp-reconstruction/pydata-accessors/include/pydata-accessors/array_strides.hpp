#pragma once

// The 32-bit element stride of every Arrays::X table, from the Hex-Rays bodies of its read and finalize
// (`*result = N; operator new[](N * count + 8, 1)` in read, `v += N` in finalize; the two always agree).
// These are the sizes of the ORIGINAL in-memory elements on ARM32. They are not host strides: on a 64-bit host
// sizeof(Structs::X) is larger wherever a record has a vptr and pointers (Projectile 80 against 72,
// DestructibleContainer 80 against 68). The port stores them in the table's stride word only (see
// element_table.hpp) and indexes elements through typed pointers; nothing here is ever used as `members + N * i`.
// The Python checker check_array_strides.py compares this file with the Hex-Rays export.
#include <cstdint>

namespace Arrays {
namespace ListingStride {
constexpr std::uint32_t AIFactionTable = 12;             // Structs::AIFactions; read 0x4b3a38, finalize 0x4a9fb8
constexpr std::uint32_t AITable = 68;                    // Structs::AIProps; read 0x4b3b84, finalize 0x4aa138
constexpr std::uint32_t AnimatedEffectTable = 24;        // Structs::AnimFXTpl; read 0x4bc504, finalize 0x4a8944
constexpr std::uint32_t AnimDict = 12;                   // Structs::ColladaFile; read 0x4b85a4, finalize 0x4a4024
constexpr std::uint32_t AnimTable = 20;                  // Structs::AnimTpl; read 0x4b38f0, finalize 0x4a9e38
constexpr std::uint32_t CamAnimSetTable = 28;            // Structs::CamAnimSet; read 0x4b37a4, finalize 0x4a9cb8
constexpr std::uint32_t CharacterTable = 900;            // Structs::CharacterProperties; read 0x4b4340, finalize 0x4a9838
constexpr std::uint32_t CharAnimTable = 160;             // Structs::CharAnim; read 0x4b45d0, finalize 0x4a9b38
constexpr std::uint32_t Charater_Templates = 12;         // Structs::CharTemplate; read 0x4b3f5c, finalize 0x4a93b8
constexpr std::uint32_t CharEffectTable = 24;            // Structs::CharEffect; read 0x4bc3c0, finalize 0x4a87c4
constexpr std::uint32_t CharSoundsTable = 40;            // Structs::CharSounds; read 0x4b96bc, finalize 0x4a5380
constexpr std::uint32_t ClassTable = 12;                 // Structs::ClassFuncList; read 0x4b4484, finalize 0x4a99b8
constexpr std::uint32_t DesignSettingsTable = 176;       // Structs::DesignSettings; read 0x4b3cd0, finalize 0x4a90b8
constexpr std::uint32_t DestructibleContainers = 68;     // Structs::DestructibleContainer; read 0x4bbd50, finalize 0x4a8050
constexpr std::uint32_t DialogActors = 20;               // Structs::DialogActor; read 0x4bc798, finalize 0x4a8c44
constexpr std::uint32_t Dialogs = 12;                    // Structs::DialogStepList; read 0x4bc64c, finalize 0x4a8ac4
constexpr std::uint32_t Doors = 24;                      // Structs::Door; read 0x4bbc04, finalize 0x4a7ed0
constexpr std::uint32_t DropTilePriorityTable = 12;      // Structs::TileOffsetList; read 0x4ba4fc, finalize 0x4a63f4
constexpr std::uint32_t EffectDict = 12;                 // Structs::ColladaFile; read 0x4b8458, finalize 0x4a3ea4
constexpr std::uint32_t ExplosiveTraps = 24;             // Structs::ExplosiveTrap; read 0x4bbabc, finalize 0x4a7d50
constexpr std::uint32_t FaeryListTable = 12;             // Structs::FaeryList; read 0x4bc12c, finalize 0x4a84d0
constexpr std::uint32_t FaeryTable = 36;                 // Structs::Faery; read 0x4bbfe0, finalize 0x4a8350
constexpr std::uint32_t FastTravelList = 28;             // Structs::FastTravelDestination; read 0x4ba8e4, finalize 0x4a6874
constexpr std::uint32_t FontPalette = 12;                // Structs::FontColorDef; read 0x4bbe9c, finalize 0x4a81d0
constexpr std::uint32_t FootstepEffectTable = 32;        // Structs::FootstepEffect; read 0x4bc278, finalize 0x4a8650
constexpr std::uint32_t GameDifficulties = 24;           // Structs::GameDifficulty; read 0x4af5e8, finalize 0x4a8f38
constexpr std::uint32_t GameObjectDamager = 24;          // Structs::GameObjectDamage; read 0x4bb978, finalize 0x4a7bd0
constexpr std::uint32_t GameObjectDict = 12;             // Structs::ColladaFile; read 0x4b5544, finalize 0x4a3ba4
constexpr std::uint32_t GameOptionTable = 32;            // Structs::GameOption; read 0x4bc8e0, finalize 0x4a8dc4
constexpr std::uint32_t HelpPages = 12;                  // Structs::HelpPage; read 0x4baf58, finalize 0x4a6ff4
constexpr std::uint32_t HintPages = 12;                  // Structs::HintPage; read 0x4bae14, finalize 0x4a6e74
constexpr std::uint32_t InventoryTable = 8;              // Structs::Inventory; read 0x4ba3c8, finalize 0x4a6280
constexpr std::uint32_t ItemAudioVisualTable = 20;       // Structs::ItemAudioVisual; read 0x4ba648, finalize 0x4a6574
constexpr std::uint32_t ItemBonusAttrMonopoly = 12;      // Structs::ItemBonusAttrList; read 0x4baa30, finalize 0x4a69f4
constexpr std::uint32_t ItemList = 12;                   // Structs::ItemListEntryList; read 0x4ba27c, finalize 0x4a6100
constexpr std::uint32_t ItemPowerList = 12;              // Structs::ItemPowerEntryList; read 0x4bacc8, finalize 0x4a6cf4
constexpr std::uint32_t ItemPowerTable = 40;             // Structs::ItemPowerRef; read 0x4bab7c, finalize 0x4a6b74
constexpr std::uint32_t ItemTable = 164;                 // Structs::Item; read 0x4ba12c, finalize 0x4a5f80
constexpr std::uint32_t ItemTypeList = 12;               // Structs::ItemTypeListList; read 0x4b9fe0, finalize 0x4a5e00
constexpr std::uint32_t LevelList = 72;                  // Structs::LevelDeclaration; read 0x4ba794, finalize 0x4a66f4
constexpr std::uint32_t LiftableObjects = 8;             // Structs::LiftableObject; read 0x4bb844, finalize 0x4a7a5c
constexpr std::uint32_t Listeners = 28;                  // Structs::Listener; read 0x4b9578, finalize 0x4a5200
constexpr std::uint32_t LootTable = 36;                  // Structs::Loot; read 0x4b9e8c, finalize 0x4a5c80
constexpr std::uint32_t MerchantTable = 20;              // Structs::Merchant; read 0x4b9d40, finalize 0x4a5b00
constexpr std::uint32_t ModelDict = 12;                  // Structs::ColladaFile; read 0x4b86f0, finalize 0x4a41a4
constexpr std::uint32_t NumProbArray = 12;               // Structs::NumProbList; read 0x4b9bf4, finalize 0x4a5980
constexpr std::uint32_t OpenableContainers = 40;         // Structs::OpenableContainer; read 0x4bb6f8, finalize 0x4a78dc
constexpr std::uint32_t ProjectileDict = 12;             // Structs::ColladaFile; read 0x4b830c, finalize 0x4a3d24
constexpr std::uint32_t ProjectileTable = 72;            // Structs::Projectile; read 0x4b9ab0, finalize 0x4a5800
constexpr std::uint32_t ProjectileTraps = 40;            // Structs::ProjectileTrap; read 0x4bb5ac, finalize 0x4a775c
constexpr std::uint32_t RectTable = 20;                  // Structs::Rect; read 0x4b3e18, finalize 0x4a9238
constexpr std::uint32_t SkillListTable = 12;             // Structs::SkillList; read 0x4b9964, finalize 0x4a5680
constexpr std::uint32_t SkillTable = 76;                 // Structs::Skill; read 0x4b9810, finalize 0x4a5500
constexpr std::uint32_t SoundBankPlayback = 12;          // Structs::SoundBank; read 0x4b9434, finalize 0x4a5080
constexpr std::uint32_t SoundGroupsRouting = 16;         // Structs::SoundGroup; read 0x4b92f8, finalize 0x4a4f0c
constexpr std::uint32_t Sounds = 12;                     // Structs::SoundAutoGen; read 0x4b5690, finalize 0x4a38a4
constexpr std::uint32_t Sounds_bak = 44;                 // Structs::Sound; read 0x4b91ac, finalize 0x4a4d8c
constexpr std::uint32_t SpawnGroups = 20;                // Structs::SpawnGroup; read 0x4b9060, finalize 0x4a4c0c
constexpr std::uint32_t StatAutoAssignSchemeTable = 12;  // Structs::StatAutoAssignTargetList; read 0x4b41f4, finalize 0x4a96b8
constexpr std::uint32_t StatListTable = 12;              // Structs::StatListList; read 0x4b40a8, finalize 0x4a9538
constexpr std::uint32_t StrID_Languages = 12;            // Structs::LangSheetList; read 0x4b53f8, finalize 0x4a3a24
constexpr std::uint32_t TimerTraps = 32;                 // Structs::TimerTrap; read 0x4bb46c, finalize 0x4a75e8
constexpr std::uint32_t TriggerObjects = 24;             // Structs::TriggerObject; read 0x4bb320, finalize 0x4a7468
constexpr std::uint32_t TriggerPlates = 32;              // Structs::TriggerPlate; read 0x4bb1e8, finalize 0x4a72f4
constexpr std::uint32_t TriggerTraps = 28;               // Structs::TriggerTrap; read 0x4bb09c, finalize 0x4a7174
constexpr std::uint32_t TrophyTable = 32;                // Structs::Trophy; read 0x4b8f28, finalize 0x4a4a98
constexpr std::uint32_t v2Conditions = 16;               // Structs::v2CondAnd; read 0x4b8dec, finalize 0x4a4924
constexpr std::uint32_t v2Events = 24;                   // Structs::v2Event; read 0x4b8c9c, finalize 0x4a47a4
constexpr std::uint32_t v2Quests = 284;                  // Structs::v2Quest; read 0x4b8acc, finalize 0x4a4624
constexpr std::uint32_t WorldMap = 20;                   // Structs::WldMapLocation; read 0x4b8980, finalize 0x4a44a4
constexpr std::uint32_t WorldMapLockers = 12;            // Structs::WorldMapLocker; read 0x4b883c, finalize 0x4a4324

}  // namespace ListingStride
}  // namespace Arrays
