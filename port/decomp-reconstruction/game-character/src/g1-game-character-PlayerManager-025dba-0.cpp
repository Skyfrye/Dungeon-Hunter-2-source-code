// Batch g1-game-character-PlayerManager-025dba-0 (part 1 of PlayerManager): the lookups by internal, local, remote and
// friendly id, the death and readiness checks, the quest-sync buffer, and PlayerManager::_UnpackInventory. Declarations
// and layout come from dh2/PlayerManager.hpp and dh2/PlayerInfo.hpp.
//
// Offsets in comments are the original 32-bit offsets inside PlayerManager (this) or PlayerInfo (info) unless a line says
// otherwise. The records are the std::map m_players (key: internal id); the original walks its red-black tree by hand,
// and that walk is written here as std::map::find and in-order iteration.
//
// THE NETWORK GATE. Most lookups branch on one test, the original's (online game) && (comm lib initialised) && (in room)
// && (net player manager initialised). NetGateOpen() (game-app/src/net_gate.cpp) is that test, with the real fields: COnline's online-game
// byte (+0x05), OnlineGameState's comm-lib byte (+0x24), CMatching's IsInRoom and CNetPlayerManager::IsInitialized.
//
// Layout facts: PlayerInfo +0x660 is the Character* (unk_660), +0x670 the internal id (unk_670).

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <vector>

// dh2/Character.hpp is not included: see the helper declarations in dh2/global/player_manager_unpack_inventory.hpp.
#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Application.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/global/ctrl_camera.hpp"                      // ApplicationGetInstance()
#include "dh2/global/net_singletons.hpp"                   // GetNetPlayerMgr()
#include "dh2/global/player_manager_unpack_inventory.hpp"  // ItemTableRowCount()
#include "net-transport/tb/c_net_player_manager.hpp"

namespace {

const char* const kPlayerManagerCpp =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\PlayerManager\\PlayerManager.cpp";
const char* const kNetGateExpr =
    "(GetOnline().IsOnlineGame() && OnlineGameState::GetInstance()->isCommLibInitialized() && "
    "CMatching::Get().IsInRoom() && GetNetPlayerMgr().IsInitialized())";

// The original ASSERT(expr) macro, as in CharAI: level 2 ends the process (the original stores to address 0), level 1
// prints the message to stderr and execution continues, level 0 is silent.
void AssertFailed(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

}  // namespace

// 0x330794 _ZN13PlayerManager23GetLocalPlayerCharacterEv
// Reads the character of the local player record (PlayerInfo +0x660, a Character* in the original).
Character* PlayerManager::GetLocalPlayerCharacter() {
    return static_cast<Character*>(GetLocalPlayer(0, true)->unk_660);
}

// 0x36d280 _ZN13PlayerManager18IsPlayerInLocalMapEi
// The original walks the tree to the lower bound of the key and tests for an exact match. That is std::map::find.
bool PlayerManager::IsPlayerInLocalMap(int internalId) {
    return m_players.find(internalId) != m_players.end();
}

// 0x36d7a8 _ZN13PlayerManager13GetNumPlayersEv
// the online branch counts the player id list (+0x6a8); the offline branch counts the local records (node count
// +0x6a0). The branch follows NetGateOpen().
int PlayerManager::GetNumPlayers() {
    if (NetGateOpen()) {
        return static_cast<int>(m_playerIdList.size());
    }
    return static_cast<int>(m_players.size());
}

// 0x36d814 _ZN13PlayerManager16ReceiveQuestSyncEP14PlayerSavegame
// the original returns the r0 left by the void PlayerSavegame::SG_UnpackQuestSync. The one caller ignores the
// result, so this returns 0.
int PlayerManager::ReceiveQuestSync(PlayerSavegame* savegame) {
    savegame->SG_UnpackQuestSync(m_questSyncBuffer);
    m_questSyncBuffered = false;
    return 0;
}

// 0x36d834 _ZN13PlayerManager20ClearQuestSyncBufferEv
// the original returns the r0 left by the void StreamBuffer::clear. The caller returns that value up, and its
// value is not modelled here, so this returns 0.
int PlayerManager::ClearQuestSyncBuffer() {
    m_questSyncBuffer.clear();
    m_questSyncBuffered = false;
    return 0;
}

// 0x36d850 _ZN13PlayerManager16_UnpackInventoryER10PlayerInfo
// Rebuilds the equipment of a record from its replicated item-id array (info.unk_3b0, one int per equipment slot). It
// runs only while a level is loaded, the record is not flagged (+0x66c), it has a character (+0x660) and it is in game
// (m_ingame). Then it runs when the replicated counter (unk_4a0) differs from the value last applied (unk_684), or when
// the item-id array has changed since. Each slot is refilled from the item table, or unequipped when its id is out of range.
//
// The item-id buffer is the original's new[] block (4 bytes per equipment slot). This port value-initialises it. GetBuffer
// copies the stored byte array into it; when that array is empty nothing is copied, and the slots keep the zero fill
// where the original would read uninitialised heap.
void PlayerManager::_UnpackInventory(PlayerInfo& info) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr || !level->m_isLoaded) {
        return;
    }
    if (info.unk_66c != 0) {
        return;
    }
    Character* character = static_cast<Character*>(info.unk_660);
    if (character == nullptr) {
        return;
    }
    if (!info.m_ingame.GetValue()) {
        return;
    }

    const std::int32_t value = info.unk_4a0.GetValue();
    if (static_cast<std::int32_t>(info.unk_684) == value) {
        if (!info.unk_3b0.IsChanged()) {
            return;
        }
    }
    info.unk_684 = static_cast<std::uint32_t>(value);

    // The inventory is the ItemInventory base of the character (+0x37c); the helpers reach it.
    const int numSlots = CharacterNumEquipmentSlots(character);
    std::vector<std::int32_t> itemIds(static_cast<std::size_t>(numSlots > 0 ? numSlots : 0), 0);
    info.unk_3b0.GetBuffer(itemIds.data(), numSlots * 4);
    CharacterRemoveAllItems(character);

    for (int slot = 0; slot < numSlots; ++slot) {
        const std::int32_t itemId = itemIds[static_cast<std::size_t>(slot)];
        const std::uint32_t rowCount = ItemTableRowCount();
        if (itemId >= 0 && rowCount != 0 && rowCount > static_cast<std::uint32_t>(itemId)) {
            ItemInstance* item = new ItemInstance(itemId, 1u);
            const int added = CharacterAddItemInstance(character, item);                // vtable +0x12c
            CharacterEquipItemToSlot(character, static_cast<unsigned int>(slot),
                                     static_cast<unsigned int>(added));                 // vtable +0x13c
        } else {
            CharacterUnEquipItemFromSlot(character, static_cast<unsigned int>(slot));   // vtable +0x144, slot index in r1
        }
    }
}

