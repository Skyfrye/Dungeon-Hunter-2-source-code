// EvTouchScreenMove: a touch moved. Raised by TouchScreenBase::ProcessEvents (0x33c568) for a queued move event.
// _ZTV17EvTouchScreenMove is 20 bytes: D1 (0x33a9a0), D0 (0x33b43c) and the inherited IEvent::getEventID.
// Layout (32-bit offsets, from the stack frame of ProcessEvents): +0x00 vptr, +0x04 event id 5, +0x08 x (short),
// +0x0a y (short), +0x0c touch id (int). The object is 0x10 bytes.
#pragma once

#include <cstdint>

#include "dh2/IEvent.hpp"

class EvTouchScreenMove : public IEvent {
public:
    static constexpr std::uint32_t kEventId = 5;

    EvTouchScreenMove(std::int16_t x, std::int16_t y, int id) : IEvent(kEventId), x(x), y(y), id(id) {}
    ~EvTouchScreenMove() override = default;  // 0x33a9a0 (D1), 0x33b43c (D0)

    std::int16_t x;  // +0x08
    std::int16_t y;  // +0x0a
    int id;          // +0x0c, the touch id
};
