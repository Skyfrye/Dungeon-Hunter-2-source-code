// Test for PlayerStatManager::UpdateRanking, GetLeader and GetNumLeadingStats
// (game-items-save/src/g1-game-items-save-PlayerStatManager-d6e093-1.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// Only the batch source is linked. The definitions below are test-only stand-ins for code in other batches, kept small:
//   PlayerStatManager::GetRanking (0x379ac4) returns a buffer the test fills in; GetStatValue (0x379824) reads a table.
//   PlayerStatManager::Invoke(stat, playerId, rankIndex) (0x3796c4) records its calls and returns 1000 + rankIndex.
//   PlayerManager::GetNumPlayers (0x36d7a8) returns a count the test sets. dword_99F76C points at a dummy word, which
//   the stand-in never reads.
//   DebugSwitches::load (0x337888) and GetSwitch (0x337a88) record their calls. The DebugSwitches instance is defined here,
//   with its constructor and destructor, because the batch reads DebugSwitches::s_inst.
//   The PlayerStatManager constructor and destructor are defined so the test can make an object on the stack.

#include <cstdio>
#include <string>
#include <vector>

#include "dh2/DebugSwitches.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerStatManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"

namespace {

int gFailures = 0;

void Check(bool ok, const char* expr, int line) {
    if (!ok) {
        std::fprintf(stderr, "FAIL line %d: %s\n", line, expr);
        ++gFailures;
    }
}
#define CHECK(expr) Check((expr), #expr, __LINE__)

int gPairs[16];                 // GetRanking(sort=true): (value, playerIndex) pairs in ranking order
int gLeaderPair[7][2];          // GetRanking(stat, sort=false) per stat; [1] is that stat's leader
int gValue[7][8];               // GetStatValue table, indexed by [stat][playerId]
int gNumPlayers = 0;            // PlayerManager::GetNumPlayers

struct RankCall {
    int stat;
    bool sort;
};
struct InvokeCall {
    int stat;
    int playerId;
    int rankIndex;
};
std::vector<RankCall> gRankCalls;
std::vector<InvokeCall> gInvokes;
int gLoadCalls = 0;
int gSwitchCalls = 0;
std::string gLastSwitch;
int gDummyPlayerManager = 0;

void ResetState() {
    for (auto& row : gLeaderPair) {
        row[0] = 0;
        row[1] = 0;
    }
    for (auto& row : gValue) {
        for (int& v : row) {
            v = 0;
        }
    }
    for (int& v : gPairs) {
        v = 0;
    }
    gNumPlayers = 0;
    gRankCalls.clear();
    gInvokes.clear();
    gLoadCalls = 0;
    gSwitchCalls = 0;
    gLastSwitch.clear();
}

}  // namespace

// ---- test-only stand-ins for code in other batches ----

PlayerStatManager::PlayerStatManager() {}
PlayerStatManager::~PlayerStatManager() {}

int* PlayerStatManager::GetRanking(EStatType stat, bool sort) const {
    gRankCalls.push_back({static_cast<int>(stat), sort});
    if (sort) {
        return gPairs;
    }
    return gLeaderPair[static_cast<int>(stat)];
}

int PlayerStatManager::GetStatValue(EStatType stat, int playerId) const {
    return gValue[static_cast<int>(stat)][playerId];
}

int PlayerStatManager::Invoke(EStatType stat, int playerId, int rankIndex) const {
    gInvokes.push_back({static_cast<int>(stat), playerId, rankIndex});
    return 1000 + rankIndex;
}

int PlayerManager::GetNumPlayers() {
    return gNumPlayers;
}

void DebugSwitches::load() {
    ++gLoadCalls;
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    ++gSwitchCalls;
    gLastSwitch = name;
    return false;
}

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;

static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

// ---- checks ----

