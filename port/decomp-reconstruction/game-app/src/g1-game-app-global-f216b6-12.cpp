// Batch g1-game-app-global-f216b6-12 (<global>, part 13 of 22): the gameswf natives of the message queues, online kick
// and login, equipment swap, zone travel, skill lists and details, ranking, world map, quest list, merchant list, HUD
// back, map icons, iPod, string lookup and multiplayer rooms, ELF 0x440e5c .. 0x445a10. Declarations:
// dh2/global/native_gameswf_menus.hpp.
//
// What is reconstructed and what is not:
//   - BubbleSortByTitle (header) is the title sort of NativeGetQuestIDsInRange. It is tested in
//     game-app/tests/g1-game-app-global-f216b6-12_test.cpp.
//   - (First wave, before the r3b-w1 redo.) Every native was PARTIAL. The redo completed the ones named in their ledger
//     rows (reconstructed); the statuses below are historical. Each one either reads an argument or writes its result through gameswf, which was the
//     blocker for all twenty, or it needs a piece the tree does not declare yet: the Singleton accessor and the
//     s_SkipFuncName and s_StartFuncName pointers of the message queues, the OnlineStatusMsg, StatusMsg and TutorialMsg
//     classes, RenderFX::InvokeASCallback and RenderFX::GetRoot, and MultiMenuManager::ResetUpdateCursor. The bodies are
//     shells. The comment above each one gives the original's steps so that it can be filled in when those land.
//
// Shared facts used by the comments:
//   - Argument layout. fn_call +12 is the environment pointer (env, the object that fn_call +0x0c points to; see
//     dh2/global/native_app_hud_level.hpp). The argument array base is the word at env +0x00, that is **(fn_call +12).
//     fn_call +16 is the argument count and +20 the index of the last argument ("top"). "top-1" is the argument below
//     it, and the value at index i is at base + 12 * i. A value record is 12 bytes and its tag is the byte at +1:
//     1 boolean, 2 number, 5 object. Tags 3 and 4 are the string kinds (NativeStopMessage accepts either). The result
//     value is the fn_call's first pointer (*call).
//   - Application singleton: Singleton<Application>::s_inst. Application::GetCurrentLevel() is the current Level or
//     null. Application::LoadLevel takes (name, entryPointId, savegameSlot, resume, useSpawnPoint, difficulty,
//     isRemotelyTriggered, seed, syncedSeed).
//   - Level fields: m_isLoaded +0x144, m_loadStep +0x130 (38 = loaded), m_isInGameView +0x198.
//   - Character sub-objects: ItemInventory +0x37c, CharProperties +0x560, CharAI +0x3c8. PlayerInfo +0x660 is the
//     local player's character (named character_660 in the Hex-Rays output).
//   - NativeGetPlayerChar(int, bool) is declared in dh2/global/native_app_bindings.hpp and returns Character*.
//   - MenuManager: GetInstance() is static. m_multiMenuManager +0xf4, m_actionIconType +0x108.
//   - HUDControls (dh2/HUDControls.hpp): static GetInstance() and Touch().
//   - MenuMessageManager<T, N> (dh2/MenuMessageManager.hpp) keeps one std::deque per queue in m_queues[N], at +4 of
//     the object. Its Invoke(functionName, queue) and SkipEnqueuedMessage(queue, flag) take a queue index, and the
//     pseudocode passes none of them. The Hex-Rays deque globals (dword_99FBB8 and the others) are not tied to a
//     singleton instance address in the tree, and Singleton<T>::s_inst is not declared.
//   - OnlineSingleton<OnlineGameState>::GetInstance() is the online game state (net-session-online/online_game_state.hpp). Its state word
//     +0x14 is the state machine (GetState / SetState), mode_ is +0x34 and RoomInfos() is the room list at +0x50.
//   - CMatching::Get() takes no argument. The assembly of NativeLoginInfos (0x444ae0) calls it with none, so the
//     argument that Hex-Rays prints on some of its calls is a decompiler artifact.
//   - Global instance pointers without an accessor in the tree: the StringManager global at 0x99f760, the
//     PyDataConstants global at 0x99f758, the ObjectManager global at 0x99f764 (ObjectManager::GetObjectByName(name,
//     flags, active, type) is declared in dh2/ObjectManager.hpp), the PlayerManager global at 0x99f76c, the MenuManager
//     global at 0x99f780 (dh2/MenuManager.hpp declares a static GetInstance(), not checked against this global) and the
//     ZoomHandler global at 0x99f77c.
//   - The gameswf value API (argument accessors, value setters, as_object and as_array members, tu_string, drop_refs)
//     is not in the tree. dh2/global/native_app_bindings.hpp records the accessor signatures from the assembly, but
//     they are not declared. A native that uses them is PARTIAL, and its comment lists the calls it needs.
//   - Arrays::FastTravelList (stride 28), Arrays::LevelList (stride 72) and Arrays::v2Quests (stride 284) are in
//     pydata-accessors (array_strides.hpp, member_names.hpp).

#include "dh2/global/native_gameswf_menus.hpp"
#include "net-transport/net_trace.hpp"  // DH2_NET_TRACE_LOG (host runner only)

#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "core-platform/w7_global_rem.hpp"
#include "dh2/AchievementMsg.hpp"
#include "dh2/Application.hpp"
#include "dh2/CharMenuTutorialMsg.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerStatManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/multi_menu_manager.hpp"
#include "dh2/global/native_app_bindings.hpp"
#include "gameswf/gameswf_as_classes/as_array.h"
#include "gameswf/gameswf_environment.h"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/OnlineStatusMsg.hpp"
#include "dh2/Quest.hpp"
#include "dh2/StatusMsg.hpp"
#include "dh2/TutorialMsg.hpp"
#include "dh2/VarArgs.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/ZoomHandler.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_sort.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/global/native_object_helpers.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/global/native_stats_inventory_merchant.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "core-platform/stlport_sort.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/global/save_remember.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/t_member_info.hpp"
#include "net-session-online/t_room_info.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"
#include "net-transport/tb/cnet_player_info.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "vendor-gameswf/as_value.hpp"
#include "vendor-gameswf/gameswf_root.hpp"

