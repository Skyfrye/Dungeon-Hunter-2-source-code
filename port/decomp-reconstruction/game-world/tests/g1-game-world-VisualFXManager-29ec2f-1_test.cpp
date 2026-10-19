// Test for g1-game-world-VisualFXManager-29ec2f-1. The logic under test is the registration recursion, the set table
// build, the step dispatch (PlayAnimFXStep and the PlayAnimFXSet forms) and the sequence advance, repeat and finish of
// _HandleSequence. The engine leaves are stubbed here: AnimatedFX, DebugSwitches, the random stream, the first half of
// VisualFXManager (GetAnimFXData, GetAnimFXSetData, the pools) and the pydata tables, which this test fills itself.
// Returns non-zero on any failed check.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <list>
#include <string>
#include <vector>

#include "dh2/AnimatedFX.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Random.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VectorSet.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/global/runtime_support.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

using AnimFXSetData = VisualFXManager::AnimFXSetData;

// ---- Test state -------------------------------------------------------------------------------------------------

namespace {

std::vector<int> g_fxCalls;          // ids passed to VisualFXManager::_GetAnimFX, in call order
std::vector<int> g_fxToLoad;         // unique ids passed to VectorSet<int>::push_back_unique (stub)
int g_randomRange = -1;              // last range passed to Random::GetRandom
bool g_randomSynced = false;         // last synced flag passed to Random::GetRandom
unsigned int g_randomReturn = 1;     // what the random stub returns

// Effect table: row 0 is a sequence (type 1) with a preload flag, steps effect 3, set 1, effect 4.
// Row 1 is a plain row (type 0) with one effect step, 6. Row 2 is a random row (type 2) with effects 7 and 8.
Structs::AnimFXTpl g_rows[3];
Structs::AnimFX g_row0Steps[3];
Structs::AnimFX g_row1Steps[1];
Structs::AnimFX g_row2Steps[2];

void SetupTables() {
    g_rows[0].ForceCache = true;
    g_rows[0].LoopAFX = 0;
    g_rows[0].StepsSize = 3;
    g_rows[0].Steps = g_row0Steps;
    g_rows[0].Type = 1;
    g_row0Steps[0].File = 3;
    g_row0Steps[0].Redir = 0;
    g_row0Steps[1].File = 1;
    g_row0Steps[1].Redir = 1;
    g_row0Steps[2].File = 4;
    g_row0Steps[2].Redir = 0;

    g_rows[1].ForceCache = true;
    g_rows[1].LoopAFX = 0;
    g_rows[1].StepsSize = 1;
    g_rows[1].Steps = g_row1Steps;
    g_rows[1].Type = 0;
    g_row1Steps[0].File = 6;
    g_row1Steps[0].Redir = 0;

    g_rows[2].ForceCache = false;
    g_rows[2].LoopAFX = 0;
    g_rows[2].StepsSize = 2;
    g_rows[2].Steps = g_row2Steps;
    g_rows[2].Type = 2;
    g_row2Steps[0].File = 7;
    g_row2Steps[0].Redir = 0;
    g_row2Steps[1].File = 8;
    g_row2Steps[1].Redir = 0;

    Arrays::AnimatedEffectTable::members = reinterpret_cast<std::uint8_t*>(g_rows);
    Arrays::AnimatedEffectTable::size = 3;
    Arrays::EffectDict::members = nullptr;
    Arrays::EffectDict::size = 10;
}

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

}  // namespace

// ---- Stubs for the engine leaves -------------------------------------------------------------------------------

Point3D<float> Vec3f_Origin;

template <>
bool Point3D<float>::operator==(const Point3D<float>& other) const {
    return X == other.X && Y == other.Y && Z == other.Z;
}

template <>
void VectorSet<int>::push_back_unique(const int& value) {
    for (int id : g_fxToLoad) {
        if (id == value) {
            return;
        }
    }
    g_fxToLoad.push_back(value);
}

std::uint8_t* Arrays::AnimatedEffectTable::members = nullptr;
std::uint32_t Arrays::AnimatedEffectTable::size = 0;
std::uint8_t* Arrays::EffectDict::members = nullptr;
std::uint32_t Arrays::EffectDict::size = 0;

