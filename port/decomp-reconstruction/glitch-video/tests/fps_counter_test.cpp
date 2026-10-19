#include "glitch-video/fps_counter.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    glitch::video::CFPSCounter counter;
    CHECK(counter.getFPS() == 60);
    CHECK(counter.getPrimitive() == 0);

    // First frame: 1000 ms since time 0 is inside the 1499 ms window, so no reset.
    counter.registerFrame(1000, 10, 3, 2, 1);
    CHECK(counter.getPrimitive() == 10);
    CHECK(counter.getDrawCalls() == 3);
    CHECK(counter.getDrawCalls2D() == 2);
    CHECK(counter.getTextureBindings() == 1);
    CHECK(counter.getPrimitiveTotal() == 10);
    CHECK(counter.getFPS() == 60);

    // Second frame at 2000 ms: window elapsed (2000 > 1499). Two frames over 2 s = 1 fps,
    // primitives 30 over 2 s = 15 per second.
    counter.registerFrame(2000, 20, 4, 5, 6);
    CHECK(counter.getPrimitive() == 20);
    CHECK(counter.getPrimitiveTotal() == 30);
    CHECK(counter.getFPS() == 1);
    CHECK(counter.getPrimitiveAverage() == 15);
    CHECK(counter.getDrawCalls() == 4);
    CHECK(counter.getDrawCalls2D() == 5);
    CHECK(counter.getTextureBindings() == 6);

    std::printf("%s\n", failures ? "fps_counter: FAILED" : "fps_counter: ok");
    return failures != 0;
}
