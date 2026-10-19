// Batch g1-game-app-GSInit-78f1fa-0 (GSInit, part 1 of 1: all 11 functions of the class).
// Rebuilt from the Hex-Rays pseudocode. Member offsets are the original 32-bit ones (dh2/GSInit.hpp).
//
// Status of each function is in game-app/ledger.d/g1-game-app-GSInit-78f1fa-0.csv. In short:
//   reconstructed  the constructors, the destructor copies that are not deleting, Dtor, Ctor and Draw.
//   partial        ClearLoadingScreen, SwitchBackground and Update. Draw was partial on the video driver
//                  (IDevice +0x10), which is now declared; the remaining three still wait on the device timer
//                  (IDevice +0x20) or a class header that is not in the tree yet. Each PARTIAL comment names
//                  the missing piece.
//   skipped        the deleting destructor (D0), which the compiler emits.
//
// Globals the original reads. Their definitions belong to the globals batch.
// The unnamed IDA globals (dword_99F7F8, dword_99F7FC, byte_99F819, byte_99FC31, dword_9A247C, dword_9A24C0)
// have no symbol in the ELF table and are not declared here; the PARTIAL comments name them.
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <unistd.h>
#endif
#include <cstdlib>

#include "core-platform/debug_out.hpp"
#include "core-platform/device.hpp"
#include "dh2/Application.hpp"
#include "dh2/GSFlashMenu.hpp"
#include "dh2/GSInit.hpp"
#include <string>
#include <vector>
#include "dh2/global/Globals.hpp"
#include "glitch-video/c2d_driver.hpp"   // C2DDriver::draw2DImage (driver, texture, destination, source, clip, colors, alpha)
#include "glitch-video/render_target.hpp"  // IRenderTarget::viewport() (+0x14, the splash draw's screen rect)
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-core-io/os/device.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/a_license_check.hpp"
#include "net-session-online/cxplayer_manager.hpp"
#include "net-session-online/game_center.hpp"
#include "core-platform/gc_singleton.hpp"
#include "core-platform/w7_console_01.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/Random.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/texture.hpp"          // glitch::video::ITexture, complete for the counted intrusive_ptr release
#include "pydata-accessors/w7_pydata12.hpp"

extern bool videoDone;               // ELF videoDone, 1-byte .bss. Set by the intro movie callback.
extern int Width_Screen;             // ELF Width_Screen, 4-byte .data. Screen width, chooses the splash file.
extern bool USE_NATIVE_DRM_GAME;     // ELF USE_NATIVE_DRM_GAME, 1-byte .bss.

// ELF nativeLoadMovie (C linkage, no header in the tree). The prototype is taken from its call sites:
// a movie file name and the language index. The original does not use a result.
extern "C" void nativeLoadMovie(const char* movie, int language);

// 0x3847fc GSInit::GSInit()
GSInit::GSInit() {
    m_step = 0;                      // +0x04 loading step, 0 at the start
    unk_08 = -1;                     // +0x08 spinner state: negative while the spinner runs
    // +0x10 m_splashTexture starts null (the original stores 0 there).
}

// 0x384834 GSInit::GSInit()
// C2 copy of 0x3847fc with the same body. The one definition above serves both addresses.

// 0x38486c GSInit::Dtor(StateMachine const*)
// The original body is empty (asm: BX LR).
void GSInit::Dtor(const StateMachine*) {}

// Port addition (remaster). The splash screens (GSInit, GS_InterruptLoading) blit texels (0, 0, 1280, 752) of the 2048-wide
// splash art and the spinner cells below it. An HD-layer splash (data/hd/, 3x) is larger, so the rects scale by its width / 2048
// (`hd`, 1 with the original data); without it the screen showed the art's top-left third. The original stretched the art over
// the screen. Here the proportions are kept: a wider screen shows the whole art at the screen's height, centred, over a dimmed
// enlarged copy (Dh2DrawSplashBackdrop); a taller screen is covered (centre crop). `destination` receives the screen rect.
glitch::core::rect<std::int32_t> Dh2SplashSource(const glitch::video::ITexture* texture, const glitch::core::rect<std::int32_t>& viewport,
                                                 int& hd, glitch::core::rect<std::int32_t>& destination) {
    hd = texture != nullptr && texture->m_width > 2048 ? static_cast<int>(texture->m_width / 2048) : 1;
    destination = viewport;
    const int vw = viewport.LowerRightCorner.X - viewport.UpperLeftCorner.X;
    const int vh = viewport.LowerRightCorner.Y - viewport.UpperLeftCorner.Y;
    if (vw > 0 && vh > 0) {
        if (vw * 752 > vh * 1280) {
            const int w = vh * 1280 / 752;
            destination.UpperLeftCorner.X = viewport.UpperLeftCorner.X + (vw - w) / 2;
            destination.LowerRightCorner.X = destination.UpperLeftCorner.X + w;
        } else {
            // a taller screen is covered (centre crop of the width): a dimmed copy above and below would repeat the logo
            const int srcW = 752 * vw / vh, srcX = (1280 - srcW) / 2;
            return glitch::core::rect<std::int32_t>{srcX * hd, 0, (srcX + srcW) * hd, 752 * hd};
        }
    }
    return glitch::core::rect<std::int32_t>{0, 0, 1280 * hd, 752 * hd};
}

