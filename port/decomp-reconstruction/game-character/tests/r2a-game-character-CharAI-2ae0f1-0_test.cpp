// Test for batch r2a-game-character-CharAI-2ae0f1-0 (redo of g1-game-character-CharAI-2ae0f1-0).
//
// The bodies are in game-character/src/g1-game-character-CharAI-2ae0f1-0.cpp, which this test links. The checks cover the
// script-loading steps (StepLoadCommon, StepSetCharacter, StepBindFunction), which call non-virtual CharAIScript and
// LuaScript members on the script being loaded, and the early exits of AIUnLoadScriptProcess. Those members are stubbed
// below and record their calls. Virtual calls (the AI hooks, IsRemotelyUpdated and the rest) need a vtable, so no check
// reaches them. The remaining symbols of the source are stubs that the checks never call.
//
// CharAI is zero-filled storage, the same as the batch-0 test: only non-virtual members run, and every member the checks
// touch is public.

#include <cstdio>
#include <cstring>
#include <deque>

#include "dh2/CharAI.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/Character.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/v2Controller.hpp"

// ---- Records written by the stubs below -----------------------------------------------------------------------

namespace {
int g_loadCalls = 0;
const void* g_loadThis = nullptr;
const char* g_loadName = nullptr;
int g_setCharacterCalls = 0;
const void* g_setCharacterThis = nullptr;
const void* g_setCharacterArg = nullptr;
int g_bindCalls = 0;
const void* g_bindThis = nullptr;

// Stand-ins for a CharAIScript and a Character. The stubs never dereference them.
alignas(16) unsigned char g_fakeScript[256];
alignas(16) unsigned char g_fakeCharacter[256];
alignas(16) unsigned char g_storage[sizeof(CharAI)];

void ResetRecords() {
    g_loadCalls = 0;
    g_loadThis = nullptr;
    g_loadName = nullptr;
    g_setCharacterCalls = 0;
    g_setCharacterThis = nullptr;
    g_setCharacterArg = nullptr;
    g_bindCalls = 0;
    g_bindThis = nullptr;
}

// Zero-filled CharAI: the vectors and pointers are all null, which is the empty state the checks rely on.
CharAI* MakeAI() {
    std::memset(g_storage, 0, sizeof(g_storage));
    return reinterpret_cast<CharAI*>(g_storage);
}

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

}  // namespace

// ---- Stubs for symbols defined by other batches (only the linker needs them) ----------------------------------

int gAssertLevel = 0;
bool v2Controller::s_blocked = false;
int CharAI::s_stepAvailableStep = 0;
int CharAI::s_updateTimer = 0;
std::deque<CharAI*> CharAI::s_updateQueue;

bool CharAI::AI_IsInCloseRange(const GameObject*) const { return false; }
bool CharAI::AI_IsInCombat() const { return false; }
bool CharAI::AI_IsInMeleeRange(const GameObject*) const { return false; }
bool CharAI::AI_IsInRange(const GameObject*) const { return false; }
bool CharAI::AI_IsInSight(const GameObject*) const { return false; }
bool CharAI::_OnAnimEvent(const char*) { return false; }
bool CharAI::_OnAnimSequenceBegin() { return false; }
bool CharAI::_OnAnimSequenceEnd() { return false; }
bool CharAI::_OnAnimStepBegin() { return false; }
bool CharAI::_OnAnimStepEnd() { return false; }
bool CharAI::_OnEndOfAnim() { return false; }
bool CharAI::_OnEndOfAnimSection() { return false; }
void CharAI::_SkillBlur() {}
void CharAI::_SkillCleanUp() {}
void CharAI::_SkillFocus() {}
void CharAI::_SpellBlur() {}
void CharAI::_SpellCleanUp() {}
void CharAI::_SpellFocus() {}

void CharProperties::HandleDots() {}
int CharStateMachine::RaiseStateEvent(int, void*) { return 0; }
int CharStateMachine::SM_GetState() const { return -1; }
bool CharStateMachine::SM_IsAwaitingToSpawn() const { return false; }
bool CharStateMachine::SM_IsInLimbus() const { return false; }

int CharTimers::TMR_Start(unsigned int, int, int, void*) { return 0; }