// 0x36de28 _ZN13PlayerManager19IsPlayerInRemoteMapEi
// Asks the network record of the player whether it is active (CNetPlayerInfo vtable +0x5c, IsActive).
int PlayerManager::IsPlayerInRemoteMap(int internalId) {
    CNetPlayerInfo* player = GetNetPlayerMgr()->GetPlayer(internalId, false);
    return player->IsActive() ? 1 : 0;
}

// 0x36de50 _ZN13PlayerManager15DoesPlayerExistEi
// the remote test applies when NetGateOpen()  is true, otherwise the local map is searched.
int PlayerManager::DoesPlayerExist(int internalId) {
    if (NetGateOpen()) {
        return IsPlayerInRemoteMap(internalId);
    }
    return IsPlayerInLocalMap(internalId) ? 1 : 0;
}

// 0x36dec4 _ZN13PlayerManager17_GetNetPlayerInfoEib
// the gate is NetGateOpen(). The original's ASSERT is reproduced. It fires when the gate is closed, and the
// lookup still runs after it, as in the original.
PlayerInfo* PlayerManager::_GetNetPlayerInfo(int internalId, bool flag) {
    if (!NetGateOpen()) {
        AssertFailed(kNetGateExpr, kPlayerManagerCpp, 1910);
    }
    return static_cast<PlayerInfo*>(GetNetPlayerMgr()->GetPlayer(internalId, flag));
}

// 0x36dfb0 _ZN13PlayerManager21GetPlayerByInternalIDEib
// follows NetGateOpen()  for the network lookup. The local lookup is std::map::find; a miss, or internal
// id -1, returns the null record m_nullPlayer (the original's this+8).
PlayerInfo* PlayerManager::GetPlayerByInternalID(int internalId, bool flag) {
    if (internalId == -1) {
        return &m_nullPlayer;
    }
    if (NetGateOpen()) {
        return _GetNetPlayerInfo(internalId, flag);
    }
    const auto it = m_players.find(internalId);
    if (it == m_players.end()) {
        return &m_nullPlayer;
    }
    return &it->second;
}

