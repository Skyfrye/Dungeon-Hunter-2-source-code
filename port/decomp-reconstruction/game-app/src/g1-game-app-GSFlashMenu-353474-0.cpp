// Batch g1-game-app-GSFlashMenu-353474-0 (GSFlashMenu, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// The C1/C2 constructor pair and the D1/D2 destructor pair have identical bodies, so each pair has one definition
// here. The scalar deleting destructor (D0) is compiler-generated and is not written.
// Redo (r2a-game-app-pack0-e3ab88-0): Ctor, Dtor and Update now make the MultiMenuManager push and pop calls
// (dh2/MultiMenuManager.hpp exists), and Update reads StateMachine::m_stack (public). Only the online branch of
// Update is still missing.
#include "dh2/GSFlashMenu.hpp"

#include <string>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "net-session-online/c_online.hpp"

// The one GSFlashMenu object that GSInit and GSEndGame switch to. It is defined with its class, as GSConsole and
// GSKeyboard define theirs. Its constructor is 0x3841b4.
GSFlashMenu GSFlashMenu::s_inst;

namespace {

// Trace probe at the start of Ctor and Dtor, and on the pop path of Update (asm of 0x3846fc, 0x3845f8 and 0x384460 is
// the same sequence): DebugSwitches::load(), then GetSwitch("isTracingGSFlashMenu") and the switch value is discarded.
// The asm passes the 20-byte literal to std::string::_M_range_initialize; the Hex-Rays listing prints it as "" because
// it drops the second bound. The original calls load() on DebugSwitches::s_inst. s_inst is private in dh2/DebugSwitches.hpp,
// so GetInstance() supplies that same object. GetInstance also loads on first use, and the repeated load only costs time
// (the same convention as DebugSwitchOn in game-anim).
void TraceGSFlashMenuSwitch() {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    const std::string name("isTracingGSFlashMenu");
    (void)switches->GetSwitch(name);
}

}  // namespace

// 0x3841a8 GSFlashMenu::Draw(StateMachine const*)
// Asm: LDR R0,[R0,#4]; MOV R1,#0; B MenuManager::Draw(bool). A tail call on m_manager with hudOnly = false.
void GSFlashMenu::Draw(const StateMachine* /*machine*/) {
    m_manager->Draw(false);
}

// 0x3841b4 GSFlashMenu::GSFlashMenu()  (C1 variant)
// 0x38421c GSFlashMenu::GSFlashMenu()  (C2 variant, same body; both are 72 bytes)
// Asm (0x3841b4): vptr (+0x00), +0x04/+0x08/+0x0c cleared, the string at +0x10 built with its inline buffer (+0x20 and +0x24 point at it, then
// _M_allocate_block(this+0x10, 16), which allocates only for sizes above 16 and so does nothing, and the NUL stored at the data pointer), and
// +0x28/+0x29 cleared. The string is an empty std::string member (unk_10), which holds exactly that state.
GSFlashMenu::GSFlashMenu() {
    m_manager = nullptr;                               // +0x04
    m_menu = nullptr;                                  // +0x08
    m_pendingMenu = nullptr;                           // +0x0c
    m_popped = false;                                  // +0x28
    m_loadMainMenu = false;                            // +0x29
}

// 0x3842ec GSFlashMenu::~GSFlashMenu()  (D0, scalar deleting destructor)
// Not written: compiler-generated from the virtual destructor. Asm: BL D1 (0x384284), then BL CustomFree(this).
// C++ delete covers it, the same convention as GSEndGame and GSInit.

// 0x384284 GSFlashMenu::~GSFlashMenu()  (D1 variant)
// 0x3842b8 GSFlashMenu::~GSFlashMenu()  (D2 variant, same body)
// Asm (D1, 0x384284): the vptr is stored and _String_base::_M_deallocate_block runs on the string at +0x10, which frees only a block that is not the
// inline buffer (the string never grows). The std::string member releases itself after this empty body; StateBase::~StateBase then runs.
GSFlashMenu::~GSFlashMenu() {}

