// Batch g1-game-app-Application-b291be-2 (Application, part 3 of 4).
// Rebuilt from the Hex-Rays pseudocode. Member offsets are the original 32-bit ones, recorded in
// dh2/Application.hpp. Evidence for the globals: the ELF symbol table places dword_99F72C..dword_99F780
// inside Singleton<Application>::s_inst (0x99f72c, 272 bytes), so dword_99F744 is s_inst +0x18 (m_stateMachine),
// dword_99F76C is s_inst +0x40 (m_playerManager), and so on. The member is used in its place.
//
// _Draw, LoadLevel and Update are PARTIAL: each one's note says which part of the original is not written and why.
// _Draw is written except for the camera block (CSceneManager::activeCamera +0xe4, and the Level +0x128 camera at
// its +0x08 that the port's CameraLevel does not expose).
#include <algorithm>

#include "dh2/Application.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/global/debug_trace.hpp"
#include "dh2/global/runtime_support.hpp"
#include "dh2/global/scene_nodes.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "net-session-online/cxplayer_manager.hpp"
#include "glitch-core-io/os/event_receiver.hpp"
#include "dh2/EvMouseWheel.hpp"
#include "dh2/EvMouseMove.hpp"
#include "dh2/EvMouseButton.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/GSConsole.hpp"
#include "dh2/Gamepad.hpp"
#include "dh2/EvKeyboard.hpp"
#include "dh2/EvGamepad.hpp"
#include "dh2/UnderlaySceneNode.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include <cstdio>
#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/PhysicalWorld.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/ZoomHandler.hpp"
#include "dh2/PlayerLightTweaker.hpp"
#include "dh2/GamepadTweaker.hpp"
#include "core-platform/accelerometer.hpp"
#include "core-platform/w7_console_01.hpp"
#include "core-platform/gc_singleton.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "core-platform/lc_api.hpp"
#include "dh2/CRoomAttributes.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/game_center.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "glitch-core-io/os/logging.hpp"

#include <chrono>
#include <list>
#include <new>
#include <thread>

#include "core-platform/debug_out.hpp"
#include "core-platform/device.hpp"
#include "core-platform/w7_global_01.hpp"  // DBG_TraverseAllGlitchNode
#include "core-platform/memory.hpp"
#include "core-platform/perf_counters.hpp"
#include "core-platform/touch_screen_base.hpp"
#include "dh2/DataReloaderManager.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/GSFlashMenu.hpp"
#include "dh2/GS_InterruptLoading.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/IEventReceiver.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/Level.hpp"
#include "dh2/CameraLevel.hpp"  // the camera block of _Draw: Level::m_camera at +0x128
#include "dh2/LevelConfig.hpp"
#include "dh2/MenuCharacterSelect.hpp"
#include "dh2/LuaManager.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerStatManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/global/menu_main_menu.hpp"  // Is_In_Multiplayer_IGM, Is_In_Multiplayer_Mode
#include "net-session-online/c_online.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-transport/update_job_thread.hpp"

namespace glitch { namespace scene { class ICameraSceneNode; } namespace video { class IVideoDriver; } }
void Dh2PostFx(glitch::video::IVideoDriver* driver, glitch::scene::ICameraSceneNode* camera);  // remaster_postfx.cpp
namespace glitch { namespace scene { class ISceneNode; } }
void Dh2UpdateDynamicLights(glitch::video::IVideoDriver* driver, glitch::scene::ISceneNode* root,
                            glitch::scene::ICameraSceneNode* camera);  // remaster_lights.cpp

// The file-scope job threads #2..#4 (m_updateJobThread1..4) and the first-run flag FirstTime are declared in
// dh2/global/Globals.hpp (definitions in game-app/src/Globals.cpp). m_updateJobThread0 is the member at +0x04.
// FirstTime is a bool: the constructor stores it with a byte store (STRB, asm 0x32d980).

extern "C" void nativeExit();  // 0x532bb8

// 0x50e6a0 _Z29DBG_DrawGlitchNodeBoundingBoxPN6glitch5scene10ISceneNodeE. Declared from the call site (the
// visitor argument of DBG_TraverseAllGlitchNode); it has no declaration in the tree yet.
namespace glitch::scene { class ISceneNode; }
void DBG_DrawGlitchNodeBoundingBox(glitch::scene::ISceneNode* node);

// The music-player bridge (0x533978 / 0x533980). Declared here instead of including
// core-platform/tb/android_jni_musicplayer.hpp: that header pulls in android_jni_bridge.hpp, whose big-sound
// declarations conflict with vox-audio/sound_manager.hpp in this translation unit. The mangled names are the
// C ones (the definitions in core-platform/src/p1-core-platform-global-f216b6-4.cpp are extern "C").
extern "C" int nativeGetisplaying();
extern "C" void nativePauseMusicBG();

namespace {

// Reads a debug switch the way the original does: DebugSwitches::load(), then GetSwitch.
bool ReadDebugSwitch(const char* name) {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    return switches->GetSwitch(name);
}

// Writes a debug switch the way the original does: DebugSwitches::load(), then SetSwitch.
void WriteDebugSwitch(const char* name, bool value) {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    switches->SetSwitch(name, value);
}

}  // namespace

// 0x321164 Application::_CheckGamepad()
// Reads the first connected gamepad. A control counts as down when its value reaches (maximum + minimum + 1.0) * 0.5
// (previous_* fields for the buttons, value/minimum/maximum for the two held keys). With a console: its toggle control
// (k = 22) opens or closes it (GSConsole::Toggle), and while it is open the pad is turned into EvKeyboard events
// (key codes 49..52, 135..138) and the function returns. Otherwise, outside a level, each of the 26 flagged controls
// raises EvGamepad (button code = control index) on a press or a release, and a press of control 1 pops the character
// menu, or the in-game menu when the character menu is not shown. last_time is the original's function-static .bss word.
void Application::_CheckGamepad() {
    InputManager* input = InputManager::GetInstance();
    Gamepad* pad = input->GetFirstConnectedGamepad();
    if (pad == nullptr) {
        return;
    }
    // previous_* thresholds (what the original's pad[k].previous / previous_minimum / previous_maximum test reads)
    auto down = [pad](int k) {
        const Gamepad::Channel& c = pad->m_buttons[k];
        return c.previous >= ((c.previous_maximum + c.previous_minimum) + 1.0f) * 0.5f;
    };
    auto latched = [pad](int k) { return pad->m_buttons[k].previous_above_threshold; };
    // value/minimum/maximum thresholds (controls 10 and 12 for the console key repeat)
    auto valueDown = [pad](int k) {
        const Gamepad::Channel& c = pad->m_buttons[k];
        return c.value >= ((c.maximum + c.minimum) + 1.0f) * 0.5f;
    };
    auto raiseKey = [this](int key) {
        const EvKeyboard event(0, key, true, false, false);
        m_eventManager->Raise(event);
    };

    bool consoleOpen = false;
    if (m_console != nullptr) {
        if (!down(22) || latched(22)) {
            if (m_console->open_) {
                static unsigned int last_time;  // Application::_CheckGamepad()::last_time
                const unsigned int elapsed = glitch::os::Timer::getRealTime() - last_time;
                if ((down(13) && !latched(13)) || (down(37) && !latched(37))) {
                    raiseKey(138);
                }
                if ((down(11) && !latched(11)) || (down(37) && !latched(37))) {
                    raiseKey(137);
                }
                if (valueDown(10) && elapsed > 99) {
                    last_time += elapsed;
                    if (last_time != 0) {
                        raiseKey(135);
                    }
                }
                if (valueDown(12) && elapsed > 99) {
                    last_time += elapsed;
                    if (last_time != 0) {
                        raiseKey(136);
                    }
                }
                if (down(0) && !latched(0)) {
                    raiseKey(49);
                }
                if (down(1) && !latched(1)) {
                    raiseKey(50);
                }
                if (down(2) && !latched(2)) {
                    raiseKey(51);
                }
                if (down(3) && !latched(3)) {
                    raiseKey(52);
                }
            }
        } else {
            GSConsole::s_inst.Toggle();
        }
        if (m_console != nullptr && m_console->open_) {
            return;
        }
    }

    if (GetCurrentLevel() != nullptr) {
        return;
    }
    // One EvGamepad per change of state on the 26 flagged controls, in this order.
    static const int kButtons[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 37, 38, 39, 40, 41, 42, 43, 44, 19, 22};
    for (const int k : kButtons) {
        if (down(k)) {
            if (!latched(k)) {
                const EvGamepad event(k, 1, 0, 1.0f);
                m_eventManager->Raise(event);
            }
        } else if (latched(k)) {
            const EvGamepad event(k, 0, 0, 1.0f);
            m_eventManager->Raise(event);
        }
    }
    if (down(1) && !latched(1)) {
        MenuBase* characterMenu = MenuManager::GetInstance()->GetMenuByName("menu_CharacterMenu");
        MenuBase* ingameMenu = MenuManager::GetInstance()->GetMenuByName("menu_Ingame");
        if (characterMenu != nullptr && characterMenu->IsVisible()) {
            characterMenu->m_menu->PopAll();
        } else if (ingameMenu != nullptr) {
            if (ingameMenu->IsVisible()) {
                ingameMenu->m_menu->PopAll();
            }
        }
    }
}

