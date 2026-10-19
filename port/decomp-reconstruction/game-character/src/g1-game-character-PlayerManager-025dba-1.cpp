// Batch g1-game-character-PlayerManager-025dba-1 (part 2 of 4): PlayerManager's readiness and loading queries, the
// per-class character counts, the local-player count, the player numbering, the initial setup, the controller attach
// and joining code, the inventory pack, the loading-info reset, the light refresh and the destructor
// (PlayerManager.cpp in the original).
//
// Online gates. The online bodies test, in order: COnline +0x05 (the online-game flag), the OnlineGameState byte at
// +0x24 and the state word at +0x34, CMatching::IsInRoom() (vtable +0x64) and CNetPlayerManager::IsInitialized().
// The gates read the real fields (GetOnlineGameFlag, OnlineGameState::flag24_ and mode_).
//
// Layout facts used here (dh2/PlayerInfo.hpp, dh2/Gamepad.hpp):
//   PlayerInfo +0x660 (unk_660) is the Character the player controls. It is declared void* in PlayerInfo.hpp; the
//   binary uses it as Character* (PostInitCharacters passes it to Character::VerifySpecialization).
//   PlayerInfo +0x66c (unk_66c) is the local-player byte. +0x668 (unk_668) is the gamepad index of the player.
//   +0x670 (unk_670) is -1 for a player without a number. _UpdatePlayerNumbers writes unk_678 (player number) and
//   unk_67c (local or remote number).
//   Gamepad channel k sits at 12 + 32k. The joining code reads the previous_* fields of channels 0, 1, 10, 11, 12, 13,
//   37, 38, 39, 40 (the channel's base is value - 12, so value is previous, the minimum and maximum are
//   previous_minimum and previous_maximum, and the flag is previous_above_threshold).

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <list>
#include <vector>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/EvGamepad.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Level.hpp"
#include "dh2/LightBase.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/v2EmuController.hpp"
#include "dh2/v2GamepadController.hpp"
#include "dh2/v2HudController.hpp"
#include "dh2/v2MixedController.hpp"
#include "dh2/v2NetController.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "dh2/Gamepad.hpp"           // Gamepad::Channel, and dh2/Point3D.hpp (the Point3D used here)
#include "dh2/InputManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C, the PlayerManager instance
#include "dh2/global/net_singletons.hpp"     // GetOnline, GetNetPlayerMgr, GetConnectionMgr
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"

