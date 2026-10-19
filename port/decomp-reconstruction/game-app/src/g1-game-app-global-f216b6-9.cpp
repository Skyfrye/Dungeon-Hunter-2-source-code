#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include "core-platform/debug_out.hpp"
#endif
// Batch g1-game-app-global-f216b6-9 (<global>, part 10 of 22): the quest predicates IsNonDebugQuestClosedQuest,
// IsNonDebugQuestActiveButNotClosedQuest and the IsDebugQuest thunk, and the gameswf natives of the app bindings
// (ELF 0x43c098 .. 0x43d288), with NativeGetPlayerChar. Declarations: dh2/global/quest_predicates.hpp and
// dh2/global/native_app_bindings.hpp.
//
// Facts shared by the bodies:
//   - gameswf natives take one const fn_call&. Argument n is read from the value at index *(fn_call +0x14) - n in the
//     array whose base is **(fn_call +0x0c). fn_call +0x10 is the argument count. The as_value accessors (to_number,
//     to_string, to_xstring, to_bool, set_double) are not in the tree, so a native that reads an argument or stores
//     its result is PARTIAL and its body is left out (see the rows and native_app_bindings.hpp).
//   - The PlayerManager is Application +0x40 (dword_99F76C, extern in dh2/global/IsMultiplayerGame.hpp). PlayerInfo
//     (dh2/PlayerInfo.hpp) is the GetLocalPlayer and GetRemotePlayer result; its character is unk_660 at +0x660.
//     NativeGetPlayerChar and NativeHUDSpell use it and are reconstructed.
//   - The helpers PickHintPageOffset and CreditMovementValue hold the arithmetic of 0x43cb24 and 0x43ccec. They
//     reference no other symbol, so the test links them alone.

#include <cstdint>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include <cstring>

#include "dh2/CharAI.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/GSKeyboard.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/MenuMainMenu.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Random.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/global/native_app_hud_level.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_drop_loot.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "pydata-accessors/member_names.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "gameswf/gameswf_environment.h"
#include "vendor-gameswf/as_value.hpp"
#include "dh2/Quest.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/native_app_bindings.hpp"
#include "dh2/global/quest_predicates.hpp"
#include "dh2/v2Controller.hpp"

// 0x43b4f0 IsNonDebugQuestClosedQuest(Quest const*)
// Hex-Rays reads the state (+0x00) first, then calls IsNonDebugQuest. When that is true, the result is state > 12,
// which is QUEST_CLOSED (12): the post-closed state (13) is the only state above it. Otherwise the zero result of
// IsNonDebugQuest is returned.
bool IsNonDebugQuestClosedQuest(const Quest* quest) {
    const int state = quest->m_state;                   // +0x00
    if (IsNonDebugQuest(quest)) {
        return state > Quest::QUEST_CLOSED;             // 12
    }
    return false;
}

// 0x43b514 IsNonDebugQuestActiveButNotClosedQuest(Quest const*)
// Hex-Rays: (unsigned)(state - 6) <= 6 when IsNonDebugQuest is true. That is the range QUEST_ACTIVE (6) to
// QUEST_CLOSED (12), both included. Otherwise the zero result of IsNonDebugQuest is returned.
bool IsNonDebugQuestActiveButNotClosedQuest(const Quest* quest) {
    const int state = quest->m_state;                   // +0x00
    if (IsNonDebugQuest(quest)) {
        constexpr unsigned int kSpan = Quest::QUEST_CLOSED - Quest::QUEST_ACTIVE;  // 6
        return static_cast<unsigned int>(state - Quest::QUEST_ACTIVE) <= kSpan;
    }
    return false;
}

// 0x43b53c IsDebugQuest(Quest const*)
// Thunk: a tail branch to Quest::IsDebug, so it is forwarded and not reimplemented.
bool IsDebugQuest(const Quest* quest) {
    return quest->IsDebug();
}

