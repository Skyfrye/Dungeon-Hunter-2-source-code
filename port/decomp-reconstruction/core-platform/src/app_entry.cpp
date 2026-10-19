// App loop entry points of the Android build (jni_app.cpp of the original): appInit, appUpdate, appResume, appPause and
// appDestroy, with the globals they keep (device, app, driver, IsExit, the window sizes and the phone-model flags).
// Ledger rows 0x530ba8 .. 0x530fc8 of core-platform. The queue lists them under w7_global_03.cpp; they are in their own
// unit because that one includes the vendored gameswf headers, which conflict with the game headers used here.

#include <string>

#include "core-platform/debug_out.hpp"
#include "core-platform/frame_prof.hpp"
#include "core-platform/port_settings.hpp"
#include "core-platform/tb/android_jni_app_events.hpp"
#include "core-platform/tb/android_jni_platform.hpp"
#include "core-platform/tb/app_lifecycle.hpp"
#include "core-platform/w7_global_02.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/screen_size.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/video_driver.hpp"

// ---- app* entry points (jni_app.cpp of the original) ----
// The C entry points the Java natives forward to (GameRenderer.nativeInit / nativeRender / nativeDone, DungeonHunter2
// pause, resume and key natives). They keep the render device, the video driver and the Application pointer in the
// globals device, driver and app, which the touch and key handlers read.
//
// Hex-Rays shows several of them returning the r0 left by a void call (Application::Pause, ::Quit, ...). Those results
// are not meaningful, the Java natives drop them, and the versions here return 0.

namespace {

// glitch::createDevice(E_DRIVER_TYPE, dimension2d<int> const&, unsigned, bool, bool, bool, IEventReceiver*), 0x5340ac.
// E_DRIVER_TYPE is an enum in the original's mangled name (...ENS_5video13E_DRIVER_TYPEE...), but the tree spells it as an
// int32_t alias (glitch-video/video_types.hpp), which would mangle as i. The symbol is bound by name, so the row owner
// can define it with the original spelling.
glitch::IDevice* CreateDevice(int driverType, const glitch::core::dimension2d<int>& size, unsigned bits, bool fullscreen,
                              bool stencil, bool vsync, glitch::IEventReceiver* receiver)
    __asm__("_ZN6glitch12createDeviceENS_5video13E_DRIVER_TYPEERKNS_4core11dimension2dIiEEjbbbPNS_14IEventReceiverE");

}  // namespace

// Phone-model flags set by appInit (1-byte .bss words). HTC_DEVICES, SHARP_DEVICES, LG_DEVICES, NO_IGP and JAVA_SOUNDS are
// defined by game-app/src/Globals_link1.cpp.
extern bool HTC_DEVICES;
extern bool SHARP_DEVICES;
extern bool LG_DEVICES;
extern bool NO_IGP;
extern bool JAVA_SOUNDS;
extern bool videoDone;  // game-app/src/Globals_link1.cpp
extern const char* RES_PATH;
bool SAMSUNG_DEVICES = false;   // .bss
bool MOTOROLA_DEVICES = false;  // .bss
bool SONY_DEVICES = false;      // .bss

// The render device (0x9f63e8), the Application* (0x9f63ec) and the video driver (0x9f63f0) of the app loop.
glitch::IDevice* device = nullptr;
Application* app = nullptr;
glitch::video::IVideoDriver* driver = nullptr;
bool IsExit = false;                 // 0x9f63e4, set by appDestroy; appUpdate then does nothing
int lastFPS = 0;                     // .bss; appInit sets -1
int lastdrawCalls = 0;               // .bss; appInit sets -1
int videosteps = 0;                  // .bss; appInit clears it

// The window sizes appInit picks from Width_Screen (internal statics of jni_app.cpp, set by its static initialiser).
static glitch::core::dimension2d<int> g_windowDimensions = {800, 480};   // 0x9f63b0
static glitch::core::dimension2d<int> g_windowDimensions1 = {800, 480};  // 0x9f63b8
static glitch::core::dimension2d<int> g_windowDimensions2 = {854, 480};  // 0x9f63c0
static glitch::core::dimension2d<int> g_windowDimensions3 = {960, 640};  // 0x9f63c8
static glitch::core::dimension2d<int> g_windowDimensions4 = {1280, 720}; // 0x9f63d0

