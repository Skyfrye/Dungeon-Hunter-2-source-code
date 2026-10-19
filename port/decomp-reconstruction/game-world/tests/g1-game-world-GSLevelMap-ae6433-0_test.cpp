// Test for batch g1-game-world-GSLevelMap-ae6433-0.
//
// GSLevelMap is linked with StateBase from game-app (g1-game-app-StateBase-a78ab7-0.cpp, all empty bodies). The
// LevelMap members the batch calls (the constructor, the destructor, Load, Unload, Update and Draw) are stubs here
// that count their calls and record the level id. The checks cover the ctor (level id -1), Ctor (new LevelMap with
// the level id, then Load), Draw and Update (forwarded to the LevelMap), Dtor (Unload, then delete and null), the
// second Ctor after Dtor, and Inst (one instance, the level id stored in its m_levelId, and a Ctor on that instance
// building LevelMap(m_levelId)).
#include <cstdio>

#include "dh2/GSLevelMap.hpp"
#include "dh2/LevelMap.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

int g_levelMapCtors = 0;      // LevelMap::LevelMap(int)
int g_levelMapCtorId = 0;     // the level id of the last LevelMap::LevelMap(int)
int g_levelMapDtors = 0;      // LevelMap::~LevelMap() (the deleting destructor reaches it)
int g_loads = 0;              // LevelMap::Load()
int g_unloads = 0;            // LevelMap::Unload()
int g_updates = 0;            // LevelMap::Update()
int g_draws = 0;              // LevelMap::Draw() const

void resetCounts() {
    g_levelMapCtors = 0;
    g_levelMapCtorId = 0;
    g_levelMapDtors = 0;
    g_loads = 0;
    g_unloads = 0;
    g_updates = 0;
    g_draws = 0;
}

void testDefaultConstructor() {
    resetCounts();
    GSLevelMap map;
    EXPECT(map.m_levelId == -1);
    EXPECT(g_levelMapCtors == 0);
    EXPECT(g_loads == 0);
    // The constructor leaves the LevelMap pointer alone, so Ctor must run before Dtor. Ctor is run here to tear down.
    map.m_levelMap = nullptr;
    map.Ctor(nullptr);
    map.Dtor(nullptr);
}

void testCtorDtorLifecycle() {
    resetCounts();
    GSLevelMap map;
    map.m_levelMap = nullptr;

    map.Ctor(nullptr);
    EXPECT(g_levelMapCtors == 1);
    EXPECT(g_levelMapCtorId == -1);
    EXPECT(g_loads == 1);
    EXPECT(map.m_levelMap != nullptr);
    EXPECT(map.m_levelMap != nullptr && map.m_levelMap->m_levelId == -1);

    map.Draw(nullptr);
    EXPECT(g_draws == 1);
    map.Update(nullptr, 0.016);
    EXPECT(g_updates == 1);

    map.Dtor(nullptr);
    EXPECT(g_unloads == 1);
    EXPECT(g_levelMapDtors == 1);
    EXPECT(map.m_levelMap == nullptr);

    // A second Ctor after Dtor builds a fresh LevelMap for the current level id.
    map.m_levelId = 5;
    map.Ctor(nullptr);
    EXPECT(g_levelMapCtors == 2);
    EXPECT(g_levelMapCtorId == 5);
    EXPECT(g_loads == 2);
    EXPECT(map.m_levelMap != nullptr && map.m_levelMap->m_levelId == 5);
    map.Dtor(nullptr);
    EXPECT(g_unloads == 2);
    EXPECT(g_levelMapDtors == 2);
    EXPECT(map.m_levelMap == nullptr);
}

void testDrawAndUpdateForward() {
    resetCounts();
    GSLevelMap map;
    map.m_levelMap = nullptr;
    map.m_levelId = 2;
    map.Ctor(nullptr);
    map.Draw(nullptr);
    map.Draw(nullptr);
    map.Update(nullptr, 1.0);
    EXPECT(g_draws == 2);
    EXPECT(g_updates == 1);
    EXPECT(g_loads == 1);
    EXPECT(g_unloads == 0);
    map.Dtor(nullptr);
    EXPECT(g_unloads == 1);
}

void testInst() {
    // The function-local instance has static storage, so its LevelMap pointer starts null, as the Ctor expects.
    GSLevelMap* first = GSLevelMap::Inst(3);
    EXPECT(first != nullptr);
    EXPECT(first->m_levelId == 3);

    // Every call returns the same instance and stores its argument in m_levelId.
    GSLevelMap* second = GSLevelMap::Inst(9);
    EXPECT(second == first);
    EXPECT(second->m_levelId == 9);
    GSLevelMap* third = GSLevelMap::Inst(-4);
    EXPECT(third == first);
    EXPECT(third->m_levelId == -4);

    // Ctor on the instance builds LevelMap(m_levelId), so the id that Inst stored is the one that gets loaded.
    resetCounts();
    GSLevelMap* map = GSLevelMap::Inst(7);
    EXPECT(map->m_levelId == 7);
    map->Ctor(nullptr);
    EXPECT(g_levelMapCtors == 1);
    EXPECT(g_levelMapCtorId == 7);
    EXPECT(g_loads == 1);
    EXPECT(map->m_levelMap != nullptr && map->m_levelMap->m_levelId == 7);
    map->Dtor(nullptr);
    EXPECT(g_unloads == 1);
    EXPECT(g_levelMapDtors == 1);
    EXPECT(map->m_levelMap == nullptr);
}

}  // namespace

// Stubs for the LevelMap members the batch calls. They count calls and record the level id only.
LevelMap::LevelMap(int levelId) : m_levelId(levelId) {
    ++g_levelMapCtors;
    g_levelMapCtorId = levelId;
}

LevelMap::~LevelMap() {
    ++g_levelMapDtors;
}

void LevelMap::Load() {
    ++g_loads;
}

void LevelMap::Unload() {
    ++g_unloads;
}

void LevelMap::Update() {
    ++g_updates;
}

void LevelMap::Draw() const {
    ++g_draws;
}

int main() {
    testDefaultConstructor();
    testCtorDtorLifecycle();
    testDrawAndUpdateForward();
    testInst();
    if (g_failures == 0) {
        std::printf("GSLevelMap test: all checks passed\n");
        return 0;
    }
    std::printf("GSLevelMap test: %d failure(s)\n", g_failures);
    return 1;
}
