// Net structure pass (ledger.d/net-structure.csv): the CNetPlayerManager functions that the two event
// queue subobjects (+0x04, +0x180) and the virtual Update(int) (vtable +0x08) made possible: Update(int),
// ProcessEvents, GetPlayerName(std::string,int) and AddPlayer(NetBitStream&,int,int).
// Class: include/net-transport/tb/c_net_player_manager.hpp.

#include "net-transport/tb/c_net_player_manager.hpp"

#include <cstring>
#include <utility>

#include "net-session-online/c_online.hpp"       // COnline (GetOnline is a thunk to COnline::GetInstance)
#include "net-session-online/deps/matching.hpp"  // CMatching (one definition, net-session-online)
#include "net-transport/packet_manager.hpp"

namespace {

// Event ids. The player records post the first group to events_ (+0x04) and ProcessEvents moves them on to
// internal_events_ (+0x180) as the second group.
constexpr int kEventPlayerActive = 9437184;       // 0x900000: the player became active (state 3)
constexpr int kEventPlayerActivating = 9437185;   // 0x900001: the player is activating (state 2)
constexpr int kEventPlayerLeft = 9437186;         // 0x900002
constexpr int kEventPlayerGone = 9437187;         // 0x900003
constexpr int kEventInternalActive = 3145728;     // 0x300000
constexpr int kEventInternalLocal = 3145729;      // 0x300001
constexpr int kEventInternalGone = 3145730;       // 0x300002
constexpr int kEventInternalLeft = 3145731;       // 0x300003
constexpr int kEventHostChanged = 3145732;        // 0x300004

}  // namespace

// 0x8109a0 _ZN17CNetPlayerManager13ProcessEventsEv
// Moves the queued player events from events_ to internal_events_: each 9437184 event is consumed and re-posted as
// 3145728 (and as 3145729 when the player is local), 9437186 as 3145731 and 9437187 as 3145730. A last loop
// drains the 9437184 events that the first loop's handlers may have posted. The pseudocode returns the last
// HasEventOccured result, which is 0.
int CNetPlayerManager::ProcessEvents() {
    int player_id = 0;
    while (events_.HasEventOccured(kEventPlayerActive, false)) {
        player_id = 0;
        events_.GetEventData(kEventPlayerActive, &player_id, 4);
        events_.ConsumeEvent(kEventPlayerActive);
        internal_events_.AddEvent(kEventInternalActive, &player_id, 4);
        CNetPlayerInfo* player = GetPlayer(player_id, false);
        if (player->IsLocal()) {  // vtable +0x50
            internal_events_.AddEvent(kEventInternalLocal, &player_id, 4);
        }
    }
    while (events_.HasEventOccured(kEventPlayerLeft, false)) {
        player_id = 0;
        events_.GetEventData(kEventPlayerLeft, &player_id, 4);
        events_.ConsumeEvent(kEventPlayerLeft);
        internal_events_.AddEvent(kEventInternalLeft, &player_id, 4);
    }
    while (events_.HasEventOccured(kEventPlayerGone, false)) {
        player_id = 0;
        events_.GetEventData(kEventPlayerGone, &player_id, 4);
        events_.ConsumeEvent(kEventPlayerGone);
        internal_events_.AddEvent(kEventInternalGone, &player_id, 4);
    }
    while (events_.HasEventOccured(kEventPlayerActive, false)) {
        player_id = 0;
        events_.GetEventData(kEventPlayerActive, &player_id, 4);
        events_.ConsumeEvent(kEventPlayerActive);
    }
    return 0;
}

