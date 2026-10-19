// TouchScreenIPhone pieces completed by owner K3 (2026-10-16).

#include "core-platform/touch_screen_iphone.hpp"

// 0x33ccac _ZNK17TouchScreenIPhone15isRegionPressedERKN6glitch4core4rectIfEE
// A thunk: the listing tail-calls TouchScreenBase::isRegionPressed (0x33aebc), the body in touch_screen_base.cpp.
int TouchScreenIPhone::isRegionPressed(const glitch::core::rect<float>& r) const {
    return TouchScreenBase::isRegionPressed(r);
}
