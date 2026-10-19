// Test for batch r2a-game-anim-AnimationSet-4fa4a6-0 (redo pass).
//
// Checks the AnimationSet functions this pass completed: _FindCacheCandidate (0x3649e0), GetAnimationBySetIndex
// (0x364bf4), UnloadAnimation(int, bool) (0x3650b4) and the last-use stamp on a hit in GetAnimation(int) (0x3660f4).
// Both reconstruction sources are linked: game-anim/src/g1-game-anim-AnimationSet-4fa4a6-0.cpp and
// game-anim/src/g1-game-anim-AnimationSet-4fa4a6-1.cpp. The engine is not linked. The Timer, the AnimDict name
// lookup, LG_DEVICES, s_invalidAnim and the Animation destructor are test doubles defined below.
//
// The expected values follow the original's decisions: the comparison values are seeded from the first entry in
// key order, an entry in use is skipped, and the fallback is the first entry that is not in use.

#include <cstdint>
#include <cstdio>
#include <cstring>

#include "dh2/Animation.hpp"
#include "dh2/AnimationSet.hpp"
#include "dh2/global/AnimationSet_GetAnimation.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada/CDynamicAnimationSet.hpp"
#include "pydata-accessors/member_names.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

std::uint32_t g_now = 0;  // returned by the Timer stub

}  // namespace

// Test doubles. These exist only in this test.
bool LG_DEVICES = true;
Animation AnimationSet::s_invalidAnim;
Animation::~Animation() {}

namespace glitch::os {
std::uint32_t Timer::getRealTime() { return g_now; }
}  // namespace glitch::os

namespace Arrays {
template <>
int GetMemberIDByString<AnimDict>(const char* name) {
    return name ? 0 : -1;
}
}  // namespace Arrays

// The engine set's library release (AnimationSet::_RemoveAnimation 0x36504c) is a row that is declared but not
// reconstructed in glitch-scene-collada-gui, so it would otherwise come from the link stub set, which aborts.
// It removes the bindings of one library index; there is one database in play here and nothing reads the
// result, so the double is empty, as are the other engine seams this test already defines.
void glitch::collada::CDynamicAnimationSet::remAnimationLibraryBindings(unsigned int) {}

// Creates or overwrites the entry for key with the given fields. Animation +0x20 is the set index (unk_20),
// +0x24 the use count (m_useCount), +0x28 the last-use stamp (m_lastUseTime) and +0x2c the counter (unk_2c).
void Put(AnimationSet& set, int key, int setIndex, int useCount, std::int32_t counter, std::uint32_t stamp) {
    if (set.m_animSet == nullptr) {
        // An AnimationSet is built empty and its owner calls CreateAnimSet (0x364ca0); until then m_animSet is
        // null and the engine-set calls of the unload path would dereference it. The set created here is an
        // empty CDynamicAnimationSet: getDatabaseIndex finds nothing (-1) and the library release has no
        // index to drop. CreateAnimSet leaves the set dirty, and a dirty set sends the release through
        // remAnimationLibrary (0x62fb2c), which is declared but not reconstructed (its link stub aborts), so
        // the clean path -- remAnimationLibraryBindings -- is the one the unload checks exercise.
        set.CreateAnimSet();
        set.m_animSet->dirty = false;
    }
    Animation& entry = set.m_animations[key];
    entry.unk_20 = setIndex;
    entry.m_useCount = useCount;
    entry.unk_2c = counter;
    entry.m_lastUseTime = stamp;
}