// 0x322924 Application::Pause()
// Notes the music state, pauses all sounds, stamps m_pauseTime from the device timer (IDevice +0x20, getRealTime; the
// virtual forwards to glitch::os::Timer::getRealTime), saves the player and opens the in-game menu fade when a loaded
// in-game level is current, saves the settings, puts the state machine to sleep and restores the orientation.
// The menu lookups use m_menuManager (dword_99F780 is s_inst +0x54). The save-settings gate is the byte at
// SavegameManager +0x28 (m_optionsLoaded). menu_Ingame is stored in GSFlashMenu::s_inst +0x0c (m_pendingMenu).
void Application::Pause() {
    bool musicPlaying = false;
    if (VoxSoundManager::s_instance != nullptr) {
        musicPlaying = VoxSoundManager::s_instance->IsMusicPlaying();
    }
    m_resumeMusic = false;            // +0xa6
    if (VoxSoundManager::s_instance != nullptr) {
        VoxSoundManager::s_instance->PauseAllSounds();
    }
    m_pauseMenuPushed = false;        // +0xa5

    Level* level = GetCurrentLevel();
    m_pauseTime = (m_device != nullptr) ? static_cast<int>(glitch::os::Timer::getRealTime()) : 0;  // +0xa0
    if (level != nullptr && level->m_loadStep == 38 && level->m_isLoaded) {
        level->SG_SavePlayer(0, false);
        if (level->m_isInGameView) {
            if (!MenuBase::s_igmOpened) {
                MenuBase* fadeToBlack = m_menuManager->GetMenuByName("menu_FadeToBlackScreen");
                if (!fadeToBlack->IsVisible()) {
                    m_menuManager->PopMenu("menu_FadeFromBlackScreen");
                    m_pauseMenuPushed = true;
                    GSFlashMenu::s_inst.m_pendingMenu = MenuManager::GetInstance()->GetMenuByName("menu_Ingame");  // dword_9A247C
                    m_stateMachine->PushState(&GSFlashMenu::s_inst, false);
                }
            }
        }
        if (musicPlaying && MenuBase::s_igmOpened) {
            m_resumeMusic = true;
        }
    }

    if (m_savegameManager != nullptr && m_savegameManager->m_optionsLoaded) {  // byte +0x28
        m_savegameManager->saveSettings();
    }

    m_paused = true;  // +0xa4
    if (m_stateMachine != nullptr) {
        m_stateMachine->Sleep();
    }
    if (!IsInIGPOrGameCenter()) {
        SetOrientation(m_orientation, false);
    }
}

// 0x322afc Application::InitPS3(glitch::IDevice*)
// Verified against the listing: the body is `if (device) ...; m_menuManager = new MenuManager()`. Each instruction is
// reproduced except the first three (MOV R3,#0; MOV R2,#1; STRB R2,[R3]): the original stores the byte 1 through a
// null pointer before allocating, which faults on the host, so it is not written (host-necessitated deviation; the
// target is unnamed in the ELF, IDA names it dword_0). The allocation is `operator new(0x114, MemoryHintState 0)`
// followed by MenuManager::MenuManager(); the port's plain `new MenuManager()` allocates the same 0x114 bytes with
// the standard operator new (the hint overload only labels the allocation). The store is `STR R5,[R4,#0x54]`
// (m_menuManager, +0x54). The device argument is unused.
void Application::InitPS3(glitch::IDevice* device) {
    (void)device;
    m_menuManager = new MenuManager();
}

// 0x323ae0 Application::Init(glitch::IDevice*)
// Reconstructed from the listing line by line. The device is stored at +0x10, its reference counter at +0x04 is
// raised (the original guards that single increment with a null test, then dereferences unconditionally), and this
// becomes the device's event receiver. The logger at device +0x2c gets log level 4 (ELL_NONE): the listing calls
// its vtable slot +0x10, which glitch::ILogger declares as setLogLevel(ELOG_LEVEL) (glitch-core-io/os/logging.hpp);
// device.hpp types that member void*, so the cast below is the port facade for it. Then the driver (device +0x10):
// setOption(256, true) and setOption(16, false) (byte offset +0xa0, IVideoDriver::setOption); its texture manager
// (+0xe0) has bit 2 of the word at +0x74 set and bit 0 cleared around two CResFileManager::Inst stores: the byte
// flags at +0x29 (flag_0x29) and +0x2b (disableZipAfterFirstUse) are both cleared. Finally
// CAnimationStreamingManager::Instance gains a 512000-byte cache limit (+0x18, cacheLimit) and checkMemoryUsage()
// runs. Order follows the listing. Storage helpers and the null test are host-width; the offsets are the original
// 32-bit ones.
void Application::Init(glitch::IDevice* device) {
    m_device = device;
    if (device != nullptr) {
        ++device->referenceCounter;  // +0x04
    }
    device->setEventReceiver(reinterpret_cast<glitch::IEventReceiver*>(this));
    if (device->logger != nullptr) {
        reinterpret_cast<glitch::ILogger*>(device->logger)->setLogLevel(glitch::ELL_NONE);  // vtable +0x10
    }
    glitch::video::IVideoDriver* driver = device->videoDriver;  // +0x10
    driver->setOption(256, true);   // +0xa0
    driver->setOption(16, false);   // +0xa0
    glitch::video::CTextureManager* textures = driver->m_textureManager;  // +0xe0
    textures->unk_74 |= 4u;                                               // +0x74
    glitch::collada::CResFileManager::Inst->flag_0x29 = false;            // +0x29
    textures->unk_74 &= ~1u;                                              // +0x74
    glitch::collada::CResFileManager::Inst->disableZipAfterFirstUse = false;  // +0x2b
    glitch::collada::CAnimationStreamingManager* streaming = glitch::collada::CAnimationStreamingManager::Instance;
    streaming->cacheLimit = 512000;  // +0x18
    streaming->checkMemoryUsage();
}