// 0x440e5c NativeGetNextOnlineStatusMessage(gameswf::fn_call const&)
// No argument is read. When the OnlineStatusMsg queue (MenuMessageManager<OnlineStatusMsg, 1>, queue 0) is not empty, the result is
// the text of its front message (the message is not removed). The original first builds the literal "not yet supported with no hud
// code" and drops it, and an empty queue leaves the result unset.
void NativeGetNextOnlineStatusMessage(const gameswf::fn_call& call) {
    const std::deque<OnlineStatusMsg>& queue = MenuMessageManager<OnlineStatusMsg, 1>::s_inst.m_queues[0];
    if (!queue.empty()) {
        const std::string text = queue.front();
        call.result->set_string(text.c_str());
    }
}

// 0x441b60 NativeKickPlayerOut(gameswf::fn_call const&)
// The player id is to_number of the top argument. With the online state's mode word (+0x34) at 3 (GLLive): CMatchingGLLive::GetMemberByMemberId(id)
// finds the member record (the original copies it into a local, so it reads a stable record), and a member whose first word (the member id) is
// not -1 is kicked: CMatching::Get() and its virtual at vtable +0x40 (KickMember) with the id. In the other modes the original walks a copy of
// CNetPlayerManager::GetPlayerIdList(); for each id it copies GetPlayer(id, false) into a local CNetPlayerInfo (the copy has no effect and is not
// made here) and compares the matching member id of that player (NetStruct value at +0x1a0) with the argument; on a match it kicks the same
// way. The loop does not stop after a kick: every listed player whose word equals the argument is kicked (the call repeats). A player the
// manager does not give out (GetPlayer null) is skipped; the original dereferences it. The native writes no result.
void NativeKickPlayerOut(const gameswf::fn_call& call) {
    const int id = static_cast<int>(call.arg(0).to_number());
    if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 3) {
        CMatchingGLLive* matching = static_cast<CMatchingGLLive*>(CMatching::Get());
        tMemberInfo* member = matching->GetMemberByMemberId(id);
        if (member != nullptr && member->memberId_ != -1) {
            CMatching::Get()->KickMember(id);
        }
    } else {
        const std::vector<int> playerIds = GetNetPlayerMgr()->GetPlayerIdList();
        for (const int playerId : playerIds) {
            const CNetPlayerInfo* player = GetNetPlayerMgr()->GetPlayer(playerId, false);
            if (player != nullptr && player->matching_member_id_.GetValue() == id) {
                CMatching::Get()->KickMember(id);
            }
        }
    }
}

// 0x442198 NativeSwapEquipment(gameswf::fn_call const&)
// The player index is to_number of the top argument. For the Character from NativeGetPlayerChar(index, false), when it
// is non-null, the original runs ItemInventory::SwapEquipmentSet on the inventory at +0x37c, then
// CharProperties::UpdateGearsProperties at +0x560, Character::INV_CheckItemsRequirements, Character::INV_UpdateSkin and
// Character::ValidateHPMP. Then the HUD: RenderFX::InvokeASCallback "DisplayRightHud" with no arguments, and
// "FillActionIcon" with one number, MenuManager::GetInstance()->m_actionIconType (+0x108). The HUD root is
// MenuManager::GetHUDRoot(); its root movie is RenderFX::GetRoot()->get_root_movie().
void NativeSwapEquipment(const gameswf::fn_call& call) {
    Character* ch = NativeGetPlayerChar(static_cast<int>(call.arg(0).to_number()), false);
    if (ch != nullptr) {
        ch->ItemInventory::SwapEquipmentSet();
        ch->CharProperties::UpdateGearsProperties();
        ch->INV_CheckItemsRequirements();
        ch->INV_UpdateSkin();
        ch->ValidateHPMP();
    }
    MenuFX* hud = MenuManager::GetInstance()->GetHUDRoot();
    gameswf::character* rootMovie = hud->RenderFX::GetRoot()->get_root_movie();
    hud->InvokeASCallback(rootMovie, "DisplayRightHud", nullptr, 0);
    gameswf::character* hudMovie = hud->RenderFX::GetRoot()->get_root_movie();
    gameswf::as_value icon;
    icon.set_double(static_cast<double>(MenuManager::GetInstance()->m_actionIconType));
    hud->InvokeASCallback(hudMovie, "FillActionIcon", &icon, 1);
}

// 0x4422b8 NativeGoToZone(gameswf::fn_call const&)
// The zone name is to_string of the top argument. The entry point id is to_number of the argument below it, with -1
// changed to 0. The original then runs this block when there is no current level or the current level is loaded
// (m_isLoaded +0x144). If there is a level and its m_loadStep (+0x130) is 38, it calls Level::QuickSave(false). It then
// calls Level::SG_SaveAllPlayer(false), and the save slot is Character::SG_GetSlot of the local player's character
// (PlayerInfo +0x660). With no level the slot is 0. When the name is not empty, the original searches Arrays::LevelList
// for the name, and the level file name is the row's string at +32 (LevelDeclaration::m_w8). It then reads
// Character::SG_GetGameDifficulty of the local player's character, runs RenderFX "DisplayFastTravel" with four
// arguments (false, name, name, entry id), and calls Application::LoadLevel(level file, entry id, slot, true, true,
// difficulty, false, 0, 0). A name that is not in the table: the original reads the element before the table (row -1,
// offset -72). A rebuild rejects it: nothing is called after the search and the table is not read.
void NativeGoToZone(const gameswf::fn_call& call) {
    const std::string name(call.arg(0).to_string());
    int entryPointId = static_cast<int>(call.arg(1).to_number());
    if (entryPointId == -1) {
        entryPointId = 0;
    }
    Application& app = ApplicationGetInstance();
    Level* level = app.GetCurrentLevel();
    if (level != nullptr && !level->m_isLoaded) {
        return;
    }
    unsigned int slot = 0;
    if (level != nullptr) {
        if (level->m_loadStep == 38) {
            level->QuickSave(false);
        }
        level->SG_SaveAllPlayer(false);
        slot = static_cast<unsigned int>(app.m_playerManager->GetLocalPlayer(0, true)->unk_660->SG_GetSlot());
    }
    if (name.empty()) {
        return;
    }
    // The first of the first LevelList::size names equal to the requested one (Arrays::LevelList::m_memberNames).
    int levelIndex = -1;
    for (int i = 0; i < static_cast<int>(Arrays::LevelList::size); ++i) {
        if (std::strcmp(name.c_str(), Arrays::LevelList::m_memberNames.names[i]) == 0) {
            levelIndex = i;
            break;
        }
    }
    if (levelIndex < 0) {
        return;
    }
    const auto* rows = static_cast<const Structs::LevelDeclaration*>(static_cast<const void*>(Arrays::LevelList::members));
    const char* levelFile = static_cast<const char*>(rows[levelIndex].LevelFile);
    const int difficulty = app.m_playerManager->GetLocalPlayer(0, true)->unk_660->SG_GetGameDifficulty();
    gameswf::as_value args[4];
    args[0].set_bool(false);
    args[1].set_string(name.c_str());
    args[2].set_string(name.c_str());
    args[3].set_double(static_cast<double>(entryPointId));
    MenuFX* hud = MenuManager::GetInstance()->GetHUDRoot();
    hud->InvokeASCallback(hud->RenderFX::GetRoot()->get_root_movie(), "DisplayFastTravel", args, 4);
    app.LoadLevel(levelFile, entryPointId, slot, true, true, difficulty, false, 0, 0);
}

