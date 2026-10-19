// Checks the MenuEnterName bodies of batch g1-game-ui-MenuEnterName-b63d4c-0 without the engine. MenuBase, MenuFX::State,
// MenuManager and GSKeyboard are replaced here by recording stubs, so only this test and the MenuEnterName source are
// linked. This file defines the key function of MenuBase (its destructor), so MenuBase's vtable is emitted here and
// every virtual it names has a stub below.
#include <cstdio>
#include <cstring>
#include <vector>

#include "gameswf/gameswf.h"  // gameswf::rect must be complete: the MenuBase stub ctor and dtor destroy m_deadZones
#include "dh2/GSKeyboard.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuEnterName.hpp"
#include "dh2/MenuManager.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Recorded state of the stubs.
const char* g_baseName = nullptr;            // name passed to the MenuBase constructor
int g_baseShow = 0;                          // MenuBase::Show calls
int g_baseHide = 0;                          // MenuBase::Hide calls
bool g_isValid = true;                       // what the MenuBase::IsValidMenu stub returns
int g_isValidCalls = 0;                      // MenuBase::IsValidMenu calls
int g_clearString = 0;                       // GSKeyboard::ClearString calls
std::vector<const MenuBase*> g_registered;   // MenuManager::RegisterMenu arguments, in call order

// Stands in for the MenuManager singleton. The stubs never read it.
alignas(16) char g_fakeManager[64];

void ResetRecords() {
    g_baseName = nullptr;
    g_baseShow = 0;
    g_baseHide = 0;
    g_isValid = true;
    g_isValidCalls = 0;
    g_clearString = 0;
    g_registered.clear();
}

bool NameIs(const char* name, const char* expected) {
    return name != nullptr && std::strcmp(name, expected) == 0;
}

void TestGetInstance() {
    ResetRecords();
    MenuEnterName* first = MenuEnterName::GetInstance();
    MenuEnterName* second = MenuEnterName::GetInstance();
    Check(first == second, "GetInstance returns the same object on every call");
    Check(NameIs(g_baseName, "menu_EnterName"), "the constructor passes menu_EnterName to the base");
    Check(g_registered.size() == 1, "the singleton registers itself exactly once");
    Check(g_registered.size() == 1 && g_registered[0] == static_cast<MenuBase*>(first),
          "the registered menu is the singleton object");
}

void TestConstructorRegisters() {
    ResetRecords();
    {
        MenuEnterName local;
        Check(NameIs(g_baseName, "menu_EnterName"), "a direct construction names the base menu_EnterName");
        Check(g_registered.size() == 1 && g_registered[0] == static_cast<MenuBase*>(&local),
              "a direct construction registers the new object with MenuManager");
    }
}

void TestShowHide() {
    MenuBase* menu = MenuEnterName::GetInstance();

    // Show: IsValidMenu decides whether MenuBase::Show runs.
    ResetRecords();
    g_isValid = true;
    menu->Show();
    Check(g_isValidCalls == 1, "Show asks IsValidMenu once");
    Check(g_baseShow == 1, "Show calls MenuBase::Show when the menu is valid");

    ResetRecords();
    g_isValid = false;
    menu->Show();
    Check(g_isValidCalls == 1, "Show asks IsValidMenu once when the menu is not valid");
    Check(g_baseShow == 0, "Show does nothing when the menu is not valid");

    // Hide: the same decision, with MenuBase::Hide.
    ResetRecords();
    g_isValid = true;
    menu->Hide();
    Check(g_isValidCalls == 1, "Hide asks IsValidMenu once");
    Check(g_baseHide == 1, "Hide calls MenuBase::Hide when the menu is valid");

    ResetRecords();
    g_isValid = false;
    menu->Hide();
    Check(g_isValidCalls == 1, "Hide asks IsValidMenu once when the menu is not valid");
    Check(g_baseHide == 0, "Hide does nothing when the menu is not valid");
}

void TestFocus() {
    MenuBase* menu = MenuEnterName::GetInstance();

    ResetRecords();
    menu->GotFocus();
    Check(g_clearString == 1, "GotFocus forwards to GSKeyboard::ClearString");
    Check(g_baseShow == 0 && g_baseHide == 0, "GotFocus does not show or hide the menu");

    ResetRecords();
    menu->LostFocus();
    Check(g_clearString == 0, "LostFocus does not clear the keyboard string");
    Check(g_baseShow == 0 && g_baseHide == 0, "LostFocus does not show or hide the menu");
}

}  // namespace

// ----- Stubs for the engine functions the bodies reach -----

// MenuFX::State's destructor is its key function, so this file emits the State vtable and needs every State virtual.
MenuFX::State::State(const char*) {}
MenuFX::State::~State() {}
void MenuFX::State::Create() {}
void MenuFX::State::Show() {}
void MenuFX::State::Hide() {}
void MenuFX::State::GotFocus() {}
void MenuFX::State::LostFocus() {}
void MenuFX::State::Update() {}
void MenuFX::State::Update(int) {}
void MenuFX::State::UpdateBackground() {}
void MenuFX::State::UpdateBackground(int) {}
void MenuFX::State::OnEvent(RenderFX::Event&) {}
void MenuFX::State::OnFSCommand(const char*, const char*) {}
bool MenuFX::State::CanHandleEvent(RenderFX::Event&) { return true; }

// gameswf's string members, which the inline code of gameswf.h reaches from this translation unit.
int tu_string::utf8_char_count(const char*, int) { return 0; }
void tu_string::resize(int) {}
bool tu_string::operator==(const tu_string&) const { return false; }
void tu_string::operator+=(const char*) {}
void tu_string::operator+=(const tu_string&) {}

MenuBase::MenuBase(const char* name) : MenuFX::State(name) {
    g_baseName = name;
}
MenuBase::~MenuBase() {}
void MenuBase::Create() {}
void MenuBase::Show() { ++g_baseShow; }
void MenuBase::Hide() { ++g_baseHide; }
void MenuBase::GotFocus() {}
void MenuBase::LostFocus() {}
void MenuBase::Update() {}
void MenuBase::OnEvent(RenderFX::Event&) {}
void MenuBase::OnFSCommand(const char*, const char*) {}
bool MenuBase::CanHandleEvent(RenderFX::Event&) { return true; }
bool MenuBase::MyFSCommand(const char*, const char*) { return false; }
bool MenuBase::IsValidMenu() const {
    ++g_isValidCalls;
    return g_isValid;
}
void MenuBase::ProcessLocalization() {}
void MenuBase::SetIsLocalised(bool) {}
void MenuBase::DBG_Draw2DDeadZones() const {}
void MenuBase::CacheStrings() {}

MenuManager* MenuManager::GetInstance() {
    return reinterpret_cast<MenuManager*>(g_fakeManager);
}
void MenuManager::RegisterMenu(MenuBase* menu) {
    g_registered.push_back(menu);
}

void GSKeyboard::ClearString() {
    ++g_clearString;
}

// ----- Driver -----

int main() {
    TestGetInstance();
    TestConstructorRegisters();
    TestShowHide();
    TestFocus();
    if (g_failures == 0) {
        std::printf("MenuEnterName tests passed\n");
        return 0;
    }
    std::printf("%d MenuEnterName check(s) failed\n", g_failures);
    return 1;
}
