// Batch g1-game-app-Application-b291be-3 (Application, part 4 of 4).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// Member offsets are the original 32-bit ones, recorded in dh2/Application.hpp.
//
// PostInit and InitWin32 are PARTIAL: each note names the part of the original that is not written and why.
#include "dh2/Application.hpp"

namespace glitch::io { class IFileSystem; }
void Dh2InstallRemaster(glitch::io::IFileSystem* fileSystem);  // game-app/src/remaster_normal_maps.cpp

#include "dh2/EventManager.hpp"
#include "dh2/GamepadTweaker.hpp"
#include "dh2/PlayerLightTweaker.hpp"
#include "dh2/ZoomHandler.hpp"
#include "core-platform/w7_console_01.hpp"
#include "core-platform/touch_screen_win32.hpp"
#include "core-platform/filesystem_win32.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/gui/CGUITTFont.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "dh2/GSInit.hpp"
#include "dh2/LuaManager.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PhysicalWorld.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_online_impl.hpp"

// 0x32f7e8 Application::PostInit()
// Creates the managers in the original order, each as operator new(size) then its constructor, and stores them in their
// members: EventManager, StateMachine, PyDataConstants and PyDataArrays (both from the DataReloaderManager), StringManager,
// ObjectManager, LuaManager, PlayerManager and PhysicalWorld; the four PlayerLightTweakers (each gets its name from
// TWEAKER_NAMES into the m_lightType string); the GamepadTweaker; the underlay node is cleared and the device scene
// manager's culling flag (+0x250) is set; the state machine switches to GSInit; then the ZoomHandler, the online
// initialisation and the Console.
void Application::PostInit() {
    m_eventManager = new EventManager();                          // +0x14, operator new(0x30)
    m_stateMachine = new StateMachine();                          // +0x18, operator new(0x20)
    m_pyDataConstants = new PyDataConstants(m_dataReloaderManager);  // +0x2c, operator new(0x24)
    m_pyDataArrays = new PyDataArrays(m_dataReloaderManager);     // +0x30, operator new(0x3c)
    m_stringManager = new StringManager();                        // +0x34, operator new(0x7d8)
    m_objectManager = new ObjectManager();                        // +0x38, operator new(0x1b0)
    m_luaManager = new LuaManager();                              // +0x3c, operator new(0x1c)
    m_playerManager = new PlayerManager();                        // +0x40, operator new(0x720)
    m_physicalWorld = new PhysicalWorld();                        // +0x44, operator new(0x14)
    for (int i = 0; i != 4; ++i) {
        m_playerLightTweakers[i] = new PlayerLightTweaker();      // +0x58 + 4 i, operator new(0x144)
        m_playerLightTweakers[i]->m_lightType = PlayerLightTweaker::TWEAKER_NAMES[i];  // +0xf8
    }
    m_gamepadTweaker = new GamepadTweaker();                      // +0x68, operator new(0xe8)
    m_underlayNode = nullptr;                                     // +0xb8
    reinterpret_cast<glitch::scene::CSceneManager*>(m_device->sceneManager)->cullingEnabled = true;  // IDevice +0x1c, +0x250
    m_stateMachine->SwitchState(&GSInit::s_inst, false);          // StateMachine::SwitchState(GSInit, owned = false)
    m_zoomHandler = new ZoomHandler();                            // +0x50, operator new(0x44)
    // The original calls COnlineImpl::Initialize directly on the online object (GetOnline returns COnline).
    static_cast<COnlineImpl*>(GetOnline())->Initialize();
    m_console = new Console();                                    // +0x48, operator new(0xa8)
}

// 0x32fa7c Application::RegisterForIrrlichtEvents(glitch::IEventReceiver *)
// The original links a new node in front of the list sentinel (+0x08): that is push_back. A null receiver is ignored.
void Application::RegisterForIrrlichtEvents(glitch::IEventReceiver* receiver) {
    if (receiver != nullptr) {
        m_eventReceivers.push_back(receiver);
    }
}