// 0x43c098 NativeConectionType(gameswf::fn_call const&)
// One string argument naming the connection type; the online state (OnlineGameState mode word +0x34: 1 Wireless/PSN, 2 Bluetooth,
// 3 Online) is switched to it.
//   "Bluetooth": an online game in mode 1 or 3 is left (the matching provider reset, CMatching Terminate, the online flag cleared);
//                when this is no online game, the state is initialised in mode 2.
//   "Online":    without Wi-Fi the application goes to the main menu (event 5) and the call ends; an online game in mode 1 or 2 only clears
//                the online flag; when this is no online game, the state is initialised in mode 3.
//   "Wireless":  without Wi-Fi the main menu (event 5) as above; an online game in mode 3 or 2 is left as for Bluetooth; when this is no
//                online game, the state is initialised in mode 1.
//   "PSN":       when this is no online game, the state is initialised in mode 1.
void NativeConectionType(const gameswf::fn_call& call) {
    if (call.nargs != 1 || !call.arg(0).is_string()) {
        return;
    }
    const char* type = call.arg(0).to_xstring();
    // Leaves the online game: the matching provider is reset, the matching object terminates and the online flag is cleared.
    auto leaveOnline = []() {
        CMatching::Get();
        CMatching::SetMatchingProvider(static_cast<CMatching::MATCHING_PROVIDERS>(0));
        CMatching::Get()->Terminate();
        GetOnline()->SetIsOnlineGame(false);
    };
    Application& app = ApplicationGetInstance();
    if (std::strcmp(type, "Bluetooth") == 0) {
        if (GetOnlineGameFlag()) {
            if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 1) {
                leaveOnline();
            }
            if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 3) {
                leaveOnline();
            }
        }
        if (!GetOnlineGameFlag()) {
            OnlineSingleton<OnlineGameState>::GetInstance()->Init(2);
        }
    }
    if (std::strcmp(type, "Online") == 0) {
        if (!app.IsWifiEnabled()) {
            app.GoToMainMenu(static_cast<GoToMainMenuEvent>(5));
            return;
        }
        if (GetOnlineGameFlag()) {
            if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 1) {
                GetOnline()->SetIsOnlineGame(false);
            }
            if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 2) {
                GetOnline()->SetIsOnlineGame(false);
            }
        }
        if (!GetOnlineGameFlag()) {
            OnlineSingleton<OnlineGameState>::GetInstance()->Init(3);
        }
    }
    if (std::strcmp(type, "Wireless") == 0) {
        if (!app.IsWifiEnabled()) {
            app.GoToMainMenu(static_cast<GoToMainMenuEvent>(5));
            return;
        }
        if (GetOnlineGameFlag()) {
            if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 3) {
                leaveOnline();
            }
            if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 2) {
                leaveOnline();
            }
        }
        if (!GetOnlineGameFlag()) {
            OnlineSingleton<OnlineGameState>::GetInstance()->Init(1);
        }
    }
    if (std::strcmp(type, "PSN") == 0 && !GetOnlineGameFlag()) {
        OnlineSingleton<OnlineGameState>::GetInstance()->Init(1);
    }
}

// 0x43c388 NativeGetPlayerChar(int, bool)
// Reconstructed (asm 0x43c388 checked). The PlayerManager is Application +0x40 (dword_99F76C). It returns nullptr when
// the index is negative or not below PlayerManager::GetNumPlayers(). Otherwise it returns the character at PlayerInfo
// +0x660 of PlayerManager::GetRemotePlayer(index, false) when remote, or of PlayerManager::GetLocalPlayer(index, false).
// The +0x660 field is PlayerInfo::unk_660 (Hex-Rays *(player + 1632)); its name in the header is unk_660.
Character* NativeGetPlayerChar(int playerIndex, bool remote) {
    PlayerManager* players = ApplicationGetInstance().m_playerManager;
    if (playerIndex < 0 || playerIndex >= players->GetNumPlayers()) {
        return nullptr;
    }
    if (remote) {
        return players->GetRemotePlayer(playerIndex, false)->unk_660;
    }
    return players->GetLocalPlayer(playerIndex, false)->unk_660;
}

