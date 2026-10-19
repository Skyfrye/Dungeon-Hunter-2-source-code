// Test for batch r2a-game-character-CharAI-2ae0f1-2 (redo pass). The functions it owns have their bodies in the batch-5
// source (g1-game-character-CharAI-2ae0f1-5.cpp: AI_IsTargetSeeking, the anim step hooks and _OnAnimEvent) and the batch-8
// source (g1-game-character-CharAI-2ae0f1-8.cpp: AI_IsSkillUsable). This test links those two files. Every external they call
// is stubbed below, and the stubs record what the checks read.
//
// Character, CharAI, GameObject and CharAI skill storage is zero-filled and never constructed. The virtual calls the
// functions make go through fake vtables that are written into that storage: CharAI slot 41 (OnPreAttack), Character slot
// 73 (+0x124, CanRangeAttack) and GameObject slot 13 (+0x34, IsDead).

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <new>
#include <string>
#include <utility>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ProjectileManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/member_names.hpp"

int gAssertLevel = 0;
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
std::map<std::pair<std::string, int>, CharAI::GroupInfo> CharAI::s_groups;

// ---- stub state ----------------------------------------------------------------------------------------------------------

namespace st {
int stepIndex = 0;
int stepCount = 0;
bool hasCombo = false;
bool canRange = false;
bool targetDead = false;
bool smUsingSkill = false;
bool smCasting = false;
bool scriptLoaded = true;
bool skillUsable = true;
int stopLoopCalls = 0;
bool lastStopEndNow = false;
int setStepCalls = 0;
unsigned int lastSetStep = 0;
int skipCalls = 0;
int setTargetCalls = 0;
bool lastSetTargetNull = false;
std::vector<int> raised;
std::vector<std::intptr_t> raisedData;
int lookAtCalls = 0;
GameObject* lastLookAt = nullptr;
int preAttackCalls = 0;
int lastPreAttack = 0;
std::vector<unsigned int> effectIds;
}  // namespace st

// Zero-filled storage for the objects, and the fake vtables they point at.
alignas(CharAI) unsigned char g_aiStorage[sizeof(CharAI)];
alignas(Character) unsigned char g_charStorage[sizeof(Character)];
alignas(GameObject) unsigned char g_targetStorage[sizeof(GameObject)];
alignas(v2Controller) unsigned char g_controllerStorage[sizeof(v2Controller)];
alignas(CharAISkillScript) unsigned char g_scriptStorage[sizeof(CharAISkillScript)];
alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_projectileStorage[64] __asm__("_ZN9SingletonI17ProjectileManagerE6s_instE");
alignas(16) unsigned char g_fxStorage[64] __asm__("_ZN15VisualFXManager6s_instE");

void* g_aiVtable[128];
void* g_charVtable[128];
void* g_gameVtable[128];

bool StubCanRangeAttack(const Character*) { return st::canRange; }
bool StubIsDead(const GameObject*) { return st::targetDead; }
void StubOnPreAttack(CharAI*, int step) {
    ++st::preAttackCalls;
    st::lastPreAttack = step;
}

// ---- stubs for externals (the linker needs them; the checks read the recorded state) -----------------------------------

