// PyDataArrays and PyDataConstants, slice pydata12 (wave 7). Declarations: include/pydata-accessors/w7_pydata12.hpp.
// Each function lists its original address and mangled symbol (queue.csv). Status per row is in ledger_pydata12.csv.

#include "pydata-accessors/w7_pydata12.hpp"

#include "pydata-accessors/arrays.hpp"          // Arrays::X::read/finalize/skipNames/finalizeNames
#include "pydata-accessors/member_names.hpp"    // Arrays::/Structs::GetMemberIDByString<T>
#include "pydata-accessors/structs_records.hpp"

#include <cstdio>
#include <cstdlib>
#include <string>

#include "core-platform/filesystem_base.hpp"
// The original initializer's 636 field names in 71 Structs tables (port/pydata-names, generated from the original ARM32 trace). They are static data
// in libDungeonHunter2.so (Structs::GetMemberIDByString<T> walks Structs::T::m_dataNames: 24-byte entries, name pointer at +20), so a Lua
// GetPyStruct("CharacterProperties", "SnS_Level") answers from the first call on. Without this table every struct lookup answered -1 and the
// skill scripts' SetProp/GetProp calls (skill level, mana cost, damage) did nothing.
#include "../../../pydata-names/struct-names.h"
#include <cstring>

#include "dh2/Application.hpp"
#include "glitch-core-io/os/device.hpp"

namespace {

// Load() cases 0..69, in order. Case k opens "pydata/<name>", calls reloadData(stream, "<name>") when the
// open succeeds, and releases the stream. Case 70 returns 1 without advancing.
const char* const kLoadFiles[] = {
    "ai_pyarray.bin",  // case 0
    "ai_factions_pyarray.bin",  // case 1
    "animations_pyarray.bin",  // case 2
    "character_classes_pyarray.bin",  // case 3
    "character_properties_pyarray.bin",  // case 4
    "character_templates_pyarray.bin",  // case 5
    "common_pyarray.bin",  // case 6
    "design_pyarray.bin",  // case 7
    "dialogs_pyarray.bin",  // case 8
    "effects_pyarray.bin",  // case 9
    "faeries_pyarray.bin",  // case 10
    "fonts_pyarray.bin",  // case 11
    "game_objects_pyarray.bin",  // case 12
    "help_pages_pyarray.bin",  // case 13
    "item_powers_pyarray.bin",  // case 14
    "item_powers_monopoly_pyarray.bin",  // case 15
    "levels_pyarray.bin",  // case 16
    "loot_audiovisual_pyarray.bin",  // case 17
    "loot_table_pyarray.bin",  // case 18
    "projectiles_pyarray.bin",  // case 19
    "skills_pyarray.bin",  // case 20
    "sounds_pyarray.bin",  // case 21
    "spawn_groups_pyarray.bin",  // case 22
    "trophies_pyarray.bin",  // case 23
    "v2conditions_pyarray.bin",  // case 24
    "v2eventmanager_pyarray.bin",  // case 25
    "v2quests_pyarray.bin",  // case 26
    "worldmap_pyarray.bin",  // case 27
    "character_models_dictionary_pyarray.bin",  // case 28
    "animations_dictionary_pyarray.bin",  // case 29
    "effects_dictionary_pyarray.bin",  // case 30
    "projectiles_dictionary_pyarray.bin",  // case 31
    "game_objects_dictionary_pyarray.bin",  // case 32
    "common_text_pyarray.bin",  // case 33
    "sdd_dungeon_hunter_2_iphone_pyarray.bin",  // case 34
    "ai_pyarraynames.bin",  // case 35
    "ai_factions_pyarraynames.bin",  // case 36
    "animations_pyarraynames.bin",  // case 37
    "character_classes_pyarraynames.bin",  // case 38
    "character_properties_pyarraynames.bin",  // case 39
    "character_templates_pyarraynames.bin",  // case 40
    "common_pyarraynames.bin",  // case 41
    "design_pyarraynames.bin",  // case 42
    "dialogs_pyarraynames.bin",  // case 43
    "effects_pyarraynames.bin",  // case 44
    "faeries_pyarraynames.bin",  // case 45
    "fonts_pyarraynames.bin",  // case 46
    "game_objects_pyarraynames.bin",  // case 47
    "help_pages_pyarraynames.bin",  // case 48
    "item_powers_pyarraynames.bin",  // case 49
    "item_powers_monopoly_pyarraynames.bin",  // case 50
    "levels_pyarraynames.bin",  // case 51
    "loot_audiovisual_pyarraynames.bin",  // case 52
    "loot_table_pyarraynames.bin",  // case 53
    "projectiles_pyarraynames.bin",  // case 54
    "skills_pyarraynames.bin",  // case 55
    "sounds_pyarraynames.bin",  // case 56
    "spawn_groups_pyarraynames.bin",  // case 57
    "trophies_pyarraynames.bin",  // case 58
    "v2conditions_pyarraynames.bin",  // case 59
    "v2eventmanager_pyarraynames.bin",  // case 60
    "v2quests_pyarraynames.bin",  // case 61
    "worldmap_pyarraynames.bin",  // case 62
    "character_models_dictionary_pyarraynames.bin",  // case 63
    "animations_dictionary_pyarraynames.bin",  // case 64
    "effects_dictionary_pyarraynames.bin",  // case 65
    "projectiles_dictionary_pyarraynames.bin",  // case 66
    "game_objects_dictionary_pyarraynames.bin",  // case 67
    "common_text_pyarraynames.bin",  // case 68
    "sdd_dungeon_hunter_2_iphone_pyarraynames.bin",  // case 69
};
constexpr int kLoadDoneState = 70;
static_assert(sizeof(kLoadFiles) / sizeof(kLoadFiles[0]) == kLoadDoneState, "Load has 70 file states");

// Capacity argument of both StreamReader::readString calls in PyDataConstants::reloadData (0x4c540c).
// Decoded from the listing: MOV R2, #0x100 at 0x4c5524 (class name) and 0x4c55b8 (entry name), with R3 = 0,
// so the 64-bit length argument is 256:0. IDA prints that immediate as "elf_hash_bucket+0x24", which is
// 0xdc + 0x24 = 0x100. The two buffers it caps are the 256-byte arrays at sp+0x12C (the class name) and
// sp+0x2C (the entry name). The old file-local ReadPrefixedString stand-in is gone: the real
// StreamReader::readString (0x317734) is declared by dh2/StreamReader.hpp (line 38), which
// deps/stream_reader.hpp includes, and is called directly.
constexpr std::uint32_t kConstantsStringCap = 256;

}  // namespace

namespace {
// Fills a Structs name table from the built-in table registered under `registered` ({count, {length, bytes}...}, little endian).
void LoadBuiltinStructNames(const char* registered, pydata::NameTable& table) {
    for (const dh2_builtin_name_table& t : dh2_struct_name_tables) {
        if (std::strcmp(t.name, registered) != 0) continue;
        const unsigned char* p = t.bytes;
        auto u32 = [&p]() { std::uint32_t v = p[0] | (p[1] << 8) | (p[2] << 16) | (static_cast<std::uint32_t>(p[3]) << 24); p += 4; return v; };
        const std::uint32_t count = u32();
        char** names = static_cast<char**>(std::malloc(count * sizeof(char*)));
        for (std::uint32_t i = 0; i < count; ++i) {
            const std::uint32_t len = u32();
            names[i] = static_cast<char*>(std::malloc(len + 1));
            std::memcpy(names[i], p, len);
            names[i][len] = 0;
            p += len;
        }
        table.names = names;  // never finalized: the original's table is static data
        table.size = static_cast<int>(count);
        return;
    }
}
}  // namespace

