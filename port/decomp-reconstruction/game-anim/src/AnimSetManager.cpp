// Batch g1-game-anim-AnimSetManager-d3d27a-0: AnimSetManager, the owner of the AnimationSet objects keyed by
// set id. Declarations come from dh2/AnimSetManager.hpp. Set ids count down from -1: Create() decrements
// m_nextSetId before it uses the id. The original STLport rb-tree at +0x04 is the std::map m_sets here.
// Every lookup uses the lower_bound search that the original Exists() performs.

#include "dh2/AnimSetManager.hpp"

#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/Animation.hpp"
#include "dh2/AnimationSet.hpp"
#include "dh2/AnimatorSet.hpp"
#include "dh2/AnimatorSynchronizedSet.hpp"
#include "glitch-scene-collada-gui/collada/CAnimationSet.hpp"
#include "glitch-scene-collada-gui/collada/CDynamicAnimationSet.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include <vector>
#include "dh2/DebugSwitches.hpp"
#include "dh2/global/AnimationSet_GetAnimation.hpp"

// Engine assert level, declared in core-platform/memory.hpp. That header is not included here: it pulls
// core-platform/deps/glitch_core.hpp, which redefines the glitch-shared core types that AnimationSet.hpp uses.
extern int gAssertLevel;

// 0x475364 _ZN14AnimSetManagerC2Ev
// 0x4753b4 _ZN14AnimSetManagerC1Ev
// Both constructors have the same body, so one C++ constructor covers the complete-object and base-object
// variants. +0x04 m_sets starts empty (the map default), +0x1c m_nextSetId = -1. The vptr store is the compiler's.
AnimSetManager::AnimSetManager() : m_nextSetId(-1) {}

// 0x475404 _ZNK14AnimSetManager6ExistsEi
// lower_bound on the key tree: the set exists when the first key >= setId is equal to setId.
bool AnimSetManager::Exists(int setId) const {
    auto it = m_sets.lower_bound(setId);
    return it != m_sets.end() && setId >= it->first;
}

// 0x475460 _ZN14AnimSetManager11DBG_SetNameEiPKc
// Debug name setter. The original walks the set tree from the root toward setId (reads only) and returns
// without storing the name, so this build has no observable effect. The arguments are unused.
void AnimSetManager::DBG_SetName(int setId, const char* name) {
    (void)setId;
    (void)name;
}

// 0x475488 _ZNK14AnimSetManager12DBG_DumpInfoEv
// Debug dump. The original walks every set in key order and, inside each AnimationSet, walks its Animation
// map (AnimationSet +0x08, the std::map m_animations). Neither walk makes a call or stores anything, so both walks are
// kept as they are and nothing else is done.
void AnimSetManager::DBG_DumpInfo() const {
    for (const auto& entry : m_sets) {
        for (const auto& anim : entry.second.m_animations) {
            (void)anim;
        }
    }
}

// 0x47559c _ZN14AnimSetManager9GetClipIdEii
// Reproduced: the -1 result for a missing set, the node that Exists() finds (lower_bound), the AnimationSet at node
// +0x14, the AnimationSet::GetAnimation(animIndex) call (which can load or replace an entry), and the read of the clip
// id at Animation +0x20 (asm: ADD R0,R5,#0x14 / BL GetAnimation / LDR R0,[R0,#0x20]). The Hex-Rays line
// `*((_DWORD *)GetAnimation(...) + 8)` is a DWORD index, so the byte offset is 0x20. That word is Animation::unk_20
// (the clip id, -1 for none, see dh2/Animation.hpp). GetAnimation returns s_invalidAnim on a miss, so the entry is
// never null.
int AnimSetManager::GetClipId(int setId, int animIndex) {
    if (!Exists(setId)) {
        return -1;
    }
    AnimationSet& set = m_sets.lower_bound(setId)->second;  // the node Exists() found
    return set.GetAnimation(animIndex)->unk_20;              // Animation +0x20: the clip id
}

// 0x475664 _ZN14AnimSetManager5FlushEv
// Drops every set (the original erases the tree at +0x04 when its count at +0x14 is non-zero), then resets the
// id counter to -1.
void AnimSetManager::Flush() {
    if (!m_sets.empty()) {
        m_sets.clear();
    }
    m_nextSetId = -1;
}

// 0x4756a8 _ZN14AnimSetManagerD1Ev
// 0x475728 _ZN14AnimSetManagerD2Ev
// The base-object and complete-object destructors have the same body, so one C++ destructor covers both. Flush()
// already empties the tree, so the original's second erase block (reached only when the count is non-zero) is
// dead and not repeated. The vptr store is the compiler's.
// 0x47570c _ZN14AnimSetManagerD0Ev is the compiler-generated deleting destructor (this destructor, then
// operator delete, which is CustomFree in the original). It has no body to write here.
AnimSetManager::~AnimSetManager() {
    Flush();
}

