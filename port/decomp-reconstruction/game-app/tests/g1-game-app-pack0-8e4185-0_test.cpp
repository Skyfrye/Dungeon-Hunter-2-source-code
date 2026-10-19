// Test for batch g1-game-app-pack0-8e4185-0 (ByteArray, DebugCachedCharacter, Gamepad, GamepadTweaker).
// Returns non-zero on failure. Links with g1-game-app-pack0-8e4185-0.cpp; the definitions the batch uses from other
// units are provided here.
#include <cmath>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/ByteArray.hpp"
#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/Gamepad.hpp"
#include "dh2/GamepadTweaker.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/Point3D.hpp"

// 0x7a9160 RenderFX::Find(char const*) is reconstructed in game-ui/src/n2-game-ui-RenderFX-849cdc-1.cpp and its
// declaration now exists (game/include/dh2/RenderFX.hpp:160), so DebugCachedCharacter::RefreshCache(path, menu, root)
// really calls it. That body dereferences m_root (`m_root->m_movie`, `m_root->get_root_movie()`), and a test MenuFX has
// no gameswf root movie to load, so the lookup cannot be driven here. This is the same test seam the sibling game-ui
// tests use (g1-game-ui-SWFAnimManager-c5dc0b-0_test.cpp:65). Returning null keeps the cache empty, which is what the
// batch body does when the path is not found; the path/menu/root stores below are still the real body's.
gameswf::as_object* RenderFX::Find(const char*) { return nullptr; }

// Declarations as in the batch source (core-platform/memory.hpp), and the definitions they need here.
enum MemoryHintState : int {
    MHS_UNRECOVERED = 0,
};
extern int gAssertLevel;
void CustomFree(void* p) { std::free(p); }
void* operator new[](std::size_t size, MemoryHintState) { return std::malloc(size); }
int gAssertLevel = 0;

extern Point3D<float> Vec3f_Origin;
Point3D<float> Vec3f_Origin{0.0f, 0.0f, 0.0f};
const char* RES_PATH = "";

// Stand-in for the process singleton. GamepadTweaker's constructor reads Application::m_device through
// ApplicationGetInstance(); the real singleton comes from the Application units, which this test does not link. Only
// the m_device word is used here. The storage is zero-initialised and no Application constructor runs.
alignas(Application) static unsigned char g_applicationStorage[sizeof(Application)];
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_applicationStorage);
}

// InputDevice (base of Gamepad): the batch calls its constructor.
InputDevice::InputDevice(Type type) : m_type(type), unk_08(0) {}

// Point3D<float> members used by UpdateFrame. Their bodies are not part of this batch (game-world owns them).
template <>
Point3D<float>& Point3D<float>::normalize() {
    const float length = std::sqrt(X * X + Y * Y + Z * Z);
    if (length > 0.0f) {
        X /= length;
        Y /= length;
        Z /= length;
    }
    return *this;
}

template <>
bool Point3D<float>::operator==(const Point3D& other) const {
    return std::fabs(X - other.X) <= 0.0001f && std::fabs(Y - other.Y) <= 0.0001f && std::fabs(Z - other.Z) <= 0.0001f;
}

// gameswf::smart_ptr_proxy::operator=(weak_proxy*): the release and reference bodies are not part of this batch.
// The test only needs the held pointer to be stored.
void gameswf::smart_ptr_proxy::operator=(weak_proxy* p) {
    m_proxy = p;
}

static int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

static void TestByteArray() {
    ByteArray b{};
    void* first = b.SetBuffer("abcd", 4);
    CHECK(first != nullptr);
    CHECK(b.m_size == 4);
    CHECK(std::memcmp(b.m_buffer, "abcd", 4) == 0);

    // Same length: the block is reused and refilled.
    void* same = b.SetBuffer("wxyz", 4);
    CHECK(same == first);
    CHECK(std::memcmp(b.m_buffer, "wxyz", 4) == 0);

    // New length: a new block of the requested length holds the data.
    void* grown = b.SetBuffer("0123456789", 10);
    CHECK(grown != nullptr);
    CHECK(b.m_size == 10);
    CHECK(std::memcmp(b.m_buffer, "0123456789", 10) == 0);
    CustomFree(b.m_buffer);

    // Zero length: nothing is copied and the stored length is 0.
    ByteArray z{};
    z.SetBuffer("x", 0);
    CHECK(z.m_size == 0);
    CustomFree(z.m_buffer);
}