// 0x323bc4 Application::Quit()
// Saves the settings; in a loaded level (step 38) quick-saves and saves the local player's character; stops all
// sounds; clears the state machine, then deletes the owned members in the original order (virtual deleting destructor
// each, member nulled); destroys InputManager and VoxSoundManager, flushes the savefile jobs, cleans glitch, releases
// the device, destroys the property maps and the underlay node, tears down the online singletons and exits.
void Application::Quit() {
    if (m_savegameManager != nullptr) {
        m_savegameManager->saveSettings();
    }

    Level* level = GetCurrentLevel();
    if (level != nullptr && level->m_loadStep == 38) {
        level->QuickSave(false);
        Character* localPlayer = m_playerManager->GetLocalPlayer(0, true)->unk_660;  // +0x660
        if (localPlayer != nullptr) {
            localPlayer->SG_Save();
        }
    }
    if (VoxSoundManager::s_instance != nullptr) {
        VoxSoundManager::s_instance->StopAllSounds(0);
    }
    if (m_stateMachine != nullptr) {
        m_stateMachine->__clear();
    }

    // Each member: virtual deleting destructor (vtable +4) when set, then the member is zeroed.
    delete m_zoomHandler;           m_zoomHandler = nullptr;            // +0x50
    delete m_objectManager;         m_objectManager = nullptr;          // +0x38
    delete m_luaManager;            m_luaManager = nullptr;             // +0x3c
    delete m_playerManager;         m_playerManager = nullptr;          // +0x40
    delete m_stateMachine;          m_stateMachine = nullptr;           // +0x18
    delete m_eventManager;          m_eventManager = nullptr;           // +0x14
    delete m_stringManager;         m_stringManager = nullptr;          // +0x34
    delete m_pyDataArrays;          m_pyDataArrays = nullptr;           // +0x30
    delete m_pyDataConstants;       m_pyDataConstants = nullptr;        // +0x2c
    delete m_dataReloaderManager;   m_dataReloaderManager = nullptr;    // +0x28
    delete m_accelerometer;         m_accelerometer = nullptr;          // +0x24
    delete m_touchScreen;           m_touchScreen = nullptr;            // +0x20
    delete unk_1c;                  unk_1c = nullptr;                   // +0x1c
    delete m_physicalWorld;         m_physicalWorld = nullptr;          // +0x44
    delete m_console;               m_console = nullptr;                // +0x48
    delete m_savegameManager;       m_savegameManager = nullptr;        // +0x4c
    for (int i = 0; i < 4; ++i) {
        delete m_playerLightTweakers[i];                                // +0x58 .. +0x64
        m_playerLightTweakers[i] = nullptr;
    }
    delete m_gamepadTweaker;        m_gamepadTweaker = nullptr;         // +0x68
    delete m_menuManager;           m_menuManager = nullptr;            // +0x54

    InputManager::Destroy();
    VoxSoundManager::DeleteInstance();
    Savegame::FlushJobs(nullptr);
    CleanGlitch();
    if (m_device != nullptr) {
        // The original calls three virtuals: the scene manager's clear, the video driver's removeUnused (slot +0xac, device +0x10)
        // and the device's closeDevice (slot +0x30), then drops the device.
        reinterpret_cast<glitch::scene::CSceneManager*>(m_device->sceneManager)->clear();
        m_device->videoDriver->removeUnused();
        m_device->closeDevice();
        m_device->drop();
        m_device = nullptr;
    }
    PropertyMap::DestroyPropertyMaps();
    if (m_underlayNode != nullptr) {
        const int refs = m_underlayNode->referenceCounter;
        const bool parentless = (m_underlayNode->getParent() == nullptr);
        if (!((parentless && refs == 1) || refs == 2)) {
            if (gAssertLevel == 2) {
                *static_cast<volatile int*>(nullptr) = 0;  // dword_0 = 0 (deliberate crash)
            } else if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n",
                             "(m_underlayNode->getParent() == __null && m_underlayNode->getReferenceCount() == 1) || "
                             "m_underlayNode->getReferenceCount() == 2",
                             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Application.cpp", 458);
            }
        }
        m_underlayNode->drop();
        m_underlayNode = nullptr;
    }
    if (OnlineSingleton<OnlineGameState>::m_instance != nullptr) {
        delete OnlineSingleton<OnlineGameState>::m_instance;
    }
    OnlineSingleton<OnlineGameState>::m_instance = nullptr;
    if (GCSingleton<GameCenter>::m_instance != nullptr) {
        delete GCSingleton<GameCenter>::m_instance;
    }
    GCSingleton<GameCenter>::m_instance = nullptr;
    GetOnline();
    COnline::Destroy();
    TrophyManager::DeleteInstance();
    nativeExit();
}

// 0x3241b8 Application::OnInterruptResume()
// Reconstructed from the listing: the trace, then an 8-byte CustomAlloc block holding a GS_InterruptLoading (its
// primary vptr plus the StateBase secondary vptr need 8 bytes), then StateMachine::PushState(m_stateMachine,
// state, false) with the StateBase sub-object. In the original the sub-object address is `block + 4` (asm: ADD
// R1,R5,#4) with a null test on the block; the port asks the compiler for the StateBase sub-object of the same
// object, which is that same address because IEventReceiver is the primary base (one vptr). The block is
// delimited by the state machine in the original (PushState takes ownership); the port pushes it unowned, as the
// listing's third argument (0) says.
void Application::OnInterruptResume() {
    _DEBUG_OUT("\n\n Application::OnInterruptResume \n\n");
    void* storage = CustomAlloc(static_cast<unsigned>(sizeof(GS_InterruptLoading)));
    GS_InterruptLoading* loading = new (storage) GS_InterruptLoading();
    StateBase* state = loading != nullptr ? static_cast<StateBase*>(loading) : nullptr;
    if (m_stateMachine != nullptr) {
        m_stateMachine->PushState(state, false);
    }
}

// 0x324210 Application::OnInterruptPause()
// Reconstructed from the listing: when the music player reports that it is playing (nativeGetisplaying() == 1) the
// pause latch Musicplayerpause is set and the platform pause call runs, then the trace. Both calls are the JNI
// bridge of core-platform/tb/android_jni_musicplayer.hpp (0x533978 and 0x533980); Musicplayerpause is the .bss
// byte at 0x99fa5c (game-app/src/Globals_link1.cpp).
void Application::OnInterruptPause() {
    if (nativeGetisplaying() == 1) {
        Musicplayerpause = true;
        nativePauseMusicBG();
    }
    _DEBUG_OUT("\n\n Application::OnInterruptPause \n");
}

// 0x3261fc Application::RemoveUnderlayNode(glitch::scene::ISceneNode*)
// Removes the first entry equal to node from m_underlayNode's pointer vector (+0x130), keeping the order.
void Application::RemoveUnderlayNode(glitch::scene::ISceneNode* node) {
    if (m_underlayNode == nullptr) {
        return;
    }
    auto& nodes = m_underlayNode->m_underlayNodes;
    const auto found = std::find(nodes.begin(), nodes.end(), node);
    if (found != nodes.end()) {
        nodes.erase(found);
    }
}

// 0x3270c8 Application::AddUnderlayNode(glitch::scene::ISceneNode*)
// Forwards to UnderlaySceneNode::AddUnderlayNode when the underlay exists.
void Application::AddUnderlayNode(glitch::scene::ISceneNode* node) {
    if (m_underlayNode == nullptr) {
        return;
    }
    m_underlayNode->AddUnderlayNode(node);
}

// 0x328f40 Application::ResetTouch()
// Ends every touch that is still down. The touch screen's list of active touch ids (getTouchIDList, vtable slot +0x4c)
// is walked in order, and touchEnded (vtable slot +0x28) is called for each id with the point (-1, -1). The list is then
// freed (the std::list destructor). getTouchIDList is virtual in the original, but core-platform declares it non-virtual;
// no class in the tree overrides it, so the direct call reaches TouchScreenBase::getTouchIDList.
void Application::ResetTouch() {
    if (m_touchScreen == nullptr) {
        return;
    }
    const std::list<long> touchIds = m_touchScreen->getTouchIDList();  // +0x4c
    for (const long slot : touchIds) {
        const Point2D<short> endPoint{-1, -1};
        m_touchScreen->touchEnded(endPoint, slot);  // vtable +0x28
    }
}

