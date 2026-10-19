// Test for g1-game-world-VisualFXManager-29ec2f-0. The effect tables, the set table and the pools are built by hand, and
// the batch's bodies run against recording stand-ins for AnimatedFX, VisualObject, DebugSwitches, Random, the VectorSet
// specialization and the pydata tables. Returns non-zero on failure.

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <memory>
#include <string>

#include "dh2/AnimatedFX.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Random.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// ---- Stand-ins for the parts of the engine this batch calls ----------------------------------------------------

Point3D<float> Vec3f_Origin;  // the zero global (ELF 0x99f854)

namespace {

int g_failures = 0;
int g_scaleCalls = 0;
int g_deleteCalls = 0;
bool g_moduleOn = true;
int g_randomCalls = 0;
int g_randomRange = -1;
bool g_randomSynced = true;
unsigned int g_randomResult = 0;
int g_loadCalls = 0;
char g_visualStub[16];  // each AnimatedFX points its m_visual here; the stub SetScaling never reads it
int g_objA = 0;
int g_objB = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

}  // namespace

// The pydata records are only read by field here. The virtual functions they have must still link.
namespace Structs {
AnimFXTpl::~AnimFXTpl() {}
void AnimFXTpl::finalize() {}
void AnimFXTpl::read(IStreamBase*) {}
AnimFX::~AnimFX() {}
void AnimFX::finalize() {}
void AnimFX::read(IStreamBase*) {}
ColladaFile::~ColladaFile() {}
void ColladaFile::finalize() {}
void ColladaFile::read(IStreamBase*) {}
}  // namespace Structs

namespace Arrays {
std::uint8_t* AnimatedEffectTable::members = nullptr;
std::uint32_t AnimatedEffectTable::size = 0;
std::uint8_t* EffectDict::members = nullptr;
std::uint32_t EffectDict::size = 0;
}  // namespace Arrays

AnimatedFX::AnimatedFX(int id) {
    unk_08 = id;
    m_endOfLoop = nullptr;
    m_name = nullptr;
    m_animName = nullptr;
    m_loopCount = 0;
    m_looping = false;
    m_speed = 1.0f;
    unk_24 = true;
    unk_28 = nullptr;
    m_visual = reinterpret_cast<VisualObject*>(g_visualStub);
    m_setData = nullptr;
}
AnimatedFX::~AnimatedFX() {
    ++g_deleteCalls;
}
void AnimatedFX::SyncIrrData(bool) {}
void AnimatedFX::SetVisible(bool visible) {
    unk_24 = visible;
}
void AnimatedFX::SetLooping(bool looping) {
    m_looping = looping;
}
void AnimatedFX::SetStart() {}
void AnimatedFX::SetAnimFX(bool rotateWithOwner, bool rotateWithOwnerOnPush, bool scaleWithOwner, float speed,
                           int loopCount, void* setData, EndOfLoopCallback endOfLoop) {
    unk_30 = rotateWithOwner;
    unk_31 = rotateWithOwnerOnPush;
    unk_32 = scaleWithOwner;
    m_speed = speed;
    m_loopCount = loopCount;
    m_setData = setData;
    m_endOfLoop = endOfLoop;
}
void AnimatedFX::Load(const char* name, const char* animName, float speed, int loopCount, bool) {
    ++g_loadCalls;
    m_name = name;
    m_animName = animName;
    m_speed = speed;
    m_loopCount = loopCount;
}

void VisualObject::SetScaling(float) {
    ++g_scaleCalls;
}

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() {}
bool DebugSwitches::GetModule(const std::string&) {
    return g_moduleOn;
}
DebugSwitches DebugSwitches::s_inst;

unsigned int Random::GetRandom(int range, bool synced) {
    ++g_randomCalls;
    g_randomRange = range;
    g_randomSynced = synced;
    return g_randomResult;
}

template <>
void VectorSet<AnimatedFX*>::push_back_unique(AnimatedFX* const& value) {
    for (AnimatedFX** p = m_start; p != m_finish; ++p) {
        if (*p == value) {
            return;
        }
    }
    const std::size_t n = static_cast<std::size_t>(m_finish - m_start);
    if (m_finish == m_endOfStorage) {
        const std::size_t capacity = n == 0 ? 4 : n * 2;
        AnimatedFX** block = std::allocator<AnimatedFX*>().allocate(capacity);
        std::copy(m_start, m_finish, block);
        if (m_start != nullptr) {
            std::allocator<AnimatedFX*>().deallocate(m_start, static_cast<std::size_t>(m_endOfStorage - m_start));
        }
        m_start = block;
        m_finish = block + n;
        m_endOfStorage = block + capacity;
    }
    *m_finish = value;
    ++m_finish;
}