// 0x530ba8 appInit
extern "C" int appInit() {
    OPERATOR_PACKAGE_INGAME = 0;
    RES_PATH = nativeGetSdFolderPath();
    isDevicePause = false;
    videosteps = 0;
    Musicplayerpause = false;
    videoDone = false;
    dh2port::Load();  // Track B port settings (screen fit, HUD scale; core-platform/port_settings.hpp), not in the original
    _DEBUG_OUT("app Init is 1111111111111111111111111 %d ", Width_Screen);
    switch (Width_Screen) {
        case 854:
            g_windowDimensions = g_windowDimensions2;
            break;
        case 960:
            g_windowDimensions = g_windowDimensions3;
            break;
        case 800:
            g_windowDimensions = g_windowDimensions1;
            break;
        default:
            g_windowDimensions = g_windowDimensions4;
#if defined(__ANDROID__) || defined(DH2_HOST_RUNNER)
            // Port deviation (first boot): the original only knew 800/854/960 wide screens and 1280x720 otherwise. On a modern surface that size
            // draws the UI into a corner of the surface and the touch coordinates (surface pixels) no longer match it; use the real surface.
            if (Width_Screen > 0 && Height_Screen > 0) {
                g_windowDimensions.Width = Width_Screen;
                g_windowDimensions.Height = Height_Screen;
            }
#endif
            break;
    }
    device = CreateDevice(1, g_windowDimensions, 16, false, false, false, nullptr);
    app = &ApplicationGetInstance();
    app->InitWin32(device);
    lastFPS = -1;
    lastdrawCalls = -1;
    driver = device->videoDriver;  // device +0x10
    switch (nativeGet_PhoneManufacturer()) {
        case 0:
            HTC_DEVICES = true;
            break;
        case 1:
            SAMSUNG_DEVICES = true;
            break;
        case 2:
            SHARP_DEVICES = true;
            break;
        case 3:
            MOTOROLA_DEVICES = true;
            break;
        case 4:
            SONY_DEVICES = true;
            break;
        case 5:
            LG_DEVICES = true;
            break;
        default:
            break;
    }
    switch (nativeGet_PhoneModel()) {
        case 2:
            JAVA_SOUNDS = false;
            break;
        case 99:
            NO_IGP = true;
            break;
        case 1:
            _DEBUG_OUT("EVOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
            JAVA_SOUNDS = false;
            break;
        default:
            break;
    }
    _DEBUG_OUT("app Init is OK");
    return 0;
}

// Track B (UI3, port addition; TRACK-B.md decision 15): the original sized the video device once in appInit and never followed the surface. A foldable
// changes the surface size at run time (fold/unfold, no activity recreation), so the screen framebuffer, Width_Screen and Height_Screen follow it
// (IVideoDriver::onResize 0x5a8cd0 is in the binary but nothing called it). Flash UI and menu cameras re-read the size every frame / on creation;
// the level camera aspect is rebuilt at the next level load. Runs on the GL thread (GameRenderer.onSurfaceChanged), the same thread as appUpdate.
extern "C" void appResizeSurface(int width, int height) {
    if (device == nullptr || driver == nullptr || width <= 0 || height <= 0) {
        return;
    }
    const glitch::video::IRenderTarget* screen = driver->m_renderTargets.front().get();
    if (screen != nullptr && screen->m_width == width && screen->m_height == height) {
        return;
    }
    const float oldAspectScale = ScreenAspectScale();
    Width_Screen = width;
    Height_Screen = height;
    ScreenAspectRescaleActiveCamera(oldAspectScale);
    glitch::core::dimension2d<int> size = {width, height};
    driver->onResize(size);
}

// 0x530fc8 appUpdate. One frame: when the device loop runs, Application::Update with mTimeCallbackFinished cleared, then
// the debug switches are reloaded and, when "isDisplayingFPS" is set, the FPS and draw-call counters are sampled
// (the originals only store them: the overlay text is gone from the shipped binary). Always returns 1.
extern "C" int appUpdate() {
    if (!IsExit) {
        if (device->run()) {
            {   // Track B port settings changed from the session dialog: apply on the game thread, rescale the 3D camera with the
                // old and new aspect scale (TRACK-B.md decision 15).
                const float aspectBefore = ScreenAspectScale();
                if (dh2port::Apply()) {
                    ScreenAspectRescaleActiveCamera(aspectBefore);
                }
            }
            dh2prof::frameBegin();  // Track B diagnostic (core-platform/frame_prof.hpp), not in the original
            mTimeCallbackFinished = 0;
            app->Update();
            mTimeCallbackFinished = 1;
            dh2prof::frameEnd();
            DebugSwitches::s_inst.load();
            if (DebugSwitches::s_inst.GetSwitch(std::string("isDisplayingFPS"))) {
                const int fps = static_cast<int>(driver->getFPS());
                const int drawCalls = static_cast<int>(driver->getDrawCallCount());
                if (fps != lastFPS || drawCalls != lastdrawCalls) {
                    lastFPS = fps;
                    lastdrawCalls = drawCalls;
                }
            }
        }
    }
    return 1;
}

// 0x530974 appResume. After a device pause: marks the intro video done, resumes the interrupt state and the Application.
extern "C" float appResume() {
    if (isDevicePause) {
        videoDone = true;
        ApplicationGetInstance().OnInterruptResume();
        ApplicationGetInstance().Resume();
        isDevicePause = false;
    }
    return 0.0f;
}

// 0x5309d8 appPause
extern "C" int appPause() {
    isDevicePause = true;
    ApplicationGetInstance().Pause();
    ApplicationGetInstance().OnInterruptPause();
    return 0;
}

// 0x530a1c appDestroy. Sets IsExit, drops the device, then quits the Application (through the app pointer).
extern "C" int appDestroy() {
    IsExit = true;
    device->drop();
    app->Quit();
    return 0;
}
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
// Boot diagnostic (only with -DDH2_BOOT_DEBUG=ON and -DDH2_ANDROID_FORTIFY=ON): replaces bionic's __strchr_chk for this library so that an unterminated-buffer
// strchr is reported with its caller (symbolize with tools/trackb/boot/symbolize.sh) instead of aborting the process.
#include <android/log.h>
#include <dlfcn.h>
extern "C" char* __strchr_chk(const char* s, int c, size_t n) {
    for (size_t i = 0; i < n; ++i) {
        if (s[i] == static_cast<char>(c)) return const_cast<char*>(s + i);
        if (s[i] == '\0') return nullptr;
    }
    Dl_info info;
    const void* caller = __builtin_return_address(0);
    unsigned long off = dladdr(caller, &info) ? static_cast<unsigned long>(reinterpret_cast<const char*>(caller) - static_cast<const char*>(info.dli_fbase)) : 0;
    char text[48] = {0};
    for (size_t i = 0; i < sizeof(text) - 1 && i < n; ++i) text[i] = (s[i] >= 32 && s[i] < 127) ? s[i] : '.';
    __android_log_print(ANDROID_LOG_ERROR, "DH2FORTIFY", "strchr past end: caller off 0x%lx buffer size %zu text '%s'", off, n, text);
    return nullptr;
}
#endif
