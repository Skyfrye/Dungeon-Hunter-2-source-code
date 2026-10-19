// Test for batch r1n-net-transport-CNetPlayerManager-0e46d6-0. Logic checked: the lookups GetPlayerInternal(int),
// GetPlayerInternal(int,int), GetPlayer and GetPlayerByMemberId, the singleton Terminate, RemovePlayer,
// ReassignPlayer, SetPlayerGamepadId, ClearPlayers and ResetPlayers.
// Not run here: WritePacketData (needs a NetStruct serialise and read round trip) and ReadPacketData.
#include <cstdio>

#define private public
#define protected public
#include "net-transport/tb/c_net_player_manager.hpp"
#undef protected
#undef private

#include "fake_matching.hpp"  // CMatching test double (net-session-online/deps/matching.hpp)

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


static int destroyed = 0;
static CNetPlayerInfo* MakePlayer() { return new CNetPlayerInfo(); }
static void DestroyPlayer(CNetPlayerInfo* p) { ++destroyed; delete p; }

// A player with the given keys (matching_member_id_ at +0x1a0 and gamepad_id_ at +0x1c8) and state; member_id_ is set as well.
static CNetPlayerInfo* MakeKeyed(int member_id, int first_key, int second_key, unsigned state) {
    CNetPlayerInfo* p = new CNetPlayerInfo();
    p->member_id_.SetValue(member_id);
    p->matching_member_id_.SetValue(first_key);   // +0x1a0, the first lookup key
    p->gamepad_id_.SetValue(second_key);      // +0x1c8, the second lookup key
    p->state_.SetValue(static_cast<std::uint32_t>(state));
    return p;
}

