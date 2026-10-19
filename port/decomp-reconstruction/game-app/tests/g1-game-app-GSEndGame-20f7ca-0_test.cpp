// Test for batch g1-game-app-GSEndGame-20f7ca-0. Covers the phase counter of GSEndGame: the constructor, Ctor, Dtor,
// the Update phase dispatch, the hand-over to GSFlashMenu and Draw. The engine symbols the batch calls (MenuManager,
// MenuBase, COnline, StateBase, StateMachine, PlayerManager, the Application object and the GSFlashMenu::s_inst object)
// are stubbed here, so the test links without the engine. Exit status 0 means every check passed.
#include <cstddef>
#include <cstdio>
#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/GSEndGame.hpp"
#include "dh2/GSFlashMenu.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/c_online_impl.hpp"

namespace {

int g_failures = 0;
int g_pushCount = 0;          // MenuManager::PushMenu("menu_About")
int g_updateCount = 0;        // MenuManager::Update(hudOnly)
int g_lastUpdateArg = -1;     // hudOnly passed to the last Update
int g_drawCount = 0;          // MenuManager::Draw(hudOnly)
int g_switchCount = 0;        // StateMachine::SwitchState
StateBase* g_lastSwitchState = nullptr;
bool g_lastSwitchOwned = true;
int g_removeAllCount = 0;     // PlayerManager::RemoveAllPlayers
bool g_aboutVisible = false;
int g_aboutTag = 0;           // address stands in for the "menu_About" MenuBase
int g_mainTag = 0;            // address stands in for the "menu_MainMenu" MenuBase
// The MenuManager singleton is raw storage: the batch reads its m_multiMenuManager and calls stubbed non-virtual members.
alignas(MenuManager) unsigned char g_managerBuf[sizeof(MenuManager)] = {};
int g_machineTag = 0;         // address stands in for the StateMachine the Application owns
int g_playerTag = 0;          // address stands in for the PlayerManager the Application owns

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

namespace fakemmm {
extern int g_popBoolCount;  // defined with the fake MultiMenuManager below
}  // namespace fakemmm

void ResetCounters() {
    fakemmm::g_popBoolCount = 0;
    g_pushCount = 0;
    g_updateCount = 0;
    g_lastUpdateArg = -1;
    g_drawCount = 0;
    g_switchCount = 0;
    g_lastSwitchState = nullptr;
    g_lastSwitchOwned = true;
    g_removeAllCount = 0;
}

void ResetPending() {
    GSFlashMenu::s_inst.m_pendingMenu = nullptr;
    GSFlashMenu::s_inst.m_loadMainMenu = false;
}

// The Application object the batch reaches through ApplicationGetInstance(). Only its two pointer members are used.
Application g_application;

// MultiMenuManager is not constructed here. The batch calls its virtuals through the object's vtable, so the test points a
// MultiMenuManager-sized object at a table of its own. Each slot index comes from the member-function pointer: under the
// Itanium C++ ABI the first word of a virtual member-function pointer is the vtable offset plus one.
namespace fakemmm {

int g_popBoolCount = 0;                // MultiMenuManager::PopMenu(bool) calls
bool g_lastPopBool = false;

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

void FakePopBool(void*, bool repeat) {
    ++g_popBoolCount;
    g_lastPopBool = repeat;
}

void* g_vtable[32] = {};
alignas(MultiMenuManager) unsigned char g_object[sizeof(MultiMenuManager)] = {};

// Points the object at the fake table and returns it. Called once, before the object is used.
MultiMenuManager* Install() {
    using PopBoolFn = void (MultiMenuManager::*)(bool);
    const PopBoolFn popBool = &MultiMenuManager::PopMenu;
    g_vtable[VtableSlot(popBool)] = reinterpret_cast<void*>(&FakePopBool);
    *reinterpret_cast<void***>(g_object) = g_vtable;
    return reinterpret_cast<MultiMenuManager*>(g_object);
}

}  // namespace fakemmm

}  // namespace

// ---- stubs for the engine symbols the batch references ----

Application::Application() {}
Application::~Application() {}
bool Application::onEvent(const glitch::SEvent&) {
    return false;
}

Application& ApplicationGetInstance() {
    return g_application;
}

MenuManager* MenuManager::GetInstance() {
    return reinterpret_cast<MenuManager*>(g_managerBuf);
}

