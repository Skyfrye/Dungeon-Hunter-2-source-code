// EvGamepad: a gamepad button changed state. Raised by Application::_CheckGamepad (0x321164), by
// v2GamepadController::Update (0x406c2c, with its pad index) and by PlayerManager::_UpdateJoiningController (0x36f4b4).
// Consumed by MenuManager::onEvent (0x430ad4), which maps the button code at +0x08 to the names "BTN_1" ... "BTN_START"
// and passes the name, the state at +0x0c and the pad at +0x10 to the menus' "onInputEvent" callback.
// _ZTV9EvGamepad (0x95b468) is 20 bytes: D1 (0x31d8f4), D0 (0x31fc88) and the inherited IEvent::getEventID.
// Layout (32-bit offsets, from the stack objects of the raisers): +0x00 vptr, +0x04 event id 7, +0x08 button code, +0x0c
// pressed (int 0 or 1), +0x10 pad index (the int the v2GamepadController constructor takes, 0 from Application), +0x14 value (float, every raiser
// stores 1.0f = 0x3f800000). The object is 0x18 bytes.
#pragma once

#include <cstdint>

#include "dh2/IEvent.hpp"

class EvGamepad : public IEvent {
public:
    static constexpr std::uint32_t kEventId = 7;

    EvGamepad(int button, int pressed, int pad, float value = 1.0f)
        : IEvent(kEventId), button(button), pressed(pressed), pad(pad), value(value) {}
    ~EvGamepad() override = default;  // 0x31d8f4 (D1), 0x31fc88 (D0)

    int button;    // +0x08
    int pressed;   // +0x0c
    int pad;       // +0x10
    float value;   // +0x14
};
