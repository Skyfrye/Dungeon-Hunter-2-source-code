// Batch g1-game-app-pack5-057b13-0 (game-app). Ten script command classes, 20 ELF functions: the IsBlocking and
// Execute pair of Script_AwardEndGameTrophies, Script_AwardTrophy, Script_BlockSaveGame, Script_CONSOLE,
// Script_ChangeLevel, Script_CloseDoor, Script_DeactivateTriggerPlate, Script_DoTutorial, Script_DropLoot and
// Script_EmptyImpl.
//
// Rebuilt from the Hex-Rays pseudocode. The IsBlocking bodies and Script_EmptyImpl::Execute were checked against the
// assembly (tools/decomp_asm.py). Status per function is in the ledger rows.
//
// The argument records are the Structs::<Name> classes of pydata-accessors/include/pydata-accessors/script_cmd.hpp
// (member m_wN is the word at offset 4*N). The local player's character is PlayerInfo::unk_660 (+0x660, the name
// character_660 in the listings). The online flag *(GetOnline() + 5) is GetOnlineGameFlag(). Every Execute in this batch is
// complete.
#include "dh2/Script_AwardEndGameTrophies.hpp"
#include "dh2/Script_AwardTrophy.hpp"
#include "dh2/Script_BlockSaveGame.hpp"
#include "dh2/Script_CONSOLE.hpp"
#include "dh2/Script_ChangeLevel.hpp"
#include "dh2/Script_CloseDoor.hpp"
#include "dh2/Script_DeactivateTriggerPlate.hpp"
#include "dh2/Script_DoTutorial.hpp"
#include "dh2/Script_DropLoot.hpp"
#include "dh2/Script_EmptyImpl.hpp"

#include <cstdint>
#include <cstring>
#include <string>

#include "pydata-accessors/script_cmd.hpp"

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/Door.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Quest.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/TriggerPlate.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/script_command_globals.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "net-transport/update_job_thread.hpp"