// 0x43cabc NativeHUDSpell(gameswf::fn_call const&)
// Reconstructed (asm 0x43cabc checked). The local player 0 (PlayerManager::GetLocalPlayer(0, true)) gives its character
// (PlayerInfo +0x660). When the character is set and Character::CTRLIsAllowed() holds, the character's controller
// (Character +0x378, v2Controllable::m_controller) runs Cmd_BeginCast(false) and then Cmd_EndCast(false). The player
// pointer is not tested for null, as in the asm (LDR R4, [R0,#0x660]). The argument is not read.
void NativeHUDSpell(const gameswf::fn_call& /*call*/) {
    PlayerInfo* localPlayer = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true);
    Character* character = localPlayer->unk_660;
    if (character != nullptr && character->CTRLIsAllowed()) {
        character->m_controller->Cmd_BeginCast(false);
        character->m_controller->Cmd_EndCast(false);
    }
}

// 0x43cb24 NativeGetLoadingTipStrID(gameswf::fn_call const&)
// A random hint page (Random::GetRandom(Arrays::HintPages::size, false); 0 for an empty table) and its string id (Structs::HintPage row
// +0x08, m_w2) as a number.
void NativeGetLoadingTipStrID(const gameswf::fn_call& call) {
    const unsigned int page = Random::GetRandom(static_cast<int>(Arrays::HintPages::size), false);
    const Structs::HintPage* rows = reinterpret_cast<const Structs::HintPage*>(Arrays::HintPages::members);
    call.result->set_double(static_cast<double>(rows[page].HintStringID));
}

// 0x43cc00 NativeGetIPodPlaylistCount(gameswf::fn_call const&): the platform player's playlist count as a number.
void NativeGetIPodPlaylistCount(const gameswf::fn_call& call) {
    call.result->set_double(static_cast<double>(VoxSoundManager::s_instance->GetIPodPlaylistCount()));
}

// 0x43cc40 NativeGetMonsterHUDHP(gameswf::fn_call const&)
// The local player's character (PlayerManager::GetLocalPlayer(0, true), PlayerInfo +0x660). Without one the result is 0. With one but
// no object of interest (Character::m_objectOfInterest) nothing is set. Otherwise the result is 100 * HP / Max_HP of that object read as
// a Character (the raw sheet words m_w37 and m_w39, +0x1088 and +0x1090 of the object), integer division.
void NativeGetMonsterHUDHP(const gameswf::fn_call& call) {
    Character* local = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
    int percent = 0;
    if (local) {
        GameObject* target = local->m_objectOfInterest;
        if (!target) {
            return;
        }
        const Structs::CharacterProperties& sheet = static_cast<Character*>(target)->CharProperties::m_props;
        percent = sheet.Max_HP != 0 ? 100 * sheet.HP / sheet.Max_HP : 0;
    }
    call.result->set_double(static_cast<double>(percent));
}

// 0x43ccc8 NativeFindFreeSaveSlot(gameswf::fn_call const&): the result is the next free save slot as a number.
void NativeFindFreeSaveSlot(const gameswf::fn_call& call) {
    call.result->set_double(static_cast<double>(static_cast<int>(PlayerSavegame::SG_GetNextFreeSlot())));
}

// 0x43ccec NativeGetCreditMovement(gameswf::fn_call const&): the credit movement for the frame (CreditMovementValue,
// which takes the HTC flag and the frame time in ms from Application::GetDt on the singleton).
void NativeGetCreditMovement(const gameswf::fn_call& call) {
    call.result->set_double(CreditMovementValue(HTC_DEVICES, ApplicationGetInstance().GetDt()));
}

// 0x43cd68 NativeSetCurrentDifficulty(gameswf::fn_call const&): stores (int)to_number(argument 0) at +0x0c of the
// savegame manager (the object at dword_99F778, which is Application +0x4c). The field is SavegameManager::unk_0c.
void NativeSetCurrentDifficulty(const gameswf::fn_call& call) {
    ApplicationGetInstance().m_savegameManager->unk_0c = static_cast<std::int32_t>(call.arg(0).to_number());
}

