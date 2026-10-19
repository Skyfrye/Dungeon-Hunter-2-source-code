// Batch g1-game-world-GSLevel-a07550-0: the GSLevel state (15 entries, owner GSLevel). Layouts and declarations
// come from dh2/GSLevel.hpp. A PARTIAL body names the missing piece next to the code it affects.

#include "dh2/GSLevel.hpp"

#include <string>

#include "dh2/AnimSetManager.hpp"            // AnimSetManager::s_inst (Flush)
#include "dh2/Application.hpp"               // ApplicationGetInstance: unk_ec (+0xec), m_stateMachine (+0x18)
#include "dh2/Character.hpp"                 // Character: CharAI base at +0x3c8
#include "dh2/CharAI.hpp"                    // CharAI::AI_SetTarget, m_interacting (CharAI +0x4c = Character +0x414)
#include "dh2/DebugSwitches.hpp"             // DebugSwitches::s_inst
#include "dh2/Level.hpp"                     // Level (+0x130 m_loadStep, +0x145 m_inTransition)
#include "dh2/LuaScript.hpp"                 // LuaScript::s_numCalls
#include "dh2/MenuBase.hpp"                   // MenuBase (Hide, m_menu, m_character, m_characterProxy)
#include "dh2/MenuFX.hpp"                     // MenuFX (RenderFX::InvokeASCallback through m_menu)
#include "dh2/MenuManager.hpp"                // MenuManager::GetInstance, GetMenuByName, PushMenu, Draw, Update
#include "dh2/MultiMenuManager.hpp"           // MultiMenuManager::IsStateInStack (MenuManager +0xf4)
#include "dh2/PlayerInfo.hpp"                 // PlayerInfo::unk_660 (Character*)
#include "dh2/PlayerManager.hpp"              // PlayerManager::GetLocalPlayer
#include "dh2/StateMachine.hpp"               // StateMachine::SwitchState
#include "dh2/global/IsMultiplayerGame.hpp"   // dword_99F76C: the PlayerManager global
#include "dh2/global/net_singletons.hpp"      // GetOnlineGameFlag (COnline +0x05)
#include "net-session-online/online_game_state.hpp"  // OnlineSingleton<OnlineGameState>::GetInstance, mode_ (+0x34)
#include "net-session-online/tb/online_singleton.hpp"  // OnlineSingleton<T>::GetInstance
#include "vendor-gameswf/smart_ptr_proxy.hpp"  // gameswf::smart_ptr_proxy / weak_proxy::is_alive (menu +0x48)

// Statics. GSLevel::s_gsLevel (ELF 0x9a25f4, 0x44 bytes) is the state LoadLevel switches to. GSLevel::s_level
// (ELF 0x9a2638) is the Level the current GSLevel owns.
Level* GSLevel::s_level = nullptr;
GSLevel GSLevel::s_gsLevel;

// 0x385ed8 GSLevel::GSLevel() (C1)
// 0x385f30 GSLevel::GSLevel() (C2). Same body as C1.
// Sets the vptr (compiler), leaves m_levelName empty and m_level null. The other members are not written here.
GSLevel::GSLevel() : m_level(nullptr) {}

// 0x385f88 GSLevel::~GSLevel() (D1)
// 0x385fd8 GSLevel::~GSLevel() (D2). Same body as D1.
// The original resets the vptr and frees the m_levelName buffer. The compiler does both here, because the
// std::string member is destroyed after the body. The Level itself is deleted by Dtor, not here.
GSLevel::~GSLevel() {}

// 0x385fbc GSLevel::~GSLevel() (D0, deleting destructor). Not written: the compiler generates it from the
// virtual destructor above, and a delete expression runs ~GSLevel() then operator delete (the original's
// CustomFree). See the ledger row (skipped).

// 0x385ea0 GSLevel::Reload()
// Calls Dtor(nullptr) then Ctor(nullptr) through the vtable (slots +0x0c and +0x08). The virtual calls
// below dispatch the same way. The original returns the Ctor's register leftover; Ctor is void here.
void GSLevel::Reload() {
    Dtor(nullptr);
    Ctor(nullptr);
}

// 0x385ed0 GSLevel::Pause(StateMachine const*)
// Empty in the original.
void GSLevel::Pause(const StateMachine* /*machine*/) {}

