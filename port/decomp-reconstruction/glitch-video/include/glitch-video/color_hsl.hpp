// glitch::video::SColorHSL: hue, saturation and luminance as three floats, converted to
// the packed SColor bytes (0x6a8438, 0x6a8580).
#pragma once

#include <cstdint>

#include "glitch-video/deps/glitch_core.hpp"

namespace glitch::video {

struct SColorHSL {
    float hue = 0.0f;         // +0x00, radians
    float saturation = 0.0f;  // +0x04, 0..1
    float luminance = 0.0f;   // +0x08, 0..1

    // 0x6a8438: one channel of the RGB conversion, in 0..255 (truncated to uint32).
    uint32_t toRGB1(float p, float q, float hueOffset) const;
    // 0x6a8580: writes the bytes of out (B, G, R order in the original) and returns the last
    // channel value.
    uint32_t toRGB(SColor& out) const;
};

}  // namespace glitch::video
