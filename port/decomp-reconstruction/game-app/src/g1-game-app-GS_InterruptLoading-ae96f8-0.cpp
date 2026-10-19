// Batch g1-game-app-GS_InterruptLoading-ae96f8-0 (GS_InterruptLoading, part 1 of 1: all 10 functions of the class).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py) for the constructors,
// the destructors and Ctor. Layouts and declarations are in dh2/GS_InterruptLoading.hpp; the class has no data of its own.
//
// Status of each function is in game-app/ledger.d/g1-game-app-GS_InterruptLoading-ae96f8-0.csv. In short:
//   reconstructed  onEvent, Ctor, Draw, Update, both constructors (C1, C2) and both destructors (D1, D2). One definition each.
//   skipped        the scalar deleting destructor (D0), which the compiler emits.
//   Dtor is written in its own part of this file below.
//
// The original keeps firstframe, accumulatedTime and currentProgress as file-local statics (ELF _ZL10firstframe,
// _ZL15accumulatedTime, _ZL15currentProgress, 4-byte .bss). They are defined in the anonymous namespace below.
#include "core-platform/debug_out.hpp"
#include "dh2/Application.hpp"
#include "dh2/GS_InterruptLoading.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "net-session-online/online_game_state.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/Level.hpp"

// GSInit.cpp (port, remaster): the splash source rect for an HD-layer texture and the screen's shape
glitch::core::rect<std::int32_t> Dh2SplashSource(const glitch::video::ITexture* texture, const glitch::core::rect<std::int32_t>& viewport,
                                                 int& hd, glitch::core::rect<std::int32_t>& destination);
void Dh2DrawSplashBackdrop(glitch::video::IVideoDriver* driver, const boost::intrusive_ptr<glitch::video::ITexture>& texture,
                           const glitch::core::rect<std::int32_t>& viewport, const glitch::core::rect<std::int32_t>& destination, int hd);
#include "dh2/SavegameManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/global/ctrl_camera.hpp"  // ApplicationGetInstance(): the Application singleton (Singleton<Application>::s_inst)
#include "glitch-video/texture.hpp"    // glitch::video::ITexture, complete for the counted intrusive_ptr release in Dtor
#include "glitch-core-io/os/device.hpp"     // glitch::IDevice: +0x10 driver, +0x14 the C2DDriver
#include "glitch-video/c2d_driver.hpp"      // glitch::video::C2DDriver (the +0x14 receiver)
#include "glitch-video/video_driver.hpp"    // glitch::video::IVideoDriver slots and m_textureManager (+0xe0)
#include "glitch-video/texture_manager.hpp" // glitch::video::CTextureManager::getTexture(name, alias)
#include "glitch-video/render_target.hpp"   // IRenderTarget::viewport() of the last entry of the driver's target stack
#include <cstdint>
#include <string>

// Globals the original reads or writes. Their definitions belong to the globals batch (Width_Screen, JAVA_SOUNDS and
// Resume_Sound_Interrupt are not defined in this tree yet).
extern "C" void nativeResumeMusicBG();  // 0x5338e8, core-platform (its header clashes with the sound manager header)
extern int Width_Screen;               // ELF Width_Screen, 4-byte .data. Screen width; picks the splash file.
extern bool Musicplayerpause;          // ELF Musicplayerpause, 1-byte .bss. Set when the pause path paused the music.
extern bool JAVA_SOUNDS;               // ELF JAVA_SOUNDS, 1-byte .bss. Android sound-mode flag.
extern bool Resume_Sound_Interrupt;    // ELF Resume_Sound_Interrupt, 1-byte .bss. Set by Dtor under JAVA_SOUNDS.

// The globals declared in dh2/GS_InterruptLoading.hpp. InterLoad is 1 byte in the original. m_loadBackground is a
// counted intrusive_ptr: the original's static initializer (0x41786c) sets it to null and registers its destructor.
bool InterLoad = false;
boost::intrusive_ptr<glitch::video::ITexture> m_loadBackground;