// 0x385ed4 GSLevel::WakeUp(StateMachine const*)
// Empty in the original.
void GSLevel::WakeUp(const StateMachine* /*machine*/) {}

// 0x386190 GSLevel::Ctor(StateMachine const*)
// Reconstructed (r3b-w2) against the disassembly 0x386190..0x386288. AnimSetManager::Flush; the Level built from
// the staged arguments (operator new(0x1ac) then Level::Level with the same ten arguments); m_phase = 1; m_level and
// s_level set; unk_3c = 1; menu_Loading looked up; then the push runs when
//     !GetOnline()->isOnlineGame_ (COnline +0x05) || OnlineGameState mode_ (+0x34) != 3
//     || (MenuManager +0xf4) MultiMenuManager's IsStateInStack(menu) (vtable +0x40) == 0,
// the original's short circuit (0x386234 LDRB [R0,#5] BNE 0x38628C; 0x386290 LDR [R0,#0x34] CMP #3 BNE push;
// 0x3862a0 LDR [R0,#0xF4]; 0x3862b4 LDR PC,[R3,#0x40]; 0x3862bc BNE return). The push then runs
// gameswf::weak_ptr<character>::check_proxy (0x386260 on menu+0x48: a dead proxy is released and the cached
// character at +0x4c is cleared) and RenderFX::InvokeASCallback(menu+0x04, menu+0x4c, "onProgress", nullptr, 0).
void GSLevel::Ctor(const StateMachine* /*machine*/) {
    AnimSetManager::s_inst.Flush();

    // Level(name, entryPointId, savegameSlot, seed, syncedSeed, resume, useSpawnPoint, fromSubId, difficulty).
    // The original calls operator new(0x1ac) and Level::Level on it; new Level does the same.
    Level* level = new Level(m_levelName.c_str(), m_entryPointId, m_savegameSlot, m_seed, m_syncedSeed, m_resume,
                             m_useSpawnPoint, m_fromSubId, m_difficulty);
    m_phase = 1;
    m_level = level;
    s_level = level;
    unk_3c = true;

    MenuBase* loading = MenuManager::GetInstance()->GetMenuByName("menu_Loading");
    // The original's condition, short-circuited the same way: while offline the menu stack is never consulted.
    bool push = !GetOnlineGameFlag();
    if (!push) {
        if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ != 3) {
            push = true;
        } else {
            push = !MenuManager::GetInstance()->m_multiMenuManager->IsStateInStack(loading);
        }
    }
    if (push && loading != nullptr) {
        MenuManager::GetInstance()->PushMenu(loading);
        // gameswf::weak_ptr<character>::check_proxy on the menu's character proxy (menu+0x48): a dead proxy is
        // released and the cached character pointer (menu+0x4c) cleared, exactly as in the binary.
        gameswf::smart_ptr_proxy* proxy =
            reinterpret_cast<gameswf::smart_ptr_proxy*>(&loading->m_characterProxy);
        if (proxy->get_proxy() != nullptr && !proxy->get_proxy()->is_alive()) {
            *proxy = nullptr;
            loading->m_character = nullptr;
        }
        loading->m_menu->InvokeASCallback(loading->m_character, "onProgress", nullptr, 0);
    }
}

// 0x3860bc GSLevel::Dtor(StateMachine const*)
// If m_level is set: unload it, hide the HUD menu when it is registered, delete the Level and clear m_level.
// s_level is cleared in every case.
void GSLevel::Dtor(const StateMachine* /*machine*/) {
    if (m_level != nullptr) {
        m_level->Unload();
        MenuBase* hud = MenuManager::GetInstance()->GetMenuByName("menu_HUD_0");
        if (hud != nullptr) {
            hud->Hide();
        }
        if (m_level != nullptr) {
            delete m_level;
            m_level = nullptr;
        }
    }
    s_level = nullptr;
}

// 0x386040 GSLevel::Resume(StateMachine const*)
// Clears the AI target of the local player's character and its m_interacting flag. The byte written at
// Character +0x414 is CharAI +0x4c (m_interacting). The three GetLocalPlayer calls follow the original.
void GSLevel::Resume(const StateMachine* /*machine*/) {
    PlayerInfo* first = dword_99F76C->GetLocalPlayer(0, true);
    if (first->unk_660 != nullptr) {
        PlayerInfo* localPlayer = dword_99F76C->GetLocalPlayer(0, true);
        localPlayer->unk_660->CharAI::AI_SetTarget(nullptr, false);
        PlayerInfo* current = dword_99F76C->GetLocalPlayer(0, true);
        current->unk_660->m_interacting = false;
    }
}