// 0x812eec _ZN17CNetPlayerManager6UpdateEi   (vtable +0x08)
// Returns -1 before the manager is initialised. Otherwise: every player's Update (vtable +0x48; the argument
// is not used), ProcessEvents, and on the server in a room (CMatching vtable +0x64) the bookkeeping: a player whose
// member is no longer in the room (CMatching::IsInRoom(int), vtable +0x68) is removed, and when the host player
// (the manager's host id, net_struct_ +0x170) is not active the host id moves to the first player id of the
// host's member, else of the local member, else of the first listed player. A changed host id posts 3145732.
// The first secondary player whose active twin exists is deleted and dropped. Last, the manager's NetStruct is
// enabled exactly when COnline::IsServer.
int CNetPlayerManager::Update(int delta) {
    (void)delta;
    if (!initialized_) {  // +0x178
        return -1;
    }
    for (std::size_t i = 0; i < players_.size(); ++i) {
        players_[i]->Update();  // vtable +0x48
    }
    ProcessEvents();
    if (CMatching::Get()->IsServer()) {
        if (CMatching::Get()->IsInRoom()) {  // vtable +0x64, IsInRoom()
            for (std::size_t i = 0; i < players_.size(); ++i) {
                CNetPlayerInfo* player = players_[i];
                if (player->matching_member_id_.GetValue() > 0) {  // +0x1a0
                    if (!CMatching::Get()->IsInRoom(player->matching_member_id_.GetValue())) {  // vtable +0x68
                        RemovePlayer(players_[i]->member_id_.GetValue());  // +0x178
                    }
                }
            }
            CNetPlayerInfo* host = GetPlayerInternal(net_struct_.host_member_id_.GetValue());  // +0x170
            if (host != nullptr && !host->IsActive()) {  // vtable +0x5c
                std::vector<int> ids = GetPlayerIdListByMemberId(host->matching_member_id_.GetValue());
                if (ids.empty()) {
                    ids = GetPlayerIdListByMemberId(CMatching::Get()->LocalMemberId());  // vtable +0x6c
                    if (ids.empty()) {
                        ids = GetPlayerIdList();
                    }
                }
                if (!ids.empty()) {
                    net_struct_.host_member_id_.SetValue(ids.front());
                }
            }
        }
    }
    if (last_host_id_ >= 0) {  // +0x1b0
        if (last_host_id_ != net_struct_.host_member_id_.GetValue()) {
            int host_id = net_struct_.host_member_id_.GetValue();
            internal_events_.AddEvent(kEventHostChanged, &host_id, 4);
        }
    }
    last_host_id_ = net_struct_.host_member_id_.GetValue();
    if (!secondary_players_.empty()) {  // +0x1a4, +0x1a8
        CNetPlayerInfo* first = secondary_players_.front();
        CNetPlayerInfo* twin = GetPlayerByMemberId(first->matching_member_id_.GetValue(),
                                                   first->gamepad_id_.GetValue(), false);
        if (twin->IsActive()) {  // vtable +0x5c
            DeleteNetPlayerInfo(first);
            secondary_players_.erase(secondary_players_.begin());
        }
    }
    net_struct_.SetEnabled(COnline::GetInstance()->IsServer());
    return 0;
}

// 0x811588 _ZN17CNetPlayerManager13GetPlayerNameESsi
// Counts the active players whose name equals the given one. When there is any, " (" + the digit of the
// member id + ")" is appended, so a second player called "A" becomes "A (1)". The argument string is the
// one that is modified (the original appends to it in place, then copies it out). The digit is the member
// id plus '0' as a char, as the original computes it, so a member id above 9 gives a different character.
std::string CNetPlayerManager::GetPlayerName(std::string name, int member_id) {
    int duplicates = 0;
    for (std::size_t i = 0; i < players_.size(); ++i) {
        CNetPlayerInfo* player = players_[i];
        if (player == nullptr || !player->IsActive()) {  // vtable +0x5c
            continue;
        }
        const std::string other = player->name_.GetValue();
        if (other.size() >= name.size() && other == name) {
            ++duplicates;
        }
    }
    if (duplicates != 0) {
        name += " (";
        name.push_back(static_cast<char>(static_cast<char>(member_id) + 48));
        name += ")";
    }
    return name;
}