// ---------------------------------------------------------------------------------------------
// PyDataArrays
// ---------------------------------------------------------------------------------------------

// 0x4c0ddc _ZN12PyDataArraysC2EP19DataReloaderManager (0x4be550 _ZN12PyDataArraysC1EP19DataReloaderManager is the
// same body)
// Reconstructed. The reloader is stored (the file and registry maps are the members' own empty trees), then the
// listing's 284 calls follow in order: for each pydata file the (read, finalize) pairs are appended to that file's
// entry (the data file, then its names file with skipNames / finalizeNames), and each class name is registered
// with its Arrays::GetMemberIDByString<T> / Structs::GetMemberIDByString<T> instance. The 142 file pairs and 142
// class registrations are transcribed from the Hex-Rays listing without change.
PyDataArrays::PyDataArrays(DataReloaderManager* reloader) : m_reloader(reloader) {
    addFuncsForFile("ai_pyarray.bin", &Arrays::AITable::read, &Arrays::AITable::finalize);
    addFuncsForFile("ai_pyarraynames.bin", &Arrays::AITable::skipNames, &Arrays::AITable::finalizeNames);
    registerClassByName("AIProps", &Structs::GetMemberIDByString<Structs::AIProps>);
    LoadBuiltinStructNames("AIProps", Structs::AIProps::m_dataNames);
    registerClassByName("AITable", &Arrays::GetMemberIDByString<Arrays::AITable>);
    addFuncsForFile("ai_factions_pyarray.bin", &Arrays::AIFactionTable::read, &Arrays::AIFactionTable::finalize);
    addFuncsForFile("ai_factions_pyarraynames.bin", &Arrays::AIFactionTable::skipNames, &Arrays::AIFactionTable::finalizeNames);
    registerClassByName("AIFactions", &Structs::GetMemberIDByString<Structs::AIFactions>);
    LoadBuiltinStructNames("AIFactions", Structs::AIFactions::m_dataNames);
    registerClassByName("AIFactionTable", &Arrays::GetMemberIDByString<Arrays::AIFactionTable>);
    addFuncsForFile("animations_pyarray.bin", &Arrays::AnimTable::read, &Arrays::AnimTable::finalize);
    addFuncsForFile("animations_pyarraynames.bin", &Arrays::AnimTable::skipNames, &Arrays::AnimTable::finalizeNames);
    registerClassByName("AnimTpl", &Structs::GetMemberIDByString<Structs::AnimTpl>);
    LoadBuiltinStructNames("AnimTpl", Structs::AnimTpl::m_dataNames);
    registerClassByName("AnimTable", &Arrays::GetMemberIDByString<Arrays::AnimTable>);
    addFuncsForFile("animations_pyarray.bin", &Arrays::CamAnimSetTable::read, &Arrays::CamAnimSetTable::finalize);
    addFuncsForFile("animations_pyarraynames.bin", &Arrays::CamAnimSetTable::readNames, &Arrays::CamAnimSetTable::finalizeNames);
    registerClassByName("CamAnimSet", &Structs::GetMemberIDByString<Structs::CamAnimSet>);
    LoadBuiltinStructNames("CamAnimSet", Structs::CamAnimSet::m_dataNames);
    registerClassByName("CamAnimSetTable", &Arrays::GetMemberIDByString<Arrays::CamAnimSetTable>);
    addFuncsForFile("animations_pyarray.bin", &Arrays::CharAnimTable::read, &Arrays::CharAnimTable::finalize);
    addFuncsForFile("animations_pyarraynames.bin", &Arrays::CharAnimTable::readNames, &Arrays::CharAnimTable::finalizeNames);
    registerClassByName("CharAnim", &Structs::GetMemberIDByString<Structs::CharAnim>);
    LoadBuiltinStructNames("CharAnim", Structs::CharAnim::m_dataNames);
    registerClassByName("CharAnimTable", &Arrays::GetMemberIDByString<Arrays::CharAnimTable>);
    addFuncsForFile("character_classes_pyarray.bin", &Arrays::ClassTable::read, &Arrays::ClassTable::finalize);
    addFuncsForFile("character_classes_pyarraynames.bin", &Arrays::ClassTable::skipNames, &Arrays::ClassTable::finalizeNames);
    registerClassByName("ClassFuncList", &Structs::GetMemberIDByString<Structs::ClassFuncList>);
    LoadBuiltinStructNames("ClassFuncList", Structs::ClassFuncList::m_dataNames);
    registerClassByName("ClassTable", &Arrays::GetMemberIDByString<Arrays::ClassTable>);
    addFuncsForFile("character_properties_pyarray.bin", &Arrays::CharacterTable::read, &Arrays::CharacterTable::finalize);
    addFuncsForFile("character_properties_pyarraynames.bin", &Arrays::CharacterTable::readNames, &Arrays::CharacterTable::finalizeNames);
    registerClassByName("CharacterProperties", &Structs::GetMemberIDByString<Structs::CharacterProperties>);
    LoadBuiltinStructNames("CharacterProperties", Structs::CharacterProperties::m_dataNames);
    registerClassByName("CharacterTable", &Arrays::GetMemberIDByString<Arrays::CharacterTable>);
    addFuncsForFile("character_properties_pyarray.bin", &Arrays::StatAutoAssignSchemeTable::read, &Arrays::StatAutoAssignSchemeTable::finalize);
    addFuncsForFile("character_properties_pyarraynames.bin", &Arrays::StatAutoAssignSchemeTable::skipNames, &Arrays::StatAutoAssignSchemeTable::finalizeNames);
    registerClassByName("StatAutoAssignTargetList", &Structs::GetMemberIDByString<Structs::StatAutoAssignTargetList>);
    LoadBuiltinStructNames("StatAutoAssignTargetList", Structs::StatAutoAssignTargetList::m_dataNames);
    registerClassByName("StatAutoAssignSchemeTable", &Arrays::GetMemberIDByString<Arrays::StatAutoAssignSchemeTable>);
    addFuncsForFile("character_properties_pyarray.bin", &Arrays::StatListTable::read, &Arrays::StatListTable::finalize);
    addFuncsForFile("character_properties_pyarraynames.bin", &Arrays::StatListTable::skipNames, &Arrays::StatListTable::finalizeNames);
    registerClassByName("StatListList", &Structs::GetMemberIDByString<Structs::StatListList>);
    LoadBuiltinStructNames("StatListList", Structs::StatListList::m_dataNames);
    registerClassByName("StatListTable", &Arrays::GetMemberIDByString<Arrays::StatListTable>);
    addFuncsForFile("character_templates_pyarray.bin", &Arrays::Charater_Templates::read, &Arrays::Charater_Templates::finalize);
    addFuncsForFile("character_templates_pyarraynames.bin", &Arrays::Charater_Templates::readNames, &Arrays::Charater_Templates::finalizeNames);
    registerClassByName("CharTemplate", &Structs::GetMemberIDByString<Structs::CharTemplate>);
    LoadBuiltinStructNames("CharTemplate", Structs::CharTemplate::m_dataNames);
    registerClassByName("Charater_Templates", &Arrays::GetMemberIDByString<Arrays::Charater_Templates>);
    addFuncsForFile("common_pyarray.bin", &Arrays::RectTable::read, &Arrays::RectTable::finalize);
    addFuncsForFile("common_pyarraynames.bin", &Arrays::RectTable::skipNames, &Arrays::RectTable::finalizeNames);
    registerClassByName("Rect", &Structs::GetMemberIDByString<Structs::Rect>);
    LoadBuiltinStructNames("Rect", Structs::Rect::m_dataNames);
    registerClassByName("RectTable", &Arrays::GetMemberIDByString<Arrays::RectTable>);
    addFuncsForFile("design_pyarray.bin", &Arrays::DesignSettingsTable::read, &Arrays::DesignSettingsTable::finalize);
    addFuncsForFile("design_pyarraynames.bin", &Arrays::DesignSettingsTable::skipNames, &Arrays::DesignSettingsTable::finalizeNames);
    registerClassByName("DesignSettings", &Structs::GetMemberIDByString<Structs::DesignSettings>);
    LoadBuiltinStructNames("DesignSettings", Structs::DesignSettings::m_dataNames);
    registerClassByName("DesignSettingsTable", &Arrays::GetMemberIDByString<Arrays::DesignSettingsTable>);
    addFuncsForFile("design_pyarray.bin", &Arrays::GameDifficulties::read, &Arrays::GameDifficulties::finalize);
    addFuncsForFile("design_pyarraynames.bin", &Arrays::GameDifficulties::readNames, &Arrays::GameDifficulties::finalizeNames);
    registerClassByName("GameDifficulty", &Structs::GetMemberIDByString<Structs::GameDifficulty>);
    LoadBuiltinStructNames("GameDifficulty", Structs::GameDifficulty::m_dataNames);
    registerClassByName("GameDifficulties", &Arrays::GetMemberIDByString<Arrays::GameDifficulties>);
    addFuncsForFile("design_pyarray.bin", &Arrays::GameOptionTable::read, &Arrays::GameOptionTable::finalize);
    addFuncsForFile("design_pyarraynames.bin", &Arrays::GameOptionTable::readNames, &Arrays::GameOptionTable::finalizeNames);
    registerClassByName("GameOption", &Structs::GetMemberIDByString<Structs::GameOption>);
    LoadBuiltinStructNames("GameOption", Structs::GameOption::m_dataNames);
    registerClassByName("GameOptionTable", &Arrays::GetMemberIDByString<Arrays::GameOptionTable>);
    addFuncsForFile("dialogs_pyarray.bin", &Arrays::DialogActors::read, &Arrays::DialogActors::finalize);
    addFuncsForFile("dialogs_pyarraynames.bin", &Arrays::DialogActors::skipNames, &Arrays::DialogActors::finalizeNames);
    registerClassByName("DialogActor", &Structs::GetMemberIDByString<Structs::DialogActor>);
    LoadBuiltinStructNames("DialogActor", Structs::DialogActor::m_dataNames);
    registerClassByName("DialogActors", &Arrays::GetMemberIDByString<Arrays::DialogActors>);
    addFuncsForFile("dialogs_pyarray.bin", &Arrays::Dialogs::read, &Arrays::Dialogs::finalize);
    addFuncsForFile("dialogs_pyarraynames.bin", &Arrays::Dialogs::skipNames, &Arrays::Dialogs::finalizeNames);
    registerClassByName("DialogStepList", &Structs::GetMemberIDByString<Structs::DialogStepList>);
    LoadBuiltinStructNames("DialogStepList", Structs::DialogStepList::m_dataNames);
    registerClassByName("Dialogs", &Arrays::GetMemberIDByString<Arrays::Dialogs>);
    addFuncsForFile("effects_pyarray.bin", &Arrays::AnimatedEffectTable::read, &Arrays::AnimatedEffectTable::finalize);
    addFuncsForFile("effects_pyarraynames.bin", &Arrays::AnimatedEffectTable::readNames, &Arrays::AnimatedEffectTable::finalizeNames);
    registerClassByName("AnimFXTpl", &Structs::GetMemberIDByString<Structs::AnimFXTpl>);
    LoadBuiltinStructNames("AnimFXTpl", Structs::AnimFXTpl::m_dataNames);
    registerClassByName("AnimatedEffectTable", &Arrays::GetMemberIDByString<Arrays::AnimatedEffectTable>);
    addFuncsForFile("effects_pyarray.bin", &Arrays::CharEffectTable::read, &Arrays::CharEffectTable::finalize);
    addFuncsForFile("effects_pyarraynames.bin", &Arrays::CharEffectTable::skipNames, &Arrays::CharEffectTable::finalizeNames);
    registerClassByName("CharEffect", &Structs::GetMemberIDByString<Structs::CharEffect>);
    LoadBuiltinStructNames("CharEffect", Structs::CharEffect::m_dataNames);
    registerClassByName("CharEffectTable", &Arrays::GetMemberIDByString<Arrays::CharEffectTable>);
    addFuncsForFile("effects_pyarray.bin", &Arrays::FootstepEffectTable::read, &Arrays::FootstepEffectTable::finalize);
    addFuncsForFile("effects_pyarraynames.bin", &Arrays::FootstepEffectTable::readNames, &Arrays::FootstepEffectTable::finalizeNames);
    registerClassByName("FootstepEffect", &Structs::GetMemberIDByString<Structs::FootstepEffect>);
    LoadBuiltinStructNames("FootstepEffect", Structs::FootstepEffect::m_dataNames);
    registerClassByName("FootstepEffectTable", &Arrays::GetMemberIDByString<Arrays::FootstepEffectTable>);
    addFuncsForFile("faeries_pyarray.bin", &Arrays::FaeryListTable::read, &Arrays::FaeryListTable::finalize);
    addFuncsForFile("faeries_pyarraynames.bin", &Arrays::FaeryListTable::skipNames, &Arrays::FaeryListTable::finalizeNames);
    registerClassByName("FaeryList", &Structs::GetMemberIDByString<Structs::FaeryList>);
    LoadBuiltinStructNames("FaeryList", Structs::FaeryList::m_dataNames);
    registerClassByName("FaeryListTable", &Arrays::GetMemberIDByString<Arrays::FaeryListTable>);
    addFuncsForFile("faeries_pyarray.bin", &Arrays::FaeryTable::read, &Arrays::FaeryTable::finalize);
    addFuncsForFile("faeries_pyarraynames.bin", &Arrays::FaeryTable::skipNames, &Arrays::FaeryTable::finalizeNames);
    registerClassByName("Faery", &Structs::GetMemberIDByString<Structs::Faery>);
    LoadBuiltinStructNames("Faery", Structs::Faery::m_dataNames);
    registerClassByName("FaeryTable", &Arrays::GetMemberIDByString<Arrays::FaeryTable>);
    addFuncsForFile("fonts_pyarray.bin", &Arrays::FontPalette::read, &Arrays::FontPalette::finalize);
    addFuncsForFile("fonts_pyarraynames.bin", &Arrays::FontPalette::skipNames, &Arrays::FontPalette::finalizeNames);
    registerClassByName("FontColorDef", &Structs::GetMemberIDByString<Structs::FontColorDef>);
    LoadBuiltinStructNames("FontColorDef", Structs::FontColorDef::m_dataNames);
    registerClassByName("FontPalette", &Arrays::GetMemberIDByString<Arrays::FontPalette>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::DestructibleContainers::read, &Arrays::DestructibleContainers::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::DestructibleContainers::readNames, &Arrays::DestructibleContainers::finalizeNames);
    registerClassByName("DestructibleContainer", &Structs::GetMemberIDByString<Structs::DestructibleContainer>);
    LoadBuiltinStructNames("DestructibleContainer", Structs::DestructibleContainer::m_dataNames);
    registerClassByName("DestructibleContainers", &Arrays::GetMemberIDByString<Arrays::DestructibleContainers>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::Doors::read, &Arrays::Doors::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::Doors::readNames, &Arrays::Doors::finalizeNames);
    registerClassByName("Door", &Structs::GetMemberIDByString<Structs::Door>);
    LoadBuiltinStructNames("Door", Structs::Door::m_dataNames);
    registerClassByName("Doors", &Arrays::GetMemberIDByString<Arrays::Doors>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::ExplosiveTraps::read, &Arrays::ExplosiveTraps::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::ExplosiveTraps::readNames, &Arrays::ExplosiveTraps::finalizeNames);
    registerClassByName("ExplosiveTrap", &Structs::GetMemberIDByString<Structs::ExplosiveTrap>);
    LoadBuiltinStructNames("ExplosiveTrap", Structs::ExplosiveTrap::m_dataNames);
    registerClassByName("ExplosiveTraps", &Arrays::GetMemberIDByString<Arrays::ExplosiveTraps>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::GameObjectDamager::read, &Arrays::GameObjectDamager::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::GameObjectDamager::skipNames, &Arrays::GameObjectDamager::finalizeNames);
    registerClassByName("GameObjectDamage", &Structs::GetMemberIDByString<Structs::GameObjectDamage>);
    LoadBuiltinStructNames("GameObjectDamage", Structs::GameObjectDamage::m_dataNames);
    registerClassByName("GameObjectDamager", &Arrays::GetMemberIDByString<Arrays::GameObjectDamager>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::LiftableObjects::read, &Arrays::LiftableObjects::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::LiftableObjects::readNames, &Arrays::LiftableObjects::finalizeNames);
    registerClassByName("LiftableObject", &Structs::GetMemberIDByString<Structs::LiftableObject>);
    LoadBuiltinStructNames("LiftableObject", Structs::LiftableObject::m_dataNames);
    registerClassByName("LiftableObjects", &Arrays::GetMemberIDByString<Arrays::LiftableObjects>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::OpenableContainers::read, &Arrays::OpenableContainers::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::OpenableContainers::readNames, &Arrays::OpenableContainers::finalizeNames);
    registerClassByName("OpenableContainer", &Structs::GetMemberIDByString<Structs::OpenableContainer>);
    LoadBuiltinStructNames("OpenableContainer", Structs::OpenableContainer::m_dataNames);
    registerClassByName("OpenableContainers", &Arrays::GetMemberIDByString<Arrays::OpenableContainers>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::ProjectileTraps::read, &Arrays::ProjectileTraps::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::ProjectileTraps::readNames, &Arrays::ProjectileTraps::finalizeNames);
    registerClassByName("ProjectileTrap", &Structs::GetMemberIDByString<Structs::ProjectileTrap>);
    LoadBuiltinStructNames("ProjectileTrap", Structs::ProjectileTrap::m_dataNames);
    registerClassByName("ProjectileTraps", &Arrays::GetMemberIDByString<Arrays::ProjectileTraps>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::TimerTraps::read, &Arrays::TimerTraps::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::TimerTraps::readNames, &Arrays::TimerTraps::finalizeNames);
    registerClassByName("TimerTrap", &Structs::GetMemberIDByString<Structs::TimerTrap>);
    LoadBuiltinStructNames("TimerTrap", Structs::TimerTrap::m_dataNames);
    registerClassByName("TimerTraps", &Arrays::GetMemberIDByString<Arrays::TimerTraps>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::TriggerObjects::read, &Arrays::TriggerObjects::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::TriggerObjects::readNames, &Arrays::TriggerObjects::finalizeNames);
    registerClassByName("TriggerObject", &Structs::GetMemberIDByString<Structs::TriggerObject>);
    LoadBuiltinStructNames("TriggerObject", Structs::TriggerObject::m_dataNames);
    registerClassByName("TriggerObjects", &Arrays::GetMemberIDByString<Arrays::TriggerObjects>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::TriggerPlates::read, &Arrays::TriggerPlates::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::TriggerPlates::readNames, &Arrays::TriggerPlates::finalizeNames);
    registerClassByName("TriggerPlate", &Structs::GetMemberIDByString<Structs::TriggerPlate>);
    LoadBuiltinStructNames("TriggerPlate", Structs::TriggerPlate::m_dataNames);
    registerClassByName("TriggerPlates", &Arrays::GetMemberIDByString<Arrays::TriggerPlates>);
    addFuncsForFile("game_objects_pyarray.bin", &Arrays::TriggerTraps::read, &Arrays::TriggerTraps::finalize);
    addFuncsForFile("game_objects_pyarraynames.bin", &Arrays::TriggerTraps::readNames, &Arrays::TriggerTraps::finalizeNames);
    registerClassByName("TriggerTrap", &Structs::GetMemberIDByString<Structs::TriggerTrap>);
    LoadBuiltinStructNames("TriggerTrap", Structs::TriggerTrap::m_dataNames);
    registerClassByName("TriggerTraps", &Arrays::GetMemberIDByString<Arrays::TriggerTraps>);
    addFuncsForFile("help_pages_pyarray.bin", &Arrays::HelpPages::read, &Arrays::HelpPages::finalize);
    addFuncsForFile("help_pages_pyarraynames.bin", &Arrays::HelpPages::skipNames, &Arrays::HelpPages::finalizeNames);
    registerClassByName("HelpPage", &Structs::GetMemberIDByString<Structs::HelpPage>);
    LoadBuiltinStructNames("HelpPage", Structs::HelpPage::m_dataNames);
    registerClassByName("HelpPages", &Arrays::GetMemberIDByString<Arrays::HelpPages>);
    addFuncsForFile("help_pages_pyarray.bin", &Arrays::HintPages::read, &Arrays::HintPages::finalize);
    addFuncsForFile("help_pages_pyarraynames.bin", &Arrays::HintPages::skipNames, &Arrays::HintPages::finalizeNames);
    registerClassByName("HintPage", &Structs::GetMemberIDByString<Structs::HintPage>);
    LoadBuiltinStructNames("HintPage", Structs::HintPage::m_dataNames);
    registerClassByName("HintPages", &Arrays::GetMemberIDByString<Arrays::HintPages>);
    addFuncsForFile("item_powers_pyarray.bin", &Arrays::ItemPowerList::read, &Arrays::ItemPowerList::finalize);
    addFuncsForFile("item_powers_pyarraynames.bin", &Arrays::ItemPowerList::skipNames, &Arrays::ItemPowerList::finalizeNames);
    registerClassByName("ItemPowerEntryList", &Structs::GetMemberIDByString<Structs::ItemPowerEntryList>);
    LoadBuiltinStructNames("ItemPowerEntryList", Structs::ItemPowerEntryList::m_dataNames);
    registerClassByName("ItemPowerList", &Arrays::GetMemberIDByString<Arrays::ItemPowerList>);
    addFuncsForFile("item_powers_pyarray.bin", &Arrays::ItemPowerTable::read, &Arrays::ItemPowerTable::finalize);
    addFuncsForFile("item_powers_pyarraynames.bin", &Arrays::ItemPowerTable::readNames, &Arrays::ItemPowerTable::finalizeNames);
    registerClassByName("ItemPowerRef", &Structs::GetMemberIDByString<Structs::ItemPowerRef>);
    LoadBuiltinStructNames("ItemPowerRef", Structs::ItemPowerRef::m_dataNames);
    registerClassByName("ItemPowerTable", &Arrays::GetMemberIDByString<Arrays::ItemPowerTable>);
    addFuncsForFile("item_powers_monopoly_pyarray.bin", &Arrays::ItemBonusAttrMonopoly::read, &Arrays::ItemBonusAttrMonopoly::finalize);
    addFuncsForFile("item_powers_monopoly_pyarraynames.bin", &Arrays::ItemBonusAttrMonopoly::skipNames, &Arrays::ItemBonusAttrMonopoly::finalizeNames);
    registerClassByName("ItemBonusAttrList", &Structs::GetMemberIDByString<Structs::ItemBonusAttrList>);
    LoadBuiltinStructNames("ItemBonusAttrList", Structs::ItemBonusAttrList::m_dataNames);
    registerClassByName("ItemBonusAttrMonopoly", &Arrays::GetMemberIDByString<Arrays::ItemBonusAttrMonopoly>);
    addFuncsForFile("levels_pyarray.bin", &Arrays::FastTravelList::read, &Arrays::FastTravelList::finalize);
    addFuncsForFile("levels_pyarraynames.bin", &Arrays::FastTravelList::readNames, &Arrays::FastTravelList::finalizeNames);
    registerClassByName("FastTravelDestination", &Structs::GetMemberIDByString<Structs::FastTravelDestination>);
    LoadBuiltinStructNames("FastTravelDestination", Structs::FastTravelDestination::m_dataNames);
    registerClassByName("FastTravelList", &Arrays::GetMemberIDByString<Arrays::FastTravelList>);
    addFuncsForFile("levels_pyarray.bin", &Arrays::LevelList::read, &Arrays::LevelList::finalize);
    addFuncsForFile("levels_pyarraynames.bin", &Arrays::LevelList::readNames, &Arrays::LevelList::finalizeNames);
    registerClassByName("LevelDeclaration", &Structs::GetMemberIDByString<Structs::LevelDeclaration>);
    LoadBuiltinStructNames("LevelDeclaration", Structs::LevelDeclaration::m_dataNames);
    registerClassByName("LevelList", &Arrays::GetMemberIDByString<Arrays::LevelList>);
    addFuncsForFile("loot_audiovisual_pyarray.bin", &Arrays::ItemAudioVisualTable::read, &Arrays::ItemAudioVisualTable::finalize);
    addFuncsForFile("loot_audiovisual_pyarraynames.bin", &Arrays::ItemAudioVisualTable::skipNames, &Arrays::ItemAudioVisualTable::finalizeNames);
    registerClassByName("ItemAudioVisual", &Structs::GetMemberIDByString<Structs::ItemAudioVisual>);
    LoadBuiltinStructNames("ItemAudioVisual", Structs::ItemAudioVisual::m_dataNames);
    registerClassByName("ItemAudioVisualTable", &Arrays::GetMemberIDByString<Arrays::ItemAudioVisualTable>);
    addFuncsForFile("loot_table_pyarray.bin", &Arrays::DropTilePriorityTable::read, &Arrays::DropTilePriorityTable::finalize);
    addFuncsForFile("loot_table_pyarraynames.bin", &Arrays::DropTilePriorityTable::skipNames, &Arrays::DropTilePriorityTable::finalizeNames);
    registerClassByName("TileOffsetList", &Structs::GetMemberIDByString<Structs::TileOffsetList>);
    LoadBuiltinStructNames("TileOffsetList", Structs::TileOffsetList::m_dataNames);
    registerClassByName("DropTilePriorityTable", &Arrays::GetMemberIDByString<Arrays::DropTilePriorityTable>);
    addFuncsForFile("loot_table_pyarray.bin", &Arrays::InventoryTable::read, &Arrays::InventoryTable::finalize);
    addFuncsForFile("loot_table_pyarraynames.bin", &Arrays::InventoryTable::skipNames, &Arrays::InventoryTable::finalizeNames);
    registerClassByName("Inventory", &Structs::GetMemberIDByString<Structs::Inventory>);
    LoadBuiltinStructNames("Inventory", Structs::Inventory::m_dataNames);
    registerClassByName("InventoryTable", &Arrays::GetMemberIDByString<Arrays::InventoryTable>);
    addFuncsForFile("loot_table_pyarray.bin", &Arrays::ItemList::read, &Arrays::ItemList::finalize);
    addFuncsForFile("loot_table_pyarraynames.bin", &Arrays::ItemList::skipNames, &Arrays::ItemList::finalizeNames);
    registerClassByName("ItemListEntryList", &Structs::GetMemberIDByString<Structs::ItemListEntryList>);
    LoadBuiltinStructNames("ItemListEntryList", Structs::ItemListEntryList::m_dataNames);
    registerClassByName("ItemList", &Arrays::GetMemberIDByString<Arrays::ItemList>);
    addFuncsForFile("loot_table_pyarray.bin", &Arrays::ItemTable::read, &Arrays::ItemTable::finalize);
    addFuncsForFile("loot_table_pyarraynames.bin", &Arrays::ItemTable::readNames, &Arrays::ItemTable::finalizeNames);
    registerClassByName("Item", &Structs::GetMemberIDByString<Structs::Item>);
    LoadBuiltinStructNames("Item", Structs::Item::m_dataNames);
    registerClassByName("ItemTable", &Arrays::GetMemberIDByString<Arrays::ItemTable>);
    addFuncsForFile("loot_table_pyarray.bin", &Arrays::ItemTypeList::read, &Arrays::ItemTypeList::finalize);
    addFuncsForFile("loot_table_pyarraynames.bin", &Arrays::ItemTypeList::skipNames, &Arrays::ItemTypeList::finalizeNames);
    registerClassByName("ItemTypeListList", &Structs::GetMemberIDByString<Structs::ItemTypeListList>);
    LoadBuiltinStructNames("ItemTypeListList", Structs::ItemTypeListList::m_dataNames);
    registerClassByName("ItemTypeList", &Arrays::GetMemberIDByString<Arrays::ItemTypeList>);
    addFuncsForFile("loot_table_pyarray.bin", &Arrays::LootTable::read, &Arrays::LootTable::finalize);
    addFuncsForFile("loot_table_pyarraynames.bin", &Arrays::LootTable::skipNames, &Arrays::LootTable::finalizeNames);
    registerClassByName("Loot", &Structs::GetMemberIDByString<Structs::Loot>);
    LoadBuiltinStructNames("Loot", Structs::Loot::m_dataNames);
    registerClassByName("LootTable", &Arrays::GetMemberIDByString<Arrays::LootTable>);
    addFuncsForFile("loot_table_pyarray.bin", &Arrays::MerchantTable::read, &Arrays::MerchantTable::finalize);
    addFuncsForFile("loot_table_pyarraynames.bin", &Arrays::MerchantTable::skipNames, &Arrays::MerchantTable::finalizeNames);
    registerClassByName("Merchant", &Structs::GetMemberIDByString<Structs::Merchant>);
    LoadBuiltinStructNames("Merchant", Structs::Merchant::m_dataNames);
    registerClassByName("MerchantTable", &Arrays::GetMemberIDByString<Arrays::MerchantTable>);
    addFuncsForFile("loot_table_pyarray.bin", &Arrays::NumProbArray::read, &Arrays::NumProbArray::finalize);
    addFuncsForFile("loot_table_pyarraynames.bin", &Arrays::NumProbArray::skipNames, &Arrays::NumProbArray::finalizeNames);
    registerClassByName("NumProbList", &Structs::GetMemberIDByString<Structs::NumProbList>);
    LoadBuiltinStructNames("NumProbList", Structs::NumProbList::m_dataNames);
    registerClassByName("NumProbArray", &Arrays::GetMemberIDByString<Arrays::NumProbArray>);
    addFuncsForFile("projectiles_pyarray.bin", &Arrays::ProjectileTable::read, &Arrays::ProjectileTable::finalize);
    addFuncsForFile("projectiles_pyarraynames.bin", &Arrays::ProjectileTable::skipNames, &Arrays::ProjectileTable::finalizeNames);
    registerClassByName("Projectile", &Structs::GetMemberIDByString<Structs::Projectile>);
    LoadBuiltinStructNames("Projectile", Structs::Projectile::m_dataNames);
    registerClassByName("ProjectileTable", &Arrays::GetMemberIDByString<Arrays::ProjectileTable>);
    addFuncsForFile("skills_pyarray.bin", &Arrays::SkillListTable::read, &Arrays::SkillListTable::finalize);
    addFuncsForFile("skills_pyarraynames.bin", &Arrays::SkillListTable::skipNames, &Arrays::SkillListTable::finalizeNames);
    registerClassByName("SkillList", &Structs::GetMemberIDByString<Structs::SkillList>);
    LoadBuiltinStructNames("SkillList", Structs::SkillList::m_dataNames);
    registerClassByName("SkillListTable", &Arrays::GetMemberIDByString<Arrays::SkillListTable>);
    addFuncsForFile("skills_pyarray.bin", &Arrays::SkillTable::read, &Arrays::SkillTable::finalize);
    addFuncsForFile("skills_pyarraynames.bin", &Arrays::SkillTable::readNames, &Arrays::SkillTable::finalizeNames);
    registerClassByName("Skill", &Structs::GetMemberIDByString<Structs::Skill>);
    LoadBuiltinStructNames("Skill", Structs::Skill::m_dataNames);
    registerClassByName("SkillTable", &Arrays::GetMemberIDByString<Arrays::SkillTable>);
    addFuncsForFile("sounds_pyarray.bin", &Arrays::CharSoundsTable::read, &Arrays::CharSoundsTable::finalize);
    addFuncsForFile("sounds_pyarraynames.bin", &Arrays::CharSoundsTable::skipNames, &Arrays::CharSoundsTable::finalizeNames);
    registerClassByName("CharSounds", &Structs::GetMemberIDByString<Structs::CharSounds>);
    LoadBuiltinStructNames("CharSounds", Structs::CharSounds::m_dataNames);
    registerClassByName("CharSoundsTable", &Arrays::GetMemberIDByString<Arrays::CharSoundsTable>);
    addFuncsForFile("sounds_pyarray.bin", &Arrays::Listeners::read, &Arrays::Listeners::finalize);
    addFuncsForFile("sounds_pyarraynames.bin", &Arrays::Listeners::readNames, &Arrays::Listeners::finalizeNames);
    registerClassByName("Listener", &Structs::GetMemberIDByString<Structs::Listener>);
    LoadBuiltinStructNames("Listener", Structs::Listener::m_dataNames);
    registerClassByName("Listeners", &Arrays::GetMemberIDByString<Arrays::Listeners>);
    addFuncsForFile("sounds_pyarray.bin", &Arrays::SoundBankPlayback::read, &Arrays::SoundBankPlayback::finalize);
    addFuncsForFile("sounds_pyarraynames.bin", &Arrays::SoundBankPlayback::readNames, &Arrays::SoundBankPlayback::finalizeNames);
    registerClassByName("SoundBank", &Structs::GetMemberIDByString<Structs::SoundBank>);
    LoadBuiltinStructNames("SoundBank", Structs::SoundBank::m_dataNames);
    registerClassByName("SoundBankPlayback", &Arrays::GetMemberIDByString<Arrays::SoundBankPlayback>);
    addFuncsForFile("sounds_pyarray.bin", &Arrays::SoundGroupsRouting::read, &Arrays::SoundGroupsRouting::finalize);
    addFuncsForFile("sounds_pyarraynames.bin", &Arrays::SoundGroupsRouting::readNames, &Arrays::SoundGroupsRouting::finalizeNames);
    registerClassByName("SoundGroup", &Structs::GetMemberIDByString<Structs::SoundGroup>);
    LoadBuiltinStructNames("SoundGroup", Structs::SoundGroup::m_dataNames);
    registerClassByName("SoundGroupsRouting", &Arrays::GetMemberIDByString<Arrays::SoundGroupsRouting>);
    addFuncsForFile("sounds_pyarray.bin", &Arrays::Sounds_bak::read, &Arrays::Sounds_bak::finalize);
    addFuncsForFile("sounds_pyarraynames.bin", &Arrays::Sounds_bak::readNames, &Arrays::Sounds_bak::finalizeNames);
    registerClassByName("Sound", &Structs::GetMemberIDByString<Structs::Sound>);
    LoadBuiltinStructNames("Sound", Structs::Sound::m_dataNames);
    registerClassByName("Sounds_bak", &Arrays::GetMemberIDByString<Arrays::Sounds_bak>);
    addFuncsForFile("spawn_groups_pyarray.bin", &Arrays::SpawnGroups::read, &Arrays::SpawnGroups::finalize);
    addFuncsForFile("spawn_groups_pyarraynames.bin", &Arrays::SpawnGroups::readNames, &Arrays::SpawnGroups::finalizeNames);
    registerClassByName("SpawnGroup", &Structs::GetMemberIDByString<Structs::SpawnGroup>);
    LoadBuiltinStructNames("SpawnGroup", Structs::SpawnGroup::m_dataNames);
    registerClassByName("SpawnGroups", &Arrays::GetMemberIDByString<Arrays::SpawnGroups>);
    addFuncsForFile("trophies_pyarray.bin", &Arrays::TrophyTable::read, &Arrays::TrophyTable::finalize);
    addFuncsForFile("trophies_pyarraynames.bin", &Arrays::TrophyTable::readNames, &Arrays::TrophyTable::finalizeNames);
    registerClassByName("Trophy", &Structs::GetMemberIDByString<Structs::Trophy>);
    LoadBuiltinStructNames("Trophy", Structs::Trophy::m_dataNames);
    registerClassByName("TrophyTable", &Arrays::GetMemberIDByString<Arrays::TrophyTable>);
    addFuncsForFile("v2conditions_pyarray.bin", &Arrays::v2Conditions::read, &Arrays::v2Conditions::finalize);
    addFuncsForFile("v2conditions_pyarraynames.bin", &Arrays::v2Conditions::readNames, &Arrays::v2Conditions::finalizeNames);
    registerClassByName("v2CondAnd", &Structs::GetMemberIDByString<Structs::v2CondAnd>);
    LoadBuiltinStructNames("v2CondAnd", Structs::v2CondAnd::m_dataNames);
    registerClassByName("v2Conditions", &Arrays::GetMemberIDByString<Arrays::v2Conditions>);
    addFuncsForFile("v2eventmanager_pyarray.bin", &Arrays::v2Events::read, &Arrays::v2Events::finalize);
    addFuncsForFile("v2eventmanager_pyarraynames.bin", &Arrays::v2Events::readNames, &Arrays::v2Events::finalizeNames);
    registerClassByName("v2Event", &Structs::GetMemberIDByString<Structs::v2Event>);
    LoadBuiltinStructNames("v2Event", Structs::v2Event::m_dataNames);
    registerClassByName("v2Events", &Arrays::GetMemberIDByString<Arrays::v2Events>);
    addFuncsForFile("v2quests_pyarray.bin", &Arrays::v2Quests::read, &Arrays::v2Quests::finalize);
    addFuncsForFile("v2quests_pyarraynames.bin", &Arrays::v2Quests::readNames, &Arrays::v2Quests::finalizeNames);
    registerClassByName("v2Quest", &Structs::GetMemberIDByString<Structs::v2Quest>);
    LoadBuiltinStructNames("v2Quest", Structs::v2Quest::m_dataNames);
    registerClassByName("v2Quests", &Arrays::GetMemberIDByString<Arrays::v2Quests>);
    addFuncsForFile("worldmap_pyarray.bin", &Arrays::WorldMap::read, &Arrays::WorldMap::finalize);
    addFuncsForFile("worldmap_pyarraynames.bin", &Arrays::WorldMap::readNames, &Arrays::WorldMap::finalizeNames);
    registerClassByName("WldMapLocation", &Structs::GetMemberIDByString<Structs::WldMapLocation>);
    LoadBuiltinStructNames("WldMapLocation", Structs::WldMapLocation::m_dataNames);
    registerClassByName("WorldMap", &Arrays::GetMemberIDByString<Arrays::WorldMap>);
    addFuncsForFile("worldmap_pyarray.bin", &Arrays::WorldMapLockers::read, &Arrays::WorldMapLockers::finalize);
    addFuncsForFile("worldmap_pyarraynames.bin", &Arrays::WorldMapLockers::skipNames, &Arrays::WorldMapLockers::finalizeNames);
    registerClassByName("WorldMapLocker", &Structs::GetMemberIDByString<Structs::WorldMapLocker>);
    LoadBuiltinStructNames("WorldMapLocker", Structs::WorldMapLocker::m_dataNames);
    registerClassByName("WorldMapLockers", &Arrays::GetMemberIDByString<Arrays::WorldMapLockers>);
    addFuncsForFile("character_models_dictionary_pyarray.bin", &Arrays::ModelDict::read, &Arrays::ModelDict::finalize);
    addFuncsForFile("character_models_dictionary_pyarraynames.bin", &Arrays::ModelDict::skipNames, &Arrays::ModelDict::finalizeNames);
    registerClassByName("ColladaFile", &Structs::GetMemberIDByString<Structs::ColladaFile>);
    LoadBuiltinStructNames("ColladaFile", Structs::ColladaFile::m_dataNames);
    registerClassByName("ModelDict", &Arrays::GetMemberIDByString<Arrays::ModelDict>);
    addFuncsForFile("animations_dictionary_pyarray.bin", &Arrays::AnimDict::read, &Arrays::AnimDict::finalize);
    addFuncsForFile("animations_dictionary_pyarraynames.bin", &Arrays::AnimDict::skipNames, &Arrays::AnimDict::finalizeNames);
    registerClassByName("ColladaFile", &Structs::GetMemberIDByString<Structs::ColladaFile>);
    LoadBuiltinStructNames("ColladaFile", Structs::ColladaFile::m_dataNames);
    registerClassByName("AnimDict", &Arrays::GetMemberIDByString<Arrays::AnimDict>);
    addFuncsForFile("effects_dictionary_pyarray.bin", &Arrays::EffectDict::read, &Arrays::EffectDict::finalize);
    addFuncsForFile("effects_dictionary_pyarraynames.bin", &Arrays::EffectDict::skipNames, &Arrays::EffectDict::finalizeNames);
    registerClassByName("ColladaFile", &Structs::GetMemberIDByString<Structs::ColladaFile>);
    LoadBuiltinStructNames("ColladaFile", Structs::ColladaFile::m_dataNames);
    registerClassByName("EffectDict", &Arrays::GetMemberIDByString<Arrays::EffectDict>);
    addFuncsForFile("projectiles_dictionary_pyarray.bin", &Arrays::ProjectileDict::read, &Arrays::ProjectileDict::finalize);
    addFuncsForFile("projectiles_dictionary_pyarraynames.bin", &Arrays::ProjectileDict::skipNames, &Arrays::ProjectileDict::finalizeNames);
    registerClassByName("ColladaFile", &Structs::GetMemberIDByString<Structs::ColladaFile>);
    LoadBuiltinStructNames("ColladaFile", Structs::ColladaFile::m_dataNames);
    registerClassByName("ProjectileDict", &Arrays::GetMemberIDByString<Arrays::ProjectileDict>);
    addFuncsForFile("game_objects_dictionary_pyarray.bin", &Arrays::GameObjectDict::read, &Arrays::GameObjectDict::finalize);
    addFuncsForFile("game_objects_dictionary_pyarraynames.bin", &Arrays::GameObjectDict::skipNames, &Arrays::GameObjectDict::finalizeNames);
    registerClassByName("ColladaFile", &Structs::GetMemberIDByString<Structs::ColladaFile>);
    LoadBuiltinStructNames("ColladaFile", Structs::ColladaFile::m_dataNames);
    registerClassByName("GameObjectDict", &Arrays::GetMemberIDByString<Arrays::GameObjectDict>);
    addFuncsForFile("common_text_pyarray.bin", &Arrays::StrID_Languages::read, &Arrays::StrID_Languages::finalize);
    addFuncsForFile("common_text_pyarraynames.bin", &Arrays::StrID_Languages::skipNames, &Arrays::StrID_Languages::finalizeNames);
    registerClassByName("LangSheetList", &Structs::GetMemberIDByString<Structs::LangSheetList>);
    LoadBuiltinStructNames("LangSheetList", Structs::LangSheetList::m_dataNames);
    registerClassByName("StrID_Languages", &Arrays::GetMemberIDByString<Arrays::StrID_Languages>);
    addFuncsForFile("sdd_dungeon_hunter_2_iphone_pyarray.bin", &Arrays::Sounds::read, &Arrays::Sounds::finalize);
    addFuncsForFile("sdd_dungeon_hunter_2_iphone_pyarraynames.bin", &Arrays::Sounds::readNames, &Arrays::Sounds::finalizeNames);
    registerClassByName("SoundAutoGen", &Structs::GetMemberIDByString<Structs::SoundAutoGen>);
    LoadBuiltinStructNames("SoundAutoGen", Structs::SoundAutoGen::m_dataNames);
    registerClassByName("Sounds", &Arrays::GetMemberIDByString<Arrays::Sounds>);
}

