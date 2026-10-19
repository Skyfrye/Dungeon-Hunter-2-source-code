#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include "dh2/SavegameManager.hpp"
#include "core-platform/debug_out.hpp"
#endif
// Batch g1-game-app-global-f216b6-10 (<global>, part 11 of 22): the gameswf natives that act on a player's
// character (potion, quest, stats, skills, equipment, HUD skill, lock and unlock, save, start game), ELF
// 0x43d2c8 .. 0x43eac0. Declarations: dh2/global/native_player_actions.hpp.
//
// Facts shared by the bodies:
//   - A native is void(const gameswf::fn_call&). Argument i is read by the pseudocode as the environment
//     stack entry at (first argument index - i), 12 bytes per gameswf::as_value, which is call.arg(i). Type codes the
//     pseudocode checks: 1 boolean, 2 number, 5 object. The result is call.result. The *OfPlayer helpers hold the
//     body that acts on the decoded values.
//   - NativeGetPlayerChar(player, false) returns the character, or null.
//   - Character::m_controller (v2Controllable +0x04; Character +0x378) is the v2Controller. Its m_blocked is
//     the byte at +0x08.
//   - The format string the item name uses is the binary's own text ("<font color='#%000000X'>%s</font>").
//   - Hex-Rays dropped uses of some arguments (NativeMoveCharacter). Those were checked against the assembly.
//     The asm is the source where the two differ.

#include "dh2/global/native_player_actions.hpp"

#include <cmath>
#include <cstdio>

#include "dh2/Application.hpp"
#include "gameswf/gameswf_environment.h"
#include "vendor-gameswf/as_value.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/ZoomHandler.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/gc_invite_flags.hpp"
#include "dh2/global/menu_main_menu.hpp"
#include "dh2/global/native_app_hud_level.hpp"
#include "core-platform/deps/application.hpp"
#include "dh2/global/net_singletons.hpp"
#include "core-platform/device.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "dh2/Level.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "vox-audio/vox/sound_manager.hpp"

namespace {

// TrophyManager::UnlockTrophy(Arrays::GetMemberIDByString<Arrays::TrophyTable>(name)). The original reads
// TrophyManager::s_instance once, after Character::SG_Save. A null instance is not reachable in the original's
// normal path; it is skipped here.
void UnlockTrophyNamed(TrophyManager* trophies, const char* name) {
    if (trophies) {
        trophies->UnlockTrophy(Arrays::GetMemberIDByString<Arrays::TrophyTable>(name));
    }
}

}  // namespace

// 0x43d2c8 NativeUsePotion(gameswf::fn_call const&)
// Argument 0 is the player index. UsePotionOnPlayer does the rest, including the "PotionDrink" sound.
void NativeUsePotion(const gameswf::fn_call& call) {
    UsePotionOnPlayer(static_cast<int>(call.arg(0).to_number()));
}

// Body of NativeUsePotion on the decoded player index. Without a character, or one without a potion, nothing
// happens. Otherwise the potion is used unless both HP and MP are full. The asm truncates each fraction to int and
// converts it back before the compare with 1.0f (__aeabi_f2iz, __aeabi_i2f, __aeabi_fcmplt), so the tests are
// (float)(int)hp < 1.0f and then (float)(int)mp < 1.0f (asm of 0x43d2c8, checked).
void UsePotionOnPlayer(int player) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (!ch || !ch->HasPotion()) {
        return;
    }
    // GetHPPercent and GetMPPercent return float in the binary (asm of 0x3bd2dc and 0x3bd338, float __fastcall, each
    // ends in __aeabi_fdiv). Character.hpp declares them int (layout request). The chain below is right for the
    // float return and also compiles against the declared int.
    const float hpPercent = static_cast<float>(static_cast<int>(ch->GetHPPercent()));
    const float mpPercent = static_cast<float>(static_cast<int>(ch->GetMPPercent()));
    if (hpPercent < 1.0f || mpPercent < 1.0f) {
        ch->m_controller->Cmd_UsePotion();
        // VoxSoundManager::Play(s_instance, id of "PotionDrink", loop 0, fade 0, type 0, force 0).
        VoxSoundManager::s_instance->Play(Arrays::GetMemberIDByString<Arrays::Sounds>("PotionDrink"), false, 0, 0, false);
    }
}

