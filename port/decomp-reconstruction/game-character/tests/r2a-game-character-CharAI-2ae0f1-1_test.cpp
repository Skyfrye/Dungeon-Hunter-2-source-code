// Test for batch r2a-game-character-CharAI-2ae0f1-1: CharAI::_OnAnimStepEnd_SkillSpell and CharAI::_ParseObjectAnimEvent.
// Both bodies live in g1-game-character-CharAI-2ae0f1-5.cpp, which this test links.
//
// The engine calls the bodies make are stubbed below. The stubs record their arguments, so the checks cover the step-end
// branch, the "object/anim" split, the camera dispatch and the character dispatch (the anim index and the CharAnimator
// subobject it is set on). The GameObject branch is not checked: it calls a virtual AnimController::PlayClip.
// CharAI, Character, Level and CameraLevel are not constructed: zero-filled storage is enough for the plain fields used.

#include <cstdio>
#include <cstring>
#include <map>
#include <string>
#include <utility>

#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ProjectileManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/name_table.hpp"

// ---- stub state ---------------------------------------------------------------------------------------------------------

namespace {

int g_stepIndex = 0;
int g_stepCountCalls = 0;
int g_stopLoopCalls = 0;
bool g_stopLoopNow = false;
int g_setAnimCalls = 0;
const void* g_setAnimThis = nullptr;
int g_setAnimIndex = 0;
int g_playAnimCalls = 0;
int g_playAnimClip = 0;
int g_playAnimController = 0;
bool g_playAnimPreserveZoom = false;
bool g_canPlayShake = false;
const void* g_canPlayRequester = nullptr;
Level* g_level = nullptr;
int g_getObjectCalls = 0;
std::string g_lastObjectName;
Character* g_handleCharacter = nullptr;

alignas(CharAI) unsigned char g_aiStorage[sizeof(CharAI)];
alignas(Character) unsigned char g_ownerStorage[sizeof(Character)];
alignas(Level) unsigned char g_levelStorage[sizeof(Level)];
alignas(CameraLevel) unsigned char g_cameraStorage[sizeof(CameraLevel)];
alignas(ObjectManager) unsigned char g_objectManagerStorage[sizeof(ObjectManager)];
alignas(Application) unsigned char g_appStorage[sizeof(Application)];

}  // namespace

// The global the ObjectManager lookups read (declared in dh2/global/ObjectManagerInstance.hpp).
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
std::map<std::pair<std::string, int>, CharAI::GroupInfo> CharAI::s_groups;

// Stubs for the functions of the other batches that g1-game-character-CharAI-2ae0f1-5.cpp references.
float CharAI::AI_GetMeleeRadiusSq() const { return 0.0f; }
void CharAI::_SkillEvent() {}
void CharAI::_SpellEvent() {}
int CharStateMachine::SM_GetState() const { return -1; }
bool Character::HasComboAttack() const { return false; }
const Point3D<float>& GameObject::GetTargetPosition() const {
    static const Point3D<float> origin{0.0f, 0.0f, 0.0f};
    return origin;
}
void v2Controller::Cmd_MoveTo(GameObject*) {}

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}
ObjectHandle::operator Character*() { return g_handleCharacter; }
ObjectHandle::operator GameObject*() { return nullptr; }
ObjectHandle ObjectManager::GetObjectByName(char const* name, int, bool, char const*) {
    ++g_getObjectCalls;
    g_lastObjectName = name;
    return ObjectHandle();
}

// The anim stack and the anim set, as the checks drive them.
int CharAnimator::ANIM_GetStepIndex() const { return g_stepIndex; }
int CharAnimator::ANIM_GetStepCount() const {
    ++g_stepCountCalls;
    return 0;
}
void CharAnimator::ANIM_StopLoop(bool endNow) {
    ++g_stopLoopCalls;
    g_stopLoopNow = endNow;
}
void CharAnimator::ANIM_Set(int animId) {
    ++g_setAnimCalls;
    g_setAnimThis = this;
    g_setAnimIndex = animId;
}