// 0x4761cc _ZN14AnimSetManager23GetSynchronizedAnimatorEi
// For an existing set: a dirty engine set is compiled first (CAnimationSet vtable +0x38); an AnimatorSynchronizedSet (0xc8 bytes)
// is built over the engine set with an empty name list (a use is held on the set during the construction); the cache size is
// recalculated and the timeline of the new animator is set not to loop. Null for a missing set.
glitch::collada::ISceneNodeAnimator* AnimSetManager::GetSynchronizedAnimator(int setId) {
    if (!Exists(setId)) {
        return nullptr;
    }
    AnimationSet& set = m_sets.lower_bound(setId)->second;
    if (set.m_animSet->dirty) {
        set.m_animSet->compile();
    }
    glitch::core::svector<std::string> names;
    boost::intrusive_ptr<glitch::collada::CAnimationSet> engineSet(set.m_animSet, true);
    AnimatorSynchronizedSet* animator = new AnimatorSynchronizedSet(engineSet, names);
    engineSet.reset();
    glitch::scene::ITimelineController* timeline = animator->getTimelineCtrl();
    set.CalculateCacheSize();
    if (timeline != nullptr) {
        timeline->setLoop(false);
    }
    return animator;
}

// 0x4762c4 _ZN14AnimSetManager11GetAnimatorEi
// For an existing set: a dirty engine set is compiled first (CAnimationSet vtable +0x38); an AnimatorSet (0xa4 bytes) is built on the
// set (a use is held on it during the construction); the cache size is recalculated and the timeline of the new animator is set not
// to loop. Null for a missing set.
glitch::collada::ISceneNodeAnimator* AnimSetManager::GetAnimator(int setId) {
    if (!Exists(setId)) {
        return nullptr;
    }
    AnimationSet& set = m_sets.lower_bound(setId)->second;
    if (set.m_animSet->dirty) {
        set.m_animSet->compile();
    }
    AnimatorSet* animator = nullptr;
    {
        ++set.referenceCounter;
        boost::intrusive_ptr<AnimationSet> local(&set, false);
        animator = new AnimatorSet(local);
    }
    glitch::scene::ITimelineController* timeline = animator->getTimelineCtrl();
    set.CalculateCacheSize();
    if (timeline != nullptr) {
        timeline->setLoop(false);
    }
    return animator;
}

// 0x476398 _ZN14AnimSetManager15AddTemplateAnimEii
// A missing set is created (the id must be non-negative; CreateAnimSet, LG_DEVICES flag); the animation is loaded into it and the
// database of its file becomes the default animation library of the engine set.
void AnimSetManager::AddTemplateAnim(int setId, int animDict) {
    if (!Exists(setId)) {
        if (setId < 0) {
            return;
        }
        AnimationSet& created = m_sets[setId];
        created.CreateAnimSet();
        if (LG_DEVICES) {
            created.unk_3c = true;  // +0x3c
        }
    }
    AnimationSet& set = m_sets[setId];
    Animation* animation = set.LoadAnimation(animDict);
    glitch::collada::CDynamicAnimationSet* engineSet = set.m_animSet;
    glitch::collada::CColladaDatabase database(animation->m_fileName.c_str(), &glitch::collada::CColladaDatabase::DefaultFactory);
    engineSet->setDefaultAnimationLibrary(database);
    glitch::collada::dropDatabase(database);
}

// 0x476464 _ZN14AnimSetManager6CreateEv
// Reproduced: the id decrement, the existence check on the new id with the level-1 assert message, and the creation
// of the set (CreateAnimSet, LG_DEVICES flag). Returns the new id.
// At gAssertLevel == 2 with the id already taken, the original stores 0 to address 0 (dword_0), a deliberate fault
// that ends the process. Here that is std::abort(), the same convention as AnimatedFX::ForceMaterial and
// AnimController (the process ends at this point; the signal differs, SIGABRT for SIGSEGV).
int AnimSetManager::Create() {
    --m_nextSetId;
    if (Exists(m_nextSetId)) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "Exists(m_nextSetId) == false",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Visual\\Animations\\AnimSetManager.cpp",
                         72);
        }
    }
    AnimationSet& set = m_sets[m_nextSetId];
    set.CreateAnimSet();
    if (LG_DEVICES) {
        set.unk_3c = true;  // +0x3c
    }
    return m_nextSetId;
}

// 0x47653c _ZN14AnimSetManager7AddAnimEii
// Reproduced: the creation of a missing set (the id must be non-negative), the CreateAnimSet call and the LG_DEVICES
// flag, then LoadAnimation(animDict) when the set's unk_3c flag (+0x3c) is clear. After the load the original calls
// DebugSwitches::load() on DebugSwitches::s_inst and then GetSwitch("isTracingAnimSetManager"), and discards the
// switch value (the string is built and freed inside the function). Both calls are kept.
void AnimSetManager::AddAnim(int setId, int animDict) {
    if (!Exists(setId)) {
        if (setId < 0) {
            return;
        }
        AnimationSet& created = m_sets[setId];
        created.CreateAnimSet();
        if (LG_DEVICES) {
            created.unk_3c = true;  // +0x3c
        }
    }
    AnimationSet& set = m_sets[setId];
    if (!set.unk_3c) {
        set.LoadAnimation(animDict);
        DebugSwitches::s_inst.load();
        (void)DebugSwitches::s_inst.GetSwitch(std::string("isTracingAnimSetManager"));  // value discarded
    }
}