// 0x43d3b4 NativeSetCurrentQuest(gameswf::fn_call const&): SetCurrentQuestOfPlayer(argument 0 = player, argument 1 = quest).
void NativeSetCurrentQuest(const gameswf::fn_call& call) {
    SetCurrentQuestOfPlayer(static_cast<int>(call.arg(0).to_number()), static_cast<int>(call.arg(1).to_number()));
}

// Body of NativeSetCurrentQuest: Character::SG_SetCurrentQuest(quest, -1) on the player's character.
void SetCurrentQuestOfPlayer(int player, int quest) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (ch) {
        ch->SG_SetCurrentQuest(quest, -1);
    }
}

// 0x43d43c NativeStatsRemoveAssign(gameswf::fn_call const&)
// Arguments 0 to 3 are the four stat deltas (a, b, c, d) and argument 4 is the player index.
void NativeStatsRemoveAssign(const gameswf::fn_call& call) {
    ResetStatsChangeOfPlayer(static_cast<int>(call.arg(4).to_number()), static_cast<int>(call.arg(0).to_number()),
                             static_cast<int>(call.arg(1).to_number()), static_cast<int>(call.arg(2).to_number()),
                             static_cast<int>(call.arg(3).to_number()));
}

// Body of NativeStatsRemoveAssign: Character::ResetStatsChange(a, b, c, d) on the player's character.
void ResetStatsChangeOfPlayer(int player, int a, int b, int c, int d) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (ch) {
        ch->ResetStatsChange(a, b, c, d);
    }
}

// 0x43d548 NativeSkillsTrainSkill(gameswf::fn_call const&)
// Argument 0 is the skill, argument 1 the player index and, when there are three arguments, argument 2 a flag. The character
// raises the skill (Character::IncSkill(skill, flag)). The result is IncSkill's bool when the flag is set, otherwise the
// character's remaining skill points (property 157) as a number. Without a character the result is left alone.
void NativeSkillsTrainSkill(const gameswf::fn_call& call) {
    const int skill = static_cast<int>(call.arg(0).to_number());
    const int player = static_cast<int>(call.arg(1).to_number());
    const bool flag = call.nargs == 3 ? call.arg(2).to_bool() : false;
    Character* ch = NativeGetPlayerChar(player, false);
    if (ch) {
        const bool trained = ch->IncSkill(skill, flag);
        const int skillPoints = ch->PROPS_GetInt(157, false);
        if (flag) {
            call.result->set_bool(trained);
        } else {
            call.result->set_double(static_cast<double>(skillPoints));
        }
    }
}

// Body of NativeSkillsTrainSkill: Character::IncSkill(skill, flag) on the player's character. It returns the bool that
// IncSkill returns (false when there is no character). The native does not store it yet, see NativeSkillsTrainSkill.
bool TrainSkillOfPlayer(int player, int skill, bool flag) {
    Character* ch = NativeGetPlayerChar(player, false);
    return ch ? ch->IncSkill(skill, flag) : false;
}

// 0x43d63c NativeEquipSkill(gameswf::fn_call const&): EquipSkillInSlotOfPlayer(player = argument 2, slot = argument 0, skill = argument 1).
void NativeEquipSkill(const gameswf::fn_call& call) {
    EquipSkillInSlotOfPlayer(static_cast<int>(call.arg(2).to_number()), static_cast<int>(call.arg(0).to_number()),
                             static_cast<int>(call.arg(1).to_number()));
}

// Body of NativeEquipSkill: when the character can equip the skill, Character::SG_SetSkillInSlot(slot, skill).
void EquipSkillInSlotOfPlayer(int player, int slot, int skill) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (ch && ch->IsSkillEquippable(skill)) {
        ch->SG_SetSkillInSlot(slot, static_cast<unsigned int>(skill));
    }
}

// 0x43d6f8 NativePinchZoom(gameswf::fn_call const&): PinchZoomBy(argument 0), which holds the DPad gate.
void NativePinchZoom(const gameswf::fn_call& call) {
    PinchZoomBy(static_cast<int>(call.arg(0).to_number()));
}

