// CNetPlayerManager::AddPlayer(int, int) and GetPlayerName(int) (owner D2: needed by CMatching::ProcessEvents).
// Class: include/net-transport/tb/c_net_player_manager.hpp.

#include "net-transport/tb/c_net_player_manager.hpp"

#include <string>

#include "net-session-online/deps/matching.hpp"  // CMatching (one definition, net-session-online)
#include "net-transport/tb/cnet_player_info.hpp"

// 0x81181c _ZN17CNetPlayerManager13GetPlayerNameEi
// The unique player name for a member: CMatching::Get()->GetMemberName(member) (vtable +0x5c) passed to
// GetPlayerName(std::string, int) with the same member id.
std::string CNetPlayerManager::GetPlayerName(int member_id) {
    return GetPlayerName(CMatching::Get()->GetMemberName(member_id), member_id);
}

// 0x8118d8 _ZN17CNetPlayerManager9AddPlayerEii
// Adds the player of a (member id, gamepad id) pair. Returns -998 when no slot is free, -1000 when the matching object
// is not in a room or a key is negative, -999 when the pair already has a player in a non-zero state, 0 on success (or
// when a client already holds a secondary player for the gamepad).
// The server takes the free slot of players_ (the host member id is set to that slot when it is still negative; the
// player's state becomes 2 for the local member, 1 for a remote one). A client creates a new record, appends it to
// secondary_players_ and uses the player id ~gamepad_id. The record then gets its unique name, the player id, the
// member id and the gamepad id, and its NetStruct is enabled.
int CNetPlayerManager::AddPlayer(int member_id, int gamepad_id) {
    if (GetPlayerCount() >= player_slot_count_) {  // +0x194
        return -998;
    }
    if (!CMatching::Get()->IsInRoom() || (gamepad_id | member_id) < 0) {  // vtable +0x64
        return -1000;
    }
    CNetPlayerInfo* known = GetPlayerInternal(member_id, gamepad_id);
    if (known != nullptr && known->state_.GetValue() != 0) {  // +0x1f0
        return -999;
    }

    CNetPlayerInfo* player = nullptr;
    int player_id;
    if (CMatching::Get()->IsServer()) {
        player_id = GetFreePlayerId();
        if (player_id < 0) {
            return -998;
        }
        if (net_struct_.host_member_id_.GetValue() < 0) {  // +0x170
            net_struct_.host_member_id_.SetValue(player_id);
        }
        player = players_[static_cast<std::size_t>(player_id)];
        if (member_id == CMatching::Get()->LocalMemberId()) {  // vtable +0x6c
            if (player->state_.GetValue() != 2) {
                player->state_.SetValue(2);
            }
        } else if (player->state_.GetValue() != 1) {
            player->state_.SetValue(1);
        }
    } else {
        for (CNetPlayerInfo* secondary : secondary_players_) {
            if (secondary != nullptr && gamepad_id == secondary->gamepad_id_.GetValue()) {  // +0x1c8
                return 0;
            }
        }
        player_id = ~gamepad_id;
        player = CreateNetPlayerInfo();
        secondary_players_.push_back(player);
    }

    player->name_.SetValue(GetPlayerName(member_id));  // +0x248
    player->member_id_.SetValue(player_id);            // +0x158
    player->matching_member_id_.SetValue(member_id);   // +0x180
    player->gamepad_id_.SetValue(gamepad_id);          // +0x1a8
    player->SetEnabled(true);
    return 0;
}
