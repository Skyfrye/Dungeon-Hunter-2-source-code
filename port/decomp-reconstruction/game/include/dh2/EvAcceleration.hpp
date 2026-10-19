// EvAcceleration: the accelerometer event AccelerometerBase::moved (0x33d8dc) raises (after
// _calcAngles) through the global EventManager (dword_99F740). _ZTV14EvAcceleration is 20 bytes: D1 (0x33d714), D0
// (0x33d748) and the inherited IEvent::getEventID.
// Layout (32-bit offsets): +0x00 vptr, +0x04 event id 6, +0x08 / +0x0c / +0x10 the three angle words copied from
// AccelerometerBase +0x04, +0x08 and +0x0c (floats; the constructor of the raising code stores them in this order).
#pragma once

#include "dh2/IEvent.hpp"

class EvAcceleration : public IEvent {
public:
    static constexpr std::uint32_t kEventId = 6;

    EvAcceleration(float x, float y, float z) : IEvent(kEventId), x(x), y(y), z(z) {}
    ~EvAcceleration() override = default;  // 0x33d714 (D1), 0x33d748 (D0)

    float x;  // +0x08, AccelerometerBase +0x04
    float y;  // +0x0c, AccelerometerBase +0x08
    float z;  // +0x10, AccelerometerBase +0x0c
};