// Body of NativePinchZoom. Runs only when the DPad option is set, and only with a bound camera. Then the zoom request
// (CameraLevel::m_zoomCurrent, +0x88) grows by amount times ZoomHandler::m_sensitivity, unless the camera is locked
// (m_zoomLocked, +0x86). The original's float arithmetic is PinchZoomStep (native_player_actions.hpp).
void PinchZoomBy(int amount) {
    Application& app = ApplicationGetInstance();
    if (!app.GetSavedOption("DPad")) {
        return;
    }
    ZoomHandler* zoom = app.m_zoomHandler;
    if (!zoom || !zoom->m_camera) {
        return;
    }
    CameraLevel* camera = zoom->m_camera;
    if (!camera->m_zoomLocked) {
        camera->m_zoomCurrent = PinchZoomStep(camera->m_zoomCurrent, amount, zoom->m_sensitivity);
    }
}

// 0x43d790 NativeInvGetEquipedItem(gameswf::fn_call const&)
// Three arguments: the slot (number), the result object (argument 1, used when it is an object) and the player index. The
// result is true and the object gets ItemName ("<font color='#%000000X'>name</font>" with the item's colour), ItemIndex and
// ItemColor (the item's power count) when the player has an item in that slot; otherwise false. For a slot outside the character's
// equipment slots the original also evaluates PyDataConstants "EquipmentSlots"/"Count" and drops the value, so that lookup is
// not repeated here. With any other argument count nothing happens.
void NativeInvGetEquipedItem(const gameswf::fn_call& call) {
    if (call.nargs != 3) {
        return;
    }
    const int slot = static_cast<int>(call.arg(0).to_number());
    gameswf::as_object* object = call.arg(1).is_object() ? call.arg(1).to_object() : nullptr;
    const int player = static_cast<int>(call.arg(2).to_number());
    bool found = false;
    Character* ch = NativeGetPlayerChar(player, false);
    if (ch && IsEquipmentSlotInRange(slot, ch->ItemInventory::GetNumEquipmentSlots())) {
        ItemInstance* item = ch->ItemInventory::GetEquippedItem(static_cast<unsigned int>(slot));
        if (item) {
            char text[1024];
            std::snprintf(text, sizeof text, "<font color='#%000000X'>%s</font>", static_cast<unsigned int>(item->GetColor()),
                          item->m_name.c_str());
            object->set_member(tu_stringi("ItemName"), gameswf::as_value(text));
            object->set_member(tu_stringi("ItemIndex"), gameswf::as_value(ch->ItemInventory::GetItemIndex(item)));
            object->set_member(tu_stringi("ItemColor"), gameswf::as_value(item->GetNumPowers()));
            found = true;
        }
    }
    call.result->set_bool(found);
}

// Body of NativeInvGetEquipedItem. Returns false when there is no character, the slot is out of range, or there is
// no item in the slot. Otherwise it returns true and gives the color, index and power count of the item.
bool GetEquippedItemInfo(int player, int slot, int* color, int* index, int* numPowers) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (!ch) {
        return false;
    }
    if (!IsEquipmentSlotInRange(slot, ch->ItemInventory::GetNumEquipmentSlots())) {
        return false;
    }
    ItemInstance* item = ch->ItemInventory::GetEquippedItem(static_cast<unsigned int>(slot));
    if (!item) {
        return false;
    }
    *color = item->GetColor();
    *index = ch->ItemInventory::GetItemIndex(item);
    *numPowers = item->GetNumPowers();
    return true;
}

// 0x43da2c NativeInvAutoEquipSlot(gameswf::fn_call const&): with two arguments, AutoEquipSlotOfPlayer(player = argument 1, slot = argument 0).
void NativeInvAutoEquipSlot(const gameswf::fn_call& call) {
    if (call.nargs == 2) {
        AutoEquipSlotOfPlayer(static_cast<int>(call.arg(1).to_number()), static_cast<int>(call.arg(0).to_number()));
    }
}

// Body of NativeInvAutoEquipSlot. Dispatch is in ClassifyAutoEquipSlot. Character vtable slots: +0x138 is
// EquipAllSlotsAuto, +0x140 is EquipSlotAuto and +0x144 is UnEquipItemFromSlot (asm checked). The in-range path
// unequips first, then equips automatically, and returns the EquipSlotAuto result.
void AutoEquipSlotOfPlayer(int player, int slot) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (!ch) {
        return;
    }
    switch (ClassifyAutoEquipSlot(slot, ch->ItemInventory::GetNumEquipmentSlots())) {
        case AutoEquipAction::kEquipAll:
            ch->EquipAllSlotsAuto();
            break;
        case AutoEquipAction::kUnequipThenEquip:
            ch->UnEquipItemFromSlot(static_cast<unsigned int>(slot));
            ch->EquipSlotAuto(static_cast<unsigned int>(slot));
            break;
        case AutoEquipAction::kNone:
            break;
    }
}

