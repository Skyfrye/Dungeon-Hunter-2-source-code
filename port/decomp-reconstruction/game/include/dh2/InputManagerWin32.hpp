// InputManagerWin32: the Win32 InputManager, the only implementation. GetInstance creates it with operator new(0x2bc0).
// It holds one Keyboard, one Mouse and four Gamepads in place; the InputManager base counts are 1, 1 and 4.
// Original 32-bit size 0x2bc0 (11200).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x34dd18 / 0x34de68, dtors 0x34dc94 / 0x34dcc8 / 0x34dce4).
#pragma once

#include <cstdint>

#include "dh2/Gamepad.hpp"
#include "dh2/InputDevice.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/Keyboard.hpp"
#include "dh2/Mouse.hpp"

class InputManagerWin32 : public InputManager {
public:
    InputManagerWin32();                                                // 0x34dd18 (C1), 0x34de68 (C2): InputManager(this, 1, 1, 4), then the devices in place
    ~InputManagerWin32() override;                                      // vtable slots 0x10 / 0x14: 0x34dc94 (D1), 0x34dce4 (D2), 0x34dcc8 (D0, calls CustomFree)

    // Overrides of InputManager slots, in vtable order. Slots 0x00 .. 0x0c.
    InputDevice* GetMouse(int index) override;                          // slot 0x00: 0x34da9c returns &m_mouse; index is not used
    InputDevice* GetKeyboard(int index) override;                       // slot 0x04: 0x34daa8 returns &m_keyboard; index is not used
    Gamepad* GetGamepad(int index) override;                            // slot 0x08: 0x34dbb4 returns &m_gamepads[index]; the original asserts index < 4
    void UpdateFrame(float dt) override;                                // slot 0x0c: 0x34dc90, a thunk that forwards to InputManager::UpdateFrame

    // InputManager occupies +0x00 .. +0x13. No constructor writes the 4 bytes at +0x14 (open question).
    uint8_t pad_14[4];                                                  // +0x14
    Keyboard m_keyboard;                                                // +0x18 .. +0xc43, GetKeyboard
    Mouse m_mouse;                                                      // +0xc44 .. +0xe4f, GetMouse
    Gamepad m_gamepads[4];                                              // +0xe50 .. +0x2bbf, GetGamepad; stride 0x75c (1884)
};
