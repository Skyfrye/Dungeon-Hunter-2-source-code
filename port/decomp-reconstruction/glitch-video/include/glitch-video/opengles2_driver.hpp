// glitch::video::COpenGLES2Driver: the OpenGL ES 2 driver of the game (size 0xdf4). It adds nothing to its base, the programmable GL
// driver (CProgrammableGLDriver<CGLSLShaderHandler>, 0xdc0 bytes) except the driver type and the buffer swap, and has its own
// vtable (0x977b20). createOpenGLES2Driver is the factory the device's driver creation calls.
#pragma once

#include <cstdint>

#include "glitch-video/programmable_gl_driver.hpp"

namespace glitch::video {

class COpenGLES2Driver : public CProgrammableGLDriver {
public:
    // 0x5b5d78 (C1) / 0x5b5e00 (C2): the base constructor, then the class's own vtable.
    explicit COpenGLES2Driver(glitch::IDevice* device);
    E_DRIVER_TYPE getDriverType() const override;  // 0x5aefa4, 8
    bool swapBuffersImpl(int32_t mask) override;   // 0x5aefac, nothing is swapped here (the device does it)
};

// 0x5b5dac: a new driver for the device; its generic initialisation gets the screen size (device creation parameters +0x04) and the
// byte at +0x0f of them. A failed initialisation drops the driver and gives null.
COpenGLES2Driver* createOpenGLES2Driver(glitch::IDevice* device);

}  // namespace glitch::video