// 0x328fe0 Application::Resume()
// Reconstructed from the listing. No device returns at once. The HUD is refreshed when HUDControls::hasInstance()
// (the original passes the Application pointer in r0, a leftover: hasInstance takes no argument). The current device
// time (v3) and the stored pause time (m_pauseTime, +0xa0, written by Pause) are read before the sound block,
// because the reconnect test compares them. The sound block runs when there is a sound manager, and the tail block
// (m_pauseMenuPushed clear plus the online reconnect test) when isDevicePause is clear; the original reaches the tail
// from the sound block's fall-through and from the null-manager goto, which the single `||` below reproduces.
// Music resume: ResumeMusic(500) when m_resumeMusic is set and the game is in the in-game-play/GameCenter state or a
// level is loaded and (m_isInGameView (+0x198) or MenuBase::s_igmOpened or m_pauseMenuPushed); ResumeAllSounds
// otherwise. Reconnect: with the online byte (Application::IsOnlineGame, GetOnline +0x05) set, a pause longer than
// 0x15f90 ms or (OnlineGameState::mode_ != 2 and Wi-Fi off) raises m_goToMainMenuPending. Then the pause flag is
// cleared, the state machine woken, the touch screen reset, m_lastTickTime (+0x70) stamped and ComputeDt run.
// Deviation: the device timer (IDevice +0x20, virtual getRealTime at slot +0x0c) is the port's header-only static
// glitch::os::Timer::getRealTime(), the same substitution ComputeDt and _CheckGamepad in this file already use.
void Application::Resume() {
    if (m_device == nullptr) {
        return;
    }
    if (HUDControls::hasInstance()) {
        HUDControls::GetInstance()->RefreshHUD();
    }
    const unsigned int now = glitch::os::Timer::getRealTime();  // device +0x20, vtable +0x0c
    const unsigned int pauseTime = static_cast<unsigned int>(m_pauseTime);  // +0xa0, the value Pause stored
    Level* level = GetCurrentLevel();

    if (VoxSoundManager::s_instance == nullptr || !isDevicePause) {
        if (VoxSoundManager::s_instance != nullptr) {
            if (IsInIGPOrGameCenter() ||
                (level != nullptr && (level->m_isInGameView || MenuBase::s_igmOpened || m_pauseMenuPushed))) {
                if (m_resumeMusic) {
                    VoxSoundManager::s_instance->ResumeMusic(500);
                }
            } else {
                VoxSoundManager::s_instance->ResumeAllSounds();
            }
        }
        if (!isDevicePause) {
            m_pauseMenuPushed = false;
            if (IsOnlineGame()) {
                if (now - pauseTime > 0x15F90u ||
                    (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ != 2 && !IsWifiEnabled())) {
                    m_goToMainMenuPending = true;
                }
            }
        }
    }

    m_paused = false;
    if (m_stateMachine != nullptr) {
        m_stateMachine->WakeUp();
    }
    ResetTouch();
    // The original reads the device timer a second time here (0x329084, after WakeUp and ResetTouch) for +0x70.
    m_lastTickTime = static_cast<int>(glitch::os::Timer::getRealTime());  // +0x70
    ComputeDt();
}

// 0x329310 Application::UnRegisterForIrrlichtEvents(glitch::IEventReceiver*)
// The original walks m_eventReceivers and frees every node that holds the receiver; std::list::remove does the same.
void Application::UnRegisterForIrrlichtEvents(glitch::IEventReceiver* receiver) {
    if (receiver == nullptr) {
        return;
    }
    m_eventReceivers.remove(receiver);
}

// 0x32a9c8 Application::onEvent(glitch::SEvent const&)
// Passes the event to every registered glitch receiver (vtable slot +0x08) and ORs the results. Mouse events (type 1) are
// raised as EvMouseButton / EvMouseMove / EvMouseWheel and return true. Key events (type 2) are raised as EvKeyboard (key 9
// and 222 on release toggle the console instead when one exists); on a press, unless the debug switches
// "IsUsingToggleDisplayMode" or "IsUsingCharacterShowRoom" are on, '+' (43) raises and '-' (45) lowers the view scale at +0x9c
// by 0.1 (not below 0). Key events return true.
bool Application::onEvent(const glitch::SEvent& event) {
    unsigned char handled = 0;
    for (glitch::IEventReceiver* receiver : m_eventReceivers) {
        handled = static_cast<unsigned char>(receiver->onEvent(event) | handled);
    }
    if (event.EventType != glitch::EET_KEY_INPUT_EVENT) {
        if (event.EventType == glitch::EET_MOUSE_INPUT_EVENT) {
            const glitch::SEvent::SMouseInput& mouse = event.MouseInput;
            const std::int16_t x = static_cast<std::int16_t>(mouse.X);  // +0x08
            const std::int16_t y = static_cast<std::int16_t>(mouse.Y);  // +0x0c
            switch (mouse.Event) {  // +0x14
                case 0:
                case 3: {
                    const EvMouseButton ev(0, mouse.Event == 0, x, y);
                    m_eventManager->Raise(ev);
                    handled = 1;
                    std::printf("Mouse POS = (%d, %d)\n", mouse.X, mouse.Y);
                    break;
                }
                case 1:
                case 4: {
                    const EvMouseButton ev(2, mouse.Event == 1, x, y);
                    handled = 1;
                    m_eventManager->Raise(ev);
                    break;
                }
                case 2:
                case 5: {
                    const EvMouseButton ev(1, mouse.Event == 2, x, y);
                    handled = 1;
                    m_eventManager->Raise(ev);
                    break;
                }
                case 6: {
                    const EvMouseMove ev(x, y);
                    handled = 1;
                    m_eventManager->Raise(ev);
                    break;
                }
                case 7: {
                    const EvMouseWheel ev(static_cast<int>(mouse.Wheel));  // +0x10
                    handled = 1;
                    m_eventManager->Raise(ev);
                    break;
                }
                default:
                    return true;
            }
        }
        return handled != 0;
    }

    const glitch::SEvent::SKeyInput& key = event.KeyInput;
    bool pressed;
    if (key.Key == 9 || key.Key == 222) {
        pressed = key.PressedDown;
        if (!pressed) {
            if (m_console == nullptr) {
                return true;
            }
            GSConsole::s_inst.Toggle();
        }
    } else {
        pressed = key.PressedDown;
    }
    if (key.Key != 9 && key.Key != 222 || key.PressedDown) {
        const EvKeyboard ev(static_cast<std::int32_t>(key.Char), key.Key, key.PressedDown, key.Shift, key.Control);
        m_eventManager->Raise(ev);
        pressed = key.PressedDown;
    }
    if (!pressed) {
        return true;
    }
    if (ReadDebugSwitch("IsUsingToggleDisplayMode")) {
        return true;
    }
    if (ReadDebugSwitch("IsUsingCharacterShowRoom")) {
        return true;
    }
    if (key.Char == 43) {  // +0x08
        m_dtFactor = static_cast<float>(m_dtFactor + 0.1);  // +0x9c
        return true;
    }
    if (key.Char != 45) {
        return true;
    }
    const float scale = static_cast<float>(m_dtFactor - 0.1);
    m_dtFactor = scale;
    if (scale < 0.0f) {
        m_dtFactor = 0.0f;
    }
    return true;
}