// 0x4af87c _ZN12PyDataArraysD1Ev (0x4af9bc _ZN12PyDataArraysD2Ev is the same body)
PyDataArrays::~PyDataArrays() {
    // Finalize each file's entries in tree order, then clear the registry, then the file map.
    for (auto& entry : m_files) {
        for (const _Funcs& funcs : entry.second) funcs.finalize();
    }
    m_classes.clear();
    m_files.clear();
}

// 0x4af9a0 _ZN12PyDataArraysD0Ev
void DeletingDestructor(PyDataArrays* self) {
    self->PyDataArrays::~PyDataArrays();
    CustomFree(self);
}

// 0x4bdccc _ZN12PyDataArrays19registerClassByNameEPKcPFiS1_E
PyDataArrays::ClassFactory& PyDataArrays::registerClassByName(const char* name, ClassFactory factory) {
    if (factory == nullptr) {
        if (gAssertLevel == 2) {
            // The original stores to address 0 here (dword_0 = 0), which faults.
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "func",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\PyData\\PyDataArrays.cpp", 70);
        }
    }
    // A null factory is stored as well, as in the listing.
    ClassFactory& slot = m_classes[std::string(name)];
    slot = factory;
    return slot;
}

// 0x4aa21c _ZN12PyDataArrays4LoadEv
// Covers all 70 file states (cases 0..69) and the terminal state 70: state 70 returns 1 without advancing, a
// valid state opens "pydata/<name>" through the loader, calls reloadData(stream, "<name>") (vtable +8, defined
// at 0x4bd478 in tb_accessors-PyDataArrays-0.cpp) when the open succeeds and releases the slot; every state
// then advances, as the listing's default branch does. The loader's open and release calls use the
// file system of the device (PyDataFileSystem, the +52 word of the engine global at 0x99F73C: openResource at
// vtable +0x90, closeFile at +0x78).
// Deviation: the original dereferences the file system without a check; a HOST GUARD skips the loader calls when
// there is no device instead of faulting (a state that crashes the original cannot be compared).

