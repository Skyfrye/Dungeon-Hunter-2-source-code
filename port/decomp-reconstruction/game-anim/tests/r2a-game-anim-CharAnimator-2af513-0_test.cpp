// Test for batch r2a-game-anim-CharAnimator-2af513-0: the anim-table and anim-stack logic of CharAnimator.
//
// Covers ANIM_IsUnique/IsRandom/IsSequence(uint), ANIM_Swap (depth 0 and a depth-1 redirect walk), _AddTemplateAnimTable,
// _AddAnimTable (stance test, redirect recursion) and ANIM_AddAnimDictToSet. The Arrays::AnimTable is a host array of
// Structs::AnimTpl records with Structs::AnimStep step tables, as the port reads it (pydata element_table.hpp).
//
// Links with g1-game-anim-CharAnimator-2af513-0.cpp (constructor, ANIM_SetSpeed) and g1-game-anim-CharAnimator-2af513-1.cpp.
// Everything else those files reference is stubbed here. The anim-set manager stubs record what they receive.

#include <cstdint>
#include <cstdio>
#include <utility>
#include <vector>

#include "dh2/AnimController.hpp"
#include "dh2/AnimSetController.hpp"
#include "dh2/AnimSetManager.hpp"
#include "dh2/AnimationSet.hpp"
#include "dh2/Application.hpp"
#include "dh2/BlendedAnimSetController.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Random.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// gAssertLevel (libDungeonHunter2.so). 0 keeps the asserts silent.
int gAssertLevel = 0;

// Structs::AnimTpl and Structs::AnimStep have out-of-line virtual functions, defined here for the test records.
namespace Structs {
AnimTpl::~AnimTpl() {}
void AnimTpl::finalize() {}
void AnimTpl::read(IStreamBase*) {}
AnimStep::~AnimStep() {}
void AnimStep::finalize() {}
void AnimStep::read(IStreamBase*) {}
}  // namespace Structs

// Arrays::AnimTable storage (pydata w7_arrays_02.cpp, not linked here). The tests point it at their own records.
std::uint8_t* Arrays::AnimTable::members = nullptr;
std::uint32_t Arrays::AnimTable::size = 0;

// ---- stubs for the functions the linked sources reference (none of them is reached by the tests below) ----
int Character::RaiseEvent(int, void*) {
    return 0;
}
int Character::GetCharUniqueAnimSetId() const {
    return 42;
}
bool Character::IsFaerie() const {
    return false;
}
const Structs::CharAnim* Character::GetCharAnimTable() const {
    return nullptr;
}
int Character::GetCharAnimTableId() const {
    return 0;
}
const void* Character::GetCharSkillList() const {
    return nullptr;
}

ItemInstance* ItemInventory::GetEquippedItem(unsigned int) {
    return nullptr;
}
ItemInstance* ItemInventory::GetEquippedItem(unsigned int) const {
    return nullptr;
}
const Structs::Item* ItemInstance::GetItem() const {
    return nullptr;
}
const Point3D<float>& GameObject::GetTargetPosition() const {
    static Point3D<float> origin{};
    return origin;
}

int PyDataConstants::getConstant(const char*, const char*) const {
    return 0;
}

unsigned int Random::GetRandom(int, bool) {
    return 0;
}

bool CameraLevel::CanPlayShakeAnim(Character*) const {
    return false;
}
bool CameraLevel::PlayAnim(int, int, bool) {
    return false;
}

Level* Application::GetCurrentLevel() const {
    return nullptr;
}
Application::Application() {}
Application::~Application() {}
template class Singleton<Application>;

void VisualObject::SetAnimController(AnimController*) {}

