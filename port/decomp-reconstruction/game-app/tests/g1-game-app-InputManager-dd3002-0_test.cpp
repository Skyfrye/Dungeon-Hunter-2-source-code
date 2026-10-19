// Test for batch g1-game-app-InputManager-dd3002-0. Covers the constructor's counts, the device order of UpdateFrame
// (mice, keyboards, gamepads), the connected-gamepad queries, and the GetReceiver/GetInstance/Destroy lifecycles.
// Definitions that live in other batches (device constructors and update slots, InputManagerWin32, the receiver's
// methods) are provided here as test doubles, so this test links only the batch source. Returns non-zero on failure.
#include <cstdio>
#include <memory>
#include <vector>

#include "dh2/Gamepad.hpp"
#include "dh2/InputDevice.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/InputManagerEventReceiver.hpp"
#include "dh2/InputManagerWin32.hpp"
#include "dh2/Keyboard.hpp"
#include "dh2/Mouse.hpp"

namespace {
// Log of the gamepads updated by UpdateFrame (in call order), and the last dt they were given.
std::vector<const Gamepad*> g_gamepadUpdates;
float g_gamepadDt = 0.0f;
}  // namespace

// Test doubles for definitions owned by other batches.
int gAssertLevel = 0;  // core-platform/src/memory.cpp; GetInstance reads it only when the allocation fails
InputDevice::InputDevice(Type type) : m_type(type), unk_08(0) {}
InputManagerEventReceiver::~InputManagerEventReceiver() {}
bool InputManagerEventReceiver::onEvent(const glitch::SEvent&) { return false; }
bool InputManagerEventReceiver::IsKeyDown(int) const { return false; }

Gamepad::Gamepad() : InputDevice(InputDevice::TYPE_GAMEPAD), m_connected(false) {}
void Gamepad::UpdateFrame(float dt) {
    g_gamepadUpdates.push_back(this);
    g_gamepadDt = dt;
}

Keyboard::Keyboard() : InputDevice(InputDevice::TYPE_KEYBOARD) {}
void Keyboard::UpdateFrame(float) {}
Mouse::Mouse() : InputDevice(InputDevice::TYPE_MOUSE) {}
void Mouse::UpdateFrame(float) {}

// GetInstance constructs an InputManagerWin32 (counts 1, 1, 4). Its slots are not exercised by this test.
InputManagerWin32::InputManagerWin32() : InputManager(1, 1, 4) {}
InputManagerWin32::~InputManagerWin32() {}
InputDevice* InputManagerWin32::GetMouse(int) { return nullptr; }
InputDevice* InputManagerWin32::GetKeyboard(int) { return nullptr; }
Gamepad* InputManagerWin32::GetGamepad(int) { return nullptr; }
void InputManagerWin32::UpdateFrame(float) {}

namespace {

int g_failures = 0;

#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);   \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

// Device that records its id into a shared log on UpdateFrame.
class MockDevice : public InputDevice {
public:
    MockDevice(Type type, int id, std::vector<int>* log)
        : InputDevice(type), m_id(id), m_log(log) {}
    void UpdateFrame(float dt) override {
        m_log->push_back(m_id);
        m_lastDt = dt;
    }
    int m_id;
    std::vector<int>* m_log;
    float m_lastDt = 0.0f;
};

// Manager over fixed device pools. Each gamepad slot holds a Gamepad whose connected flag the test sets.
class MockManager : public InputManager {
public:
    MockManager(int mice, int keyboards, std::vector<int>* log, int gamepads = 0)
        : InputManager(mice, keyboards, gamepads), m_mice(), m_keyboards(), m_pads() {
        for (int i = 0; i < mice; ++i) {
            m_mice.emplace_back(InputDevice::TYPE_MOUSE, 1 + i, log);
        }
        for (int i = 0; i < keyboards; ++i) {
            m_keyboards.emplace_back(InputDevice::TYPE_KEYBOARD, 10 + i, log);
        }
        for (int i = 0; i < gamepads; ++i) {
            m_pads.push_back(std::make_unique<Gamepad>());
        }
    }
    InputDevice* GetMouse(int index) override { return &m_mice[index]; }
    InputDevice* GetKeyboard(int index) override { return &m_keyboards[index]; }
    Gamepad* GetGamepad(int index) override { return m_pads[index].get(); }