static void TestGamepad() {
    Gamepad pad;
    CHECK(!pad.m_connected);
    CHECK(pad.unk_754 == 128);
    CHECK(pad.unk_750 == 0);
    CHECK(pad.m_buttons[0].value == 0.0f);
    CHECK(pad.m_buttons[44].previous_maximum == 1.0f);
    CHECK(pad.m_axes[8].maximum == 1.0f);

    // Vibration flag: starts set (initial value 1, the .data byte at 0x999744); the first toggle clears it and the
    // second sets it again.
    CHECK(pad.IsVibrationEnabled());
    pad.ToggleVibration();
    CHECK(!pad.IsVibrationEnabled());
    pad.ToggleVibration();
    CHECK(pad.IsVibrationEnabled());

    // Stick 0 pushed fully to the right: the press direction is (1, 0, 0). Clock stamps are kept non-zero so that the
    // stamp checks below are meaningful.
    while (std::clock() == 0) {
    }
    pad.m_axes[0].value = 0.5f;   // x = (0.5 + 0.5) / (1 - 0) = 1
    pad.m_axes[1].value = 0.0f;   // y = 0
    pad.UpdateFrame(0.0f);
    CHECK(pad.m_axes[0].previous == 0.5f);
    CHECK(std::fabs(pad.m_firstVectors[0].X - 1.0f) < 1e-5f);
    CHECK(std::fabs(pad.m_firstVectors[0].Y) < 1e-5f);
    CHECK(pad.m_firstStamps[0] != 0);

    // Stick released: the press direction is kept as the repeat direction.
    pad.m_axes[0].value = 0.0f;
    pad.UpdateFrame(0.0f);
    CHECK(pad.m_firstStamps[0] == 0);
    CHECK(std::fabs(pad.m_repeatVectors[0].X - 1.0f) < 1e-5f);
    CHECK(pad.m_repeatStamps[0] != 0);

    // A small push stays inside the dead zone (length 0.5 < 0.65): no press starts on stick 1.
    pad.m_axes[2].value = 0.25f;
    pad.UpdateFrame(0.0f);
    CHECK(pad.m_firstStamps[1] == 0);
    CHECK(pad.m_firstVectors[1].X == 0.0f);
}

static void TestGamepadTweaker() {
    // The tweaker base takes Application::m_device (the singleton word at +0x10). The token is never dereferenced.
    static char deviceToken;
    glitch::IDevice* device = reinterpret_cast<glitch::IDevice*>(&deviceToken);
    ApplicationGetInstance().m_device = device;
    GamepadTweaker tw;
    CHECK(tw.device == device);
    CHECK(tw.m_btn_cross == 0);
    CHECK(tw.m_mappedButtons[GamepadTweaker::BUTTON_POWER] == 0);

    tw.m_btn_cross = 10;
    tw.m_btn_r_3 = 20;
    tw.m_btn_r_2 = 30;
    tw.m_btn_l_2 = 40;
    tw.m_btn_l_3 = 50;
    tw.m_btn_power = 77;
    tw.UpdateButtonMappings();
    CHECK(tw.m_mappedButtons[GamepadTweaker::BUTTON_CROSS] == 10);
    CHECK(tw.m_mappedButtons[GamepadTweaker::BUTTON_R3] == 20);

    CHECK(tw.TranslateButton(0, 0) == 10);    // table 0: id 0 -> cross
    CHECK(tw.TranslateButton(0, 24) == 20);   // table 0: id 24 -> R3
    CHECK(tw.TranslateButton(1, 24) == 30);   // table 1: id 24 -> R2
    CHECK(tw.TranslateButton(1, 23) == 40);   // table 1: id 23 -> L2
    CHECK(tw.TranslateButton(0, 23) == 50);   // table 0: id 23 -> L3
    CHECK(tw.TranslateButton(0, 5) == 5);     // not listed: unchanged
    CHECK(tw.TranslateButton(2, 0) == 0);     // other first argument: unchanged

    tw.m_btn_power = 88;
    tw.onSetValue(std::string("x"));          // forwards to UpdateButtonMappings
    CHECK(tw.m_mappedButtons[GamepadTweaker::BUTTON_POWER] == 88);
    CHECK(tw.TranslateButton(0, 16) == 88);
}

static void TestDebugCachedCharacter() {
    DebugCachedCharacter c;
    CHECK(c.m_flag == 0);
    CHECK(c.m_character == nullptr);
    CHECK(c.m_menu == nullptr);
    CHECK(c.GetChar() == nullptr);

    // The lookup returns null through the RenderFX::Find seam above, so the cache stays empty. A null menu must not be
    // passed: the reconstructed body calls menu->Find(path), which needs a real MenuFX to dispatch on.
    static MenuFX menu;
    c.RefreshCache("menu/item", &menu, nullptr);
    CHECK(c.m_path == "menu/item");
    CHECK(c.GetChar() == nullptr);
    CHECK(c.m_menu == &menu);

    DebugCachedCharacter d(nullptr);
    CHECK(d.m_character == nullptr);
    CHECK(d.m_path.empty());
}

int main() {
    TestByteArray();
    TestGamepad();
    TestGamepadTweaker();
    TestDebugCachedCharacter();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-pack0-8e4185-0 tests passed\n");
    return 0;
}
