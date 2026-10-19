// Test for batch g1-game-anim-AnimSetManager-d3d27a-0.
//
// Covers the id bookkeeping (Create counts down from -1, Flush resets it), the existence rule (AddAnim and
// AddTemplateAnim create a set only for a non-negative id), the LG_DEVICES flag, the GetClipId miss path and its
// GetAnimation call, and the GetAnimator use count (the AnimatorSet keeps one use on the set). The engine symbols that
// the batch source references are test doubles below: they record calls and do not model the engine.
// GetClipId reads the clip id at Animation +0x20 (Animation::unk_20) from the entry GetAnimation returns. The test
// double returns an entry with unk_20 = 7, so an existing set gives 7. AddAnim also reads the trace switch on
// DebugSwitches::s_inst after the load; those engine symbols are test doubles too.

#include <cstdio>
#include <string>

#include "dh2/AnimSetManager.hpp"
#include "dh2/AnimationSet.hpp"
#include "dh2/AnimatorSet.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/global/AnimationSet_GetAnimation.hpp"
#include "glitch-scene-collada-gui/collada/CDynamicAnimationSet.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

int g_createCalls = 0;
int g_loadCalls = 0;
int g_lastLoadArg = 0;
int g_getAnimCalls = 0;
int g_switchLoadCalls = 0;
int g_switchReadCalls = 0;
int g_lastGetArg = 0;
int g_cacheCalls = 0;
boost::intrusive_ptr<AnimationSet> g_kept;  // the use an AnimatorSet keeps on its set (test double)

}  // namespace

// Test doubles. These are test-only definitions, not game code.
Animation::~Animation() {}
AnimationSet::~AnimationSet() {}

int AnimationSet::CreateAnimSet() {
    ++g_createCalls;
    // The engine set's one call in this batch (AddTemplateAnim 0x476444, setDefaultAnimationLibrary) goes
    // straight at +0x20 with no null test. The double builds the same empty CDynamicAnimationSet the body
    // builds (operator new, 0x364ca0), so m_animSet is never null.
    if (m_animSet == nullptr) {
        m_animSet = new glitch::collada::CDynamicAnimationSet();
    }
    unk_2c = 1;
    return 0;
}

// The entry LoadAnimation returns. AddTemplateAnim reads its file name (Animation +0x00) and passes it to
// the collada database constructor: the listing dereferences the LoadAnimation result with no null test
// (0x47641c: the r0 of the call is used as the Animation* immediately, then Animation[5] is read), so a null
// double faults exactly where the original would. The real LoadAnimation never returns null for an id inside
// the AnimDict table (0x3659ec builds the entry and returns the tree node); only an out-of-range id gives
// s_invalidAnim, which is a real object too. The double therefore returns a real Animation.
Animation g_loadEntry;

Animation* AnimationSet::LoadAnimation(int animId) {
    ++g_loadCalls;
    g_lastLoadArg = animId;
    return &g_loadEntry;
}

// AddTemplateAnim's last step builds the database of the entry's file (0x476424..0x476444) and hands it to
// the engine set. The loader behind that constructor (CResFileManager::load 0x65a98c) is not reconstructed,
// so its link stub aborts. The double records nothing and leaves the handle empty; the manager's own checks
// do not look at the database, they count the load and the template call.
glitch::collada::CColladaDatabase::CColladaDatabase(const char* fileName, glitch::collada::CColladaFactory* factory) {
    (void)fileName;
    this->record = nullptr;
    this->factory = factory;
}

// The entry GetAnimation returns for any id. Its clip id (+0x20) is 7.
Animation g_clipEntry;

Animation* AnimationSet::GetAnimation(int animId) {
    ++g_getAnimCalls;
    g_lastGetArg = animId;
    g_clipEntry.unk_20 = 7;
    return &g_clipEntry;
}

// AddAnim's trace read (DebugSwitches::s_inst, load then GetSwitch with the value discarded).
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() {
    ++g_switchLoadCalls;
}
bool DebugSwitches::GetSwitch(const std::string&) {
    ++g_switchReadCalls;
    return false;
}

void AnimationSet::CalculateCacheSize() {
    ++g_cacheCalls;
}

// AnimatorSet embeds an AnimApplicator (+0x58), so its constructor needs these too. The test never runs the applicator.
AnimApplicator::AnimApplicator(glitch::collada::ISceneNodeAnimator* animator) : m_animator(animator) {}
AnimApplicator::~AnimApplicator() {}
void AnimApplicator::SetRefNode(glitch::scene::ISceneNode*) {}
void AnimApplicator::ResetDelta(unsigned int) {}
void AnimApplicator::AnimateNode(unsigned int) {}

// The engine AnimatorSet keeps a counted use on the set it plays (m_animationSet, +0x94).
AnimatorSet::AnimatorSet(const boost::intrusive_ptr<AnimationSet>& animationSet) : m_applicator(nullptr) {
    g_kept = animationSet;
}

// The constructor sets the vptr, so the vtable is emitted here and every virtual slot needs a definition.
AnimatorSet::~AnimatorSet() {}
glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE AnimatorSet::getType() const {
    return static_cast<glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE>(13);
}
void AnimatorSet::computeAnimationValues(unsigned int) {}
void AnimatorSet::applyAnimationValues(unsigned int) {}
void AnimatorSet::getAnimationValue(int, int, void*) {}
void AnimatorSet::animateNode(glitch::scene::ISceneNode*, unsigned int) {}
void AnimatorSet::updateTime(unsigned int) {}
void AnimatorSet::setCurrentAnimation(int) {}
void AnimatorSet::onUnbind(glitch::scene::ISceneNode*) {}