int CharAnimator::ANIM_GetStepIndex() const { return st::stepIndex; }
int CharAnimator::ANIM_GetStepCount() const { return st::stepCount; }
void CharAnimator::ANIM_SetStep(unsigned int step) {
    ++st::setStepCalls;
    st::lastSetStep = step;
}
void CharAnimator::ANIM_SkipNextStep() { ++st::skipCalls; }
void CharAnimator::ANIM_StopLoop(bool endNow) {
    ++st::stopLoopCalls;
    st::lastStopEndNow = endNow;
}
void CharAnimator::ANIM_Set(int) {}
bool Character::HasComboAttack() const { return st::hasCombo; }
int Character::RaiseEvent(int eventId, void* data) {
    st::raised.push_back(eventId);
    st::raisedData.push_back(reinterpret_cast<std::intptr_t>(data));
    return 0;
}
int Character::SG_GetCurrentFaerieId(int) const { return -1; }
const void* Character::GetCharFaery(int) const { return nullptr; }
const void* Character::GetCharSkill(int) const { return nullptr; }
void Character::SG_ReloadSkills() {}
void Character::SG_TellSlots(void (*)(int, unsigned int, void*), void*) {}
bool CharStateMachine::SM_IsUsingSkill() const { return st::smUsingSkill; }
bool CharStateMachine::SM_IsCasting() const { return st::smCasting; }
int CharStateMachine::SM_GetState() const { return -1; }
int CharStateMachine::SM_SetCastState(unsigned int, void*, bool) { return 0; }
int CharStateMachine::SM_SetSkillState(unsigned int, bool, void*, bool) { return 0; }
void CharProperties::PROPS_AddInt(int, int) {}
int CharProperties::PROPS_GetInt(int, bool) const { return 0; }
const Point3D<float>& GameObject::GetTargetPosition() const {
    static Point3D<float> zero{0.0f, 0.0f, 0.0f};
    return zero;
}
void v2Controller::Cmd_LookAt(GameObject* target) {
    ++st::lookAtCalls;
    st::lastLookAt = target;
}
void v2Controller::Cmd_MoveTo(GameObject*) {}

bool CharAI::IsScriptProcessLoaded() const { return st::scriptLoaded; }
void CharAI::AI_SetTarget(GameObject* target, bool) {
    ++st::setTargetCalls;
    st::lastSetTargetNull = target == nullptr;
}
float CharAI::AI_GetMeleeRadiusSq() const { return 0.0f; }
bool CharAI::AI_IsSpellActive() const { return false; }
void CharAI::AI_EndSpell(bool) {}
void CharAI::SetSkillsAndSpells() {}
int CharAI::_HandleProjectile(Projectile*, void*) { return 0; }

bool CharAISkillScript::OnSkillCheck_Usable() { return st::skillUsable; }
bool CharAISkillScript::OnPreSkill() { return true; }
void CharAISkillScript::OnPostSkill() {}
int CharAISkillScript::OnSkill() { return 0; }
bool CharAISkillScript::OnSkillCheck_Active() { return false; }
void CharAISkillScript::OnSkillCleanUp() {}
void CharAISkillScript::OnSkillUpdate() {}

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}
ObjectHandle::operator Character*() { return nullptr; }
ObjectHandle::operator GameObject*() { return nullptr; }
ObjectHandle ObjectManager::GetObjectByName(char const*, int, bool, char const*) { return ObjectHandle(); }

Projectile* ProjectileManager::Spawn(int, GameObject*, GameObject*, int (*)(Projectile*, void*),
                                     int (*)(Projectile*, void*), void*, bool) {
    return nullptr;
}
void VisualFXManager::PlayAnimFXSet(int effectTableId, const Point3D<float>&, const GameObject*,
                                    VisualFXManager::AnimFXSetData*) {
    st::effectIds.push_back(static_cast<unsigned int>(effectTableId));
}

Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStorage); }
Level* Application::GetCurrentLevel() const { return nullptr; }
bool CameraLevel::CanPlayShakeAnim(Character*) const { return false; }
bool CameraLevel::PlayAnim(int, int, bool) { return false; }

namespace pydata {
int FindMemberName(const NameTable& table, int count, const char* name) {
    for (int i = 0; i < count; ++i) {
        if (std::strcmp(name, table.names[i]) == 0) {
            return i;
        }
    }
    return -1;
}
}  // namespace pydata

// The PyData name tables read by the batch sources. Only the NameTable form is declared in this translation unit.
pydata::NameTable Arrays::AnimDict::m_memberNames;
pydata::NameTable Arrays::AnimTable::m_memberNames;
pydata::NameTable Arrays::AnimatedEffectTable::m_memberNames;
pydata::NameTable Arrays::Sounds::m_memberNames;

// ---- checks ---------------------------------------------------------------------------------------------------------------

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

CharAI* g_ai = nullptr;
Character* g_char = nullptr;
GameObject* g_target = nullptr;

