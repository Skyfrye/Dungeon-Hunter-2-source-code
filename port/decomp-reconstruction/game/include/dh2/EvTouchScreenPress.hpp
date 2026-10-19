// EvTouchScreenPress: a touch went down or up. Raised by TouchScreenBase::ProcessEvents (0x33c568). The press flag
// is set for a touch going down (ProcessEvents also raises it with the flag set for the debug grid of fake
// touches). _ZTV18EvTouchScreenPress is 20 bytes: D1 (0x33a99c), D0 (0x33b470) and the inherited IEvent::getEventID.
// Layout (32-bit offsets, from the stack frame of ProcessEvents): +0x00 vptr, +0x04 event id 4, +0x08 x (short),
// +0x0a y (short), +0x0c touch id (int), +0x10 pressed (bool). The object is 0x14 bytes.
#pragma once

#include <cstdint>

#include "dh2/IEvent.hpp"

class EvTouchScreenPress : public IEvent {
public:
    static constexpr std::uint32_t kEventId = 4;

    EvTouchScreenPress(std::int16_t x, std::int16_t y, int id, bool pressed)
        : IEvent(kEventId), x(x), y(y), id(id), pressed(pressed) {}
    ~EvTouchScreenPress() override = default;  // 0x33a99c (D1), 0x33b470 (D0)

    std::int16_t x;  // +0x08
    std::int16_t y;  // +0x0a
    int id;          // +0x0c, the touch id
    bool pressed;    // +0x10
};
