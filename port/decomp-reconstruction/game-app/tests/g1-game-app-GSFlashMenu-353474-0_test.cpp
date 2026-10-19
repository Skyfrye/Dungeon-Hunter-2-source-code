// Test for batch g1-game-app-GSFlashMenu-353474-0 (redo r2a-game-app-pack0-e3ab88-0). Covers Draw, the Ctor and Dtor
// state changes with their MultiMenuManager calls, and Update: the menu swap, the top-of-stack pop path and the update
// path. The engine symbols the batch calls (MenuManager, MenuBase::IsVisible, DebugSwitches, Application, COnline,
// StateMachine and the StateBase virtuals) are stubbed here, so the test links without the engine. MultiMenuManager is
// never constructed: its virtual calls go to a fake vtable (fakemmm below). COnline::GetInstance is NOT a null stand-in:
// it returns a real COnlineImpl, because the batch dereferences the result on the update path. Exit status 0 means every
// check passed.
#include <cstddef>
#include <cstdio>
#include <cstring>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GSFlashMenu.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/c_online_impl.hpp"

namespace {

// MultiMenuManager is not constructed here. The batch calls its virtuals through the object's vtable, so the test points a
// MultiMenuManager-sized object at a table of its own. Each slot index comes from the member-function pointer: under the
// Itanium C++ ABI the first word of a virtual member-function pointer is the vtable offset plus one.
namespace fakemmm {

int g_pushCount = 0;                   // MultiMenuManager::PushMenu(MenuBase*) calls
MenuBase* g_lastPushed = nullptr;
int g_popBoolCount = 0;                // MultiMenuManager::PopMenu(bool) calls
int g_popNameCount = 0;                // MultiMenuManager::PopMenu(const char*, bool) calls
const char* g_lastPopName = nullptr;
bool g_lastPopNameFlag = true;

template <typename Fn>
std::size_t VtableSlot(Fn fn) {
    struct Raw {
        std::ptrdiff_t ptr;
        std::ptrdiff_t adj;
    };
    static_assert(sizeof(Fn) == sizeof(Raw), "member-function pointer is not two words");
    Raw raw;
    std::memcpy(&raw, &fn, sizeof raw);
    return static_cast<std::size_t>(raw.ptr - 1) / sizeof(void*);
}

void FakePushMenu(void*, MenuBase* menu) {
    ++g_pushCount;
    g_lastPushed = menu;
}

void FakePopBool(void*, bool) {
    ++g_popBoolCount;
}

void FakePopName(void*, const char* name, bool flag) {
    ++g_popNameCount;
    g_lastPopName = name;
    g_lastPopNameFlag = flag;
}

void* g_vtable[32] = {};
alignas(MultiMenuManager) unsigned char g_object[sizeof(MultiMenuManager)] = {};

// Points the object at the fake table and returns it. Called once, before the object is used.
MultiMenuManager* Install() {
    using PushFn = void (MultiMenuManager::*)(MenuBase*);
    using PopBoolFn = void (MultiMenuManager::*)(bool);
    using PopNameFn = void (MultiMenuManager::*)(const char*, bool);
    const PushFn push = &MultiMenuManager::PushMenu;
    const PopBoolFn popBool = &MultiMenuManager::PopMenu;
    const PopNameFn popName = &MultiMenuManager::PopMenu;
    g_vtable[VtableSlot(push)] = reinterpret_cast<void*>(&FakePushMenu);
    g_vtable[VtableSlot(popBool)] = reinterpret_cast<void*>(&FakePopBool);
    g_vtable[VtableSlot(popName)] = reinterpret_cast<void*>(&FakePopName);
    *reinterpret_cast<void***>(g_object) = g_vtable;
    return reinterpret_cast<MultiMenuManager*>(g_object);
}

}  // namespace fakemmm

int g_failures = 0;
int g_drawCount = 0;             // MenuManager::Draw calls
bool g_drawHudOnly = true;       // hudOnly passed to the last Draw
int g_loadMainMenuCount = 0;     // MenuManager::LoadMainMenu calls
int g_updateCount = 0;           // MenuManager::Update calls
bool g_updateHudOnly = true;     // hudOnly passed to the last Update
int g_loadCount = 0;             // DebugSwitches::load calls
int g_switchCount = 0;           // DebugSwitches::GetSwitch calls
std::string g_lastSwitchName;    // name passed to the last GetSwitch
Level* g_currentLevel = nullptr; // what Application::GetCurrentLevel returns
bool g_menuVisible = false;      // what MenuBase::IsVisible returns for the About menu
int g_popStateCount = 0;         // StateMachine::PopState calls
bool g_lastPopNull = false;      // whether the last PopState got a null state
int g_recurseUpdateCount = 0;    // StateMachine::RecurseUpdate calls (the batch's online branch)

// The objects the batch reaches through pointers. MenuManager and the menus are raw storage: the batch only takes their
// addresses, reads m_multiMenuManager, and calls non-virtual members that are stubbed below.
alignas(MenuManager) unsigned char g_managerBuf[sizeof(MenuManager)] = {};
alignas(MenuBase) unsigned char g_mainBuf[sizeof(MenuBase)] = {};    // stands in for "menu_MainMenu"
alignas(MenuBase) unsigned char g_aboutBuf[sizeof(MenuBase)] = {};   // stands in for a second menu, "menu_About"

// The application singleton the batch reaches through ApplicationGetInstance(). Only m_stateMachine is used.
Application g_application;
int g_switchesTag = 0;           // address stands in for the DebugSwitches singleton (its methods are stubbed)

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

void ResetCounters() {
    g_drawCount = 0;
    g_drawHudOnly = true;
    g_loadMainMenuCount = 0;
    g_updateCount = 0;
    g_updateHudOnly = true;
    g_loadCount = 0;
    g_switchCount = 0;
    g_lastSwitchName.clear();
    g_popStateCount = 0;
    g_lastPopNull = false;
    g_recurseUpdateCount = 0;
    fakemmm::g_pushCount = 0;
    fakemmm::g_lastPushed = nullptr;
    fakemmm::g_popBoolCount = 0;
    fakemmm::g_popNameCount = 0;
    fakemmm::g_lastPopName = nullptr;
}

MenuManager* ManagerTag() {
    return reinterpret_cast<MenuManager*>(g_managerBuf);
}

MenuBase* MainMenuTag() {
    return reinterpret_cast<MenuBase*>(g_mainBuf);
}

MenuBase* AboutTag() {
    return reinterpret_cast<MenuBase*>(g_aboutBuf);
}

}  // namespace