// The controller classes. The test builds none, but ANIM_AddSetToRenderObject creates them, so their constructors are
// defined here. Each vtable is emitted with its key function (the destructor), so the virtual functions the vtables name
// are defined as well. None of them is called by the tests.
AnimController::AnimController(RootSceneNode*, bool) {}
AnimController::~AnimController() {}
boost::intrusive_ptr<AnimationSet> AnimController::GetAnimationSet() {
    std::abort();  // never called by the tests
}
int AnimController::GetNumAnim() const {
    return 0;
}
int AnimController::GetNumClip(unsigned int) const {
    return 0;
}
bool AnimController::HasClip(const char*, unsigned int) const {
    return false;
}
int AnimController::GetClipDuration(unsigned int) const {
    return -1;
}
bool AnimController::PlayClip(unsigned int, bool, int, unsigned int) {
    return false;
}
bool AnimController::PlayClip(const char*, bool, int, unsigned int) {
    return false;
}
void AnimController::StopClip(bool, unsigned int) {}
void AnimController::SetScale(float, unsigned int) {}
void AnimController::SetCallbacks(AnimCallback, void*, EventCallback, void*) {}

AnimSetController::AnimSetController(RootSceneNode* node, int animSetId) : AnimController(node, false), m_animSetId(animSetId) {}
AnimSetController::~AnimSetController() {}
boost::intrusive_ptr<AnimationSet> AnimSetController::GetAnimationSet() {
    std::abort();  // never called by the tests
}
int AnimSetController::GetNumClip(unsigned int) const {
    return 0;
}
bool AnimSetController::HasClip(const char*, unsigned int) const {
    return false;
}
int AnimSetController::GetClipDuration(unsigned int) const {
    return -1;
}
bool AnimSetController::PlayClip(unsigned int, bool, int, unsigned int) {
    return false;
}
bool AnimSetController::PlayClip(const char*, bool, int, unsigned int) {
    return false;
}
void AnimSetController::SetCallbacks(AnimCallback, void*, EventCallback, void*) {}

BlendedAnimSetController::BlendedAnimSetController(RootSceneNode* node, int animSetId)
    : AnimController(node, false), m_animSetId(animSetId) {}
BlendedAnimSetController::~BlendedAnimSetController() {}
boost::intrusive_ptr<AnimationSet> BlendedAnimSetController::GetAnimationSet() {
    std::abort();  // never called by the tests
}
int BlendedAnimSetController::GetNumClip(unsigned int) const {
    return 0;
}
bool BlendedAnimSetController::HasClip(const char*, unsigned int) const {
    return false;
}
int BlendedAnimSetController::GetClipDuration(unsigned int) const {
    return -1;
}
bool BlendedAnimSetController::PlayClip(unsigned int, bool, int, unsigned int) {
    return false;
}
bool BlendedAnimSetController::PlayClip(const char*, bool, int, unsigned int) {
    return false;
}
void BlendedAnimSetController::StopClip(bool, unsigned int) {}
void BlendedAnimSetController::SetScale(float, unsigned int) {}
void BlendedAnimSetController::SetCallbacks(AnimCallback, void*, EventCallback, void*) {}

void VisualFXManager::PlayAnimFXSet(int, const GameObject*, VisualFXManager::AnimFXSetData*) {}
void VisualFXManager::PlayAnimFXSet(int, const Point3D<float>&, const Point3D<float>&, const GameObject*,
                                    VisualFXManager::AnimFXSetData*) {}
void VisualFXManager::RegisterFXSetToLoad(int) {}
VisualFXManager::VisualFXManager() {}
VisualFXManager::~VisualFXManager() {}
VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() {}
VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static VisualFXManager g_testInstance_1{};
VisualFXManager& VisualFXManager::s_inst = g_testInstance_1;

bool Application::onEvent(const glitch::SEvent&) {
    return false;
}

Animation::~Animation() {}
AnimationSet::~AnimationSet() {}
bool AnimSetManager::Exists(int) const {
    return false;
}

// DebugSwitches: the trace reads and the MP_MinimalRandoms test. Every switch reads as off.
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string&) {
    return false;
}

// AnimSetManager::s_inst records the calls the tests check.
namespace {
std::vector<std::pair<int, int>> g_addAnim;          // (setId, animDict)
std::vector<std::pair<int, int>> g_addTemplateAnim;  // (setId, animDict)
std::vector<int> g_registeredFx;                     // FX set ids
}  // namespace

