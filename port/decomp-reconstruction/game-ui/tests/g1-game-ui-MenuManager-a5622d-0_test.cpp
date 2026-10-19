// Checks the MenuManager bodies of batch g1-game-ui-MenuManager-a5622d-0 that run without the engine: the menu-list
// queries (GetNumMenus, GetMenuByID, GetMenuByName, GetMenuBelow, HasVisibleMenu), consumeEvent and CanHandleEvent.
// MenuManager and the menus are raw zero-filled storage. The vector of menus is constructed in place, and each menu
// block gets its m_name and m_visible set. No virtual function of those objects is called, and CanHandleEvent is
// called with its qualified name so no vtable is read.
// The definitions below exist so the test links. They are not the real ones: ApplicationGetInstance is the
// integrator's accessor, MenuBase::IsVisible is defined in game-ui/src/g1-game-ui-MenuBase-8948cc-0.cpp, and
// HUDControls::GetInstance returns a real (empty) HUDControls object rather than the library's singleton (see the
// comment on its definition). None of them is reached from the checks below.
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/global/ctrl_camera.hpp"

// Link-only definitions.
Application& ApplicationGetInstance() {
    std::abort();
}

// A real (zero-filled, never constructed) HUDControls object, NOT a null stand-in. MenuManager::OnEvent (the batch)
// does `HUDControls::GetInstance()->OnEvent(e)` with no null check, and because tests link with
// -Wl,--allow-multiple-definition and the first definition wins, this shadowed the library's real singleton for the
// whole executable. OnEvent is the test's own stub below, so nothing reads the object. OnEvent itself is not called
// by the checks either; converting the accessor only removes the latent fault for a later call.
HUDControls* HUDControls::GetInstance() {
    alignas(16) static unsigned char storage[sizeof(HUDControls)];
    return reinterpret_cast<HUDControls*>(storage);
}

// Link-only stub: HUDControls::OnEvent runs on a zero-filled object here, so it does nothing.
float HUDControls::OnEvent(RenderFX::Event& /*event*/) {
    return 0.0f;
}

bool MenuBase::IsVisible() const {
    return m_visible;
}

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

void SetMenu(unsigned char* storage, const char* name, bool visible) {
    MenuBase* menu = reinterpret_cast<MenuBase*>(storage);
    std::strcpy(menu->m_name, name);
    menu->m_visible = visible;
}

}  // namespace

int main() {
    // MenuManager storage: zero-filled, with only the menu vector constructed (at +0x64 in the original).
    alignas(MenuManager) unsigned char mmStorage[sizeof(MenuManager)] = {};
    MenuManager* mm = reinterpret_cast<MenuManager*>(mmStorage);
    new (&mm->m_menus) std::vector<MenuBase*>();

    Check(mm->GetNumMenus() == 0, "empty list has 0 menus");
    Check(mm->GetMenuByID(0) == nullptr, "GetMenuByID(0) on empty list is null");
    Check(mm->GetMenuByName("menu_a") == nullptr, "GetMenuByName on empty list is null");
    Check(!mm->HasVisibleMenu(), "empty list has no visible menu");

    // Three menus, in list order A, B, C. Only B is visible.
    alignas(MenuBase) unsigned char menuStorage[3][sizeof(MenuBase)] = {};
    SetMenu(menuStorage[0], "menu_a", false);
    SetMenu(menuStorage[1], "menu_b", true);
    SetMenu(menuStorage[2], "menu_c", false);
    MenuBase* a = reinterpret_cast<MenuBase*>(menuStorage[0]);
    MenuBase* b = reinterpret_cast<MenuBase*>(menuStorage[1]);
    MenuBase* c = reinterpret_cast<MenuBase*>(menuStorage[2]);
    mm->m_menus.push_back(a);
    mm->m_menus.push_back(b);
    mm->m_menus.push_back(c);

    Check(mm->GetNumMenus() == 3, "GetNumMenus is 3");
    Check(mm->GetMenuByID(0) == a, "GetMenuByID(0) is A");
    Check(mm->GetMenuByID(2) == c, "GetMenuByID(2) is C");
    Check(mm->GetMenuByID(3) == nullptr, "GetMenuByID(3) is null (not below the count)");
    Check(mm->GetMenuByID(-1) == nullptr, "GetMenuByID(-1) is null");

    Check(mm->GetMenuByName("menu_b") == b, "GetMenuByName(menu_b) is B");
    Check(mm->GetMenuByName("menu_a") == a, "GetMenuByName(menu_a) is A");
    Check(mm->GetMenuByName("missing") == nullptr, "GetMenuByName(missing) is null");

    // GetMenuBelow returns the element before the one that carries the name.
    Check(mm->GetMenuBelow("menu_b") == a, "GetMenuBelow(menu_b) is A");
    Check(mm->GetMenuBelow("menu_c") == b, "GetMenuBelow(menu_c) is B");
    Check(mm->GetMenuBelow("menu_a") == nullptr, "GetMenuBelow(menu_a) is null (bottom menu)");
    Check(mm->GetMenuBelow("missing") == nullptr, "GetMenuBelow(missing) is null");

    Check(mm->HasVisibleMenu(), "a visible menu is present");
    b->m_visible = false;
    Check(!mm->HasVisibleMenu(), "no visible menu after B is hidden");
    b->m_visible = true;

    // A single-menu list has nothing below its only menu.
    mm->m_menus.erase(mm->m_menus.begin() + 1, mm->m_menus.end());
    Check(mm->GetNumMenus() == 1, "list shrinks to one menu");
    Check(mm->GetMenuBelow("menu_a") == nullptr, "GetMenuBelow with one menu is null");

    // State changes: consumeEvent sets the flag, CanHandleEvent is always true.
    mm->m_eventConsumed = 0;
    mm->consumeEvent();
    Check(mm->m_eventConsumed == 1, "consumeEvent sets m_eventConsumed to 1");
    unsigned char eventStorage[64] = {};
    RenderFX::Event& event = *reinterpret_cast<RenderFX::Event*>(eventStorage);
    Check(mm->MenuManager::CanHandleEvent(event), "CanHandleEvent returns true");

    mm->SetCursorPosition(1.0f, 2.0f);
    mm->ForceAllTextureToVRam();

    mm->m_menus.~vector<MenuBase*>();

    if (g_failures == 0) {
        std::printf("MenuManager batch g1-game-ui-MenuManager-a5622d-0: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
