#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include "core-platform/debug_out.hpp"
#endif
// HUDControls bodies, batch g1-game-ui-HUDControls-fd602c-0.
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original 32-bit
// ARM offsets. Partial functions say in their comment which part is missing; the ledger notes repeat it.
//
// Layout facts used here (dh2/HUDControls.hpp):
//   m_defaultWorldA (+0x674) and m_defaultWorldB (+0x6cc) hold 22 words each: (x, y) per layout element, in the
//   order LayoutElement lists them. The words are float bit patterns copied from the world matrix.
//   m_classicPos (+0x724) and m_stylePos (+0x77c) are float[11][2] in the same order.
//   gameswf::matrix m_[2][3]: the original's +8 word is m_[0][2] (x translation), its +20 word is m_[1][2].
//   Level +0x198 is Level::m_isInGameView, Level +0x1a8 is Level::unk_1a8 (both declared in dh2/Level.hpp).
//   Character +0x378 is the v2Controllable::m_controller base member, +0x149c is m_cursorFX.
//   AnimatedFX +0x34, +0x38, +0x3c are unk_34, unk_38, unk_3c (float bit patterns of the position offset).
//
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <cstdlib>

#include "dh2/HUDControls.hpp"

#include <cmath>

#include "dh2/AnimatedFX.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/EvTouchScreenMove.hpp"
#include "dh2/EvTouchScreenPress.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/IEvent.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "dh2/MenuWorldMap.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/GSFlashMenu.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/v2Controller.hpp"
#include "core-platform/port_settings.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_root.h"
#include "gameswf/gameswf_sprite.h"
#include "dh2/global/screen_size.hpp"