void PushProfilingContext(const char*) {}
void PopProfilingContext(const char*) {}

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() {}
bool DebugSwitches::GetModule(const std::string&) { return true; }
bool DebugSwitches::GetSwitch(const std::string&) { return false; }
DebugSwitches DebugSwitches::s_inst;

unsigned int Random::GetRandom(int range, bool synced) {
    g_randomRange = range;
    g_randomSynced = synced;
    return g_randomReturn;
}

AnimatedFX::AnimatedFX(int id) : unk_08(id) {}
AnimatedFX::~AnimatedFX() {}
void AnimatedFX::SyncIrrData(bool) {}
void AnimatedFX::SetRotation(const Point3D<float>&) {}
void AnimatedFX::SetLooping(bool) {}
void AnimatedFX::SetStart() {}
void AnimatedFX::SetAnimFX(bool, bool, bool, float, int, void*, EndOfLoopCallback) {}
void AnimatedFX::SetVisible(bool) {}
void AnimatedFX::Update() {}

Structs::AnimFXTpl::~AnimFXTpl() {}
void Structs::AnimFXTpl::finalize() {}
void Structs::AnimFXTpl::read(IStreamBase*) {}
Structs::AnimFX::~AnimFX() {}
void Structs::AnimFX::finalize() {}
void Structs::AnimFX::read(IStreamBase*) {}

VisualFXManager::VisualFXManager() : m_libraryBuilt(false), m_fxToLoad() {}
VisualFXManager::~VisualFXManager() {}
VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(const AnimFXSetInfo& other)
    : m_row(other.m_row), m_steps(other.m_steps), m_setData(other.m_setData) {}
VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() { m_setData.clear(); }
VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() {}

VisualFXManager::AnimFXData VisualFXManager::GetAnimFXData(AnimFXSetInfo, AnimFXSetData* setData) {
    AnimFXData data{};
    data.m_setData = setData;
    return data;
}

VisualFXManager::AnimFXSetData* VisualFXManager::GetAnimFXSetData(int setIndex, int timeScale, int stepIndex,
                                                                  const GameObject* object, AnimFXSetData* out,
                                                                  const Point3D<float>& position,
                                                                  const Point3D<float>& origin) {
    AnimFXSetData* result = new AnimFXSetData();
    result->m_setIndex = setIndex;
    result->m_timeScale = timeScale;
    result->m_stepIndex = stepIndex;
    result->m_sourceObject = object;
    result->unk_2c = out;
    result->m_position = position;
    result->m_origin = origin;
    return result;
}

AnimatedFX* VisualFXManager::_GetAnimFX(int effectDictId) {
    g_fxCalls.push_back(effectDictId);
    return new AnimatedFX(effectDictId);
}

void VisualFXManager::DropAnimatedFX(AnimatedFX*& instance) { instance = nullptr; }
void VisualFXManager::_BuildAnimFXDict() {}
void VisualFXManager::_PreCacheAnimDict() {}

// The dictionary and the set table of the manager are reached through this singleton by __Anim_EndOfLoop.
template class Singleton<VisualFXManager>;

// ---- Checks ----------------------------------------------------------------------------------------------------