// 0x38600c GSLevel::Draw2D(StateMachine const*)
void GSLevel::Draw2D(const StateMachine* /*machine*/) {
    m_level->Draw2D();
}

// 0x386014 GSLevel::Draw(StateMachine const*)
// Draws the Level, then the menus. The menus are drawn in HUD-only mode while m_phase is above 3.
void GSLevel::Draw(const StateMachine* /*machine*/) {
    m_level->Draw();
    MenuManager::GetInstance()->Draw(m_phase > 3);
}

// 0x386630 GSLevel::Update(StateMachine*, double)
// Unless the application's byte at +0xec is set: phase 1 moves to phase 2; phase 2 loads the level and moves to 3; phase 3 updates the
// level and moves to 4 once the level reaches load step 38; phase 4 clears LuaScript::s_numCalls and s_dumpCallList, sets s_dumpCallList
// and clears the switch when the Lua_DumpCalls debug switch is on, and updates the level. MenuManager::Update(true) then runs when there
// is no level, or the level is not in transition and its load step is 1 or lower or above 26.
//
// The switch key is "Lua_DumpCalls", the literal at ELF 0x8c1ff8. The asm passes the end pointer (literal + 0x0d)
// to std::string::_M_range_initialize clone.2_0, which takes only that end pointer: the clone reads the start from
// the literal itself (LDR R6,=aLuaDumpcalls), so the length is 0x0d and the key is the whole 13-character literal.
void GSLevel::Update(StateMachine* /*machine*/, double /*dt*/) {
    if (ApplicationGetInstance().unk_ec) {  // byte_99F818: Singleton<Application>::s_inst +0xec
        return;
    }

    switch (m_phase) {
    case 1:
        m_phase = 2;
        break;
    case 2:
        m_level->Load();
        m_phase = 3;
        break;
    case 3:
        m_level->Update(false);
        if (m_level->m_loadStep == 38) {
            m_phase = 4;
        }
        break;
    case 4: {
        LuaScript::s_numCalls = 0;
        LuaScript::s_dumpCallList = false;
        DebugSwitches::s_inst.load();
        const std::string key("Lua_DumpCalls");  // the literal at ELF 0x8c1ff8, see the note above Update
        const bool dumpCalls = DebugSwitches::s_inst.GetSwitch(key);
        if (dumpCalls) {
            LuaScript::s_dumpCallList = true;
            DebugSwitches::s_inst.load();
            DebugSwitches::s_inst.SetSwitch(key, false);
        }
        m_level->Update(false);
        break;
    }
    default:
        break;
    }

    // MenuManager::Update(true) runs when there is no Level, or when the Level is not in transition and its load
    // step is 1 or lower, or above 26 (the asm tests m_loadStep <= 1 and > 26, with m_inTransition clear).
    Level* level = m_level;
    if (level == nullptr || (!level->m_inTransition && (level->m_loadStep <= 1 || level->m_loadStep > 26))) {
        MenuManager::GetInstance()->Update(true);
    }
}

// 0x386818 GSLevel::LoadLevel(char const*,int,uint,uint,uint,bool,bool,int,int)
// Stages the nine arguments in GSLevel::s_gsLevel (the globals at 0x9a25f8..0x9a2634 are its members) and
// switches the Application state machine to it, not owned. The original's LC_API_STRLEN_0 call is strlen,
// so the name is copied as a C string.
void GSLevel::LoadLevel(const char* name, int entryPointId, uint32_t savegameSlot, uint32_t seed,
                        uint32_t syncedSeed, bool resume, bool useSpawnPoint, int fromSubId, int difficulty) {
    GSLevel& next = s_gsLevel;
    next.m_levelName.assign(name);
    next.m_entryPointId = entryPointId;
    next.m_savegameSlot = savegameSlot;
    next.m_seed = seed;
    next.m_syncedSeed = syncedSeed;
    next.m_resume = resume;
    next.m_useSpawnPoint = useSpawnPoint;
    next.m_fromSubId = fromSubId;
    next.m_difficulty = difficulty;
    ApplicationGetInstance().m_stateMachine->SwitchState(&s_gsLevel, false);
}