// Body of NativeSkillGetEquipedSkillsIDs: the three equipped skill slots of the character (Character::SG_GetSkillInSlot).
bool EquippedSkillIdsOfPlayer(int player, bool flag, int (&ids)[3]) {
    Character* ch = NativeGetPlayerChar(player, flag);
    if (!ch) {
        return false;
    }
    for (int i = 0; i < 3; ++i) {
        ids[i] = ch->SG_GetSkillInSlot(i);
    }
    return true;
}

// 0x4425a0 NativeSkillGetEquipedSkillsIDs(gameswf::fn_call const&)
// Needs two or three arguments. The top argument must be an object (tag 5) and the one below it a number (the player
// index). With three arguments, the third from the top must be undefined or boolean (tag 0 or 1). Its to_bool is the
// flag for NativeGetPlayerChar(index, flag). The top object (cast to as_array) gets the three equipped skill ids,
// Character::SG_GetSkillInSlot(character, 0..2), each pushed as a number. Then the result is set to true. With no
// character the result is left as it was. The original pushes into the array without a null check; a null array is
// skipped here, because the original would fault on it.
void NativeSkillGetEquipedSkillsIDs(const gameswf::fn_call& call) {
    if (call.nargs != 2 && call.nargs != 3) {
        return;
    }
    if (!call.arg(0).is_object() || !call.arg(1).is_number()) {
        return;
    }
    if (call.nargs == 3 && !call.arg(2).is_undefined() && !call.arg(2).is_bool()) {
        return;
    }
    gameswf::as_array* skills = gameswf::cast_to<gameswf::as_array>(call.arg(0).to_object());
    const int player = static_cast<int>(call.arg(1).to_number());
    const bool flag = call.nargs == 3 ? call.arg(2).to_bool() : false;
    int ids[3] = {0, 0, 0};
    if (!EquippedSkillIdsOfPlayer(player, flag, ids)) {
        return;
    }
    if (skills != nullptr) {
        for (int i = 0; i < 3; ++i) {
            gameswf::as_value id;
            id.set_double(static_cast<double>(ids[i]));
            skills->push(id);
        }
    }
    call.result->set_bool(true);
}

// 0x442838 NativeSkipCharMenuTutorialMessage(gameswf::fn_call const&)
// No argument is read. If the CharMenuTutorialMsg queue (queue 0 of Singleton<MenuMessageManager<CharMenuTutorialMsg, 1>>,
// the deque at +0x04) is not empty, the original pops the front. When CharMenuTutorialMsg::s_SkipFuncName is set, it
// calls MenuMessageManager<CharMenuTutorialMsg, 1>::Invoke with that name. The asm (0x442838) tail-calls Invoke with
// r0 = the name and r1 never set in this function, so the queue argument is not read by the call and 0 is passed.
void NativeSkipCharMenuTutorialMessage(const gameswf::fn_call& call) {
    (void)call;
    auto& manager = Singleton<MenuMessageManager<CharMenuTutorialMsg, 1>>::s_inst;
    if (manager.m_queues[0].empty()) {
        return;
    }
    manager.m_queues[0].pop_front();
    if (CharMenuTutorialMsg::s_SkipFuncName != nullptr) {
        manager.Invoke(CharMenuTutorialMsg::s_SkipFuncName, 0);
    }
}

// 0x442994 NativeSkipAchievementMessage(gameswf::fn_call const&)
// No argument is read. If the AchievementMsg queue (queue 0 of Singleton<MenuMessageManager<AchievementMsg, 1>>) is not
// empty, the original pops the front. It calls MenuMessageManager<AchievementMsg, 1>::Invoke on
// AchievementMsg::s_SkipFuncName when that is set. Then, if the queue is still not empty, it calls the same Invoke on
// AchievementMsg::s_StartFuncName (the queue argument is not read, as in NativeSkipCharMenuTutorialMessage).
void NativeSkipAchievementMessage(const gameswf::fn_call& call) {
    (void)call;
    auto& manager = Singleton<MenuMessageManager<AchievementMsg, 1>>::s_inst;
    if (manager.m_queues[0].empty()) {
        return;
    }
    manager.m_queues[0].pop_front();
    if (AchievementMsg::s_SkipFuncName != nullptr) {
        manager.Invoke(AchievementMsg::s_SkipFuncName, 0);
    }
    if (!manager.m_queues[0].empty()) {
        manager.Invoke(AchievementMsg::s_StartFuncName, 0);
    }
}