AnimSetManager::AnimSetManager() {}
AnimSetManager::~AnimSetManager() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static AnimSetManager g_testInstance_2{};
AnimSetManager& AnimSetManager::s_inst = g_testInstance_2;
void AnimSetManager::AddAnim(int setId, int animDict) {
    g_addAnim.emplace_back(setId, animDict);
}
void AnimSetManager::AddTemplateAnim(int setId, int animDict) {
    g_addTemplateAnim.emplace_back(setId, animDict);
}

// ---- test records ----
// Arrays::AnimTable is a host array of Structs::AnimTpl records. Ids used below:
//   0 unique, 1 sequence, 2 random (single-step), 3 sequence whose first step redirects to anim 5,
//   5 unique (two steps), 7 unique with one plain step (anim 9), 8 unique with two plain steps (anims 11 and 12),
//   10 unique whose only step redirects to anim 8.
constexpr int kRecordCount = 12;
Structs::AnimTpl g_records[kRecordCount];
Structs::AnimStep g_steps0[1], g_steps1[2], g_steps2[1], g_steps3[2], g_steps5[2], g_steps7[1], g_steps8[2], g_steps10[1];

void SetRecord(int id, int loop, int kind, Structs::AnimStep* steps, int stepCount) {
    Structs::AnimTpl& r = g_records[id];
    r.Loop = loop;
    r.StepsSize = static_cast<std::uint32_t>(stepCount);
    r.Steps = steps;
    r.Type = kind;
}

void SetStep(Structs::AnimStep& s, int redir, int animDict, int fx = -1) {
    s.Redir = redir;
    s.Anim = animDict;
    s.FX = fx;
}

void BuildTable() {
    SetRecord(0, 1, 0, g_steps0, 1);
    SetStep(g_steps0[0], 0, 0);
    SetRecord(1, 0, 1, g_steps1, 2);
    SetStep(g_steps1[0], 0, 0);
    SetStep(g_steps1[1], 0, 1);
    SetRecord(2, -1, 2, g_steps2, 1);
    SetStep(g_steps2[0], 0, 0);
    SetRecord(3, 0, 1, g_steps3, 2);
    SetStep(g_steps3[0], 1, 5);
    SetStep(g_steps3[1], 0, 6);
    SetRecord(5, 0, 0, g_steps5, 2);
    SetStep(g_steps5[0], 0, 0);
    SetStep(g_steps5[1], 0, 0);
    SetRecord(7, 0, 0, g_steps7, 1);
    SetStep(g_steps7[0], 0, 9);
    SetRecord(8, 0, 0, g_steps8, 2);
    SetStep(g_steps8[0], 0, 11);
    SetStep(g_steps8[1], 0, 12);
    SetRecord(10, 0, 0, g_steps10, 1);
    SetStep(g_steps10[0], 1, 8);

    Arrays::AnimTable::members = reinterpret_cast<std::uint8_t*>(g_records);
    Arrays::AnimTable::size = kRecordCount;
}

void ClearRecorded() {
    g_addAnim.clear();
    g_addTemplateAnim.clear();
    g_registeredFx.clear();
}

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

// The anim stack and state of a freshly built animator, playing.
void StartPlaying(CharAnimator& anim) {
    anim.m_stopped = false;
    anim.m_animStackIdx = 0;
    for (auto& e : anim.m_animStack) {
        e = CharAnimator::StackEntry{};
    }
}