// 0x43dafc NativeOnHUDOpenEvent(gameswf::fn_call const&)
// Two arguments: a boolean (the HUD is open) and a number (the local player index). The flag is stored in the current level's
// per-player HUD flag byte (Level +0x190 + index). The original does not check that a level exists or that the index is below 4.
void NativeOnHUDOpenEvent(const gameswf::fn_call& call) {
    if (call.nargs == 2 && call.arg(0).is_bool() && call.arg(1).is_number()) {
        const bool open = call.arg(0).to_bool();
        const int index = static_cast<int>(call.arg(1).to_number());
        Singleton<Application>::s_inst.GetCurrentLevel()->m_playerHudOpen[index] = open;
    }
}

// 0x43dbb8 NativeReloadSkills(gameswf::fn_call const&): ReloadSkillsOfPlayer(argument 0, or the player 0 when there is no argument).
void NativeReloadSkills(const gameswf::fn_call& call) {
    const int player = call.nargs == 1 ? static_cast<int>(call.arg(0).to_number()) : 0;
    ReloadSkillsOfPlayer(player);
}

// Body of NativeReloadSkills.
void ReloadSkillsOfPlayer(int player) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (ch) {
        ch->ReloadSkills();
    }
}

// 0x43dc08 NativeSaveGame(gameswf::fn_call const&): SaveGameOfPlayer(argument 0, or the player 0 when there is no argument).
void NativeSaveGame(const gameswf::fn_call& call) {
    const int player = call.nargs == 1 ? static_cast<int>(call.arg(0).to_number()) : 0;
    SaveGameOfPlayer(player);
}

// Body of NativeSaveGame: Character::SG_Save, then the skill trophies. For each skill row (PlayerSavegame
// m_skillsSize rows, at least one), a level of 0 clears the all-skills flag and a level at the maximum unlocks
// "epic_maxskill". When the character is a player, the all-skills trophy is unlocked if the flag is still set, and
// "epic_spent_all_skill_points" when property 157 is zero and property 19 equals the MaxLevelDVeryHard constant.
// The asm checked the loop: the first level is tested before the bound, so the loop body runs once even when
// m_skillsSize is not positive. PyDataConstants is read once here instead of per iteration (a pure lookup).
void SaveGameOfPlayer(int player) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (!ch) {
        return;
    }
    ch->SG_Save();
    TrophyManager* trophies = TrophyManager::s_instance;
    PlayerSavegame* save = ch->m_savegame;
    bool allSkillsNonZero = true;  // the original's v7
    if (save && save->m_skillsSize != 0) {
        const int maxSkillLevel = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "MaxSkillLevelDVeryHard");
        int k = 0;
        do {
            const int level = ch->SG_GetSkillLevel(static_cast<unsigned int>(k));
            if (level == 0) {
                allSkillsNonZero = false;
            } else if (level == maxSkillLevel) {
                UnlockTrophyNamed(trophies, "epic_maxskill");
            }
            ++k;
        } while (k < save->m_skillsSize);
    }
    if (ch->IsPlayer()) {
        if (allSkillsNonZero) {
            UnlockTrophyNamed(trophies, "epic_all_skills_unlocked");
        }
        if (ch->PROPS_GetInt(157, false) == 0) {
            const int level = ch->PROPS_GetInt(19, false);
            if (level == ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "MaxLevelDVeryHard")) {
                UnlockTrophyNamed(trophies, "epic_spent_all_skill_points");
            }
        }
    }
}

// The "SettingInvitationPending" callback on the menu root with one boolean argument (the three callers differ only in it).
static void InvokeSettingInvitationPending(bool pending) {
    const gameswf::as_value argument(pending);
    MenuManager::GetInstance()->GetRoot()->InvokeASCallback("_root", "SettingInvitationPending", &argument, 1);
}

