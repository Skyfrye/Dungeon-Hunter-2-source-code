// Batch e2-net-transport-CNetPlayerManager-0e46d6-0: the first 20 functions of the second CNetPlayerManager
// group in libDungeonHunter2.so (player list maintenance, id-list cache, packet reads).
// Class: include/net-transport/tb/c_net_player_manager.hpp.
// COnline is the real class in net-session-online; no body here uses the np_deps shim any more.
// Status per function is in ledger.d/e2-net-transport-CNetPlayerManager-0e46d6-0.csv and, for the redo of
// the functions below, in ledger.d/r1n-net-transport-CNetPlayerManager-0e46d6-0.csv.
//
// Not defined here (skipped, see the ledger): ProcessEvents, the two GetPlayerName overloads,
// AddPlayer(int,int), AddPlayer(NetBitStream&,int,int) and ~CNetPlayerManager. The nested
// NetStructPlayerManager constructor and destructor are below (decisions-1).
#include "net-transport/tb/c_net_player_manager.hpp"
#include <cstdint>
#include "net-transport/tb/net_player_manager_deps.hpp"
#include <cstddef>
#include <vector>
#include "net-session-online/deps/matching.hpp"  // CMatching (one definition, net-session-online)
#include "net-transport/tb/cnet_player_info.hpp"




// 0x810d90 CNetPlayerManager::NetStructPlayerManager::NetStructPlayerManager()
// Builds the NetStruct base and one NetStructInt<6u> block at +0x130 (sizeBits 6, -1 masks), declares it
// with NetStruct::DeclareMember, then stores -1 in it. The Hex-Rays text goes through a temporary block
// holding -1 and the block's SetValue (vtable +0x1c); the effect is host_member_id_.SetValue(-1), which
// marks the block changed because it started at 0.
CNetPlayerManager::NetStructPlayerManager::NetStructPlayerManager() {
    DeclareMember(&host_member_id_);  // +0x130
    host_member_id_.SetValue(-1);
}

// 0x810ec8 CNetPlayerManager::NetStructPlayerManager::~NetStructPlayerManager()   (D1)
// 0x810f3c is the deleting form (this plus CustomFree). Resets the block's vptr, restores the NetStruct
// vptr and empties the packet history map; the member and base destructors do that.
CNetPlayerManager::NetStructPlayerManager::~NetStructPlayerManager() {}

// 0x8108c0 CNetPlayerManager::DisconnectPlayer(int)
// The original calls CNetPlayerInfo::Disconnect on the lookup result without a null check; this
// keeps that order. Disconnect itself is partial (SetChanged calls not ported).
int CNetPlayerManager::DisconnectPlayer(int a2) {
    CNetPlayerInfo* player = GetPlayer(a2, false);
    player->Disconnect();
    return 0;
}

// 0x810b7c CNetPlayerManager::SetPlayerGamepadId(int,int)
// The field written is gamepad_id_ (+0x1c8, the NetStructInt<16u> block at +0x1a8). The compare, store and
// SetChanged are the block's SetValue (checked against NetStructMemberType<int>::SetValue, 0x36d9f0).
int CNetPlayerManager::SetPlayerGamepadId(int a2, int a3) {
    if (a2 < 0) {
        return 0;
    }
    if (a2 >= player_slot_count_) {  // +0x194
        return 0;
    }
    if (static_cast<std::size_t>(a2) >= players_.size()) {  // +0x198, +0x19c
        return 0;
    }
    CNetPlayerInfo* player = players_[static_cast<std::size_t>(a2)];
    player->gamepad_id_.SetValue(a3);  // +0x1c8: compare, store and NetStructMember::SetChanged (block +0x1a8)
    return 1;
}

// 0x810bd4 CNetPlayerManager::ReassignPlayer(int,int,int)
// Server only. The three stores are the blocks' SetValue (+0x180, +0x1a8, +0x1d0): the member id (a3), the
// gamepad id (a4) and state 1. When the member is not the local one the player's NetStruct is enabled, and
// the result is NetStruct::SetEnabled's. Otherwise it is what r0 holds: the LocalMemberId call (server) or
// the IsServer result (0, client). The result is typed unsigned char* as the NetStruct::SetEnabled value is;
// the member-id results are the raw integer. No caller of ReassignPlayer is in hexrays-all.
unsigned char* CNetPlayerManager::ReassignPlayer(int a2, int a3, int a4) {
    const bool is_server = CMatching::Get()->IsServer();
    if (!is_server) {
        return nullptr;
    }
    CNetPlayerInfo* player = GetPlayer(a2, true);
    player->matching_member_id_.SetValue(a3);  // +0x1a0, block +0x180
    player->gamepad_id_.SetValue(a4);          // +0x1c8, block +0x1a8
    player->state_.SetValue(1);                // +0x1f0, block +0x1d0
    const int local_member = CMatching::Get()->LocalMemberId();  // vtable +0x6c
    if (a3 != local_member) {
        return players_[static_cast<std::size_t>(a2)]->SetEnabled(true);  // NetStruct::SetEnabled (0x81366c)
    }
    return reinterpret_cast<unsigned char*>(static_cast<std::intptr_t>(local_member));
}