void ResetStubs() {
    st::stepIndex = 0;
    st::stepCount = 3;
    st::hasCombo = true;
    st::canRange = false;
    st::targetDead = false;
    st::smUsingSkill = false;
    st::smCasting = false;
    st::scriptLoaded = true;
    st::skillUsable = true;
    st::stopLoopCalls = 0;
    st::lastStopEndNow = false;
    st::setStepCalls = 0;
    st::lastSetStep = 0;
    st::skipCalls = 0;
    st::setTargetCalls = 0;
    st::lastSetTargetNull = false;
    st::raised.clear();
    st::raisedData.clear();
    st::lookAtCalls = 0;
    st::lastLookAt = nullptr;
    st::preAttackCalls = 0;
    st::lastPreAttack = 0;
    st::effectIds.clear();
    g_ai->m_attacking = false;
    g_ai->m_attackStep = 0;
    g_ai->m_attackLastStep = false;
    g_ai->m_attackCommitted = false;
    g_ai->m_skillStepBegun = false;
    g_ai->m_skillStepEnded = false;
    g_ai->m_targetSeeking = true;
    g_ai->m_target = g_target;
    g_char->CharStateMachine::m_stateFlags = 0;
    g_char->CharAnimator::m_animStackIdx = 0;
    g_char->m_ooiInteractionType = -1;
}

void TestIsTargetSeeking() {
    ResetStubs();
    g_ai->m_targetSeeking = false;
    EXPECT(!g_ai->AI_IsTargetSeeking());
    g_ai->m_targetSeeking = true;
    EXPECT(g_ai->AI_IsTargetSeeking());
    g_char->CharStateMachine::m_stateFlags = 0x1000u;
    EXPECT(!g_ai->AI_IsTargetSeeking());
}

void TestAnimStepBeginSkillSpell() {
    ResetStubs();
    st::stepIndex = 1;
    g_char->CharAnimator::m_animStackIdx = 1;
    g_ai->m_skillStepEnded = true;
    EXPECT(g_ai->_OnAnimStepBegin_SkillSpell());
    EXPECT(!g_ai->m_skillStepBegun);
    EXPECT(st::stopLoopCalls == 0);

    ResetStubs();
    st::stepIndex = 0;
    g_char->CharAnimator::m_animStackIdx = 0;
    EXPECT(g_ai->_OnAnimStepBegin_SkillSpell());
    EXPECT(!g_ai->m_skillStepBegun);

    ResetStubs();
    st::stepIndex = 0;
    g_char->CharAnimator::m_animStackIdx = 1;
    EXPECT(g_ai->_OnAnimStepBegin_SkillSpell());
    EXPECT(g_ai->m_skillStepBegun);
    EXPECT(st::stopLoopCalls == 0);

    ResetStubs();
    st::stepIndex = 0;
    g_char->CharAnimator::m_animStackIdx = 1;
    g_ai->m_skillStepEnded = true;
    EXPECT(g_ai->_OnAnimStepBegin_SkillSpell());
    EXPECT(g_ai->m_skillStepBegun);
    EXPECT(st::stopLoopCalls == 1 && st::lastStopEndNow);
}

