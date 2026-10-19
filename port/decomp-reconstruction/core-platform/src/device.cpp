#include "core-platform/device.hpp"

#include "core-platform/deps/application.hpp"  // SHARP_DEVICES, HTC_DEVICES, Is_In_Multiplayer_Mode

#include "dh2/Application.hpp"           // dword_99F73C is Application::m_device (+0x10)
#include "glitch-core-io/os/device.hpp"  // IDevice::videoDriver (+0x10)
#include "glitch-video/video_driver.hpp" // IVideoDriver::getDriverType (vtable +0x5c)

// 0x381668 Device::IsFixedPipeline()
// The virtual at vtable byte +0x5c of the video driver (Application::m_device->videoDriver, hex dword_99F73C + 0x10),
// getDriverType(), masked with 7: the fixed-function driver types.
bool Device::IsFixedPipeline() {
    glitch::video::IVideoDriver* const driver = ApplicationGetInstance().m_device->videoDriver;
    return (static_cast<unsigned>(driver->getDriverType()) & 7u) != 0;
}

// 0x3816a8 _ZN6Device22IsProgrammablePipelineEv
// Verified against the listing: the three global gates, then the virtual at vtable byte +0x5c
// of the video driver (Application::m_device->videoDriver, hex dword_99F73C + 0x10). The
// IVideoDriver vtable names +0x5c getDriverType() const, and 0x78 is that driver type's
// programmable value (CProgrammableGLDriver::getDriverType returns 0x78, CNullDriver 0 and
// COpenGLES2Driver 8), so the mask is the driver-type test itself.
bool Device::IsProgrammablePipeline() {
    if (SHARP_DEVICES || HTC_DEVICES || Is_In_Multiplayer_Mode) {
        return false;
    }
    glitch::video::IVideoDriver* const driver = ApplicationGetInstance().m_device->videoDriver;
    return (static_cast<unsigned>(driver->getDriverType()) & 0x78u) != 0;
}

// 0x38173c Device::GetModel()
int Device::GetModel() { return -1; }

// 0x381744 Device::IsiOSVersionSupported(char const*)
bool Device::IsiOSVersionSupported(const char*) { return true; }

// 0x38174c Device::IsHighPerformance()
// A thunk: the listing returns Device::IsProgrammablePipeline(this).
bool Device::IsHighPerformance() { return IsProgrammablePipeline(); }

// 0x381750 Device::IsIphoneHighRez()
bool Device::IsIphoneHighRez() { return true; }

// 0x381758 Device::GetScreenResolution()
Device::Resolution Device::GetScreenResolution() { return Resolution{960, 640}; }

// 0x38176c Device::IsMultitaskSupported()
bool Device::IsMultitaskSupported() { return true; }

// 0x381774 Device::IsGameCenterSupported()
bool Device::IsGameCenterSupported() { return false; }

// 0x38177c Device::IsBluetoothSupported()
bool Device::IsBluetoothSupported() { return true; }