int main() {
    CNetPlayerManager::RegisterPlayerInfoFunctions(MakePlayer, DestroyPlayer);
    SetServerForTest(false);

    // GetPlayerInternal(int): bounds are the slot count, the vector size and zero; a null slot gives null.
    {
        CNetPlayerManager m;
        CNetPlayerInfo* a = MakeKeyed(0, 0, 0, 0);
        m.players_ = {a, nullptr};
        m.player_slot_count_ = 3;
        CHECK(m.GetPlayerInternal(0) == a);
        CHECK(m.GetPlayerInternal(1) == nullptr);      // null slot
        CHECK(m.GetPlayerInternal(2) == nullptr);      // past the vector
        CHECK(m.GetPlayerInternal(-1) == nullptr);
        m.player_slot_count_ = 1;
        CHECK(m.GetPlayerInternal(0) == a);
        m.player_slot_count_ = 0;
        CHECK(m.GetPlayerInternal(0) == nullptr);      // past the slot count
    }

    // GetPlayerInternal(int,int): both keys must match; a null slot is skipped.
    {
        CNetPlayerManager m;
        CNetPlayerInfo* p0 = MakeKeyed(1, 4, 7, 0);
        CNetPlayerInfo* p1 = MakeKeyed(2, 4, 8, 0);
        m.players_ = {nullptr, p0, p1};
        CHECK(m.GetPlayerInternal(4, 8) == p1);
        CHECK(m.GetPlayerInternal(4, 7) == p0);
        CHECK(m.GetPlayerInternal(4, 9) == nullptr);
        CHECK(m.GetPlayerInternal(5, 7) == nullptr);
        CNetPlayerManager empty;
        CHECK(empty.GetPlayerInternal(0, 0) == nullptr);
    }

    // GetPlayer and GetPlayerByMemberId: an inactive player (state 0) is returned only with the flag set; a
    // miss returns the fallback (+0x17c). An active player has state 3 and non-negative keys.
    {
        CNetPlayerManager m;
        CNetPlayerInfo* fallback = MakeKeyed(-64, -1, -1, 0);
        CNetPlayerInfo* idle = MakeKeyed(11, 4, 8, 0);
        CNetPlayerInfo* active = MakeKeyed(7, 5, 9, 3);
        m.fallback_player_ = fallback;
        m.players_ = {idle, active};
        m.player_slot_count_ = 2;
        CHECK(m.GetPlayer(0, true) == idle);
        CHECK(m.GetPlayer(0, false) == fallback);
        CHECK(m.GetPlayer(1, false) == active);
        CHECK(m.GetPlayer(2, true) == fallback);
        CHECK(m.GetPlayer(-1, true) == fallback);
        CHECK(m.GetPlayerByMemberId(4, 8, true) == idle);
        CHECK(m.GetPlayerByMemberId(4, 8, false) == fallback);
        CHECK(m.GetPlayerByMemberId(5, 9, false) == active);
        CHECK(m.GetPlayerByMemberId(5, 10, true) == fallback);
    }

    // Terminate: the singleton is deleted through its virtual destructor and cleared; a second call does nothing.
    {
        CNetPlayerManager* m = new CNetPlayerManager();
        CNetPlayerManager::s_playerManager = m;
        CNetPlayerManager::Terminate();
        CHECK(CNetPlayerManager::s_playerManager == nullptr);
        CNetPlayerManager::Terminate();
        CHECK(CNetPlayerManager::s_playerManager == nullptr);
    }

    // RemovePlayer: GetPlayer(index, true), then Remove. Under the server, Remove clears the state and both keys.
    {
        SetServerForTest(true);
        CNetPlayerManager m;
        CNetPlayerInfo* active = MakeKeyed(7, 5, 9, 3);
        CNetPlayerInfo* fallback = MakeKeyed(-64, -1, -1, 3);
        m.players_ = {active};
        m.fallback_player_ = fallback;
        m.player_slot_count_ = 1;
        CHECK(m.RemovePlayer(0) == 0);
        CHECK(active->state_.GetValue() == 0);
        CHECK(active->matching_member_id_.GetValue() == -1 && active->gamepad_id_.GetValue() == -1);
        CHECK(m.RemovePlayer(3) == 0);                  // out of range: the fallback is the target
        CHECK(fallback->state_.GetValue() == 0);
        SetServerForTest(false);
    }

    // ReassignPlayer: nothing happens off the server. On the server the three stores happen; when the connection
    // index equals the local member id (0 in the fake) SetEnabled is not called. Otherwise SetEnabled(true) runs
    // on the player, and the port returns 0 there (the partial branch).
    {
        CNetPlayerManager m;
        CNetPlayerInfo* p = MakeKeyed(0, 0, 0, 0);
        m.players_ = {p};
        m.player_slot_count_ = 1;

        SetServerForTest(false);
        CHECK(m.ReassignPlayer(0, 5, 6) == 0);
        CHECK(p->matching_member_id_.GetValue() == 0 && p->gamepad_id_.GetValue() == 0 && p->state_.GetValue() == 0);

        SetServerForTest(true);
        CHECK(m.ReassignPlayer(0, 0, 6) == 0);         // equals the local member id: returns it, 0
        CHECK(p->matching_member_id_.GetValue() == 0);
        CHECK(p->gamepad_id_.GetValue() == 6);
        CHECK(p->state_.GetValue() == 1);
        CHECK(!p->enabled_);

        CHECK(m.ReassignPlayer(0, 5, 7) != nullptr);    // NetStruct::SetEnabled's result: the last member's address
        CHECK(p->matching_member_id_.GetValue() == 5);
        CHECK(p->gamepad_id_.GetValue() == 7);
        CHECK(p->enabled_);                             // SetEnabled(true) ran
        SetServerForTest(false);
    }

    // SetPlayerGamepadId: a valid slot stores the value and marks it changed; bad indices return 0.
    {
        CNetPlayerManager m;
        CNetPlayerInfo* p = MakeKeyed(0, 0, 0, 0);
        m.players_ = {p};
        m.player_slot_count_ = 1;
        CHECK(m.SetPlayerGamepadId(0, 3) == 1);
        CHECK(p->gamepad_id_.GetValue() == 3 && p->gamepad_id_.IsChanged());
        CHECK(m.SetPlayerGamepadId(1, 3) == 0);
        CHECK(m.SetPlayerGamepadId(-1, 3) == 0);
    }

    // ClearPlayers: players, secondary players and the fallback are each deleted once; null slots are skipped.
    {
        destroyed = 0;
        CNetPlayerManager m;
        m.players_ = {MakePlayer(), nullptr};
        m.secondary_players_ = {MakePlayer()};
        m.fallback_player_ = MakePlayer();
        m.ClearPlayers();
        CHECK(destroyed == 3);
        CHECK(m.players_.empty());
        CHECK(m.secondary_players_.empty());
        CHECK(m.fallback_player_ == nullptr);
    }

    // ResetPlayers: the old players and fallback are deleted, the id-list cache is cleared, InitPlayers builds
    // the fallback (member id -64) and the slots (member id = slot index), and last_host_id_ becomes -1.
    {
        destroyed = 0;
        CNetPlayerManager m;
        m.player_slot_count_ = 2;
        m.players_ = {MakePlayer()};
        m.fallback_player_ = MakePlayer();
        m.player_id_list_ = {7, 9};
        m.last_host_id_ = 5;
        m.ResetPlayers();
        CHECK(destroyed == 2);
        CHECK(m.player_id_list_.empty());
        CHECK(m.players_.size() == 2);
        CHECK(m.players_[0]->member_id_.GetValue() == 0);
        CHECK(m.players_[1]->member_id_.GetValue() == 1);
        CHECK(m.players_[0]->state_.GetValue() == 0);
        CHECK(m.fallback_player_ != nullptr && m.fallback_player_->member_id_.GetValue() == -64);
        CHECK(m.last_host_id_ == -1);
    }

    CNetPlayerManager::UnregisterPlayerInfoFunctions();
    if (failures == 0) {
        std::printf("r1n CNetPlayerManager test: all checks passed\n");
        return 0;
    }
    std::printf("r1n CNetPlayerManager test: %d failure(s)\n", failures);
    return 1;
}
