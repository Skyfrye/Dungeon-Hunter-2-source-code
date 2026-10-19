// EvMouseMove: the pointer moved. Raised by Application::onEvent (0x32a9c8) for glitch mouse-move events.
// _ZTV11EvMouseMove (0x95b480) is 20 bytes: D1 (0x31d8e8), D0 (0x31fcbc) and the inherited IEvent::getEventID.
// Layout (32-bit offsets): +0x00 vptr, +0x04 event id 1, +0x08 x (short), +0x0a y (short). The object is 0x0c bytes.
#pragma once

#include <cstdint>

#include "dh2/IEvent.hpp"

class EvMouseMove : public IEvent {
public:
    static constexpr std::uint32_t kEventId = 1;

    EvMouseMove(std::int16_t x, std::int16_t y) : IEvent(kEventId), x(x), y(y) {}
    ~EvMouseMove() override = default;  // 0x31d8e8 (D1), 0x31fcbc (D0)

    std::int16_t x;  // +0x08
    std::int16_t y;  // +0x0a
};
