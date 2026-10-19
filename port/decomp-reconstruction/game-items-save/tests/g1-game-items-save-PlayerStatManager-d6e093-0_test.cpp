// Test for g1-game-items-save-PlayerStatManager-d6e093-0.cpp. It links only that source and this file.
// The engine calls the source makes are recording stubs here: the PlayerManager (player count and player records), the
// NetStruct value accessor (the stat values), CNetPlayerInfo::IsRemote, MenuManager, gameswf::as_value and gAssertLevel.
// The player records are raw storage of sizeof(PlayerInfo) bytes and PlayerInfo is never constructed. The stat blocks are
// addressed by their members (the test takes &record->unk_xxx and never reads the storage itself); the stub GetValue
// returns the value stored for a block's address.

#include <cstdint>
#include <cstdio>
#include <map>
#include <string>

#include "dh2/MenuManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerStatManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "gameswf/gameswf_value.h"

// ---- Engine stubs ----------------------------------------------------------------------------------------------

int gAssertLevel = 0;  // core-platform/memory.hpp

namespace {

constexpr int kTestPlayers = 4;
alignas(PlayerInfo) unsigned char g_records[kTestPlayers][sizeof(PlayerInfo)];
alignas(PlayerManager) unsigned char g_managerStorage[sizeof(PlayerManager)];
int g_numPlayers = 0;
std::map<const void*, std::int32_t> g_blockValues;  // NetStruct value per stat block address

PlayerInfo* Record(int playerId) { return reinterpret_cast<PlayerInfo*>(g_records[playerId]); }

}  // namespace

static PlayerManager* g_test_dword_99F76C = reinterpret_cast<PlayerManager*>(g_managerStorage);  // nothing is read through it
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

int PlayerManager::GetNumPlayers() { return g_numPlayers; }

PlayerInfo* PlayerManager::GetPlayerByInternalID(int internalId, bool /*flag*/) {
    return Record(internalId);
}

// A real (zero-filled, never constructed) MenuManager object, NOT a null stand-in: the library's Invoke overloads do
// `MenuManager::GetInstance()->GetHUDRoot()` with no null check, and this definition shadows the library's real
// singleton for the whole executable (tests link with -Wl,--allow-multiple-definition and the first definition
// wins). GetHUDRoot below is the deliberate stub: it answers null because this test builds no MultiMenuManager, and
// it is what keeps an Invoke call on a later batch path observable instead of a fault. This test's checks call
// GetStatStr, GetStatValue and GetRanking only, so neither accessor is reached today.
MenuManager* MenuManager::GetInstance() {
    alignas(16) static unsigned char storage[sizeof(MenuManager)];
    return reinterpret_cast<MenuManager*>(storage);
}

// Deliberate stub: the library's GetHUDRoot dereferences the manager's m_multiMenuManager, which does not exist here.
MenuFX* MenuManager::GetHUDRoot() { return nullptr; }

bool CNetPlayerInfo::IsRemote() const { return false; }

template <>
const std::int32_t& NetStructMemberType<std::int32_t>::GetValue() const {
    return g_blockValues[this];
}

namespace gameswf {

void as_value::drop_refs() {}
void as_value::set_string(const char* /*str*/) {}
void as_value::set_double(double /*val*/) {}
void as_value::set_bool(bool /*val*/) {}

}  // namespace gameswf

// The gameswf headers (included for gameswf::as_value) emit inline tu_string members that call these five. Their bodies
// are in vendor-gameswf/src and are not linked here. Nothing in this test reaches them.
bool tu_string::operator==(const tu_string& /*str*/) const { return false; }
void tu_string::operator+=(const char* /*str*/) {}
void tu_string::operator+=(const tu_string& /*str*/) {}
void tu_string::resize(int /*newSize*/) {}
int tu_string::utf8_char_count(const char* /*buf*/, int /*buflen*/) { return 0; }

// ---- Test helpers ----------------------------------------------------------------------------------------------

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                        \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__, __LINE__, #cond);  \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// The stat block of a stat for a player: the seven NetStructInt members, in stat order (PlayerInfo +0x548 .. +0x638).
const void* StatBlock(int playerId, EStatType stat) {
    PlayerInfo* rec = Record(playerId);
    switch (stat) {
        case STAT_KILLER:
            return &rec->unk_548;
        case STAT_STRIKER:
            return &rec->unk_570;
        case STAT_CONTROLLER:
            return &rec->unk_598;
        case STAT_DEFENDER:
            return &rec->unk_5c0;
        case STAT_LOOTER:
            return &rec->unk_5e8;
        case STAT_SUPPORT:
            return &rec->unk_610;
        case STAT_XP:
            return &rec->unk_638;
    }
    return nullptr;
}