// 0x99F73C + 52: Application::m_device->fileSystem as the DH2 file-system layer (FileSystemBase), null without a device.
FileSystemBase* PyDataFileSystem() {
    glitch::IDevice* const device = ApplicationGetInstance().m_device;
    return device == nullptr ? nullptr : static_cast<FileSystemBase*>(device->fileSystem);
}
int PyDataArrays::Load() {
    const int state = m_state;
    FileSystemBase* const loader = PyDataFileSystem();
    if (state == kLoadDoneState) return 1;

    if (state >= 0 && state < kLoadDoneState) {
        const char* const name = kLoadFiles[state];
        const std::string path = std::string("pydata/") + name;
        IFileStream* stream = loader != nullptr ? loader->openResource(path.c_str()) : nullptr;
        if (stream != nullptr) {
            reloadData(stream, name);
            loader->closeFile(stream);
        } else {
            std::printf("[PyData Arrays] : ERROR LOADING \"%s\"\n", path.c_str());
        }
    }
    // The default branch of the listing (states below 0 or above 70) also advances the state.
    m_state = m_state + 1;
    return 0;
}

// ---------------------------------------------------------------------------------------------
// PyDataConstants
// ---------------------------------------------------------------------------------------------

// 0x4c3668 _ZN15PyDataConstantsC2EP19DataReloaderManager
PyDataConstants::PyDataConstants(DataReloaderManager* reloader) : m_reloader(reloader) {}