int main() {
    BuildTable();

    // ANIM_IsUnique / IsRandom / IsSequence(uint): the kind of the record of each stack level.
    {
        CharAnimator anim;
        StartPlaying(anim);
        anim.m_animStackIdx = 2;
        anim.m_animStack[0].m_animId = 0;  // unique
        anim.m_animStack[1].m_animId = 1;  // sequence
        anim.m_animStack[2].m_animId = 2;  // random
        EXPECT(anim.ANIM_IsUnique(0u));
        EXPECT(!anim.ANIM_IsRandom(0u));
        EXPECT(!anim.ANIM_IsSequence(0u));
        EXPECT(anim.ANIM_IsSequence(1u));
        EXPECT(!anim.ANIM_IsUnique(1u));
        EXPECT(anim.ANIM_IsRandom(2u));
        EXPECT(!anim.ANIM_IsUnique(2u));
        anim.m_stopped = true;
        EXPECT(!anim.ANIM_IsUnique(0u));
        EXPECT(!anim.ANIM_IsRandom(2u));
        EXPECT(!anim.ANIM_IsSequence(1u));
    }

    // ANIM_Swap with an unset old id (-1) at depth 0: the new id replaces the level-0 anim and becomes the current one.
    {
        CharAnimator anim;
        StartPlaying(anim);
        anim.m_animStack[0].m_animId = 0;
        anim.ANIM_Swap(5, -1);
        EXPECT(anim.m_animStack[0].m_animId == 5);
        EXPECT(anim.m_currentAnim == 5);
        anim.ANIM_Swap(-1, -1);  // no-op for a -1 new id
        EXPECT(anim.m_animStack[0].m_animId == 5);
    }

    // ANIM_Swap at depth 1: level 0 takes the redirect step's anim of the new record (anim 5), level 1 becomes the current
    // anim and is the top of the walk.
    {
        CharAnimator anim;
        StartPlaying(anim);
        anim.m_animStackIdx = 1;
        anim.m_animStack[0] = CharAnimator::StackEntry{0, 0, 0};
        anim.m_animStack[1] = CharAnimator::StackEntry{1, 0, 0};
        anim.ANIM_Swap(3, 0);
        EXPECT(anim.m_animStack[0].m_animId == 3);
        EXPECT(anim.m_animStack[1].m_animId == 5);
        EXPECT(anim.m_currentAnim == 5);
    }

    // _AddTemplateAnimTable: the first step of a one-step record is added unless it redirects.
    {
        CharAnimator anim;
        ClearRecorded();
        anim.m_animSetId = 42;           // set id already fetched (the character is not built in this test)
        anim.ANIM_AddAnimDictToSet(-1);  // no-op: a negative dictionary is not added
        anim.m_animSetCompiled = true;
        anim.ANIM_AddAnimDictToSet(5);   // compiled: nothing is added
        EXPECT(g_addAnim.empty());
        anim.m_animSetCompiled = false;
        anim.ANIM_AddAnimDictToSet(5);
        EXPECT(g_addAnim.size() == 1 && g_addAnim[0] == std::make_pair(42, 5));

        ClearRecorded();
        anim._AddTemplateAnimTable(42, 7, 0);
        EXPECT(g_addTemplateAnim.size() == 1 && g_addTemplateAnim[0] == std::make_pair(42, 9));
        ClearRecorded();
        anim._AddTemplateAnimTable(42, 10, 0);  // redirecting first step
        EXPECT(g_addTemplateAnim.empty());
    }

    // _AddAnimTable: a plain record adds each step; a redirect step recurses into its anim; a stance mismatch with a
    // non-zero offset adds nothing.
    {
        CharAnimator anim;
        ClearRecorded();
        anim._AddAnimTable(42, 7, 0, 0, 0);
        EXPECT(g_addAnim.size() == 1 && g_addAnim[0] == std::make_pair(42, 9));

        ClearRecorded();
        anim._AddAnimTable(42, 8, 0, 0, 0);
        EXPECT(g_addAnim.size() == 2 && g_addAnim[0] == std::make_pair(42, 11) && g_addAnim[1] == std::make_pair(42, 12));

        ClearRecorded();
        anim._AddAnimTable(42, 10, 0, 0, 0);  // redirects to anim 8, which adds 11 and 12
        EXPECT(g_addAnim.size() == 2 && g_addAnim[0] == std::make_pair(42, 11) && g_addAnim[1] == std::make_pair(42, 12));

        ClearRecorded();
        anim._AddAnimTable(42, 7, 1, 0x4, 0x2);  // index 8, stance 0x2 lacks mask 0x4, offset 1: skipped
        EXPECT(g_addAnim.empty());
        anim._AddAnimTable(42, 7, 1, 0x2, 0x2);  // index 8, stance matches: added
        EXPECT(g_addAnim.size() == 2 && g_addAnim[0] == std::make_pair(42, 11));
    }

    std::printf("%s\n", g_failures == 0 ? "CharAnimator anim-table tests: all checks passed" : "CharAnimator anim-table tests: FAILED");
    return g_failures == 0 ? 0 : 1;
}
