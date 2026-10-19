// Host check for SColorHSL::toRGB: grey and pure red. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>

#include "glitch-video/color_hsl.hpp"

int main() {
    int failures = 0;
    auto check = [&](bool ok, const char* what) {
        if (!ok) {
            std::printf("FAILED: %s\n", what);
            ++failures;
        }
    };

    using glitch::video::SColor;
    using glitch::video::SColorHSL;

    SColorHSL grey;
    grey.hue = 0.0f;
    grey.saturation = 0.0f;
    grey.luminance = 0.5f;
    SColor out;
    const uint32_t r = grey.toRGB(out);
    const auto* b = reinterpret_cast<const uint8_t*>(&out.color);
    check(r == 127, "grey result");
    check(b[0] == 127 && b[1] == 127 && b[2] == 127, "grey bytes");

    SColorHSL red;
    red.hue = 0.0f;
    red.saturation = 1.0f;
    red.luminance = 0.5f;
    red.toRGB(out);
    check(b[0] == 255, "red channel at hue + 2.0944");
    check(b[1] == 0, "green channel at hue");
    check(b[2] == 0, "blue channel at hue - 2.0944");

    std::printf("%s\n", failures ? "color_hsl: FAILED" : "color_hsl: ok");
    return failures != 0;
}