namespace {

void TestUpdateRankingInvokesInRankOrder() {
    ResetState();
    gNumPlayers = 3;
    // Ranking pairs (value, playerIndex): player 2 leads, then player 0, then player 1.
    gPairs[0] = 30;
    gPairs[1] = 2;
    gPairs[2] = 10;
    gPairs[3] = 0;
    gPairs[4] = 5;
    gPairs[5] = 1;

    PlayerStatManager mgr;
    const int result = mgr.UpdateRanking(STAT_KILLER);

    CHECK(gRankCalls.size() == 1 && gRankCalls[0].stat == STAT_KILLER && gRankCalls[0].sort);
    CHECK(gLoadCalls == 1);
    CHECK(gSwitchCalls == 1);
    CHECK(gLastSwitch == "isTracingPlayerStats");
    CHECK(gInvokes.size() == 3);
    if (gInvokes.size() == 3) {
        CHECK(gInvokes[0].stat == STAT_KILLER && gInvokes[0].playerId == 2 && gInvokes[0].rankIndex == 0);
        CHECK(gInvokes[1].stat == STAT_KILLER && gInvokes[1].playerId == 0 && gInvokes[1].rankIndex == 1);
        CHECK(gInvokes[2].stat == STAT_KILLER && gInvokes[2].playerId == 1 && gInvokes[2].rankIndex == 2);
    }
    CHECK(result == 1002);  // the last Invoke result
}

void TestUpdateRankingWithoutPlayers() {
    ResetState();
    gNumPlayers = 0;
    PlayerStatManager mgr;
    const int result = mgr.UpdateRanking(STAT_LOOTER);
    CHECK(gInvokes.empty());
    CHECK(gRankCalls.size() == 1 && gRankCalls[0].stat == STAT_LOOTER);
    CHECK(gLoadCalls == 1);
    CHECK(result == 0);  // the GetNumPlayers result is returned when the loop does not run

    gNumPlayers = -1;
    const int negative = mgr.UpdateRanking(STAT_LOOTER);
    CHECK(gInvokes.empty());
    CHECK(negative == -1);
}

void TestGetLeaderReadsCachedRanking() {
    ResetState();
    gLeaderPair[STAT_CONTROLLER][0] = 9;
    gLeaderPair[STAT_CONTROLLER][1] = 3;
    PlayerStatManager mgr;
    CHECK(mgr.GetLeader(STAT_CONTROLLER) == 3);
    CHECK(gRankCalls.size() == 1 && gRankCalls[0].stat == STAT_CONTROLLER && !gRankCalls[0].sort);
}

void TestGetNumLeadingStats() {
    ResetState();
    PlayerStatManager mgr;

    // Leaders per stat: stats 0, 1, 3, 4, 5 and 6 are led by player 2, stat 2 by player 1.
    for (int stat = 0; stat < 7; ++stat) {
        gLeaderPair[stat][1] = 2;
    }
    gLeaderPair[STAT_CONTROLLER][1] = 1;

    gValue[STAT_KILLER][2] = 5;      // counted
    gValue[STAT_STRIKER][2] = 0;     // not counted: value is not above 0
    gValue[STAT_CONTROLLER][1] = 4;  // not counted: player 1 leads this stat, player 2 does not
    gValue[STAT_DEFENDER][2] = 1;    // counted
    gValue[STAT_LOOTER][2] = 7;      // counted
    gValue[STAT_SUPPORT][2] = 2;     // counted
    gValue[STAT_XP][2] = 9;          // not counted: the XP stat is outside the loop
    CHECK(mgr.GetNumLeadingStats(2) == 4);

    CHECK(mgr.GetNumLeadingStats(1) == 1);  // only CONTROLLER, where player 1 leads with value 4
    CHECK(mgr.GetNumLeadingStats(0) == 0);  // leads nothing
}

}  // namespace

int main() {
    dword_99F76C = reinterpret_cast<PlayerManager*>(&gDummyPlayerManager);

    TestUpdateRankingInvokesInRankOrder();
    TestUpdateRankingWithoutPlayers();
    TestGetLeaderReadsCachedRanking();
    TestGetNumLeadingStats();

    if (gFailures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", gFailures);
        return 1;
    }
    std::printf("PlayerStatManager ranking tests: all checks passed\n");
    return 0;
}
