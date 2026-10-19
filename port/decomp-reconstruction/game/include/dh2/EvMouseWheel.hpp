// EvMouseWheel: the mouse wheel turned. Raised by Application::onEvent (0x32a9c8) for glitch wheel events; the delta is
// the SEvent float at +0x10 converted to int. _ZTV12EvMouseWheel (0x95b498) is 20 bytes: D1 (0x31d8f0), D0 (0x31fcf0)
// and the inherited IEvent::getEventID.
// Layout (32-bit offsets): +0x00 vptr, +0x04 event id 3, +0x08 delta (int). The object is 0x0c bytes.
#pragma once

#include <cstdint>

#include "dh2/IEvent.hpp"

class EvMouseWheel : public IEvent {
public:
    static constexpr std::uint32_t kEventId = 3;

    explicit EvMouseWheel(int delta) : IEvent(kEventId), delta(delta) {}
    ~EvMouseWheel() override = default;  // 0x31d8f0 (D1), 0x31fcf0 (D0)

    int delta;  // +0x08
};
