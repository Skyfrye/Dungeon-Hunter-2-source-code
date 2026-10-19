// Batch g1-game-app-GSEndGame-20f7ca-0 (GSEndGame, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// The C1/C2 constructor pair and the D1/D2 destructor pair have identical bodies, so each pair has one
// definition here. The scalar deleting destructor (D0) is compiler-generated and is not written.
#include "dh2/GSEndGame.hpp"

#include "dh2/Application.hpp"
#include "dh2/GSFlashMenu.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/OnlineStatusMsg.hpp"
#include "dh2/StatusMsg.hpp"
#include "dh2/AchievementMsg.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "net-session-online/c_online.hpp"

// 0x38358c GSEndGame::GSEndGame()
// 0x3835b8 GSEndGame::GSEndGame()  (C1 variant, same body)
// Asm (0x38358c): stores 0 to +0x04, then the vtable address point (_ZTV9GSEndGame + 8) to +0x00. The compiler
// writes the vptr from the class; StateBase has no constructor body of its own.
GSEndGame::GSEndGame() : m_phase(0) {}

// GSEndGame::s_inst (ELF 0x9a245c, 8 bytes): the state object Script_EndGame switches to. Constructed by the static initializer through GSEndGame().
GSEndGame GSEndGame::s_inst;

// 0x3835e4 GSEndGame::~GSEndGame()  (D2 variant)
// 0x3835e8 GSEndGame::~GSEndGame()  (D1 variant, same body)
// Both are a bare return (asm: BX LR). The base StateBase::~StateBase (0x38324c) is also a bare return, so the
// base destructor call that the compiler inserts changes nothing.
GSEndGame::~GSEndGame() {}

// 0x3835ec GSEndGame::Ctor(StateMachine const*)
// Asm: MOV R3,#0; STR R3,[R0,#4]; BX LR. Sets m_phase (+0x04) to 0. The original leaves r0 (this) as it was, so
// the decompiled int return is this. StateBase::Ctor is void in the slot contract, so that value is not reproduced.
void GSEndGame::Ctor(const StateMachine* /*machine*/) {
    m_phase = 0;
}

// 0x3835f8 GSEndGame::Dtor(StateMachine const*)
// Asm: BX LR. Empty.
void GSEndGame::Dtor(const StateMachine* /*machine*/) {}

// 0x3835fc GSEndGame::~GSEndGame()  (D0, scalar deleting destructor)
// Not written: compiler-generated from the virtual destructor. Asm: BL D1 (0x3835e8), then BL CustomFree(this).
// C++ delete covers it, the same convention as DataReloaderManager.

// 0x383618 GSEndGame::Draw(StateMachine const*)
// Asm: BL MenuManager::GetInstance; MOV R1,#0; B MenuManager::Draw(bool).
void GSEndGame::Draw(const StateMachine* /*machine*/) {
    MenuManager::GetInstance()->Draw(false);
}

// 0x383fbc GSEndGame::Update(StateMachine*, double)
// Phase 0 ends an online game when there was one (leave the room, back to the local matching provider, destroy the matching,
// clear the online flag and the online-game gate) and pushes the About menu; phase 1 waits for the About menu to close; phase 2
// (also reached from phase 1 once About is hidden) drains the dialog, achievement, status and online-status message queues,
// pops every multi menu, hands over to the flash menu stack with the main menu as the next menu, and removes all players.
// MenuManager::Update runs at the end of every path. Update does not use its StateMachine argument or dt.
void GSEndGame::Update(StateMachine* /*machine*/, double /*dt*/) {
    if (m_phase == 1) {
        // Phase 1 waits for the About menu to close. The original calls IsVisible on the result of GetMenuByName
        // without testing it for null, and so does this.
        MenuBase* aboutMenu = MenuManager::GetInstance()->GetMenuByName("menu_About");
        if (aboutMenu->IsVisible()) {
            MenuManager::GetInstance()->Update(false);
            return;
        }
        // About is hidden: the original falls into the phase-2 steps below and leaves m_phase at 1.
    } else if (m_phase != 2) {
        if (m_phase == 0) {
            if (GetOnlineGameFlag()) {  // COnline +0x05
                CMatching::Get()->LeaveRoom();  // vtable +0x3c
                CMatching::SetMatchingProvider(static_cast<CMatching::MATCHING_PROVIDERS>(1));
                CMatching::Get()->Destroy();
                GetOnline()->SetIsOnlineGame(false);
                OnlineSingleton<OnlineGameState>::GetInstance()->flag28_ = false;  // +0x28
            }
            MenuManager::GetInstance()->PushMenu("menu_About");
            ++m_phase;  // +0x04
        }
        MenuManager::GetInstance()->Update(false);
        return;
    }

    // Phase 2, also reached from phase 1 when the About menu is hidden.
    MenuMessageManager<DialogMsg, 1>::s_inst.FlushEnqueuedMessages(0);
    while (!MenuMessageManager<AchievementMsg, 1>::s_inst.m_queues[0].empty()) {
        MenuMessageManager<AchievementMsg, 1>::s_inst.m_queues[0].pop_front();
    }
    MenuMessageManager<DialogMsg, 1>::s_inst.FlushEnqueuedMessages(0);
    while (!MenuMessageManager<StatusMsg, 4>::s_inst.m_queues[0].empty()) {
        MenuMessageManager<StatusMsg, 4>::s_inst.m_queues[0].pop_front();
    }
    while (!MenuMessageManager<OnlineStatusMsg, 1>::s_inst.m_queues[0].empty()) {
        MenuMessageManager<OnlineStatusMsg, 1>::s_inst.m_queues[0].pop_front();
    }
    MultiMenuManager* multiMenus = MenuManager::GetInstance()->m_multiMenuManager;
    multiMenus->PopMenu(true);                      // vtable +0x38 on MenuManager +0xf4; true keeps popping
    MenuBase* mainMenu = MenuManager::GetInstance()->GetMenuByName("menu_MainMenu");
    GSFlashMenu::s_inst.m_pendingMenu = mainMenu;   // GSFlashMenu +0x0c (ELF dword_9A247C)
    GSFlashMenu::s_inst.m_loadMainMenu = true;      // GSFlashMenu +0x29 (ELF byte_9A2499)
    Application& application = ApplicationGetInstance();
    application.m_stateMachine->SwitchState(&GSFlashMenu::s_inst, false);  // Application +0x18
    application.m_playerManager->RemoveAllPlayers();                        // Application +0x40
    MenuManager::GetInstance()->Update(false);
}