// 0x442ea4 NativeStopMessage(gameswf::fn_call const&)
// At least one argument, and the top one a string (type 3 or 4); its text is the message kind. The original compares it with five
// function-local statics ("status", "tutorial", "dialog", "quest", "online"; the first two are the text of the same statics) after
// PlayerManager::GetLocalPlayer(0, false), whose result is not used.
//   status:   when the StatusMsg queue 0 is not empty, its front is popped, the skip function runs when set
//             (StatusMsg::s_SkipFuncName) and the start function (s_StartFuncName[0]) runs when messages remain.
//   tutorial: the same for the TutorialMsg queue (MenuMessageManager<TutorialMsg, 1>::SkipEnqueuedMessage).
//   dialog:   in an online game only the host goes on: it sends a CMsgScriptCmd (command 3, script -1, module -1) first. Then, online
//             host or offline, the DialogMsg queue skips its front (MenuMessageManager<DialogMsg, 1>::SkipEnqueuedMessage).
//   quest:    the DialogMsg queue skips its front.
//   online:   the OnlineStatusMsg queue pops its front as the status queue does.
// Any other text does nothing.
void NativeStopMessage(const gameswf::fn_call& call) {
    if (call.nargs <= 0 || !call.arg(0).is_string()) {
        return;
    }
    const std::string kind(call.arg(0).to_xstring());
    Singleton<Application>::s_inst.m_playerManager->GetLocalPlayer(0, false);
    if (kind == "status") {
        MenuMessageManager<StatusMsg, 4>& manager = MenuMessageManager<StatusMsg, 4>::s_inst;
        std::deque<StatusMsg>& queue = manager.m_queues[0];
        if (!queue.empty()) {
            queue.pop_front();
            if (StatusMsg::s_SkipFuncName) {
                manager.Invoke(StatusMsg::s_SkipFuncName, 0);
            }
            if (!queue.empty()) {
                manager.Invoke(StatusMsg::s_StartFuncName[0], 0);
            }
        }
        return;
    }
    if (kind == "tutorial") {
        MenuMessageManager<TutorialMsg, 1>::s_inst.SkipEnqueuedMessage(0, true);
        return;
    }
    if (kind == "dialog") {
        if (GetOnlineGameFlag()) {
            if (!Singleton<Application>::s_inst.m_playerManager->IsLocalPlayerHosting()) {
                return;
            }
            CMessaging* messaging = GetMessaging();
            CMsgScriptCmd* message = static_cast<CMsgScriptCmd*>(CMessage::CreateMessage("CMsgScriptCmd", true));
            message->command_ = 3;     // +0x50
            message->module_ = -1;     // +0x58
            message->scriptId_ = -1;   // +0x54
            messaging->SendMsg(message);
        }
        MenuMessageManager<DialogMsg, 1>::s_inst.SkipEnqueuedMessage(0, true);
        return;
    }
    if (kind == "quest") {
        MenuMessageManager<DialogMsg, 1>::s_inst.SkipEnqueuedMessage(0, true);
        return;
    }
    if (kind == "online") {
        MenuMessageManager<OnlineStatusMsg, 1>& manager = MenuMessageManager<OnlineStatusMsg, 1>::s_inst;
        std::deque<OnlineStatusMsg>& queue = manager.m_queues[0];
        if (!queue.empty()) {
            queue.pop_front();
            if (OnlineStatusMsg::s_SkipFuncName) {
                manager.Invoke(OnlineStatusMsg::s_SkipFuncName, 0);
            }
            if (!queue.empty()) {
                manager.Invoke(OnlineStatusMsg::s_StartFuncName[0], 0);
            }
        }
    }
}

// Body of NativeGetPlayerRanking: the seven stat names and values of the player, read from the PlayerStatManager
// singleton in EStatType order (0..6).
void RankingStatsOfPlayer(int player, std::string (&names)[7], int (&values)[7]) {
    PlayerStatManager& stats = Singleton<PlayerStatManager>::s_inst;
    for (int stat = 0; stat < 7; ++stat) {
        const EStatType type = static_cast<EStatType>(stat);
        names[stat] = stats.GetStatStr(type);
        values[stat] = stats.GetStatValue(type, player);
    }
}

// 0x44344c NativeGetPlayerRanking(gameswf::fn_call const&)
// The output object is the top argument when it has tag 5. The player index is to_number of the argument below it. For
// each of the seven stats 0..6, the original sets a property on the object: the name is PlayerStatManager::GetStatStr(stat)
// and the number is GetStatValue(stat, player), both read by RankingStatsOfPlayer. The result is the object (set_as_object).
// The property setter is as_object::set_member (vtable +0x1c). The original's exception path (the release of a heap
// tu_string name) is the std::string destructor here.
void NativeGetPlayerRanking(const gameswf::fn_call& call) {
    gameswf::as_object* obj = call.arg(0).to_object();
    const int player = static_cast<int>(call.arg(1).to_number());
    std::string names[7];
    int values[7] = {0, 0, 0, 0, 0, 0, 0};
    RankingStatsOfPlayer(player, names, values);
    if (obj != nullptr) {
        for (int stat = 0; stat < 7; ++stat) {
            gameswf::as_value value;
            value.set_double(static_cast<double>(values[stat]));
            obj->set_member(tu_stringi(names[stat].c_str()), value);
        }
    }
    call.result->set_as_object(obj);
}

// 0x4435e4 NativeGetWorldMapLocations(gameswf::fn_call const&)
// Argument 0 is the output array (an object), argument 1 the player index. For a player's character, every Arrays::FastTravelList row
// (28-byte rows in the file) becomes an object bound to the call's player with Name (string of row +24), Importance (row +20),
// LevelName (row +16), EntryPointId (row +8), Description (string of row +4) and Visible (Character::SG_GetFastTravelIdUnlocked(
// index, -1)), pushed onto the array. The result is the array.
void NativeGetWorldMapLocations(const gameswf::fn_call& call) {
    gameswf::as_array* array = call.arg(0).is_object() ? gameswf::cast_to<gameswf::as_array>(call.arg(0).to_object()) : nullptr;
    Character* ch = NativeGetPlayerChar(static_cast<int>(call.arg(1).to_number()), false);
    if (ch && Arrays::FastTravelList::size) {
        const Structs::FastTravelDestination* rows = reinterpret_cast<const Structs::FastTravelDestination*>(Arrays::FastTravelList::members);
        StringManager* strings = ApplicationGetStringManager();
        for (std::uint32_t index = 0; index < Arrays::FastTravelList::size; ++index) {
            const Structs::FastTravelDestination& row = rows[index];
            gameswf::as_object* object = nativeobj::NewObject(call);
            nativeobj::SetString(object, "Name", strings->getString(row.StringId));
            nativeobj::SetNumber(object, "Importance", static_cast<double>(row.LocationType));
            nativeobj::SetString(object, "LevelName", static_cast<const char*>(row.LevelName));
            nativeobj::SetNumber(object, "EntryPointId", static_cast<double>(row.EntryPointId));
            nativeobj::SetString(object, "Description", strings->getString(row.DescriptionId));
            nativeobj::SetBool(object, "Visible", ch->SG_GetFastTravelIdUnlocked(static_cast<int>(index), -1));
            nativeobj::PushObject(array, object);
        }
    }
    call.result->set_as_object(array);
}