// 0x43de30 NativeStartFromGCInvite(gameswf::fn_call const&)
// Starts a game from a GameCenter invitation. The optional argument 0 is the save slot (0 when absent). The result is true only when
// the verification screen was opened. When the device gate (Device::IsHighPerformance, Is_In_Multiplayer_Mode, SHARP_DEVICES or
// HTC_DEVICES) is open: a missing save slot reports "SettingInvitationPending(true)" and returns false; with wifi on, the pending
// flag is cleared on the menu, the slot is assigned to the local player and, when the invitation was accepted (byte_99F83A), the
// online state is initialised in mode 3 and the "GoToVerificationScreen" callback runs. Otherwise, when either invite flag is set, the
// pending flag is cleared on the menu and both flags are reset.
void NativeStartFromGCInvite(const gameswf::fn_call& call) {
    const int slot = call.nargs == 1 ? static_cast<int>(call.arg(0).to_number()) : 0;
    bool gateOpen = Device::IsHighPerformance() || Is_In_Multiplayer_Mode || SHARP_DEVICES || HTC_DEVICES;
    if (gateOpen) {
        if (!PlayerSavegame::SG_Exists(static_cast<std::uint32_t>(slot))) {
            InvokeSettingInvitationPending(true);
            call.result->set_bool(false);
            return;
        }
        if (Singleton<Application>::s_inst.IsWifiEnabled()) {
            InvokeSettingInvitationPending(false);
            AssignSaveSlotToPlayer(slot, 0);
            if (byte_99F83A) {
                OnlineSingleton<OnlineGameState>::GetInstance()->Init(3);
                MenuManager::GetInstance()->GetRoot()->InvokeASCallback("_root", "GoToVerificationScreen", nullptr, 0);
                call.result->set_bool(true);
                return;
            }
            call.result->set_bool(false);
            return;
        }
    }
    if (!byte_99F81A && !byte_99F83A) {
        call.result->set_bool(false);
        return;
    }
    InvokeSettingInvitationPending(false);
    byte_99F83A = 0;
    byte_99F81A = 0;
    call.result->set_bool(false);
}

// 0x43e0d0 NativeStartGame(gameswf::fn_call const&)
// Starts (or resumes) the local player's game. Nothing happens while the current level is loaded (m_loadStep 38). The save slot is the
// local player's PlayerInfo +0x664; a PlayerSavegame is loaded for it (the original also calls SG_GetNextFreeSlot, unused, for a
// non-negative slot). With one numeric argument (a difficulty), the difficulty becomes the running one when it is not above the
// highest unlocked, and the save is written. The level comes from the save's level id for that difficulty (the first design settings
// default when -1); the entry point and the spawn-point flag come from the save in an offline game, while an online guest enters at
// entry point 1 and no game uses the spawn point. The spawn-point flag is cleared, the save is written and the level is loaded with
// Application::LoadLevel(name, entry, slot, true, spawnPoint, difficulty argument, false, 0, 0).
void NativeStartGame(const gameswf::fn_call& call) {
    Application& app = Singleton<Application>::s_inst;
    Level* level = app.GetCurrentLevel();
    if (level && level->m_loadStep == 38) {
        return;
    }
    const int slot = app.m_playerManager->GetLocalPlayer(0, false)->unk_664;
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
    _DEBUG_OUT("NativeStartGame: nargs %d slot %d lastSlot %d", call.nargs, slot, app.m_savegameManager->m_lastSlot);
#endif
    if (slot >= 0) {
        PlayerSavegame::SG_GetNextFreeSlot();
    }
    PlayerSavegame save(static_cast<std::uint32_t>(slot), 1, false);
    int difficultyArgument = 0;
    if (call.nargs == 1 && call.arg(0).is_number()) {
        difficultyArgument = call.arg(0).to_int();
        if (save.m_unlockedDifficulty >= difficultyArgument) {
            PlayerSavegame::m_difficultyLevel = difficultyArgument;
        }
        save.SG_Save();
    }
    const int difficulty = PlayerSavegame::m_difficultyLevel;
    int levelId = save.unk_50[difficulty];
    int entryPoint;
    bool useSpawnPoint;
    if (GetOnlineGameFlag()) {
        entryPoint = app.m_playerManager->IsLocalPlayerHosting() ? save.m_levelEntryPoint[difficulty] : 1;
        useSpawnPoint = false;
    } else {
        entryPoint = save.m_levelEntryPoint[difficulty];
        useSpawnPoint = save.m_useSpawnPoint[difficulty];
    }
    if (levelId == -1) {
        levelId = reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members)->DefaultLevelWhenInvalid;  // row 0 +0x24
    }
    save.m_useSpawnPoint[difficulty] = false;
    save.SG_Save();
    const char* levelName =
        static_cast<const char*>(reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members)[levelId].LevelFile);  // row +0x20
    app.LoadLevel(levelName, entryPoint, static_cast<std::uint32_t>(slot), true, useSpawnPoint, difficultyArgument, false, 0, 0);
    save.unk_194 = false;
}

