// Batch g1-game-character-CharAI-2ae0f1-1 (part 2 of 9 of CharAI): the script setup and load steps, the
// constructor and destructor, the update queue rotation, and the aggro and update drivers.
// Declarations and layout come from dh2/CharAI.hpp. Offsets in comments are the original 32-bit offsets
// inside CharAI (this) unless a line says Character. CharAI is a base of Character at +0x3c8, so m_character
// reaches the Character bases through the pointer.

#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "core-platform/deps/application.hpp"  // ApplicationGetDt: Application::GetDt on the singleton
#include "core-platform/memory.hpp"            // gAssertLevel
#include "dh2/CharAI.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/AISExternal.hpp"
#include "dh2/AISMonster.hpp"
#include "dh2/AISFaery.hpp"
#include "dh2/AISDefault.hpp"
#include "dh2/AISPlayerIPhone.hpp"
#include "dh2/AISPlayer.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ObjectSearcher.hpp"
#include "dh2/Random.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/runtime_support.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "pydata-accessors/structs_records.hpp"  // Structs::AIProps: the AITable row (Character::GetCharAI)
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"

// Script classes named here only. Their complete definitions wait on dh2/CharAIScript.hpp (the AIS*.hpp
// headers derive from it), so the specializations that construct them are PARTIAL.
class AISExternal;
class AISMonster;
class AISFaery;
class AISDefault;
class AISPlayerIPhone;
class AISPlayer;

// Explicit specializations of CharAI::SetScript<T>. AISExternal and AISMonster are defined in
// g1-game-character-CharAI-2ae0f1-0.cpp; the other four are defined in this file.
template <>
void CharAI::SetScript<AISExternal>();
template <>
void CharAI::SetScript<AISMonster>();
template <>
void CharAI::SetScript<AISFaery>();
template <>
void CharAI::SetScript<AISDefault>();
template <>
void CharAI::SetScript<AISPlayerIPhone>();
template <>
void CharAI::SetScript<AISPlayer>();