// 0x443b18 NativeGetQuestIDsInRange(gameswf::fn_call const&)
// Arguments: the output array (0), the player index (1), the first quest id (2, clamped to 0), the maximum count (3) and the quest
// state name (4). The filter is GetQuestFunctor(name); the quest count is Character::SG_GetNumQuests(filter, -1) capped at the maximum.
// The first quest is SG_GetQuestByID(filter, first, -1), each next one SG_GetNextQuest(filter, id + 1, -1); the loop counter starts at
// the first id and runs while it is below the capped count (the original uses the first id as both the first quest and the counter).
// The quests are sorted by title and each becomes an object with QuestTitle, QuestID (Quest +0x08) and IsCurrent
// (SG_GetCurrentQuest(-1) equals the id), pushed onto the array. The result is the number of objects, 0 without a character.
void NativeGetQuestIDsInRange(const gameswf::fn_call& call) {
    gameswf::as_array* array = call.arg(0).is_object() ? gameswf::cast_to<gameswf::as_array>(call.arg(0).to_object()) : nullptr;
    const int player = static_cast<int>(call.arg(1).to_number());
    const int first = static_cast<int>(call.arg(2).to_number());
    const int maximum = static_cast<int>(call.arg(3).to_number());
    const char* stateName = call.arg(4).to_tu_string().c_str();
    int pushed = 0;
    Character* ch = NativeGetPlayerChar(player, false);
    if (ch) {
        QuestPredicate filter = GetQuestFunctor(stateName);
        int limit = ch->SG_GetNumQuests(filter, -1);
        int counter = first & ~(first >> 31);
        if (limit >= maximum) {
            limit = maximum;
        }
        std::vector<Quest*> quests;
        Quest* quest = ch->SG_GetQuestByID(filter, counter, -1);
        while (quest != nullptr && counter < limit) {
            quests.push_back(quest);
            quest = ch->SG_GetNextQuest(filter, quest->m_pyDataIndex + 1, -1);
            ++counter;
        }
        BubbleSortByTitle(quests, [](const Quest* q) { return q->GetTitle(); });
        for (std::size_t i = 0; i < quests.size(); ++i) {
            gameswf::as_object* object = nativeobj::NewObject(call);
            nativeobj::SetString(object, "QuestTitle", quests[i]->GetTitle());
            nativeobj::SetNumber(object, "QuestID", static_cast<double>(quests[i]->m_pyDataIndex));
            nativeobj::SetBool(object, "IsCurrent", ch->SG_GetCurrentQuest(-1) == quests[i]->m_pyDataIndex);
            nativeobj::PushObject(array, object);
            ++pushed;
        }
    }
    call.result->set_double(static_cast<double>(pushed));
}

// 0x444168 NativeMerchantGetItemsListForSlot(gameswf::fn_call const&)
// Arguments: the equipment slot (0), the output array (1), the player index (2), the merchant object's name (3) and the lookup flags
// (4). For a player's character and a merchant of that name (an object with IsMerchant), the merchant's items for the slot are
// listed (ItemInventory::GetValuableItems when the slot equals PyDataConstants "EquipmentSlots"/"Count", else GetItemListForSlot),
// sorted with II_Item_sortbybuyback (STLport introsort), and each becomes an object with ItemName ("<font color='#%000000X'>name
// </font>"), ItemIndex (the entry's index), ItemEquippable (valuable mode or IsEquippableBy the player), ItemEquipped (not valuable
// mode and the item is the player's equipped item for the slot), ItemBuyback (ItemInstance +0x69) and ItemQuantity (the quantity as a
// decimal in valuable mode, a space otherwise), pushed onto the array. The result is the array.
void NativeMerchantGetItemsListForSlot(const gameswf::fn_call& call) {
    const int slot = static_cast<int>(call.arg(0).to_number());
    gameswf::as_array* array = call.arg(1).is_object() ? gameswf::cast_to<gameswf::as_array>(call.arg(1).to_object()) : nullptr;
    const int player = static_cast<int>(call.arg(2).to_number());
    const char* merchantName = call.arg(3).to_string();
    const int flags = static_cast<int>(call.arg(4).to_number());
    Character* ch = NativeGetPlayerChar(player, false);
    std::vector<ItemInventory::Item> items;
    if (ch) {
        ObjectHandle handle = Singleton<Application>::s_inst.m_objectManager->GetObjectByName(merchantName, flags, false, nullptr);
        Character* merchant = handle.operator Character*();
        if (merchant && merchant->IsMerchant()) {
            ItemInventory& merchantInventory = *merchant;
            const bool valuable = ApplicationGetPyDataConstants()->getConstant("EquipmentSlots", "Count") == slot;
            if (valuable) {
                merchantInventory.GetValuableItems(&items);
            } else {
                merchantInventory.GetItemListForSlot(static_cast<unsigned int>(slot), &items);
            }
            if (!items.empty()) {
                stlport::Sort(items.begin(), items.end(), II_Item_sortbybuyback);
                for (const ItemInventory::Item& entry : items) {
                    ItemInstance* item = entry.m_item;
                    if (!item) {
                        continue;
                    }
                    char text[1024];
                    std::snprintf(text, sizeof text, "<font color='#%000000X'>%s</font>", static_cast<unsigned int>(item->GetColor()),
                                  item->m_name.c_str());
                    gameswf::as_object* object = nativeobj::NewObject(call);
                    nativeobj::SetString(object, "ItemName", text);
                    nativeobj::SetNumber(object, "ItemIndex", static_cast<double>(static_cast<int>(entry.m_index)));
                    nativeobj::SetBool(object, "ItemEquippable", valuable || item->IsEquippableBy(ch));
                    nativeobj::SetBool(object, "ItemEquipped",
                                       !valuable && item == static_cast<ItemInventory&>(*ch).GetEquippedItem(static_cast<unsigned int>(slot)));
                    nativeobj::SetBool(object, "ItemBuyback", item->unk_69);
                    char quantity[16];
                    if (valuable) {
                        std::snprintf(quantity, sizeof quantity, "%d", static_cast<int>(item->m_qty));
                    } else {
                        quantity[0] = ' ';
                        quantity[1] = '\0';
                    }
                    nativeobj::SetString(object, "ItemQuantity", quantity);
                    nativeobj::PushObject(array, object);
                }
            }
        }
    }
    call.result->set_as_object(array);
}

