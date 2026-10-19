// EvMouseButton: a mouse button went down or up. Raised by Application::onEvent (0x32a9c8): the glitch press events 0, 1
// and 2 (left, right and middle) raise it with the pressed byte set, the release events 3, 4 and 5 with it clear.
// Consumed by v2EmuController::_onEvent(EvMouseButton const*, ...) (0x405f48), which tests button 0 and the pressed byte
// and then reads the position as two shorts. _ZTV13EvMouseButton (0x95b4b0) is 20 bytes: D1 (0x31d8ec), D0 (0x31fd24)
// and the inherited IEvent::getEventID.
// Layout (32-bit offsets): +0x00 vptr, +0x04 event id 2, +0x08 button (0 left, 2 for the second press event type, 1
// for the third), +0x0c pressed (bool), +0x0e x (short), +0x10 y (short). The object is 0x14 bytes.
#pragma once

#include <cstdint>

#include "dh2/IEvent.hpp"

class EvMouseButton : public IEvent {
public:
    static constexpr std::uint32_t kEventId = 2;

    EvMouseButton(int button, bool pressed, std::int16_t x, std::int16_t y)
        : IEvent(kEventId), button(button), pressed(pressed), x(x), y(y) {}
    ~EvMouseButton() override = default;  // 0x31d8ec (D1), 0x31fd24 (D0)

    int button;         // +0x08
    bool pressed;       // +0x0c
    std::int16_t x;     // +0x0e
    std::int16_t y;     // +0x10
};