void SetStat(int playerId, EStatType stat, std::int32_t value) {
    g_blockValues[StatBlock(playerId, stat)] = value;
}

// The buffer GetRanking returns: pairs of (value, playerId).
bool RankingIs(const int* buffer, const int* expected, int pairs) {
    for (int i = 0; i != 2 * pairs; ++i) {
        if (buffer[i] != expected[i]) {
            return false;
        }
    }
    return true;
}

}  // namespace

int main() {
    PlayerStatManager stats;

    // GetStatStr: the seven names in stat order, and "" for any other value.
    CHECK(PlayerStatManager::GetStatStr(STAT_KILLER) == "killer");
    CHECK(PlayerStatManager::GetStatStr(STAT_STRIKER) == "striker");
    CHECK(PlayerStatManager::GetStatStr(STAT_CONTROLLER) == "controller");
    CHECK(PlayerStatManager::GetStatStr(STAT_DEFENDER) == "defender");
    CHECK(PlayerStatManager::GetStatStr(STAT_LOOTER) == "looter");
    CHECK(PlayerStatManager::GetStatStr(STAT_SUPPORT) == "support");
    CHECK(PlayerStatManager::GetStatStr(STAT_XP) == "xp");
    CHECK(PlayerStatManager::GetStatStr(static_cast<EStatType>(7)).empty());

    // GetStatValue: each stat reads its own block of the player (distinct values per stat and player).
    for (int playerId = 0; playerId < kTestPlayers; ++playerId) {
        for (int stat = 0; stat < 7; ++stat) {
            SetStat(playerId, static_cast<EStatType>(stat), 100 * playerId + 10 * stat + 1);
        }
    }
    for (int playerId = 0; playerId < kTestPlayers; ++playerId) {
        for (int stat = 0; stat < 7; ++stat) {
            CHECK(stats.GetStatValue(static_cast<EStatType>(stat), playerId) == 100 * playerId + 10 * stat + 1);
        }
    }

    // GetRanking with four players, killer values 5, 9, 5, 0. Largest first, ties in player order.
    g_numPlayers = 4;
    SetStat(0, STAT_KILLER, 5);
    SetStat(1, STAT_KILLER, 9);
    SetStat(2, STAT_KILLER, 5);
    SetStat(3, STAT_KILLER, 0);
    {
        const int* ranking = stats.GetRanking(STAT_KILLER, true);
        const int expected[] = {9, 1, 5, 0, 5, 2, 0, 3};
        CHECK(RankingIs(ranking, expected, 4));
    }

    // Three players where the third is largest and the second is smallest (both insertion branches).
    g_numPlayers = 3;
    SetStat(0, STAT_STRIKER, 3);
    SetStat(1, STAT_STRIKER, 1);
    SetStat(2, STAT_STRIKER, 7);
    {
        const int* ranking = stats.GetRanking(STAT_STRIKER, true);
        const int expected[] = {7, 2, 3, 0, 1, 1};
        CHECK(RankingIs(ranking, expected, 3));
    }

    // Equal values keep the player order.
    g_numPlayers = 3;
    SetStat(0, STAT_CONTROLLER, 4);
    SetStat(1, STAT_CONTROLLER, 4);
    SetStat(2, STAT_CONTROLLER, 4);
    {
        const int* ranking = stats.GetRanking(STAT_CONTROLLER, true);
        const int expected[] = {4, 0, 4, 1, 4, 2};
        CHECK(RankingIs(ranking, expected, 3));
    }

    // A single player gives one pair with playerId 0.
    g_numPlayers = 1;
    SetStat(0, STAT_XP, 42);
    {
        const int* ranking = stats.GetRanking(STAT_XP, true);
        CHECK(ranking[0] == 42);
        CHECK(ranking[1] == 0);
    }

    // sort = false does not refill or sort: it returns the buffer as the last call left it.
    g_numPlayers = 4;
    SetStat(0, STAT_LOOTER, 1);
    SetStat(1, STAT_LOOTER, 2);
    SetStat(2, STAT_LOOTER, 3);
    SetStat(3, STAT_LOOTER, 4);
    const int* last = stats.GetRanking(STAT_LOOTER, true);
    const int lastCopy[] = {last[0], last[1], last[2], last[3], last[4], last[5], last[6], last[7]};
    SetStat(0, STAT_LOOTER, 99);
    const int* unsorted = stats.GetRanking(STAT_LOOTER, false);
    CHECK(unsorted == last);
    CHECK(RankingIs(unsorted, lastCopy, 4));

    if (g_failures == 0) {
        std::printf("g1-game-items-save-PlayerStatManager-d6e093-0 test: all checks passed\n");
        return 0;
    }
    std::fprintf(stderr, "%d check(s) failed\n", g_failures);
    return 1;
}