// 0x444990 NativeBackToHud(gameswf::fn_call const&)
// No argument is read. With a current level, its in-game view flag (m_isInGameView, +0x198) is set. Unless the cut-scene byte
// (ScriptManager::m_inCutScene, byte_9A600C) is set, the HUD gets "DisplayRightHud" with no arguments and "FillActionIcon" with one
// number, MenuManager::GetInstance()->m_actionIconType (+0x108). Then the zoom finger map is reset, the multi-menu manager resets its
// update cursor (MenuManager +0xf4), HUDControls::GetInstance()->Touch() runs, and when the local player has a character its armour
// set trophy is checked (ItemInventory::TrophyCheckArmorSet).
void NativeBackToHud(const gameswf::fn_call& /*call*/) {
    Application& app = Singleton<Application>::s_inst;
    Level* level = app.GetCurrentLevel();
    if (level) {
        level->m_isInGameView = true;
        if (!ScriptManager::s_inst.m_inCutScene) {
            MenuFX* hud = MenuManager::GetInstance()->GetHUDRoot();
            gameswf::character* rootMovie = hud->RenderFX::GetRoot()->get_root_movie();
            hud->InvokeASCallback(rootMovie, "DisplayRightHud", nullptr, 0);
            gameswf::character* hudMovie = hud->RenderFX::GetRoot()->get_root_movie();
            gameswf::as_value icon;
            icon.set_double(static_cast<double>(MenuManager::GetInstance()->m_actionIconType));
            hud->InvokeASCallback(hudMovie, "FillActionIcon", &icon, 1);
        }
        app.m_zoomHandler->ResetFingerMap();
        app.m_menuManager->m_multiMenuManager->ResetUpdateCursor();
        HUDControls::GetInstance()->Touch();
        PlayerInfo* local = app.m_playerManager->GetLocalPlayer(0, true);
        if (local->unk_660) {
            static_cast<ItemInventory&>(*app.m_playerManager->GetLocalPlayer(0, true)->unk_660).TrophyCheckArmorSet();
        }
    }
}

// 0x444ae0 NativeLoginInfos(gameswf::fn_call const&)
// The output object is the top argument when it is an object. Its "Username" property is set to the GLLive user name (CMatchingGLLive +0x6be1,
// a C string) and its "Password" property to the password (+0x6bf2); the result is the global save_remember (a boolean). The original calls
// through the object without a null test; a non-object argument leaves the object untouched here.
void NativeLoginInfos(const gameswf::fn_call& call) {
    gameswf::as_object* object = call.arg(0).is_object() ? call.arg(0).to_object() : nullptr;
    CMatchingGLLive* matching = static_cast<CMatchingGLLive*>(CMatching::Get());
    if (object != nullptr) {
        nativeobj::SetString(object, "Username", matching->userName_);
        nativeobj::SetString(object, "Password", matching->password_);
    }
    call.result->set_bool(save_remember);
}

// 0x444c68 NativeGetMapIcons(gameswf::fn_call const&)
// The output object is the top argument when it has tag 5. The native sets its "length" property to the number 6 (the two
// words 0 and 1075314688 are the double 6.0) and its "Graphic" property to the string "Objective" (as_object::set_member,
// vtable +0x1c), then sets the result to the object.
void NativeGetMapIcons(const gameswf::fn_call& call) {
    gameswf::as_object* obj = call.arg(0).to_object();
    if (obj != nullptr) {
        gameswf::as_value length;
        length.set_double(6.0);
        obj->set_member(tu_stringi("length"), length);
        gameswf::as_value graphic;
        graphic.set_string("Objective");
        obj->set_member(tu_stringi("Graphic"), graphic);
    }
    call.result->set_as_object(obj);
}

// 0x444dec NativeGetIPodPlaylistName(gameswf::fn_call const&)
// Argument 0 is the playlist index. The result is VoxSoundManager::s_instance->GetIPodPlaylistName(index) as a string value.
void NativeGetIPodPlaylistName(const gameswf::fn_call& call) {
    const int index = static_cast<int>(call.arg(0).to_number());
    const std::string name = VoxSoundManager::s_instance->GetIPodPlaylistName(index);
    call.result->set_string(name.c_str());
}

namespace {

// The tail of NativeGetStringFromSymbol and NativeGetStringFromID: a found text is formatted with StringManager::parse,
// passed through ParsePlayerName and set as the result; a missing text gives "notfound".
void SetParsedStringResult(const gameswf::fn_call& call, const char* text) {
    if (text == nullptr) {
        call.result->set_string("notfound");
        return;
    }
    StringManager* strings = ApplicationGetInstance().m_stringManager;
    std::string out;
    strings->parse(out, text);
    out = ParsePlayerName(out);
    call.result->set_string(out.c_str());
}

}  // namespace

