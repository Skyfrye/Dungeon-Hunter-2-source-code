#include "glitch-video/image.hpp"
#include "glitch-video/null_driver.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    glitch::video::CImage image(16, 6);
    auto d0 = image.getDimension(0);
    CHECK(d0.Width == 16 && d0.Height == 6);
    auto d2 = image.getDimension(2);
    CHECK(d2.Width == 4 && d2.Height == 1);
    auto d4 = image.getDimension(4);            // 16>>4 = 1, 6>>4 = 0 clamps to 1
    CHECK(d4.Width == 1 && d4.Height == 1);

    glitch::video::CImage zero(0, 0);
    auto dz = zero.getDimension(3);
    CHECK(dz.Width == 0 && dz.Height == 0);     // non-positive sizes are left alone

    glitch::video::CNullDriver driver(static_cast<glitch::IDevice*>(nullptr));
    driver.setBlendColor(glitch::video::SColor{0xff00ff00u});
    driver.setClearColor(glitch::video::SColor{0u});
    driver.draw2DLine({0, 0}, {10, 10}, glitch::video::SColor{1u});

    std::printf("%s\n", failures ? "image: FAILED" : "image: ok");
    return failures != 0;
}