// Port addition (remaster): where the fitted splash does not cover the screen, the same art enlarged to cover it (centre crop) and
// darkened goes underneath, so the sides are a dim continuation of the picture instead of black bars.
void Dh2DrawSplashBackdrop(glitch::video::IVideoDriver* driver, const boost::intrusive_ptr<glitch::video::ITexture>& texture,
                           const glitch::core::rect<std::int32_t>& viewport, const glitch::core::rect<std::int32_t>& destination, int hd) {
    if (driver == nullptr || !texture || (destination.UpperLeftCorner.X == viewport.UpperLeftCorner.X &&
                                          destination.LowerRightCorner.X == viewport.LowerRightCorner.X &&
                                          destination.UpperLeftCorner.Y == viewport.UpperLeftCorner.Y &&
                                          destination.LowerRightCorner.Y == viewport.LowerRightCorner.Y)) {
        return;
    }
    const int vw = viewport.LowerRightCorner.X - viewport.UpperLeftCorner.X;
    const int vh = viewport.LowerRightCorner.Y - viewport.UpperLeftCorner.Y;
    if (vw <= 0 || vh <= 0) return;
    int srcW = 1280, srcH = 752;
    if (vw * 752 > vh * 1280) {
        srcH = 1280 * vh / vw;
    } else {
        srcW = 752 * vw / vh;
    }
    const int srcX = (1280 - srcW) / 2, srcY = (752 - srcH) / 2;
    const glitch::core::rect<std::int32_t> source{srcX * hd, srcY * hd, (srcX + srcW) * hd, (srcY + srcH) * hd};
    glitch::video::SColor dim[4];
    for (glitch::video::SColor& c : dim) c.color = 0xFF3A3A3Au;
    glitch::video::C2DDriver::draw2DImage(driver, texture, viewport, source, nullptr, dim, false);
}