void Character::F_ApplyResult(const AttackResult&, Character*, Character*, bool) {}
void Character::F_MeleeAttack(AttackResult&, Character*, Character*, bool, bool) {}
int Character::GetCharAIId() const { return 0; }
bool Character::IsFaerie() const { return false; }
bool Character::IsFollower() const { return false; }
int Character::RaiseEvent(int, void*) { return 0; }
void Character::RegenTick(bool) {}

void GameObject::EnableCollisions() {}

ObjectHandle ObjectBase::GetHandle() { return ObjectHandle(); }
ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}
ObjectHandle::operator Character*() { return nullptr; }

// The script calls of StepLoadCommon, StepSetCharacter and StepBindFunction. They are non-virtual, so the stubs record the
// receiver (this) and the arguments.
int LuaScript::Load(const char* name) {
    ++g_loadCalls;
    g_loadThis = this;
    g_loadName = name;
    return 0;
}
void CharAIScript::SetCharacter(Character* c) {
    ++g_setCharacterCalls;
    g_setCharacterThis = this;
    g_setCharacterArg = c;
}
void CharAIScript::BindFunction() {
    ++g_bindCalls;
    g_bindThis = this;
}

// ---- Checks --------------------------------------------------------------------------------------------------

namespace {

void CheckStepLoadCommon() {
    CharAI* ai = MakeAI();
    const auto* script = reinterpret_cast<CharAIScript*>(g_fakeScript);
    ai->m_scriptLoading = const_cast<CharAIScript*>(script);

    ResetRecords();
    ai->m_usesCommons = false;  // +0x2c clear: no "_commons" file
    ai->StepLoadCommon();
    EXPECT(g_loadCalls == 0);

    ResetRecords();
    ai->m_usesCommons = true;
    ai->StepLoadCommon();
    EXPECT(g_loadCalls == 1);
    EXPECT(g_loadName != nullptr && std::strcmp(g_loadName, "_commons") == 0);
    EXPECT(g_loadThis == static_cast<const void*>(script));  // the script at +0x20
}

void CheckStepSetCharacter() {
    CharAI* ai = MakeAI();
    const auto* script = reinterpret_cast<CharAIScript*>(g_fakeScript);
    const auto* owner = reinterpret_cast<Character*>(g_fakeCharacter);
    ai->m_scriptLoading = const_cast<CharAIScript*>(script);
    ai->m_character = const_cast<Character*>(owner);  // +0x04

    ResetRecords();
    ai->StepSetCharacter();
    EXPECT(g_setCharacterCalls == 1);
    EXPECT(g_setCharacterThis == static_cast<const void*>(script));
    EXPECT(g_setCharacterArg == static_cast<const void*>(owner));
}

void CheckStepBindFunction() {
    CharAI* ai = MakeAI();
    const auto* script = reinterpret_cast<CharAIScript*>(g_fakeScript);
    ai->m_scriptLoading = const_cast<CharAIScript*>(script);

    ResetRecords();
    ai->StepBindFunction();
    EXPECT(g_bindCalls == 1);
    EXPECT(g_bindThis == static_cast<const void*>(script));
}

// AIUnLoadScriptProcess returns at once when there is no loading script, or when the call is not forced and the load is not
// staged. Those early exits touch nothing; the teardown path deletes a real script and is not exercised here.
void CheckUnLoadEarlyExits() {
    CharAI* ai = MakeAI();
    const auto* script = reinterpret_cast<CharAIScript*>(g_fakeScript);
    ai->m_scriptLoading = const_cast<CharAIScript*>(script);
    ai->m_stagedLoad = false;
    ai->m_loadStep = 3;
    ai->m_usesCommons = true;

    ai->AIUnLoadScriptProcess(false);  // not forced, not staged: nothing happens
    EXPECT(ai->m_scriptLoading == script);
    EXPECT(ai->m_loadStep == 3);
    EXPECT(ai->m_usesCommons);

    ai->m_scriptLoading = nullptr;
    ai->AIUnLoadScriptProcess(true);  // forced, but no loading script: nothing happens
    EXPECT(ai->m_loadStep == 3);
    EXPECT(ai->m_usesCommons);
}

}  // namespace

int main() {
    CheckStepLoadCommon();
    CheckStepSetCharacter();
    CheckStepBindFunction();
    CheckUnLoadEarlyExits();
    if (g_failures == 0) {
        std::printf("r2a-game-character-CharAI-2ae0f1-0 test: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