// 0x32fab4 Application::InitWin32(glitch::IDevice *)
// The touch screen is built from the current render target: the original reads the driver (IDevice +0x10, videoDriver), takes the last element of its target
// stack (asm: the vector end word at driver +0xcc, minus 4), and passes that target's width (+0x0c) and height (+0x10) to TouchScreenWin32 (operator new(0x1b8));
// the two values are ints truncated to the constructor's shorts. In the port that is driver->m_renderTargets.back() (entry 0 is the screen,
// glitch-video/render_target.hpp declares m_width/m_height). Then the savegame manager (operator new(0x58)), the touch screen registered as a glitch event
// receiver through its IEventReceiver sub-object (the original adds 436 = 0x1b4 to the pointer; the static_cast below asks the compiler for the same
// sub-object), Init, PostInit, the device's file system call IFileSystem::addZipFileArchive("shaders.pak", true, false) (IDevice +0x34, vtable +0x18), and
// the UI font: get_fontfile("_sans", false, false, buffer, 255) fills a 256-byte name buffer; when it succeeds the GUI environment (IDevice +0x18, slot +0x50
// getTTFont) is asked for that name at size 14 and, when that returns null, for the same buffer from its second byte; a font goes to the skin
// (IGUIEnvironment::getSkin, slot +0x38) as IGUISkin::setFont(font, default font) (slot +0x2c). Finally the menu manager (operator new(0x114)).
void Application::InitWin32(glitch::IDevice* device) {
    glitch::video::IVideoDriver* driver = device->videoDriver;  // +0x10
    Dh2InstallRemaster(device->fileSystem);  // port addition (remaster): HD textures and normal-map shaders, before any texture or shader loads
    const glitch::video::IRenderTarget* target = driver->m_renderTargets.back().get();  // +0xc8, the last entry
    TouchScreenWin32* touchScreen = new TouchScreenWin32(
        static_cast<short>(target->m_width), static_cast<short>(target->m_height));  // +0x0c, +0x10
    m_touchScreen = touchScreen;  // +0x20, operator new(0x1b8)

    m_savegameManager = new SavegameManager();         // +0x4c, operator new(0x58)
    RegisterForIrrlichtEvents(static_cast<glitch::IEventReceiver*>(touchScreen));  // the original's +0x1b4 sub-object

    Init(device);
    PostInit();

    device->fileSystem->addZipFileArchive("shaders.pak", true, false);  // IDevice +0x34, vtable +0x18

    char fontFile[256];
    if (get_fontfile("_sans", false, false, fontFile, 255)) {
        glitch::gui::IGUITTFont* font = device->guiEnvironment->getTTFont(fontFile, 14);  // IDevice +0x18, vtable +0x50
        if (font == nullptr) {
            font = device->guiEnvironment->getTTFont(fontFile + 1, 14);
        }
        if (font != nullptr) {
            device->guiEnvironment->getSkin()->setFont(font, glitch::gui::EGDF_DEFAULT);  // vtable +0x38, then +0x2c
        }
    }

    m_menuManager = new MenuManager();                 // +0x54, operator new(0x114)
}

// 0x32fca0 Application::~Application() (D1, complete object)
// 0x32fd10 Application::~Application() (D2, base object)
// Both variants have the same 805-byte body, so this one definition serves both. The vtable pointer store at the start
// of the original is written by the compiler. The original does the following, in this order:
//   1. clears the receiver list (+0x08)
//   2. resizes the list to zero (list::resize(0, nullptr), a no-op on the empty list)
//   3. frees the buffers of the std::string at +0xd4 (unk_d4) and +0xbc (m_uncompiledData)
//   4. clears the receiver list again (a no-op)
// Steps 3 and 4 are the member destructors of the C++ class, which run after this body in reverse declaration order:
// unk_d4, then m_uncompiledData, then the list. That is the same order of frees as the original.
Application::~Application() {
    m_eventReceivers.clear();
    m_eventReceivers.resize(0, nullptr);
}

// 0x32fd80 Application::~Application() (D0, deleting destructor)
// SKIPPED: compiler-generated. The original calls D1 (0x32fca0) and then CustomFree(this). The C++ delete expression
// emits the same shape, so no body is written here.
