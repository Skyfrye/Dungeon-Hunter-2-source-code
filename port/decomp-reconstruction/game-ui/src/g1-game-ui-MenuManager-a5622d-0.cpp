// MenuManager bodies, batch g1-game-ui-MenuManager-a5622d-0 (part 1 of 3): the instance accessor, the menu list
// queries, the root and camera getters, the event helpers and the debug draw. Rebuilt from the Hex-Rays pseudocode of
// libDungeonHunter2.so and checked against the ARM assembly where the pseudocode is unclear.
// Offsets in comments are the original 32-bit ARM offsets (see dh2/MenuManager.hpp).
//
// Facts shared by the functions:
//   - The menu list is MenuManager::m_menus (original begin +0x64, end +0x68, 4-byte elements). Its count is
//     m_menus.size(), the original (end - begin) >> 2.
//   - A menu's name is the inline MenuFX::State::m_name at +0x08 of the MenuBase object (strcmp'd by the original).
//   - dword_99F780 is Singleton<Application>::s_inst +0x54, which is Application::m_menuManager. The singleton is
//     reached through ApplicationGetInstance() (dh2/global/ctrl_camera.hpp).
//   - m_multiMenuManager (+0xf4) is a MultiMenuManager (dh2/MultiMenuManager.hpp, in the tree). Its movie slots are m_menuFX[0..3] at +0x134 and its cameras m_cameras[0..3] at +0x144.
//   - RenderFX::Event is only forward-declared (dh2/RenderFX.hpp is a placeholder), and IEvent has no header, so the
//     event fields are not named here.

#include <cstddef>
#include <cstdint>
#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/EvTouchScreenMove.hpp"
#include "dh2/EvTouchScreenPress.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/IEvent.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuFlash2DCamera.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/Globals.hpp"
#include "gameswf/gameswf_character.h"

// 0x42ca8c _ZN11MenuManager11GetInstanceEv
// Returns dword_99F780, the Application::m_menuManager field (Application +0x54). The Application singleton is the
// one ApplicationGetInstance() returns. The accessor is declared there and defined by the integrator.
MenuManager* MenuManager::GetInstance() {
    return ApplicationGetInstance().m_menuManager;
}

// 0x42caac _ZN11MenuManager17SetCursorPositionEff
// Empty in the original (bx lr).
void MenuManager::SetCursorPosition(float /*x*/, float /*y*/) {
}

// 0x42cab0 _ZN11MenuManager21ForceAllTextureToVRamEv
// Empty in the original (bx lr).
void MenuManager::ForceAllTextureToVRam() {
}

// 0x42cab4 _ZN11MenuManager13UnloadSWFFileEi
// Unloads the legacy movie in slot index. The original calls Unload() on m_swfFiles[index] with no null check,
// deletes that MenuFX when it is still set (re-read after the call), clears the slot, then deletes the camera in
// m_cameras[index] when set and clears its slot. The index is not checked against the four slots, as in the original.
// The original's int result (the last call's r0) is dropped for the void signature.
void MenuManager::UnloadSWFFile(int index) {
    m_swfFiles[index]->Unload();
    MenuFX* fx = m_swfFiles[index];
    if (fx) {
        delete fx;
    }
    m_swfFiles[index] = nullptr;
    MenuFlash2DCamera* camera = m_cameras[index];
    if (camera) {
        delete camera;
    }
    m_cameras[index] = nullptr;
}

// 0x42cb38 _ZNK11MenuManager11GetNumMenusEv
// (end - begin) >> 2 of the menu list.
int MenuManager::GetNumMenus() const {
    return static_cast<int>(m_menus.size());
}

// 0x42cb4c _ZN11MenuManager11GetMenuByIDEi
// Returns the menu at index id, or null when id is negative or not below GetNumMenus().
MenuBase* MenuManager::GetMenuByID(int id) {
    if (id < 0 || id >= GetNumMenus()) {
        return nullptr;
    }
    return m_menus[static_cast<std::size_t>(id)];
}

// 0x42cb80 _ZN11MenuManager7GetRootEv
// The root movie: m_multiMenuManager->m_menuFX[2] (MultiMenuManager +0x13c).
MenuFX* MenuManager::GetRoot() {
    return m_multiMenuManager->m_menuFX[2];
}

// 0x42cb8c _ZN11MenuManager10GetHUDRootEv
// The HUD root movie: m_multiMenuManager->m_menuFX[3] (MultiMenuManager +0x140).
MenuFX* MenuManager::GetHUDRoot() {
    return m_multiMenuManager->m_menuFX[3];
}

// 0x42cb98 _ZN11MenuManager13GetRootCameraEv
// The camera of the root movie: m_multiMenuManager->m_cameras[2] (MultiMenuManager +0x14c).
MenuFlash2DCamera* MenuManager::GetRootCamera() {
    return m_multiMenuManager->m_cameras[2];
}

// 0x42cba4 _ZN11MenuManager16GetHUDRootCameraEv
// The camera of the HUD root movie: m_multiMenuManager->m_cameras[3] (MultiMenuManager +0x150).
MenuFlash2DCamera* MenuManager::GetHUDRootCamera() {
    return m_multiMenuManager->m_cameras[3];
}

// 0x42cbb0 _ZN11MenuManager14GetRootCamera2Ev
// Reads the same word as GetRootCamera: m_multiMenuManager->m_cameras[2] (MultiMenuManager +0x14c).
MenuFlash2DCamera* MenuManager::GetRootCamera2() {
    return m_multiMenuManager->m_cameras[2];
}