// ---- stubs for the engine symbols the batch references ----

MenuManager* MenuManager::GetInstance() {
    return ManagerTag();
}

void MenuManager::LoadMainMenu() {
    ++g_loadMainMenuCount;
}

MenuBase* MenuManager::GetMenuByName(const char* name) {
    if (std::strcmp(name, "menu_MainMenu") == 0) {
        return MainMenuTag();
    }
    return nullptr;
}

void MenuManager::Draw(bool hudOnly) {
    ++g_drawCount;
    g_drawHudOnly = hudOnly;
}

void MenuManager::Update(bool hudOnly) {
    ++g_updateCount;
    g_updateHudOnly = hudOnly;
}

bool MenuBase::IsVisible() const {
    return this == AboutTag() && g_menuVisible;
}

DebugSwitches* DebugSwitches::GetInstance() {
    return reinterpret_cast<DebugSwitches*>(&g_switchesTag);
}

void DebugSwitches::load() {
    ++g_loadCount;
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    ++g_switchCount;
    g_lastSwitchName = name;
    return false;
}

// A real COnlineImpl with the online flag clear, which is what the original's GetOnline() returns before any game
// goes online. It MUST be a real object: GSFlashMenu::Update's update path (game-app/src/g1-game-app-GSFlashMenu-353474-0.cpp,
// asm 0x384550) dereferences the GetInstance() result through COnline::IsOnlineGame() (+0x05) and only then tests it, so
// returning null here is a null dereference on that path, not a short circuit. The object is created as COnlineImpl, the
// same type the real singleton COnline::GetInstance() allocates (net-session-online/src/tb_session-online-COnline-0.cpp).
static COnlineImpl g_testOnline;
COnline* COnline::GetInstance() {
    return &g_testOnline;
}

