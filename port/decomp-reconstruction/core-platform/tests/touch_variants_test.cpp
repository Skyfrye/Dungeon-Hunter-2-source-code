#include "core-platform/touch_screen_ps3.hpp"
#include "core-platform/touch_screen_iphone.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    TouchScreenIPhone phone(10.f, 20.f, 320.f, 480.f, 2.f);
    CHECK(phone.getLeftBound() == 10);
    CHECK(phone.getTopBound() == 20);
    CHECK(phone.getRightBound() == 320);
    CHECK(phone.getBottomBound() == 480);
    glitch::core::rect<float> everywhere{0.f, 0.f, 1000.f, 1000.f};
    CHECK(phone.getTouchIDInRegion(everywhere) == -1);  // no active touches yet

    TouchScreenPS3 pad;
    CHECK(pad.getLeftBound() == 0 && pad.getRightBound() == 0);
    CHECK(pad.getTopBound() == 0 && pad.getBottomBound() == 0);

    glitch::SEvent ev{};
    ev.EventType = glitch::EET_MOUSE_INPUT_EVENT;
    ev.MouseInput.X = 5;
    ev.MouseInput.Y = 6;
    ev.MouseInput.Event = 6;  // move without a press is not consumed
    CHECK(!pad.onEvent(ev));
    ev.MouseInput.Event = 0;  // press
    CHECK(pad.onEvent(ev));
    ev.MouseInput.Event = 6;  // move while held
    CHECK(pad.onEvent(ev));
    ev.MouseInput.Event = 3;  // release
    CHECK(pad.onEvent(ev));
    ev.EventType = glitch::EET_KEY_INPUT_EVENT;  // other event types are ignored
    CHECK(!pad.onEvent(ev));

    std::printf("%s\n", failures ? "touch_variants: FAILED" : "touch_variants: ok");
    return failures != 0;
}
