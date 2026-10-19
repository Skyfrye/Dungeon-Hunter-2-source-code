// InputDevice: base of the mouse, keyboard and gamepad devices owned by InputManager.
// Vtable of one slot (the slot is pure virtual: the base vtable at 0x95ca20 has it null), no virtual
// destructor. Gamepad (type 2) derives from it.
#pragma once

class InputDevice {
public:
    // Constructor argument; Gamepad passes 2 (0x34cd0c). Mouse = 0 and Keyboard = 1 are inferred from the
    // order of InputManager::GetNumMouses/GetNumKeyboards/GetNumGamepads.
    enum Type : int { TYPE_MOUSE = 0, TYPE_KEYBOARD = 1, TYPE_GAMEPAD = 2 };

    explicit InputDevice(Type type);                   // 0x34ca64 / 0x34ca94

    virtual void UpdateFrame(float dt) = 0;            // +0x00 called by InputManager::UpdateFrame for every device

    // +0x00 vptr
    Type m_type;                                       // +0x04
    int unk_08;                                        // +0x08 0
};