void VisualFXManager::__Anim_EndOfLoop(AnimatedFX*, VisualFXManager::AnimFXSetData*) {}

namespace {

// Two effect table rows: row 0 has mode 2 (random step) with two steps, row 1 has mode 1 with one step.
Structs::AnimFXTpl g_rows[2];
Structs::AnimFX g_steps0[2];
Structs::AnimFX g_steps1[1];
// Two EffectDict rows (name strings).
Structs::ColladaFile g_dicts[2];
char g_nameA[] = "fx_a";
char g_nameB[] = "fx_b";

void SetUpTables() {
    g_rows[0].LoopAFX = 4;
    g_rows[0].StepsSize = 2;
    g_rows[0].Steps = g_steps0;
    g_rows[0].Type = 2;
    g_rows[1].LoopAFX = 0;
    g_rows[1].StepsSize = 1;
    g_rows[1].Steps = g_steps1;
    g_rows[1].Type = 1;

    g_steps0[0].File = 0;
    g_steps0[0].Loop = 10;
    g_steps0[0].OrientOnce = true;
    g_steps0[0].OrientWithAnchor = true;
    g_steps0[0].ScaleWithAnchor = false;
    g_steps0[0].Speed = 1.5f;
    g_steps0[0].PlayTime = 7;
    g_steps0[1].File = 1;
    g_steps0[1].Loop = 0;
    g_steps0[1].OrientOnce = false;
    g_steps0[1].OrientWithAnchor = false;
    g_steps0[1].ScaleWithAnchor = true;
    g_steps0[1].Speed = 0.25f;
    g_steps0[1].PlayTime = 8;
    g_steps1[0].File = 1;
    g_steps1[0].Loop = 6;
    g_steps1[0].Speed = 2.0f;

    g_dicts[0].Name = g_nameA;
    g_dicts[1].Name = g_nameB;

    Arrays::AnimatedEffectTable::members = reinterpret_cast<std::uint8_t*>(g_rows);
    Arrays::AnimatedEffectTable::size = 2;
    Arrays::EffectDict::members = reinterpret_cast<std::uint8_t*>(g_dicts);
    Arrays::EffectDict::size = 2;
}

// Pool and set helpers for the checks below.
std::size_t FreeCount(const VisualFXManager::AnimatedFXInfo& pool) {
    return static_cast<std::size_t>(pool.m_freeFX.m_finish - pool.m_freeFX.m_start);
}

void TestCopyOfPool() {
    AnimatedFX* fxX = new AnimatedFX(9);
    AnimatedFX* fxY = new AnimatedFX(9);
    {
        VisualFXManager::AnimatedFXInfo a;
        a.m_dictName = g_nameA;
        a.m_freeFX.push_back_unique(fxX);
        a.m_activeFX.push_back(fxY);

        VisualFXManager::AnimatedFXInfo b(a);
        Check(b.m_dictName == g_nameA, "pool copy keeps the dict name");
        Check(FreeCount(b) == 1 && b.m_freeFX.m_start[0] == fxX, "pool copy keeps the free set");
        Check(b.m_freeFX.m_start != a.m_freeFX.m_start, "pool copy owns its free storage");
        Check(b.m_activeFX.size() == 1 && b.m_activeFX.front() == fxY, "pool copy keeps the active list");
    }
    delete fxX;
    delete fxY;
}

}  // namespace