    void SetConnected(int index, bool connected) { m_pads[index]->m_connected = connected; }
    Gamepad* Pad(int index) { return m_pads[index].get(); }

private:
    std::vector<MockDevice> m_mice;
    std::vector<MockDevice> m_keyboards;
    std::vector<std::unique_ptr<Gamepad>> m_pads;
};

void TestConstructorCounts() {
    std::vector<int> log;
    MockManager manager(2, 1, &log, 3);
    CHECK(manager.GetNumMouses() == 2);
    CHECK(manager.GetNumKeyboards() == 1);
    CHECK(manager.GetNumGamepads() == 3);
}

void TestUpdateFrameOrder() {
    std::vector<int> log;
    MockManager manager(2, 1, &log);
    manager.UpdateFrame(0.5f);
    // Mice first (ids 1, 2), then keyboards (id 10). No gamepads here.
    CHECK(log.size() == 3);
    if (log.size() == 3) {
        CHECK(log[0] == 1);
        CHECK(log[1] == 2);
        CHECK(log[2] == 10);
    }
}

void TestUpdateFrameEmpty() {
    std::vector<int> log;
    MockManager manager(0, 0, &log);
    manager.UpdateFrame(1.0f);
    CHECK(log.empty());
}

void TestUpdateFrameGamepads() {
    std::vector<int> log;
    MockManager manager(1, 0, &log, 2);
    g_gamepadUpdates.clear();
    g_gamepadDt = 0.0f;
    manager.UpdateFrame(0.25f);
    // The mouse is updated first, then the gamepads in index order, each with the same dt.
    CHECK(log.size() == 1);
    CHECK(g_gamepadUpdates.size() == 2);
    if (g_gamepadUpdates.size() == 2) {
        CHECK(g_gamepadUpdates[0] == manager.Pad(0));
        CHECK(g_gamepadUpdates[1] == manager.Pad(1));
    }
    CHECK(g_gamepadDt == 0.25f);
}

void TestConnectedGamepads() {
    std::vector<int> log;
    MockManager manager(0, 0, &log, 3);
    manager.SetConnected(0, false);
    manager.SetConnected(1, true);
    manager.SetConnected(2, true);
    CHECK(manager.GetConnectedGamepadCount() == 2);
    CHECK(manager.GetFirstConnectedGamepad() == manager.Pad(1));
}

void TestNoConnectedGamepad() {
    std::vector<int> log;
    MockManager manager(0, 0, &log, 2);
    CHECK(manager.GetConnectedGamepadCount() == 0);
    CHECK(manager.GetFirstConnectedGamepad() == nullptr);
}

void TestNoGamepadSlots() {
    std::vector<int> log;
    MockManager manager(0, 0, &log, 0);
    CHECK(manager.GetConnectedGamepadCount() == 0);
    CHECK(manager.GetFirstConnectedGamepad() == nullptr);
}

void TestReceiverLifecycle() {
    InputManager::Destroy();  // nothing created yet: must be a no-op

    glitch::IEventReceiver* first = InputManager::GetReceiver();
    CHECK(first != nullptr);
    CHECK(InputManager::GetReceiver() == first);  // the same receiver on every call

    // The key state starts cleared (value-initialization of the receiver).
    auto* receiver = static_cast<InputManagerEventReceiver*>(first);
    CHECK(receiver->m_mouseX == 0);
    CHECK(receiver->m_mouseY == 0);
    CHECK(receiver->m_wheelDelta == 0.0f);
    CHECK(receiver->unk_112 == 0);
    CHECK(receiver->unk_113 == 0);
    CHECK(receiver->unk_114 == 0);
    CHECK(receiver->m_keyDown[0x41] == 0);

    InputManager::Destroy();
    InputManager::Destroy();  // second call: no-op

    glitch::IEventReceiver* second = InputManager::GetReceiver();
    CHECK(second != nullptr);
    InputManager::Destroy();
}

void TestInstanceLifecycle() {
    InputManager::Destroy();  // nothing created yet: must be a no-op

    InputManager* manager = InputManager::GetInstance();
    CHECK(manager != nullptr);
    CHECK(InputManager::GetInstance() == manager);  // the cached manager on every call
    CHECK(manager->GetNumMouses() == 1);
    CHECK(manager->GetNumKeyboards() == 1);
    CHECK(manager->GetNumGamepads() == 4);

    InputManager::Destroy();  // deletes the manager; the next call creates a new one
    InputManager* again = InputManager::GetInstance();
    CHECK(again != nullptr);
    InputManager::Destroy();
}

}  // namespace

int main() {
    TestConstructorCounts();
    TestUpdateFrameOrder();
    TestUpdateFrameEmpty();
    TestUpdateFrameGamepads();
    TestConnectedGamepads();
    TestNoConnectedGamepad();
    TestNoGamepadSlots();
    TestReceiverLifecycle();
    TestInstanceLifecycle();
    if (g_failures == 0) {
        std::printf("g1-game-app-InputManager-dd3002-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-InputManager-dd3002-0 test: %d failure(s)\n", g_failures);
    return 1;
}