namespace {

// File-local state of the original (zero-initialised .bss).
int firstframe = 0;        // ELF _ZL10firstframe. 0 until the first Update, then the frame counter used by Update.
int accumulatedTime = 0;   // ELF _ZL15accumulatedTime. Milliseconds since the spinner last advanced.
int currentProgress = 0;   // ELF _ZL15currentProgress. Spinner cell, 0 to 3.

// The splash file for the screen width. The original's Width_Screen switch: 854 is the droid splash, 800 the i9000
// splash, 960 and every other width the default splash. Each device-class branch of the original uses this switch.
const char* SplashFileForWidth(int width) {
    switch (width) {
        case 854:
            return "data/3d/textures/splash_final_droid.tga";
        case 800:
            return "data/3d/textures/splash_final_i9000.tga";
        case 960:
        default:
            return "data/3d/textures/splash_final.tga";
    }
}

// The language splash that replaces the width splash: language 4 (Japanese) and 5 (Korean). Other languages keep
// the width splash, so the result is null for them.
const char* LanguageSplashFile(int language) {
    if (language == 4) {
        return "data/3d/textures/splash_final_jp.tga";
    }
    if (language == 5) {
        return "data/3d/textures/splash_final_kor.tga";
    }
    return nullptr;
}

// The name the trace prints for a texture: the managed name of its entry in the texture manager (the entry's property string), or null when the
// entry has no value or an empty name.
const char* TextureTraceName(glitch::video::CTextureManager& manager, std::uint16_t id) {
    const auto* entry = manager.get(id);
    if (!entry->value) {
        return nullptr;
    }
    const std::string& name = entry->iterator->second.unk00;
    return name.empty() ? nullptr : name.c_str();
}

}  // namespace

// 0x417424 GS_InterruptLoading::onEvent(IEvent const*, EventManager const*)
// The original returns 0. The splash receives every event and consumes none.
bool GS_InterruptLoading::onEvent(const IEvent*, const EventManager*) {
    return false;
}

// 0x417454 GS_InterruptLoading::Draw(StateMachine const*)
// The receiver is the video driver (IDevice +0x10; the earlier reading as a separate 2D driver at +0x14 was wrong). The first two frames only clear:
// beginScene2D (vtable +0x14), clearBuffers(3) (+0xa8), endScene2D (+0x18), swapBuffers(0) (+0xa4). Later frames: beginScene2D; the splash blit
// C2DDriver::draw2DImage(driver, m_loadBackground, destination, source, no clip, no colour, false) with the destination the viewport of the current render
// target (the last entry of the driver's render target stack, +0x14..+0x23) and the source {0, 0, 0x500, 0x2F0}; the time since the last call is added
// to accumulatedTime, and above 25 ms the spinner advances (currentProgress + 1, back to 0 after cell 3) and accumulatedTime restarts; the spinner
// blit has the source cell {54 * col + 23, 56 * row + 0x318, 54 * col + 77, 56 * row + 0x350} (col = progress % 4, row = progress / 4) and the
// destination {width - 54, height - 56, width, height} of the viewport (the original builds the two corner values through a float round trip,
// which is the identity here); endScene2D and swapBuffers(0). Without a driver (no device) only the spinner timing runs; the original dereferences the driver.
void GS_InterruptLoading::Draw(const StateMachine*) {
    glitch::IDevice* device = ApplicationGetInstance().m_device;
    glitch::video::IVideoDriver* driver = device != nullptr ? device->videoDriver : nullptr;
    if (firstframe <= 1) {
        if (driver != nullptr) {
            driver->beginScene2D();
            driver->clearBuffers(3);
            driver->endScene2D();
            driver->swapBuffers(0);
        }
        return;
    }
    glitch::core::rect<std::int32_t> viewport;
    int hd = 1;
    if (driver != nullptr) {
        driver->beginScene2D();
        viewport = driver->m_renderTargets.back()->viewport();
        // Port: {0, 0, 0x500, 0x2F0} scaled for an HD-layer splash and fitted to the screen's shape (GSInit.cpp); the screen is
        // cleared first, as the art may not cover it all (the original only cleared the first two frames)
        driver->clearBuffers(1);
        glitch::core::rect<std::int32_t> destination = viewport;
        const glitch::core::rect<std::int32_t> splashSource = Dh2SplashSource(m_loadBackground.get(), viewport, hd, destination);
        Dh2DrawSplashBackdrop(driver, m_loadBackground, viewport, destination, hd);
        glitch::video::C2DDriver::draw2DImage(driver, m_loadBackground, destination, splashSource, nullptr, nullptr, false);
    }

    accumulatedTime += ApplicationGetInstance().GetDt();
    if (static_cast<unsigned int>(accumulatedTime) > 0x19u) {  // more than 25 ms
        const int previous = currentProgress;
        accumulatedTime = 0;
        ++currentProgress;
        if (previous == 3) {
            currentProgress = 0;  // the spinner has four cells
        }
    }

    if (driver != nullptr) {
        const int column = ((currentProgress % 4) + 4) % 4;
        const int row = currentProgress < 0 ? (currentProgress + 3) >> 2 : currentProgress >> 2;
        const std::int32_t width = viewport.LowerRightCorner.X - viewport.UpperLeftCorner.X;
        const std::int32_t height = viewport.LowerRightCorner.Y - viewport.UpperLeftCorner.Y;
        glitch::core::rect<std::int32_t> spinnerSource;
        spinnerSource.UpperLeftCorner.X = (0x36 * column + 0x17) * hd;   // port: * hd, the HD splash scale
        spinnerSource.UpperLeftCorner.Y = (0x38 * row + 0x318) * hd;
        spinnerSource.LowerRightCorner.X = (0x36 * column + 0x4D) * hd;
        spinnerSource.LowerRightCorner.Y = (0x38 * row + 0x350) * hd;
        glitch::core::rect<std::int32_t> spinnerDestination;
        spinnerDestination.UpperLeftCorner.X = width - 54;
        spinnerDestination.UpperLeftCorner.Y = height - 56;
        spinnerDestination.LowerRightCorner.X = width;
        spinnerDestination.LowerRightCorner.Y = height;
        glitch::video::C2DDriver::draw2DImage(driver, m_loadBackground, spinnerDestination, spinnerSource, nullptr, nullptr, false);
        driver->endScene2D();
        driver->swapBuffers(0);
    }
}