// 0x811be8 _ZN17CNetPlayerManager9AddPlayerER12NetBitStreamii
// The server-side read of a join request: member_id (a3) and gamepad_id (a4). A client, an already known
// (member, gamepad) pair, no free slot, or a negative key makes the request unusable, and the fallback
// player's Erase (vtable +0x1c) discards the stream's player record. Otherwise the free slot's struct is
// disabled, loaded from the stream with the member id (vtable +0x14), enabled, added (state 1), its player id
// stored, and its name made unique with GetPlayerName.
void CNetPlayerManager::AddPlayer(NetBitStream& stream, int member_id, int gamepad_id) {
    if (CMatching::Get()->IsServer() && GetPlayerInternal(member_id, gamepad_id) == nullptr) {
        const int free_id = GetFreePlayerId();
        const bool unusable = free_id < 0 || member_id < 0 || gamepad_id < 0;
        if (!unusable) {
            CNetPlayerInfo* player = players_[static_cast<std::size_t>(free_id)];
            player->SetEnabled(false);
            player->Load(stream, member_id, 0);  // vtable +0x14
            player->SetEnabled(true);
            player->Add();
            player = players_[static_cast<std::size_t>(free_id)];
            player->member_id_.SetValue(free_id);  // +0x178
            player->name_.SetValue(GetPlayerName(player->name_.GetValue(), player->matching_member_id_.GetValue()));
            return;
        }
    }
    fallback_player_->Erase(stream);  // vtable +0x1c
}

// 0x812a30 _ZN17CNetPlayerManagerC1Ei, 0x812bf0 _ZN17CNetPlayerManagerC2Ei (the same body)
// The members are built before the body: the event queues (expiry 100), the NetStruct, the lists and the
// player-list cache map; the slot count is +0x194, the host id +0x1b0 is -1 and the flags are clear. The body then
// resets the players (which creates the fallback and the slots), registers packet slot 2 with the four static
// callbacks (the write and read ones through adapters, because the registry's types differ from the statics'),
// clears every player-list cache and sets the initialized flag.
CNetPlayerManager::CNetPlayerManager(int slot_count) : player_slot_count_(slot_count), last_host_id_(-1) {
    ResetPlayers();
    CPacketManager::RegisterPacketSlot(
        2,
        [](int a, int b, NetBitStream& stream) -> bool { return sWritePacketData(a, b, stream) != 0; },
        [](int a, int b, NetBitStream& stream) { (void)sReadPacketData(a, b, stream); },
        &sProcessAcknowledgedPacket, &sProcessLostPacket);
    ClearPlayerListCaches(-1);
    initialized_ = true;  // +0x178
}

// 0x812694 _ZN17CNetPlayerManagerD1Ev, 0x812870 _ZN17CNetPlayerManagerD2Ev (the same body)
// The deleting destructor 0x812854 calls 0x812870 and frees the object (CustomFree): the compiler's.
// The original clears the flag (+0x178) first, then ClearPlayers, UnregisterPacketSlot(2) and
// ClearPlayerListCaches(-1), and calls the internal queue's Clear (vtable +0x0c on the queue at +0x180) before the
// members are destroyed: the cache map, the three vectors, the queues, the NetStruct and the mutexes.
CNetPlayerManager::~CNetPlayerManager() {
    initialized_ = false;
    ClearPlayers();
    CPacketManager::UnregisterPacketSlot(2);
    ClearPlayerListCaches(-1);
    internal_events_.Clear();
}

// 0x812b90 _ZN17CNetPlayerManager10InitializeEi
// Creates the singleton when there is none (new of 0x1e0 bytes, which the constructor fills) and stores it in
// s_playerManager. Returns 0, or -1 when the allocation failed. The Hex-Rays signature shows the slot count in the
// object slot because the function is static; it is the constructor's argument.
int CNetPlayerManager::Initialize(int slot_count) {
    if (s_playerManager != nullptr) {
        return 0;
    }
    CNetPlayerManager* manager = new CNetPlayerManager(slot_count);
    s_playerManager = manager;
    return manager != nullptr ? 0 : -1;
}