namespace {

const char* const kCharAICpp =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI.cpp";
const char* const kCharAIHeader =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/../AI/CharAI.h";

// The original ASSERT(expr) macro. Level 2 stops the process; level 1 prints the message; level 0 is silent.
void AssertFailed(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

}  // namespace

// 0x3cccf8 CharAI::SetScript<AISFaery>(void)
// The owner assert, then a previous m_scriptLoading is terminated (OnTerminate, slot 5, +0x14), deleted through its virtual deleting
// destructor (slot 1) and cleared; the 200-byte AISFaery (faery id -1 at +0xc4) becomes m_scriptLoading.
template <>
void CharAI::SetScript<AISFaery>() {
    if (!m_character) {
        AssertFailed("me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
                     kCharAIHeader, 673);
    }
    if (m_scriptLoading) {
        OnTerminate();  // slot 5 (+0x14)
        delete m_scriptLoading;
        m_scriptLoading = nullptr;
    }
    m_scriptLoading = new AISFaery(true);
}

// 0x3cce14 void CharAI::SetScript<AISDefault>(void)
// The owner assert, then a previous m_scriptLoading is terminated (OnTerminate, slot 5, +0x14), deleted through its virtual deleting
// destructor (slot 1) and cleared; the 196-byte AISDefault (CharAIScript(true), the mask words cleared) becomes m_scriptLoading.
template <>
void CharAI::SetScript<AISDefault>() {
    if (!m_character) {
        AssertFailed("me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
                     kCharAIHeader, 673);
    }
    if (m_scriptLoading) {
        OnTerminate();  // slot 5 (+0x14)
        delete m_scriptLoading;
        m_scriptLoading = nullptr;
    }
    m_scriptLoading = new AISDefault(true);
}

// 0x3ccfe4 int CharAI::SetScript<AISPlayerIPhone>(void)
// The owner assert, then a previous m_scriptLoading is terminated (OnTerminate, slot 5, +0x14), deleted through its virtual deleting
// destructor (slot 1) and cleared; the 216-byte AISPlayerIPhone (an AISPlayer: empty vector at +0xc4, counts at +0xd0 and +0xd4 zero) becomes m_scriptLoading.
template <>
void CharAI::SetScript<AISPlayerIPhone>() {
    if (!m_character) {
        AssertFailed("me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
                     kCharAIHeader, 673);
    }
    if (m_scriptLoading) {
        OnTerminate();  // slot 5 (+0x14)
        delete m_scriptLoading;
        m_scriptLoading = nullptr;
    }
    m_scriptLoading = new AISPlayerIPhone(true);
}

// 0x3cd11c CharAI::SetScript<AISPlayer>(void)
// The owner assert, then a previous m_scriptLoading is terminated (OnTerminate, slot 5, +0x14), deleted through its virtual deleting
// destructor (slot 1) and cleared; the 216-byte AISPlayer (empty vector at +0xc4, counts at +0xd0 and +0xd4 zero) becomes m_scriptLoading.
template <>
void CharAI::SetScript<AISPlayer>() {
    if (!m_character) {
        AssertFailed("me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
                     kCharAIHeader, 673);
    }
    if (m_scriptLoading) {
        OnTerminate();  // slot 5 (+0x14)
        delete m_scriptLoading;
        m_scriptLoading = nullptr;
    }
    m_scriptLoading = new AISPlayer(true);
}

// 0x3cd384 CharAI::ClearAllAggro(void)
// Clears m_aggro (+0x7c) and m_aggroedBy (+0x94) of every Character in the ObjectManager Character list (m_characters,
// +0x60). Then, for every ObjectBase in the object list (m_objects, +0x04) whose handle resolves to a Character, clears
// the same two maps. The original dereferences each Character list entry without a test; this port skips a null entry.
void CharAI::ClearAllAggro() {
    ObjectManager* objects = dword_99F764;
    for (Character* c : objects->m_characters) {  // +0x60
        if (c == nullptr) {
            continue;
        }
        CharAI* ai = c;  // Character derives from CharAI at +0x3c8
        ai->m_aggro.clear();     // +0x7c
        ai->m_aggroedBy.clear(); // +0x94
    }
    for (ObjectBase* object : objects->m_objects) {  // +0x04
        if (object == nullptr) {
            continue;
        }
        ObjectHandle handle = object->GetHandle();
        if (handle.GetObject(false) == nullptr) {
            continue;
        }
        Character* c = handle;  // ObjectHandle::operator Character*
        if (c == nullptr) {
            continue;
        }
        CharAI* ai = c;
        ai->m_aggro.clear();
        ai->m_aggroedBy.clear();
    }
}

// 0x3cd964 CharAI::~CharAI()  (complete-object destructor; the second emitted copy is 0x3cdb60)
CharAI::~CharAI() {
    // Drop this AI from the update queue: the first entry that matches is erased.
    auto it = std::find(s_updateQueue.begin(), s_updateQueue.end(), this);
    if (it != s_updateQueue.end()) {
        s_updateQueue.erase(it);
    }
    CharAI::OnTerminate();
    CharAI::AIUnLoadScriptProcess(true);
    // The original then frees, in this order, m_spellScripts (+0xc0), m_skillScripts (+0xb4), the unk_ac list (+0xac),
    // m_aggroedBy (+0x94), m_aggro (+0x7c) and unk_5c (+0x5c). The member destructors run in reverse declaration order,
    // which is the same sequence, so the containers are not cleared here.
}

// 0x3cdb60 CharAI::~CharAI()  (base-object copy of the destructor above; skipped, see the ledger)

// 0x3cdd5c CharAI::~CharAI()  (deleting destructor: the compiler emits it for `delete` of a CharAI; skipped)

// 0x3cdf7c CharAI::StepLoadScript(void)
// When the script name (+0x30) is set, the file is loaded into the script being built (m_scriptLoading, a LuaScript) and the "Lua_LoadMemUsage"
// debug switch is looked up (the result is unused).
void CharAI::StepLoadScript() {
    if (m_scriptName != nullptr) {
        m_scriptLoading->Load(m_scriptName);
        DebugSwitches::GetInstance()->load();
        DebugSwitches::GetInstance()->GetSwitch("Lua_LoadMemUsage");
    }
}

// 0x3ce044 CharAI::SetSkillsAndSpells(void)
// The script directory of the live script (LuaScript +0x68) is saved and set to "data/scripts/skills/". When m_skillScripts is empty it is
// filled with one entry per row of the character's skill list: a row with no script name (the length word at row +0x24) gives nullptr; any
// other row loads "_commons", calls DeclareSkill with the script name and the row index, then loads the named script and stores a
// new CharAISkillScript(character, name, index) when that load succeeds (nullptr when it fails), and calls DeclareSkill once more with no
// arguments. When m_spellScripts is empty the faery list is walked the same way (name length at row +0x14, name at +0x18, index -1 both
// in the call and in the CharAISkillScript). Afterwards the script directory is restored, the debug-switch lookup is made again and the script's
// InitVCB (slot 51, +0xcc) runs.
void CharAI::SetSkillsAndSpells() {
    if (!m_script) {
        AssertFailed("m_script", kCharAICpp, 660);
    }
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch("Lua_LoadMemUsage");
    const std::string savedDirectory = m_script->m_scriptDirectory;
    m_script->m_scriptDirectory = "data/scripts/skills/";

    if (m_skillScripts.empty()) {
        const Structs::SkillList* skillList = static_cast<const Structs::SkillList*>(m_character->GetCharSkillList());
        m_skillScripts.reserve(skillList->ListSize);
        sfc::script::lua::Arguments arguments;
        arguments.pushString("");
        arguments.pushInteger(-1);
        for (int i = 0; static_cast<unsigned int>(i) < skillList->ListSize; ++i) {
            const Structs::Skill* skill = static_cast<const Structs::Skill*>(m_character->GetCharSkill(i));
            if (skill->ScriptSize == 0) {
                m_skillScripts.push_back(nullptr);
                continue;
            }
            const char* name = static_cast<const char*>(skill->Script);
            m_script->Load("_commons");
            arguments.m_values->at(0).setString(name);
            arguments.m_values->at(1).setNumber(static_cast<float>(i));
            m_script->Call("DeclareSkill", arguments);
            if (m_script->Load(name)) {
                m_skillScripts.push_back(new CharAISkillScript(m_character, name, static_cast<unsigned int>(i)));
            } else {
                m_skillScripts.push_back(nullptr);
            }
            m_script->Call("DeclareSkill");
        }
    }

    if (m_spellScripts.empty()) {
        const Structs::FaeryList* faeryList = static_cast<const Structs::FaeryList*>(m_character->GetCharFaeryList());
        m_spellScripts.reserve(faeryList->ListSize);
        sfc::script::lua::Arguments arguments;
        arguments.pushString("");
        arguments.pushInteger(-1);
        for (int i = 0; static_cast<unsigned int>(i) < faeryList->ListSize; ++i) {
            const Structs::Faery* faery = static_cast<const Structs::Faery*>(m_character->GetCharFaery(i));
            if (faery->SpellScriptSize == 0) {
                m_spellScripts.push_back(nullptr);
                continue;
            }
            const char* name = static_cast<const char*>(faery->SpellScript);
            m_script->Load("_commons");
            arguments.m_values->at(0).setString(name);
            arguments.m_values->at(1).setNumber(-1.0f);
            m_script->Call("DeclareSkill", arguments);
            if (m_script->Load(name)) {
                m_spellScripts.push_back(new CharAISkillScript(m_character, name, 0xFFFFFFFFu));
            } else {
                m_spellScripts.push_back(nullptr);
            }
            m_script->Call("DeclareSkill");
        }
    }

    m_script->m_scriptDirectory = savedDirectory;
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch("Lua_LoadMemUsage");
    m_script->InitVCB();
}

// 0x3ce7c0 CharAI::InitScriptProcess(bool)
// The original returns the last hook's result, which LoadNInitScriptProcess (the only caller in the tree) ignores,
// so the port returns void.
void CharAI::InitScriptProcess(bool flag) {
    m_character->_InitHpMp();
    SetSkillsAndSpells();
    UpdateAllSkills();
    OnInitPost();  // vtable slot 3 (+0x0c)
    if (flag) {
        OnInitFinal();  // vtable slot 4 (+0x10)
    }
}

// 0x3ce9b8 CharAI::IncUpdateQueue(void)
// The queue s_updateQueue holds the AIs in turn order; its front is the AI whose turn it is. Each call gives up that turn
// (the front moves to the back), then the entries behind it are tested in order. The first entry that stops the scan is
// left at the front and keeps the turn. The timer s_updateTimer counts down by the frame time and re-arms to 180.
// The original returns an int* (or a Character virtual's result). No caller in the tree reads it, so the port returns void.
void CharAI::IncUpdateQueue() {
    if (s_updateTimer > 0) {
        s_updateTimer -= ApplicationGetDt();
        return;
    }
    s_updateTimer = 180;
    int remaining = static_cast<int>(s_updateQueue.size());
    if (remaining <= 1) {
        return;
    }
    // Give up the current turn: rotate the front to the back.
    s_updateQueue.push_back(s_updateQueue.front());
    s_updateQueue.pop_front();
    for (;;) {
        --remaining;
        if (remaining <= 0) {
            return;
        }
        CharAI* ai = s_updateQueue.front();
        Character* c = ai->m_character;

        // A controller that blocks this AI skips it: the entry rotates to the back. The controller's +0x09 flag
        // (unk_009) lets its commands run while blocked.
        v2Controller* ctl = c->m_controller;
        if (!ctl->unk_009 && (v2Controller::s_blocked || ctl->m_blocked)) {
            s_updateQueue.push_back(s_updateQueue.front());
            s_updateQueue.pop_front();
            continue;
        }

        if (!c->IsDead()) {
            if (c->IsRemotelyUpdated()) {
                return;  // this AI takes the turn and stays at the front
            }
            if (c->m_visible != 0) {
                // The original tests the zoning flags twice (+0x2ee appears in both halves of the same check); the
                // port keeps one copy. A visible character that is not zonable, not zoning-enabled, or inside a zone
                // takes the turn.
                if (!c->IsZonable() || c->m_zoningEnabled == 0 || c->m_inZone != 0) {
                    return;
                }
            }
        }

        // Not this one: the entry rotates to the back and the scan goes on.
        s_updateQueue.push_back(s_updateQueue.front());
        s_updateQueue.pop_front();
    }
}

// 0x3cebf0 CharAI::CharAI(void)  (complete-object constructor; the second emitted copy is 0x3ced50)
CharAI::CharAI() {
    // The vptr is set by the compiler. The containers that the original resets (unk_5c +0x5c, m_aggro +0x7c,
    // m_aggroedBy +0x94, unk_ac +0xac) and the vectors (+0xb4, +0xc0) start empty by default construction, which is the
    // state the original sets.
    m_masterInSight = true;          // +0x55
    m_updateDelay = 0;               // +0x08
    m_updateWaited = 0;              // +0x0c
    m_updatePaused = false;          // +0x18
    m_script = nullptr;              // +0x1c
    m_scriptLoading = nullptr;       // +0x20
    m_stagedLoad = false;            // +0x24
    m_loadStep = 0;                  // +0x28
    m_usesCommons = false;           // +0x2c
    m_scriptName = nullptr;          // +0x30
    m_group = nullptr;               // +0x34
    m_aiTickTimer = -1;              // +0x10
    m_dotTimer = -1;                 // +0x14
    m_groupRole = -1;                // +0x38
    m_requestedTarget = nullptr;     // +0x3c
    m_target = nullptr;              // +0x40
    m_lastTarget = nullptr;          // +0x44
    m_targetInSight = false;         // +0x49
    m_targetSeeking = true;          // +0x4a
    m_stickyTarget = true;           // +0x4b
    m_interacting = false;           // +0x4c
    unk_4d = true;                   // +0x4d
    m_master = nullptr;              // +0x50
    m_masterAlive = true;            // +0x54
    unk_58 = nullptr;                // +0x58
    m_curSkill = -1;                 // +0xcc
    m_skillStepBegun = false;        // +0xd0
    m_skillStepEnded = false;        // +0xd1
    // m_attackStep (+0x74), m_attacking (+0x78), m_attackLastStep (+0x79), m_attackCommitted (+0x7a) and unk_70 (+0x70)
    // are not written by the original constructor and are not written here.
    s_updateQueue.push_back(this);
}

// 0x3ced50 CharAI::CharAI(void)  (base-object copy of the constructor above; skipped, see the ledger)

// 0x3ceeb0 CharAI::SetScriptByName(char const*)
// A name that does not start with "__" is a Lua script file: AISExternal, with the name kept at +0x30. A "__<kind>__"
// name picks a built-in script. Any other "__" name falls back to AISDefault with no name.
void CharAI::SetScriptByName(const char* name) {
    if (std::strncmp(name, "__", 2) != 0) {
        SetScript<AISExternal>();
        DebugSwitches::GetInstance()->load();
        DebugSwitches::GetInstance()->GetSwitch("Lua_LoadMemUsage");  // result unused by the original
        m_scriptName = name;
        return;
    }
    const char* kind = name + 2;
    if (std::strcmp(kind, "monster__") == 0) {
        SetScript<AISMonster>();
    } else if (std::strcmp(kind, "player__") == 0) {
        SetScript<AISPlayerIPhone>();
    } else if (std::strcmp(kind, "faery__") == 0) {
        SetScript<AISFaery>();
    } else if (std::strcmp(kind, "npc__") == 0) {
        SetScript<AISDefault>();
    } else {
        SetScript<AISDefault>();
        m_scriptName = nullptr;
    }
}

// 0x3cf04c CharAI::StepCreateScript(void)
// The owner's AITable row (Character::GetCharAI, Structs::AIProps) names the script: when its name length (row +0x28, m_w10) is non-zero the
// script is created by that name (SetScriptByName(row +0x2c, m_w11)) and m_usesCommons (+0x2c) is set. Otherwise a "Player" type (the
// owner's gametype string, ObjectBase +0x5c) gets AISPlayer and any other type AISDefault, m_scriptName is cleared and m_usesCommons is
// cleared. Both paths read the isTracingChar_Init switch (result unused).
void CharAI::StepCreateScript() {
    const Structs::AIProps* row = m_character->GetCharAI();
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch("isTracingChar_Init");
    if (row->ScriptSize != 0) {
        SetScriptByName(static_cast<const char*>(row->Script));
        m_usesCommons = true;
    } else {
        if (std::strcmp(m_character->m_gameType.c_str(), "Player") != 0) {
            SetScript<AISDefault>();
        } else {
            SetScript<AISPlayer>();
        }
        m_scriptName = nullptr;
        m_usesCommons = false;
    }
}

// 0x3cf1f0 CharAI::LoadScriptProcess(void)
// The script load is a step machine over m_loadStep (0..6; 7 means loaded). An unstaged load, or a staged one whose
// character is a player, runs the steps in one call (budget of seven steps). A staged load runs as many steps as
// StepQueryAvailableStep grants this frame.
void CharAI::LoadScriptProcess() {
    if (m_loadStep > 6) {
        return;
    }
    int budget = 0;  // number of further steps to run after the current one
    if (!m_stagedLoad || m_character->IsPlayer()) {
        budget = 6;
    } else {
        const int granted = StepQueryAvailableStep(7 - m_loadStep);
        if (granted <= 0) {
            return;
        }
        budget = granted - 1;
    }
    for (;;) {
        switch (m_loadStep) {
            case 0:
                StepCreateScript();
                break;
            case 1:
                StepBindFunction();
                break;
            case 2:
                StepSetCharacter();
                break;
            case 3:
                StepLoadCommon();
                break;
            case 4:
                StepLoadScript();
                break;
            case 5:
                StepInitScript();
                break;
            case 6:
                m_script = m_scriptLoading;
                break;
            default:
                AssertFailed("false", kCharAICpp, 555);
                break;
        }
        ++m_loadStep;
        if (budget == 0) {
            return;
        }
        --budget;
    }
}

// 0x3cf3a4 CharAI::LoadNInitScriptProcess(bool)
bool CharAI::LoadNInitScriptProcess(bool flag) {
    if (m_script != nullptr) {
        return false;
    }
    LoadScriptProcess();
    if (m_script == nullptr) {
        return false;
    }
    InitScriptProcess(flag);
    return true;
}

// 0x3cf3f0 CharAI::_UpdateAggro(void)
// A player returns at once. A non-faerie that is not its turn (and has waited under 500 ms) only counts the frame time down (+0x08) and up (+0x0c);
// otherwise the wait is reset and, unless the debug switch "DisableAIDelayTimerOptim" is set, the update delay counts down and re-arms from the seed
// stream (100..299) when it runs out. An NPC returns. A monster that is not remotely updated and has a target (+0x40) takes the target branch:
//  - the target's Character (from its handle) and the highest-aggro Character (AI_GetHighestAggro) are compared; when they are the same, or either is
//    null, a target that is not an enemy is dropped (ClearAggro, SetTarget(null), SyncLastTarget); an enemy target keeps its place but a search of the
//    player list (ObjectManager +0x70, nearest, range AITable +0x40) is made: an empty result drops the target, otherwise the local player (PlayerInfo
//    +0x660) is given aggro DesignSettings +0x30 when it is among the hits, is an enemy and has no aggro entry yet;
//  - when they differ, the highest-aggro Character becomes the target if its aggro exceeds the current target's aggro times DesignSettings +0x08.
// A faerie with a master returns. The threat search over the Character list (ObjectManager +0x60) then runs: the range is AITable +0x3c, the spawn view
// radius (Character +0x143c) while the character awaits its spawn and the radius is positive, or AITable +0x40 when there is no aggro. Every hit gets
// RaiseEvent 9 (enemy), 7 (friend) or 8 (neutral); event 12 re-announces the target when no enemy was found.
void CharAI::_UpdateAggro() {
    if (m_character->IsPlayer()) {
        return;
    }
    if (!m_character->IsFaerie()) {
        if (!IsMyTurn(this) && m_updateWaited < 500) {
            m_updateDelay -= ApplicationGetDt();
            m_updateWaited += ApplicationGetDt();
            return;
        }
        m_updateWaited = 0;
        DebugSwitches::GetInstance()->load();
        const bool disableOptim = DebugSwitches::GetInstance()->GetSwitch("DisableAIDelayTimerOptim");
        if (!disableOptim) {
            if (m_updateDelay > 0) {
                m_updateDelay -= ApplicationGetDt();
                if (m_updateDelay > 0) {
                    return;
                }
            }
            // Re-arm the delay: the original inlines Random::GetRandom(200, false) and adds 100. Counter [0] is
            // the non-synchronized stream's debug counter.
            ++Random::s_debugRandomCounters[0];
            Random::s_seed = (59051u * Random::s_seed + 177149u) % 0xDAF26Bu;
            m_updateDelay = static_cast<int>(Random::s_seed % 0xC8u) + 100;
        }
    }
    if (m_character->IsNPC()) {
        return;
    }
    if (m_character->IsMonster() && !m_character->IsRemotelyUpdated() && m_target != nullptr) {
        Character* highest = AI_GetHighestAggro();
        ObjectHandle targetHandle = m_target->GetHandle();
        Character* current = targetHandle;
        if (current == nullptr || highest == nullptr || highest == current) {
            if (AI_IsEnemy(current)) {
                ObjectSearcher::TargetList nearest(m_character, 1, 2, 1);
                ObjectSearcher::CharacterList players;  // vtable set by the implicit constructor
                players.m_list = &dword_99F764->unk_70;  // ObjectManager +0x70
                players.m_current = players.m_list->begin();
                players.m_end = players.m_list->end();
                nearest.Search(m_character->GetCharAI()->ViewRadiusNoAggro, kCharAIFullCircle, players);
                if (nearest.m_results.empty()) {
                    AI_ClearAggro(current);
                    AI_SetTarget(nullptr, false);
                    AI_SyncLastTarget();
                } else {
                    Character* local = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
                    const bool hasAggro = m_aggro.find(local) != m_aggro.end();
                    bool inResults = false;
                    while (!nearest.m_results.empty()) {
                        if (nearest.m_results.top().object == local) {
                            inResults = true;
                            break;
                        }
                        nearest.m_results.pop();
                    }
                    if (!hasAggro && inResults && AI_IsEnemy(local)) {
                        AI_AddAggro(local, reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members)->EnemySpottedAggro);
                    }
                }
            } else {
                AI_ClearAggro(current);
                AI_SetTarget(nullptr, false);
                AI_SyncLastTarget();
            }
        } else {
            const float currentAggro = AI_GetAggro(current);
            const float highestAggro = AI_GetAggro(highest);
            if (highestAggro >
                currentAggro * reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members)->AggroTargetSwitchPct) {
                DebugSwitches::GetInstance()->GetSwitch("isTracingThreatChange");  // the result is unused
                AI_SetTarget(highest, false);
            }
        }
        return;
    }
    if (m_character->IsFaerie() && m_master != nullptr) {
        return;
    }

    // Threat search. The range is the AITable row's m_w15 (+0x3c); a spawning character with a spawn view radius uses that
    // radius, and a character without aggro uses m_w16 (+0x40). The row is Character::GetCharAI().
    const Structs::AIProps* row = m_character->GetCharAI();
    float range = row->ViewRadius;
    if (m_character->SM_IsAwaitingToSpawn() && m_character->m_spawnViewRadius > 0.0f) {
        range = m_character->m_spawnViewRadius;  // Character +0x143c
    } else if (!AI_HasAggro()) {
        range = row->ViewRadiusNoAggro;
    }

    ObjectSearcher::TargetList found(m_character, 0x7FFFFFFF, 2, 1);
    ObjectSearcher::CharacterList characters;  // vtable set by the implicit constructor
    characters.m_list = &dword_99F764->m_characters;  // ObjectManager +0x60
    characters.m_current = characters.m_list->begin();
    characters.m_end = characters.m_list->end();
    found.Search(range, kCharAIFullCircle, characters);

    // The original pops every hit: an enemy gets RaiseEvent 9, a friend 7, a neutral 8. The target is re-announced with 12
    // when no enemy was found, or when the search was empty.
    bool anyEnemy = false;
    while (!found.m_results.empty()) {
        const ObjectSearcher::TargetInfo& top = found.m_results.top();
        if ((top.isCharacter & 1) == 0) {
            AssertFailed("tlist.Top().IsChar()", kCharAICpp, 1286);
        }
        GameObject* other = top.object;
        if (AI_IsEnemy(other)) {
            m_character->RaiseEvent(9, other);
            anyEnemy = true;
        } else if (AI_IsFriend(other)) {
            m_character->RaiseEvent(7, other);
        } else if (AI_IsNeutral(other)) {
            m_character->RaiseEvent(8, other);
        }
        found.m_results.pop();
    }
    if (!anyEnemy && m_target != nullptr) {  // +0x40
        m_character->RaiseEvent(12, m_target);
    }
}