// 0x32ade8 Application::_Draw()
// Reconstructed from the listing (asm 0x32ae18..0x32b044), line by line. The object at IDevice +0x18 is now
// identified: it is the gui environment. CIrrFactory::createGUIAndScene (0x671554) asks its vtable +0x10, which
// is CIrrFactory::createGUIEnvironment (0x533f28 -> CGUIEnvironment, operator new(472)), and stores the result in
// the device at +0x18 (asm 0x6715a8); the same factory's +0x0c creates the scene manager stored at +0x1c
// (asm 0x6715d4). CGUIEnvironment's vtable (_ZTVN6glitch3gui15CGUIEnvironmentE+8) is drawAll at +0x0c, ...,
// setUserEventReceiver at +0x34, clear at +0x3c -- so the two `LDR PC,[R3,#0x0c]` calls in this function and in
// GSConsole::Draw2D (0x3832c4) are IGUIEnvironment::drawAll(). glitch-core-io/os/device.hpp still types that word
// `void* unk_18`, so the cast below is the member, exactly as the Console (_createList) and Character (DebugDraw)
// batches already do; a layout request asks the glitch-core-io owner to type it IGUIEnvironment*.
// The colour comes from Level +0x38, which is Level::m_levelConfig (Level.hpp +0x38, asserted non-null at
// Level.h:476): LevelConfig::m_clearColor (+0x1ec) is read as three floats, each converted to unsigned and stored
// into the SColor's bytes 0, 1 and 2, with byte 3 = 0xFF (asm: __aeabi_f2uiz, then STRB into the four bytes of the
// word at SP+0x18).
// The camera block at 0x32b0b4 is written too: activeCamera (CSceneManager +0xe4) when it is already set,
// otherwise, when the level and its Level +0x128 object are non-null, setActiveCamera(CSceneManager,
// *(Level + 0x128 + 8)). `Level +0x128 + 8` is the CameraLevel's CameraBase::m_camera, read through the
// CameraBase::GetCameraNode() accessor added to dh2/CameraBase.hpp for it.
void Application::_Draw() {
    PushProfilingContext("Application::Draw");
    glitch::video::IVideoDriver* driver = m_device->videoDriver;  // m_device +0x10
    glitch::gui::IGUIEnvironment* gui =
        m_device->guiEnvironment;  // m_device +0x18, typed in device.hpp now
    glitch::scene::CSceneManager* scene =
        reinterpret_cast<glitch::scene::CSceneManager*>(m_device->sceneManager);  // m_device +0x1c

    if (!IsInitFinish() || InterLoad) {
        if (m_stateMachine != nullptr) {
            m_stateMachine->Draw();
        }
        PopProfilingContext("Application::Draw");
        return;
    }

    // The clear colour: LevelConfig::m_clearColor (Level +0x38 -> +0x1ec), three floats to bytes 0..2, alpha 0xff.
    unsigned int packed = 0xFF000000u;
    Level* level = GetCurrentLevel();
    if (level != nullptr && level->GetLevelConfig() != nullptr) {
        const Point3D<float>& clearColor = level->GetLevelConfig()->m_clearColor;  // +0x1ec
        packed |= static_cast<unsigned int>(static_cast<unsigned char>(static_cast<unsigned int>(clearColor.X)));
        packed |= static_cast<unsigned int>(static_cast<unsigned char>(static_cast<unsigned int>(clearColor.Y))) << 8;
        packed |= static_cast<unsigned int>(static_cast<unsigned char>(static_cast<unsigned int>(clearColor.Z))) << 16;
    }
    glitch::video::SColor clearColor;
    clearColor.color = packed;
    driver->setClearColor(clearColor);  // +0xdc
    driver->beginScene();               // +0x0c
    driver->clearBuffers(3);            // vtable +0xa8 (listing 0x32af1c: the call through slot 168 with 3), color and depth. The port had called setOption(3, true)
                                        // (slot +0xa0), so the color buffer was never cleared and old menus stayed on screen.

    // IsUsingBatching is re-read through DebugSwitches right here, between setOption calls.
    const bool isUsingBatching = ReadDebugSwitch("IsUsingBatching");
    driver->setOption(256u, isUsingBatching);  // +0xa0

    if (!IsLevelPaused(true)) {
        const bool draw3D = IsLevelLoaded() && m_sceneUpdated;  // the byte at +0xa9 gates the whole 3D pass
        if (draw3D) {
            // The original calls the non-virtual MenuBase::IsVisible (0x41f3f4) on MenuCharacterSelect::GetInstance()
            // (asm 0x32b064, 0x32b068): a qualified call, as the instance is already a MenuBase.
            const bool showCharacterSelect = !MenuCharacterSelect::GetInstance()->MenuBase::IsVisible();
            if (showCharacterSelect) {
                PushProfilingContext("Application::Draw3D");
                scene->driver->setDepthRange(0.0f, 0.8f);  // CSceneManager +0x14, driver +0x11c
                // The active camera (asm 0x32b0b4): CSceneManager::activeCamera (+0xe4) when the scene already has
                // one; otherwise the level's camera (Level +0x128, a CameraLevel) is made active through its glitch
                // camera (CameraBase +0x08). The original re-reads GetCurrentLevel here rather than reusing the
                // `level` above, and skips the call when either the level or its camera is null.
                if (scene->activeCamera == nullptr) {
                    Level* activeLevel = GetCurrentLevel();
                    if (activeLevel != nullptr && activeLevel->m_camera != nullptr) {
                        scene->setActiveCamera(activeLevel->m_camera->GetCameraNode());
                    }
                }
                // Hex-Rays +0x3c on the scene manager object (0x32b0d4) is the virtual drawAll(ISceneNode*) slot (listing +0x50, the
                // game SceneManager::drawAll 0x359338, which registers the nodes, renders the lists and takes the screenshot). The earlier
                // reading as registerSceneNodes indexed the vtable from its first entry; the object's vptr is five entries in (GSViewer
                // calls the same slot drawAll(null)). With registerSceneNodes only, nothing was ever rendered in 3D.
                Dh2UpdateDynamicLights(driver, scene->rootNode, scene->activeCamera);  // port addition (remaster): torch and spell lights
                scene->drawAll(static_cast<glitch::scene::ISceneNode*>(nullptr));  // vtable +0x3c, r1 = 0
                // Port addition (remaster): ambient occlusion, bloom and the tone curve over the 3D view, before any 2D layer
                Dh2PostFx(driver, scene->activeCamera);
                const bool boundingBoxes = ReadDebugSwitch("IsRenderingGlitchBoundingBoxes");
                if (boundingBoxes) {
                    // DebugSwitches::GetSwitch returns a signed char in the original's ABI; the value is only tested
                    // for zero, so the bool is enough. The original walks the scene manager's rootNode (+0x04, asm
                    // LDR R0,[R3,#4]) with IsNodeVisible as the filter and DBG_DrawGlitchNodeBoundingBox as the
                    // visitor. IsNodeVisible returns int where the filter slot wants bool, so it is wrapped.
                    // The original first selects the built-in debug material renderer (type 1, driver +0xdc manager) and sets its
                    // material with technique 255 when the instance is null (the same sequence as ObjectManager::Draw3D).
                    glitch::video::CMaterialRendererManager* renderers = driver->m_materialRendererManager;  // +0xdc
                    const uint16_t renderer = renderers->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));
                    boost::intrusive_ptr<glitch::video::CMaterial> debugMaterial = renderers->getMaterialInstance(renderer, true);
                    const uint8_t debugTechnique = debugMaterial ? static_cast<uint8_t>(debugMaterial->getTechnique()) : 0xff;
                    driver->setMaterial(debugMaterial, debugTechnique, nullptr);
                    DBG_TraverseAllGlitchNode(
                        scene->rootNode, &DBG_DrawGlitchNodeBoundingBox,
                        +[](glitch::scene::ISceneNode* node) -> bool { return IsNodeVisible(node) != 0; });
                }
                PopProfilingContext("Application::Draw3D");
            }
        }
    }

    PushProfilingContext("Application::Draw2D");
    PushProfilingContext("StateMachine::Draw");
    if (m_stateMachine != nullptr) {
        m_stateMachine->Draw();
    }
    PopProfilingContext("StateMachine::Draw");
    // Host-necessitated deviation: the original dereferences the gui environment unconditionally here (the device
    // always builds it in createGUIAndScene). The port's IDevice never fills that word, so a test harness that
    // reaches _Draw with a bare/null device would fault; the original's behaviour with a null device is the same
    // fault, so the guard only avoids a crash the harness would otherwise take.
    // Order per the listing (0x32b1xx, deepseek audit finding verified): the driver's beginScene2D (+0x14) comes first, then the gui drawAll (+0x0c).
    driver->beginScene2D();  // +0x14
    if (gui != nullptr) {
        gui->drawAll();  // IDevice +0x18, vtable +0x0c
    }
    if (m_stateMachine != nullptr) {
        m_stateMachine->Draw2D();
    }
    MenuManager::GetInstance()->DBG_Draw();
    Singleton<PerfCounters>::s_inst.Draw();
    driver->endScene2D();  // +0x18
    PopProfilingContext("Application::Draw2D");
    driver->endScene();      // +0x10
    driver->swapBuffers(0);  // +0xa4
    PopProfilingContext("Application::Draw");
}

