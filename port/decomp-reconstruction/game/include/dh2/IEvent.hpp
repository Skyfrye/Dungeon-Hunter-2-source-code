// IEvent: base class of the events EventManager raises (EvKeyboard, EvMouseButton, EvAcceleration,
// EvTouchScreenMove, EvTouchScreenPress, ...). The one definition for every category: the engine unification
// wave (u1-core) moved it here, next to EventManager (dh2/EventManager.hpp), from net-session-online's
// i_event.hpp and the stand-ins in core-platform.
//
// _ZTV6IEvent is 20 bytes: offset-to-top, typeinfo and three slots: +0x00 D1 (empty, 0x31d8d8), +0x04 D0
// (deleting, 0x31fc20: resets the vptr and calls CustomFree) and +0x08 getEventID (0x31d8dc), which is defined in
// the base (not pure). The object is 8 bytes: +0x00 vptr, +0x04 the event id, which each derived constructor sets.
// The ids: EvKeyboard 0, EvMouseMove 1, EvMouseButton 2, EvMouseWheel 3, EvTouchScreenPress 4, EvTouchScreenMove 5,
// EvAcceleration 6, EvGamepad 7, EvGamepadAxis 8.
#pragma once

#include <cstdint>

class IEvent {
public:
    virtual ~IEvent() = default;                                      // +0x00 D1 0x31d8d8, +0x04 D0 0x31fc20
    // +0x08, 0x31d8dc _ZNK6IEvent10getEventIDEv: returns the id stored at +0x04.
    virtual std::uint32_t getEventID() const { return eventId_; }

public:
    IEvent() = default;
    explicit IEvent(std::uint32_t eventId) : eventId_(eventId) {}

    std::uint32_t eventId_ = 0;  // +0x04
};