void MenuManager::PushMenu(const char* name) {
    if (std::strcmp(name, "menu_About") == 0) {
        ++g_pushCount;
    }
}

MenuBase* MenuManager::GetMenuByName(const char* name) {
    if (std::strcmp(name, "menu_About") == 0) {
        return reinterpret_cast<MenuBase*>(&g_aboutTag);
    }
    if (std::strcmp(name, "menu_MainMenu") == 0) {
        return reinterpret_cast<MenuBase*>(&g_mainTag);
    }
    return nullptr;
}

void MenuManager::Update(bool hudOnly) {
    ++g_updateCount;
    g_lastUpdateArg = hudOnly ? 1 : 0;
}

void MenuManager::Draw(bool) {
    ++g_drawCount;
}

bool MenuBase::IsVisible() const {
    return reinterpret_cast<const MenuBase*>(&g_aboutTag) == this && g_aboutVisible;
}

// A real COnlineImpl with the online flag clear, as the original's GetOnline() returns. It MUST be a real
// object: the library's GetOnlineGameFlag() (game-app/src/online_flag.cpp) dereferences this pointer through
// COnline::IsOnlineGame(), so returning null here segfaults GSEndGame::Update instead of taking the offline path.
static COnlineImpl g_testOnline;
COnline* COnline::GetInstance() {
    return &g_testOnline;
}

void StateMachine::SwitchState(StateBase* state, bool owned) {
    ++g_switchCount;
    g_lastSwitchState = state;
    g_lastSwitchOwned = owned;
}

