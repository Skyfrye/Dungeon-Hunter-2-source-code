// EvGamepadAxis: a gamepad axis moved. Raised by v2GamepadController::Update (0x406c2c): axis 3 with the zoom value
// (the right stick) once it passes 0.25. _ZTV13EvGamepadAxis (0x967858) is 20 bytes: D1 (0x40691c), D0 (0x406928) and the
// inherited IEvent::getEventID.
// Layout (32-bit offsets): +0x00 vptr, +0x04 event id 8, +0x08 axis, +0x0c pad index, +0x10 value (float). The object
// is 0x14 bytes.
#pragma once

#include <cstdint>

#include "dh2/IEvent.hpp"

class EvGamepadAxis : public IEvent {
public:
    static constexpr std::uint32_t kEventId = 8;

    EvGamepadAxis(int axis, int pad, float value) : IEvent(kEventId), axis(axis), pad(pad), value(value) {}
    ~EvGamepadAxis() override = default;  // 0x40691c (D1), 0x406928 (D0)

    int axis;      // +0x08
    int pad;       // +0x0c
    float value;   // +0x10
};