// 0x444ebc NativeGetStringFromSymbol(gameswf::fn_call const&)
// The symbol is to_tu_string of the top argument. When it is "MENU_ERROR_NO_USERNAME" or "MENU_ERROR_NO_PASSWORD", the
// global Back_key_Glive is set to 1. The text is StringManager::getStringFromSymbol(symbol), then SetParsedStringResult.
void NativeGetStringFromSymbol(const gameswf::fn_call& call) {
    const char* symbol = call.arg(0).to_tu_string().c_str();
    if (std::strcmp(symbol, "MENU_ERROR_NO_USERNAME") == 0 || std::strcmp(symbol, "MENU_ERROR_NO_PASSWORD") == 0) {
        Back_key_Glive = true;
    }
    const char* text = ApplicationGetInstance().m_stringManager->getStringFromSymbol(symbol);
    SetParsedStringResult(call, text);
}

// 0x44506c NativeGetStringFromID(gameswf::fn_call const&)
// The id is to_number of the top argument (truncated to int). The text is StringManager::getString(id), then
// SetParsedStringResult. The steps match NativeGetStringFromSymbol, without the Back_key_Glive flag.
void NativeGetStringFromID(const gameswf::fn_call& call) {
    const int id = static_cast<int>(call.arg(0).to_number());
    const char* text = ApplicationGetInstance().m_stringManager->getString(id);
    SetParsedStringResult(call, text);
}

// 0x4451ac NativeGetMultiplayerGameRooms(gameswf::fn_call const&)
// Runs only with exactly one argument and only when the online state is not 300 (starting a game). The state becomes 102, the same write as
// NativeSendRoomSearchRequest. With an array as the argument the room list comes from CMatching::Get()'s virtual at +0x90 (GetRoomList) as
// tRoomInfo records; when the online mode is not 2 the list is also stored in the state's room list (+0x50). Each room becomes an object pushed
// onto the array:
//   name: with mode 3 or 4 the room's name used as a sprintf format into 32 bytes, else room attribute bin 3 in 32 bytes; then
//     StringManager::formatForMulti(text, false).
//   level: room attribute int 3.
//   act: the "StrID"/"MENU_ACT" text parsed with attribute int 5, then a space and the v2Quest title (text id +0x04) of the row named by attribute
//     int 6 (row 50 when that attribute is negative, as the original's 284 * row computation gives).
//   friendCount: 0.   playerCount: the room's word at +0x20.   maxPlayercount: 4.
// The result is true.
void NativeGetMultiplayerGameRooms(const gameswf::fn_call& call) {
    if (call.nargs != 1) {
        return;
    }
    OnlineGameState* state = OnlineSingleton<OnlineGameState>::GetInstance();
    if (state->GetState() == 300) {
        return;
    }
    state->SetState(102);
    gameswf::as_array* array = call.arg(0).is_object() ? gameswf::cast_to<gameswf::as_array>(call.arg(0).to_object()) : nullptr;
    if (array != nullptr) {
        std::vector<tRoomInfo> rooms = CMatching::Get()->GetRoomList();
        DH2_NET_TRACE_LOG("[mp] NativeGetMultiplayerGameRooms: %zu rooms%s%s\n", rooms.size(), rooms.empty() ? "" : ", first id ",
                          rooms.empty() ? "" : std::to_string(rooms[0].roomId).c_str());
        if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ != 2) {
            const_cast<std::vector<tRoomInfo>&>(OnlineSingleton<OnlineGameState>::GetInstance()->RoomInfos()) = rooms;  // +0x50
        }
        for (tRoomInfo& room : rooms) {
            gameswf::as_object* object = nativeobj::NewObject(call);
            const int act = room.attributes.GetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(5));
            const int questRow = room.attributes.GetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(6));
            const Structs::v2Quest* quest = reinterpret_cast<const Structs::v2Quest*>(Arrays::v2Quests::members) + (questRow < 0 ? 50 : questRow);
            StringManager* strings = ApplicationGetStringManager();
            std::string actText;
            strings->parse(actText, strings->getString(ApplicationGetPyDataConstants()->getConstant("StrID", "MENU_ACT")), act);
            actText += std::string(" ") + strings->getString(quest->Name);
            char roomName[32] = {};
            const unsigned int mode = static_cast<unsigned int>(OnlineSingleton<OnlineGameState>::GetInstance()->mode_) - 3u;
            if (mode <= 1u) {
                std::snprintf(roomName, sizeof(roomName), "%s", room.name.c_str());  // the original passes the name as the format string
            } else {
                room.attributes.GetAttributeBin(static_cast<tROOM_ATTRIBUTES_BIN>(3), roomName, sizeof(roomName));
            }
            nativeobj::SetString(object, "name", StringManager::formatForMulti(std::string(roomName), false).c_str());
            nativeobj::SetNumber(object, "level", static_cast<double>(room.attributes.GetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(3))));
            nativeobj::SetString(object, "act", actText.c_str());
            nativeobj::SetNumber(object, "friendCount", 0.0);
            nativeobj::SetNumber(object, "playerCount", static_cast<double>(room.unk_20));
            nativeobj::SetNumber(object, "maxPlayercount", 4.0);
            nativeobj::PushObject(array, object);
        }
        call.result->set_bool(true);
    }
    call.result->set_bool(true);
}