int main() {
    SetupTables();
    VisualFXManager vfx;

    // 1. RegisterFXSetToLoad(0): effect 3, then the nested set 1 (effect 6), then effect 4.
    g_fxToLoad.clear();
    vfx.RegisterFXSetToLoad(0);
    Check((g_fxToLoad == std::vector<int>{3, 6, 4}), "RegisterFXSetToLoad(0) queues 3, 6, 4");

    // 2. _BuildAnimFXSets: one set per row, steps without the -1 ids, flags from the step words.
    g_fxToLoad.clear();
    vfx._BuildAnimFXSets();
    Check(vfx.m_animFXSets.size() == 3, "three sets are built");
    if (vfx.m_animFXSets.size() == 3) {
        Check(vfx.m_animFXSets[0].m_row == static_cast<const void*>(&g_rows[0]), "set 0 keeps row 0");
        Check(vfx.m_animFXSets[0].m_steps.size() == 3, "set 0 has three steps");
        Check(vfx.m_animFXSets[0].m_steps[1]->isSet && vfx.m_animFXSets[0].m_steps[1]->id == 1,
              "set 0 step 1 is the nested set 1");
        Check(!vfx.m_animFXSets[0].m_steps[0]->isSet && vfx.m_animFXSets[0].m_steps[0]->id == 3,
              "set 0 step 0 is effect 3");
        Check(vfx.m_animFXSets[1].m_steps.size() == 1, "set 1 has one step");
        Check(vfx.m_animFXSets[2].m_steps.size() == 2, "set 2 has two steps");
    }
    Check((g_fxToLoad == std::vector<int>{3, 6, 4}), "_BuildAnimFXSets queues the preload rows 0 and 1");

    // 3. PlayAnimFXSet on the random row 2: the random step is taken on the ordinary stream (synced false, as the
//    0x493780 clone does), with range 2, and the
    //    stub returns 1, so step 1 (effect 8) plays.
    g_fxCalls.clear();
    vfx.PlayAnimFXSet(2, Vec3f_Origin, nullptr, nullptr);
    Check(g_randomRange == 2, "random row draws over its two steps");
    Check(!g_randomSynced, "random row draws on the ordinary stream for effect table id 2");
    Check((g_fxCalls == std::vector<int>{8}), "random row plays step 1, effect 8");
    Check(vfx.m_animFXSets[2].m_setData.size() == 1, "the new set data joins set 2's list");

    // 4. _HandleSequence on the sequence row 0. A set data armed at step 0 walks its steps.
    g_fxCalls.clear();
    AnimFXSetData* seq = new AnimFXSetData();
    seq->m_setIndex = 0;
    seq->m_stepIndex = 0;
    seq->unk_00 = 1;
    vfx.m_animFXSets[0].m_setData.push_back(seq);

    vfx._HandleSequence(nullptr, seq, false);  // step 0 -> 1: nested set 1 starts, which plays effect 6
    Check(seq->m_stepIndex == 1, "sequence advances to step 1");
    Check((g_fxCalls == std::vector<int>{6}), "nested set 1 plays effect 6");
    Check(vfx.m_animFXSets[1].m_setData.size() == 1, "nested set 1 gets its own set data");

    seq->unk_00 = 1;
    vfx._HandleSequence(nullptr, seq, false);  // step 1 -> 2: effect 4
    Check(seq->m_stepIndex == 2, "sequence advances to step 2");
    Check((g_fxCalls == std::vector<int>{6, 4}), "step 2 plays effect 4");

    seq->unk_00 = 1;
    vfx._HandleSequence(nullptr, seq, false);  // past the last step, no repeats, no parent: it finishes
    Check((g_fxCalls == std::vector<int>{6, 4}), "a finished set plays nothing");
    Check(seq->unk_00 == 0, "a finished set stays disarmed");

    seq->unk_00 = 1;
    seq->m_timeScale = 2;
    vfx._HandleSequence(nullptr, seq, false);  // one repeat of the two left: count down, play step 0 (effect 3)
    Check(seq->m_timeScale == 1, "a repeat counts the time scale down");
    Check(seq->m_stepIndex == 0, "a repeat restarts at step 0");
    Check((g_fxCalls == std::vector<int>{6, 4, 3}), "a repeat plays step 0 again");

    seq->m_stepIndex = 2;
    seq->m_timeScale = -1;
    seq->unk_00 = 1;
    vfx._HandleSequence(nullptr, seq, false);  // -1 repeats forever: step 0 again, the count stays -1
    Check(seq->m_timeScale == -1, "an endless repeat keeps -1");
    Check((g_fxCalls == std::vector<int>{6, 4, 3, 3}), "an endless repeat plays step 0");

    // 5. _HandleEndOfLoopCB from a non-sequence row (2) arms its parent, and the parent's row (1) is not a
    //    sequence, so nothing else runs.
    g_fxCalls.clear();
    AnimFXSetData* parent = new AnimFXSetData();
    parent->m_setIndex = 1;
    parent->unk_00 = 0;
    AnimFXSetData* child = new AnimFXSetData();
    child->m_setIndex = 2;
    child->unk_2c = parent;
    vfx._HandleEndOfLoopCB(nullptr, child);
    Check(parent->unk_00 == 1, "the parent of a non-sequence child is armed");
    Check(g_fxCalls.empty(), "no effect plays when the parent row is not a sequence");

    if (g_failures == 0) {
        std::printf("all VisualFXManager-29ec2f-1 checks passed\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