Application::Application() {}
Application::~Application() {}
bool Application::onEvent(const glitch::SEvent&) {
    return false;
}

Application& ApplicationGetInstance() {
    return g_application;
}

Level* Application::GetCurrentLevel() const {
    return g_currentLevel;
}

StateMachine::StateMachine() {}
StateMachine::~StateMachine() {}

void StateMachine::PopState(StateBase* state) {
    ++g_popStateCount;
    g_lastPopNull = (state == nullptr);
}

void StateMachine::RecurseUpdate(double) const {
    ++g_recurseUpdateCount;
}

StateBase::~StateBase() {}
void StateBase::Ctor(const StateMachine*) {}
void StateBase::Dtor(const StateMachine*) {}
void StateBase::Update(StateMachine*, double) {}
void StateBase::Draw(const StateMachine*) {}
void StateBase::Pause(const StateMachine*) {}
void StateBase::Resume(const StateMachine*) {}
void StateBase::Draw2D(const StateMachine*) {}
void StateBase::Sleep(const StateMachine*) {}
void StateBase::WakeUp(const StateMachine*) {}

int main() {
    // The fake MultiMenuManager is what the test menu manager points at.
    reinterpret_cast<MenuManager*>(g_managerBuf)->m_multiMenuManager = fakemmm::Install();
    g_application.m_stateMachine = nullptr;

    // Draw: MenuManager::Draw(false) once, through m_manager.
    {
        GSFlashMenu menu;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.Draw(nullptr);
        Check(g_drawCount == 1 && !g_drawHudOnly, "Draw calls MenuManager::Draw(false) once");
    }

    // Ctor with the main-menu flag: stores the manager, loads the main menu, sets the pending menu, clears the flag.
    {
        GSFlashMenu menu;
        ResetCounters();
        menu.m_loadMainMenu = true;
        menu.m_popped = true;
        menu.m_menu = nullptr;
        menu.Ctor(nullptr);
        Check(menu.m_manager == ManagerTag(), "Ctor stores MenuManager::GetInstance() in m_manager");
        Check(g_loadMainMenuCount == 1, "Ctor loads the main menu once when the flag is set");
        Check(menu.m_pendingMenu == MainMenuTag(), "Ctor sets m_pendingMenu to menu_MainMenu");
        Check(!menu.m_loadMainMenu, "Ctor clears m_loadMainMenu");
        Check(!menu.m_popped, "Ctor clears m_popped");
        Check(g_loadCount == 1 && g_switchCount == 1 && g_lastSwitchName == "isTracingGSFlashMenu",
              "Ctor runs the trace probe on isTracingGSFlashMenu");
        Check(fakemmm::g_pushCount == 0, "Ctor with no menu set does not push");
    }

    // Ctor with a current menu: pushes it on the multi-menu manager.
    {
        GSFlashMenu menu;
        ResetCounters();
        menu.m_loadMainMenu = false;
        menu.m_menu = AboutTag();
        menu.Ctor(nullptr);
        Check(fakemmm::g_pushCount == 1 && fakemmm::g_lastPushed == AboutTag(),
              "Ctor pushes the current menu on the multi-menu manager");
        Check(g_loadMainMenuCount == 0, "Ctor with the flag clear does not load the main menu");
    }

    // Ctor without the flag: no main-menu load, m_pendingMenu unchanged.
    {
        GSFlashMenu menu;
        ResetCounters();
        menu.m_loadMainMenu = false;
        menu.m_menu = nullptr;
        menu.m_pendingMenu = AboutTag();
        menu.Ctor(nullptr);
        Check(g_loadMainMenuCount == 0, "Ctor without the flag does not load the main menu");
        Check(menu.m_pendingMenu == AboutTag(), "Ctor without the flag keeps m_pendingMenu");
    }

    // Dtor with a level: sets the level's in-game-view flag, clears m_menu, sets m_popped.
    {
        alignas(Level) unsigned char levelBytes[sizeof(Level)] = {};
        Level* level = reinterpret_cast<Level*>(levelBytes);
        g_currentLevel = level;
        GSFlashMenu menu;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = nullptr;
        menu.m_popped = false;
        menu.Dtor(nullptr);
        Check(level->m_isInGameView, "Dtor sets the level's in-game-view flag");
        Check(menu.m_menu == nullptr && menu.m_popped, "Dtor clears m_menu and sets m_popped");
        Check(g_loadCount == 1 && g_lastSwitchName == "isTracingGSFlashMenu", "Dtor runs the trace probe");
        g_currentLevel = nullptr;
    }

    // Dtor without a level: m_popped is still set and nothing else changes.
    {
        g_currentLevel = nullptr;
        GSFlashMenu menu;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = nullptr;
        menu.m_popped = false;
        menu.Dtor(nullptr);
        Check(menu.m_popped && menu.m_menu == nullptr, "Dtor without a level sets m_popped");
    }

    // Dtor with a visible current menu: the menu is popped by name, not repeated, before m_menu is cleared.
    {
        g_currentLevel = nullptr;
        GSFlashMenu menu;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = AboutTag();
        menu.m_popped = false;
        g_menuVisible = true;
        menu.Dtor(nullptr);
        Check(fakemmm::g_popNameCount == 1 && fakemmm::g_lastPopName == AboutTag()->m_name && !fakemmm::g_lastPopNameFlag,
              "Dtor pops a visible current menu with PopMenu(name, false)");
        Check(menu.m_menu == nullptr && menu.m_popped, "Dtor clears m_menu after the pop");
        g_menuVisible = false;
    }

    // Dtor with a hidden current menu: nothing is popped.
    {
        g_currentLevel = nullptr;
        GSFlashMenu menu;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = AboutTag();
        g_menuVisible = false;
        menu.Dtor(nullptr);
        Check(fakemmm::g_popNameCount == 0 && menu.m_menu == nullptr, "Dtor does not pop a hidden current menu");
    }

    // Update: a pending menu that differs from m_menu (none set) is swapped in and pushed, then the update path runs.
    {
        GSFlashMenu menu;
        StateMachine machine;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = nullptr;
        menu.m_pendingMenu = AboutTag();
        menu.Update(&machine, 0.0);
        Check(menu.m_menu == AboutTag(), "Update swaps the pending menu in");
        Check(menu.m_pendingMenu == nullptr, "Update clears m_pendingMenu after the swap");
        Check(fakemmm::g_pushCount == 1 && fakemmm::g_lastPushed == AboutTag(), "Update pushes the new menu");
        Check(fakemmm::g_popNameCount == 0, "Update with no old menu pops nothing");
    }

    // Update: the old menu is popped by name, and the pending menu is read again after the pop.
    {
        GSFlashMenu menu;
        StateMachine machine;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = MainMenuTag();
        menu.m_pendingMenu = AboutTag();
        menu.Update(&machine, 0.0);
        Check(fakemmm::g_popNameCount == 1 && fakemmm::g_lastPopName == MainMenuTag()->m_name && !fakemmm::g_lastPopNameFlag,
              "Update pops the old menu with PopMenu(name, false)");
        Check(menu.m_menu == AboutTag() && menu.m_pendingMenu == nullptr, "Update swaps to the pending menu after the pop");
        Check(fakemmm::g_pushCount == 1 && fakemmm::g_lastPushed == AboutTag(), "Update pushes the pending menu after the pop");
    }

    // Update: pending equal to the current menu, or no pending menu, changes nothing.
    {
        GSFlashMenu menu;
        StateMachine machine;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = AboutTag();
        menu.m_pendingMenu = AboutTag();
        menu.Update(&machine, 0.0);
        Check(menu.m_menu == AboutTag() && menu.m_pendingMenu == AboutTag(),
              "Update with pending equal to the current menu changes nothing");
        Check(fakemmm::g_pushCount == 0 && fakemmm::g_popNameCount == 0, "Update with pending equal to the current menu calls nothing");
        menu.m_pendingMenu = nullptr;
        menu.Update(&machine, 0.0);
        Check(menu.m_menu == AboutTag() && menu.m_pendingMenu == nullptr,
              "Update without a pending menu changes nothing");
    }

    // Update, on top with no visible menu: the pop path runs. The trace probe, m_popped, then PopState(nullptr).
    {
        GSFlashMenu menu;
        StateMachine machine;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = nullptr;
        menu.m_pendingMenu = nullptr;
        menu.m_popped = false;
        g_application.m_stateMachine = &machine;
        machine.m_stack.push_back(StateMachine::StateInfo{&menu, false});
        menu.Update(&machine, 0.0);
        Check(menu.m_popped, "Update on top with no visible menu sets m_popped");
        Check(g_popStateCount == 1 && g_lastPopNull, "Update on top with no visible menu pops the top state");
        Check(g_updateCount == 0, "Update on top with no visible menu does not run MenuManager::Update");
        Check(g_loadCount == 1 && g_lastSwitchName == "isTracingGSFlashMenu", "Update pop path runs the trace probe");
    }

    // Update, on top with a visible menu: the update path runs and nothing is popped.
    {
        GSFlashMenu menu;
        StateMachine machine;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = AboutTag();
        menu.m_popped = false;
        g_menuVisible = true;
        machine.m_stack.push_back(StateMachine::StateInfo{&menu, false});
        menu.Update(&machine, 0.0);
        Check(g_updateCount == 1 && !g_updateHudOnly, "Update with a visible menu runs MenuManager::Update(false)");
        Check(g_popStateCount == 0 && !menu.m_popped, "Update with a visible menu does not pop");
        Check(g_recurseUpdateCount == 0, "Update with the online flag clear does not recurse into the state below");
        g_menuVisible = false;
    }

    // Update, on top with a visible menu and the online flag set: the update path also recurses. This is the branch the
    // batch reaches through COnline::GetInstance()->IsOnlineGame(); it is only observable because GetInstance returns a
    // real COnlineImpl whose flag this test can set.
    {
        GSFlashMenu menu;
        StateMachine machine;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = AboutTag();
        menu.m_popped = false;
        g_menuVisible = true;
        g_testOnline.SetIsOnlineGame(true);
        machine.m_stack.push_back(StateMachine::StateInfo{&menu, false});
        menu.Update(&machine, 0.0);
        Check(g_updateCount == 1 && g_recurseUpdateCount == 1,
              "Update with the online flag set runs MenuManager::Update(false) and RecurseUpdate");
        g_testOnline.SetIsOnlineGame(false);
        g_menuVisible = false;
    }

    // Update, not on top: the update path runs.
    {
        GSFlashMenu menu;
        GSFlashMenu other;
        StateMachine machine;
        ResetCounters();
        menu.m_manager = ManagerTag();
        menu.m_menu = nullptr;
        machine.m_stack.push_back(StateMachine::StateInfo{&other, false});
        menu.Update(&machine, 0.0);
        Check(g_updateCount == 1 && g_popStateCount == 0, "Update below the top state runs MenuManager::Update only");
    }

    if (g_failures == 0) {
        std::printf("GSFlashMenu: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
