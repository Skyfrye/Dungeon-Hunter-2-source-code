#include "glitch-video/c2d_driver.hpp"

namespace glitch::video {

// 0x59efb4 _ZN6glitch5video9C2DDriverC2EPNS0_12IVideoDriverE
// 0x59f008 _ZN6glitch5video9C2DDriverC1EPNS0_12IVideoDriverE
// The vtable pointer at +0x00 is set by the compiler from the class type; the other fields start at zero.
C2DDriver::C2DDriver(IVideoDriver* driver) : m_driver(driver) {
    referenceCounter = 1;  // +0x04
}

}  // namespace glitch::video