// 0x445a10 NativeGetSkillDetails(gameswf::fn_call const&)
// Arguments: the skill (0), the output object (1), the player index (2) and, with four arguments, a flag (3) for NativeGetPlayerChar.
// The result is the object. For a character: the skill row is Character::GetCharSkill(skill) (Structs::Skill); the unlock text, the
// "current level" text and the "next level" text are StringManager::parseEx formats over two VarArgs lists.
//   * Character level below the skill's level requirement (row +0x20): the current text is GAMEPLAYMENUS_SKILL_UNLOCK_AT_LEVEL with the
//     level as its only argument; SkillUnlocked is false.
//   * Otherwise SkillUnlocked is true. The current format is GAMEPLAYMENUS_NEEDS_SKILL_POINTS for an untrained skill, else the row's
//     text id +0x30 (plus the current faery's text offset when the row's flag +0x18 is set). The next format is
//     GAMEPLAYMENUS_MAX_SKILL_LEVEL when the level reaches the cap for the unlocked difficulty (CharacterDesign MaxSkillLevelBNormal,
//     CHard or DVeryHard), GAMEPLAYMENUS_SKILL_MAXIMUM_LEVEL_TRAINING when the skill cannot be raised, else the row's text id +0x44
//     (with the same faery offset). For the current and the next level in turn, CharAI::AI_SkillInfo(skill, level) is read and the
//     row's property list (+0x10, count +0x0c) is evaluated against CharProperties::s_temp; each value is appended as a variant
//     {value / 256, value >> 8, none}.
// Then the object gets SkillName (text id +0x40), SkillDescription (+0x34), SkillCurrLevel, SkillNextLevel, SkillAssignable
// (+0x2c), SkillIcon (+0x3c), SkillLevel, SkillAssignedToSlot and SkillUnlocked. A text id below 0 gives the empty string.
void NativeGetSkillDetails(const gameswf::fn_call& call) {
    const int skill = static_cast<int>(call.arg(0).to_number());
    gameswf::as_object* object = call.arg(1).is_object() ? call.arg(1).to_object() : nullptr;
    const int player = static_cast<int>(call.arg(2).to_number());
    const bool flag = call.nargs == 4 ? call.arg(3).to_bool() : false;
    Character* ch = NativeGetPlayerChar(player, flag);
    if (ch) {
        StringManager* strings = ApplicationGetStringManager();
        PyDataConstants* constants = ApplicationGetPyDataConstants();
        VarArgs currentArgs;
        VarArgs nextArgs;
        std::string currentText;
        std::string nextText;
        ch->SG_GetSkillId(static_cast<unsigned int>(skill));
        std::string currentFormat;
        std::string nextFormat;
        const Structs::Skill* row = static_cast<const Structs::Skill*>(ch->GetCharSkill(skill));
        // The row's text id (with the current faery's offset for a faery skill), or the empty string for an id below 0.
        auto rowText = [&](int textId) -> const char* {
            if (row->FairieDependantText) {  // +0x18: the text depends on the current faery
                if (textId == -1) {
                    return "";
                }
                const int faeryId = ch->SG_GetCurrentFaerieId(-1);
                textId += static_cast<const Structs::Faery*>(ch->GetCharFaery(faeryId))->Elemental;
            }
            return textId >= 0 ? strings->getString(textId) : "";
        };
        bool unlocked;
        if (ch->GetLevel() >= row->Level) {  // +0x20
            if (ch->SG_GetSkillLevel(static_cast<unsigned int>(skill)) <= 0) {
                currentFormat = strings->getString(constants->getConstant("StrID", "GAMEPLAYMENUS_NEEDS_SKILL_POINTS"));
            } else {
                currentFormat = rowText(row->SkillCurrLevel);  // +0x30
            }
            int maxLevel = constants->getConstant("CharacterDesign", "MaxSkillLevelBNormal");
            if (ch->SG_GetGameDifficultyUnlocked() == 1) {
                maxLevel = constants->getConstant("CharacterDesign", "MaxSkillLevelCHard");
            } else if (ch->SG_GetGameDifficultyUnlocked() == 2) {
                maxLevel = constants->getConstant("CharacterDesign", "MaxSkillLevelDVeryHard");
            }
            if (maxLevel <= ch->SG_GetSkillLevel(static_cast<unsigned int>(skill))) {
                nextFormat = strings->getString(constants->getConstant("StrID", "GAMEPLAYMENUS_MAX_SKILL_LEVEL"));
            } else if (!ch->CanIncrementSkill(skill)) {
                nextFormat = strings->getString(constants->getConstant("StrID", "GAMEPLAYMENUS_SKILL_MAXIMUM_LEVEL_TRAINING"));
            } else {
                nextFormat = rowText(row->SkillNextLevel);  // +0x44
            }
            VarArgs* lists[2] = {&currentArgs, &nextArgs};
            for (int step = 0; step < 2; ++step) {
                float info = 0.0f;
                ch->AI_SkillInfo(static_cast<unsigned int>(skill),
                                 static_cast<unsigned int>(step + ch->SG_GetSkillLevel(static_cast<unsigned int>(skill))), info);
                const std::uint32_t count = row->DisplayPropsSize;  // +0x0c
                const std::int32_t* ids = static_cast<const std::int32_t*>(row->DisplayProps);  // +0x10
                for (std::uint32_t i = 0; i < count; ++i) {
                    const int value = ch->CharProperties::_GetProperty(CharProperties::s_temp, ids[i]);
                    VarArgs::Variant variant;
                    variant.number = static_cast<float>(value) * 0.00390625f;
                    variant.integer = value >> 8;
                    variant.text = nullptr;
                    lists[step]->m_variants.push_back(variant);
                }
            }
            unlocked = true;
        } else {
            currentFormat = strings->getString(constants->getConstant("StrID", "GAMEPLAYMENUS_SKILL_UNLOCK_AT_LEVEL"));
            VarArgs::Variant variant;
            variant.number = static_cast<float>(row->Level);
            variant.integer = row->Level;
            variant.text = nullptr;
            currentArgs.m_variants.push_back(variant);
            unlocked = false;
        }
        strings->parseEx(currentText, currentFormat.c_str(), currentArgs);
        strings->parseEx(nextText, nextFormat.c_str(), nextArgs);
        nativeobj::SetString(object, "SkillName", row->SkillName >= 0 ? strings->getString(row->SkillName) : "");
        nativeobj::SetString(object, "SkillDescription", row->SkillDescription >= 0 ? strings->getString(row->SkillDescription) : "");
        nativeobj::SetString(object, "SkillCurrLevel", currentText.c_str());
        nativeobj::SetString(object, "SkillNextLevel", nextText.c_str());
        nativeobj::SetBool(object, "SkillAssignable", row->SkillAssignable);
        nativeobj::SetString(object, "SkillIcon", static_cast<const char*>(row->SkillIcon));
        nativeobj::SetNumber(object, "SkillLevel", static_cast<double>(ch->SG_GetSkillLevel(static_cast<unsigned int>(skill))));
        nativeobj::SetNumber(object, "SkillAssignedToSlot", static_cast<double>(ch->SG_GetSkillSlot(static_cast<unsigned int>(skill))));
        nativeobj::SetBool(object, "SkillUnlocked", unlocked);
    }
    call.result->set_as_object(object);
}
