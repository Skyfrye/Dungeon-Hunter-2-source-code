#include "glitch-video/color_hsl.hpp"

#include <cstdint>

namespace glitch::video {

// 0x6a8438 _ZNK6glitch5video9SColorHSL6toRGB1Efff
// The hue is folded into [0, 2*pi) with the constants of the original (6.2832, 1.0472, 3.1416, 4.1888).
uint32_t SColorHSL::toRGB1(float p, float q, float hueOffset) const {
    float h = hueOffset;
    while (h > 6.2832f) {
        h = h - 6.2832f;
    }
    while (h < 0.0f) {
        h = h + 6.2832f;
    }

    float result = p;
    if (h < 1.0472f) {
        result = p + ((q - p) * h) / 1.0472f;
    } else if (h >= 3.1416f) {
        if (h >= 4.1888f) {
            return static_cast<uint32_t>(p * 255.0f);
        }
        result = p + ((q - p) * (4.1888f - h)) / 1.0472f;
    } else {
        result = q;
    }
    return static_cast<uint32_t>(result * 255.0f);
}

// 0x6a8580 _ZNK6glitch5video9SColorHSL5toRGBERNS0_6SColorE
uint32_t SColorHSL::toRGB(SColor& out) const {
    auto* bytes = reinterpret_cast<uint8_t*>(&out.color);
    uint32_t result = 0;

    if (saturation == 0.0f) {
        result = static_cast<uint8_t>(static_cast<uint32_t>(luminance * 255.0f));
        bytes[2] = static_cast<uint8_t>(result);
        bytes[0] = static_cast<uint8_t>(result);
        bytes[1] = static_cast<uint8_t>(result);
        return result;
    }

    float t2;
    if (luminance <= 0.5f) {
        t2 = luminance + saturation * luminance;
    } else {
        t2 = (saturation + luminance) - saturation * luminance;
    }
    const float t1 = (luminance + luminance) - t2;

    bytes[0] = static_cast<uint8_t>(toRGB1(t1, t2, hue + 2.0944f));
    bytes[1] = static_cast<uint8_t>(toRGB1(t1, t2, hue));
    result = toRGB1(t1, t2, hue - 2.0944f);
    bytes[2] = static_cast<uint8_t>(result);
    return result;
}

}  // namespace glitch::video