// 0x4176d4 GS_InterruptLoading::Ctor(StateMachine const*)
// Resets the first-frame counter, logs the start of the splash and sets InterLoad. The original also passes the
// machine pointer to the log call, but the format takes no argument, so it is not passed here.
void GS_InterruptLoading::Ctor(const StateMachine*) {
    firstframe = 0;
    _DEBUG_OUT("\n\n GS_InterruptLoading::Ctor ----> loading splash screen. \n");
    InterLoad = true;
}

// 0x417720 GS_InterruptLoading::GS_InterruptLoading()  (C1, complete-object constructor)
// 0x417768 GS_InterruptLoading::GS_InterruptLoading()  (C2, same body)
// The compiler stores the two vptrs (the primary at +0x00, the StateBase table at +0x04). The body only logs.
GS_InterruptLoading::GS_InterruptLoading() {
    _DEBUG_OUT("\n\n GS_InterruptLoading::GS_InterruptLoading(int,bool) \n");
}

// 0x4177b8 GS_InterruptLoading::~GS_InterruptLoading()  (D1, complete-object destructor)
// 0x417800 GS_InterruptLoading::~GS_InterruptLoading()  (D2, same body)
// The compiler resets the vptrs and runs the base destructors after this body. The log text has the original's typo
// (the "n" without a backslash) and is kept as it is.
GS_InterruptLoading::~GS_InterruptLoading() {
    _DEBUG_OUT("\n\n GS_InterruptLoading::~GS_InterruptLoading n\n");
}

// 0x417850 GS_InterruptLoading::~GS_InterruptLoading()  (D0, scalar deleting destructor)
// Skipped: compiler-generated. The original runs the D1 body above and then CustomFree(this). C++ delete emits it.