namespace {

// Elements in the custom layout: the joystick, the interact button, the spell and skill buttons, the character and
// main menu buttons, the health bar, the potion button and the iTunes controls.
constexpr int kLayoutCount = 11;
int g_hudSelectedElement = -1;  // layout index selected on the customise page, -1 none (UI6)

}  // namespace
// UI6 (defined below, global): the per-element size pass; released before the layout is read (SaveHUDPos, CaptureDefaults).
void HudScaleRelease();
void HudScaleReset();
void HudScaleApply(MenuFX* hud);
void HudLayoutRelease(MenuFX* hud);
namespace {

// The layout element with the given index, in the order of m_classicPos / m_stylePos and of the default words:
// m_joystick (+0x4c), m_btnInteract (+0x88), m_posBtnSpell (+0x3b8), m_posBtnSkill1 (+0x3e8), m_posBtnSkill2
// (+0x418), m_posBtnSkill3 (+0x448), m_posBtnCharacterMenu (+0x478), m_posHealthBar (+0x4d8), m_posBtnMainMenu
// (+0x4a8), m_posBtnPotion (+0x508), m_posItunesControls (+0x568). The health bar comes before the main menu button
// in the original, as the offsets of their cached words show.
DebugCachedCharacter& LayoutElement(HUDControls& h, int index) {
    switch (index) {
        case 0: return h.m_joystick;
        case 1: return h.m_btnInteract;
        case 2: return h.m_posBtnSpell;
        case 3: return h.m_posBtnSkill1;
        case 4: return h.m_posBtnSkill2;
        case 5: return h.m_posBtnSkill3;
        case 6: return h.m_posBtnCharacterMenu;
        case 7: return h.m_posHealthBar;
        case 8: return h.m_posBtnMainMenu;
        case 9: return h.m_posBtnPotion;
        default: return h.m_posItunesControls;
    }
}

// (float)(int)(float)(v / 20.0): the grid step SetHUDPos applies to each coordinate it moves to.
float GridStep(float v) {
    return static_cast<float>(static_cast<int>(static_cast<float>(v / 20.0)));
}

std::uint32_t FloatBits(float value) {
    std::uint32_t bits;
    std::memcpy(&bits, &value, sizeof bits);
    return bits;
}

float BitsToFloat(std::uint32_t bits) {
    float value;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

// The translation of a character world matrix, the +8 and +20 words in the original (get_world_matrix().m_[0][2] and
// m_[1][2]). Returns false for a missing character.
bool WorldTranslation(gameswf::character* character, float& x, float& y) {
    if (character == nullptr) {
        return false;
    }
    const gameswf::matrix* world = character->get_world_matrix();
    x = world->m_[0][2];
    y = world->m_[1][2];
    return true;
}

// The character a RenderFX::Find(name) result names: the as_object is the character base.
gameswf::character* FoundCharacter(MenuFX* menu, const char* name) {
    return static_cast<gameswf::character*>(menu->Find(name));
}

// Identity of an as_object* and a character*.
bool SameObject(const gameswf::as_object* object, const gameswf::character* character) {
    return static_cast<const void*>(object) == static_cast<const void*>(character);
}

// Stores the (x, y) of every layout element as 22 words (the m_defaultWorldA / m_defaultWorldB capture). Returns
// false when a translation could not be read, and then the words are not complete.
bool CaptureDefaults(HUDControls& h, std::uint32_t (&words)[2 * kLayoutCount]) {
    HudScaleRelease();  // UI6: the element sizes shift the matrices; read the layout without them
    bool complete = true;
    for (int i = 0; i < kLayoutCount; ++i) {
        float x = 0.0f;
        float y = 0.0f;
        if (!WorldTranslation(LayoutElement(h, i).GetChar(), x, y)) {
            complete = false;
            continue;
        }
        words[2 * i] = FloatBits(x);
        words[2 * i + 1] = FloatBits(y);
    }
    return complete;
}

// The reset button moves the layout to a captured default. SetHUDPos reads float pairs, so the words are converted
// first (the original passes the word array as float (*)[2], which is the same bit pattern).
void ResetLayoutTo(HUDControls& h, const std::uint32_t (&words)[2 * kLayoutCount]) {
    float pos[kLayoutCount][2];
    for (int i = 0; i < kLayoutCount; ++i) {
        pos[i][0] = BitsToFloat(words[2 * i]);
        pos[i][1] = BitsToFloat(words[2 * i + 1]);
    }
    h.SetHUDPos(pos, true);
}

// Byte +155 (0x9b) of gameswf::character: the visible flag.
void SetCharacterFlag155(gameswf::character* character, bool value) {
    character->m_visible = value;
}

// (float)(v / 20.0): the drag step of the custom layout.
float Div20(float v) {
    return static_cast<float>(v / 20.0);
}

// The world-matrix (x, y) of a layout element, read like the original does (matrix words +8 and +20).
void ElementTranslation(DebugCachedCharacter& element, float& x, float& y) {
    const gameswf::matrix* world = element.GetChar()->get_world_matrix();
    x = world->m_[0][2];
    y = world->m_[1][2];
}

// The drag step of one custom-layout element: ((event + world) - source) / 20, truncated.
float DragStep(float eventValue, float worldValue, float source) {
    return static_cast<float>(static_cast<int>(Div20((eventValue + worldValue) - source)));
}

}  // namespace

// Global bool set at the top of Update (the original name); nothing reads it.
bool b_IsInCutScreen = false;

// 0x418238 HUDControls::hasInstance(void)
bool HUDControls::hasInstance() {
    return true;
}

// 0x418240 HUDControls::Flush(void)
void HUDControls::Flush() {}

// 0x418244 HUDControls::Draw(void)
void HUDControls::Draw() {}

// 0x418250 HUDControls::onEvent(glitch::SEvent const&)
// The original returns 0 for every event and does not read the event.
bool HUDControls::onEvent(const glitch::SEvent& /*event*/) {
    return false;
}

// 0x418258 HUDControls::onEvent(IEvent const*, EventManager const*)
// Touch press (id 4) and move (id 5) update the pointer position read by Update. A release sets both coordinates
// to -1. The DPad option, an attack held and the unk_84 block turn the handler off.
bool HUDControls::onEvent(const IEvent* event, const EventManager* /*manager*/) {
    if (Singleton<Application>::s_inst.GetSavedOption("DPad") || m_attackHeld || unk_84) {
        return false;
    }
    const std::uint32_t eventId = event->getEventID();
    if (eventId == EvTouchScreenPress::kEventId) {
        const auto* press = static_cast<const EvTouchScreenPress*>(event);
        if (press->pressed) {
            m_pointerY = press->y;
            m_pointerX = press->x;
        } else {
            m_pointerX = -1;
            m_pointerY = -1;
        }
        return false;
    }
    if (eventId == EvTouchScreenMove::kEventId) {
        const auto* move = static_cast<const EvTouchScreenMove*>(event);
        m_pointerX = move->x;
        m_pointerY = move->y;
    }
    return false;
}

// 0x41832c HUDControls::BeginCustom(void)
void HUDControls::BeginCustom() {
    m_customizing = true;
    SetCharacterFlag155(m_btnCustomReset.GetChar(), true);
    SetCharacterFlag155(m_btnCustomSave.GetChar(), true);
}

// 0x418360 HUDControls::SaveHUDPos(void)
// The world translation of each layout element is stored in m_stylePos when HUDStyle is set, otherwise in m_classicPos.
void HUDControls::SaveHUDPos() {
    HudScaleRelease();  // UI6: the element sizes shift the matrices; save the layout without them
    const bool hudStyle = Singleton<Application>::s_inst.GetSavedOption("HUDStyle") != 0;
    for (int i = 0; i < kLayoutCount; ++i) {
        float x = 0.0f;
        float y = 0.0f;
        if (!WorldTranslation(LayoutElement(*this, i).GetChar(), x, y)) {
            continue;
        }
        float(&dst)[2] = hudStyle ? m_stylePos[i] : m_classicPos[i];
        dst[0] = x;
        dst[1] = y;
    }
}

// 0x4187a0 HUDControls::SetHUDPos(float (*)[2], bool)
// pos holds (x, y) per layout element. Each is moved to its grid step, and the layout is saved when asked.
void HUDControls::SetHUDPos(float (*pos)[2], bool save) {
    for (int i = 0; i < kLayoutCount; ++i) {
        gameswf::character* character = LayoutElement(*this, i).GetChar();
        GameSWFUtils::MoveBtnPos(character, GridStep(pos[i][0]), GridStep(pos[i][1]));
    }
    if (save) {
        SaveHUDPos();
    }
}

// 0x418b7c HUDControls::RefreshHUD(void)
void HUDControls::RefreshHUD() {
    if (!m_customizing) {
        return;
    }
    m_customizing = false;
    SetCharacterFlag155(m_btnCustomReset.GetChar(), false);
    SetCharacterFlag155(m_btnCustomSave.GetChar(), false);
    SaveHUDPos();
    if (Level* level = Singleton<Application>::s_inst.GetCurrentLevel()) {
        level->unk_1a8 = false;
    }
}

// 0x418bec HUDControls::Touch(void)
// Clears the touch state, then stops the local player's controller (Cmd_Stop on the Character's v2Controller).
void HUDControls::Touch() {
    unk_18 = 0;
    m_cachesReady = false;
    m_attackHeld = false;
    m_moveHeld = false;
    unk_14 = 0;
    Character* player = dword_99F76C->GetLocalPlayer(0, false)->unk_660;
    if (player) {
        player->m_controller->Cmd_Stop();
    }
}

// 0x418d28 HUDControls::OnEvent(RenderFX::Event &)
// While customizing: a press (type 4) on a layout element records the drag start (static srcX, srcY); a move (type 5) drags the
// element (the interact button and the three skill buttons move as a group, the character menu button drags the health bar with
// it, a stick drag moves the joystick); a release (type 6) on the save button stores the layout and returns to the game menu, on
// the reset button restores the captured defaults. Outside customizing: the joystick stick press and move set the move direction
// and scale, its release stops the player; the interact button holds the attack; any other HUD button (or a visible world map)
// clears the pointer and blocks the touch handler. The return value is the leftover float register of the original; this returns 0.
float HUDControls::OnEvent(RenderFX::Event& event) {
    static float srcX = 0.0f;  // OnEvent(RenderFX::Event&)::srcX
    static float srcY = 0.0f;  // OnEvent(RenderFX::Event&)::srcY
    Character* player = dword_99F76C->GetLocalPlayer(0, false)->unk_660;
    MenuWorldMap* worldMap = MenuWorldMap::GetInstance();
    const int eventType = static_cast<int>(event.type);
    gameswf::character* target = event.target;

    if (m_customizing) {
        if (eventType == 4 || eventType == 5 || eventType == 6) {
            HudLayoutRelease(m_menu);  // UI9: drag and save in base (unanchored, unsized) coordinates; the next Draw re-applies them
        }
        if (std::getenv("DH2_FIT_DEBUG") != nullptr) {
            std::fprintf(stderr, "FITDBG custom event type=%d target=%s x=%g y=%g sel=%d%c", eventType,
                         target != nullptr ? target->get_name().c_str() : "(null)", event.x, event.y, g_hudSelectedElement, 10);
        }
        if (eventType == 4) {
            DebugCachedCharacter* const pressable[] = {&m_joystickStick, &m_btnInteract,     &m_posBtnSpell,
                                                       &m_posBtnSkill1,  &m_posBtnSkill2,    &m_posBtnSkill3,
                                                       &m_posBtnCharacterMenu, &m_posBtnMainMenu, &m_posBtnPotion,
                                                       &m_posBtnItunes};
            static const int kSelectIndex[] = {0, 1, 2, 3, 4, 5, 6, 8, 9, 10};  // layout index of each pressable (UI6)
            for (std::size_t p = 0; p < sizeof pressable / sizeof pressable[0]; ++p) {
                if (target == pressable[p]->GetChar()) {
                    srcX = event.x;
                    srcY = event.y;
                    g_hudSelectedElement = kSelectIndex[p];
                    break;
                }
            }
        }
        if (eventType == 5) {
            float x = 0.0f;
            float y = 0.0f;
            if (target == m_joystickStick.GetChar()) {
                ElementTranslation(m_joystick, x, y);
                GameSWFUtils::MoveBtnPos(m_joystick.GetChar(), DragStep(event.x, x, srcX), DragStep(event.y, y, srcY));
            } else if (target == m_btnInteract.GetChar() || target == m_posBtnSkill1.GetChar() ||
                       target == m_posBtnSkill2.GetChar() || target == m_posBtnSkill3.GetChar()) {
                ElementTranslation(m_btnInteract, x, y);
                const int dy = static_cast<int>(Div20((event.y + y) - srcY));
                const int dx = static_cast<int>(Div20((event.x + x) - srcX));
                const std::uint32_t* defaults = Singleton<Application>::s_inst.GetSavedOption("HUDStyle") ? m_defaultWorldB : m_defaultWorldA;
                auto offset = [&](int element, int axis) {
                    return static_cast<int>(Div20(BitsToFloat(defaults[2 + axis]) - BitsToFloat(defaults[2 * element + axis])));
                };
                GameSWFUtils::MoveBtnPos(m_btnInteract.GetChar(), DragStep(event.x, x, srcX), DragStep(event.y, y, srcY));
                GameSWFUtils::MoveBtnPos(m_posBtnSkill1.GetChar(), static_cast<float>(dx - offset(3, 0)), static_cast<float>(dy - offset(3, 1)));
                GameSWFUtils::MoveBtnPos(m_posBtnSkill2.GetChar(), static_cast<float>(dx - offset(4, 0)), static_cast<float>(dy - offset(4, 1)));
                GameSWFUtils::MoveBtnPos(m_posBtnSkill3.GetChar(), static_cast<float>(dx - offset(5, 0)), static_cast<float>(dy - offset(5, 1)));
            } else if (target == m_posBtnSpell.GetChar()) {
                ElementTranslation(m_posBtnSpell, x, y);
                GameSWFUtils::MoveBtnPos(m_posBtnSpell.GetChar(), DragStep(event.x, x, srcX), DragStep(event.y, y, srcY));
            } else if (target == m_posBtnCharacterMenu.GetChar()) {
                ElementTranslation(m_posBtnCharacterMenu, x, y);
                const int dy = static_cast<int>(Div20((event.y + y) - srcY));
                const int dx = static_cast<int>(Div20((event.x + x) - srcX));
                GameSWFUtils::MoveBtnPos(m_posHealthBar.GetChar(), static_cast<float>(dx - 43), static_cast<float>(dy));
                GameSWFUtils::MoveBtnPos(m_posBtnCharacterMenu.GetChar(), static_cast<float>(dx), static_cast<float>(dy));
            } else if (target == m_posBtnMainMenu.GetChar()) {
                ElementTranslation(m_posBtnMainMenu, x, y);
                GameSWFUtils::MoveBtnPos(m_posBtnMainMenu.GetChar(), DragStep(event.x, x, srcX), DragStep(event.y, y, srcY));
            } else if (target == m_posBtnPotion.GetChar()) {
                ElementTranslation(m_posBtnPotion, x, y);
                GameSWFUtils::MoveBtnPos(m_posBtnPotion.GetChar(), DragStep(event.x, x, srcX), DragStep(event.y, y, srcY));
            }
        }
        if (eventType == 6) {
            if (target == m_btnCustomSave.GetChar()) {
                m_customizing = false;
                SetCharacterFlag155(m_btnCustomReset.GetChar(), false);
                SetCharacterFlag155(m_btnCustomSave.GetChar(), false);
                SaveHUDPos();
                if (Singleton<Application>::s_inst.GetSavedOption("HUDStyle")) {
                    m_hasStylePos = true;
                } else {
                    m_hasClassicPos = true;
                }
                if (Level* level = Singleton<Application>::s_inst.GetCurrentLevel()) {
                    level->unk_1a8 = false;
                }
                g_hudSelectedElement = -1;  // UI6
                GSFlashMenu::s_inst.m_pendingMenu = MenuManager::GetInstance()->GetMenuByName("menu_Ingame");  // dword_9A247C
                Singleton<Application>::s_inst.m_stateMachine->PushState(&GSFlashMenu::s_inst, false);
            } else if (target == m_btnCustomReset.GetChar()) {
                HudScaleReset();  // UI6: every element back to 100%
                if (Singleton<Application>::s_inst.GetSavedOption("HUDStyle")) {
                    ResetLayoutTo(*this, m_defaultWorldB);
                } else {
                    ResetLayoutTo(*this, m_defaultWorldA);
                }
            }
        }
        event.unk_24 = 1;
        return 0.0f;
    }

    if (target == m_joystickStick.GetChar()) {
        if (eventType == 4) {
            unk_14 = static_cast<int>(static_cast<float>(event.x / 20.0));
            unk_18 = static_cast<int>(static_cast<float>(event.y / 20.0));
        } else if (eventType == 5) {
            const gameswf::matrix& local = target->get_matrix();
            int dx = static_cast<int>(static_cast<float>((event.x + local.m_[0][2]) / 20.0) - static_cast<float>(unk_14));
            int dy = static_cast<int>(static_cast<float>((event.y + local.m_[1][2]) / 20.0) - static_cast<float>(unk_18));
            const float angle = atan2f(static_cast<float>(dy), static_cast<float>(dx));
            int clampedX = dx >= -unk_0c ? (dx >= unk_0c ? unk_0c : dx) : -unk_0c;
            int clampedY = dy >= -unk_10 ? (dy >= unk_10 ? unk_10 : dy) : -unk_10;
            const float length = sqrtf(static_cast<float>(clampedX) * static_cast<float>(clampedX) +
                                       static_cast<float>(clampedY * clampedY));
            const float radius = static_cast<float>(unk_0c);
            m_moveScale = length / radius;
            if (m_moveScale > 1.0f) {
                clampedY = static_cast<int>(static_cast<float>(unk_10) * sinf(angle));
                clampedX = static_cast<int>(radius * cosf(angle));
            }
            m_menu->SetPosition(m_joystickStick.GetChar(), clampedX, clampedY);
            if (player != nullptr && player->CTRLIsAllowed()) {
                m_direction[0] = 1.0f;
                m_direction[1] = -1.0f;
                m_direction[2] = 0.0f;
                reinterpret_cast<Point3D<float>&>(m_direction).normalize();
                const Point3D<float> origin{0.0f, 0.0f, 0.0f};
                reinterpret_cast<Point3D<float>&>(m_direction).rotateXYBy(angle * -57.296f + 90.0f, origin);
                m_moveHeld = true;
            }
        } else if (eventType == 6 || eventType == 7) {
            unk_14 = 0;
            unk_18 = 0;
            m_menu->SetPosition(m_joystickStick.GetChar(), 0, 0);
            m_moveHeld = false;
            if (player != nullptr) {
                player->m_controller->Cmd_Stop();
            }
        }
        event.unk_24 = 1;
        return 0.0f;
    }

    if (target == m_btnInteract.GetChar()) {
        if (eventType == 4) {
            m_attackHeld = true;
        } else if (eventType == 6 || eventType == 7) {
            m_pointerY = -1;
            m_attackHeld = false;
            m_pointerX = -1;
        }
        event.unk_24 = 1;
        return 0.0f;
    }

    // The other cached buttons, or a visible world map: the pointer is cleared and unk_84 set.
    DebugCachedCharacter* const buttons[] = {
        &m_btnPotion,
        &m_btnSkill1,
        &m_btnSkill2,
        &m_btnSkill3,
        &m_btnSpell,
        &m_btnCharacterMenu,
        &m_btnMainMenu,
        &m_btnItunes,
        &m_btnItunesPlay,
        &m_btnItunesPause,
        &m_btnItunesNext,
        &m_btnItunesPrevious,
        &m_btnItunesPlaylist,
        &m_btnFastTravelMenu,
    };
    bool hit = false;
    for (DebugCachedCharacter* button : buttons) {
        if (target == button->GetChar()) {
            hit = true;
            break;
        }
    }
    if (!hit && worldMap != nullptr && worldMap->IsVisible()) {
        hit = true;
    }
    if (hit) {
        m_pointerY = -1;
        unk_84 = true;
        m_pointerX = -1;
    }
    return 0.0f;
}

// 0x419b4c HUDControls::initCachedChars(void)
// Looks up the HUD elements under the HUD movie and the custom menu, captures the default layout the first time each style is
// used, and applies the saved layout. The "bg" width gives the stick reach (half of its width / 20).
void HUDControls::initCachedChars() {
    MenuFX* menu = m_menu;
    if (!menu) {
        return;
    }
    // Port deviation (UI4; TRACK-B.md decision 15): the layout is read and captured below, so the HUD corner anchoring is taken off first.
    if (ScreenUsesAspectFit()) {
        HudAnchorUpdate(menu, true);
    }
    const int hudStyle = Singleton<Application>::s_inst.GetSavedOption("HUDStyle");
    char hudName[20];
    std::snprintf(hudName, sizeof hudName, "_root.menu_HUD_%d", hudStyle);
    m_currentRoot.RefreshCache(FoundCharacter(menu, hudName), menu, nullptr);

    m_joystickStick.RefreshCache("HUDelements.controls.controls.Joystick.stick", menu, m_currentRoot.GetChar());
    m_btnInteract.RefreshCache("HUDelements.controls.controls.btn_interact", menu, m_currentRoot.GetChar());
    m_joystick.RefreshCache("HUDelements.controls.controls.Joystick", menu, m_currentRoot.GetChar());
    m_pinch.RefreshCache("pinch", menu, nullptr);
    m_btnPotion.RefreshCache("HUDelements.HealthBars.btn_potion", menu, m_currentRoot.GetChar());
    m_posBtnSpell.RefreshCache("HUDelements.controls.controls.btn_spell", menu, m_currentRoot.GetChar());
    m_posBtnSkill1.RefreshCache("HUDelements.controls.controls.btn_skill1", menu, m_currentRoot.GetChar());
    m_posBtnSkill2.RefreshCache("HUDelements.controls.controls.btn_skill2", menu, m_currentRoot.GetChar());
    m_posBtnSkill3.RefreshCache("HUDelements.controls.controls.btn_skill3", menu, m_currentRoot.GetChar());
    m_posBtnCharacterMenu.RefreshCache("HUDelements.btn_charactermenu", menu, m_currentRoot.GetChar());
    m_posBtnMainMenu.RefreshCache("HUDelements.btn_mainmenu", menu, m_currentRoot.GetChar());
    m_posHealthBar.RefreshCache("HUDelements.HealthBars.player", menu, m_currentRoot.GetChar());
    m_posBtnPotion.RefreshCache("HUDelements.HealthBars.btn_potion", menu, m_currentRoot.GetChar());
    m_posBtnItunes.RefreshCache("HUDelements.itunes_controls.btn_itunes", menu, m_currentRoot.GetChar());
    m_posItunesControls.RefreshCache("HUDelements.itunes_controls", menu, m_currentRoot.GetChar());

    if (hudStyle <= 1) {
        m_btnSkill1.RefreshCache("HUDelements.controls.controls.btn_skill1", menu, m_currentRoot.GetChar());
        m_btnSkill2.RefreshCache("HUDelements.controls.controls.btn_skill2", menu, m_currentRoot.GetChar());
        m_btnSkill3.RefreshCache("HUDelements.controls.controls.btn_skill3", menu, m_currentRoot.GetChar());
    } else {
        m_btnSkill1.RefreshCache("HUDelements.controls.controls.list.dragHandler", menu, m_currentRoot.GetChar());
        m_btnSkill2.RefreshCache("HUDelements.controls.controls.list.dragHandler", menu, m_currentRoot.GetChar());
        m_btnSkill3.RefreshCache("HUDelements.controls.controls.list.dragHandler", menu, m_currentRoot.GetChar());
    }

    m_btnSpell.RefreshCache("HUDelements.controls.controls.btn_spell", menu, m_currentRoot.GetChar());
    m_btnCharacterMenu.RefreshCache("HUDelements.btn_charactermenu", menu, m_currentRoot.GetChar());
    m_btnMainMenu.RefreshCache("HUDelements.btn_mainmenu", menu, m_currentRoot.GetChar());
    m_btnItunes.RefreshCache("HUDelements.itunes_controls.btn_itunes", menu, m_currentRoot.GetChar());
    m_btnItunesPlay.RefreshCache("HUDelements.itunes_controls.itunes_bar.btn_play", menu, m_currentRoot.GetChar());
    m_btnItunesPause.RefreshCache("HUDelements.itunes_controls.itunes_bar.btn_pause", menu, m_currentRoot.GetChar());
    m_btnItunesNext.RefreshCache("HUDelements.itunes_controls.itunes_bar.btn_next", menu, m_currentRoot.GetChar());
    m_btnItunesPrevious.RefreshCache("HUDelements.itunes_controls.itunes_bar.btn_previous", menu,
                                     m_currentRoot.GetChar());
    m_btnItunesPlaylist.RefreshCache("HUDelements.itunes_controls.itunes_bar.btn_playlist", menu,
                                     m_currentRoot.GetChar());
    m_btnFastTravelMenu.RefreshCache("LocationsMenu.btn_FastTravel", menu, nullptr);

    gameswf::character* bg = menu->Find("bg", m_joystick.GetChar());  // searched under the Joystick clip (+0x4c), not the root
    const int stickReach = static_cast<int>(static_cast<float>(bg->get_width() / 20.0) * 0.5f);  // vtable +0x128
    unk_0c = stickReach;
    unk_10 = stickReach;
    menu->SetPosition(m_joystickStick.GetChar(), 0, 0);

    m_currentRoot.RefreshCache(FoundCharacter(menu, "_root.menu_custom"), menu, nullptr);
    m_btnCustomReset.RefreshCache("btn_MENU_CUSTOM_RESET", menu, m_currentRoot.GetChar());
    m_btnCustomSave.RefreshCache("btn_MENU_CUSTOM_SAVE", menu, m_currentRoot.GetChar());
    SetCharacterFlag155(m_currentRoot.GetChar(), true);

    m_currentRoot.RefreshCache(FoundCharacter(menu, "_root.LocationsMenu"), menu, nullptr);
    m_btnFastTravel.RefreshCache("btn_FastTravel", menu, m_currentRoot.GetChar());
    m_btnLocTravel.RefreshCache("btn_LocTravel", menu, m_currentRoot.GetChar());

    if (m_customizing) {
        SetCharacterFlag155(m_btnCustomReset.GetChar(), true);
        SetCharacterFlag155(m_btnCustomSave.GetChar(), true);
        SetCharacterFlag155(m_posBtnMainMenu.GetChar(), false);
        SetCharacterFlag155(m_posItunesControls.GetChar(), false);
        SetCharacterFlag155(m_btnFastTravel.GetChar(), false);
        SetCharacterFlag155(m_btnLocTravel.GetChar(), false);
    } else {
        SetCharacterFlag155(m_btnCustomReset.GetChar(), false);
        SetCharacterFlag155(m_btnCustomSave.GetChar(), false);
        SetCharacterFlag155(m_posBtnMainMenu.GetChar(), true);
        SetCharacterFlag155(m_posItunesControls.GetChar(), true);
    }

    if (hudStyle == 0) {
        if (!m_defaultsCaptured && CaptureDefaults(*this, m_defaultWorldA)) {
            m_defaultsCaptured = true;
        }
        if (m_hasClassicPos) {
            SetHUDPos(m_classicPos, false);
        }
    } else if (hudStyle == 1) {
        if (!m_altDefaultsCaptured && CaptureDefaults(*this, m_defaultWorldB)) {
            m_altDefaultsCaptured = true;
        }
        if (m_hasStylePos) {
            SetHUDPos(m_stylePos, false);
        }
    }
    m_cachesReady = true;
}

// 0x41a780 HUDControls::Update(void)
// The cut-scene byte (ScriptManager::m_inCutScene, byte_9A600C) is copied to b_IsInCutScreen at the top.
// The attack test reads the word at Character +0x14a4 (Hex-Rays *(player + 5284)), which is Character::m_objectOfInterest.
// When it is null, the attack stores 0 at Character +0x413 (Hex-Rays *(player + 1043)), which is CharAI::m_stickyTarget
// (CharAI at Character +0x3c8, its m_stickyTarget at CharAI +0x4b), and then calls Cmd_Attack(nullptr).
void HUDControls::Update() {
    b_IsInCutScreen = ScriptManager::s_inst.m_inCutScene;
    unk_84 = false;
    Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
    if (level && !level->m_isInGameView) {
        if (m_attackHeld) {
            m_attackHeld = false;
        }
        if (m_moveHeld) {
            m_moveHeld = false;
        }
        return;
    }
    if (!m_menu) {
        return;
    }
    if (!m_cachesReady) {
        initCachedChars();
        m_pointerY = -1;
        m_pointerX = -1;
    }
    Character* player = dword_99F76C->GetLocalPlayer(0, false)->unk_660;
    if (!player) {
        return;
    }

    if (m_attackHeld) {
        if (player->m_objectOfInterest != nullptr) {
            player->m_controller->Cmd_UseOOI(nullptr);
        } else {
            player->m_stickyTarget = false;
            player->m_controller->Cmd_Attack(nullptr);
        }
    }

    if (m_moveHeld && player->CTRLIsAllowed()) {
        const float scale = m_moveScale;
        Point3D<float> direction;
        direction.X = m_direction[0] * scale;
        direction.Y = m_direction[1] * scale;
        direction.Z = m_direction[2] * scale;
        player->m_controller->Cmd_HeadTowards(direction);
    }

    if (!m_attackHeld && m_pointerX > 0 && m_pointerY > 0) {
        Point2D<float> screen;
        screen.X = static_cast<float>(m_pointerX);
        screen.Y = static_cast<float>(m_pointerY);
        Point3D<float> world;
        if (Singleton<PFWorld>::s_inst.TranslateScreenToWorld(screen, world)) {
            if (AnimatedFX* cursor = player->m_cursorFX) {
                cursor->unk_34 = static_cast<int>(FloatBits(world.X));
                cursor->unk_38 = static_cast<int>(FloatBits(world.Y));
                cursor->unk_3c = static_cast<int>(FloatBits(world.Z));
                cursor->SyncIrrData(false);
                if (AnimatedFX* synced = player->m_cursorFX) {
                    synced->SetVisible(true);
                }
            }
            player->m_controller->Cmd_MoveTo(world);
        }
    }
}

// 0x41aa40 HUDControls::~HUDControls() (D1); 0x41ac10 (D2) has the same body.
// The cached DebugCachedCharacter members are destroyed after this body, in reverse declaration order, as in the
// original.
HUDControls::~HUDControls() {
    if (dword_99F740) {
        dword_99F740->Detach(4, this);
        dword_99F740->Detach(5, this);
    }
    Flush();
}

// 0x41af1c HUDControls::HUDControls(void) (C1); 0x41b1a4 (C2) has the same body.
// The vtable pointers are set by the compiler. The DebugCachedCharacter members use their default constructors.
HUDControls::HUDControls() {
    m_cachesReady = false;
    m_attackHeld = false;
    m_moveHeld = false;
    unk_0c = 0;
    unk_10 = 0;
    unk_14 = 0;
    unk_18 = 0;
    m_pointerX = -1;
    m_pointerY = -1;
    unk_84 = false;
    m_menu = nullptr;
    m_direction[0] = 0.0f;
    m_direction[1] = 0.0f;
    m_direction[2] = 0.0f;
    m_moveScale = 0.0f;
    m_customizing = false;
    m_defaultsCaptured = false;
    m_altDefaultsCaptured = false;
    m_hasClassicPos = false;
    m_hasStylePos = false;
    dword_99F740->Attach(4, this, 0);
    dword_99F740->Attach(5, this, 0);
}

// 0x41b11c HUDControls::GetInstance(void)
// The singleton is a function-local static, constructed on first use (the guard the original emits).
namespace {
bool g_hudControlsCreated = false;  // UI6: lets HudCustomizing() answer without constructing the singleton (it attaches to the EventManager)
}

HUDControls* HUDControls::GetInstance() {
    static HUDControls s_singleton;
    g_hudControlsCreated = true;
    return &s_singleton;
}

bool HudCustomizing() {
    return g_hudControlsCreated && HUDControls::GetInstance()->m_customizing;
}

// ---------------------------------------------------------------------------------------------------------------------
// Port deviation (UI4; TRACK-B.md decision 15, not in the original): HUD corner anchoring on a surface that is not 16:9.
//
// The centred 16:9 fit (MenuFlash2DCamera::Update) leaves bars on a non-16:9 surface, and the 3D world fills the whole surface. The
// HUD movie (slot 3, "dqhud*.swf", root clip "menu_HUD_<HUDStyle>") must instead keep its elements at the REAL screen edges. The scale of
// the fit is kept (nothing is stretched); each top-level HUD element is translated, in stage units, by the extra margin of the surface
// toward the edge of the quadrant its stage-space reference point lies in: top half up, bottom half down, left half left, right half
// right. A band of +-10% around the stage centre does not move on that axis (the middle-height spell button, a centred bar).
// The binary never runs this (ScreenUsesAspectFit() is false for its own screen sizes; on a 16:9 surface the margins are 0).
//
// The elements are the children of HUDelements that carry the HUD (health bars, potion button, portrait, pause button, minimap, iTunes
// controls, touch dead zones) and the clips under HUDelements.controls.controls (stick, attack, skills, spell, skill list). Positions are
// translated in the character's local matrix; the translation applied last frame is remembered per character so that (a) a timeline
// placement or SetHUDPos that rewrites the matrix is taken as the new base, and (b) the original code that reads the layout
// (CaptureDefaults, SaveHUDPos in initCachedChars / customizing) sees the unshifted layout: initCachedChars releases the offsets first
// and customizing keeps them at 0.
namespace {

enum HudAnchor : int { kAnchorNone = 0, kAnchorLeft = 1, kAnchorRight = 2, kAnchorTop = 4, kAnchorBottom = 8, kAnchorGeometry = 16 };

struct HudAnchorState {
    gameswf::character* character;  // identity only; entries not seen in a frame are dropped, never dereferenced
    float appliedLocalX, appliedLocalY;  // translation (twips, local space) added last frame
    float appliedWorldX, appliedWorldY;  // the same in stage twips
    float lastX, lastY;                  // the local translation this code wrote last
    bool seen;
    // Cover-scaled overlays (UI5): the base matrix (what the timeline placed) and the matrix this code wrote last.
    bool covered;
    gameswf::matrix base, written;
};

constexpr int kMaxHudAnchored = 64;
HudAnchorState g_hudAnchored[kMaxHudAnchored];
int g_hudAnchoredCount = 0;
gameswf::character* g_hudAnchorMovie = nullptr;  // the root movie the entries belong to

HudAnchorState* FindHudAnchorState(gameswf::character* character) {
    for (int i = 0; i < g_hudAnchoredCount; ++i) {
        if (g_hudAnchored[i].character == character) {
            return &g_hudAnchored[i];
        }
    }
    if (g_hudAnchoredCount >= kMaxHudAnchored) {
        return nullptr;
    }
    HudAnchorState& state = g_hudAnchored[g_hudAnchoredCount++];
    state.character = character;
    state.appliedLocalX = state.appliedLocalY = state.appliedWorldX = state.appliedWorldY = 0.0f;
    state.lastX = state.lastY = 0.0f;
    state.seen = false;
    state.covered = false;
    return &state;
}

gameswf::character* ChildNamed(gameswf::character* parent, const char* name) {
    if (parent == nullptr || !parent->is(2)) {
        return nullptr;
    }
    auto* sprite = static_cast<gameswf::sprite_instance*>(parent);
    for (int i = 0; i < sprite->m_display_list.size(); ++i) {
        gameswf::character* child = sprite->m_display_list.get_character(i);
        if (child != nullptr && std::strcmp(child->get_name().c_str(), name) == 0) {
            return child;
        }
    }
    return nullptr;
}

struct HudAnchorFrame {
    float marginX, marginY;  // extra margin of the surface in stage twips (each side)
    float centreX, centreY, bandX, bandY;  // stage centre and the no-move band, twips
};

// Moves one element to (base + anchor offset). `anchor` is a HudAnchor mask; kAnchorGeometry derives it from the base position.
void AnchorHudElement(gameswf::character* character, int anchor, const HudAnchorFrame& frame, bool release) {
    if (character == nullptr) {
        return;
    }
    HudAnchorState* state = FindHudAnchorState(character);
    if (state == nullptr) {
        return;
    }
    state->seen = true;
    const gameswf::matrix local = character->get_matrix();
    const float localX = local.m_[0][2];
    const float localY = local.m_[1][2];
    const bool untouched = state->lastX == localX && state->lastY == localY &&
                           (state->appliedLocalX != 0.0f || state->appliedLocalY != 0.0f);
    const float baseX = untouched ? localX - state->appliedLocalX : localX;
    const float baseY = untouched ? localY - state->appliedLocalY : localY;

    float worldDx = 0.0f;
    float worldDy = 0.0f;
    gameswf::character* parent = character->get_parent();
    if (!release && parent != nullptr) {
        if (anchor & kAnchorGeometry) {
            // The reference point of the base position in stage space: the world translation without the offset applied last frame.
            const gameswf::matrix* world = character->get_world_matrix();
            const float refX = static_cast<float>(world->m_[0][2]) - (untouched ? state->appliedWorldX : 0.0f);
            const float refY = static_cast<float>(world->m_[1][2]) - (untouched ? state->appliedWorldY : 0.0f);
            anchor = kAnchorNone;
            if (refX < frame.centreX - frame.bandX) {
                anchor |= kAnchorLeft;
            } else if (refX > frame.centreX + frame.bandX) {
                anchor |= kAnchorRight;
            }
            if (refY < frame.centreY - frame.bandY) {
                anchor |= kAnchorTop;
            } else if (refY > frame.centreY + frame.bandY) {
                anchor |= kAnchorBottom;
            }
        }
        if (anchor & kAnchorLeft) {
            worldDx = -frame.marginX;
        } else if (anchor & kAnchorRight) {
            worldDx = frame.marginX;
        }
        if (anchor & kAnchorTop) {
            worldDy = -frame.marginY;
        } else if (anchor & kAnchorBottom) {
            worldDy = frame.marginY;
        }
    }
    float localDx = 0.0f;
    float localDy = 0.0f;
    if (worldDx != 0.0f || worldDy != 0.0f) {
        // The world delta in the character's parent space: the inverse of the parent's linear part.
        const gameswf::matrix* p = parent->get_world_matrix();
        const float a = p->m_[0][0], b = p->m_[0][1], c = p->m_[1][0], d = p->m_[1][1];
        const float det = a * d - b * c;
        if (det != 0.0f) {
            localDx = (d * worldDx - b * worldDy) / det;
            localDy = (a * worldDy - c * worldDx) / det;
        } else {
            worldDx = worldDy = 0.0f;
        }
    }
    const float newX = baseX + localDx;
    const float newY = baseY + localDy;
    if (newX != localX || newY != localY) {
        gameswf::matrix placed = local;
        placed.m_[0][2] = newX;
        placed.m_[1][2] = newY;
        character->set_matrix(placed);
    }
    state->appliedLocalX = localDx;
    state->appliedLocalY = localDy;
    state->appliedWorldX = worldDx;
    state->appliedWorldY = worldDy;
    state->lastX = newX;
    state->lastY = newY;
}

// UI5: a full-stage overlay of the HUD movie (the hurt vignette, the dim/black screens and fades) is scaled, not moved, so it covers the
// whole surface instead of the stage only. The clip's base matrix (timeline placement) is remembered; a rewrite by the timeline is taken as
// the new base. Non-uniform: the corners of the vignette stay in the surface corners. `release` puts the base back.
void CoverHudOverlay(gameswf::character* character, const HudAnchorFrame& frame, const gameswf::rect& stage, bool release) {
    if (character == nullptr || !character->is(2)) {
        return;
    }
    HudAnchorState* state = FindHudAnchorState(character);
    if (state == nullptr) {
        return;
    }
    state->seen = true;
    const gameswf::matrix current = character->get_matrix();
    const bool untouched = state->covered && std::memcmp(&current, &state->written, sizeof current) == 0;
    if (!untouched) {
        state->base = current;
    }
    if (release || (frame.marginX == 0.0f && frame.marginY == 0.0f)) {
        if (untouched) {
            character->set_matrix(state->base);
        }
        state->covered = false;
        return;
    }
    // The clip's stage-space bound under its base matrix.
    if (untouched) {
        character->set_matrix(state->base);
    }
    gameswf::rect bound;
    static_cast<gameswf::sprite_instance*>(character)->get_bound(&bound);
    const float bw = static_cast<float>(bound.m_x_max) - static_cast<float>(bound.m_x_min);
    const float bh = static_cast<float>(bound.m_y_max) - static_cast<float>(bound.m_y_min);
    const float stageW = static_cast<float>(stage.m_x_max) - static_cast<float>(stage.m_x_min);
    const float stageH = static_cast<float>(stage.m_y_max) - static_cast<float>(stage.m_y_min);
    if (bw <= 0.0f || bh <= 0.0f || bw < 0.85f * stageW || bh < 0.85f * stageH) {
        state->covered = false;  // not a full-stage clip (empty or hidden state): leave it
        return;
    }
    const float kx = (stageW + 2.0f * frame.marginX) / bw;
    const float ky = (stageH + 2.0f * frame.marginY) / bh;
    const float cbx = static_cast<float>(bound.m_x_min) + bw * 0.5f;
    const float cby = static_cast<float>(bound.m_y_min) + bh * 0.5f;
    gameswf::matrix m = state->base;
    m.m_[0][0] = state->base.m_[0][0] * kx;
    m.m_[0][1] = state->base.m_[0][1] * kx;
    m.m_[1][0] = state->base.m_[1][0] * ky;
    m.m_[1][1] = state->base.m_[1][1] * ky;
    m.m_[0][2] = frame.centreX - kx * cbx + kx * state->base.m_[0][2];
    m.m_[1][2] = frame.centreY - ky * cby + ky * state->base.m_[1][2];
    character->set_matrix(m);
    state->written = character->get_matrix();
    state->covered = true;
}

}  // namespace

// Called by MenuManager::Draw for the HUD movie (slot 3) every frame before it is rendered, and with release = true by
// HUDControls::initCachedChars before the layout is read. Returns true while the HUD movie is anchored to the real screen edges, so the
// caller can lift the clip of the 16:9 box (the HUD may then draw outside it).
static bool HudAnchorPass(MenuFX* hud, bool release);
void HudLayoutRelease(MenuFX* hud);

void HudLayoutRelease(MenuFX* hud) {
    if (hud == nullptr || Singleton<Application>::s_inst.GetCurrentLevel() == nullptr) {
        return;
    }
    HudScaleRelease();
    if (ScreenUsesAspectFit()) {
        HudAnchorPass(hud, true);
    }
}

bool HudAnchorUpdate(MenuFX* hud, bool release) {
    if (hud == nullptr || Singleton<Application>::s_inst.GetCurrentLevel() == nullptr) {
        return false;  // (no level: HUDControls is not up yet)
    }
    // UI6: the per-element sizes are taken off before the anchoring reads the matrices and put back after it (see HudScaleApply).
    HudScaleRelease();
    const bool anchored = ScreenUsesAspectFit() ? HudAnchorPass(hud, release) : false;
    HudScaleApply(hud);
    return anchored;
}

static bool HudAnchorPass(MenuFX* hud, bool release) {
    if (hud == nullptr || !ScreenUsesAspectFit() || Singleton<Application>::s_inst.GetCurrentLevel() == nullptr) {
        return false;  // (no level: HUDControls is not up yet)
    }
    gameswf::root* root = hud->m_root.get_ptr();
    if (root == nullptr || root->m_def.get_ptr() == nullptr) {
        return false;
    }
    gameswf::character* movie = root->m_movie.get_ptr();
    if (movie != g_hudAnchorMovie) {  // another movie: no entry can be trusted
        g_hudAnchorMovie = movie;
        g_hudAnchoredCount = 0;
    }
    // UI5: the HUD movie's own box (the fit scaled by HudScalePercent(), MenuFlash2DCamera::Update); its offset can be negative when the
    // box is wider than the surface, which pulls the side elements inward to the real edges.
    const int boxW = FlashBoxWidth(root);
    const int boxH = FlashBoxHeight(root);
    const int offX = (Width_Screen - boxW) / 2;
    const int offY = (Height_Screen - boxH) / 2;
    if (offX == 0 && offY == 0 && g_hudAnchoredCount == 0) {
        return false;
    }
    const gameswf::rect& stage = root->m_def->m_frame_size;
    const float stageW = static_cast<float>(stage.m_x_max) - static_cast<float>(stage.m_x_min);
    const float stageH = static_cast<float>(stage.m_y_max) - static_cast<float>(stage.m_y_min);
    if (stageW <= 0.0f || stageH <= 0.0f) {
        return false;
    }
    // Pixels per twip of the HUD box; the surface margin in twips is the offset of the box over that.
    const float fitW = static_cast<float>(boxW > 0 ? boxW : Width_Screen);
    const float fitH = static_cast<float>(boxH > 0 ? boxH : Height_Screen);
    HudAnchorFrame frame;
    frame.marginX = static_cast<float>(offX) * stageW / fitW;
    frame.marginY = static_cast<float>(offY) * stageH / fitH;
    frame.centreX = static_cast<float>(stage.m_x_min) + stageW * 0.5f;
    frame.centreY = static_cast<float>(stage.m_y_min) + stageH * 0.5f;
    frame.bandX = stageW * 0.10f;
    frame.bandY = stageH * 0.10f;
    // UI9: the customise page shows the play layout (anchored, sized). The drag/save code works on the base layout: HUDControls::OnEvent
    // calls HudLayoutRelease() before it reads or writes positions, and the next Draw puts the offsets back.
    // UI12: while a menu page covers the HUD (charmenu / menus page up, or the HUD movie's own pause page) the anchoring is released and
    // the HUD sits under the stretched page as on the original's screen.
    if (HudCoveredByPage()) {
        release = true;
    }
    if (std::getenv("DH2_FIT_DEBUG") != nullptr) {
        static int last = -1;
        if (last != (release ? 1 : 0)) std::fprintf(stderr, "FITDBG anchor release=%d offX=%d offY=%d boxW=%d boxH=%d\n", release ? 1 : 0, offX, offY, boxW, boxH);
        last = release ? 1 : 0;
    }

    for (int i = 0; i < g_hudAnchoredCount; ++i) {
        g_hudAnchored[i].seen = false;
    }
    char hudName[20];
    std::snprintf(hudName, sizeof hudName, "menu_HUD_%d", Singleton<Application>::s_inst.GetSavedOption("HUDStyle"));
    gameswf::character* hudRoot = ChildNamed(movie, hudName);
    gameswf::character* elements = ChildNamed(hudRoot, "HUDelements");
    if (elements != nullptr && elements->is(2)) {
        auto* sprite = static_cast<gameswf::sprite_instance*>(elements);
        for (int i = 0; i < sprite->m_display_list.size(); ++i) {
            gameswf::character* child = sprite->m_display_list.get_character(i);
            if (child == nullptr) {
                continue;
            }
            const char* name = child->get_name().c_str();
            if (std::strcmp(name, "HealthBars") == 0) {
                // The bars share one parent but sit in different corners: the player bars (top left), the potion button (top right)
                // and the enemy bar move on their own. The ally bars are placed from world positions by InfoHUDManager::FastUpdate.
                AnchorHudElement(ChildNamed(child, "player"), kAnchorGeometry, frame, release);
                AnchorHudElement(ChildNamed(child, "btn_potion"), kAnchorGeometry, frame, release);
                if (dh2port::Get("enemybar", 1) == 0) {  // UI7: with the bar following the enemy, InfoHUDManager owns its position
                    AnchorHudElement(ChildNamed(child, "enemy"), kAnchorGeometry, frame, release);
                }
            } else if (std::strcmp(name, "controls") == 0) {
                gameswf::character* inner = ChildNamed(child, "controls");
                static const char* const kControls[] = {"Joystick", "btn_interact", "btn_skill1", "btn_skill2",
                                                        "btn_skill3", "btn_spell", "list"};
                for (const char* control : kControls) {
                    AnchorHudElement(ChildNamed(inner, control), kAnchorGeometry, frame, release);
                }
            } else if (std::strcmp(name, "btn_charactermenu") == 0 || std::strcmp(name, "btn_mainmenu") == 0 ||
                       std::strcmp(name, "itunes_controls") == 0 || std::strncmp(name, "deadzone", 8) == 0) {
                AnchorHudElement(child, kAnchorGeometry, frame, release);
            } else if (std::strcmp(name, "menu_miniMap") == 0) {
                // The clip's origin is not where the minimap is (its bounds hold the off-stage icon grid): top right by construction.
                AnchorHudElement(child, kAnchorRight | kAnchorTop, frame, release);
            } else if (std::strcmp(name, "itemname_text") == 0) {
                AnchorHudElement(child, kAnchorBottom, frame, release);
            }
        }
    }
    // UI5: the full-stage overlays that sit beside the HUD states under the movie root cover the whole surface (the hurt vignette, the dim
    // and black screens, the fades). Pages ("menu_*") and everything else are left where the timeline put them.
    if (movie != nullptr && movie->is(2)) {
        static const char* const kCover[] = {"HurtCorners", "SemiAlphaBlackBg", "menu_BlackScreen", "menu_FadeFromBlackScreen",
                                             "menu_FadeToBlackScreen", "menu_FadeToBlackCutscene"};
        auto* rootSprite = static_cast<gameswf::sprite_instance*>(movie);
        for (int i = 0; i < rootSprite->m_display_list.size(); ++i) {
            gameswf::character* child = rootSprite->m_display_list.get_character(i);
            if (child == nullptr) {
                continue;
            }
            const char* name = child->get_name().c_str();
            for (const char* cover : kCover) {
                if (std::strcmp(name, cover) == 0) {
                    CoverHudOverlay(child, frame, stage, release);
                    break;
                }
            }
        }
    }
    // Entries that were not visited (the character is gone or no longer matches): forget them without touching the character.
    int kept = 0;
    for (int i = 0; i < g_hudAnchoredCount; ++i) {
        if (g_hudAnchored[i].seen) {
            g_hudAnchored[kept++] = g_hudAnchored[i];
        }
    }
    g_hudAnchoredCount = kept;
    return !release && (offX != 0 || offY != 0);
}


// ---------------------------------------------------------------------------------------------------------------------
// Port addition (UI6, not in the original): per-element HUD size, set on the HUD customise page. Each layout element (the stick, the
// attack, spell and skill buttons, the character/main menu buttons, the potion, iTunes) carries a size in percent in the port settings
// (hudelem.<HUDStyle>.<index>, 50..200, default 100). The size is a uniform scale of the element's local matrix about the centre of its
// bound, applied every frame after the layout code and the anchoring (HudAnchorUpdate) ran, and taken off (HudScaleRelease) before any code
// reads the layout: the anchoring's base tracking, SaveHUDPos and CaptureDefaults. The matrix a timeline placement or a drag writes is
// recognised as a new base because it differs from what this code wrote last.
namespace {

struct HudScaleState {
    gameswf::character* character;  // identity only
    bool active;                    // `written` is what the character carries now
    gameswf::matrix pre, written;   // the matrix before the scale, and after it
};
HudScaleState g_hudScale[kLayoutCount] = {};

char g_hudElemKey[48];
const char* HudElemKey(int index) {
    std::snprintf(g_hudElemKey, sizeof g_hudElemKey, "hudelem.%d.%d", Singleton<Application>::s_inst.GetSavedOption("HUDStyle"), index);
    return g_hudElemKey;
}

int HudElemPercent(int index) {
    const int v = dh2port::Get(HudElemKey(index), 100);
    return v < 50 ? 50 : (v > 200 ? 200 : v);
}

void HudElemSetPercent(int index, int percent) {
    dh2port::Set(HudElemKey(index), percent < 50 ? 50 : (percent > 200 ? 200 : percent));
}

}  // namespace

void HudScaleRelease() {
    if (!g_hudControlsCreated) {
        return;
    }
    for (int i = 0; i < kLayoutCount; ++i) {
        HudScaleState& s = g_hudScale[i];
        if (!s.active || s.character == nullptr) {
            continue;
        }
        HUDControls* h = HUDControls::GetInstance();
        gameswf::character* c = h != nullptr ? LayoutElement(*h, i).GetChar() : nullptr;
        if (c == s.character) {
            const gameswf::matrix current = c->get_matrix();
            if (std::memcmp(&current, &s.written, sizeof current) == 0) {
                c->set_matrix(s.pre);
            }
        }
        s.active = false;
    }
}

void HudScaleReset() {
    HudScaleRelease();
    for (int i = 0; i < kLayoutCount; ++i) {
        HudElemSetPercent(i, 100);
    }
    g_hudSelectedElement = -1;
}

void HudScaleApply(MenuFX* hud) {
    HUDControls* h = HUDControls::GetInstance();
    if (h == nullptr || hud == nullptr || !h->m_cachesReady) {
        return;
    }
    for (int i = 0; i < kLayoutCount; ++i) {
        HudScaleState& s = g_hudScale[i];
        gameswf::character* c = LayoutElement(*h, i).GetChar();
        s.character = c;
        s.active = false;
        if (c == nullptr || !c->is(1)) {  // sprites and buttons both implement get_bound
            continue;
        }
        const int percent = HudElemPercent(i);
        if (percent == 100) {
            continue;
        }
        const float k = static_cast<float>(percent) / 100.0f;
        s.pre = c->get_matrix();
        gameswf::rect bound;
        c->get_bound(&bound);  // parent space, with s.pre applied
        const float cbx = (static_cast<float>(bound.m_x_min) + static_cast<float>(bound.m_x_max)) * 0.5f;
        const float cby = (static_cast<float>(bound.m_y_min) + static_cast<float>(bound.m_y_max)) * 0.5f;
        gameswf::matrix m = s.pre;
        m.m_[0][0] = s.pre.m_[0][0] * k;
        m.m_[0][1] = s.pre.m_[0][1] * k;
        m.m_[1][0] = s.pre.m_[1][0] * k;
        m.m_[1][1] = s.pre.m_[1][1] * k;
        m.m_[0][2] = cbx + k * (s.pre.m_[0][2] - cbx);
        m.m_[1][2] = cby + k * (s.pre.m_[1][2] - cby);
        c->set_matrix(m);
        s.written = c->get_matrix();
        s.active = true;
    }
}

// ---- the customise-page overlay: a gilt frame around the selected element and the + / - medallions above it ----
namespace {

struct HudOverlayRects {
    bool valid;
    glitch::core::rect<std::int32_t> plus, minus;
};
HudOverlayRects g_hudOverlay = {};
boost::intrusive_ptr<glitch::video::ITexture> g_hudPlusTex, g_hudMinusTex;
bool g_hudTexTried = false;

// The selected element's bound in surface pixels (false when it cannot be computed).
bool HudSelectedSurfaceRect(HUDControls& h, glitch::core::rect<std::int32_t>& out) {
    if (g_hudSelectedElement < 0 || g_hudSelectedElement >= kLayoutCount) {
        return false;
    }
    gameswf::character* c = LayoutElement(h, g_hudSelectedElement).GetChar();
    if (c == nullptr || !c->is(1) || c->get_parent() == nullptr || h.m_menu == nullptr) {
        return false;
    }
    gameswf::root* root = h.m_menu->GetRoot();
    if (root == nullptr || root->m_def.get_ptr() == nullptr) {
        return false;
    }
    gameswf::rect bound;
    c->get_bound(&bound);
    const gameswf::matrix* pw = c->get_parent()->get_world_matrix();
    gameswf::point corners[4] = {gameswf::point(bound.m_x_min, bound.m_y_min), gameswf::point(bound.m_x_max, bound.m_y_min),
                                 gameswf::point(bound.m_x_min, bound.m_y_max), gameswf::point(bound.m_x_max, bound.m_y_max)};
    float x0 = 1e30f, y0 = 1e30f, x1 = -1e30f, y1 = -1e30f;
    for (const gameswf::point& p : corners) {
        gameswf::point w;
        pw->transform(&w, p);
        x0 = w.m_x < x0 ? w.m_x : x0;
        y0 = w.m_y < y0 ? w.m_y : y0;
        x1 = w.m_x > x1 ? w.m_x : x1;
        y1 = w.m_y > y1 ? w.m_y : y1;
    }
    const gameswf::rect& stage = root->m_def->m_frame_size;
    const float stageW = static_cast<float>(stage.m_x_max) - static_cast<float>(stage.m_x_min);
    const float stageH = static_cast<float>(stage.m_y_max) - static_cast<float>(stage.m_y_min);
    if (stageW <= 0.0f || stageH <= 0.0f) {
        return false;
    }
    const float boxX = static_cast<float>(FlashBoxOffsetX(root)), boxY = static_cast<float>(FlashBoxOffsetY(root));
    const float boxW = static_cast<float>(FlashBoxWidth(root)), boxH = static_cast<float>(FlashBoxHeight(root));
    out.UpperLeftCorner.X = static_cast<std::int32_t>(boxX + (x0 - static_cast<float>(stage.m_x_min)) / stageW * boxW);
    out.UpperLeftCorner.Y = static_cast<std::int32_t>(boxY + (y0 - static_cast<float>(stage.m_y_min)) / stageH * boxH);
    out.LowerRightCorner.X = static_cast<std::int32_t>(boxX + (x1 - static_cast<float>(stage.m_x_min)) / stageW * boxW);
    out.LowerRightCorner.Y = static_cast<std::int32_t>(boxY + (y1 - static_cast<float>(stage.m_y_min)) / stageH * boxH);
    return out.LowerRightCorner.X > out.UpperLeftCorner.X && out.LowerRightCorner.Y > out.UpperLeftCorner.Y;
}

void HudLoadOverlayTextures() {
    if (g_hudTexTried) {
        return;
    }
    g_hudTexTried = true;
    glitch::video::CTextureManager* textures = ApplicationGetInstance().m_device->videoDriver->m_textureManager;
    g_hudPlusTex = textures->getTexture("data/port/hud_scale_plus.tgp", nullptr);
    g_hudMinusTex = textures->getTexture("data/port/hud_scale_minus.tgp", nullptr);
}

}  // namespace

void HudCustomizeOverlayDraw() {
    g_hudOverlay.valid = false;
    if (!HudCustomizing()) {
        return;
    }
    HUDControls* h = HUDControls::GetInstance();
    glitch::core::rect<std::int32_t> r;
    const bool ok = HudSelectedSurfaceRect(*h, r);
    if (std::getenv("DH2_FIT_DEBUG") != nullptr) {
        static int n = 0;
        if (n++ % 30 == 0) std::fprintf(stderr, "FITDBG overlay sel=%d ok=%d rect=%d,%d,%d,%d%c", g_hudSelectedElement, ok ? 1 : 0,
                                        r.UpperLeftCorner.X, r.UpperLeftCorner.Y, r.LowerRightCorner.X, r.LowerRightCorner.Y, 10);
    }
    if (!ok) {
        return;
    }
    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
    HudLoadOverlayTextures();
    driver->beginScene2D();  // the 2D path of the loading screens: resets the transforms the Flash renderer left behind
    // Gilt frame, 3 px, 6 px outside the element.
    glitch::video::SColor gilt;
    gilt.color = 0xff7ac0e2u;  // bytes R,G,B,A in memory order (SColor): gilt e2/c0/7a
    const std::int32_t pad = 6, t = 3;
    const glitch::core::rect<std::int32_t> f{r.UpperLeftCorner.X - pad, r.UpperLeftCorner.Y - pad, r.LowerRightCorner.X + pad,
                                             r.LowerRightCorner.Y + pad};
    const glitch::core::rect<std::int32_t> edges[4] = {
        {f.UpperLeftCorner.X, f.UpperLeftCorner.Y, f.LowerRightCorner.X, f.UpperLeftCorner.Y + t},
        {f.UpperLeftCorner.X, f.LowerRightCorner.Y - t, f.LowerRightCorner.X, f.LowerRightCorner.Y},
        {f.UpperLeftCorner.X, f.UpperLeftCorner.Y, f.UpperLeftCorner.X + t, f.LowerRightCorner.Y},
        {f.LowerRightCorner.X - t, f.UpperLeftCorner.Y, f.LowerRightCorner.X, f.LowerRightCorner.Y}};
    for (const auto& e : edges) {
        glitch::video::C2DDriver::draw2DRectangle(driver, gilt, e, nullptr);
    }
    // Medallions: above the frame, right-aligned, kept on the surface; below it when there is no room above.
    std::int32_t size = 64 * HudScalePercent() / 100;
    size = size < 56 ? 56 : (size > 112 ? 112 : size);
    const std::int32_t gap = 10;
    std::int32_t top = f.UpperLeftCorner.Y - gap - size;
    if (top < 0) {
        top = f.LowerRightCorner.Y + gap;
    }
    if (top + size > Height_Screen) {
        top = Height_Screen - size;
    }
    std::int32_t right = f.LowerRightCorner.X;
    if (right - 2 * size - gap < 0) {
        right = 2 * size + gap;
    }
    if (right > Width_Screen) {
        right = Width_Screen;
    }
    g_hudOverlay.plus = {right - size, top, right, top + size};
    g_hudOverlay.minus = {right - 2 * size - gap, top, right - size - gap, top + size};
    g_hudOverlay.valid = true;
    const glitch::core::rect<std::int32_t> src{0, 0, 128, 128};
    if (g_hudPlusTex) {
        glitch::video::C2DDriver::draw2DImage(driver, g_hudPlusTex, g_hudOverlay.plus, src, nullptr, nullptr, true);
    } else {
        glitch::video::C2DDriver::draw2DRectangle(driver, gilt, g_hudOverlay.plus, nullptr);
    }
    if (g_hudMinusTex) {
        glitch::video::C2DDriver::draw2DImage(driver, g_hudMinusTex, g_hudOverlay.minus, src, nullptr, nullptr, true);
    } else {
        glitch::video::C2DDriver::draw2DRectangle(driver, gilt, g_hudOverlay.minus, nullptr);
    }
    driver->endScene2D();
}

bool HudCustomizeOverlayHit(const RenderFX* fx, float x, float y, bool justPressed) {
    if (!HudCustomizing() || !g_hudOverlay.valid || g_hudSelectedElement < 0) {
        return false;
    }
    HUDControls* h = HUDControls::GetInstance();
    MenuManager* manager = MenuManager::GetInstance();
    if (manager == nullptr || manager->GetHUDRoot() == nullptr || fx != static_cast<const RenderFX*>(manager->GetHUDRoot())) {
        return false;
    }
    const std::int32_t px = static_cast<std::int32_t>(x), py = static_cast<std::int32_t>(y);
    auto inside = [&](const glitch::core::rect<std::int32_t>& r) {
        return px >= r.UpperLeftCorner.X && px < r.LowerRightCorner.X && py >= r.UpperLeftCorner.Y && py < r.LowerRightCorner.Y;
    };
    const bool onPlus = inside(g_hudOverlay.plus);
    const bool onMinus = inside(g_hudOverlay.minus);
    if (!onPlus && !onMinus) {
        return false;
    }
    if (justPressed) {
        const int current = HudElemPercent(g_hudSelectedElement);
        HudElemSetPercent(g_hudSelectedElement, current + (onPlus ? 10 : -10));
    }
    return true;
}

// Port deviation (UI4; TRACK-B.md decision 15, not in the original): the virtual stick can be grabbed from a wide zone. RenderFX::UpdateCursor
// calls this for every pointer of every movie; when the HUD movie is in game view with no menu open and the pointer is in the bottom-left
// quarter of the surface, and nothing but the stick pad or the full-screen zoom clip (or nothing at all) is under it (`hit`), the stick character is returned and UpdateCursor treats it as the
// hit. The press, drag and release events then go to the stick exactly as if it had been touched: HUDControls::OnEvent measures the drag from the
// press point, so the stick graphic stays where it is and the finger can be anywhere in the zone (it may leave the zone while held). Only where
// ScreenUsesStickZone() (the 16:9 fit is on); the original's own screen sizes keep the original stick.
gameswf::character* HudStickZoneTarget(const RenderFX* fx, float x, float y, gameswf::character* hit) {
    if (!ScreenUsesStickZone() || Width_Screen <= 0 || Height_Screen <= 0) {
        return nullptr;
    }
    MenuManager* manager = MenuManager::GetInstance();
    if (manager == nullptr || manager->GetHUDRoot() == nullptr || fx != static_cast<const RenderFX*>(manager->GetHUDRoot())) {
        return nullptr;
    }
    MenuFX* root = manager->GetRoot();
    if (root != nullptr && root->m_stack.m_size != 0) {
        return nullptr;  // a menu is open over the HUD
    }
    Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
    if (level == nullptr || !level->m_isInGameView) {
        return nullptr;
    }
    HUDControls* hud = HUDControls::GetInstance();
    if (!hud->m_cachesReady || hud->m_customizing) {
        return nullptr;
    }
    if (!(x >= 0.0f && x < static_cast<float>(Width_Screen) * 0.5f && y > static_cast<float>(Height_Screen) * 0.5f &&
          y < static_cast<float>(Height_Screen))) {
        return nullptr;
    }
    DebugCachedCharacter& stick = hud->m_joystickStick;
    if (stick.m_character == nullptr || !stick.m_characterProxy.get_proxy()->is_alive()) {
        return nullptr;
    }
    if (hit != nullptr) {
        // Something takes the touch: only the stick's own pad (the Joystick clip, a hit area that does nothing but the stick) and the
        // full-screen "pinch" clip (the camera zoom gesture, under every world touch) may be overruled; a button keeps its touch.
        bool overruled = false;
        DebugCachedCharacter* const passive[] = {&hud->m_joystick, &hud->m_pinch};
        for (DebugCachedCharacter* clip : passive) {
            if (clip->m_character == nullptr || !clip->m_characterProxy.get_proxy()->is_alive()) {
                continue;
            }
            for (gameswf::character* c = hit; c != nullptr; c = c->get_parent()) {
                if (c == clip->m_character) {
                    overruled = true;
                    break;
                }
            }
        }
        if (!overruled) {
            return nullptr;
        }
    }
    for (gameswf::character* c = stick.m_character; c != nullptr; c = c->get_parent()) {
        if (!c->get_visible()) {
            return nullptr;
        }
    }
    return stick.m_character;
}