// The camera and the application singleton.
Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStorage); }
Level* Application::GetCurrentLevel() const { return g_level; }
bool CameraLevel::CanPlayShakeAnim(Character* requester) const {
    g_canPlayRequester = requester;
    return g_canPlayShake;
}
bool CameraLevel::PlayAnim(int clipId, int controllerArg, bool preserveZoom) {
    ++g_playAnimCalls;
    g_playAnimClip = clipId;
    g_playAnimController = controllerArg;
    g_playAnimPreserveZoom = preserveZoom;
    return true;
}

// The name table. The stub has its own three-name table (idle, attack, hit) and ignores the table it is given; the
// checks only test the wiring around the lookup.
int pydata::FindMemberName(const pydata::NameTable&, int, const char* name) {
    static const char* const kNames[] = {"idle", "attack", "hit"};
    for (int i = 0; i < 3; ++i) {
        if (std::strcmp(name, kNames[i]) == 0) {
            return i;
        }
    }
    return -1;
}
pydata::NameTable Arrays::AnimTable::m_memberNames;
pydata::NameTable Arrays::AnimDict::m_memberNames;
pydata::NameTable Arrays::AnimatedEffectTable::m_memberNames;
pydata::NameTable Arrays::Sounds::m_memberNames;

// Symbols that the rest of g1-game-character-CharAI-2ae0f1-5.cpp references (the batch's other functions). The checks do
// not reach them. The two singletons get empty constructors, so their storage is only default-initialised.
void CharAI::_ClearNonStickyTarget() {}
int CharAI::_HandleProjectile(Projectile*, void*) { return 0; }
void CharAnimator::ANIM_SetStep(unsigned int) {}
void CharAnimator::ANIM_SkipNextStep() {}
int Character::RaiseEvent(int, void*) { return 0; }
void v2Controller::Cmd_LookAt(GameObject*) {}
ProjectileManager::ProjectileManager() {}
ProjectileManager::~ProjectileManager() {}
Projectile* ProjectileManager::Spawn(int, GameObject*, GameObject*, int (*)(Projectile*, void*), int (*)(Projectile*, void*),
                                     void*, bool) {
    return nullptr;
}
template <> ProjectileManager Singleton<ProjectileManager>::s_inst{};
VisualFXManager::VisualFXManager() {}
VisualFXManager::~VisualFXManager() {}
void VisualFXManager::PlayAnimFXSet(int, const Point3D<float>&, const GameObject*, VisualFXManager::AnimFXSetData*) {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static VisualFXManager g_testInstance_1{};
VisualFXManager& VisualFXManager::s_inst = g_testInstance_1;
VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() {}
VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() {}

// ---- checks ------------------------------------------------------------------------------------------------------------

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                              \
    do {                                                                          \
        if (!(cond)) {                                                            \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);           \
            ++g_failures;                                                         \
        }                                                                         \
    } while (0)

CharAI* AI() { return reinterpret_cast<CharAI*>(g_aiStorage); }
Character* Owner() { return reinterpret_cast<Character*>(g_ownerStorage); }

void ResetCounters() {
    g_stepCountCalls = 0;
    g_stopLoopCalls = 0;
    g_stopLoopNow = false;
    g_setAnimCalls = 0;
    g_setAnimThis = nullptr;
    g_setAnimIndex = 0;
    g_playAnimCalls = 0;
    g_playAnimClip = 0;
    g_playAnimController = 0;
    g_playAnimPreserveZoom = false;
    g_canPlayRequester = nullptr;
    g_getObjectCalls = 0;
    g_lastObjectName.clear();
}