// 0x42cbbc _ZNK11MenuManager26GetRawCurrentEventPositionERiS0_
// The position of the current event. The original queries the event id (IEvent vtable +0x08, getEventID) and reads the
// int16 x at +0x08 and y at +0x0a when the id is 4 (EvTouchScreenPress) or 5 (EvTouchScreenMove), which keep x and y at
// those offsets. Any other id writes 0 to both. With no current event nothing is written, as in the original.
void MenuManager::GetRawCurrentEventPosition(int& x, int& y) const {
    if (m_currentEvent == nullptr) {
        return;
    }
    const std::uint32_t eventId = m_currentEvent->getEventID();
    if (eventId == EvTouchScreenPress::kEventId) {
        const auto* event = static_cast<const EvTouchScreenPress*>(m_currentEvent);
        x = event->x;
        y = event->y;
    } else if (eventId == EvTouchScreenMove::kEventId) {
        const auto* event = static_cast<const EvTouchScreenMove*>(m_currentEvent);
        x = event->x;
        y = event->y;
    } else {
        x = 0;
        y = 0;
    }
}

// 0x42cc34 _ZN11MenuManager12consumeEventEv
// Sets m_eventConsumed (+0xac) to 1.
void MenuManager::consumeEvent() {
    m_eventConsumed = 1;
}

// 0x42cc48 _ZN11MenuManager14CanHandleEventERN8RenderFX5EventE
// Always true in the original (mov r0, #1).
bool MenuManager::CanHandleEvent(RenderFX::Event& /*e*/) {
    return true;
}

// 0x42cf68 _ZN11MenuManager11mySendEventEPcN8RenderFX9EventTypeE
// The first of the four movies of the multi-menu manager where RenderFX::Find(characterPath) finds a character gets an event of
// the given type for it; true. False when no movie finds the character.
bool MenuManager::mySendEvent(char* characterPath, RenderFX::EventType type) {
    for (int i = 0; i != 4; ++i) {
        MenuFX* movie = m_multiMenuManager->m_menuFX[i];
        if (movie == nullptr) {
            continue;
        }
        gameswf::as_object* found = movie->Find(characterPath);
        if (found == nullptr) {
            continue;
        }
        RenderFX::Event event;
        std::memset(&event, 0, sizeof(event));
        event.target = static_cast<gameswf::character*>(found);
        event.type = type;
        event.name = static_cast<gameswf::character*>(found)->get_name().c_str();
        movie->SendEvent(event);
        return true;
    }
    return false;
}

// 0x42d060 _ZN11MenuManager7OnEventERN8RenderFX5EventE
// A release (type 6) of a btn_MENU_CONTINUE button records menu id 9. The event then goes to the HUD controls and to the HUD root
// movie (m_menuFX[3]).
void MenuManager::OnEvent(RenderFX::Event& e) {
    if (e.type == RenderFX::EVENT_RELEASE && std::strstr(e.name, "btn_MENU_CONTINUE") != nullptr) {
        lastOpenMenuID = 9;
    }
    HUDControls::GetInstance()->OnEvent(e);
    m_multiMenuManager->m_menuFX[3]->OnEvent(e);
}

// 0x42d0ec _ZNK11MenuManager19DBG_Draw2DDeadZonesEv
// Calls DBG_Draw2DDeadZones (vtable slot +0x48) on each visible menu, in list order. The count is taken once, as the
// original does.
void MenuManager::DBG_Draw2DDeadZones() const {
    const std::size_t count = m_menus.size();
    for (std::size_t i = 0; i < count; ++i) {
        MenuBase* menu = m_menus[i];
        if (menu->IsVisible()) {
            menu->DBG_Draw2DDeadZones();
        }
    }
}

// 0x42d150 _ZNK11MenuManager14HasVisibleMenuEv
// True when some menu in the list is visible.
bool MenuManager::HasVisibleMenu() const {
    const std::size_t count = m_menus.size();
    for (std::size_t i = 0; i < count; ++i) {
        if (m_menus[i]->IsVisible()) {
            return true;
        }
    }
    return false;
}

// 0x42d19c _ZN11MenuManager12GetMenuBelowEPKc
// Returns the menu directly below the menu called name: the element before the first later element whose name matches.
// Nothing is returned when the list holds fewer than two menus.
// The original loop runs one step past the last menu: on that last pass it reads the slot after the end of m_menus
// (uninitialised vector storage) as the name owner and could return a menu from there. That read is undefined and is not made
// here, so the last menu is never the match.
MenuBase* MenuManager::GetMenuBelow(const char* name) {
    const std::size_t count = m_menus.size();
    if (count > 1) {
        for (std::size_t i = 0; i + 1 < count; ++i) {
            if (std::strcmp(name, m_menus[i + 1]->m_name) == 0) {
                return m_menus[i];
            }
        }
    }
    return nullptr;
}

// 0x42d1f0 _ZN11MenuManager13GetMenuByNameEPKc
// Returns the first menu in the list whose name equals name, or null.
MenuBase* MenuManager::GetMenuByName(const char* name) {
    for (MenuBase* menu : m_menus) {
        if (std::strcmp(name, menu->m_name) == 0) {
            return menu;
        }
    }
    return nullptr;
}