// 0x32bdc8 Application::LoadLevel(...)
// Written: the staging globals (temp_* 0x99fa40..0x99fa58, dh2/global/Globals.hpp), the GameCenter flag (GCSingleton<GameCenter> +0x14, unk_14), the unk_ab (+0xab)
// reset and the statub bar hide; then the two paths of the original.
//   A running level (its m_loadStep must be 38, else the function returns): when the level is not in its game view, MultiMenuManager::PopMenu(true) runs (the
//   m_menuManager +0xf4 object, vtable +0x38). Then m_inTransition (+0x145) is set, SendGLHiScore runs, fromSubId = m_levelListSubId (+0x40), m_levelChange
//   (+0xf0) is set, SG_SaveLocalPlayer(true), QuickSave(true) and ResetIsLoaded run.
//   No level: the player manager's unk_71b (+0x71b) is set and fromSubId is -1.
// A call that is not remotely triggered then builds the seed. A PlayerSavegame for the slot is read (constructed with (slot, 1, isRemotelyTriggered)); the seed
// is its per-difficulty seed (m_seeds[PlayerSavegame::m_difficultyLevel], +0x5c), replaced by glitch::os::Timer::getRealTime() when it is 0 or the
// "DontUsePlayerSeed" debug switch is set, and written back to the temporary. In an online game the level list (Arrays::LevelList, 72-byte records, the level
// name at +0x20) is searched case-insensitively for the level name (the last match wins); for a found level a CMsgStartGame is sent through CMessaging
// (payload at +0x50: level index, entry point id, resume, useSpawnPoint, difficulty, seed, seed, -1); then the matching object's room attributes get
// attribute 7 = 1 (vtable +0xa4, SetAttributeInt slot). The synced seed becomes the seed. GSLevel::LoadLevel then runs with those values, then
// PlayerStatManager::s_inst.Reset(), the player manager's unk_6c9 (+0x6c9) is cleared and PlayerManager::Update runs.
namespace {

// The 28 bytes of CMsgStartGame's payload (message +0x50).
struct StartGamePayload {
    int32_t levelIndex;     // +0x00
    int32_t entryPointId;   // +0x04
    uint8_t resume;         // +0x08
    uint8_t useSpawnPoint;  // +0x09
    uint8_t pad_0a[2];
    int32_t difficulty;     // +0x0c
    uint32_t seed;          // +0x10
    uint32_t syncedSeed;    // +0x14
    int32_t unk_24;         // +0x18
};
static_assert(sizeof(StartGamePayload) == 28, "CMsgStartGame payload");

}  // namespace

void Application::LoadLevel(const char* name, int entryPointId, uint32_t savegameSlot, bool resume, bool useSpawnPoint,
                            int difficulty, bool isRemotelyTriggered, uint32_t seed, uint32_t syncedSeed) {
    temp_savegameSlot = savegameSlot;
    temp_entryPointId = entryPointId;
    temp_isRemotelyTriggered = isRemotelyTriggered;
    temp_resume = resume;
    temp_useSpawnPoint = useSpawnPoint;
    temp_difficulty = difficulty;
    temp_seed = seed;
    temp_syncedSeed = syncedSeed;

    GCSingleton<GameCenter>::GetInstance()->unk_14 = true;  // +0x14
    unk_ab = false;
    ShowStatubBar(false);

    int fromSubId = -1;
    Level* level = GetCurrentLevel();
    if (level != nullptr) {
        if (level->m_loadStep != 38) {
            return;
        }
        if (!level->m_isInGameView) {
            m_menuManager->m_multiMenuManager->PopMenu(true);  // +0xf4 MultiMenuManager, vtable +0x38
        }
        level->m_inTransition = true;                 // +0x145
        SendGLHiScore();
        fromSubId = level->m_levelListSubId;          // +0x40
        level->m_levelChange = true;                  // +0xf0
        level->SG_SaveLocalPlayer(true);
        level->QuickSave(true);
        level->ResetIsLoaded();
    } else {
        m_playerManager->unk_71b = true;  // +0x71b
    }

    if (!isRemotelyTriggered) {
        PlayerSavegame save(savegameSlot, 1, isRemotelyTriggered);
        seed = static_cast<uint32_t>(save.m_seeds[PlayerSavegame::m_difficultyLevel]);  // +0x5c + 4 * difficulty
        if (seed == 0 || DebugSwitches::GetInstance()->GetSwitch(std::string("DontUsePlayerSeed"))) {
            seed = glitch::os::Timer::getRealTime();
        }
        save.m_seeds[PlayerSavegame::m_difficultyLevel] = static_cast<int32_t>(seed);
        if (IsOnlineGame()) {  // *(GetOnline() + 5)
            const Structs::LevelDeclaration* levels = reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members);
            int levelIndex = -1;
            for (uint32_t i = 0; i < Arrays::LevelList::size; ++i) {
                if (LC_API_STRCASECMP(static_cast<const char*>(levels[i].LevelFile), name) == 0) {  // row +0x20
                    levelIndex = static_cast<int>(i);
                }
            }
            if (levelIndex != -1) {
                CMessaging* messaging = GetMessaging();
                CMessage* message = CMessage::CreateMessage("CMsgStartGame", true);
                StartGamePayload* payload = static_cast<StartGamePayload*>(message->GetDataPtr());  // +0x50
                payload->levelIndex = levelIndex;                      // +0x50
                payload->unk_24 = -1;                                  // +0x68
                payload->entryPointId = entryPointId;                  // +0x54
                payload->resume = resume;                              // +0x58
                payload->useSpawnPoint = useSpawnPoint;                // +0x59
                payload->difficulty = difficulty;                      // +0x5c
                payload->seed = seed;                                  // +0x60
                payload->syncedSeed = seed;                            // +0x64
                messaging->SendMsg(message);
            }
            CMatching::Get()->GetRoomAttributes()->SetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(7), 1);
        }
        syncedSeed = seed;
    }

    GSLevel::LoadLevel(name, entryPointId, savegameSlot, seed, syncedSeed, resume, useSpawnPoint, fromSubId, difficulty);
    PlayerStatManager::s_inst.Reset();
    m_playerManager->unk_6c9 = 0;  // +0x6c9
    m_playerManager->Update();
}

// 0x32c1f4 Application::GoToMainMenu(GoToMainMenuEvent)
// Reconstructed from the listing line by line. The two multiplayer mode flags (Is_In_Multiplayer_IGM, ELF 0x9a5b5a,
// and Is_In_Multiplayer_Mode, 0x9a5b59; declared in dh2/global/menu_main_menu.hpp) are cleared first. A loaded level
// (m_loadStep 38) is saved: when it is not in its game view the multi-menu is popped (m_menuManager +0xf4, vtable
// +0x38), then m_inTransition (+0x145) is set, QuickSave(false) and SG_SaveLocalPlayer(false) run. The menu manager is
// reset, "menu_MainMenu" looked up and stored in GSFlashMenu::s_inst: the load-main-menu flag byte first (+0x29,
// ELF byte_9A2499), then the pending-menu pointer (+0x0c, ELF dword_9A247C), then SwitchState. Hi-score send,
// trophy unlock and the full player removal follow. The online sign-out block runs with the online byte
// (GetOnline +0x05) set: CSignIn::Get()->SignOut() when logged in (+0x11), CMatching::Get()->LeaveRoom() when its
// +0x64 gate is set, SetMatchingProvider(1), CMatching::Destroy(), COnline::SetIsOnlineGame(false) and the two
// singleton flag clears (OnlineGameState +0x28 flag28_, GameCenter +0x11 startFlag_). Then the statub bar, the
// unk_ab latch and the event store. The bare CMatching::Get() calls reproduce the original's discarded accesses.
void Application::GoToMainMenu(GoToMainMenuEvent event) {
    Is_In_Multiplayer_IGM = false;
    Is_In_Multiplayer_Mode = false;

    Level* level = GetCurrentLevel();
    if (level != nullptr && level->m_loadStep == 38) {
        if (level->m_isInGameView) {
            level->m_inTransition = true;  // +0x145
            level->QuickSave(false);
        } else {
            m_menuManager->m_multiMenuManager->PopMenu(true);  // +0xf4 MultiMenuManager, vtable +0x38
            level->m_inTransition = true;                      // +0x145
            level->QuickSave(false);
        }
        level->SG_SaveLocalPlayer(false);
    }

    MenuManager* menus = MenuManager::GetInstance();
    menus->Reset();
    _DEBUG_OUT("*************************GoToMainMenu::1111111");
    MenuBase* mainMenu = menus->GetMenuByName("menu_MainMenu");
    GSFlashMenu::s_inst.m_loadMainMenu = true;   // +0x29, ELF byte_9A2499
    GSFlashMenu::s_inst.m_pendingMenu = mainMenu;  // +0x0c, ELF dword_9A247C
    m_stateMachine->SwitchState(&GSFlashMenu::s_inst, false);
    _DEBUG_OUT("*************************GoToMainMenu::222222");
    SendGLHiScore();
    TrophyManager::s_instance->UnlockTrophiesGLLive();
    _DEBUG_OUT("*************************GoToMainMenu::3333333");
    if (m_playerManager != nullptr) {
        m_playerManager->RemoveAllPlayers();
    }

    if (IsOnlineGame()) {  // *(GetOnline() + 5)
        CSignIn* signIn = CSignIn::Get();
        if (signIn->LoggedIn()) {  // +0x11
            signIn->SignOut();     // vtable +0x14
        }
        CMatching* matching = CMatching::Get();
        if (matching->IsInRoom()) {  // vtable +0x64 (IsInRoom in the providers)
            CMatching::Get()->LeaveRoom();  // vtable +0x3c
        }
        CMatching::Get();  // the original's discarded access
        CMatching::SetMatchingProvider(static_cast<CMatching::MATCHING_PROVIDERS>(1));  // 1 = CMatchingLocal
        CMatching::Get()->Destroy();
        GetOnline()->SetIsOnlineGame(false);
        OnlineSingleton<OnlineGameState>::GetInstance()->flag28_ = false;  // +0x28
        GCSingleton<GameCenter>::GetInstance()->startFlag_ = false;        // +0x11
    }

    _DEBUG_OUT("*************************GoToMainMenu::4444444444");
    ShowStatubBar(false);
    unk_ab = true;
    m_goToMainMenuEvent = event;
    _DEBUG_OUT("*************************GoToMainMenu::55555555555555");
}

