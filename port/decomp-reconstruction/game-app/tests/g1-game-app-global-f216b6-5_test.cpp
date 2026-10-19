// Test for batch g1-game-app-global-f216b6-5. Covers the logic that runs without the engine: IsPlayableClassID and
// the MenuBase name order. GetDialogMsgListById is partial (not rebuilt), so it has no logic to test here.
// The batch source references engine symbols (the application singleton, the menu manager, the device query and the
// online flag). This file defines them as stubs, because the test links only itself and the batch source. The checks
// never reach the stubs. Exit status 0 means every check passed.
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "core-platform/device.hpp"
#include "dh2/Application.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/global/app_helpers.hpp"
#include "dh2/global/ctrl_camera.hpp"

// ---- Stubs for engine symbols that the batch source references. The checks never reach these bodies. ----

bool SHARP_DEVICES = false;
bool HTC_DEVICES = false;
bool NO_IGP = false;
bool JAPANESE_BUILD = false;

bool Device::IsHighPerformance() { std::abort(); }
MenuManager* MenuManager::GetInstance() { std::abort(); }
MenuFX* MenuManager::GetHUDRoot() { std::abort(); }
int Application::GetSavedOption(const char*) { std::abort(); }
bool Application::IsOnlineGame() { std::abort(); }

namespace {
// Placeholder storage for the application singleton. The tests never read its members.
alignas(Application) unsigned char g_appStorage[sizeof(Application)];
}  // namespace

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

// ---- Test helpers ----

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// MenuBase has no constructor that runs in this test, so the comparator is given storage of the right size with the
// menu name written at MenuFX::State::m_name (+0x08). The comparator reads only that name.
struct MenuNameStorage {
    alignas(MenuBase) unsigned char bytes[sizeof(MenuBase)];
    MenuBase* menu() { return reinterpret_cast<MenuBase*>(bytes); }
};

void SetMenuName(MenuNameStorage& storage, const char* name) {
    std::strcpy(storage.menu()->m_name, name);
}

void TestPlayableClassIds() {
    Check(IsPlayableClassID(263), "class 263 is playable");
    Check(IsPlayableClassID(325), "class 325 is playable");
    Check(IsPlayableClassID(290), "class 290 is playable");
    Check(!IsPlayableClassID(0), "class 0 is not playable");
    Check(!IsPlayableClassID(262), "class 262 is not playable");
    Check(!IsPlayableClassID(264), "class 264 is not playable");
    Check(!IsPlayableClassID(289), "class 289 is not playable");
    Check(!IsPlayableClassID(-263), "a negative class is not playable");
}

void TestMenuNameOrder() {
    MenuNameStorage alpha;
    MenuNameStorage beta;
    SetMenuName(alpha, "alpha");
    SetMenuName(beta, "beta");

    Check(MenuBaseStar_sortlessthen(alpha.menu(), beta.menu()), "alpha sorts before beta");
    Check(!MenuBaseStar_sortlessthen(beta.menu(), alpha.menu()), "beta does not sort before alpha");
    Check(!MenuBaseStar_sortlessthen(alpha.menu(), alpha.menu()), "a name does not sort before itself");
    Check(!MenuBaseStar_sortlessthen(nullptr, beta.menu()), "a null first operand does not sort before");
    Check(MenuBaseStar_sortlessthen(alpha.menu(), nullptr), "a null second operand sorts after a menu");
}

}  // namespace

int main() {
    TestPlayableClassIds();
    TestMenuNameOrder();
    if (g_failures == 0) {
        std::printf("all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
