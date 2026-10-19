// Test for batch g1-game-app-InputManagerWin32-15cb6d-0. Covers the constructor's device counts and the in-place device
// addresses, the GetMouse, GetKeyboard and GetGamepad getters (the mouse and keyboard ignore the index), the virtual
// dispatch of those getters through an InputManager pointer, UpdateFrame forwarding through the thunk, and deletion
// through a base pointer. The batch source is linked with the InputManager batch source (the base class and its
// UpdateFrame loops). The device and receiver definitions owned by other batches are test doubles here.
// Returns non-zero on failure.
#include <cstdio>

#include "dh2/Gamepad.hpp"
#include "dh2/InputDevice.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/InputManagerEventReceiver.hpp"
#include "dh2/InputManagerWin32.hpp"
#include "dh2/Keyboard.hpp"
#include "dh2/Mouse.hpp"

namespace {
// Update counts and the last dt the device stubs were given.
int g_mouseUpdates = 0;
int g_keyboardUpdates = 0;
int g_gamepadUpdates = 0;
float g_lastDt = 0.0f;

int g_failures = 0;

void ResetUpdateCounts() {
    g_mouseUpdates = 0;
    g_keyboardUpdates = 0;
    g_gamepadUpdates = 0;
    g_lastDt = 0.0f;
}
}  // namespace

// Test doubles for definitions owned by other batches.
int gAssertLevel = 0;  // core-platform/src/memory.cpp
InputDevice::InputDevice(Type type) : m_type(type), unk_08(0) {}
Mouse::Mouse() : InputDevice(InputDevice::TYPE_MOUSE) {}
void Mouse::UpdateFrame(float dt) {
    ++g_mouseUpdates;
    g_lastDt = dt;
}
Keyboard::Keyboard() : InputDevice(InputDevice::TYPE_KEYBOARD) {}
void Keyboard::UpdateFrame(float dt) {
    ++g_keyboardUpdates;
    g_lastDt = dt;
}
Gamepad::Gamepad() : InputDevice(InputDevice::TYPE_GAMEPAD), m_connected(false) {}
void Gamepad::UpdateFrame(float dt) {
    ++g_gamepadUpdates;
    g_lastDt = dt;
}
InputManagerEventReceiver::~InputManagerEventReceiver() {}
bool InputManagerEventReceiver::onEvent(const glitch::SEvent&) { return false; }
bool InputManagerEventReceiver::IsKeyDown(int) const { return false; }

namespace {

#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);   \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

void TestConstructorCounts() {
    InputManagerWin32 manager;
    CHECK(manager.GetNumMouses() == 1);
    CHECK(manager.GetNumKeyboards() == 1);
    CHECK(manager.GetNumGamepads() == 4);
}

void TestDevicesAreInPlace() {
    InputManagerWin32 manager;

    // The getters return the devices embedded in the manager, as InputDevice pointers.
    CHECK(manager.GetMouse(0) == &manager.m_mouse);
    CHECK(manager.GetMouse(0)->m_type == InputDevice::TYPE_MOUSE);
    CHECK(manager.GetMouse(5) == &manager.m_mouse);  // the index is not used
    CHECK(manager.GetKeyboard(0) == &manager.m_keyboard);
    CHECK(manager.GetKeyboard(0)->m_type == InputDevice::TYPE_KEYBOARD);
    CHECK(manager.GetKeyboard(3) == &manager.m_keyboard);  // the index is not used

    for (int i = 0; i < 4; ++i) {
        CHECK(manager.GetGamepad(i) == &manager.m_gamepads[i]);
        CHECK(manager.GetGamepad(i)->m_type == InputDevice::TYPE_GAMEPAD);
    }
}

void TestVirtualDispatchThroughBase() {
    InputManagerWin32 manager;
    InputManager* base = &manager;
    CHECK(base->GetMouse(0) == &manager.m_mouse);
    CHECK(base->GetKeyboard(0) == &manager.m_keyboard);
    CHECK(base->GetGamepad(2) == &manager.m_gamepads[2]);
}

void TestConnectedGamepadInPlace() {
    InputManagerWin32 manager;
    CHECK(manager.GetConnectedGamepadCount() == 0);
    manager.m_gamepads[2].m_connected = true;
    CHECK(manager.GetConnectedGamepadCount() == 1);
    CHECK(manager.GetFirstConnectedGamepad() == &manager.m_gamepads[2]);
}

void TestUpdateFrameForwarding() {
    InputManagerWin32 manager;
    ResetUpdateCounts();
    manager.UpdateFrame(0.5f);  // the override forwards to InputManager::UpdateFrame
    CHECK(g_mouseUpdates == 1);
    CHECK(g_keyboardUpdates == 1);
    CHECK(g_gamepadUpdates == 4);
    CHECK(g_lastDt == 0.5f);

    ResetUpdateCounts();
    InputManager* base = &manager;
    base->UpdateFrame(0.25f);  // through the vtable slot +0x0c
    CHECK(g_mouseUpdates == 1);
    CHECK(g_keyboardUpdates == 1);
    CHECK(g_gamepadUpdates == 4);
    CHECK(g_lastDt == 0.25f);
}

void TestDeleteThroughBase() {
    InputManager* manager = new InputManagerWin32();
    CHECK(manager->GetNumMouses() == 1);
    CHECK(manager->GetNumGamepads() == 4);
    delete manager;  // virtual deleting destructor: the empty D1, then the deallocation
}

}  // namespace

int main() {
    TestConstructorCounts();
    TestDevicesAreInPlace();
    TestVirtualDispatchThroughBase();
    TestConnectedGamepadInPlace();
    TestUpdateFrameForwarding();
    TestDeleteThroughBase();
    if (g_failures == 0) {
        std::printf("g1-game-app-InputManagerWin32-15cb6d-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-InputManagerWin32-15cb6d-0 test: %d failure(s)\n", g_failures);
    return 1;
}