// 0x43cdac NativeChangeRolloverInputBehavior(gameswf::fn_call const&)
// Argument 0 is the movie index (0..3 selects MultiMenuManager::m_menuFX[index], otherwise none) and argument 1 a flag: the movie's input
// behavior becomes 132 when the flag is set and 4 when it is clear (RenderFX::SetInputBehavior).
void NativeChangeRolloverInputBehavior(const gameswf::fn_call& call) {
    const int index = static_cast<int>(call.arg(0).to_number());
    const bool flag = call.arg(1).to_bool();
    MultiMenuManager* menus = MenuManager::GetInstance()->m_multiMenuManager;
    RenderFX* render = (index >= 0 && index <= 3) ? static_cast<RenderFX*>(menus->m_menuFX[index]) : nullptr;
    render->SetInputBehavior(flag ? 132 : 4);
}

// 0x43ce3c NativeOpenKeyboard(gameswf::fn_call const&)
// Arguments: the keyboard kind (0, a string), the maximum length (1) and the initial text (2). Unless a query is already open
// (GSKeyboard::s_inst.m_querying, byte_9A24D4), GSKeyboard::QueryString(kind, length, text, kind == "PlayerName") starts one.
void NativeOpenKeyboard(const gameswf::fn_call& call) {
    const char* kind = call.arg(0).to_string();
    const double length = call.arg(1).to_number();
    const char* text = call.arg(2).to_string();
    if (!GSKeyboard::s_inst.m_querying) {
        GSKeyboard::QueryString(kind, static_cast<unsigned int>(static_cast<int>(length)), text, std::strcmp(kind, "PlayerName") == 0);
    }
}

// 0x43cf04 NativeIPodSetPlaylist(gameswf::fn_call const&): VoxSoundManager::SetIPodPlaylist(argument 0).
void NativeIPodSetPlaylist(const gameswf::fn_call& call) {
    VoxSoundManager* sound = VoxSoundManager::s_instance;
    sound->SetIPodPlaylist(static_cast<int>(call.arg(0).to_number()));
}

// 0x43cf50 NativeAssignSaveSlotToPlayer(gameswf::fn_call const&)
// Argument 0 is the save slot and argument 1 the local player id; when both are not negative AssignSaveSlotToPlayer(slot, id) runs.
void NativeAssignSaveSlotToPlayer(const gameswf::fn_call& call) {
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
    _DEBUG_OUT("NativeAssignSaveSlotToPlayer nargs %d a0 %d a1 %d", call.nargs, call.nargs > 0 ? call.arg(0).to_int() : -77, call.nargs > 1 ? call.arg(1).to_int() : -77);
#endif
    const int slot = static_cast<int>(call.arg(0).to_number());
    const int localPlayer = static_cast<int>(call.arg(1).to_number());
    if (slot >= 0 && localPlayer >= 0) {
        AssignSaveSlotToPlayer(slot, localPlayer);
    }
}

// 0x43cfb4 NativeInvDropItem(gameswf::fn_call const&)
// Argument 0 is an inventory index. The local player's character (GetLocalPlayer(0, false), PlayerInfo +0x660) drops that item: in an
// online game a CMsgDropLoot is sent first (kind 1, the item id, the character's network id and the item's power ids); then the item
// moves (quantity 1, no stack, no gold conversion) into a temporary inventory which ItemObject::DropInventory drops at the character.
void NativeInvDropItem(const gameswf::fn_call& call) {
    const int index = static_cast<int>(call.arg(0).to_number());
    Character* ch = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, false)->unk_660;
    if (!ch) {
        return;
    }
    ItemInventory& inventory = *ch;
    if (GetOnlineGameFlag()) {
        const int networkId = ApplicationGetInstance().m_objectManager->GetNetworkIdByObjectBase(ch);
        ItemInstance* item = inventory.GetItem(static_cast<unsigned int>(index));
        const int itemId = item->GetItemId();
        const int powerCount = item->GetNumPowers();
        std::vector<std::int32_t> powerIds(static_cast<std::size_t>(powerCount > 0 ? powerCount : 0));
        for (int i = 0; i < powerCount; ++i) {
            powerIds[static_cast<std::size_t>(i)] = item->GetPowerId(static_cast<unsigned int>(i));
        }
        CMessaging* messaging = GetMessaging();
        CMsgDropLoot* message = static_cast<CMsgDropLoot*>(CMessage::CreateMessage("CMsgDropLoot", true));
        message->SetLoot(1, itemId, networkId, powerIds.data(), powerCount);
        messaging->SendMsg(message);
    }
    ItemInventory dropped;
    inventory.TransferItemTo(static_cast<unsigned int>(index), dropped, 1, false, false);
    ItemObject::DropInventory(dropped, ch, ch, nullptr);
}

