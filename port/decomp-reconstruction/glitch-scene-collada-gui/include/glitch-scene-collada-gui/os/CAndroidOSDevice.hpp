// glitch::CAndroidOSDevice: the device of the Android build, and its nested CCursorControl. Canonical header, residue pass ob. It replaces the
// CAndroidOSDevice stand-in of platform_stubs.hpp (which carried padding instead of the IDevice base).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x6a0634 (C1) / 0x6a079c (C2), destructors 0x6a0548 (D1) / 0x6a05cc (D2); the
// vtable names every slot, tools/decomp_vtable.py glitch::CAndroidOSDevice, 76 bytes):
//   glitch::IDevice is the primary base (this device is the 0x10c-byte object createDeviceEx 0x6a0748 allocates). The slots it overrides:
//   K 0x0c yield, 0x10 sleep(unsigned int, bool), 0x14 getVideoModeList, 0x18 setWindowCaption, 0x1c / 0x20 / 0x24 isWindowActive / Focused / Minimized,
//   0x30 closeDevice, 0x34 setResizeAble, 0x40 runImpl; the slots 0x28 isFullscreen, 0x2c getColorFormat, 0x38 setScreenCapture and 0x3c isExitRequested
//   are IDevice's own. The port's IDevice declares only some of these as virtual; the others are plain members of this class.
//   Members after the IDevice base (+0xdc ..):
//   +0xdc a word the constructor clears (role not recovered)
//   +0xe8 the key code map (std::map<int, int>; the header node, with its colour byte cleared, parent null and both links to itself, is at +0xe8,
//         the node count at +0xf8): initKeycodes would fill it (the body is empty); the destructor erases the nodes
//   +0x108 a byte the constructor sets to 1 (role not recovered), +0x109 the running flag (1; closeDevice clears it, runImpl returns it)
//   IDevice +0x24 holds the cursor control (a CCursorControl) and IDevice +0x30 the OS operator (a COSOperator made from the host's system version).
#pragma once

#include <cstdint>
#include <map>

#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/gui/ICursorControl.hpp"
#include "glitch-scene-collada-gui/os/COSOperator.hpp"
#include "glitch-shared/glitch_core.hpp"

namespace glitch {

struct SEvent;

class CAndroidOSDevice : public IDevice {
public:
    // The cursor control of the device: the position is kept in window pixels and mirrored to the device with setMouseLocation.
    // Layout: IReferenceCounted base (count 1 after the constructor), then
    //   +0x08 position (x, y), +0x10 window size (width, height), +0x18 / +0x1c 1 / width and 1 / height (0 for an empty window),
    //   +0x20 the reference rectangle (left, top, right, bottom), +0x30 the owning device, +0x34 visible (1), +0x35 use the reference rectangle (0).
    class CCursorControl : public gui::ICursorControl {
    public:
        // 0x69ffe8 (C1) / its alias: stores the window size and the device; the reciprocal sizes are 1 / size when the size is not zero.
        CCursorControl(const core::dimension2d<int>& windowSize, CAndroidOSDevice* owner);
        // 0x6a0350 (D1): empty. D0 (0x6a04ec) is the compiler's deleting thunk.
        ~CCursorControl() override;

        void setVisible(bool value) override;                                  // K 0x0c, 0x6a0334
        bool isVisible() const override;                                       // K 0x10, 0x6a00a0
        void setPosition(const core::position2d<float>& position) override;    // K 0x14, 0x6a00a8
        void setPosition(float x, float y) override;                           // K 0x18, 0x6a00c4
        void setPosition(const core::position2d<int>& position) override;      // K 0x1c, 0x6a011c
        void setPosition(int x, int y) override;                               // K 0x20, 0x6a02f0
        core::position2d<int> getPosition() override;                          // K 0x24, 0x6a0164
        core::position2d<float> getRelativePosition() override;                // K 0x28, 0x6a0178
        void setReferenceRect(core::rect<int>* rect = nullptr) override;       // K 0x2c, 0x6a0228

        core::position2d<int> position;        // +0x08
        core::dimension2d<int> windowSize;     // +0x10
        float invWindowWidth = 0.0f;           // +0x18
        float invWindowHeight = 0.0f;          // +0x1c
        core::rect<int> referenceRect;         // +0x20 .. +0x2f
        CAndroidOSDevice* device = nullptr;    // +0x30
        bool visible = true;                   // +0x34
        bool useReferenceRect = false;         // +0x35
    };