int PlayerManager::RemoveAllPlayers() {
    ++g_removeAllCount;
    return 0;
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

GSFlashMenu::GSFlashMenu() {}
GSFlashMenu::~GSFlashMenu() {}
void GSFlashMenu::Ctor(const StateMachine*) {}
void GSFlashMenu::Dtor(const StateMachine*) {}
void GSFlashMenu::Update(StateMachine*, double) {}
void GSFlashMenu::Draw(const StateMachine*) {}

GSFlashMenu GSFlashMenu::s_inst;

int main() {
    g_application.m_stateMachine = reinterpret_cast<StateMachine*>(&g_machineTag);
    g_application.m_playerManager = reinterpret_cast<PlayerManager*>(&g_playerTag);
    reinterpret_cast<MenuManager*>(g_managerBuf)->m_multiMenuManager = fakemmm::Install();

    // Constructor, Ctor and Dtor.
    {
        GSEndGame endGame;
        Check(endGame.m_phase == 0, "constructor sets m_phase to 0");

        endGame.m_phase = 7;
        endGame.Ctor(nullptr);
        Check(endGame.m_phase == 0, "Ctor sets m_phase to 0");

        endGame.m_phase = 3;
        endGame.Dtor(nullptr);
        Check(endGame.m_phase == 3, "Dtor leaves m_phase alone");
    }

    // Phase 0: pushes menu_About, advances to phase 1 and ends with MenuManager::Update(false).
    {
        GSEndGame endGame;
        ResetCounters();
        ResetPending();
        endGame.m_phase = 0;
        endGame.Update(nullptr, 0.0);
        Check(endGame.m_phase == 1, "phase 0 advances to phase 1");
        Check(g_pushCount == 1, "phase 0 pushes menu_About once");
        Check(g_updateCount == 1 && g_lastUpdateArg == 0, "phase 0 ends with MenuManager::Update(false)");
        Check(g_switchCount == 0 && g_removeAllCount == 0, "phase 0 does not switch state or remove players");
        Check(GSFlashMenu::s_inst.m_pendingMenu == nullptr && !GSFlashMenu::s_inst.m_loadMainMenu,
              "phase 0 does not touch the main-menu hand-over");
    }

    // Phase 1 with About still visible: the phase holds and nothing else happens.
    {
        GSEndGame endGame;
        ResetCounters();
        ResetPending();
        endGame.m_phase = 1;
        g_aboutVisible = true;
        endGame.Update(nullptr, 0.0);
        Check(endGame.m_phase == 1, "phase 1 holds while About is visible");
        Check(g_pushCount == 0, "phase 1 does not push a menu");
        Check(g_updateCount == 1 && g_lastUpdateArg == 0, "phase 1 visible ends with MenuManager::Update(false)");
        Check(g_switchCount == 0 && g_removeAllCount == 0, "phase 1 visible does not switch state");
        Check(GSFlashMenu::s_inst.m_pendingMenu == nullptr && !GSFlashMenu::s_inst.m_loadMainMenu,
              "phase 1 visible leaves the main-menu hand-over alone");
        g_aboutVisible = false;
    }

    // Phase 1 with About hidden: falls into the phase-2 steps and keeps m_phase at 1.
    {
        GSEndGame endGame;
        ResetCounters();
        ResetPending();
        endGame.m_phase = 1;
        g_aboutVisible = false;
        endGame.Update(nullptr, 0.0);
        Check(endGame.m_phase == 1, "phase 1 with About hidden keeps m_phase at 1");
        Check(GSFlashMenu::s_inst.m_pendingMenu == reinterpret_cast<MenuBase*>(&g_mainTag),
              "phase 1 hidden sets m_pendingMenu to menu_MainMenu");
        Check(GSFlashMenu::s_inst.m_loadMainMenu, "phase 1 hidden sets m_loadMainMenu");
        Check(g_switchCount == 1 && g_lastSwitchState == &GSFlashMenu::s_inst && !g_lastSwitchOwned,
              "phase 1 hidden switches to GSFlashMenu::s_inst, not owned");
        Check(g_removeAllCount == 1, "phase 1 hidden removes all players");
        Check(g_updateCount == 1 && g_lastUpdateArg == 0, "phase 1 hidden ends with MenuManager::Update(false)");
    }

    // Phase 2: the same hand-over steps, m_phase unchanged.
    {
        GSEndGame endGame;
        ResetCounters();
        ResetPending();
        endGame.m_phase = 2;
        endGame.Update(nullptr, 0.0);
        Check(endGame.m_phase == 2, "phase 2 keeps m_phase at 2");
        Check(GSFlashMenu::s_inst.m_pendingMenu == reinterpret_cast<MenuBase*>(&g_mainTag),
              "phase 2 sets m_pendingMenu to menu_MainMenu");
        Check(GSFlashMenu::s_inst.m_loadMainMenu, "phase 2 sets m_loadMainMenu");
        Check(g_pushCount == 0, "phase 2 does not push a menu");
        Check(g_switchCount == 1 && g_lastSwitchState == &GSFlashMenu::s_inst && !g_lastSwitchOwned,
              "phase 2 switches to GSFlashMenu::s_inst, not owned");
        Check(g_removeAllCount == 1, "phase 2 removes all players");
        Check(g_updateCount == 1 && g_lastUpdateArg == 0, "phase 2 ends with MenuManager::Update(false)");
        Check(fakemmm::g_popBoolCount == 1 && fakemmm::g_lastPopBool, "phase 2 pops the multi-menu stack with PopMenu(true)");
    }

    // Any other phase: only MenuManager::Update(false) runs.
    {
        GSEndGame endGame;
        ResetCounters();
        ResetPending();
        endGame.m_phase = 5;
        endGame.Update(nullptr, 0.0);
        Check(endGame.m_phase == 5, "other phases leave m_phase alone");
        Check(g_pushCount == 0, "other phases do not push a menu");
        Check(g_updateCount == 1 && g_lastUpdateArg == 0, "other phases end with MenuManager::Update(false)");
        Check(GSFlashMenu::s_inst.m_pendingMenu == nullptr && !GSFlashMenu::s_inst.m_loadMainMenu,
              "other phases leave the main-menu hand-over alone");
        Check(g_switchCount == 0 && g_removeAllCount == 0, "other phases do not switch state");
        Check(fakemmm::g_popBoolCount == 0, "other phases do not pop the multi-menu stack");
    }

    // Draw: MenuManager::Draw(false) once, no state change.
    {
        GSEndGame endGame;
        ResetCounters();
        endGame.m_phase = 1;
        endGame.Draw(nullptr);
        Check(g_drawCount == 1, "Draw calls MenuManager::Draw once");
        Check(endGame.m_phase == 1, "Draw leaves m_phase alone");
    }

    if (g_failures == 0) {
        std::printf("all GSEndGame checks passed\n");
        return 0;
    }
    std::printf("%d GSEndGame check(s) failed\n", g_failures);
    return 1;
}