// 0x384460 GSFlashMenu::Update(StateMachine*, double)
// Reconstructed from the listing. In order:
//   1. The menu swap. When m_pendingMenu is set and differs from m_menu: when m_menu is set, the old menu is popped with
//      m_manager->m_multiMenuManager->PopMenu(m_menu->m_name, false) (vtable +0x3c); m_pendingMenu is read again (the
//      asm reloads it after the pop); m_pendingMenu is cleared, m_menu takes the value, and PushMenu(m_menu) runs (vtable
//      +0x34).
//   2. The top-of-stack test. This state is on top when the last StateInfo of machine->m_stack holds it.
//   3. The pop path, when this state is on top and m_menu is null or hidden: the trace probe, m_popped = true, then
//      ApplicationGetInstance().m_stateMachine->PopState(nullptr).
//   4. The update path, otherwise: MenuManager::Update(false) on m_manager, then GetOnline() (COnline::GetInstance()) and,
//      when its online byte is set, StateMachine::RecurseUpdate(machine, dt) (asm 0x384550). The byte is
//      COnline::isOnlineGame_ at +0x05; net-session-online/c_online.hpp now declares the public accessor
//      IsOnlineGame(), so the test is written (the earlier note's layout request is stale).
void GSFlashMenu::Update(StateMachine* machine, double dt) {
    // Menu swap (asm 0x384460 to 0x3844D4).
    MenuBase* next = m_pendingMenu;
    if (next != nullptr && next != m_menu) {
        if (m_menu != nullptr) {
            m_manager->m_multiMenuManager->PopMenu(m_menu->m_name, false);
            next = m_pendingMenu;                      // the original re-reads the pending menu after the pop
        }
        m_pendingMenu = nullptr;                       // +0x0c
        m_menu = next;                                 // +0x08
        m_manager->m_multiMenuManager->PushMenu(m_menu);
    }

    // This state is on top when the last entry of the stack is this state (asm: m_stack.end - 8 is the state word).
    const bool onTop = !machine->m_stack.empty() && machine->m_stack.back().state == static_cast<StateBase*>(this);
    if (!onTop || (m_menu != nullptr && m_menu->IsVisible())) {
        m_manager->Update(false);
        if (COnline::GetInstance()->IsOnlineGame()) {  // +0x05
            machine->RecurseUpdate(dt);
        }
        return;
    }

    // Pop path.
    TraceGSFlashMenuSwitch();
    m_popped = true;                                   // +0x28
    ApplicationGetInstance().m_stateMachine->PopState(nullptr);
}

// 0x3845f8 GSFlashMenu::Dtor(StateMachine const*)
// Reconstructed. The trace probe; the current level's flag at +0x198 (Level::m_isInGameView) is set when there is a level;
// when m_menu is set and visible, the original pops it with m_manager->m_multiMenuManager->PopMenu(m_menu->m_name, false)
// (vtable +0x3c); m_menu is cleared; m_popped is set. The MenuBase* result of the original is not reproduced: StateBase::Dtor
// is void.
void GSFlashMenu::Dtor(const StateMachine* /*machine*/) {
    TraceGSFlashMenuSwitch();
    if (Level* level = ApplicationGetInstance().GetCurrentLevel()) {
        level->m_isInGameView = true;                  // +0x198
    }
    if (m_menu != nullptr && m_menu->IsVisible()) {
        m_manager->m_multiMenuManager->PopMenu(m_menu->m_name, false);
    }
    m_menu = nullptr;                                  // +0x08
    m_popped = true;                                   // +0x28
}

// 0x3846fc GSFlashMenu::Ctor(StateMachine const*)
// Reconstructed. The trace probe; m_manager = MenuManager::GetInstance(); when m_loadMainMenu is set, the main menu is
// loaded on the manager (LoadMainMenu; GetInstance ignores the argument the original passes), m_pendingMenu =
// GetMenuByName("menu_MainMenu") and m_loadMainMenu is cleared; when m_menu is set, m_manager->m_multiMenuManager->PushMenu(m_menu)
// runs (vtable +0x34; asm: r1 holds m_menu at the call); m_popped is cleared. The int return of the original is not
// reproduced: StateBase::Ctor is void.
void GSFlashMenu::Ctor(const StateMachine* /*machine*/) {
    TraceGSFlashMenuSwitch();
    MenuManager* manager = MenuManager::GetInstance();
    m_manager = manager;                               // +0x04
    if (m_loadMainMenu) {
        manager->LoadMainMenu();
        m_pendingMenu = MenuManager::GetInstance()->GetMenuByName("menu_MainMenu");  // +0x0c
        m_loadMainMenu = false;                        // +0x29
    }
    if (m_menu != nullptr) {
        m_manager->m_multiMenuManager->PushMenu(m_menu);
    }
    m_popped = false;                                  // +0x28
}