// 0x810c88 CNetPlayerManager::ClearPlayers()
// Deletes the players, the secondary players and the fallback through DeleteNetPlayerInfo, clearing each slot.
// The original's int-like result is the leftover r0 of the last DeleteNetPlayerInfo call (0 when there is no
// fallback). The result is not kept (void): the callers in hexrays-all (chunk_053 lines 13776, 14947, 15029)
// do not read it.
void CNetPlayerManager::ClearPlayers() {
    for (CNetPlayerInfo*& slot : players_) {
        if (slot != nullptr) {
            DeleteNetPlayerInfo(slot);
        }
        slot = nullptr;
    }
    players_.clear();

    for (CNetPlayerInfo*& slot : secondary_players_) {
        if (slot != nullptr) {
            DeleteNetPlayerInfo(slot);
        }
        slot = nullptr;
    }
    secondary_players_.clear();

    if (fallback_player_ != nullptr) {  // +0x17c
        DeleteNetPlayerInfo(fallback_player_);
        fallback_player_ = nullptr;
    }
}

// 0x8111ec CNetPlayerManager::InitPlayers()
// The member id stores are the +0x158 block's SetValue (compare, store, SetChanged). The original
// returns the leftover r0 of the last NetStruct::SetEnabled call; that value is not kept (void).
void CNetPlayerManager::InitPlayers() {
    CNetPlayerInfo* fallback = CreateNetPlayerInfo();
    fallback_player_ = fallback;  // +0x17c
    fallback->member_id_.SetValue(-64);  // +0x178, block +0x158
    fallback->Reset();  // vtable +0x4c

    for (int i = 0; i < player_slot_count_; ++i) {  // +0x194
        CNetPlayerInfo* player = CreateNetPlayerInfo();
        players_.push_back(player);  // +0x198, +0x19c
        CNetPlayerInfo* last = players_.back();
        last->member_id_.SetValue(i);  // +0x178, block +0x158
        last->Reset();  // vtable +0x4c
        last->SetEnabled(false);  // NetStruct::SetEnabled (0x81366c)
    }
}

// 0x811308 CNetPlayerManager::ResetPlayers()
// Clears the id-list cache, ClearPlayers, InitPlayers, and sets last_host_id_ (+0x1b0) to -1. The leftover r0 of
// InitPlayers is not kept; the callers in hexrays-all (chunk_052 and chunk_053) do not use the value.
void CNetPlayerManager::ResetPlayers() {
    player_id_list_.clear();  // +0x1b8 (end = begin)
    ClearPlayers();
    InitPlayers();
    last_host_id_ = -1;  // +0x1b0
}

// 0x8113fc CNetPlayerManager::GetPlayerIdList()
// Returns the cached list of the active players' member ids. The cache is rebuilt only when
// id_list_dirty_ is set. The dirty flag is cleared before the scan and set again when a player is
// added. An empty list with the dirty flag clear is returned as is.
std::vector<int>& CNetPlayerManager::GetPlayerIdList() {
    if (!player_id_list_.empty()) {
        return player_id_list_;
    }
    if (!id_list_dirty_) {
        return player_id_list_;
    }
    id_list_dirty_ = false;
    if (players_.empty()) {
        return player_id_list_;
    }
    for (std::size_t i = 0; i < players_.size(); ++i) {
        CNetPlayerInfo* player = players_[i];
        if (player != nullptr && player->IsActive()) {  // vtable +0x5c
            player_id_list_.push_back(player->member_id_.GetValue());  // +0x178
            id_list_dirty_ = true;
        }
    }
    return player_id_list_;
}

// 0x8114ec CNetPlayerManager::GetPlayerCount()
int CNetPlayerManager::GetPlayerCount() {
    return static_cast<int>(GetPlayerIdList().size());
}