bool LG_DEVICES = false;
int gAssertLevel = 0;

int main() {
    // Ids and creation: the first Create gives -2 and the counter counts down.
    {
        AnimSetManager mgr;
        EXPECT(!mgr.Exists(-2));
        EXPECT(mgr.Create() == -2);
        EXPECT(mgr.Exists(-2));
        EXPECT(mgr.Create() == -3);
        EXPECT(g_createCalls == 2);
        EXPECT(!mgr.m_sets.at(-2).unk_3c);  // LG_DEVICES is false here

        LG_DEVICES = true;
        EXPECT(mgr.Create() == -4);
        EXPECT(mgr.m_sets.at(-4).unk_3c);  // LG_DEVICES sets the flag on the new set
        LG_DEVICES = false;

        mgr.Flush();
        EXPECT(!mgr.Exists(-2));
        EXPECT(mgr.m_sets.empty());
        EXPECT(mgr.Create() == -2);  // Flush resets the id counter to -1
    }

    // AddAnim and AddTemplateAnim: a missing set is created only for a non-negative id.
    {
        AnimSetManager mgr;
        g_loadCalls = 0;
        mgr.AddAnim(-5, 1);
        EXPECT(!mgr.Exists(-5));  // negative id: nothing is created
        EXPECT(g_loadCalls == 0);

        mgr.AddAnim(3, 7);  // created, unk_3c clear, so it loads
        EXPECT(mgr.Exists(3));
        EXPECT(g_loadCalls == 1 && g_lastLoadArg == 7);
        mgr.AddAnim(3, 9);  // existing set, unk_3c clear, so it loads again
        EXPECT(g_loadCalls == 2 && g_lastLoadArg == 9);

        LG_DEVICES = true;
        mgr.AddAnim(4, 1);  // created with unk_3c set, so AddAnim does not load
        EXPECT(mgr.Exists(4));
        EXPECT(mgr.m_sets.at(4).unk_3c);
        EXPECT(g_loadCalls == 2);

        mgr.AddTemplateAnim(5, 2);  // AddTemplateAnim loads whatever the flag says
        EXPECT(mgr.Exists(5));
        EXPECT(g_loadCalls == 3 && g_lastLoadArg == 2);
        LG_DEVICES = false;

        mgr.AddTemplateAnim(-1, 3);  // negative id: nothing is created and nothing loads
        EXPECT(!mgr.Exists(-1));
        EXPECT(g_loadCalls == 3);
    }

    // GetClipId: a missing set returns -1 with no GetAnimation call. An existing set makes the GetAnimation call
    // and returns the clip id read from the entry (+0x20, 7 in the double).
    {
        AnimSetManager mgr;
        g_getAnimCalls = 0;
        EXPECT(mgr.GetClipId(9, 0) == -1);
        EXPECT(g_getAnimCalls == 0);

        mgr.AddAnim(9, 1);
        EXPECT(mgr.GetClipId(9, 2) == 7);
        EXPECT(g_getAnimCalls == 1 && g_lastGetArg == 2);
    }

    // AddAnim's trace read runs after each load: DebugSwitches::load, then GetSwitch.
    {
        AnimSetManager mgr;
        g_switchLoadCalls = 0;
        g_switchReadCalls = 0;
        mgr.AddAnim(12, 4);  // created and loaded
        EXPECT(g_switchLoadCalls == 1 && g_switchReadCalls == 1);
        mgr.AddAnim(-3, 4);  // negative id: nothing loads, no trace read
        EXPECT(g_switchLoadCalls == 1 && g_switchReadCalls == 1);
    }

    // GetAnimator: a missing set returns nullptr. An existing set gets one more use, kept by the AnimatorSet, and
    // CalculateCacheSize runs once.
    {
        AnimSetManager mgr;
        EXPECT(mgr.GetAnimator(6) == nullptr);
        EXPECT(g_cacheCalls == 0);

        mgr.AddAnim(6, 1);
        AnimationSet& set = mgr.m_sets.at(6);
        const int before = set.referenceCounter;
        g_cacheCalls = 0;
        glitch::collada::ISceneNodeAnimator* anim = mgr.GetAnimator(6);
        EXPECT(anim != nullptr);
        EXPECT(set.referenceCounter == before + 1);  // the AnimatorSet keeps one use
        EXPECT(g_cacheCalls == 1);

        g_kept = static_cast<AnimationSet*>(nullptr);  // the AnimatorSet releases its use
        EXPECT(set.referenceCounter == before);
        ::operator delete(static_cast<void*>(anim));  // the test double does not free the object
    }

    // DBG_SetName and DBG_DumpInfo leave the sets alone.
    {
        AnimSetManager mgr;
        mgr.AddAnim(2, 1);
        mgr.m_sets.at(2).m_animations[7];  // one Animation entry, so the inner walk visits a node
        mgr.DBG_SetName(2, "name");
        mgr.DBG_DumpInfo();
        EXPECT(mgr.Exists(2));
        EXPECT(mgr.m_sets.at(2).m_animations.size() == 1);
    }

    if (g_failures) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("ok\n");
    return 0;
}
