// MenuConfirm, MenuConfirmBase and MenuFlash2DCamera bodies, batch g1-game-ui-pack3-9e17e4-0 (19 rows, the three classes).
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original 32-bit ARM offsets.
// MenuFlash2DCamera::Update is PARTIAL; its comment says which part is missing.
//
// Facts shared by the bodies:
//   - The compiler emits the vptr stores and the base class destructor calls, so a destructor whose original body only
//     does those is empty here.
//   - Each constructor or destructor pair with the same original body (C1 and C2, D1 and D2) is one C++ definition.
//     C1 and D1 are the complete-object variants, C2 and D2 the base-object variants (Itanium ABI names).
//   - The deleting destructors (D0) are compiler-generated and not rebuilt: delete emits them.

#include <array>
#include <cstdint>

#include "dh2/GameSWFUtils.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/MenuConfirm.hpp"
#include "dh2/MenuConfirmBase.hpp"
#include "dh2/MenuFlash2DCamera.hpp"
#include "dh2/Application.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/RenderFX.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/video_driver.hpp"
#include "dh2/global/screen_size.hpp"
#include <cstring>
#include <cstdio>
#include <cstdlib>
#include "gameswf/gameswf_root.h"
#include "gameswf/gameswf_sprite.h"

// ---------------------------------------------------------------------------------------------------------------------
// MenuConfirm

// 0x42aaa0 _ZN11MenuConfirmD1Ev (complete-object destructor)
// Empty in the original apart from the vptr store and the call of MenuConfirmBase::~MenuConfirmBase. The C++ destructor
// does both.
MenuConfirm::~MenuConfirm() {}

// 0x42aaf0 _ZN11MenuConfirmD2Ev (base-object destructor)
// Same body as 0x42aaa0. One C++ destructor serves both.

// 0x42aad4 _ZN11MenuConfirmD0Ev (deleting destructor)
// Not written: the compiler emits the deleting destructor for a delete expression. It runs ~MenuConfirm, then the
// storage release (CustomFree in the original).

// 0x42acb8 _ZN11MenuConfirmC1Ev (complete-object constructor)
// MenuConfirmBase("menu_confirm"), then the vptr store, which the compiler emits.
// 0x42ad80 _ZN11MenuConfirmC2Ev (base-object constructor): same body, one C++ constructor serves both.
MenuConfirm::MenuConfirm() : MenuConfirmBase("menu_confirm") {}

// 0x42acf8 _ZN11MenuConfirm11GetInstanceEv
// The original builds the function-local static MenuConfirm::GetInstance(void)::mc behind a guard variable
// (__cxa_guard_acquire, then __cxa_guard_release) and registers ~MenuConfirm with __aeabi_atexit. A C++ function-local
// static does exactly that, so the static stays as written.
MenuConfirm* MenuConfirm::GetInstance() {
    static MenuConfirm mc;
    return &mc;
}

// ---------------------------------------------------------------------------------------------------------------------
// MenuConfirmBase

// 0x42ab24 _ZN15MenuConfirmBaseC1EPKc (complete-object constructor)
// 0x42ab6c _ZN15MenuConfirmBaseC2EPKc (base-object constructor): same body, one C++ constructor serves both.
// MenuBase(name), m_savedFlags cleared, the vptr store (compiler), then MenuManager::GetInstance()->RegisterMenu(this).
MenuConfirmBase::MenuConfirmBase(const char* name) : MenuBase(name) {
    m_savedFlags = 0;
    MenuManager::GetInstance()->RegisterMenu(this);
}

// 0x42a998 _ZN15MenuConfirmBaseD1Ev (complete-object destructor)
// 0x42a9e8 _ZN15MenuConfirmBaseD2Ev (base-object destructor): same body, one C++ destructor serves both.
// Empty in the original apart from the vptr store and the call of MenuBase::~MenuBase. The C++ destructor does both.
MenuConfirmBase::~MenuConfirmBase() {}

// 0x42a9cc _ZN15MenuConfirmBaseD0Ev (deleting destructor)
// Not written: compiler-generated, see the note at the top of the file.