// 0x32c438 Application::_Update(int)
// One frame of game logic, bracketed by the "Application::Update" profiling context: CXPlayerManager::Update, the
// UseClickToMove switch cleared, the pending connection-loss main-menu switch, the in-level cheat taps (menu 10), the
// scene-manager update (skipped while a menu or pause holds the game; ResetDebugCounters, UpdateEnlargedViewFrustum, the
// culling flag at CSceneManager +0x250 set, update(dt, false)), the update-job thread start (or the savefile jobs while
// menu 17 is open), CharAI::StepResetAvailableStep, PlayerManager::Update, the event manager, the state machine, the
// sound manager, touch screen, accelerometer and input manager updates, _CheckGamepad, the one-shot debug traces and the
// frame counter.
void Application::_Update(int dtMs) {
    PushProfilingContext("Application::Update");
    Singleton<CXPlayerManager>::s_inst.Update();
    WriteDebugSwitch("UseClickToMove", false);
    if (m_goToMainMenuPending) {
        m_goToMainMenuPending = false;
        GoToMainMenu(static_cast<GoToMainMenuEvent>(3));
    }

    if (handle_cheats_inGame && lastOpenMenuID == 10) {
        // Two 16-byte rectangles (x1, y1, x2, y2) taken from CustomAlloc and never freed, as in the original.
        glitch::core::rect<float>* giveGold = static_cast<glitch::core::rect<float>*>(CustomAlloc(0x10));
        giveGold->UpperLeftCorner.X = 0.0f;
        giveGold->UpperLeftCorner.Y = 0.0f;
        giveGold->LowerRightCorner.X = 100.0f;
        giveGold->LowerRightCorner.Y = 100.0f;
        glitch::core::rect<float>* levelUp = static_cast<glitch::core::rect<float>*>(CustomAlloc(0x10));
        levelUp->LowerRightCorner.X = 100.0f;
        levelUp->UpperLeftCorner.Y = 100.0f;
        levelUp->UpperLeftCorner.X = 0.0f;
        levelUp->LowerRightCorner.Y = 200.0f;
        if (m_touchScreen->isRegionPressed(*giveGold)) {
            m_savegameManager->toggleOption("GiveGold");
        } else if (m_touchScreen->isRegionPressed(*levelUp)) {
            m_savegameManager->toggleOption("LevelUp");
        }
    }

    Level* level = GetCurrentLevel();
    // The scene manager is updated unless the in-game menu is open, or the level is paused without an online game.
    bool updateScene;
    if (IsLevelPaused(true)) {
        updateScene = IsOnlineGame() && !MenuBase::s_igmOpened;  // *(GetOnline() + 5)
    } else {
        updateScene = !MenuBase::s_igmOpened;
    }
    if (updateScene && IsLevelLoaded() && !IsInLevelTransition() &&
        (level == nullptr || (level->m_isLoaded && !level->unk_1a8))) {  // Level +0x144, +0x1a8
        glitch::scene::CSceneManager* sceneManager = reinterpret_cast<glitch::scene::CSceneManager*>(m_device->sceneManager);
        PushProfilingContext("SceneManager::update");
        RootSceneNode::ResetDebugCounters();
        RootSceneNode::UpdateEnlargedViewFrustum(sceneManager);
        sceneManager->cullingEnabled = true;  // +0x250
        sceneManager->update(static_cast<float>(dtMs), false);
        m_sceneUpdated = true;  // +0xa9
        PopProfilingContext("SceneManager::update");
    }

    if (lastOpenMenuID == 17) {
        Savegame::UpdateJobs();
    } else if (m_updateJobThread0->flag_) {  // +0x08
        m_updateJobThread0->Start();
    }
    CharAI::StepResetAvailableStep();
    m_playerManager->Update();
    const double dt = static_cast<double>(dtMs);
    m_eventManager->Update(dt);
    m_stateMachine->Update(dt);
    if (VoxSoundManager::s_instance != nullptr) {
        VoxSoundManager::s_instance->UpdateIPodAsync();
    }
    if (m_touchScreen != nullptr) {
        m_touchScreen->update(dt);
    }
    if (m_accelerometer != nullptr) {
        m_accelerometer->update(dt);
    }
    InputManager::GetInstance()->UpdateFrame(static_cast<float>(dtMs));
    _CheckGamepad();

    if (ReadDebugSwitch("TraceAllLoadedResfileInfoOnce")) {
        DBG_TraceAllLoadedResfileInformation();
        WriteDebugSwitch("TraceAllLoadedResfileInfoOnce", false);
    }
    if (ReadDebugSwitch("TraceAllLoadedTextureInfoOnce")) {
        DBG_TraceAllLoadedTextureInformation();
        DBG_TraceAllLoadedResfileInformation();
        WriteDebugSwitch("TraceAllLoadedTextureInfoOnce", false);
    }
    if (ReadDebugSwitch("TraceRoomObjects")) {
        m_objectManager->DBG_DumpRoomObjects();
        WriteDebugSwitch("TraceRoomObjects", false);
    }
    if (ReadDebugSwitch("TraceGlitchHierarchyOnce")) {
        DBG_TraceSceneNode(reinterpret_cast<glitch::scene::CSceneManager*>(m_device->sceneManager)->rootNode, 0,
                           reinterpret_cast<bool (*)(glitch::scene::ISceneNode*)>(IsNodeVisible));
        WriteDebugSwitch("TraceGlitchHierarchyOnce", false);
    }
    if (ReadDebugSwitch("TraceVisibleNodeOnce")) {
        DBG_TraceSceneNodePolyStats(reinterpret_cast<glitch::scene::CSceneManager*>(m_device->sceneManager)->rootNode,
                                    0, reinterpret_cast<bool (*)(glitch::scene::ISceneNode*)>(IsVisibleAndNotCulled));
        WriteDebugSwitch("TraceVisibleNodeOnce", false);
    }
    if (ReadDebugSwitch("DumpQuestInformationOnce")) {
        WriteDebugSwitch("DumpQuestInformationOnce", false);
        Level* current = GetCurrentLevel();
        if (current != nullptr) {
            current->SG_DBG_TraceDetailedQuestInformation(-1);
        }
    }
    if (ReadDebugSwitch("DumpActiveQuestInformationOnce")) {
        WriteDebugSwitch("DumpActiveQuestInformationOnce", false);
        Level* current = GetCurrentLevel();
        if (current != nullptr) {
            current->SG_DBG_TraceDetailedQuestInformation(m_pyDataConstants->getConstant("v2QuestState", "Active"));
        }
    }
    ++m_frameCount;
    PopProfilingContext("Application::Update");
}