void TestAnimStepEndAttack() {
    // No combo attack: nothing changes.
    ResetStubs();
    st::hasCombo = false;
    g_ai->m_attacking = true;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(g_ai->m_attacking && st::raised.empty());

    // Level 0, last step, attack running: the step goes back to 0, events 27 and 28.
    ResetStubs();
    st::stepIndex = 2;
    g_ai->m_attacking = true;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(!g_ai->m_attacking);
    EXPECT(st::setStepCalls == 1 && st::lastSetStep == 0);
    EXPECT(st::raised.size() == 2 && st::raised[0] == 27 && st::raised[1] == 28);

    // Level 0, last step, not attacking: the non-sticky target is cleared instead.
    ResetStubs();
    st::stepIndex = 2;
    g_ai->m_attacking = false;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(st::setTargetCalls == 1 && st::lastSetTargetNull);
    EXPECT(st::setStepCalls == 0);
    EXPECT(st::raised.size() == 2);

    // Level 0, not the last step, not attacking, no ranged attack: clear, then step to the count.
    ResetStubs();
    st::stepIndex = 0;
    st::canRange = false;
    g_ai->m_attacking = false;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(st::setTargetCalls == 1);
    EXPECT(st::setStepCalls == 1 && st::lastSetStep == 3);
    EXPECT(st::raised.size() == 1 && st::raised[0] == 27);

    // Level 0, not the last step, not attacking, ranged attack available: no step change.
    ResetStubs();
    st::stepIndex = 0;
    st::canRange = true;
    g_ai->m_attacking = false;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(st::setTargetCalls == 0 && st::setStepCalls == 0);
    EXPECT(st::raised.size() == 1 && st::raised[0] == 27);

    // Level 0, not the last step, attacking: the flag clears and no step change.
    ResetStubs();
    st::stepIndex = 0;
    g_ai->m_attacking = true;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(!g_ai->m_attacking && st::setStepCalls == 0);
    EXPECT(st::raised.size() == 1 && st::raised[0] == 27);

    // Level 1, second to last step, live target: the next step is skipped and the flag stays.
    ResetStubs();
    st::stepIndex = 1;
    g_char->CharAnimator::m_animStackIdx = 1;
    g_ai->m_attacking = true;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(st::skipCalls == 1 && g_ai->m_attacking);

    // Level 1, second to last step, dead target: the flag clears and nothing is skipped.
    ResetStubs();
    st::stepIndex = 1;
    g_char->CharAnimator::m_animStackIdx = 1;
    st::targetDead = true;
    g_ai->m_attacking = true;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(!g_ai->m_attacking && st::skipCalls == 0);

    // Level 1, first step, live target: not the second to last step, so the flag clears.
    ResetStubs();
    st::stepIndex = 0;
    g_char->CharAnimator::m_animStackIdx = 1;
    g_ai->m_attacking = true;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(!g_ai->m_attacking && st::skipCalls == 0);

    // Level 1, no target, interaction type 8 on the second to last step: the flag clears.
    ResetStubs();
    st::stepIndex = 1;
    g_char->CharAnimator::m_animStackIdx = 1;
    g_ai->m_target = nullptr;
    g_char->m_ooiInteractionType = 8;
    g_ai->m_attacking = true;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(!g_ai->m_attacking && st::skipCalls == 0);

    // Level 1, no target, interaction type 0 on the second to last step: skipped.
    ResetStubs();
    st::stepIndex = 1;
    g_char->CharAnimator::m_animStackIdx = 1;
    g_ai->m_target = nullptr;
    g_ai->m_attacking = true;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(st::skipCalls == 1 && g_ai->m_attacking);

    // Level 2: nothing happens.
    ResetStubs();
    g_char->CharAnimator::m_animStackIdx = 2;
    g_ai->m_attacking = true;
    EXPECT(g_ai->_OnAnimStepEnd_Attack());
    EXPECT(g_ai->m_attacking && st::skipCalls == 0 && st::raised.empty() && st::setStepCalls == 0);
}

void TestAnimStepBeginAttack() {
    // Level 0 stores the step and raises event 26 with it.
    ResetStubs();
    st::stepIndex = 2;
    g_char->CharAnimator::m_animStackIdx = 0;
    EXPECT(g_ai->_OnAnimStepBegin_Attack());
    EXPECT(g_ai->m_attackStep == 2);
    EXPECT(st::raised.size() == 1 && st::raised[0] == 26);
    EXPECT(st::raisedData.size() == 1 && st::raisedData[0] == 2);

    // Level 1, step 0: last-step flag set, aim at the target, pre-attack hook with the stored step.
    ResetStubs();
    st::stepIndex = 0;
    g_char->CharAnimator::m_animStackIdx = 1;
    g_ai->m_attackStep = 5;
    g_ai->m_attackCommitted = true;
    EXPECT(g_ai->_OnAnimStepBegin_Attack());
    EXPECT(g_ai->m_attackLastStep && !g_ai->m_attackCommitted);
    EXPECT(st::lookAtCalls == 1 && st::lastLookAt == g_target);
    EXPECT(st::preAttackCalls == 1 && st::lastPreAttack == 5);

    // Level 1, last step: committed as well.
    ResetStubs();
    st::stepIndex = 2;
    g_char->CharAnimator::m_animStackIdx = 1;
    EXPECT(g_ai->_OnAnimStepBegin_Attack());
    EXPECT(g_ai->m_attackLastStep && g_ai->m_attackCommitted);
    EXPECT(st::lookAtCalls == 1 && st::preAttackCalls == 0);

    // Level 1, middle step: neither flag is set.
    ResetStubs();
    st::stepIndex = 1;
    g_char->CharAnimator::m_animStackIdx = 1;
    g_ai->m_attackLastStep = true;
    g_ai->m_attackCommitted = true;
    EXPECT(g_ai->_OnAnimStepBegin_Attack());
    EXPECT(!g_ai->m_attackLastStep && !g_ai->m_attackCommitted);
    EXPECT(st::lookAtCalls == 1);

    // Level 2: nothing happens.
    ResetStubs();
    g_char->CharAnimator::m_animStackIdx = 2;
    EXPECT(g_ai->_OnAnimStepBegin_Attack());
    EXPECT(st::raised.empty() && st::lookAtCalls == 0 && st::preAttackCalls == 0);
}

