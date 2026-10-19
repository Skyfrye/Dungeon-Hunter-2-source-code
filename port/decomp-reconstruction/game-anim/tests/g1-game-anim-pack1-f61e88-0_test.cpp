// Test for batch g1-game-anim-pack1-f61e88-0.
//
// Covers the constructor field stores of v2GamepadController, v2HudController and v2NetController, the threshold and
// edge helpers that v2GamepadController::Update uses, and the pad lookup at the start of v2GamepadController::Update.
//
// The batch source refers to functions owned by other batches: the v2Controller base constructor, destructor and
// Update, the InputManager members, and the Application members Update reads (m_gamepadTweaker and m_eventManager).
// The definitions below are test doubles so that this test links on its own. They are not reconstructed code. No
// Character or Controllable object is built; the Gamepad and the EventManager below are real objects because Update
// reads them (see their definitions).
#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/Gamepad.hpp"
#include "dh2/GamepadTweaker.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/v2GamepadController.hpp"
#include "dh2/v2HudController.hpp"
#include "dh2/v2NetController.hpp"

// Engine assert level. The constructors only print or abort when it is non-zero, so the test keeps it at 0.
int gAssertLevel = 0;

// Test doubles for the v2Controller base, which the batch sources call. The base constructor is defined for real in
// game-anim/src/r2a-game-anim-pack2-aa7d76-0.cpp; this double stores the same fields so the derived checks below see them.
v2Controller::v2Controller(v2Controllable* controllable)
    : m_controllable(controllable), m_blocked(false), unk_009(false), unk_00a(false), m_character(nullptr) {}
v2Controller::~v2Controller() {}
void v2Controller::Update() {}

namespace v2gamepad_detail {
// Declared with the same signatures as the batch source (v2gamepad_detail in the batch file).
float ButtonThreshold(float lo, float hi);
enum class ButtonEvent { kNone, kReleased, kPressed };
ButtonEvent ButtonEdge(float value, float threshold, bool flag);
}  // namespace v2gamepad_detail

namespace {

int g_numGamepads = 0;             // what InputManager::GetNumGamepads returns
int g_gamepadCalls = 0;            // GetGamepad calls made through FakeInput
int g_lastIndex = 0;               // index of the last GetGamepad call
int g_firstCalls = 0;              // GetFirstConnectedGamepad calls
Gamepad* g_gamepadPad = nullptr;   // returned by GetGamepad
Gamepad* g_firstPad = nullptr;     // returned by GetFirstConnectedGamepad

// Concrete input manager for the test. The base constructor and destructor are doubles below.
class FakeInput : public InputManager {
public:
    FakeInput() : InputManager(0, 0, 0) {}
    InputDevice* GetMouse(int) override { return nullptr; }
    InputDevice* GetKeyboard(int) override { return nullptr; }
    Gamepad* GetGamepad(int index) override {
        ++g_gamepadCalls;
        g_lastIndex = index;
        return g_gamepadPad;
    }
    void UpdateFrame(float) override {}
};

FakeInput g_input;

int g_failures = 0;

#define CHECK(cond)                                                          \
    do {                                                                     \
        if (!(cond)) {                                                       \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);     \
            ++g_failures;                                                    \
        }                                                                    \
    } while (0)

void ResetPadCounters() {
    g_gamepadCalls = 0;
    g_lastIndex = 0;
    g_firstCalls = 0;
}

}  // namespace

// Test doubles for the InputManager members the Update lookup calls. The base constructor and destructor are doubles
// too, because FakeInput's implicit destructor calls ~InputManager. UpdateFrame is the key function of InputManager
// (its first non-pure virtual that is not inline), so defining it here also emits the InputManager vtable that the
// base constructor double refers to.
InputManager::InputManager(int, int, int) {}
InputManager::~InputManager() {}
void InputManager::UpdateFrame(float) {}
InputManager* InputManager::GetInstance() { return &g_input; }
int InputManager::GetNumGamepads() const { return g_numGamepads; }
Gamepad* InputManager::GetFirstConnectedGamepad() {
    ++g_firstCalls;
    return g_firstPad;
}

// v2GamepadController::Update calls Application::m_gamepadTweaker->UpdateButtonMappings() (batch line 109) as soon as
// a pad came back, before any control is read. This test builds no Application: ApplicationGetInstance returns zeroed
// storage, so m_gamepadTweaker is null and the real GamepadTweaker::UpdateButtonMappings
// (game-app/src/g1-game-app-pack0-8e4185-0.cpp) would dereference null. The call is out of this batch, so it is a
// double here, like the other out-of-batch calls in this file.
void GamepadTweaker::UpdateButtonMappings() {}

