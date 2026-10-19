// Test for PlayerSavegame::_InitLevelStates in game-items-save/src/g1-game-items-save-PlayerSavegame-56ccee-4_levels.cpp.
//   bash tools/trackb/check_tu.sh --test <this file> <levels source>
// Returns non-zero when a check fails.
//
// The level and world-map tables are stand-ins: rows of the host record types, laid out in plain buffers. The records
// are never constructed (their vtables are not linked here); only the fields the init reads are set, at their host
// members. The checks cover the default fill of a new array, the kept arrays, and the empty-table case.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <vector>

#include "dh2/PlayerSavegame.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

namespace Arrays {
std::uint8_t* LevelList::members = nullptr;
std::uint32_t LevelList::size = 0;
std::uint8_t* WorldMap::members = nullptr;
std::uint32_t WorldMap::size = 0;
}  // namespace Arrays

// PlayerSavegame and QuestSavegame constructors and destructors: the batch defines neither, and the init reads no state
// that they set.
PlayerSavegame::PlayerSavegame() {
    for (int d = 0; d < 3; ++d) {
        m_levelStates[d] = nullptr;
        m_worldMapStates[d] = nullptr;
    }
}
PlayerSavegame::~PlayerSavegame() {}
QuestSavegame::QuestSavegame() {}
QuestSavegame::~QuestSavegame() {}

namespace {

int g_failures = 0;

#define CHECK(...)                                                                  \
    do {                                                                            \
        if (!(__VA_ARGS__)) {                                                       \
            std::printf("FAIL line %d: %s\n", __LINE__, #__VA_ARGS__);              \
            ++g_failures;                                                           \
        }                                                                           \
    } while (0)

// Raw rows of the host record types, zero except for the one field each check sets.
std::vector<unsigned char> g_levelRows;
std::vector<unsigned char> g_locationRows;

void SetLevelRow(std::uint32_t row, std::int32_t m_w10) {
    auto* r = reinterpret_cast<Structs::LevelDeclaration*>(g_levelRows.data() + row * sizeof(Structs::LevelDeclaration));
    r->LevelState = m_w10;
}
void SetLocationRow(std::uint32_t row, std::int32_t m_w2) {
    auto* r = reinterpret_cast<Structs::WldMapLocation*>(g_locationRows.data() + row * sizeof(Structs::WldMapLocation));
    r->State = m_w2;
}

void TestFillsNewArrays() {
    Arrays::LevelList::size = 3;
    g_levelRows.assign(3 * sizeof(Structs::LevelDeclaration), 0);
    SetLevelRow(0, 5);
    SetLevelRow(1, 6);
    SetLevelRow(2, 7);
    Arrays::LevelList::members = g_levelRows.data();

    Arrays::WorldMap::size = 2;
    g_locationRows.assign(2 * sizeof(Structs::WldMapLocation), 0);
    SetLocationRow(0, 11);
    SetLocationRow(1, 12);
    Arrays::WorldMap::members = g_locationRows.data();

    PlayerSavegame save;
    save._InitLevelStates();
    for (int d = 0; d < 3; ++d) {
        CHECK(save.m_levelStates[d] != nullptr);
        CHECK(save.m_worldMapStates[d] != nullptr);
        CHECK(save.m_levelStates[d][0] == 5);
        CHECK(save.m_levelStates[d][1] == 6);
        CHECK(save.m_levelStates[d][2] == 7);
        CHECK(save.m_worldMapStates[d][0] == 11);
        CHECK(save.m_worldMapStates[d][1] == 12);
    }
    for (int d = 0; d < 3; ++d) {
        delete[] save.m_levelStates[d];
        delete[] save.m_worldMapStates[d];
    }
}

void TestKeepsExistingArrays() {
    PlayerSavegame save;
    save.m_levelStates[1] = new std::int32_t[3]();
    save.m_levelStates[1][0] = 99;
    save.m_worldMapStates[2] = new std::int32_t[2]();
    save.m_worldMapStates[2][1] = 98;
    std::int32_t* keptLevels = save.m_levelStates[1];
    std::int32_t* keptLocations = save.m_worldMapStates[2];

    save._InitLevelStates();
    CHECK(save.m_levelStates[1] == keptLevels);
    CHECK(save.m_levelStates[1][0] == 99);
    CHECK(save.m_levelStates[1][1] == 0);
    CHECK(save.m_worldMapStates[2] == keptLocations);
    CHECK(save.m_worldMapStates[2][1] == 98);
    // The arrays that were missing are filled from the rows.
    CHECK(save.m_levelStates[0][2] == 7);
    CHECK(save.m_worldMapStates[0][1] == 12);

    for (int d = 0; d < 3; ++d) {
        delete[] save.m_levelStates[d];
        delete[] save.m_worldMapStates[d];
    }
}

void TestEmptyTables() {
    Arrays::LevelList::size = 0;
    Arrays::WorldMap::size = 0;
    PlayerSavegame save;
    save._InitLevelStates();
    for (int d = 0; d < 3; ++d) {
        CHECK(save.m_levelStates[d] != nullptr);
        CHECK(save.m_worldMapStates[d] != nullptr);
        delete[] save.m_levelStates[d];
        delete[] save.m_worldMapStates[d];
    }
}

}  // namespace

int main() {
    TestFillsNewArrays();
    TestKeepsExistingArrays();
    TestEmptyTables();
    if (g_failures == 0) {
        std::printf("g1-game-items-save-PlayerSavegame-56ccee-4 levels test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-items-save-PlayerSavegame-56ccee-4 levels test: %d failure(s)\n", g_failures);
    return 1;
}