// 0x4c4258 _ZN15PyDataConstantsD1Ev (0x4c42d4 _ZN15PyDataConstantsD2Ev is the same body)
PyDataConstants::~PyDataConstants() {
    m_classes.clear();
}

// 0x4c42b8 _ZN15PyDataConstantsD0Ev
void DeletingDestructor(PyDataConstants* self) {
    self->PyDataConstants::~PyDataConstants();
    CustomFree(self);
}

// 0x4c4b08 _ZNK15PyDataConstants15getConstantNameEPKci
const char* PyDataConstants::getConstantName(const char* className, int value) const {
    const auto cls = m_classes.find(std::string(className));
    if (cls == m_classes.end()) return "";
    for (const auto& entry : cls->second) {
        if (entry.second == value) return entry.first.c_str();
    }
    return "";
}

// 0x4c540c _ZN15PyDataConstants10reloadDataEP11IStreamBasePKc
// Verified against Hex-Rays and the listing. Order: DebugSwitches::load (0x4c544c) and DebugSwitches::GetSwitch
// ("isTracingPyDataConstants", 0x4c5470) run first; then the uint32 class count (readAs<unsigned int> value form
// 0x4c5488); then per class a name through StreamReader::readString (0x317734) into the 256-byte buffer at
// sp+0x12C, a uint32 entry count (0x4c553c), and per entry a name through readString into the 256-byte buffer at
// sp+0x2C and an int through readAs<int> (the listing's out-parameter form at 0x4c55d4 / 0x459090; this body's
// readAs<int>(stream) value form, 0x3364ec, reads the same 4 bytes) stored into
// m_classes[class][name] (the two map operator[]<char[256]> calls, 0x4c562c / 0x4c5634).
// The readString argument binding is decoded, not assumed: R0 = R5 = the stream parameter (MOV R5,R1 at
// 0x4c5440, the function's second argument), R1 = the buffer (R10 = sp+0x12C outer, R6 = sp+0x2C inner),
// R2:R3 = 256:0 (MOV R2,#0x100 at 0x4c5524 and 0x4c55b8, MOV R3,#0 at 0x4c5528 and 0x4c55bc). There is no
// fourth argument: Hex-Rays splits the one 64-bit length parameter in two.
// readString returns capacity > length (0x317734: CMP R8,R4 / BLS at 0x317808, then MOV R0,#1 when the high
// word is nonzero), i.e. TRUE when the name FIT the buffer, so these two guards leave the loop when a name of
// 256 bytes or more was truncated (readString has already copied and NUL-terminated the clamped 255 bytes).
// Deviations: (1) the DebugSwitches pair is not called, both results being discarded and nothing else
// observing them; (2) the return value here is a success flag, while the listing leaves the last computed
// value in r0 (the map entry pointer on the normal path; 0 on either readString failure; the entry count 0
// when the FINAL class has no entries; the residue of the preceding void readAs call when the class count is
// 0). The slot is bool because w7_pydata12.hpp declares it so, and the only caller, PyDataConstants::Load
// (0x4c3708), calls the vtable slot through a void cast and discards the result.
bool PyDataConstants::reloadData(IStreamBase* stream, const char* fileName) {
    (void)fileName;
    const std::uint32_t classCount = StreamReader::readAs<std::uint32_t>(stream);
    char className[kConstantsStringCap];
    char key[kConstantsStringCap];
    for (std::uint32_t c = 0; c < classCount; ++c) {
        if (!StreamReader::readString(stream, className, kConstantsStringCap)) return false;
        const std::uint32_t entryCount = StreamReader::readAs<std::uint32_t>(stream);
        for (std::uint32_t e = 0; e < entryCount; ++e) {
            if (!StreamReader::readString(stream, key, kConstantsStringCap)) return false;
            const int value = StreamReader::readAs<int>(stream);
            m_classes[std::string(className)][std::string(key)] = value;
        }
    }
    return true;
}