// 0x32ccc4 Application::Update()
// Written: the paused exit, the online packet receive (gated by the online byte, Application::IsOnlineGame, GetOnline +0x05), the unk_7a clear,
// the frame-time gate (a frame longer than 2000 ms stamps m_lastTickTime and returns through ComputeDt), the DataReloaderManager reload timer
// (4000 ms against the function static Application::Update()::reloadtimer, ELF 0x99fa00 .bss) with the m_lastTickTime store, the online update block
// (PushProfilingContext "OnlineUpdate", COnline::Update(m_dt), OnlineGameState::Update, PopProfilingContext), the touch-screen event pump,
// ComputeDt, the perf counters, _Update, _Draw, the online send and the three-static average pacing. Deviation: the device timer (IDevice +0x20,
// virtual getRealTime at slot +0x0c) is the port's header-only static glitch::os::Timer::getRealTime(), as in ComputeDt and _CheckGamepad.
// The pacing sleeps are the device virtual at vtable +0x10, CAndroidOSDevice::sleep(unsigned int ms, bool pauseTimer) (0x6a0374) called with
// (avgSleepTime, 0): with the flag clear it is a plain nanosleep of ms milliseconds and does not touch the device timer, which is what
// DeviceSleep does here.
namespace {

// CAndroidOSDevice::sleep(ms, false) (0x6a0374): split into seconds and nanoseconds and nanosleep; the timer is not paused for a clear flag.
void DeviceSleep(unsigned int milliseconds) {
    std::this_thread::sleep_for(std::chrono::milliseconds(milliseconds));
}

}  // namespace

void Application::Update() {
    if (m_paused) {
        return;
    }
    if (IsOnlineGame()) {  // *(GetOnline() + 5)
        GetOnline()->ReceivePackets();
    }
    unk_7a = false;

    const unsigned int now = glitch::os::Timer::getRealTime();  // device +0x20, vtable +0x0c
    if (now - static_cast<unsigned int>(m_lastTickTime) > 0x7D0u) {  // 2000 ms
        m_lastTickTime = static_cast<int>(now);
        ComputeDt();
        return;
    }
    static unsigned int reloadtimer = 0;  // Application::Update()::reloadtimer, ELF 0x99fa00 .bss
    if (m_dataReloaderManager != nullptr && now - reloadtimer > 4000u) {
        reloadtimer = now;
        m_dataReloaderManager->checkFiles();
    }
    m_lastTickTime = static_cast<int>(now);

    if (IsOnlineGame()) {  // *(GetOnline() + 5)
        PushProfilingContext("OnlineUpdate");
        GetOnline()->Update(static_cast<float>(m_dt));  // COnline::Update
        OnlineSingleton<OnlineGameState>::GetInstance()->Update();
        PopProfilingContext("OnlineUpdate");
    }

    if (m_touchScreen != nullptr) {
        m_touchScreen->ProcessEvents();
    }
    ComputeDt();
    // The original converts +0x8c as an unsigned int for both the FPS value and the counter update.
    const float frameTimeMs = static_cast<float>(static_cast<unsigned int>(m_dt));
    const float fps = 1000.0f / frameTimeMs;
    Singleton<PerfCounters>::s_inst.Update(frameTimeMs);
    _Update(m_dt);
    _Draw();
    Singleton<PerfCounters>::s_inst.SetCounterValue("FPS", fps, 0.0f, 60.0f);
    if (IsOnlineGame()) {
        GetOnline()->SendPackets();
    }

    // Frame pacing, high-performance devices only. The three averages are function statics in the original (.bss, zero).
    if (!Device::IsHighPerformance()) {
        return;
    }
    static int avgFrameRate = 0;
    static int avgFrameCount = 0;
    static int avgSleepTime = 0;
    ++avgFrameCount;
    avgFrameRate += m_dt;
    if (avgFrameCount == 10) {
        const int v13 = avgFrameRate / 10 - avgSleepTime;
        int v14 = 0;
        if (v13 > 15) {
            if (v13 > 32) {
                v14 = v13 > 49 ? 5 : 50 - v13;
            } else {
                v14 = 33 - v13;
            }
        } else {
            v14 = 16 - v13;
        }
        avgFrameRate = 0;
        avgFrameCount = 0;
        avgSleepTime = v14 > 4 ? v14 : 5;
        DeviceSleep(static_cast<unsigned int>(avgSleepTime));
        return;
    }
    if (avgSleepTime > 0) {
        DeviceSleep(static_cast<unsigned int>(avgSleepTime));
        return;
    }
}

// 0x32d79c Application::Application()
// 0x32d980 Application::Application()
// The two addresses are the complete-object and base-object variants of one constructor; one definition serves both.
// The pseudocode also stores this+0xbc into the words at +0xcc and +0xd0, and this+0xd4 into the words at +0xe4 and +0xe8: those are
// the finish and start words of the two empty STLport strings (+0xbc m_uncompiledData, +0xd4 unk_d4), made by their default
// construction. Every other store is written, in the original's order: the vptr is the compiler's,
// FirstTime is the bool of dh2/global/Globals.hpp (STRB), and the job threads are created in the original's order:
// CustomAlloc(sizeof(updateJob_thread)), then updateJob_thread(n), then the pointer store. The original allocates 0x10
// bytes because its object is 0x10 bytes. The host object is larger (vptr, std::thread, bool, int: 24 bytes, see
// net-transport/include/net-transport/update_job_thread.hpp), so a 0x10 block would be overrun by the constructor.
// The std::string members (+0xbc, +0xd4) are constructed empty. The original allocates a 16-byte buffer for each and
// writes a terminating zero, which is the same empty string. The std::list sentinel at +0x08 is the default
// construction of m_eventReceivers. Not set, as in the original: m_menuManager (+0x54),
// the tweakers (+0x58..+0x68), m_lastTickTime (+0x70), m_orientation (+0x80), m_dt..m_timeScale (+0x8c..+0x98),
// m_underlayNode (+0xb8), unk_ec (+0xec) and the pad bytes. They are zero, because Application is constructed in the
// zeroed .bss storage of Singleton<Application>::s_inst.
Application::Application() {
    unk_6c = 30;
    m_dtFactor = 1.0f;
    m_pauseTime = -1;
    m_lastTime = 0;
    m_frameCount = 0;

    // Pointer members +0x10..+0x50 are cleared; m_device is the one at +0x10.
    m_device = nullptr;
    m_eventManager = nullptr;
    m_stateMachine = nullptr;
    unk_1c = nullptr;
    m_touchScreen = nullptr;
    m_accelerometer = nullptr;
    m_dataReloaderManager = nullptr;
    m_pyDataConstants = nullptr;
    m_pyDataArrays = nullptr;
    m_stringManager = nullptr;
    m_objectManager = nullptr;
    m_luaManager = nullptr;
    m_playerManager = nullptr;
    m_physicalWorld = nullptr;
    m_console = nullptr;
    m_savegameManager = nullptr;
    m_zoomHandler = nullptr;

    unk_78 = false;
    unk_79 = false;
    unk_7a = false;
    m_paused = false;
    m_pauseMenuPushed = false;
    m_resumeMusic = false;
    unk_a7 = false;
    unk_a8 = false;
    m_sceneUpdated = false;
    m_goToMainMenuPending = false;
    unk_ab = true;
    unk_ad = false;
    unk_b4 = true;
    unk_ed = false;
    unk_ee = false;
    unk_10e = false;
    unk_10f = true;

    // The std::string members (+0xbc m_uncompiledData, +0xd4 unk_d4) are constructed empty by the compiler.

    FirstTime = 1;
    m_updateJobThread0 = new (CustomAlloc(static_cast<unsigned int>(sizeof(updateJob_thread)))) updateJob_thread(1);
    m_updateJobThread1 = new (CustomAlloc(static_cast<unsigned int>(sizeof(updateJob_thread)))) updateJob_thread(2);
    m_updateJobThread2 = new (CustomAlloc(static_cast<unsigned int>(sizeof(updateJob_thread)))) updateJob_thread(3);
    m_updateJobThread3 = new (CustomAlloc(static_cast<unsigned int>(sizeof(updateJob_thread)))) updateJob_thread(4);
    m_updateJobThread4 = new (CustomAlloc(static_cast<unsigned int>(sizeof(updateJob_thread)))) updateJob_thread(5);
}
