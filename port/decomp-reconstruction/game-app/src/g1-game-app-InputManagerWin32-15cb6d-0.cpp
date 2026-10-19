// Batch g1-game-app-InputManagerWin32-15cb6d-0 (InputManagerWin32, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// Layout (dh2/InputManagerWin32.hpp): the InputManager base at +0x00 .. +0x13, m_keyboard at +0x18 (GetKeyboard),
// m_mouse at +0xc44 (GetMouse), m_gamepads[4] at +0xe50 with stride 0x75c (GetGamepad). The vtable slots are
// GetMouse +0x00, GetKeyboard +0x04, GetGamepad +0x08, UpdateFrame +0x0c, D1 +0x10 and D0 +0x14.
#include "dh2/InputManagerWin32.hpp"

#include <cstdio>
#include <cstdlib>

#include "dh2/Gamepad.hpp"
#include "dh2/InputDevice.hpp"
#include "dh2/Keyboard.hpp"
#include "dh2/Mouse.hpp"

// Global assert level. core-platform/memory.hpp declares it too (defined in core-platform/src/memory.cpp).
extern int gAssertLevel;

// 0x34dd18 InputManagerWin32::InputManagerWin32() (C1, complete-object constructor)
// Calls the InputManager constructor with (1, 1, 4), sets the vptr (compiler), then constructs the devices in place in
// this order: Keyboard (+0x18), Mouse (+0xc44), and the four Gamepads (+0xe50, +0x15ac, +0x1d08, +0x2464). The member
// constructors run after the base and in declaration order, which is the order of the original. The four bytes at
// +0x14 are not written, as in the original.
InputManagerWin32::InputManagerWin32() : InputManager(1, 1, 4) {}

// 0x34de68 InputManagerWin32::InputManagerWin32() (C2, base-object constructor)
// Skipped: compiler-generated base-object constructor. Its body is the same as the C1 at 0x34dd18.

// 0x34dc94 InputManagerWin32::~InputManagerWin32() (D1, complete-object destructor)
// Empty in the original beyond the vptr store (to the InputManagerWin32 vtable) and the call to the base destructor
// (InputManager D2 at 0x34d73c). The original calls no destructor for the devices, and Keyboard, Mouse and Gamepad
// declare none, so the implicit member destruction here is empty too.
InputManagerWin32::~InputManagerWin32() {}

// 0x34dce4 InputManagerWin32::~InputManagerWin32() (D2, base-object destructor)
// Skipped: compiler-generated base-object destructor, the same body as the D1 at 0x34dc94.

// 0x34dcc8 InputManagerWin32::~InputManagerWin32() (D0, deleting destructor)
// Skipped: compiler-generated deleting destructor. The original calls D1 (0x34dc94) and then CustomFree(this)
// (asm: BL D1, BL CustomFree). The compiler emits it from the virtual destructor.

// 0x34da9c InputManagerWin32::GetMouse(int)
// Returns the mouse device (&m_mouse, +0xc44) as an InputDevice. The index is not used: every index gives the one
// mouse (asm: ADD R0, R0, #0xC40; ADD R0, R0, #4).
InputDevice* InputManagerWin32::GetMouse(int) { return &m_mouse; }

// 0x34daa8 InputManagerWin32::GetKeyboard(int)
// Returns the keyboard device (&m_keyboard, +0x18) as an InputDevice. The index is not used (asm: ADD R0, R0, #0x18).
InputDevice* InputManagerWin32::GetKeyboard(int) { return &m_keyboard; }

// 0x34dbb4 InputManagerWin32::GetGamepad(int)
// Returns the gamepad slot at index (&m_gamepads[index], +0xe50 plus index times 0x75c). For an index above 3 the
// original asserts. At gAssertLevel 2 it stores through the null pointer to crash, reproduced with std::abort as in
// DebugSwitches. At gAssertLevel 1 it prints ASSERT(idx < 4) FAILED for inputManagerWin32.cpp line 640. Either way the
// function then returns the slot address, so an out-of-range index gives the address past the array, as in the
// original. &m_gamepads[index] keeps that result, though the C++ form is undefined past the end of the array.
Gamepad* InputManagerWin32::GetGamepad(int index) {
    if (index > 3) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "idx < 4",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\InputManager\\win32\\inputManagerWin32.cpp",
                         640);
        }
    }
    return &m_gamepads[index];
}

// 0x34dc90 InputManagerWin32::UpdateFrame(float)
// Thunk: the original is a single tail branch to InputManager::UpdateFrame (asm: B _ZN12InputManager11UpdateFrameEf).
// The override forwards the call to the base implementation, which updates the mouse, keyboard and gamepad devices
// through the virtual getters.
void InputManagerWin32::UpdateFrame(float dt) { InputManager::UpdateFrame(dt); }