// 0x3cfbf4 CharAI::Update(void)
// The whole update is profiled as "CharacterAI::Update". It returns at once when the AI is paused (+0x18), when the controller is blocked (the
// controller byte +0x09 clear and either the global block or its own byte set), or when the owner is out of its zone: its state flags
// (Character +0x520) lack bit 0x100, or it is zonable (virtual +0xc4) with zoning enabled (+0x2ee) and not inside a zone (+0x2f0). Otherwise
// ObjectBase byte +0x88 is set and the four drivers run, each profiled: _UpdateTarget ("CharacterAI::_Target"), _UpdateMaster
// ("CharacterAI::_Master"), _UpdateAggro ("CharacterAI::_Aggro") and the OnUpdate virtual (slot 6, +0x18, "CharacterAI::_Generic").
void CharAI::Update() {
    PushProfilingContext("CharacterAI::Update");
    if (m_updatePaused) {
        PopProfilingContext("CharacterAI::Update");
        return;
    }
    v2Controller* ctl = m_character->m_controller;
    if (!ctl->unk_009 && (v2Controller::s_blocked || ctl->m_blocked)) {
        PopProfilingContext("CharacterAI::Update");
        return;
    }
    if ((m_character->CharStateMachine::m_stateFlags & 0x100u) == 0 ||
        (m_character->IsZonable() && m_character->m_zoningEnabled && !m_character->m_inZone)) {
        PopProfilingContext("CharacterAI::Update");
        return;
    }
    m_character->unk_88 = 1;  // Character +0x88 (ObjectBase::unk_88)
    PushProfilingContext("CharacterAI::_Target");
    _UpdateTarget();
    PopProfilingContext("CharacterAI::_Target");
    PushProfilingContext("CharacterAI::_Master");
    _UpdateMaster();
    PopProfilingContext("CharacterAI::_Master");
    PushProfilingContext("CharacterAI::_Aggro");
    _UpdateAggro();
    PopProfilingContext("CharacterAI::_Aggro");
    PushProfilingContext("CharacterAI::_Generic");
    OnUpdate();  // vtable slot 6 (+0x18)
    PopProfilingContext("CharacterAI::_Generic");
    PopProfilingContext("CharacterAI::Update");
}