// 0x4179c8 GS_InterruptLoading::Update(StateMachine *,double)
// firstframe 0: only counts. firstframe 1: the driver resets its texture loader (vtable +0x44) and reinitialises (+0x38); the splash texture for
// the screen width (SplashFileForWidth, whatever the device class: the three device-class branches of the original are the same code) is fetched
// with CTextureManager::getTexture(name, name) and replaces m_loadBackground; the language 4 (Japanese) or 5 (Korean) splash then replaces it;
// then the loaded texture is checked: when it has pixel data and the flag 0x08 of its byte +0x3f it is unbound (ITexture vtable +0x10), the trace
// "TEXTURE FILE [name]" is written, and a texture without data traces "NO HAS DATA " and is unbound if its manager entry has a name and data,
// else "ERROR LOADING". firstframe becomes 2. From frame 2 on: driver->reloadTexturesData() (+0x3c); when it reports false the driver reloads its buffer
// map (+0x4c) and this state pops itself (StateMachine::PopState with the StateBase part of this). A null driver (no device) only counts frames; the
// original dereferences it.
void GS_InterruptLoading::Update(StateMachine*, double) {
    glitch::IDevice* device = ApplicationGetInstance().m_device;
    glitch::video::IVideoDriver* driver = device != nullptr ? device->videoDriver : nullptr;
    if (firstframe <= 1) {
        if (firstframe != 1 || driver == nullptr) {
            ++firstframe;
            return;
        }
        driver->resetTexturesLoader();
        driver->ReinitDriver();
        glitch::video::CTextureManager* manager = driver->m_textureManager;
        const char* splash = SplashFileForWidth(Width_Screen);
        m_loadBackground = manager->getTexture(splash, splash);
        const char* languageSplash = LanguageSplashFile(ApplicationGetInstance().m_savegameManager->getLanguage());
        if (languageSplash != nullptr) {
            m_loadBackground = manager->getTexture(languageSplash, languageSplash);
        }
        glitch::video::ITexture* texture = m_loadBackground.get();
        if (texture != nullptr) {
            if (texture->m_data != nullptr && (texture->m_flags3f & 0x08) != 0) {
                texture->unbindImpl();
            }
            _DEBUG_OUT("TEXTURE FILE [%s] \n", TextureTraceName(*manager, texture->m_id));
            if (texture->m_data == nullptr) {
                _DEBUG_OUT("NO HAS DATA ");
                if (TextureTraceName(*manager, texture->m_id) != nullptr) {
                    if ((texture->m_flags3f & 0x08) != 0) {
                        texture->unbindImpl();
                    }
                } else {
                    _DEBUG_OUT("ERROR LOADING");
                }
            }
        }
        firstframe = 2;
        return;
    }
    if (driver == nullptr) {
        return;
    }
    if (!driver->reloadTexturesData()) {
        driver->ReloadbufferMap();
        ApplicationGetInstance().m_stateMachine->PopState(static_cast<StateBase*>(this));
    }
}

// 0x417fe8 GS_InterruptLoading::Dtor(StateMachine const*)
// Logs, resumes the music that the pause path stopped (nativeResumeMusicBG), reads the device timer and the pause stamp, and
// sets the sound state: under JAVA_SOUNDS Resume_Sound_Interrupt is raised. With a sound manager: when the game is in the IGP
// or Game Center, or the current level (if any) is in game view, or the in-game menu is open, or the pause menu was pushed,
// the music resumes (500 ms fade) if Pause had it playing; otherwise, under JAVA_SOUNDS, both native volumes are reset (to the
// saved music and SFX volumes) and the saved music id resumes, and without JAVA_SOUNDS every sound resumes. Then the pause-menu
// flag is cleared, an online game that was paused for over 15 seconds, or whose state is not 2 with Wi-Fi off, schedules the
// return to the main menu, the splash texture is released and InterLoad is cleared.
void GS_InterruptLoading::Dtor(const StateMachine*) {
    _DEBUG_OUT("\n\n  GS_InterruptLoading::Dtor  ----> unloading splash screen. \n");
    if (Musicplayerpause) {
        _DEBUG_OUT("\n\n  in Resumeeeee    musicccccccccccccc \n");
        nativeResumeMusicBG();
        Musicplayerpause = false;
    }
    Application& application = ApplicationGetInstance();
    const unsigned int now = glitch::os::Timer::getRealTime();  // device timer, IDevice +0x20, getRealTime
    const unsigned int pauseTime = static_cast<unsigned int>(application.m_pauseTime);  // dword_99F7CC, +0xa0
    Level* level = application.GetCurrentLevel();
    if (JAVA_SOUNDS) {
        Resume_Sound_Interrupt = true;
    }

    if (VoxSoundManager::s_instance != nullptr) {
        if (application.IsInIGPOrGameCenter() ||
            (level != nullptr && (level->m_isInGameView || MenuBase::s_igmOpened || application.m_pauseMenuPushed))) {
            if (application.m_resumeMusic) {  // byte_99F7D2, +0xa6
                VoxSoundManager::s_instance->ResumeMusic(500);
            }
        } else if (JAVA_SOUNDS) {
            nativeSetVolumeBig(-1, music_volume, 1);
            nativeSetVolumeBig(-1, sfx_vfx_volume, 2);
            VoxSoundManager::s_instance->Resume(Save_Current_Music_ID);
        } else {
            VoxSoundManager::s_instance->ResumeAllSounds();
        }
    }

    application.m_pauseMenuPushed = false;  // +0xa5, cleared after the sound block
    if (GetOnlineGameFlag() &&
        (now - pauseTime > 15000 ||
         (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ != 2 && !application.IsWifiEnabled()))) {
        application.m_goToMainMenuPending = true;  // byte_99F7D6, +0xaa
    }

    m_loadBackground = nullptr;  // releases the splash texture; the counted pointer drops it when it was set
    InterLoad = false;
}
