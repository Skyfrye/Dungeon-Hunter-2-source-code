// Test for batch e2-net-transport-CNetPlayerManager-0e46d6-1. Logic checked: the per-member id-list
// cache (GetPlayerIdListByMemberId), GetMemberPlayerCount, MemberHasActivePlayers and the local
// lookups. The test reaches the private members through a macro; it is test-only.
#include <cstdio>

#define private public
#include "net-transport/tb/c_net_player_manager.hpp"
#include "fake_matching.hpp"  // CMatching test double
#undef private

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


static CNetPlayerInfo* MakePlayer(int member_id, int conn_index, int state) {
    CNetPlayerInfo* p = new CNetPlayerInfo();
    p->member_id_.SetValue(member_id);
    p->matching_member_id_.SetValue(conn_index);
    p->gamepad_id_.SetValue(0);          // IsActive needs all three indices to be non-negative
    p->state_.SetValue(state);
    return p;
}

int main() {
    CNetPlayerManager m;

    // Empty manager: no ids, no players for any member.
    CHECK(m.GetMemberPlayerCount(0) == 0);
    CHECK(!m.MemberHasActivePlayers(0));

    // Two active players on connection 0 (member ids 7 and 9) and one inactive player.
    m.players_.push_back(MakePlayer(7, 0, 3));
    m.players_.push_back(MakePlayer(9, 0, 3));
    m.players_.push_back(MakePlayer(11, 0, 0));
    m.id_list_dirty_ = true;
    CHECK(m.GetMemberPlayerCount(0) == 2);
    CHECK(m.GetPlayerIdListByMemberId(0)[0] == 7);
    CHECK(m.GetPlayerIdListByMemberId(0)[1] == 9);
    CHECK(m.MemberHasActivePlayers(0));

    // A key with no matching connection stays empty.
    CHECK(m.GetMemberPlayerCount(5) == 0);
    CHECK(!m.MemberHasActivePlayers(5));

    // The per-key list is cached: a later change to a player does not rebuild it.
    m.players_[0]->member_id_.SetValue(99);
    CHECK(m.GetMemberPlayerCount(0) == 2);
    CHECK(m.GetPlayerIdListByMemberId(0)[0] == 7);

    // Local lookups use LocalMemberId() (stand-in returns 0), so they read the key 0 list.
    CHECK(m.GetLocalPlayerCount() == 2);
    CHECK(m.GetLocalPlayerIdList()[1] == 9);

    std::printf("%s\n", failures == 0 ? "e2-net-transport-CNetPlayerManager-0e46d6-1 test: OK" : "FAILED");
    return failures == 0 ? 0 : 1;
}