namespace {

const char* const kPlayerManagerCpp =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp";

// Class ids (Arrays::CharacterTable rows) that the three per-class counters pass.
constexpr int kWarriorCharPropsId = 263;
constexpr int kRogueCharPropsId = 325;
constexpr int kMageCharPropsId = 290;

// Gamepad channels whose threshold crossings raise EvGamepad, in the order the binary tests them. The last entry is
// channel 1, after which the binary calls CNetPlayerInfo::SetState(player, 0) when it raised an event.
constexpr int kJoiningButtons[10] = {37, 38, 39, 40, 10, 11, 12, 13, 0, 1};

// The original ASSERT(expr) macro. Level 2 faults (std::abort() here), level 1 prints to stderr and execution continues.
void AssertFailed(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// Online gates (see the file comment). Each returns the offline value until COnline and OnlineGameState expose
// their fields; the singleton calls stay in place.
bool OnlineSessionFlag() {  // COnline +0x05 (isOnlineGame_)
    return GetOnlineGameFlag();
}

bool OnlineMatchingFlag() {  // OnlineGameState +0x24 (flag24_)
    return OnlineSingleton<OnlineGameState>::GetInstance()->flag24_;
}

int OnlineGameStateWord() {  // OnlineGameState +0x34 (mode_)
    return OnlineSingleton<OnlineGameState>::GetInstance()->mode_;
}

// The four-test online check the bodies share: online session, matching room flag, CMatching::UnknownGate (vtable
// +0x64) and CNetPlayerManager::IsInitialized. The binary tests them in this order.
bool OnlineMatchingReady() {
    if (!OnlineSessionFlag()) {
        return false;
    }
    if (!OnlineMatchingFlag()) {
        return false;
    }
    if (!CMatching::Get()->IsInRoom()) {
        return false;
    }
    (void)GetNetPlayerMgr();
    return CNetPlayerManager::IsInitialized();
}

// The Character a player record controls (PlayerInfo +0x660). Only the pointer is needed, so the Character type can
// stay incomplete here. See the file comment.
const Character* CharacterOf(const PlayerInfo& player) {
    return static_cast<const Character*>(player.unk_660);
}

Character* CharacterOf(PlayerInfo& player) {
    return static_cast<Character*>(player.unk_660);
}

// The EvGamepad the joining code raises for a button: id 7, the button code, the state (1 pressed, 0 released), the controller index
// and 1.0f. It goes to the application's event manager (dword_99F740, Application +0x14).
void RaiseGamepadButtonEvent(int buttonId, int state, int controllerId) {
    const EvGamepad event(buttonId, state, controllerId);
    ApplicationGetInstance().m_eventManager->Raise(event);
}

}  // namespace

// 0x36e8bc PlayerManager::AllClientsReadyToRoll(void)
// Online gate closed: 1. Otherwise every active record must have finished loading, and a client record (not the host) must also be
// ready to roll.
int PlayerManager::AllClientsReadyToRoll() {
    if (!OnlineMatchingReady()) {
        return 1;
    }
    const int numPlayers = GetNumPlayers();
    if (numPlayers <= 0) {
        return 1;
    }
    for (int i = 0; i < numPlayers; ++i) {
        PlayerInfo* player = GetPlayer(i, false);
        if (player->IsActive()) {
            // +0x525 is m_doneLoading, +0x545 is m_readyToRoll (both NetStructBool values).
            if (!player->m_doneLoading.GetValue() || (!player->IsHost() && !player->m_readyToRoll.GetValue())) {
                return 0;
            }
        }
    }
    return 1;
}

// 0x36e994 PlayerManager::AllLoadingDone(void)
int PlayerManager::AllLoadingDone() {
    const int numPlayers = GetNumPlayers();
    if (numPlayers <= 0) {
        return 1;
    }
    for (int i = 0; i < numPlayers; ++i) {
        PlayerInfo* player = GetPlayer(i, false);
        if (player->IsActive()) {
            // +0x525 m_doneLoading, +0x4e5 m_ingame, +0x505 m_inCutscene, and the PlayerManager flag at +0x71a.
            if (!player->m_doneLoading.GetValue() ||
                (unk_71a && player->IsRemote() && player->IsHost() && player->m_doneLoading.GetValue() &&
                 player->m_ingame.GetValue() && player->m_inCutscene.GetValue())) {
                return 0;
            }
        }
    }
    return 1;
}

// 0x36ea50 PlayerManager::GetNumPlayerCharactersOfClass(int)
// The number of owned characters (m_numCharacters, +0x6c4) whose Character::m_charPropsId (+0x13c8, a 16-bit row of Arrays::CharacterTable)
// is classId; the count is read again every pass.
int PlayerManager::GetNumPlayerCharactersOfClass(int classId) {
    if (m_numCharacters <= 0) {
        return 0;
    }
    int count = 0;
    for (int i = 0; i < m_numCharacters; ++i) {
        Character* character = GetPlayer(i, true)->unk_660;
        if (character != nullptr && classId == character->m_charPropsId) {
            ++count;
        }
    }
    return count;
}

// 0x36eab8 PlayerManager::GetNumPlayerCharacterWarrior(void)
// GetNumPlayerCharactersOfClass(263).
int PlayerManager::GetNumPlayerCharacterWarrior() {
    return GetNumPlayerCharactersOfClass(kWarriorCharPropsId);
}

// 0x36eac0 PlayerManager::GetNumPlayerCharacterRogue(void)
int PlayerManager::GetNumPlayerCharacterRogue() {
    return GetNumPlayerCharactersOfClass(kRogueCharPropsId);
}

// 0x36eac8 PlayerManager::GetNumPlayerCharacterMage(void)
int PlayerManager::GetNumPlayerCharacterMage() {
    return GetNumPlayerCharactersOfClass(kMageCharPropsId);
}

// 0x36ead0 PlayerManager::GetNumLocalPlayers(bool)
// Online gate open: the local id list size, or with flag the number of local players that have a Character. Offline it counts the
// local records of m_players in order: with flag set, only those whose Character is set.
int PlayerManager::GetNumLocalPlayers(bool flag) {
    if (!OnlineMatchingReady()) {
        int count = 0;
        for (const auto& entry : m_players) {
            const PlayerInfo& player = entry.second;
            if (!player.unk_66c) {
                continue;
            }
            if (flag && !CharacterOf(player)) {
                continue;
            }
            ++count;
        }
        return count;
    }
    if (!flag) {
        return static_cast<int>(m_localPlayerIdList.size());
    }
    int count = 0;
    for (std::size_t i = 0; i < m_localPlayerIdList.size(); ++i) {
        PlayerInfo* player = GetPlayer(m_localPlayerIdList[i], false);
        if (CharacterOf(*player)) {
            ++count;
        }
    }
    return count;
}

// 0x36ec54 PlayerManager::InitialSetup(Point3D<float>)
// Once (or again while unk_71a is set), the position is stored in the PlayerManager (+0x6d4..+0x6dc) and every local player's character with a
// Character is moved there (GameObject::SetPosition(position, true)). The loop count is read again from the global PlayerManager
// (dword_99F76C, not this object) each pass.
void PlayerManager::InitialSetup(Point3D<float> position) {
    if (m_initialSetupDone && !unk_71a) {
        return;
    }
    m_initialSetupDone = true;
    unk_6d4 = position.X;
    unk_6d8 = position.Y;
    unk_6dc = position.Z;
    int count = dword_99F76C->GetNumLocalPlayers(true);
    for (int i = 0; i < count; ++i) {
        PlayerInfo* local = dword_99F76C->GetLocalPlayer(i, true);
        local->unk_660->SetPosition(position, true);
        count = dword_99F76C->GetNumLocalPlayers(true);
    }
}

// 0x36ed0c PlayerManager::_UpdatePlayerNumbers(void)
// The online branch (gate open) numbers the id-list players; its return value is a leftover register in the binary
// (the id-list end pointer, or 1 for an empty list), which the port does not reproduce, so it returns 0 there. The
// offline branch numbers the players of m_players in order and returns the count of the non-local players.
int PlayerManager::_UpdatePlayerNumbers() {
    if (OnlineMatchingReady()) {
        int playerIndex = 0;  // the numbered players so far
        int localIndex = 0;   // the local players so far
        int remoteIndex = 0;  // the remote players so far
        for (std::size_t idx = 0; idx < m_playerIdList.size(); ++idx) {
            PlayerInfo* player = GetPlayerByInternalID(m_playerIdList[idx], false);
            if (player->unk_670 == -1) {
                player->unk_678 = -1;
                continue;
            }
            player->unk_678 = playerIndex;
            if (player->unk_66c) {
                player->unk_67c = localIndex++;
            } else {
                player->unk_67c = remoteIndex++;
            }
            ++playerIndex;
        }
        return 0;
    }
    int index = 0;
    int localCount = 0;
    int remoteCount = 0;
    for (auto& entry : m_players) {
        PlayerInfo& player = entry.second;
        player.unk_678 = index++;
        if (player.unk_66c) {
            player.unk_67c = localCount++;
        } else {
            player.unk_67c = remoteCount++;
        }
    }
    return remoteCount;
}

// 0x36eea8 PlayerManager::GetPlayerByCharacter(Character const*,bool)
// Online gate open: the first id-list player whose Character is the argument (through _GetNetPlayerInfo). Offline it returns the first record of
// m_players whose Character is the argument, or the null record (m_nullPlayer) when none matches.
PlayerInfo* PlayerManager::GetPlayerByCharacter(const Character* character, bool flag) {
    if (OnlineMatchingReady()) {
        for (std::size_t idx = 0; idx < m_playerIdList.size(); ++idx) {
            const int internalId = m_playerIdList[idx];
            PlayerInfo* player = GetPlayerByInternalID(internalId, flag);
            if (character == CharacterOf(*player)) {
                return _GetNetPlayerInfo(internalId, flag);
            }
        }
        return &m_nullPlayer;
    }
    for (auto& entry : m_players) {
        if (character == CharacterOf(entry.second)) {
            return &entry.second;
        }
    }
    return &m_nullPlayer;
}

// 0x36effc PlayerManager::IsLocalPlayer(Character const*)
int PlayerManager::IsLocalPlayer(const Character* character) {
    if (!character) {
        return 0;
    }
    PlayerInfo* player = GetPlayerByCharacter(character, false);
    return player->IsLocal() ? 1 : 0;
}

// 0x36f074 PlayerManager::IsLocalPlayerHosting(void)
// Online in OnlineGameState mode 3 or 4 (GL live): CMatchingGLLive::IsHost(); other online modes: the local player record's IsHost;
// offline: 1.
int PlayerManager::IsLocalPlayerHosting() {
    if (OnlineSessionFlag() && static_cast<unsigned>(OnlineGameStateWord() - 3) <= 1u) {
        CMatchingGLLive* matching = static_cast<CMatchingGLLive*>(CMatching::Get());
        return matching->IsHost() ? 1 : 0;
    }
    if (OnlineSessionFlag()) {
        PlayerInfo* local = GetLocalPlayer(0, false);
        return local->IsHost() ? 1 : 0;
    }
    return 1;
}

// 0x36f0dc PlayerManager::_AttachControllerToPlayerCharacter(int)
// A local player's character gets a v2MixedController (on its v2Controllable base at +0x374) holding a v2GamepadController (the record's pad
// index, +0x668), a v2EmuController and a v2HudController, all on the mixed controller's own v2Controllable. Online the controller byte +0x0a
// is set. A remote player's character gets a v2NetController. In both cases the controller's character (+0x0c) is the character.
// The original passes a null controllable to the constructors when the record has no character and then dereferences it; that path
// returns here.
void PlayerManager::_AttachControllerToPlayerCharacter(int internalId) {
    PlayerInfo* player = GetPlayerByInternalID(internalId, false);
    Character* character = player->unk_660;
    if (character == nullptr) {
        return;
    }
    v2Controllable* controllable = static_cast<v2Controllable*>(character);
    if (player->unk_66c) {
        v2MixedController* mixed = new v2MixedController(controllable);
        controllable->SetController(mixed);
        controllable->m_controller->m_character = character;
        if (GetOnlineGameFlag()) {
            controllable->m_controller->unk_00a = true;
        }
        v2Controllable* mixedControllable = static_cast<v2Controllable*>(mixed);
        mixed->AddController(new v2GamepadController(mixedControllable, player->unk_668));
        mixed->AddController(new v2EmuController(mixedControllable));
        mixed->AddController(new v2HudController(mixedControllable));
    } else {
        v2NetController* net = new v2NetController(controllable);
        controllable->SetController(net);
        controllable->m_controller->m_character = character;
    }
}

// 0x36f2bc PlayerManager::PostInitCharacters(void)
// For each local active player: offline with no character the assert "c" (PlayerManager.cpp line 1091) is reported; online with no character the
// matching room is left (the virtual at CMatching vtable +0x3c, LeaveRoom) and every connection is dropped (CConnectionManager::DisconnectAll).
// A player that has a Character gets Character::VerifySpecialization(). The original calls VerifySpecialization on the null pointer after the
// offline assert; that call is skipped here.
void PlayerManager::PostInitCharacters() {
    const int numPlayers = GetNumPlayers();
    for (int i = 0; i < numPlayers; ++i) {
        PlayerInfo* player = GetPlayer(i, false);
        if (!player->IsLocal() || !player->IsActive()) {
            continue;
        }
        Character* character = player->unk_660;
        if (!GetOnlineGameFlag()) {
            if (!character) {
                AssertFailed("c", kPlayerManagerCpp, 1091);
                continue;
            }
            character->VerifySpecialization();
            continue;
        }
        if (character) {
            character->VerifySpecialization();
            continue;
        }
        static_cast<CMatchingGLLive*>(CMatching::Get())->LeaveRoom();
        (void)GetConnectionMgr()->DisconnectAll();
    }
}

// 0x36f4b4 PlayerManager::_UpdateJoiningController(int,int)
// For each of the ten button channels of the controller's gamepad, in the binary's order (37, 38, 39, 40, 10, 11, 12, 13, 0, 1): when the value is
// above the threshold (previous_maximum + previous_minimum + 1.0) * 0.5 differently from the latched state, an EvGamepad (button, state, controller
// index) is raised. After the last channel (1) raised an event, CNetPlayerInfo::SetState(player, 0) is called.
void PlayerManager::_UpdateJoiningController(int controllerId, int internalId) {
    Gamepad* pad = InputManager::GetInstance()->GetGamepad(controllerId);
    PlayerInfo* player = GetPlayerByInternalID(internalId, false);
    bool raisedLast = false;
    constexpr int kCount = static_cast<int>(sizeof(kJoiningButtons) / sizeof(kJoiningButtons[0]));
    for (int k = 0; k < kCount; ++k) {
        const int button = kJoiningButtons[k];
        const Gamepad::Channel& channel = pad->m_buttons[button];
        // The binary's threshold: (previous_maximum + previous_minimum + 1.0) * 0.5.
        const float threshold = ((channel.previous_maximum + channel.previous_minimum) + 1.0f) * 0.5f;
        const bool above = channel.previous >= threshold;
        bool raised = false;
        if (above != channel.previous_above_threshold) {
            RaiseGamepadButtonEvent(button, above ? 1 : 0, controllerId);
            raised = true;
        }
        if (k == kCount - 1) {
            raisedLast = raised;
        }
    }
    if (raisedLast) {
        player->SetState(0);
    }
}

// 0x370020 PlayerManager::_PackInventory(PlayerInfo &)
// A local record with a Character, while a level is loaded: the equipment ids are folded into a hash by slot (slot 1 folds the sum of the ids of
// slots 1 and 2, slot 2 is skipped, any other slot (0 and >= 3) folds its own item id; an empty slot, or a zero sum, complements the hash). When the hash differs from
// the replicated counter (unk_4a0) the counter is updated and the item id of every equipment slot (-1 when empty) is written to the replicated
// array (unk_3b0, one int per slot).
void PlayerManager::_PackInventory(PlayerInfo& info) {
    if (!info.unk_66c) {
        return;
    }
    Character* character = info.unk_660;
    if (character == nullptr) {
        return;
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr || !level->m_isLoaded) {
        return;
    }
    ItemInventory* inventory = static_cast<ItemInventory*>(character);
    const int numSlots = inventory->GetNumEquipmentSlots();
    std::int32_t hash = 0;
    for (int slot = 0; slot < numSlots; ++slot) {
        if (static_cast<unsigned int>(slot) - 1u > 1u) {  // unsigned in the original: slot 0 and slots >= 3 fold their own item id
            ItemInstance* item = inventory->GetEquippedItem(static_cast<unsigned int>(slot));
            if (item == nullptr) {
                hash = ~hash;
            } else {
                hash ^= item->GetItemId();
            }
            continue;
        }
        if (slot == 2) {
            continue;
        }
        ItemInstance* first = inventory->GetEquippedItem(1u);
        ItemInstance* second = inventory->GetEquippedItem(2u);
        const std::int32_t firstId = first != nullptr ? first->GetItemId() : 0;
        const std::int32_t secondId = second != nullptr ? second->GetItemId() : 0;
        const std::int32_t sum = firstId + secondId;
        if (sum != 0) {
            hash ^= sum;
        } else {
            hash = ~hash;
        }
    }
    if (hash != info.unk_4a0.GetValue()) {
        info.unk_4a0.SetValue(hash);
        std::vector<std::int32_t> ids(static_cast<std::size_t>(numSlots > 0 ? numSlots : 0), 0);
        for (int slot = 0; slot < numSlots; ++slot) {
            ItemInstance* item = inventory->GetEquippedItem(static_cast<unsigned int>(slot));
            ids[static_cast<std::size_t>(slot)] = item != nullptr ? item->GetItemId() : -1;
        }
        info.unk_3b0.SetBuffer(ids.data(), static_cast<std::size_t>(numSlots) * 4);
    }
}

// 0x370c9c PlayerManager::ResetCharacterDeathTimer(void)
// The local player's death timer is set to PyDataConstants "CharacterDesign" / "MultiplayerDeathTimer".
void PlayerManager::ResetCharacterDeathTimer() {
    PlayerInfo* local = GetLocalPlayer(0, false);
    local->SetCharacterDeathTimer(ApplicationGetInstance().m_pyDataConstants->getConstant("CharacterDesign", "MultiplayerDeathTimer"));
}

// 0x370e00 PlayerManager::ClearLoadingInfo(void)
void PlayerManager::ClearLoadingInfo() {
    (void)GetOnline();
    m_readyToRollTimer = -1;
    m_initialSetupDone = false;
    m_readyToRollWaiting = false;
    m_questSyncBuffered = false;
    unk_71a = false;
    PlayerInfo* local = GetLocalPlayer(0, false);
    local->ClearLoadingInfo();
    m_globalDeathState = 0;
    m_localDeathPending = false;
}

// 0x371050 PlayerManager::_AttachLightToPlayerCharacter(int)
// Every light base of the object manager (dword_99F764) refreshes its attachment (LightBase::RefreshAttachment, vtable +0x58). The argument
// is not read by the binary.
void PlayerManager::_AttachLightToPlayerCharacter(int /*internalId*/) {
    std::list<LightBase*> lights;
    dword_99F764->GetLightBaseList(lights);
    for (LightBase* light : lights) {
        light->RefreshAttachment();
    }
}

// 0x3714ac PlayerManager::~PlayerManager() (D1, complete object)
// Not defined here. A class has one destructor body, and g1-game-character-PlayerManager-025dba-2.cpp already defines
// PlayerManager::~PlayerManager() {} for 0x37159c (D2) and 0x371580 (D0). PlayerManager has no virtual base, so D1 and
// D2 are the same body (the binary frees the members in declaration order: StreamBuffer, id lists, player map, null
// record). A second definition here would be a duplicate symbol at link time.