int main() {
    SetUpTables();
    TestCopyOfPool();

    GameObject* objA = reinterpret_cast<GameObject*>(&g_objA);
    GameObject* objB = reinterpret_cast<GameObject*>(&g_objB);

    {
        VisualFXManager mgr;
        Check(!mgr.m_libraryBuilt, "constructor leaves the library unbuilt");
        Check(mgr.m_animatedFXPools.empty() && mgr.m_animFXSets.empty(), "constructor leaves the tables empty");
        Check(mgr.m_activeFX.empty() && mgr.m_fxToLoad.m_start == nullptr, "constructor leaves the lists and set empty");

        mgr._PreCacheAnimDict();
        Check(mgr.m_libraryBuilt, "_PreCacheAnimDict sets the library flag");

        for (int i = 0; i < 2; ++i) {
            VisualFXManager::AnimFXSetInfo setInfo;
            setInfo.m_row = &g_rows[i];
            mgr.m_animFXSets.push_back(setInfo);
        }
        mgr._BuildAnimFXDict();
        Check(mgr.m_animatedFXPools.size() == 2, "_BuildAnimFXDict makes one pool per EffectDict row");
        Check(mgr.m_animatedFXPools[0].m_dictName == g_nameA && mgr.m_animatedFXPools[1].m_dictName == g_nameB,
              "pools carry the dict names");

        // GetAnimFXSetData: the second int is the time scale, the third the step index.
        const Point3D<float> position{1.0f, 2.0f, 3.0f};
        VisualFXManager::AnimFXSetData* made = mgr.GetAnimFXSetData(5, 4, 1, objA, nullptr, position, Vec3f_Origin);
        Check(made->m_setIndex == 5 && made->m_timeScale == 4 && made->m_stepIndex == 1,
              "GetAnimFXSetData stores the set, time scale and step");
        Check(made->m_sourceObject == objA && made->unk_2c == nullptr, "GetAnimFXSetData stores the object and the sixth argument");
        Check(made->m_position.X == 1.0f && made->m_position.Z == 3.0f, "GetAnimFXSetData copies the position");
        Check(made->m_origin.X == 0.0f && made->m_origin.Y == 0.0f, "GetAnimFXSetData copies the origin");
        delete made;

        // GetAnimFXData on row 0 (mode 2): step 0 has play time 10 scaled by 4; step 1 has zero play time, so it takes
        // the time scale.
        VisualFXManager::AnimFXSetData* s0 = mgr.GetAnimFXSetData(0, 4, 0, nullptr, nullptr, Vec3f_Origin, Vec3f_Origin);
        VisualFXManager::AnimFXSetInfo& set0 = mgr.m_animFXSets[0];
        VisualFXManager::AnimFXData a = mgr.GetAnimFXData(set0, s0);
        Check(a.unk_00 && a.unk_01 && !a.unk_02, "step 0 flags come from the record");
        Check(a.m_speed == 1.5f && a.m_playTime == 40 && a.unk_0c == 7 && a.m_setData == s0,
              "step 0 speed, scaled play time, unk_0c and set data");
        s0->m_stepIndex = 1;
        a = mgr.GetAnimFXData(set0, s0);
        Check(!a.unk_00 && !a.unk_01 && a.unk_02, "step 1 flags come from the record");
        Check(a.m_speed == 0.25f && a.m_playTime == 4 && a.unk_0c == 8, "step 1 zero play time takes the time scale");
        s0->m_stepIndex = 0;
        s0->m_timeScale = 0;
        a = mgr.GetAnimFXData(set0, s0);
        Check(a.m_playTime == 10, "a zero time scale keeps the record's play time");
        s0->m_timeScale = -1;
        a = mgr.GetAnimFXData(set0, s0);
        Check(a.m_playTime == -1, "a time scale of -1 gives play time -1");
        delete s0;

        // Row 1 is mode 1: the record's play time, unscaled.
        VisualFXManager::AnimFXSetData* s1 = mgr.GetAnimFXSetData(1, 0, 0, nullptr, nullptr, Vec3f_Origin, Vec3f_Origin);
        a = mgr.GetAnimFXData(mgr.m_animFXSets[1], s1);
        Check(a.m_playTime == 6 && a.m_speed == 2.0f, "mode 1 uses the record's play time unscaled");
        delete s1;

        // Module off: nothing is grabbed.
        g_moduleOn = false;
        Check(mgr.GrabAnimFX(0, objA) == nullptr && mgr.m_animatedFXPools[0].m_activeFX.empty(),
              "GrabAnimFX does nothing when the module is off");
        g_moduleOn = true;

        // GrabAnimFX on row 1 (mode 1): a new instance of dict 1, no random draw.
        g_randomCalls = 0;
        AnimatedFX* fxA = mgr.GrabAnimFX(1, objA);
        Check(fxA != nullptr, "GrabAnimFX returns the instance");
        Check(g_randomCalls == 0, "mode 1 draws no random step");
        Check(fxA->m_name == g_nameB && fxA->unk_08 == 1, "a new instance loads dict 1 (fx_b) and carries its pool id");
        Check(fxA->unk_28 == objA && fxA->unk_24 && fxA->m_looping, "the instance is owned, visible and looping");
        Check(fxA->m_speed == 2.0f && fxA->m_loopCount == -1 && fxA->m_setData != nullptr && fxA->m_endOfLoop != nullptr,
              "SetAnimFX gets the step speed, loop -1, the set data and the end-of-loop callback");
        Check(mgr.m_animFXSets[1].m_setData.size() == 1, "GrabAnimFX adds one set data to the row");
        unsigned int freeCount = 99;
        unsigned int activeCount = 99;
        mgr.DBG_GetAnimatedFXStats(freeCount, activeCount);
        Check(freeCount == 0 && activeCount == 1, "one active instance after the first grab");

        // GrabAnimFX on row 0 (mode 2): the random step is drawn from the ordinary stream over the element count.
        g_randomResult = 1;
        AnimatedFX* fxB = mgr.GrabAnimFX(0, objB);
        Check(g_randomCalls == 1 && g_randomRange == 2 && !g_randomSynced, "mode 2 draws Random::GetRandom(count, false)");
        Check(fxB != nullptr && fxB->m_name == g_nameA, "row 0 plays dict 0 (fx_a)");
        Check(fxB->m_speed == 0.25f, "the drawn step 1 supplies the speed");
        Check(mgr.m_animFXSets[0].m_setData.size() == 1 && mgr.m_animFXSets[0].m_setData.front()->m_stepIndex == 1,
              "the set data records the drawn step");
        Check(mgr.m_animFXSets[0].m_setData.front()->m_sourceObject == objB, "the set data records the object");

        mgr.DBG_GetAnimatedFXStats(freeCount, activeCount);
        Check(freeCount == 0 && activeCount == 2, "two active instances after the second grab");

        // DropAnimatedFX: back to the pool's free set, hidden and unowned, the caller's pointer cleared.
        AnimatedFX* handle = fxA;
        mgr.DropAnimatedFX(handle);
        Check(handle == nullptr, "DropAnimatedFX clears the caller's pointer");
        Check(!fxA->unk_24 && fxA->unk_28 == nullptr, "a dropped instance is hidden and unowned");
        Check(FreeCount(mgr.m_animatedFXPools[1]) == 1 && mgr.m_animatedFXPools[1].m_activeFX.empty(),
              "a dropped instance moves from the active list to the free set");

        // _GetAnimFX reuses the free instance and resets its scale.
        const int scaleBefore = g_scaleCalls;
        AnimatedFX* again = mgr._GetAnimFX(1);
        Check(again == fxA, "_GetAnimFX reuses the free instance");
        Check(g_scaleCalls == scaleBefore + 1, "_GetAnimFX resets the reused instance's scale");
        Check(FreeCount(mgr.m_animatedFXPools[1]) == 0, "_GetAnimFX pops the free set");

        // DropAnimatedFXSetByID: row 0 with one active instance in its step pool. The first active instance goes back
        // to the free set and the list is cleared.
        mgr.DropAnimatedFXSetByID(0);
        Check(mgr.m_animatedFXPools[0].m_activeFX.empty(), "DropAnimatedFXSetByID clears the step pool's active list");
        Check(FreeCount(mgr.m_animatedFXPools[0]) == 1, "DropAnimatedFXSetByID returns the first active instance");
        Check(fxB->unk_28 == nullptr && !fxB->unk_24, "the returned instance is unowned and hidden");

        // _GetAnimFX on the pool with one free instance: six active are accepted, the seventh is refused.
        for (int i = 0; i < 6; ++i) {
            Check(mgr._GetAnimFX(0) != nullptr, "pool 0 accepts six active instances");
        }
        Check(mgr._GetAnimFX(0) == nullptr, "a seventh active instance is refused");

        // Flush: every instance the pools hold is deleted (six in pool 0, one in pool 1), and the tables are emptied.
        const int deletesBefore = g_deleteCalls;
        mgr.FlushLibraries();
        Check(g_deleteCalls == deletesBefore + 7, "FlushLibraries deletes the pooled instances");
        Check(!mgr.m_libraryBuilt, "FlushLibraries clears the library flag");
        Check(mgr.m_animatedFXPools.empty() && mgr.m_animFXSets.empty() && mgr.m_activeFX.empty(),
              "FlushLibraries empties the pools, the sets and the list");
    }

    std::printf("%s\n", g_failures == 0 ? "all checks passed" : "checks failed");
    return g_failures == 0 ? 0 : 1;
}