// 0x384a4c GSInit::Draw(StateMachine const*)
// The whole body, checked against the asm (0x384a4c). The driver is Application::m_device (+0x10) -> videoDriver
// (IDevice +0x10), which IDevice now declares.
//   frame start (0x384a70..0x384aa0): driver vtable +0x0c beginScene(), +0xa8 clearBuffers(1), +0x14 beginScene2D()
//   splash (0x384ab0..0x384af4): the current render target is the last entry of the driver's target stack
//     (LDR R3,[R4,#0xCC]; LDR R2,[R3,#-4]); its viewport rect is at +0x14 (R2+0x14). The source rect is
//     (0, 0, 1280, 752) and the destination is that viewport; the call is the static
//     glitch::video::C2DDriver::draw2DImage(driver, texture, destination, source, null clip, null colors, false)
//   spinner (0x384b04 onwards, only while unk_08 < 0): the timing and the cell arithmetic as before, with the
//     destination rect (W - cellW, H - cellH, W, H) taken from the viewport's lower-right corner
//     (v20[7]-v20[5] and v20[8]-v20[6] are rect right-left and bottom-top) and the source rect
//     (srcLeft, srcTop, srcRight, srcBottom); then the same draw2DImage
//   frame end (0x384b04..0x384b3c): driver vtable +0x18 endScene2D(), +0x10 endScene(), +0xa4 swapBuffers(0)
// The original's return is swapBuffers' result; the StateBase Draw slot is void, so it is dropped.
void GSInit::Draw(const StateMachine*) {
    glitch::video::IVideoDriver* const driver = ApplicationGetInstance().m_device->videoDriver;
    driver->beginScene();      // vtable +0x0c
    driver->clearBuffers(1);   // vtable +0xa8
    driver->beginScene2D();    // vtable +0x14

    if (m_splashTexture) {
        // The original dereferences the target stack unconditionally; the port keeps a guard for an empty stack.
        if (!driver->m_renderTargets.empty()) {
            const glitch::core::rect<std::int32_t>& viewport = driver->m_renderTargets.back()->viewport();
            // Port: splash source and screen rects for an HD-layer texture and a screen of another shape (Dh2SplashSource above)
            int hd = 1;
            glitch::core::rect<std::int32_t> screenRect = viewport;
            const glitch::core::rect<std::int32_t> splashSource = Dh2SplashSource(m_splashTexture.get(), viewport, hd, screenRect);
            Dh2DrawSplashBackdrop(driver, m_splashTexture, viewport, screenRect, hd);
            glitch::video::C2DDriver::draw2DImage(driver, m_splashTexture, screenRect, splashSource, nullptr, nullptr,
                                                  false);
            if (unk_08 < 0) {
                // Function-local statics in the original (GSInit::Draw(...)::accumulatedTime and ::currentProgress).
                static int accumulatedTime = 0;
                static int currentProgress = 0;

                accumulatedTime += ApplicationGetInstance().GetDt();
                if (static_cast<unsigned int>(accumulatedTime) > 0x19u) {
                    accumulatedTime = 0;
                    currentProgress = (currentProgress == 12) ? 0 : currentProgress + 1;
                }

                // The original asks Device::IsIphoneHighRez() four times, in this order. The answers pick the origin
                // and the size of one spinner cell in the splash texture.
                const int originX = Device::IsIphoneHighRez() ? 23 : 770;   // first answer
                const int originY = Device::IsIphoneHighRez() ? 792 : 770;  // second answer
                const int cellW = Device::IsIphoneHighRez() ? 54 : 64;      // third answer
                const int cellH = Device::IsIphoneHighRez() ? 56 : 64;      // fourth answer

                // Column is currentProgress % 4; row is the adjusted frame >> 2 (the adjust only matters for negative
                // progress, which the original never reaches).
                int frame = currentProgress;
                if (currentProgress < 0) {
                    frame = currentProgress + 3;
                }
                const int srcLeft = originX + (currentProgress % 4) * cellW;
                const int srcTop = originY + (frame >> 2) * cellH;
                const int srcRight = srcLeft + cellW;
                const int srcBottom = srcTop + cellH;
                const glitch::core::rect<std::int32_t> spinnerSource{srcLeft * hd, srcTop * hd, srcRight * hd, srcBottom * hd};

                // Destination: the cell-sized box in the viewport's bottom-right corner. The original computes
                // (int)((float)(right - left) - cellW) and the same for the height, which is the plain subtraction.
                const int width = viewport.LowerRightCorner.X - viewport.UpperLeftCorner.X;   // v20[7] - v20[5]
                const int height = viewport.LowerRightCorner.Y - viewport.UpperLeftCorner.Y;  // v20[8] - v20[6]
                const glitch::core::rect<std::int32_t> spinnerDest{width - cellW, height - cellH, width, height};
                glitch::video::C2DDriver::draw2DImage(driver, m_splashTexture, spinnerDest, spinnerSource, nullptr,
                                                      nullptr, false);
            }
        }
    }

    driver->endScene2D();  // vtable +0x18
    driver->endScene();    // vtable +0x10
    driver->swapBuffers(0);  // vtable +0xa4
}

// 0x384db8 GSInit::~GSInit()
// 0x384e58 GSInit::~GSInit()
// The D2 and D1 copies have the same body. The original sets the vtable to GSInit's, then releases
// m_splashTexture (+0x10) when it is set. The intrusive_ptr member does that release when the members are
// destroyed after this body, through the same drop() call.
GSInit::~GSInit() {}

// 0x384e98 GSInit::~GSInit() (deleting destructor D0)
// Skipped: compiler-generated. It runs the D1 body above and then CustomFree(this). C++ delete emits it.

// 0x384e30 GSInit::Ctor(StateMachine const*)
// The original returns this (or the drop() result), and StateBase's slot is void, so the return is dropped.
void GSInit::Ctor(const StateMachine*) {
    m_splashTexture = nullptr;       // +0x10 cleared, then the old texture (if any) is released
    m_step = 0;                      // +0x04
    unk_08 = -1;                     // +0x08
}