// 0x811d74 CNetPlayerManager::ReadPacketData(int,int,NetBitStream&)
// Partial. NetStruct::Load and the player's virtual slot +0x18 (ConditionalLoad) are the real NetStruct
// calls, and the state-based flags follow the pseudocode. The loop calls AddPlayer(NetBitStream&, int, int)
// (0x811be8), which ledger.csv marks skipped and which has no definition in the tree, so this body is not
// linkable until that function is written.
NetBitStream* CNetPlayerManager::ReadPacketData(int a2, int a3, NetBitStream& stream) {
    net_struct_.Load(stream, a2, 0);
    for (std::size_t i = 0; i < players_.size(); ++i) {
        int flag = 0;
        CNetPlayerInfo* player = players_[i];
        const std::uint32_t state = player->state_.GetValue();  // +0x1f0
        if (state <= 6) {
            const std::uint32_t bit = 1u << state;
            if ((bit & 0x71u) != 0) {
                flag = CMatching::Get()->IsServer() ? 0 : 1;
            } else if ((bit & 0x0cu) != 0) {
                flag = 1;
            } else if ((bit & 0x02u) != 0) {
                flag = CMatching::Get()->IsServer() ? 1 : 0;
            }
        }
        player->ConditionalLoad(flag != 0, stream, a2, 0);  // vtable +0x18
    }
    while (true) {
        if (stream.ReadByte(1) == 0) {
            break;
        }
        const int byte = static_cast<int>(stream.ReadByte(8));
        AddPlayer(stream, a2, byte);
    }
    return &stream;
}

// 0x811e94 CNetPlayerManager::sReadPacketData(int,int,NetBitStream&)
// Thunk to the singleton. The fourth Hex-Rays argument is unused.
NetBitStream* CNetPlayerManager::sReadPacketData(int a2, int a3, NetBitStream& stream) {
    return s_playerManager->ReadPacketData(a2, a3, stream);
}

// 0x812608 CNetPlayerManager::ClearPlayerListCaches(int)
// a2 < 0 clears every per-key list; otherwise the list for key a2 is cleared (created if absent).
void CNetPlayerManager::ClearPlayerListCaches(int a2) {
    player_id_list_.clear();  // +0x1b8 (end = begin)
    id_list_dirty_ = true;    // +0x1b4
    if (a2 < 0) {
        player_list_caches_.clear();
    } else {
        std::vector<int>& list = player_list_caches_[a2];
        list.clear();
    }
}

// ---- merged from e2-net-transport-CNetPlayerManager-0e46d6-1.cpp ----
// Batch e2-net-transport-CNetPlayerManager-0e46d6-1: the id-list lookups and the update entry of
// CNetPlayerManager in libDungeonHunter2.so (second half of the class's batches).
// Class: include/net-transport/tb/c_net_player_manager.hpp.
// Status per function is in ledger.d/e2-net-transport-CNetPlayerManager-0e46d6-1.csv.
//
// Not defined here (skipped, see the ledger): the deleting and complete destructors, both copies of
// the constructor, Initialize(int) and Update(int).






// 0x812d50 CNetPlayerManager::GetPlayerIdListByMemberId(int)
// Per-key cache in player_list_caches_ (+0x1c4). The entry is rebuilt only when it is empty and
// id_list_dirty_ (+0x1b4) is set. The rebuild clears the flag, then sets it again for every active
// player, as the original does. An active player whose matching_member_id_ (+0x1a0) equals the key adds its
// member_id_ (+0x178) to the entry.
std::vector<int>& CNetPlayerManager::GetPlayerIdListByMemberId(int a2) {
    if (player_list_caches_[a2].empty() && id_list_dirty_) {
        id_list_dirty_ = false;
        for (std::size_t i = 0; i < players_.size(); ++i) {
            CNetPlayerInfo* player = players_[i];
            if (player != nullptr && player->IsActive()) {
                id_list_dirty_ = true;
                if (a2 == player->matching_member_id_.GetValue()) {
                    player_list_caches_[a2].push_back(player->member_id_.GetValue());
                }
            }
        }
    }
    return player_list_caches_[a2];
}

// 0x812e74 CNetPlayerManager::GetMemberPlayerCount(int)
int CNetPlayerManager::GetMemberPlayerCount(int a2) {
    return static_cast<int>(GetPlayerIdListByMemberId(a2).size());
}

// 0x812e90 CNetPlayerManager::MemberHasActivePlayers(int)
bool CNetPlayerManager::MemberHasActivePlayers(int a2) {
    return GetMemberPlayerCount(a2) > 0;
}

// 0x812ea8 CNetPlayerManager::GetLocalPlayerIdList()
// Local member id from CMatching (vtable +0x6c, LocalMemberId), then the lookup above. CMatching is
// the CMatching object (net-session-online/deps/matching.hpp).
std::vector<int>& CNetPlayerManager::GetLocalPlayerIdList() {
    return GetPlayerIdListByMemberId(CMatching::Get()->LocalMemberId());
}

// 0x812ed0 CNetPlayerManager::GetLocalPlayerCount()
int CNetPlayerManager::GetLocalPlayerCount() {
    return static_cast<int>(GetLocalPlayerIdList().size());
}