// v2GamepadController::Update reaches Application::m_eventManager (+0x14, the global dword_99F740) once the pad lookup
// and the stick handling are past: the 26 flagged controls and the zoom axis raise an EvGamepad/EvGamepadAxis on it
// (batch lines 242..271). This test builds no Application, so that member is null and EventManager::Raise would fault
// in its std::map walk. It MUST be a real EventManager: Update reads the pointer unconditionally. Update attaches no
// receiver, so Raise finds no entry for the event id and returns without calling anything. The object is built once.
alignas(16) unsigned char g_eventManagerStorage[sizeof(EventManager)];
EventManager* TestEventManager() {
    static EventManager* events = new (g_eventManagerStorage) EventManager();
    return events;
}

// What InputManager hands back for the pad lookup. GetGamepad returns this pointer and Update reads its channels, so
// it is a real Gamepad (its constructor sets every channel); nothing in this test connects it or runs a frame on it.
alignas(16) unsigned char g_gamepadStorage[sizeof(Gamepad)];
Gamepad* TestGamepad() {
    static Gamepad* pad = new (g_gamepadStorage) Gamepad();
    return pad;
}

int main() {
    using E = v2gamepad_detail::ButtonEvent;

    ApplicationGetInstance().m_eventManager = TestEventManager();


    // Threshold formula (lo + hi + 1) * 0.5, exact for these inputs.
    CHECK(v2gamepad_detail::ButtonThreshold(0.0f, 0.0f) == 0.5f);
    CHECK(v2gamepad_detail::ButtonThreshold(-1.0f, 1.0f) == 0.5f);
    CHECK(v2gamepad_detail::ButtonThreshold(0.25f, 0.25f) == 0.75f);

    // Edge rule: value below the threshold raises state 0 only when the flag is set; at or above it, state 1 only
    // when the flag is clear.
    CHECK(v2gamepad_detail::ButtonEdge(0.9f, 0.5f, false) == E::kPressed);
    CHECK(v2gamepad_detail::ButtonEdge(0.9f, 0.5f, true) == E::kNone);
    CHECK(v2gamepad_detail::ButtonEdge(0.1f, 0.5f, true) == E::kReleased);
    CHECK(v2gamepad_detail::ButtonEdge(0.1f, 0.5f, false) == E::kNone);
    CHECK(v2gamepad_detail::ButtonEdge(0.5f, 0.5f, false) == E::kPressed);  // at the threshold counts as pressed

    int token = 0;
    v2Controllable* ctrl = reinterpret_cast<v2Controllable*>(&token);

    // v2GamepadController constructor: base stores, then m_padIndex and a zeroed unk_014.
    {
        v2GamepadController pad(ctrl, 2);
        CHECK(pad.m_controllable == ctrl);
        CHECK(!pad.m_blocked);
        CHECK(!pad.unk_009);
        CHECK(!pad.unk_00a);
        CHECK(pad.m_character == nullptr);
        CHECK(pad.m_padIndex == 2);
        CHECK(pad.unk_014.X == 0.0f && pad.unk_014.Y == 0.0f && pad.unk_014.Z == 0.0f);
    }

    // v2HudController and v2NetController constructors: base stores only.
    {
        v2HudController hud(ctrl);
        CHECK(hud.m_controllable == ctrl);
        CHECK(!hud.m_blocked);
        CHECK(hud.m_character == nullptr);
    }
    {
        v2NetController net(ctrl);
        CHECK(net.m_controllable == ctrl);
        CHECK(!net.m_blocked);
        CHECK(net.m_character == nullptr);
    }

    // v2GamepadController::Update lookup. Index at or past the count returns before any pad is asked for. The pad the
    // stubs hand back is a real Gamepad: Update reads its channels once the lookup succeeds.
    g_gamepadPad = TestGamepad();
    g_firstPad = TestGamepad();
    g_numGamepads = 1;
    ResetPadCounters();
    {
        v2GamepadController pad(ctrl, 1);
        pad.Update();
        CHECK(g_gamepadCalls == 0);
        CHECK(g_firstCalls == 0);
    }

    // Non-negative index: GetGamepad is called with that same index.
    g_numGamepads = 3;
    ResetPadCounters();
    {
        v2GamepadController pad(ctrl, 2);
        pad.Update();
        CHECK(g_gamepadCalls == 1);
        CHECK(g_lastIndex == 2);
        CHECK(g_firstCalls == 0);
    }

    // Negative index: the first connected pad is used and GetGamepad is not called.
    ResetPadCounters();
    {
        v2GamepadController pad(ctrl, -1);
        pad.Update();
        CHECK(g_firstCalls == 1);
        CHECK(g_gamepadCalls == 0);
    }

    // No pad returned for a valid index: Update returns after the lookup.
    g_gamepadPad = nullptr;
    ResetPadCounters();
    {
        v2GamepadController pad(ctrl, 0);
        pad.Update();
        CHECK(g_gamepadCalls == 1);
        CHECK(g_lastIndex == 0);
    }

    if (g_failures == 0) {
        std::printf("g1-game-anim-pack1-f61e88-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-anim-pack1-f61e88-0 test: %d check(s) failed\n", g_failures);
    return 1;
}