void TestAnimEventEffect() {
    static char one[] = "one";
    static char two[] = "two";
    static char* effects[] = {one, two};
    Arrays::AnimatedEffectTable::m_memberNames.names = effects;
    Arrays::AnimatedEffectTable::m_memberNames.size = 2;

    ResetStubs();
    EXPECT(g_ai->_OnAnimEvent("fx_two"));
    EXPECT(st::effectIds.size() == 1 && st::effectIds[0] == 1);

    ResetStubs();
    EXPECT(g_ai->_OnAnimEvent("fx_missing"));
    EXPECT(st::effectIds.empty());
    Arrays::AnimatedEffectTable::m_memberNames.size = 0;
}

void TestIsSkillUsable() {
    // A skill is in use and the 0x8000 bit is clear: not usable.
    ResetStubs();
    st::smUsingSkill = true;
    g_char->CharStateMachine::m_stateFlags = 0;
    EXPECT(!g_ai->AI_IsSkillUsable(0));

    // A skill is in use and the 0x8000 bit is set: the checks run and the script decides.
    ResetStubs();
    st::smUsingSkill = true;
    g_char->CharStateMachine::m_stateFlags = 0x8000u;
    g_ai->m_skillScripts.push_back(reinterpret_cast<CharAISkillScript*>(g_scriptStorage));
    EXPECT(g_ai->AI_IsSkillUsable(0));
    st::skillUsable = false;
    EXPECT(!g_ai->AI_IsSkillUsable(0));

    // No skill in use, index past the end: not usable.
    ResetStubs();
    EXPECT(!g_ai->AI_IsSkillUsable(1));

    // Casting blocks the skill even when no skill is in use.
    ResetStubs();
    st::smCasting = true;
    EXPECT(!g_ai->AI_IsSkillUsable(0));
    g_ai->m_skillScripts.clear();
}

}  // namespace

int main() {
    // Zero-filled objects with their fake vtables.
    std::memset(g_aiStorage, 0, sizeof g_aiStorage);
    std::memset(g_charStorage, 0, sizeof g_charStorage);
    std::memset(g_targetStorage, 0, sizeof g_targetStorage);
    g_aiVtable[41] = reinterpret_cast<void*>(&StubOnPreAttack);
    g_charVtable[73] = reinterpret_cast<void*>(&StubCanRangeAttack);
    g_gameVtable[13] = reinterpret_cast<void*>(&StubIsDead);

    g_ai = reinterpret_cast<CharAI*>(g_aiStorage);
    g_char = reinterpret_cast<Character*>(g_charStorage);
    g_target = reinterpret_cast<GameObject*>(g_targetStorage);
    *reinterpret_cast<void**>(g_ai) = static_cast<void*>(g_aiVtable);
    *reinterpret_cast<void**>(g_char) = static_cast<void*>(g_charVtable);
    *reinterpret_cast<void**>(g_target) = static_cast<void*>(g_gameVtable);
    g_ai->m_character = g_char;
    g_char->m_controller = reinterpret_cast<v2Controller*>(g_controllerStorage);

    TestIsTargetSeeking();
    TestAnimStepBeginSkillSpell();
    TestAnimStepEndAttack();
    TestAnimStepBeginAttack();
    TestAnimEventEffect();
    TestIsSkillUsable();

    if (g_failures == 0) {
        std::printf("r2a-game-character-CharAI-2ae0f1-2 test: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-character-CharAI-2ae0f1-2 test: %d failure(s)\n", g_failures);
    return 1;
}