    // 0x6a0634 (C1) / 0x6a079c (C2): the base device, the key map and flags, the OS operator (made from the host's system version, which is also
    // logged at ELL_INFORMATION), the key codes, the window when the parameters ask for a driver, the cursor control, the video driver and the GUI
    // and scene managers.
    explicit CAndroidOSDevice(const SCreationParameters& parameters);
    // 0x6a0548 (D1) / 0x6a05cc (D2): erases the key map, then the base device. D0 (0x6a05b0) is the compiler's deleting thunk.
    ~CAndroidOSDevice() override;

    // K 0x0c, 0x6a02c0: empty.
    void yield();
    // K 0x10, 0x6a0374: sleeps `milliseconds`; with `pauseTimer` and a running timer the timer is stopped for the sleep and started again.
    void sleep(std::uint32_t milliseconds, bool pauseTimer);
    // K 0x14, 0x6a0348: null.
    video::CVideoModeList* getVideoModeList() override;
    // K 0x18, 0x6a02c4: empty.
    void setWindowCaption(const wchar_t* caption);
    // K 0x1c / 0x20 / 0x24, 0x6a02c8 / 0x6a02d0 / 0x6a02d8: true, true, false.
    bool isWindowActive() const;
    bool isWindowFocused() const;
    bool isWindowMinimized() const;
    // K 0x30, 0x6a02a4: clears the running flag.
    void closeDevice() override;
    // K 0x34, 0x6a0344: empty.
    void setResizeAble(bool resizeable);
    // K 0x40, 0x6a0440: ticks the timer and answers the running flag.
    int runImpl() override;

    // 0x6a02b0: true. 0x6a02b8 / 0x6a02bc: empty. 0x6a02e0 / 0x6a02e4 / 0x6a02e8 / 0x6a02ec / 0x6a0330 / 0x6a0340: empty.
    bool createWindow();
    void setResize(int width, int height);
    void flush();
    void postKeyEvent(void* nativeEvent, SEvent& event, bool pressed);
    void postMouseEvent(void* nativeEvent, SEvent& event);
    void storeMouseLocation();
    void setMouseLocation(int x, int y);
    void setCursorVisible(bool visible);
    void initKeycodes();
    // 0x6a0454: picks the video driver from the driver type of the creation parameters (+0x5c): 1 OpenGL ES 2, 0 null, 128 and 256 are not
    // available on this platform. The driver is stored at IDevice +0x10 (before it is tested) and returned; on failure the error is logged.
    video::IVideoDriver* createDriver();

    // The driver type and the window size of the creation parameters (the 0x58-byte block starts with the driver type word and the size).
    std::int32_t driverType() const;
    core::dimension2d<int> windowSizeParameter() const;

    void* unk_dc = nullptr;                // +0xdc
    std::map<int, int> keyMap;             // +0xe8
    bool unk_108 = true;                   // +0x108
    bool running = true;                   // +0x109
};

// 0x6a0748 _ZN6glitch14createDeviceExERKNS_19SCreationParametersE
// The Android device for the parameters. A device whose video driver could not be made is dropped (null) when the parameters asked for a driver.
IDevice* createDeviceEx(const SCreationParameters& parameters);

// 0x5340ac _ZN6glitch12createDeviceENS_5video13E_DRIVER_TYPEERKNS_4core11dimension2dIiEEjbbbPNS_14IEventReceiverE
// The device for a driver type, a window size, colour bits and the fullscreen, stencil-buffer and vertical-sync flags, with the event receiver: the
// creation parameters (see SCreationParameters in glitch-core-io/os/device.hpp for the block and its host layout) are filled with the engine defaults
// and handed to createDeviceEx. The tree spells E_DRIVER_TYPE as an int alias, so the original symbol is given by a label (decision 10).
IDevice* createDevice(int driverType, const core::dimension2d<int>& size, unsigned bits, bool fullscreen, bool stencil, bool vsync,
                      IEventReceiver* receiver)
    __asm__("_ZN6glitch12createDeviceENS_5video13E_DRIVER_TYPEERKNS_4core11dimension2dIiEEjbbbPNS_14IEventReceiverE");

}  // namespace glitch
