// Test for batch g1-game-world-LevelMap-f6cfca-0.
//
// The LevelMap translation unit is linked with stubs for the MenuManager and MenuWorldMap members it calls. Each stub
// appends its name to a call log, so the checks can see the order of the calls and the arguments that were passed.
// The singletons are addresses only: the stubs never read through them.

#include <cstddef>
#include <cstdio>

#include "dh2/LevelMap.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuWorldMap.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);         \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

enum Call {
    kManagerGetInstance = 1,
    kWorldMapGetInstance,
    kHideAll,
    kPushMenu,
    kPopMenu,
    kDraw,
    kUpdate,
};

constexpr int kLogSize = 16;
int g_log[kLogSize];
int g_logCount = 0;

bool g_drawHudOnly = true;        // argument of the last MenuManager::Draw
bool g_updateHudOnly = true;      // argument of the last MenuManager::Update
MenuBase* g_pushed = nullptr;     // argument of the last MenuManager::PushMenu
MenuBase* g_popped = nullptr;     // argument of the last MenuManager::PopMenu

// Addresses that stand for the singletons. They are never dereferenced.
alignas(16) char g_fakeManager[16];
alignas(16) char g_fakeWorldMap[16];
MenuWorldMap* g_worldMap = nullptr;  // what MenuWorldMap::GetInstance returns in the current check

void record(int call) {
    if (g_logCount < kLogSize) {
        g_log[g_logCount++] = call;
    }
}

void resetLog() {
    g_logCount = 0;
    g_pushed = nullptr;
    g_popped = nullptr;
}

// True when the log holds exactly the calls in `expected`, in that order.
template <std::size_t N>
bool logIs(const int (&expected)[N]) {
    if (g_logCount != static_cast<int>(N)) {
        return false;
    }
    for (std::size_t i = 0; i < N; ++i) {
        if (g_log[i] != expected[i]) {
            return false;
        }
    }
    return true;
}

}  // namespace

// Stubs for the engine code the unit calls.
MenuManager* MenuManager::GetInstance() {
    record(kManagerGetInstance);
    return reinterpret_cast<MenuManager*>(g_fakeManager);
}

MenuWorldMap* MenuWorldMap::GetInstance() {
    record(kWorldMapGetInstance);
    return g_worldMap;
}

void MenuManager::HideAll() {
    record(kHideAll);
}

void MenuManager::PushMenu(MenuBase* menu) {
    record(kPushMenu);
    g_pushed = menu;
}

void MenuManager::PopMenu(MenuBase* menu) {
    record(kPopMenu);
    g_popped = menu;
}

void MenuManager::Draw(bool hudOnly) {
    record(kDraw);
    g_drawHudOnly = hudOnly;
}

void MenuManager::Update(bool hudOnly) {
    record(kUpdate);
    g_updateHudOnly = hudOnly;
}

int main() {
    MenuWorldMap* const worldMap = reinterpret_cast<MenuWorldMap*>(g_fakeWorldMap);
    MenuBase* const worldMapBase = static_cast<MenuBase*>(worldMap);

    // Constructor: the map id is stored at +0x04 and nothing else is called.
    {
        resetLog();
        LevelMap level(42);
        EXPECT(level.m_levelId == 42);
        EXPECT(g_logCount == 0);

        LevelMap negative(-7);
        EXPECT(negative.m_levelId == -7);
    }

    // Destructor: nothing is called. The complete-object destructor is empty.
    {
        resetLog();
        {
            LevelMap level(1);
            EXPECT(g_logCount == 0);
        }
        EXPECT(g_logCount == 0);
    }

    // Draw: MenuManager::GetInstance, then Draw with hudOnly false.
    {
        resetLog();
        LevelMap level(3);
        const LevelMap& constLevel = level;
        g_drawHudOnly = true;
        constLevel.Draw();
        const int expected[] = {kManagerGetInstance, kDraw};
        EXPECT(logIs(expected));
        EXPECT(g_drawHudOnly == false);
    }

    // Update: MenuManager::GetInstance, then Update with hudOnly false.
    {
        resetLog();
        LevelMap level(3);
        g_updateHudOnly = true;
        level.Update();
        const int expected[] = {kManagerGetInstance, kUpdate};
        EXPECT(logIs(expected));
        EXPECT(g_updateHudOnly == false);
    }

    // Load with a MenuWorldMap: hide everything, then push the world map menu.
    {
        resetLog();
        g_worldMap = worldMap;
        LevelMap level(5);
        level.Load();
        const int expected[] = {kManagerGetInstance, kHideAll, kWorldMapGetInstance, kManagerGetInstance, kPushMenu};
        EXPECT(logIs(expected));
        EXPECT(g_pushed == worldMapBase);
        EXPECT(g_popped == nullptr);
    }

    // Load without a MenuWorldMap: hide everything, and nothing is pushed.
    {
        resetLog();
        g_worldMap = nullptr;
        LevelMap level(5);
        level.Load();
        const int expected[] = {kManagerGetInstance, kHideAll, kWorldMapGetInstance};
        EXPECT(logIs(expected));
        EXPECT(g_pushed == nullptr);
    }

    // Unload with a MenuWorldMap: pop the world map menu.
    {
        resetLog();
        g_worldMap = worldMap;
        LevelMap level(5);
        level.Unload();
        const int expected[] = {kWorldMapGetInstance, kManagerGetInstance, kPopMenu};
        EXPECT(logIs(expected));
        EXPECT(g_popped == worldMapBase);
        EXPECT(g_pushed == nullptr);
    }

    // Unload without a MenuWorldMap: nothing is popped.
    {
        resetLog();
        g_worldMap = nullptr;
        LevelMap level(5);
        level.Unload();
        const int expected[] = {kWorldMapGetInstance};
        EXPECT(logIs(expected));
        EXPECT(g_popped == nullptr);
    }

    if (g_failures == 0) {
        std::printf("g1-game-world-LevelMap-f6cfca-0 tests passed\n");
        return 0;
    }
    std::printf("%d failure(s)\n", g_failures);
    return 1;
}