// 0x43e308 NativeStartMultiplayerGame(gameswf::fn_call const&)
// The online state machine is set to state 300 on every path. In mode 3 (GLLive) the live game starts once: when its started flag
// (OnlineGameState +0x28) is clear, CMatchingGLLive::StartGame runs on the matching object and the flag is set. Any other mode
// starts the game through NativeStartGame.
void NativeStartMultiplayerGame(const gameswf::fn_call& call) {
    OnlineGameState* state = OnlineSingleton<OnlineGameState>::GetInstance();
    state->SetState(300);
    if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 3) {
        OnlineGameState* started = OnlineSingleton<OnlineGameState>::GetInstance();
        if (!started->flag28_) {
            static_cast<CMatchingGLLive*>(CMatching::Get())->StartGame();
            OnlineSingleton<OnlineGameState>::GetInstance()->flag28_ = true;
        }
    } else {
        NativeStartGame(call);
    }
}

// 0x43e494 NativeStatsReset(gameswf::fn_call const&)
// Two arguments: the player index (number) and a quote-only flag (boolean). The result is the gold cost, or undefined when the
// player has no character. Other arguments leave the result alone.
void NativeStatsReset(const gameswf::fn_call& call) {
    if (call.nargs == 2 && call.arg(0).is_number() && call.arg(1).is_bool()) {
        const int player = call.arg(0).to_int();
        const bool quoteOnly = call.arg(1).to_bool();
        int cost = 0;
        if (ResetStatsOfPlayer(player, quoteOnly, &cost)) {
            call.result->set_double(static_cast<double>(cost));
        } else {
            call.result->set_undefined();
        }
    }
}

// Body of NativeStatsReset. The cost is "StatsReset_GoldCostPerLevel" times the character's level. Unless
// quoteOnly is set, the character's stats and skills are reset and the cost is taken from the gold. Returns false
// when there is no character (the original then clears the result).
bool ResetStatsOfPlayer(int player, bool quoteOnly, int* costOut) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (!ch) {
        return false;
    }
    const int cost = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "StatsReset_GoldCostPerLevel") *
                     ch->GetLevel();
    if (!quoteOnly) {
        ch->ResetStats();
        ch->ResetSkills();
        ch->ItemInventory::AddGold(-cost);
    }
    *costOut = cost;
    return true;
}

// 0x43e600 NativeInvEquipItem(gameswf::fn_call const&)
// Three numbers: the item, the slot and the player index. The character equips the item in the slot (EquipItemToSlot, vtable
// +0x13c) and the result is cleared to undefined. Anything else does nothing.
void NativeInvEquipItem(const gameswf::fn_call& call) {
    if (call.nargs == 3 && call.arg(0).is_number() && call.arg(1).is_number() && call.arg(2).is_number()) {
        const int item = call.arg(0).to_int();
        const int slot = call.arg(1).to_int();
        const int player = call.arg(2).to_int();
        Character* ch = NativeGetPlayerChar(player, false);
        if (ch) {
            ch->EquipItemToSlot(static_cast<unsigned int>(item), static_cast<unsigned int>(slot));
            call.result->set_undefined();
        }
    }
}

// Body of NativeInvEquipItem: Character::EquipItemToSlot(item, slot) on the player's character.
void EquipItemInSlotOfPlayer(int player, int item, int slot) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (ch) {
        ch->EquipItemToSlot(static_cast<unsigned int>(item), static_cast<unsigned int>(slot));
    }
}

// 0x43e734 NativeHUDSkill(gameswf::fn_call const&): with one numeric argument, HudSkillForLocalPlayer(slot).
void NativeHUDSkill(const gameswf::fn_call& call) {
    if (call.nargs == 1 && call.arg(0).is_number()) {
        HudSkillForLocalPlayer(call.arg(0).to_int());
    }
}