// 0x36e09c _ZN13PlayerManager16GetHostingPlayerEv
// The host's internal id is the host member id of the network player manager (CNetPlayerManager +0x170, net_struct_.host_member_id_), read
// when the network gate is open; with the gate closed the original looks up internal id 0.
PlayerInfo* PlayerManager::GetHostingPlayer() {
    int hostInternalId = 0;
    if (NetGateOpen()) {
        hostInternalId = GetNetPlayerMgr()->net_struct_.host_member_id_.GetValue();
    }
    return GetPlayerByInternalID(hostInternalId, false);
}

// 0x36e10c _ZN13PlayerManager24_GetInternalIDByRemoteIDEib
// the online branch follows NetGateOpen() . The original compares remoteId as unsigned, so that is kept. Both
// branches count the records that are not flagged (+0x66c != 1) and, when flag is set, have a character (+0x660). The
// internal id (+0x670) of the remoteId-th such record is returned, in key order for the local map and in player-id-list
// order for the network branch.
int PlayerManager::_GetInternalIDByRemoteID(int remoteId, bool flag) {
    const auto wanted = static_cast<std::uint32_t>(remoteId);
    if (NetGateOpen()) {
        if (wanted < m_playerIdList.size()) {
            std::uint32_t matched = 0;
            for (std::size_t index = 0; index < m_playerIdList.size(); ++index) {
                const PlayerInfo* player = GetPlayerByInternalID(m_playerIdList[index], false);
                if (player->unk_66c != 1 && (!flag || player->unk_660 != nullptr)) {
                    if (matched == wanted) {
                        return player->unk_670;
                    }
                    ++matched;
                }
            }
        }
        return -1;
    }

    if (wanted >= m_players.size()) {
        return -1;
    }
    std::uint32_t matched = 0;
    for (const auto& entry : m_players) {
        const PlayerInfo& player = entry.second;
        if (player.unk_66c != 1 && (!flag || player.unk_660 != nullptr)) {
            if (matched == wanted) {
                return player.unk_670;
            }
            ++matched;
        }
    }
    return -1;
}

// 0x36e2ac _ZN13PlayerManager15GetRemotePlayerEib
PlayerInfo* PlayerManager::GetRemotePlayer(int remoteId, bool flag) {
    return GetPlayerByInternalID(_GetInternalIDByRemoteID(remoteId, flag), false);
}

// 0x36e2cc _ZN13PlayerManager23_GetInternalIDByLocalIDEib
// the online branch follows NetGateOpen() . Online: the localId-th entry of the local id list (with flag, the
// localId-th entry whose record has a character). Offline: the internal id (+0x670) of the localId-th record that is not
// zero in +0x66c and, with flag, has a character.
int PlayerManager::_GetInternalIDByLocalID(int localId, bool flag) {
    const auto wanted = static_cast<std::uint32_t>(localId);
    if (NetGateOpen()) {
        if (wanted < m_localPlayerIdList.size()) {
            if (!flag) {
                return m_localPlayerIdList[wanted];
            }
            std::uint32_t matched = 0;
            for (std::size_t index = 0; index < m_localPlayerIdList.size(); ++index) {
                const PlayerInfo* player = GetPlayerByInternalID(m_localPlayerIdList[index], false);
                if (player->unk_660 != nullptr) {
                    if (matched == wanted) {
                        return m_localPlayerIdList[index];
                    }
                    ++matched;
                }
            }
        }
        return -1;
    }

    if (wanted < m_players.size()) {
        std::uint32_t matched = 0;
        for (const auto& entry : m_players) {
            const PlayerInfo& player = entry.second;
            if (player.unk_66c != 0 && (!flag || player.unk_660 != nullptr)) {
                if (matched == wanted) {
                    return player.unk_670;
                }
                ++matched;
            }
        }
    }
    return -1;
}

// 0x36e478 _ZN13PlayerManager14GetLocalPlayerEib
PlayerInfo* PlayerManager::GetLocalPlayer(int localId, bool flag) {
    return GetPlayerByInternalID(_GetInternalIDByLocalID(localId, flag), false);
}

