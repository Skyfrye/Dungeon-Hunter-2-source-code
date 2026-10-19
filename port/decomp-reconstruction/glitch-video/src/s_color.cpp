#include "glitch-video/deps/glitch_core.hpp"

namespace glitch::video {

namespace {

// Channel i of a packed colour (byte 0 is the low byte).
uint8_t channelOf(uint32_t packed, int index) {
    return static_cast<uint8_t>(packed >> (8 * index));
}

// The original clamps a float channel: below 0 (and NaN) gives 0, 255 or more gives 255,
// anything else is truncated.
uint8_t toChannelByte(float value) {
    if (value >= 0.0f) {
        return value < 255.0f ? static_cast<uint8_t>(static_cast<unsigned int>(value)) : static_cast<uint8_t>(255);
    }
    return 0;
}

}  // namespace

// 0x540f8c _ZNK6glitch5video6SColor15getInterpolatedERKS1_f
SColor SColor::getInterpolated(const SColor& other, float t) const {
    float clamped = t;
    if (t >= 0.0f) {
        if (t >= 1.0f) clamped = 1.0f;
    } else {
        clamped = 0.0f;
    }
    const float oneMinusT = 1.0f - clamped;

    // Per channel: this + (1 - t) * (other - this). The original keeps the same order of
    // operations: r0 = channel 0, r1 = channel 1, r2 = channel 2, r3 = channel 3.
    uint8_t out[4];
    for (int i = 0; i < 4; ++i) {
        const float a = static_cast<float>(channelOf(color, i));
        const float b = static_cast<float>(channelOf(other.color, i));
        out[i] = toChannelByte(a + oneMinusT * (b - a));
    }

    SColor result;
    result.color = static_cast<uint32_t>(out[0]) | (static_cast<uint32_t>(out[1]) << 8) |
                   (static_cast<uint32_t>(out[2]) << 16) | (static_cast<uint32_t>(out[3]) << 24);
    return result;
}

}  // namespace glitch::video