// Body of NativeHUDSkill on the local player's character. Acts only when the character may act (CTRLIsAllowed) and
// the skill slot holds a skill. The original begins and ends the skill on the character's controller.
void HudSkillOnCharacter(Character* ch, int slot) {
    if (!ch || !ch->CTRLIsAllowed()) {
        return;
    }
    const int skill = ch->SG_GetSkillInSlot(slot);
    if (skill == -1) {
        return;
    }
    ch->m_controller->Cmd_BeginSkill(static_cast<unsigned int>(skill));
    ch->m_controller->Cmd_EndSkill(static_cast<unsigned int>(skill));
}

// Body of NativeHUDSkill for the local player. The original takes GetLocalPlayer(0, true) (PlayerManager on
// Application +0x40) and its character at PlayerInfo +0x660 (PlayerInfo::unk_660), then calls HudSkillOnCharacter. The
// original does not test the player pointer; the null test here is a guard that cannot change a reachable result.
void HudSkillForLocalPlayer(int slot) {
    PlayerInfo* local = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true);
    if (!local) {
        return;
    }
    HudSkillOnCharacter(local->unk_660, slot);
}

// 0x43e830 NativeMoveCharacter(gameswf::fn_call const&)
// Three numbers: the angle (a NaN angle stops the call), the scale and the player index. When the character may act
// (CTRLIsAllowed), the unit vector (1, -1, 0) is normalised, rotated by 90 - angle degrees about the origin, scaled and passed to
// v2Controller::Cmd_HeadTowards. The angle and the scale are narrowed to float, as the binary does (__aeabi_d2f).
void NativeMoveCharacter(const gameswf::fn_call& call) {
    if (call.nargs != 3) {
        return;
    }
    const gameswf::as_value& angleArg = call.arg(0);
    if (!angleArg.is_number() || std::isnan(angleArg.to_number())) {
        return;
    }
    if (!call.arg(1).is_number() || !call.arg(2).is_number()) {
        return;
    }
    const double angle = call.arg(0).to_number();
    const double scale = call.arg(1).to_number();
    Character* ch = NativeGetPlayerChar(call.arg(2).to_int(), false);
    if (ch && ch->CTRLIsAllowed()) {
        Point3D<float> heading{1.0f, -1.0f, 0.0f};
        heading.normalize();
        const Point3D<float> origin{0.0f, 0.0f, 0.0f};
        heading.rotateXYBy(90.0f - static_cast<float>(angle), origin);
        const float scaleF = static_cast<float>(scale);
        const Point3D<float> target{scaleF * heading.X, scaleF * heading.Y, scaleF * heading.Z};
        ch->m_controller->Cmd_HeadTowards(target);
    }
}

// 0x43ea0c NativeUnlockCharacter(gameswf::fn_call const&): with one numeric (not NaN) argument, UnlockCharacterControl(player);
// when the character exists the script-visible result is set to false (set_bool(result, 0) after NativeSetLockZoom).
void NativeUnlockCharacter(const gameswf::fn_call& call) {
    if (call.nargs == 1 && call.arg(0).is_number() && !std::isnan(call.arg(0).to_number())) {
        if (UnlockCharacterControl(call.arg(0).to_int())) {
            call.result->set_bool(false);
        }
    }
}

// Body of NativeUnlockCharacter: clears the controller's block flag and the zoom lock.
bool UnlockCharacterControl(int player) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (!ch) {
        return false;
    }
    ch->m_controller->m_blocked = false;
    NativeSetLockZoom(false);
    return true;
}

// 0x43eac0 NativeLockCharacter(gameswf::fn_call const&): with one numeric (not NaN) argument, LockCharacterControl(player);
// when the character exists the script-visible result is set to false (set_bool(result, 0) after NativeSetLockZoom).
void NativeLockCharacter(const gameswf::fn_call& call) {
    if (call.nargs == 1 && call.arg(0).is_number() && !std::isnan(call.arg(0).to_number())) {
        if (LockCharacterControl(call.arg(0).to_int())) {
            call.result->set_bool(false);
        }
    }
}

// Body of NativeLockCharacter: stops the character, sets the controller's block flag and the zoom lock.
bool LockCharacterControl(int player) {
    Character* ch = NativeGetPlayerChar(player, false);
    if (!ch) {
        return false;
    }
    ch->m_controller->Cmd_Stop();
    ch->m_controller->m_blocked = true;
    NativeSetLockZoom(true);
    return true;
}
