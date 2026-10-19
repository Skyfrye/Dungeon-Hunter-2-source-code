// Test for batch r2a-game-app-global-f216b6-7 (redo of the <global> functions 0x478b5c, 0x47a3ac, 0x50e830, 0x50ed8c,
// 0x50f780, 0x50f89c, 0x530b5c, 0x53226c, 0x532350, 0x5323d8, 0x532f14 and 0x7dc1ec).
//
// The part of this batch that runs on its own is GetAccelerometerParams: three 32-bit global copies and a return value.
// It is checked here. The other functions are covered or blocked elsewhere:
//   - GetConditionImplInstance<Condition_IsQuestInState> is checked in game-app/tests/g1-game-app-global-f216b6-18_test.cpp.
//   - GetPosition is checked in game-app/tests/g1-game-app-global-f216b6-18_test.cpp (return type still partial).
//   - findSceneNodeRef needs engine scene nodes, which a test cannot construct without the engine's node sources.
//   - The rest are partial stubs (see the ledger notes) and have no logic to check.
// The batch source (g1-game-app-global-f216b6-20.cpp) is linked into this test, so the fakes below stand in for the
// symbols it references from other categories. Exit status 0 means every check passed.

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "dh2/Application.hpp"
#include "dh2/global/platform_app.hpp"
#include "dh2/global/scene_nodes.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

// Fake for IsNodeMesh (another batch of this category). GetAccelerometerParams does not use it.
bool IsNodeMesh(glitch::scene::ISceneNode* /*node*/) {
    return false;
}

// Fakes for the singleton accessor and the saved-option read, used only by GetGameMusicVolume, which is not called here.
Application& ApplicationGetInstance() {
    std::abort();
}

int Application::GetSavedOption(const char* /*name*/) {
    return 0;
}

// Globals.cpp is not linked here. GetAccelerometerParams reads these words, so the test defines them (zero, as in Globals.cpp).
std::uint32_t mAccelerometerX = 0;
std::uint32_t mAccelerometerY = 0;
std::uint32_t mAccelerometerZ = 0;

namespace {

void TestGetAccelerometerParams() {
    mAccelerometerX = 0x11111111u;
    mAccelerometerY = 0x22222222u;
    mAccelerometerZ = 0x33333333u;
    std::int32_t x = 0;
    std::int32_t y = 0;
    std::int32_t z = 0;
    const int result = GetAccelerometerParams(&x, &y, &z);
    Check(x == 0x11111111, "GetAccelerometerParams copies mAccelerometerX to the first destination");
    Check(y == 0x22222222, "GetAccelerometerParams copies mAccelerometerY to the second destination");
    Check(z == 0x33333333, "GetAccelerometerParams copies mAccelerometerZ to the third destination");
    Check(result == 0x22222222, "GetAccelerometerParams returns the Y word");

    // Words above 0x7fffffff keep their bits: the function copies words and does not convert them.
    mAccelerometerX = 0x80000001u;
    mAccelerometerY = 0xFFFFFFFEu;
    mAccelerometerZ = 0u;
    x = 7;
    y = 7;
    z = 7;
    const int result2 = GetAccelerometerParams(&x, &y, &z);
    Check(static_cast<std::uint32_t>(x) == 0x80000001u, "GetAccelerometerParams keeps the bits of a high X word");
    Check(static_cast<std::uint32_t>(y) == 0xFFFFFFFEu, "GetAccelerometerParams keeps the bits of a high Y word");
    Check(z == 0, "GetAccelerometerParams writes a zero Z word");
    Check(result2 == -2, "GetAccelerometerParams returns the Y word bits as int");
}

}  // namespace

int main() {
    TestGetAccelerometerParams();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("r2a-game-app-global-f216b6-7 tests passed\n");
    return 0;
}
