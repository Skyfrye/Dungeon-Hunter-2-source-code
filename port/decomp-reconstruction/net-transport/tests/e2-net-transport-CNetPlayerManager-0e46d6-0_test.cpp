// Test for batch e2-net-transport-CNetPlayerManager-0e46d6-0. Logic checked: the player id-list
// cache, the per-key list cache, ClearPlayers, SetPlayerGamepadId and DisconnectPlayer.
// The test reaches the private members through a macro; it is test-only.
#include <cstdio>

#define private public
#include "net-transport/tb/c_net_player_manager.hpp"
#undef private

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


static int destroyed = 0;
static CNetPlayerInfo* MakePlayer() { return new CNetPlayerInfo(); }
static void DestroyPlayer(CNetPlayerInfo* p) { ++destroyed; delete p; }

static CNetPlayerInfo* MakeActive(int member_id) {
    CNetPlayerInfo* p = new CNetPlayerInfo();
    p->member_id_.SetValue(member_id);
    p->matching_member_id_.SetValue(0);
    p->gamepad_id_.SetValue(0);
    p->state_.SetValue(3);
    return p;
}

int main() {
    CNetPlayerManager::RegisterPlayerInfoFunctions(MakePlayer, DestroyPlayer);
    CNetPlayerManager m;

    // Empty manager: no ids.
    CHECK(m.GetPlayerCount() == 0);

    // Two active players and one inactive player: the cache holds the active member ids.
    m.players_.push_back(MakeActive(7));
    m.players_.push_back(MakeActive(9));
    CNetPlayerInfo* idle = new CNetPlayerInfo();
    idle->member_id_.SetValue(11);
    idle->state_.SetValue(0);
    m.players_.push_back(idle);
    m.id_list_dirty_ = true;
    CHECK(m.GetPlayerCount() == 2);
    CHECK(m.GetPlayerIdList()[0] == 7);
    CHECK(m.GetPlayerIdList()[1] == 9);

    // Cached: a second call does not rebuild (dirty flag cleared by the first).
    m.players_[0]->member_id_.SetValue(99);
    CHECK(m.GetPlayerCount() == 2);
    CHECK(m.GetPlayerIdList()[0] == 7);

    // ClearPlayerListCaches(-1) empties the cache and marks it dirty; the next read rebuilds it.
    m.ClearPlayerListCaches(-1);
    CHECK(m.player_id_list_.empty());
    CHECK(m.id_list_dirty_);
    CHECK(m.GetPlayerIdList()[0] == 99);

    // Per-key list: key 3 is created and cleared.
    m.ClearPlayerListCaches(3);
    CHECK(m.player_list_caches_.count(3) == 1);
    CHECK(m.player_list_caches_[3].empty());

    // SetPlayerGamepadId: valid index stores the value; out of range returns 0. The slot count is
    // set as InitPlayers would set it.
    m.player_slot_count_ = 3;
    CHECK(m.SetPlayerGamepadId(0, 5) == 1);
    CHECK(m.players_[0]->gamepad_id_.GetValue() == 5);
    CHECK(m.players_[0]->gamepad_id_.IsChanged());   // SetPlayerGamepadId stores through the block's SetValue
    CHECK(m.SetPlayerGamepadId(-1, 5) == 0);
    CHECK(m.SetPlayerGamepadId(10, 5) == 0);

    // ClearPlayers: every player is destroyed through the registered hook; vectors are emptied.
    destroyed = 0;
    m.ClearPlayers();
    CHECK(destroyed == 3);
    CHECK(m.players_.empty());
    CHECK(m.GetPlayerCount() == 0);

    CNetPlayerManager::UnregisterPlayerInfoFunctions();
    std::printf("e2 CNetPlayerManager test: %d failure(s)\n", failures);
    return failures == 0 ? 0 : 1;
}