// 0x36e498 _ZN13PlayerManager18HandleQuestSyncMsgEPKci
// Copies a quest sync packet into m_questSyncBuffer when nothing is buffered yet and the local player's savegame is not
// quest-synced (or when unk_71a is set). when the packet is not copied, the original returns the local record
// pointer left in r0; this returns 0 there. The one caller ignores the result.
int PlayerManager::HandleQuestSyncMsg(const char* data, int size) {
    if (size <= 0) {
        AssertFailed("bufferSize > 0", kPlayerManagerCpp, 2389);
    }
    Character* character = static_cast<Character*>(GetLocalPlayer(0, true)->unk_660);
    int result = 0;
    PlayerSavegame* savegame = character != nullptr ? CharacterSavegame(character) : nullptr;
    const bool localNotSynced = character != nullptr && (savegame == nullptr || !savegame->m_questSynced);
    if ((!m_questSyncBuffered && localNotSynced) || unk_71a) {
        m_questSyncBuffer.expand(static_cast<std::uint64_t>(size));
        result = static_cast<int>(m_questSyncBuffer.write(data, static_cast<std::uint64_t>(size)));
        m_questSyncBuffered = true;
    }
    return result;
}

// 0x36e5b4 _ZN13PlayerManager26_GetInternalIDByFriendlyIDEib
// the online branch follows NetGateOpen() . Online: when more than friendlyId players exist, the friendlyId-th
// entry of the player id list (with flag, counting only records that have a character). Offline: the internal id (+0x670)
// of the friendlyId-th record (with flag, one that has a character), in key order.
int PlayerManager::_GetInternalIDByFriendlyID(int friendlyId, bool flag) {
    const auto wanted = static_cast<std::uint32_t>(friendlyId);
    if (NetGateOpen()) {
        if (GetNumPlayers() > friendlyId) {
            std::uint32_t matched = 0;
            for (std::size_t index = 0; index < m_playerIdList.size(); ++index) {
                const PlayerInfo* player = GetPlayerByInternalID(m_playerIdList[index], false);
                if (!flag || player->unk_660 != nullptr) {
                    if (matched == wanted) {
                        return m_playerIdList[index];
                    }
                    ++matched;
                }
            }
        }
        return -1;
    }

    if (wanted >= m_players.size()) {
        return -1;
    }
    std::uint32_t matched = 0;
    for (const auto& entry : m_players) {
        const PlayerInfo& player = entry.second;
        if (!flag || player.unk_660 != nullptr) {
            if (matched == wanted) {
                return player.unk_670;
            }
            ++matched;
        }
    }
    return -1;
}

// 0x36e744 _ZN13PlayerManager9GetPlayerEib
PlayerInfo* PlayerManager::GetPlayer(int friendlyId, bool flag) {
    return GetPlayerByInternalID(_GetInternalIDByFriendlyID(friendlyId, flag), false);
}

// 0x36e764 _ZN13PlayerManager14AllPlayersDeadEv
// True when every player record has a character that is dead, or has a death timer other than -1. A record without a
// character makes the answer false. Follows GetNumPlayers and GetPlayer, which depend on NetGateOpen() .
int PlayerManager::AllPlayersDead() {
    if (!(GetNumPlayers() > 0)) {
        return 1;
    }
    for (int index = 0;;) {
        PlayerInfo* player = GetPlayer(index, false);
        Character* character = static_cast<Character*>(player->unk_660);
        if (character == nullptr || (!CharacterIsDead(character) && player->m_characterDeathTimer.GetValue() == -1)) {
            return 0;
        }
        ++index;
        if (!(index < GetNumPlayers())) {
            return 1;
        }
    }
}

// 0x36e7f8 _ZN13PlayerManager14AllReadyToRollEv
// the original returns 1 (ready) when the network gate is closed, which is the value here . When the gate is open, every active record must have finished loading (m_doneLoading) and be ready to roll
// (m_readyToRoll).
int PlayerManager::AllReadyToRoll() {
    if (!NetGateOpen()) {
        return 1;
    }
    const int numPlayers = GetNumPlayers();
    if (numPlayers <= 0) {
        return 1;
    }
    for (int index = 0;;) {
        PlayerInfo* player = GetPlayer(index, false);
        ++index;
        if (player->IsActive()) {
            if (!player->m_doneLoading.GetValue() || !player->m_readyToRoll.GetValue()) {
                return 0;
            }
        }
        if (index == numPlayers) {
            return 1;
        }
    }
}