// 0x43d178 NativeSelectClassSpec(gameswf::fn_call const&)
// Argument 0 is the class offset. The local player's character (GetLocalPlayer(0, true), PlayerInfo +0x660) takes the class
// offset + 1 + its current class: the class properties are loaded for the class select (CharProperties::LoadPropertiesForClassSelect),
// the class is stored (SG_SetPlayerClass), the AI skills are reloaded (CharAI::AI_ReloadSkills) and the character is saved.
void NativeSelectClassSpec(const gameswf::fn_call& call) {
    const double offset = call.arg(0).to_number();
    Character* ch = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
    if (ch) {
        const int newClass = static_cast<int>(offset) + 1 + ch->SG_GetPlayerClass();
        ch->CharProperties::LoadPropertiesForClassSelect(newClass);
        ch->SG_SetPlayerClass(newClass);
        ch->CharAI::AI_ReloadSkills();
        ch->SG_Save();
    }
}

// 0x43d220 NativeSetSaveSlotIDToMainMenu(gameswf::fn_call const&)
// Argument 0 is the save slot; with more than one argument, argument 1 is a flag (otherwise false). The main menu singleton is created
// and the character shown on it changes (MenuMainMenu::ChangeCharacterToDisplay(slot, flag)).
void NativeSetSaveSlotIDToMainMenu(const gameswf::fn_call& call) {
    const int slot = static_cast<int>(call.arg(0).to_number());
    const bool flag = call.nargs > 1 ? call.arg(1).to_bool() : false;
    MenuMainMenu::GetInstance();
    MenuMainMenu::ChangeCharacterToDisplay(slot, flag);
}

// 0x43d288 NativeEraseSaveSlot(gameswf::fn_call const&): for a slot that is not negative, flushes the save jobs and
// deletes the slot's files.
void NativeEraseSaveSlot(const gameswf::fn_call& call) {
    const int slot = static_cast<int>(call.arg(0).to_number());
    if (slot >= 0) {
        Savegame::FlushJobs(nullptr);
        Savegame::DeleteAllSlotFiles(slot);
    }
}

// Helper of NativeGetLoadingTipStrID: the page pick (inline arithmetic of 0x43cb24, not a separate function).
// The original keeps the table size as the byte offset when the table is empty, which gives row 0. Otherwise the seed
// advances (59051 * seed + 177149) % 0xDAF26B in 32-bit unsigned arithmetic, and the row is seed % pageCount. The
// negative-row test is kept as in the pseudocode; it never fires for a table of fewer than 2^31 rows.
std::uint32_t PickHintPageOffset(std::uint32_t& seed, std::uint32_t pageCount) {
    std::uint32_t offset = pageCount;
    if (pageCount != 0) {
        seed = (59051u * seed + 177149u) % 0xDAF26Bu;
        std::uint32_t row = seed % pageCount;
        if ((row & 0x80000000u) != 0) {
            row = 0u - row;
        }
        offset = 12u * row;
    }
    return offset;
}

// Helper of NativeGetCreditMovement: the value of 0x43ccec (the body is inline arithmetic, not a separate function).
// The division is unsigned, as the pseudocode divides an int by 0x19u.
double CreditMovementValue(bool htcDevice, int frameTimeMs) {
    if (htcDevice) {
        return 2.0;
    }
    const unsigned int steps = static_cast<unsigned int>(frameTimeMs) / 0x19u + 1u;
    return static_cast<double>(static_cast<int>(steps));
}