// 0x42a95c _ZN15MenuConfirmBase4ShowEv
// Looks up the menu below this one by its name (this+8, the MenuFX::State name), unregisters it as a listener, runs
// MenuBase::Show, then saves the owning MenuFX's flags word (RenderFX +0xf8) in m_savedFlags (+0xc4).
// The original returns the MenuBase::Show result. The void override drops it, as the virtual slot is void.
void MenuConfirmBase::Show() {
    MenuManager* manager = MenuManager::GetInstance();
    MenuBase* below = manager->GetMenuBelow(m_name);
    manager->UnRegisterListener(below);
    MenuBase::Show();
    m_savedFlags = m_menu->m_flags;
}

// 0x42a92c _ZN15MenuConfirmBase4HideEv
// Looks up the menu below this one by its name, registers it as a listener again, then runs MenuBase::Hide.
// The original returns the MenuBase::Hide result. The void override drops it, as the virtual slot is void.
void MenuConfirmBase::Hide() {
    MenuManager* manager = MenuManager::GetInstance();
    MenuBase* below = manager->GetMenuBelow(m_name);
    manager->RegisterListener(below);
    MenuBase::Hide();
}

// ---------------------------------------------------------------------------------------------------------------------
// MenuFlash2DCamera

// 0x42cc50 _ZN17MenuFlash2DCameraC2EP6MenuFX (base-object constructor)
// 0x42ccd0 _ZN17MenuFlash2DCameraC1EP6MenuFX (complete-object constructor): same body, one C++ constructor serves both.
// Stores the menu (+0x04), clears the limit clip (+0x08), centres the camera on the screen (+0x1c, +0x20) and zeroes the
// position and the target (+0x24 .. +0x30). The original does not write the clip bounds (+0x0c .. +0x18), so they are
// left unset here as well.
MenuFlash2DCamera::MenuFlash2DCamera(MenuFX* menu)
    : m_menu(menu),
      m_limitClip(nullptr),
      m_centerX(Width_Screen / 2),
      m_centerY(Height_Screen / 2),
      m_x(0),
      m_y(0),
      m_targetX(0),
      m_targetY(0) {}

// 0x42ca88 _ZN17MenuFlash2DCameraD1Ev (complete-object destructor)
// Empty in the original (bx lr): the camera owns neither its menu nor its clip.
MenuFlash2DCamera::~MenuFlash2DCamera() {}

// 0x42cd50 _ZN17MenuFlash2DCameraD0Ev (deleting destructor)
// Not written: compiler-generated. The original stores the vptr and then calls CustomFree on the object, which is what
// delete does for this class.