// 0x384ef0 GSInit::ClearLoadingScreen(void)
// Logs. When the splash texture is set it is removed from the driver's texture manager (IVideoDriver +0xe0), which also clears
// this smart pointer, the pointer is cleared and the spinner flag (+0x08) is set to -1.
void GSInit::ClearLoadingScreen() {
    _DEBUG_OUT("----------------ClearLoadingScreen");
    if (m_splashTexture) {
        ApplicationGetInstance().m_device->videoDriver->m_textureManager->removeTexture(m_splashTexture);
        m_splashTexture = nullptr;   // +0x10 released
        unk_08 = -1;                 // +0x08
    }
}

// 0x384f64 GSInit::SwitchBackground(void)
// Clears the loading screen on the static instance (GSInit::s_inst, not this) and loads the splash file for the language
// (Korean gets splash_final_kor.tga, every other language splash_final.tga; the Japanese branch of the original loads the same
// file as the default) through the driver's texture manager (getTexture(file, null)). The result is stored in GSInit::s_inst's
// splash texture (dword_9A24C0, +0x10) as a counted pointer.
void GSInit::SwitchBackground() {
    GSInit::s_inst.ClearLoadingScreen();
    const int language = ApplicationGetInstance().m_savegameManager->getLanguage();
    const char* textureFile = (language == 5) ? "data/3d/textures/splash_final_kor.tga"
                                              : "data/3d/textures/splash_final.tga";
    glitch::video::CTextureManager* textures = ApplicationGetInstance().m_device->videoDriver->m_textureManager;
    GSInit::s_inst.m_splashTexture = textures->getTexture(textureFile, nullptr);
}