namespace {

// DebugSwitches::load() on the singleton, then GetSwitch(name). The original passes &DebugSwitches::s_inst, which is
// private in dh2/DebugSwitches.hpp. DebugSwitches::GetInstance() calls load() on that same singleton and returns it
// (0x330740), so one GetInstance() call makes the same two steps. The switch value is returned to the caller.
bool ReadScriptSwitch(const char* name) {
    return DebugSwitches::GetInstance()->GetSwitch(std::string(name));
}

// The "isTracingScriptCmd" probe that the original runs at the start of several Execute bodies. The value is discarded.
void TraceScriptCmd() {
    (void)ReadScriptSwitch("isTracingScriptCmd");
}

// The unlocks of Script_AwardEndGameTrophies::Execute for one character, in the original's order: the class trophies, the
// quest completion walk and the three stat checks. Script_AwardEndGameTrophies::Execute passes it the local player's character.
void UnlockEndGameTrophies(Character* character) {
    TrophyManager* trophies = TrophyManager::s_instance;
    const auto unlock = [trophies](const char* name) {
        trophies->UnlockTrophy(Arrays::GetMemberIDByString<Arrays::TrophyTable>(name));
    };

    // Class trophies. The original tests the class in an if chain and repeats the getter in every test.
    if (character->SG_GetPlayerClass() == 263) {
        unlock("quest_warriorwin");
    } else if (character->SG_GetPlayerClass() == 264) {
        unlock("quest_warriorwin");
        unlock("quest_berserkerwin");
    } else if (character->SG_GetPlayerClass() == 265) {
        unlock("quest_warriorwin");
        unlock("quest_paladinwin");
    } else if (character->SG_GetPlayerClass() == 325) {
        unlock("quest_roguewin");
    } else if (character->SG_GetPlayerClass() == 326) {
        unlock("quest_roguewin");
        unlock("quest_archerwin");
    } else if (character->SG_GetPlayerClass() == 327) {
        unlock("quest_roguewin");
        unlock("quest_assassinwin");
    } else if (character->SG_GetPlayerClass() == 290) {
        unlock("quest_magewin");
    } else if (character->SG_GetPlayerClass() == 291) {
        unlock("quest_magewin");
        unlock("quest_illusionistwin");
    } else if (character->SG_GetPlayerClass() == 292) {
        unlock("quest_magewin");
        unlock("quest_necromancerwin");
    }

    // Quest completion. allDone (v11) stays set while every quest except index 22 has state above 12. sideQuestDone
    // (v9) is set when a quest above state 12 is a secondary quest. The walk stops early once a secondary quest is done
    // and a main quest is not.
    const int numQuests = character->SG_GetNumQuests(-1);
    bool allDone = true;
    bool sideQuestDone = false;
    if (numQuests != 0) {
        int index = 0;
        bool stoppedEarly = false;
        for (;;) {
            if (character->SG_GetQuestByID(index, -1)->m_state <= 12 && index != 22) {
                allDone = false;
            }
            if (character->SG_GetQuestByID(index, -1)->m_state > 12) {
                Quest* quest = character->SG_GetQuestByID(index, -1);
                if (quest->IsSecondary()) {
                    sideQuestDone = true;
                }
            }
            ++index;
            if (!allDone && sideQuestDone) {
                stoppedEarly = true;
                break;
            }
            if (index == numQuests) {
                break;
            }
        }
        if (!stoppedEarly) {
            if (allDone) {
                unlock("quest_allcomplete");
            }
            if (!sideQuestDone) {
                unlock("completed_no_sidequests");
            }
        }
    } else {
        unlock("quest_allcomplete");
        unlock("completed_no_sidequests");
    }

    // Stat checks. The character's CharProperties subobject is at +0x560 and the calls read it through the base class.
    // Property ids 25, 148 and 218 are not named in the tree.
    if (character->PROPS_GetInt(25, false) == 0) {
        unlock("completed_never_died");
    }
    const int prop148 = character->PROPS_GetInt(148, false);
    if (prop148 == 2 * (character->SG_GetPlayerLevel() - 1)) {
        unlock("completed_never_increase_stats");
    }
    const int prop218 = character->PROPS_GetInt(218, false);
    if (prop218 == 0) {
        unlock("completed_never_open_chests");
    }
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// Script_AwardEndGameTrophies
// ---------------------------------------------------------------------------------------------------------------------

// 0x455918 Script_AwardEndGameTrophies::IsBlocking() const
// Asm: MOV R0,#0; BX LR. Never blocks.
bool Script_AwardEndGameTrophies::IsBlocking() const {
    return false;
}

// 0x459b04 Script_AwardEndGameTrophies::Execute(bool, int)
// Every unlock is for the local player's character: PlayerManager::GetLocalPlayer(0, true)->character_660 (PlayerInfo
// +0x660, named unk_660 in dh2/PlayerInfo.hpp). The unlocks run in UnlockEndGameTrophies above, in the original's order.
// No trace probe and no argument record are read.
void Script_AwardEndGameTrophies::Execute(bool /*skipping*/, int /*module*/) {
    Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    UnlockEndGameTrophies(character);
}

// ---------------------------------------------------------------------------------------------------------------------
// Script_AwardTrophy
// ---------------------------------------------------------------------------------------------------------------------

// 0x455920 Script_AwardTrophy::IsBlocking() const
// Asm: MOV R0,#0; BX LR. Never blocks.
bool Script_AwardTrophy::IsBlocking() const {
    return false;
}

// 0x4593c4 Script_AwardTrophy::Execute(bool, int)
// Unlocks the trophy whose id is the record's +0x08 word (Structs::AwardTrophy m_w2) through
// TrophyManager::s_instance->UnlockTrophy(id). Does nothing when the command has no record.
void Script_AwardTrophy::Execute(bool /*skipping*/, int /*module*/) {
    const Structs::AwardTrophy* record = static_cast<const Structs::AwardTrophy*>(m_args);
    if (record != nullptr) {
        TrophyManager::s_instance->UnlockTrophy(record->Trophy);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// Script_BlockSaveGame
// ---------------------------------------------------------------------------------------------------------------------

// 0x455930 Script_BlockSaveGame::IsBlocking() const
// Asm: MOV R0,#0; BX LR. Never blocks.
bool Script_BlockSaveGame::IsBlocking() const {
    return false;
}

// 0x45c8c0 Script_BlockSaveGame::Execute(bool, int)
// After the trace probe: the local player's character (PlayerManager::GetLocalPlayer(0, true), PlayerInfo +0x660) blocks saving
// (Character::SG_Block(true)) when it exists, and the current level (Application::GetCurrentLevel) blocks its save too
// (Level::SG_BlockLevel(true)) when there is one.
void Script_BlockSaveGame::Execute(bool /*skipping*/, int /*module*/) {
    TraceScriptCmd();
    Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    if (character != nullptr) {
        character->SG_Block(true);
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr) {
        level->SG_BlockLevel(true);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// Script_CONSOLE
// ---------------------------------------------------------------------------------------------------------------------

// 0x455648 Script_CONSOLE::IsBlocking() const
// Asm: MOV R0,#0; BX LR. Never blocks.
bool Script_CONSOLE::IsBlocking() const {
    return false;
}

// 0x460e68 Script_CONSOLE::Execute(bool, int)
// After the trace probe, the DisplayScriptConsoleAsDialog switch turns the record's text (Structs::CONSOLE m_w3, +0x0c) into a
// bottom-bubble dialog: DialogMsg("Console Text", text, PyDataConstants "DialogStyles"/"BottomBubbleAvatarLeft", -1) is enqueued on
// the DialogMsg queue (queue 0, flag true as in Script_StartDialog). Nothing is queued for a null text.
void Script_CONSOLE::Execute(bool /*skipping*/, int /*module*/) {
    const Structs::CONSOLE* record = static_cast<const Structs::CONSOLE*>(m_args);
    TraceScriptCmd();
    const bool displayAsDialog = ReadScriptSwitch("DisplayScriptConsoleAsDialog");
    if (displayAsDialog && record->Text != nullptr) {
        const int style = ApplicationGetInstance().m_pyDataConstants->getConstant("DialogStyles", "BottomBubbleAvatarLeft");
        DialogMsg message(std::string("Console Text"), std::string(record->Text), style, -1);
        MenuMessageManager<DialogMsg, 1>::s_inst.EnqueueMessage(message, 0, true);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// Script_ChangeLevel
// ---------------------------------------------------------------------------------------------------------------------

// 0x4558fc Script_ChangeLevel::IsBlocking() const
// Asm: MOV R0,#0; BX LR. Never blocks.
bool Script_ChangeLevel::IsBlocking() const {
    return false;
}

// 0x45cba0 Script_ChangeLevel::Execute(bool, int)
// After the trace probe: the difficulty is the local player's, or the current level's (Level +0x118) when there is one, in which case
// the level saves all players first (Level::SG_SaveAllPlayer(false)). The record's level name (Structs::ChangeLevel m_w4, +0x10) is
// searched in the names of Arrays::LevelList (-1 when missing) and the local player's character stores that level id (SG_SetLevelId(id,
// -1)) and saves (SG_Save). Offline, or when the local player is the hosting player (GetHostingPlayer()->unk_660), the level file of that
// row (Structs::LevelDeclaration m_w8, row +0x20) is loaded: Application::LoadLevel(file, the record's entry point (m_w2, +0x08), the
// character's save slot, true, true, difficulty, false, 0, 0). A name missing from the table makes the original read the row before
// the table (the offset -72 + 32); that load is skipped here.
void Script_ChangeLevel::Execute(bool /*skipping*/, int /*module*/) {
    const Structs::ChangeLevel* record = static_cast<const Structs::ChangeLevel*>(m_args);
    TraceScriptCmd();
    Application& app = ApplicationGetInstance();
    Level* level = app.GetCurrentLevel();
    int difficulty = dword_99F76C->GetLocalPlayer(0, true)->unk_660->SG_GetGameDifficulty();
    if (level != nullptr) {
        level->SG_SaveAllPlayer(false);
        difficulty = level->m_difficulty;
    }
    int levelIndex = -1;
    for (int i = 0; i < static_cast<int>(Arrays::LevelList::size); ++i) {
        if (std::strcmp(record->Level, Arrays::LevelList::m_memberNames.names[i]) == 0) {
            levelIndex = i;
            break;
        }
    }
    dword_99F76C->GetLocalPlayer(0, true)->unk_660->SG_SetLevelId(levelIndex, -1);
    dword_99F76C->GetLocalPlayer(0, true)->unk_660->SG_Save();
    if (!GetOnlineGameFlag() || dword_99F76C->GetLocalPlayer(0, true)->unk_660 == dword_99F76C->GetHostingPlayer()->unk_660) {
        if (levelIndex >= 0) {
            const auto* rows = static_cast<const Structs::LevelDeclaration*>(static_cast<const void*>(Arrays::LevelList::members));
            const char* levelFile = static_cast<const char*>(rows[levelIndex].LevelFile);
            const int slot = dword_99F76C->GetLocalPlayer(0, true)->unk_660->SG_GetSlot();
            app.LoadLevel(levelFile, record->Entrypoint, static_cast<std::uint32_t>(slot), true, true, difficulty, false, 0, 0);
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// Script_CloseDoor
// ---------------------------------------------------------------------------------------------------------------------

// 0x455884 Script_CloseDoor::IsBlocking() const
// Asm: loads m_door (+0x10) and m_instant (+0x14). Returns 0 when m_door is null or m_instant is clear. Otherwise returns
// 1 when m_door->m_state (+0x3a8) is 1 or 3. In Door::DoorStates these are DOOR_OPENED and DOOR_OPENING, so the command
// blocks while the door is open or opening.
bool Script_CloseDoor::IsBlocking() const {
    if (m_door == nullptr || !m_instant) {
        return false;
    }
    return m_door->m_state == Door::DOOR_OPENED || m_door->m_state == Door::DOOR_OPENING;
}

// 0x45d650 Script_CloseDoor::Execute(bool, int)
// The isTracingScriptCmd probe, then the door named by the record (+0x0c, Structs::CloseDoor m_w3) is looked up with
// ObjectManager::GetObjectByName(name, module, false, nullptr) and ObjectHandle::GetObject(false). When the object's m_goId
// is GO_DOOR (2) it is stored in m_door, the record's instant flag (+0x10) is copied to m_instant, and Door::Close(skipping)
// runs. Otherwise m_door is cleared and m_instant is left as it was.
void Script_CloseDoor::Execute(bool skipping, int module) {
    TraceScriptCmd();
    const Structs::CloseDoor* record = static_cast<const Structs::CloseDoor*>(m_args);
    ObjectHandle doorHandle = dword_99F764->GetObjectByName(record->Target, module, false, nullptr);
    ObjectBase* object = doorHandle.GetObject(false);
    if (object != nullptr && object->m_goId == ObjectBase::GO_DOOR) {
        m_door = static_cast<Door*>(object);
        m_instant = record->Wait;
        m_door->Close(skipping);
    } else {
        m_door = nullptr;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// Script_DeactivateTriggerPlate
// ---------------------------------------------------------------------------------------------------------------------

// 0x4558d4 Script_DeactivateTriggerPlate::IsBlocking() const
// Asm: MOV R0,#0; BX LR. Never blocks.
bool Script_DeactivateTriggerPlate::IsBlocking() const {
    return false;
}

// 0x45d0e0 Script_DeactivateTriggerPlate::Execute(bool, int)
// After the trace probe, the object named by the record (+0x0c, Structs::DeactivateTriggerPlate m_w3) is looked up with
// ObjectManager::GetObjectByName(name, module, false, nullptr) and ObjectHandle::GetObject(false). A trigger plate (m_goId 18) is
// remembered in m_plate and disabled (TriggerPlate::m_enabled, +0x779); anything else clears m_plate.
void Script_DeactivateTriggerPlate::Execute(bool /*skipping*/, int module) {
    TraceScriptCmd();
    const Structs::DeactivateTriggerPlate* record = static_cast<const Structs::DeactivateTriggerPlate*>(m_args);
    ObjectHandle plateHandle = dword_99F764->GetObjectByName(record->Target, module, false, nullptr);
    ObjectBase* object = plateHandle.GetObject(false);
    if (object != nullptr && static_cast<std::int32_t>(object->m_goId) == 18) {
        m_plate = static_cast<GameObject*>(object);
        static_cast<TriggerPlate*>(object)->m_enabled = false;
    } else {
        m_plate = nullptr;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// Script_DoTutorial
// ---------------------------------------------------------------------------------------------------------------------

// 0x455970 Script_DoTutorial::IsBlocking() const
// Asm: MOV R0,#0; BX LR. Never blocks.
bool Script_DoTutorial::IsBlocking() const {
    return false;
}

// 0x460950 Script_DoTutorial::Execute(bool, int)
// The tutorial script name (record +0x0c, Structs::DoTutorial m_w3) and index (+0x10, m_w4) are read from the record. It runs the
// tutorial only when all of these hold, in this order:
//   - the local player's character is set (PlayerManager::GetLocalPlayer(0, false)->unk_660).
//   - Character::SG_GetGameDifficulty() is 0.
//   - SavegameManager m_tutorials[index] (+0x29) is set. The savegame manager is dword_99F778 (Application +0x4c).
//   - the online game flag *(GetOnline() + 5) is clear (GetOnlineGameFlag()).
// Then it starts the script ScriptManager::GetIDFromName(name, true) when that is not -1 (StartScript(id, -1, true)), clears
// m_tutorials[index], and calls SavegameManager::saveSettings() when lastOpenMenuID is 17, otherwise
// m_updateJobThread2->Start2().
void Script_DoTutorial::Execute(bool /*skipping*/, int /*module*/) {
    const Structs::DoTutorial* record = static_cast<const Structs::DoTutorial*>(m_args);
    if (record == nullptr) {
        return;
    }
    Character* character = dword_99F76C->GetLocalPlayer(0, false)->unk_660;
    if (character == nullptr || character->SG_GetGameDifficulty() != 0) {
        return;
    }
    SavegameManager* savegame = dword_99F778;
    const std::int32_t index = record->Tutorial;
    if (savegame->m_tutorials[index] == 0) {
        return;
    }
    if (GetOnlineGameFlag()) {
        return;
    }
    const int scriptId = ScriptManager::s_inst.GetIDFromName(record->ScriptName, true);
    if (scriptId != -1) {
        ScriptManager::s_inst.StartScript(scriptId, -1, true);
    }
    savegame->m_tutorials[index] = 0;
    if (lastOpenMenuID == 17) {
        savegame->saveSettings();
    } else {
        (void)m_updateJobThread2->Start2();
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// Script_DropLoot
// ---------------------------------------------------------------------------------------------------------------------

// 0x4557e8 Script_DropLoot::IsBlocking() const
// Asm: MOV R0,#0; BX LR. Never blocks.
bool Script_DropLoot::IsBlocking() const {
    return false;
}

// 0x45e374 Script_DropLoot::Execute(bool, int)
// The isTracingScriptCmd probe, then two objects are looked up by name with ObjectManager::GetObjectByName(name, module, false,
// nullptr): the character (record +0x0c, Structs::DropLoot m_w3) and the loot source (record +0x14, m_w5). Each is resolved with
// ObjectHandle::GetObject(false). When the character resolves, Character::DropLoot(source) runs. The source is passed as a
// GameObject*, and it is null when its name does not resolve.
void Script_DropLoot::Execute(bool /*skipping*/, int module) {
    TraceScriptCmd();
    const Structs::DropLoot* record = static_cast<const Structs::DropLoot*>(m_args);
    ObjectHandle characterHandle = dword_99F764->GetObjectByName(record->From, module, false, nullptr);
    Character* character = nullptr;
    if (characterHandle.GetObject(false) != nullptr) {
        character = static_cast<Character*>(characterHandle);
    }
    ObjectHandle sourceHandle = dword_99F764->GetObjectByName(record->To, module, false, nullptr);
    GameObject* source = nullptr;
    if (sourceHandle.GetObject(false) != nullptr) {
        source = static_cast<GameObject*>(sourceHandle);
    }
    if (character != nullptr) {
        character->DropLoot(source);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// Script_EmptyImpl
// ---------------------------------------------------------------------------------------------------------------------

// 0x455630 Script_EmptyImpl::IsBlocking() const
// Asm: MOV R0,#0; BX LR. Never blocks.
bool Script_EmptyImpl::IsBlocking() const {
    return false;
}

// 0x45c560 Script_EmptyImpl::Execute(bool, int)
// Asm: DebugSwitches::load() on the singleton, then GetSwitch("isTracingScriptCmd") with the value discarded, then the
// std::string temporary is destroyed. No other effect.
void Script_EmptyImpl::Execute(bool /*skipping*/, int /*module*/) {
    TraceScriptCmd();
}
