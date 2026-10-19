// Bodies of glitch::CAndroidOSDevice and its nested CCursorControl (canonical classes: os/CAndroidOSDevice.hpp). This file replaces the Android
// device bodies of platform_stubs.cpp and src/tb_scene-collada-gui-glitch_CAndroidOSDevice-0.cpp.
//
// A comment `// 0xADDR symbol` precedes each function.
#include "glitch-scene-collada-gui/os/CAndroidOSDevice.hpp"

#include <chrono>
#include <cstring>
#include <string>
#include <thread>

#include "glitch-core-io/os/ctimer.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/video_driver.hpp"

#if !defined(_WIN32)
#include <sys/utsname.h>
#endif

namespace glitch::video {
// _ZN6glitch5video21createOpenGLES2DriverEPNS_7IDeviceE: the OpenGL ES 2 driver (glitch-video row, skipped there; a link stub). The return type is not
// part of the symbol; the driver is an IVideoDriver.
IVideoDriver* createOpenGLES2Driver(IDevice* device);
}  // namespace glitch::video

namespace glitch {

namespace {

// The system version string uname reports (the "version" member), which the constructor hands to the OS operator and logs. Host deviation, named:
// uname is a POSIX call; a Windows host reports a fixed text.
std::string hostSystemVersion() {
#if defined(_WIN32)
    return "Windows";
#else
    struct utsname info;
    if (uname(&info) != 0) {
        return std::string();
    }
    return std::string(info.version);
#endif
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// CCursorControl
// ---------------------------------------------------------------------------------------------------------------------

// 0x69ffe8 _ZN6glitch16CAndroidOSDevice14CCursorControlC1ERKNS_4core11dimension2dIiEEPS0_
// Count 1, position (0, 0), the window size, the reference rectangle cleared, the device, visible, no reference rectangle; the reciprocal sizes are
// 1 / size for a size that is not zero (the others stay 0).
CAndroidOSDevice::CCursorControl::CCursorControl(const core::dimension2d<int>& size, CAndroidOSDevice* owner)
    : position{0, 0}, windowSize(size), referenceRect{}, device(owner) {
    referenceCounter = 1;
    if (windowSize.Width != 0) {
        invWindowWidth = 1.0f / static_cast<float>(windowSize.Width);
    }
    if (windowSize.Height != 0) {
        invWindowHeight = 1.0f / static_cast<float>(windowSize.Height);
    }
}

// 0x6a0350 _ZN6glitch16CAndroidOSDevice14CCursorControlD1Ev
CAndroidOSDevice::CCursorControl::~CCursorControl() = default;

// 0x6a0334 _ZN6glitch16CAndroidOSDevice14CCursorControl10setVisibleEb
// Stores the flag, then passes it to the owning device. The original has no null check on the device; one is added.
void CAndroidOSDevice::CCursorControl::setVisible(bool value) {
    visible = value;
    if (device != nullptr) {
        device->setCursorVisible(value);
    }
}

// 0x6a00a0 _ZNK6glitch16CAndroidOSDevice14CCursorControl9isVisibleEv
bool CAndroidOSDevice::CCursorControl::isVisible() const {
    return visible;
}

// 0x6a00a8 _ZN6glitch16CAndroidOSDevice14CCursorControl11setPositionERKNS_4core10position2dIfEE
// The relative position as two floats.
void CAndroidOSDevice::CCursorControl::setPosition(const core::position2d<float>& relative) {
    setPosition(relative.X, relative.Y);
}

// 0x6a00c4 _ZN6glitch16CAndroidOSDevice14CCursorControl11setPositionEff
// The relative position scaled by the window size, truncated to pixels.
void CAndroidOSDevice::CCursorControl::setPosition(float x, float y) {
    setPosition(static_cast<int>(static_cast<float>(windowSize.Width) * x), static_cast<int>(static_cast<float>(windowSize.Height) * y));
}

// 0x6a011c _ZN6glitch16CAndroidOSDevice14CCursorControl11setPositionERKNS_4core10position2dIiEE
// Only a position that differs from the current one is set.
void CAndroidOSDevice::CCursorControl::setPosition(const core::position2d<int>& pixel) {
    if (position.X != pixel.X || position.Y != pixel.Y) {
        setPosition(pixel.X, pixel.Y);
    }
}

// 0x6a02f0 _ZN6glitch16CAndroidOSDevice14CCursorControl11setPositionEii
// The device is told the position (moved by the corner of the reference rectangle when one is in use), then the position is stored.
void CAndroidOSDevice::CCursorControl::setPosition(int x, int y) {
    int deviceX = x;
    int deviceY = y;
    if (useReferenceRect) {
        deviceX = referenceRect.UpperLeftCorner.X + x;
        deviceY = referenceRect.UpperLeftCorner.Y + y;
    }
    device->setMouseLocation(deviceX, deviceY);
    position.Y = y;
    position.X = x;
}

// 0x6a0164 _ZN6glitch16CAndroidOSDevice14CCursorControl11getPositionEv
core::position2d<int> CAndroidOSDevice::CCursorControl::getPosition() {
    return position;
}

// 0x6a0178 _ZN6glitch16CAndroidOSDevice14CCursorControl19getRelativePositionEv
// The position as a fraction of the reference rectangle (its size) or of the window (the reciprocal sizes).
core::position2d<float> CAndroidOSDevice::CCursorControl::getRelativePosition() {
    core::position2d<float> relative;
    if (useReferenceRect) {
        const float x = static_cast<float>(position.X);
        const float width = static_cast<float>(referenceRect.LowerRightCorner.X - referenceRect.UpperLeftCorner.X);
        relative.Y = static_cast<float>(position.Y) /
                     static_cast<float>(referenceRect.LowerRightCorner.Y - referenceRect.UpperLeftCorner.Y);
        relative.X = x / width;
    } else {
        const float x = static_cast<float>(position.X) * invWindowWidth;
        relative.Y = static_cast<float>(position.Y) * invWindowHeight;
        relative.X = x;
    }
    return relative;
}

// 0x6a0228 _ZN6glitch16CAndroidOSDevice14CCursorControl16setReferenceRectEPNS_4core4rectIiEE
// A rectangle is stored and used; a side that is empty or of odd length is made one longer (the bottom and right edges). Null stops using it.
void CAndroidOSDevice::CCursorControl::setReferenceRect(core::rect<int>* rect) {
    if (rect == nullptr) {
        useReferenceRect = false;
        return;
    }
    referenceRect = *rect;
    useReferenceRect = true;
    const int left = rect->UpperLeftCorner.X;
    const int top = rect->UpperLeftCorner.Y;
    const int right = rect->LowerRightCorner.X;
    const int bottom = rect->LowerRightCorner.Y;
    if (top == bottom || ((bottom - top) & 1) != 0) {
        referenceRect.LowerRightCorner.Y = bottom + 1;
    }
    if (left == right || ((right - left) & 1) != 0) {
        referenceRect.LowerRightCorner.X = right + 1;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// CAndroidOSDevice
// ---------------------------------------------------------------------------------------------------------------------

// 0x6a0634 _ZN6glitch16CAndroidOSDeviceC1ERKNS_19SCreationParametersE (C2 0x6a079c)
CAndroidOSDevice::CAndroidOSDevice(const SCreationParameters& parameters) : IDevice(parameters) {
    const std::string version = hostSystemVersion();
    COSOperator* osOperator = new COSOperator(version.c_str());
    unk_30 = osOperator;
    os::Printer::log(version.c_str(), ELL_INFORMATION);
    initKeycodes();
    if (driverType() != 0) {
        createWindow();
    }
    unk_24 = new CCursorControl(windowSizeParameter(), this);
    createDriver();
    createGUIAndScene();
}

// 0x6a0548 _ZN6glitch16CAndroidOSDeviceD1Ev (D2 0x6a05cc)
// The key map nodes are erased (the member does that), then the base device.
CAndroidOSDevice::~CAndroidOSDevice() = default;

// 0x6a02c0 _ZN6glitch16CAndroidOSDevice5yieldEv
void CAndroidOSDevice::yield() {}

// 0x6a0374 _ZN6glitch16CAndroidOSDevice5sleepEjb
// The duration is split into seconds and nanoseconds. A timer that is running and a request to pause it stop the timer around the sleep. Host
// deviation, named: the sleep is std::this_thread::sleep_for, not nanosleep.
void CAndroidOSDevice::sleep(std::uint32_t milliseconds, bool pauseTimer) {
    const bool stopped = timer != nullptr ? timer->isStopped() : true;
    const auto duration = std::chrono::seconds(milliseconds / 1000) + std::chrono::nanoseconds(1000000ll * (milliseconds % 1000));
    if (!pauseTimer || stopped) {
        std::this_thread::sleep_for(duration);
        return;
    }
    timer->stop();
    std::this_thread::sleep_for(duration);
    timer->start();
}

// 0x6a0348 _ZN6glitch16CAndroidOSDevice16getVideoModeListEv
video::CVideoModeList* CAndroidOSDevice::getVideoModeList() {
    return nullptr;
}

// 0x6a02c4 _ZN6glitch16CAndroidOSDevice16setWindowCaptionEPKw
void CAndroidOSDevice::setWindowCaption(const wchar_t*) {}

// 0x6a02c8 _ZNK6glitch16CAndroidOSDevice14isWindowActiveEv
bool CAndroidOSDevice::isWindowActive() const {
    return true;
}

// 0x6a02d0 _ZNK6glitch16CAndroidOSDevice15isWindowFocusedEv
bool CAndroidOSDevice::isWindowFocused() const {
    return true;
}

// 0x6a02d8 _ZNK6glitch16CAndroidOSDevice17isWindowMinimizedEv
bool CAndroidOSDevice::isWindowMinimized() const {
    return false;
}

// 0x6a02a4 _ZN6glitch16CAndroidOSDevice11closeDeviceEv
void CAndroidOSDevice::closeDevice() {
    running = false;
}

// 0x6a0344 _ZN6glitch16CAndroidOSDevice13setResizeAbleEb
void CAndroidOSDevice::setResizeAble(bool) {}

// 0x6a0440 _ZN6glitch16CAndroidOSDevice7runImplEv
int CAndroidOSDevice::runImpl() {
    os::Timer::tick();
    return running ? 1 : 0;
}

// 0x6a02b0 _ZN6glitch16CAndroidOSDevice12createWindowEv
bool CAndroidOSDevice::createWindow() {
    return true;
}

// 0x6a02b8 _ZN6glitch16CAndroidOSDevice9setResizeEii
void CAndroidOSDevice::setResize(int, int) {}

// 0x6a02bc _ZN6glitch16CAndroidOSDevice5flushEv
void CAndroidOSDevice::flush() {}

// 0x6a02e0 _ZN6glitch16CAndroidOSDevice12postKeyEventEPvRNS_6SEventEb
void CAndroidOSDevice::postKeyEvent(void*, SEvent&, bool) {}

// 0x6a02e4 _ZN6glitch16CAndroidOSDevice14postMouseEventEPvRNS_6SEventE
void CAndroidOSDevice::postMouseEvent(void*, SEvent&) {}

// 0x6a02e8 _ZN6glitch16CAndroidOSDevice18storeMouseLocationEv
void CAndroidOSDevice::storeMouseLocation() {}

// 0x6a02ec _ZN6glitch16CAndroidOSDevice16setMouseLocationEii
void CAndroidOSDevice::setMouseLocation(int, int) {}

// 0x6a0330 _ZN6glitch16CAndroidOSDevice16setCursorVisibleEb
void CAndroidOSDevice::setCursorVisible(bool) {}

// 0x6a0340 _ZN6glitch16CAndroidOSDevice12initKeycodesEv
void CAndroidOSDevice::initKeycodes() {}

// 0x6a0454 _ZN6glitch16CAndroidOSDevice12createDriverEv
// The driver type word selects the driver: 1 OpenGL ES 2 (logging "No OpenGL support compiled in." when it cannot be made), 0 the null driver,
// 128 and 256 are not available here; any other value logs an error. The driver is stored at IDevice +0x10 before it is tested, and returned.
// The failure paths log and return nothing (the original returns whatever r0 holds after the log call; null here).
video::IVideoDriver* CAndroidOSDevice::createDriver() {
    const std::int32_t type = driverType();
    if (type == 1) {
        videoDriver = video::createOpenGLES2Driver(this);
        if (videoDriver == nullptr) {
            os::Printer::log("No OpenGL support compiled in.", ELL_ERROR);
            return nullptr;
        }
        return videoDriver;
    }
    if (type <= 1) {
        if (type != 0) {
            os::Printer::log("Unable to create video driver of unknown type.", ELL_ERROR);
            return nullptr;
        }
        videoDriver = video::createNullDriver(this);
        return videoDriver;
    }
    if (type != 0x80 && type != 0x100) {
        os::Printer::log("Unable to create video driver of unknown type.", ELL_ERROR);
        return nullptr;
    }
    os::Printer::log("This driver is not available in OSX. Try OpenGL or Software renderer.", ELL_ERROR);
    return nullptr;
}

std::int32_t CAndroidOSDevice::driverType() const {
    std::int32_t type = 0;
    std::memcpy(&type, creationParameters.bytes, sizeof(type));
    return type;
}

core::dimension2d<int> CAndroidOSDevice::windowSizeParameter() const {
    std::int32_t size[2] = {};
    std::memcpy(size, creationParameters.bytes + 4, sizeof(size));
    return core::dimension2d<int>{size[0], size[1]};
}

// 0x6a0748 _ZN6glitch14createDeviceExERKNS_19SCreationParametersE
// The device is made; one whose video driver is missing is dropped when the parameters asked for a driver (a non-zero driver type).
IDevice* createDeviceEx(const SCreationParameters& parameters) {
    CAndroidOSDevice* device = new CAndroidOSDevice(parameters);
    if (device->videoDriver != nullptr || device->driverType() == 0) {
        return device;
    }
    device->drop();
    return nullptr;
}

namespace {

// A number stored in the 32-bit block of the creation parameters at its original offset.
template <typename T>
void put(SCreationParameters& parameters, std::size_t offset, T value) {
    std::memcpy(parameters.bytes + offset, &value, sizeof(T));
}

}  // namespace

// 0x5340ac _ZN6glitch12createDeviceENS_5video13E_DRIVER_TYPEERKNS_4core11dimension2dIiEEjbbbPNS_14IEventReceiverE
// The 0x58-byte creation parameters on the stack: the driver type, the window size, the colour bits (a byte), 16 z-buffer bits, the fullscreen, stencil and
// vertical-sync flags, the receiver and the engine defaults (version text "0.1.0.2", batch buffer sizes 5 MiB / 640 KiB / 128 KiB / 8 KiB, 1.0, the
// capacity word 0x40000 at +0x20 and -1 at +0x34 and +0x38), everything else zero; then createDeviceEx. The two address words of the block (the receiver at
// +0x28, the version text at +0x3c) are the host-width members of SCreationParameters, not words of the block.
IDevice* createDevice(int driverType, const core::dimension2d<int>& size, unsigned bits, bool fullscreen, bool stencil, bool vsync,
                      IEventReceiver* receiver) {
    SCreationParameters parameters{};  // zero: the words and bytes the listing stores 0 into
    put<std::int32_t>(parameters, 0x00, driverType);
    put<std::int32_t>(parameters, 0x04, size.Width);
    put<std::int32_t>(parameters, 0x08, size.Height);
    put<std::uint8_t>(parameters, 0x0c, static_cast<std::uint8_t>(bits));
    put<std::uint8_t>(parameters, 0x0d, 16);
    put<std::uint8_t>(parameters, 0x0e, fullscreen ? 1 : 0);
    put<std::uint8_t>(parameters, 0x0f, stencil ? 1 : 0);
    put<std::uint8_t>(parameters, 0x10, vsync ? 1 : 0);
    put<std::int32_t>(parameters, 0x20, 0x40000);
    put<std::int32_t>(parameters, 0x34, -1);
    put<std::int32_t>(parameters, 0x38, -1);
    put<std::int32_t>(parameters, 0x40, 5242880);
    put<std::int32_t>(parameters, 0x44, 655360);
    put<std::int32_t>(parameters, 0x48, 0x20000);
    put<std::int32_t>(parameters, 0x4c, 0x2000);
    put<float>(parameters, 0x50, 1.0f);
    parameters.eventReceiver = receiver;  // +0x28
    parameters.version = "0.1.0.2";       // +0x3c
    return createDeviceEx(parameters);
}

}  // namespace glitch