int main() {
    // _FindCacheCandidate: empty set has no candidate.
    {
        AnimationSet set{};
        EXPECT(set._FindCacheCandidate() == -1);
    }

    // _FindCacheCandidate: every entry in use, so there is no candidate and no fallback.
    {
        AnimationSet set{};
        Put(set, 1, 0, 1, 0, 0);
        Put(set, 2, 0, 2, 0, 0);
        EXPECT(set._FindCacheCandidate() == -1);
    }

    // _FindCacheCandidate: the lowest counter wins; key 2 and key 3 tie on the counter and key 3 has the older stamp.
    {
        AnimationSet set{};
        Put(set, 1, 0, 0, 5, 10);
        Put(set, 2, 0, 0, 3, 20);
        Put(set, 3, 0, 0, 3, 5);
        EXPECT(set._FindCacheCandidate() == 3);
    }

    // _FindCacheCandidate: a lower counter beats an older stamp on a higher counter.
    {
        AnimationSet set{};
        Put(set, 1, 0, 0, 4, 1);
        Put(set, 2, 0, 0, 2, 99);
        EXPECT(set._FindCacheCandidate() == 2);
    }

    // _FindCacheCandidate: on a tie, the older stamp wins (key 2 has stamp 3 against key 1's 7).
    {
        AnimationSet set{};
        Put(set, 1, 0, 0, 2, 7);
        Put(set, 2, 0, 0, 2, 3);
        EXPECT(set._FindCacheCandidate() == 2);
    }

    // _FindCacheCandidate: on a tie, a newer stamp does not replace the seed, so the fallback (key 1) is returned.
    {
        AnimationSet set{};
        Put(set, 1, 0, 0, 2, 3);
        Put(set, 2, 0, 0, 2, 7);
        EXPECT(set._FindCacheCandidate() == 1);
    }

    // _FindCacheCandidate: the seed is the first entry even when it is in use. Key 1 is in use, so nothing is
    // chosen by comparison and the fallback is the first entry that is not in use (key 2).
    {
        AnimationSet set{};
        Put(set, 1, 0, 1, 0, 0);
        Put(set, 2, 0, 0, 9, 4);
        Put(set, 3, 0, 0, 1, 9);
        EXPECT(set._FindCacheCandidate() == 2);
    }

    // _FindCacheCandidate: a candidate found by comparison beats the fallback.
    {
        AnimationSet set{};
        Put(set, 1, 0, 0, 7, 1);
        Put(set, 2, 0, 0, 2, 5);
        EXPECT(set._FindCacheCandidate() == 2);
    }

    // GetAnimationBySetIndex: the first entry in key order with that set index is returned and stamped.
    {
        AnimationSet set{};
        Put(set, 1, 7, 0, 0, 0);
        Put(set, 2, 5, 0, 0, 0);
        Put(set, 3, 5, 0, 0, 0);
        g_now = 555;
        Animation* found = set.GetAnimationBySetIndex(5);
        EXPECT(found == &set.m_animations[2]);
        EXPECT(set.m_animations[2].m_lastUseTime == 555);
        EXPECT(set.m_animations[3].m_lastUseTime == 0);
        EXPECT(set.m_animations[1].m_lastUseTime == 0);
    }

    // GetAnimationBySetIndex: a miss returns the invalid entry and stamps nothing.
    {
        AnimationSet set{};
        Put(set, 1, 7, 0, 0, 0);
        g_now = 999;
        EXPECT(set.GetAnimationBySetIndex(42) == &AnimationSet::s_invalidAnim);
        EXPECT(set.m_animations[1].m_lastUseTime == 0);
    }

    // GetAnimationBySetIndex: an empty set returns the invalid entry.
    {
        AnimationSet set{};
        EXPECT(set.GetAnimationBySetIndex(0) == &AnimationSet::s_invalidAnim);
    }

    // UnloadAnimation: a missing id returns false and changes nothing.
    {
        AnimationSet set{};
        Put(set, 1, 0, 0, 0, 0);
        EXPECT(set.UnloadAnimation(2, false) == false);
        EXPECT(set.m_animations.size() == 1u);
    }

    // UnloadAnimation: an entry in use returns false and stays.
    {
        AnimationSet set{};
        Put(set, 4, 0, 2, 0, 0);
        EXPECT(set.UnloadAnimation(4, false) == false);
        EXPECT(set.m_animations.count(4) == 1u);
    }

    // UnloadAnimation: an entry not in use is removed when keepEntry is false.
    {
        AnimationSet set{};
        Put(set, 4, 0, 0, 0, 0);
        Put(set, 5, 0, 0, 0, 0);
        EXPECT(set.UnloadAnimation(4, false) == true);
        EXPECT(set.m_animations.count(4) == 0u);
        EXPECT(set.m_animations.count(5) == 1u);
    }

    // UnloadAnimation: with keepEntry set the entry is kept (the original's _RemoveAnimation erases only when clear).
    {
        AnimationSet set{};
        Put(set, 4, 0, 0, 0, 0);
        EXPECT(set.UnloadAnimation(4, true) == true);
        EXPECT(set.m_animations.count(4) == 1u);
    }

    // GetAnimation(int): a hit stamps the entry with the Timer value and returns it; no other entry is stamped.
    {
        AnimationSet set{};
        set.unk_3c = false;
        set.m_cacheSize = 10;
        Put(set, 4, 0, 0, 0, 1);
        Put(set, 6, 0, 0, 0, 2);
        g_now = 777;
        EXPECT(set.GetAnimation(4) == &set.m_animations[4]);
        EXPECT(set.m_animations[4].m_lastUseTime == 777);
        EXPECT(set.m_animations[6].m_lastUseTime == 2);
    }

    if (g_failures == 0) {
        std::printf("r2a-game-anim-AnimationSet-4fa4a6-0 test: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-anim-AnimationSet-4fa4a6-0 test: %d failure(s)\n", g_failures);
    return 1;
}
