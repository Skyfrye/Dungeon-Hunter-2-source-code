// Owner K2: COpenGLES2Driver (constructor, factory, driver type and buffer swap).
#include <cstring>

#include "glitch-core-io/os/device.hpp"
#include "glitch-video/opengles2_driver.hpp"

namespace glitch::video {

// 0x5b5d78 _ZN6glitch5video16COpenGLES2DriverC1EPNS_7IDeviceE
// 0x5b5e00 _ZN6glitch5video16COpenGLES2DriverC2EPNS_7IDeviceE
COpenGLES2Driver::COpenGLES2Driver(glitch::IDevice* device) : CProgrammableGLDriver(device) {}

// 0x5aefa4 _ZNK6glitch5video16COpenGLES2Driver13getDriverTypeEv
E_DRIVER_TYPE COpenGLES2Driver::getDriverType() const { return 8; }

// 0x5aefac _ZN6glitch5video16COpenGLES2Driver15swapBuffersImplEi
bool COpenGLES2Driver::swapBuffersImpl(int32_t) { return false; }

// 0x5b5dac _ZN6glitch5video21createOpenGLES2DriverEPNS_7IDeviceE
COpenGLES2Driver* createOpenGLES2Driver(glitch::IDevice* device) {
    COpenGLES2Driver* driver = new COpenGLES2Driver(device);
    // The creation parameters block starts at device +0x5c: the screen size is at +0x60 and a flag byte at +0x6b.
    core::dimension2d<int32_t> screenSize;
    std::memcpy(&screenSize, driver->m_device->creationParameters.bytes + 4, sizeof(screenSize));
    const bool flag = driver->m_device->creationParameters.bytes[0x0f] != 0;
    if (driver->genericDriverInit(screenSize, flag)) return driver;
    driver->drop();
    return nullptr;
}

}  // namespace glitch::video