// 0x3850c8 GSInit::Update(StateMachine *,double)
// One loading step per call, selected by m_step (+0x04). A step that advances ends with ++m_step, as the original's LABEL_22 does.
// The data loads (PyDataConstants, PyDataArrays) and the menu init repeat inside one call until they succeed or 50 ms of the
// device timer have passed. Steps: 0 sound manager created, 1 settings (language) loaded, 2 and 3 pydata constants and arrays,
// 4 full settings, 5 intro movie, 6 wait for the video, 7 splash texture, 8 and 9 sound init, 10 string pack, 11 trophies,
// 12 menu init, 13 random seed and clock, 14 menu reset, first menu, orientation, online and DRM start-up.
void GSInit::Update(StateMachine*, double) {
    Application& app = ApplicationGetInstance();
#ifdef DH2_BOOT_DEBUG
    { static int lastLogged = -1; if (m_step != lastLogged) { lastLogged = m_step; _DEBUG_OUT("GSInit step %d", m_step); } }  // first-boot trace
#endif

    switch (m_step) {
        case 0:
            VoxSoundManager::CreateInstance();
            ++m_step;
            return;

        case 1:
            app.m_savegameManager->loadSettings(true);
            ++m_step;
            return;

        case 2: {
            const unsigned int start = glitch::os::Timer::getRealTime();  // device timer (IDevice +0x20), getRealTime
            while (!app.m_pyDataConstants->Load()) {
                if (glitch::os::Timer::getRealTime() - start > 49) {
                    return;
                }
            }
            ++m_step;
            return;
        }

        case 3: {
            const unsigned int start = glitch::os::Timer::getRealTime();
            while (!app.m_pyDataArrays->Load()) {
                if (glitch::os::Timer::getRealTime() - start > 49) {
                    return;
                }
            }
            ++m_step;
            return;
        }

        case 4:
            // The original calls loadSettings(false) only when SavegameManager::m_optionsLoaded (+0x28) is clear, and
            // the step advances either way (asm: both paths store step + 1).
            if (!app.m_savegameManager->m_optionsLoaded) {
                app.m_savegameManager->loadSettings(false);
            }
            ++m_step;
            return;

        case 5: {
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
            // V1 debug aid: a file named dh2_skipvideo in the data dir skips the intro movie (the Java video activity is not started)
            if (access("/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/dh2_skipvideo", 0) == 0) { videoDone = true; ++m_step; return; }
#endif
            const int language = app.m_savegameManager->getLanguage();
            if (language == 4) {
                nativeLoadMovie("intro_jp.mp4", language);
            } else if (language == 5) {
                nativeLoadMovie("intro_kr.mp4", language);
            } else {
                nativeLoadMovie("intro.mp4", language);
            }
            ++m_step;
            return;
        }

        case 6:
            if (videoDone) {
                m_step = 7;
            }
            return;

        case 7: {
            glitch::video::CTextureManager* textures = app.m_device->videoDriver->m_textureManager;  // IVideoDriver +0xe0
            const int language = app.m_savegameManager->getLanguage();
            _DEBUG_OUT("\n\n  ---------------LoadingStep_LoadBackground   %d", language);
            // The file depends on the language first, and then on the screen width.
            const char* textureFile;
            if (language == 4) {
                textureFile = "data/3d/textures/splash_final_jp.tga";
            } else if (language == 5) {
                textureFile = "data/3d/textures/splash_final_kor.tga";
            } else if (Width_Screen == 800) {
                textureFile = "data/3d/textures/splash_final_i9000.tga";
            } else if (Width_Screen == 854) {
                textureFile = "data/3d/textures/splash_final_droid.tga";
            } else {
                textureFile = "data/3d/textures/splash_final.tga";
            }
            m_splashTexture = textures->getTexture(textureFile, nullptr);
            ++m_step;
            return;
        }

        case 8:
            m_step = 9;
            return;

        case 9:
            VoxSoundManager::s_instance->Initialize();
            [[fallthrough]];

        case 10: {
            StringManager* strings = app.m_stringManager;
            strings->switchPack(static_cast<unsigned int>(app.m_savegameManager->getLanguage()), false);
            ++m_step;
            return;
        }

        case 11:
            TrophyManager::CreateInstance();
            TrophyManager::s_instance->Init();          // virtual slot 0 of the TrophyManager vtable
            TrophyManager::s_instance->LoadTrophies();
            ++m_step;
            return;

        case 12: {
            MenuManager* menus = MenuManager::GetInstance();
            const unsigned int start = glitch::os::Timer::getRealTime();
            while (!menus->Init()) {
                if (glitch::os::Timer::getRealTime() - start > 49) {
                    return;
                }
            }
            ++m_step;
            return;
        }

        case 13:
            Random::s_seed = glitch::os::Timer::getRealTime();
            Random::s_syncedSeed = 0;
            app.m_lastTickTime = static_cast<int>(glitch::os::Timer::getRealTime());  // dword_99F79C, +0x70
            app.unk_6c = 30;                            // +0x6c, 30 as the original does (dword_99F798)
            app.ComputeDt();
            ++m_step;
            return;

        case 14: {
            MenuManager* menus = MenuManager::GetInstance();
            menus->Reset();
            app.unk_ed = true;  // byte_99F819 (Application +0xed)
            if (app.m_uncompiledData.empty()) {
                // No uncompiled data: the language menu when the save is blocked (the language is not chosen yet), else the splash.
                GSFlashMenu::s_inst.m_pendingMenu =
                    app.m_savegameManager->m_saveBlocked ? menus->GetMenuByName("menu_language") : menus->GetMenuByName("menu_splash");
            } else {
                // A debug level request: the first start tries the named level, and when it starts the step advances at once.
                const std::vector<std::string> savegames = PlayerSavegame::SG_GetSavegameList(false);
                if (Console::DBG_TryStartingLevel(app.m_uncompiledData.c_str())) {
                    ++m_step;
                    return;
                }
                GSFlashMenu::s_inst.m_pendingMenu = menus->GetMenuByName("menu_splash");
            }
            OnlineSingleton<OnlineGameState>::GetInstance()->flag26_ = false;  // +0x26
            app.m_stateMachine->SwitchState(&GSFlashMenu::s_inst, false);
            const int autoOrientation = app.GetSavedOption("AutoOrientation");
            app.ResetOrientation(autoOrientation);
            GCSingleton<GameCenter>::GetInstance()->resultFlag_ = true;  // +0x0e
            if (app.IsInternetAccessEnabled()) {
                Singleton<CXPlayerManager>::s_inst.flag05_ = true;  // byte_99FC31, +0x05
                Singleton<CXPlayerManager>::s_inst.Init();
            }
            if (USE_NATIVE_DRM_GAME) {
                ALicenseCheck::ValidateServer(false);  // ALicenseCheck_ValidateLicense(0), a thunk to this
            }
            ++m_step;
            return;
        }

        default:
            std::exit(-1);
            return;
    }
}