// 0x42cd84 _ZN17MenuFlash2DCamera6UpdateEv
// The position m_x and m_y eases toward the targets (each step at least one unit, never past the target). With a limit clip the
// position is clamped so the clip bounds cover the screen (left and top, then right and bottom, with the screen size read from the
// last render target of the video driver); then the menu viewport and bounds are set. The original returns the SetBounds result,
// which every caller ignores, so the void signature stays.
// The screen size is read INSIDE the limit-clip branch because that is the only place the original uses it (the listing loads
// the render target's width and height at the start of the guarded block, 0x42ce1c/0x42ce20/0x42ce24, after `if (limitClip)` at
// 0x42ce04). Reading it unconditionally dereferences Application::m_device, which the menu tests do not build.
void MenuFlash2DCamera::Update() {
    // Ease x toward the target: one step is at least one unit and never passes the target.
    if (m_x >= m_targetX) {
        if (m_x > m_targetX) {
            m_x = ~((m_x - m_targetX) / 10) + m_x;
        }
    } else {
        m_x = m_x + 1 + (m_targetX - m_x) / 10;
    }

    // Ease y toward the target, the same way.
    if (m_y >= m_targetY) {
        if (m_y > m_targetY) {
            m_y = ~((m_y - m_targetY) / 10) + m_y;
        }
    } else {
        m_y = m_y + 1 + (m_targetY - m_y) / 10;
    }

    // First-boot fix (re-read from IDA 0x42cd84): the screen size is read unconditionally, before the limit-clip test (0x42ce1c-0x42ce24).
    // The port read it only inside the branch, so without a limit clip SetViewport/SetBounds got 0x0 and every menu movie drew nothing (NaN matrices).
    std::int32_t width = 0;
    std::int32_t height = 0;
    {
        glitch::IDevice* device = ApplicationGetInstance().m_device;
        if (device != nullptr && device->videoDriver != nullptr) {
            const glitch::video::IRenderTarget* target = device->videoDriver->m_renderTargets.back().get();
            width = target->m_width;    // element +0x0c
            height = target->m_height;  // element +0x10
        }
    }
    if (m_limitClip != nullptr) {
        // Left and top clamps: the eased position may not pass minus the clip's xmin and ymin.
        const auto minX = static_cast<std::int32_t>(m_clipMinX);
        if (minX + m_x > 0) {
            m_x = -minX;
        }
        const auto minY = static_cast<std::int32_t>(m_clipMinY);
        if (minY + m_y > 0) {
            m_y = -minY;
        }
        const auto maxX = static_cast<std::int32_t>(m_clipMaxX);
        if (width > maxX + m_x) {
            m_x = width - maxX;
        }
        const auto maxY = static_cast<std::int32_t>(m_clipMaxY);
        if (height > maxY + m_y) {
            m_y = height - maxY;
        }
    }
    m_menu->SetViewport(0, 0, width, height);
    // Port deviation (UI12; TRACK-B.md decision 15): the menu movies are stretched over the whole surface exactly as in the original
    // (scale mode 0); on a known screen ratio the hand-written rules of ui_layouts.txt restore the shape of named elements
    // (MenuPageLayoutUpdate, game-ui/src/screen_fit_pages.cpp). Only the HUD movie gets its own box: the 16:9 fit scaled by
    // HudScalePercent() about the surface centre, its corners re-anchored to the real edges by HudAnchorUpdate.
    std::int32_t boxX = 0, boxY = 0, boxW = width, boxH = height;
    MenuManager* manager = MenuManager::GetInstance();
    const bool isHud = manager != nullptr && manager->m_multiMenuManager != nullptr && m_menu == manager->GetHUDRoot();  // (menu tests: a zeroed manager)
    if (isHud && ScreenUsesAspectFit() && width > 0 && height > 0 && !HudMoviePageUp()) {  // (the pause page: stretched like the menus)
        std::int32_t fitW = width, fitH = height;
        if (static_cast<std::int64_t>(width) * 9 > static_cast<std::int64_t>(height) * 16) {
            fitW = height * 16 / 9;
        } else if (static_cast<std::int64_t>(width) * 9 < static_cast<std::int64_t>(height) * 16) {
            fitH = width * 9 / 16;
        }
        const std::int32_t percent = HudScalePercent();
        boxW = fitW * percent / 100;
        boxH = fitH * percent / 100;
        boxX = (width - boxW) / 2;
        boxY = (height - boxH) / 2;
    }
    m_menu->SetBounds(m_x + boxX, m_y + boxY, boxW, boxH, static_cast<gameswf::scale_mode>(0));
    SetFlashBoxForRoot(m_menu->GetRoot(), boxX, boxY, boxW, boxH);
}

// 0x42cf30 _ZN17MenuFlash2DCamera12SetLimitClipEPN7gameswf9characterE
// Stores the clip. For a non-null clip it copies the clip's absolute bounding rect into the four clip words: xmin, xmax,
// ymin and ymax, in that order. A null clip leaves the last bounds in place. The original's r0 at return is register
// residue (the xmin word, or the camera pointer for a null clip), so the function is void.
void MenuFlash2DCamera::SetLimitClip(gameswf::character* clip) {
    m_limitClip = clip;
    if (clip != nullptr) {
        const std::array<float, 4> rect = GameSWFUtils::GetAbsoluteBoundingRect(clip);
        m_clipMinX = rect[0];
        m_clipMaxX = rect[1];
        m_clipMinY = rect[2];
        m_clipMaxY = rect[3];
    }
}