void TestStepEndSkillSpell() {
    CharAI* ai = AI();
    Character* owner = Owner();
    ai->m_character = owner;

    // First step, base stack level, skill step ended: the loop is stopped at once. The function returns true.
    owner->CharAnimator::m_animStackIdx = 1;
    ai->m_skillStepEnded = true;
    g_stepIndex = 0;
    ResetCounters();
    EXPECT(ai->_OnAnimStepEnd_SkillSpell());
    EXPECT(g_stopLoopCalls == 1 && g_stopLoopNow);
    EXPECT(g_stepCountCalls == 1);

    // The skill step has not ended: no stop, still true.
    ai->m_skillStepEnded = false;
    ResetCounters();
    EXPECT(ai->_OnAnimStepEnd_SkillSpell());
    EXPECT(g_stopLoopCalls == 0);

    // A later step (index 1): no stop.
    ai->m_skillStepEnded = true;
    g_stepIndex = 1;
    ResetCounters();
    EXPECT(ai->_OnAnimStepEnd_SkillSpell());
    EXPECT(g_stopLoopCalls == 0);

    // Stack level 0 and stack level 2: no stop on the first step.
    g_stepIndex = 0;
    owner->CharAnimator::m_animStackIdx = 0;
    ResetCounters();
    EXPECT(ai->_OnAnimStepEnd_SkillSpell());
    EXPECT(g_stopLoopCalls == 0);
    owner->CharAnimator::m_animStackIdx = 2;
    ResetCounters();
    EXPECT(ai->_OnAnimStepEnd_SkillSpell());
    EXPECT(g_stopLoopCalls == 0);
}

void TestParseObjectAnimEvent() {
    CharAI* ai = AI();
    Character* owner = Owner();
    ai->m_character = owner;
    g_level = reinterpret_cast<Level*>(g_levelStorage);
    g_level->m_camera = reinterpret_cast<CameraLevel*>(g_cameraStorage);

    // No slash: nothing is looked up or played.
    ResetCounters();
    ai->_ParseObjectAnimEvent("noslash");
    EXPECT(g_getObjectCalls == 0 && g_setAnimCalls == 0 && g_playAnimCalls == 0);

    // camera/attack: the camera accepts the requester, and clip 1 ("attack") plays with controller 0 and preserveZoom.
    g_canPlayShake = true;
    ResetCounters();
    ai->_ParseObjectAnimEvent("camera/attack");
    EXPECT(g_playAnimCalls == 1 && g_playAnimClip == 1 && g_playAnimController == 0 && g_playAnimPreserveZoom);
    EXPECT(g_canPlayRequester == owner);
    EXPECT(g_getObjectCalls == 0);

    // The camera refuses the requester: no clip.
    g_canPlayShake = false;
    ResetCounters();
    ai->_ParseObjectAnimEvent("camera/attack");
    EXPECT(g_playAnimCalls == 0);

    // No current level: no clip.
    g_canPlayShake = true;
    g_level = nullptr;
    ResetCounters();
    ai->_ParseObjectAnimEvent("camera/attack");
    EXPECT(g_playAnimCalls == 0);
    g_level = reinterpret_cast<Level*>(g_levelStorage);

    // object/hit where the object is a Character: "hit" (index 2) is set on the character's CharAnimator subobject.
    g_handleCharacter = owner;
    ResetCounters();
    ai->_ParseObjectAnimEvent("object/hit");
    EXPECT(g_lastObjectName == "object");
    EXPECT(g_setAnimCalls == 1 && g_setAnimIndex == 2);
    EXPECT(g_setAnimThis == static_cast<const CharAnimator*>(owner));
    EXPECT(g_playAnimCalls == 0);

    // An animation name that is not in the table gives index -1.
    ResetCounters();
    ai->_ParseObjectAnimEvent("object/nothere");
    EXPECT(g_setAnimCalls == 1 && g_setAnimIndex == -1);

    // An object that is neither a Character nor a GameObject: the lookup runs, nothing is set.
    g_handleCharacter = nullptr;
    ResetCounters();
    ai->_ParseObjectAnimEvent("nobody/attack");
    EXPECT(g_getObjectCalls == 1 && g_setAnimCalls == 0 && g_playAnimCalls == 0);
}

}  // namespace

int main() {
    dword_99F764 = reinterpret_cast<ObjectManager*>(g_objectManagerStorage);
    TestStepEndSkillSpell();
    TestParseObjectAnimEvent();
    if (g_failures) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("r2a-game-character-CharAI-2ae0f1-1 test: all checks passed\n");
    return 0;
}
