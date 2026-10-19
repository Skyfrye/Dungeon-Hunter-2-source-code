// Test for batch g1-game-anim-AnimationSet-4fa4a6-1.
//
// Checks which branch AnimationSet::GetAnimation(int) takes, and that the name overload forwards to it.
// The engine is not linked. LoadAnimation, ReplaceAnimation, the AnimDict name lookup, LG_DEVICES,
// s_invalidAnim and the destructors are defined here as stubs. The stubs record their calls, so the
// test can check which path ran. The hit path's last-use stamp is checked against the Timer stub below.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <initializer_list>

#include "dh2/Animation.hpp"
#include "dh2/AnimationSet.hpp"
#include "dh2/global/AnimationSet_GetAnimation.hpp"
#include "glitch-core-io/os/logging.hpp"
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

int g_loadCalls = 0;
int g_loadArg = -1;
int g_replaceCalls = 0;
int g_replaceArg = -1;
Animation* g_loadResult = nullptr;     // returned by the LoadAnimation stub
Animation* g_replaceResult = nullptr;  // returned by the ReplaceAnimation stub
Animation g_loadedAnim;
Animation g_replacedAnim;

void Reset() {
    g_loadCalls = 0;
    g_replaceCalls = 0;
    g_loadArg = -1;
    g_replaceArg = -1;
    g_loadResult = &g_loadedAnim;
    g_replaceResult = &g_replacedAnim;
    LG_DEVICES = true;
}

// Inserts entries with the given keys (default-constructed Animation values).
void Fill(AnimationSet& set, std::initializer_list<int> keys) {
    for (int k : keys) {
        (void)set.m_animations[k];
    }
}

}  // namespace

// Definitions for names the batch refers to but does not own. They exist only in this test.
bool LG_DEVICES = true;
Animation AnimationSet::s_invalidAnim;
Animation::~Animation() {}
AnimationSet::~AnimationSet() {}

std::uint32_t g_timerNow = 0;  // returned by the Timer stub
namespace glitch::os {
std::uint32_t Timer::getRealTime() { return g_timerNow; }
}  // namespace glitch::os

Animation* AnimationSet::LoadAnimation(int animId) {
    ++g_loadCalls;
    g_loadArg = animId;
    return g_loadResult;
}

Animation* AnimationSet::ReplaceAnimation(int animId) {
    ++g_replaceCalls;
    g_replaceArg = animId;
    return g_replaceResult;
}

namespace Arrays {
template <>
int GetMemberIDByString<AnimDict>(const char* name) {
    if (std::strcmp(name, "Hit") == 0) {
        return 4;
    }
    return -1;
}
}  // namespace Arrays

int main() {
    // Hit on key 4 (entries 2, 4, 6): the stored entry is returned and no stub runs.
    {
        AnimationSet set;
        set.unk_3c = false;
        set.m_cacheSize = 10;
        Fill(set, {2, 4, 6});
        Reset();
        EXPECT(set.GetAnimation(4) == &set.m_animations[4]);
        EXPECT(g_loadCalls == 0 && g_replaceCalls == 0);
        EXPECT(set.m_animations.size() == 3);
    }

    // A hit stamps the entry's last-use time (+0x28) with the Timer value; the other entries are not stamped.
    {
        AnimationSet set;
        set.unk_3c = false;
        set.m_cacheSize = 10;
        Fill(set, {2, 4, 6});
        Reset();
        set.m_animations[4].m_lastUseTime = 1;
        g_timerNow = 4321;
        EXPECT(set.GetAnimation(4) == &set.m_animations[4]);
        EXPECT(set.m_animations[4].m_lastUseTime == 4321);
        EXPECT(set.m_animations[2].m_lastUseTime == 0);
        EXPECT(set.m_animations[6].m_lastUseTime == 0);
    }

    // Miss on key 5 (lower_bound is 6, not equal), LG_DEVICES set, unk_3c clear: s_invalidAnim.
    {
        AnimationSet set;
        set.unk_3c = false;
        set.m_cacheSize = 10;
        Fill(set, {2, 4, 6});
        Reset();
        EXPECT(set.GetAnimation(5) == &AnimationSet::s_invalidAnim);
        EXPECT(g_loadCalls == 0 && g_replaceCalls == 0);
        EXPECT(set.m_animations.size() == 3);
    }

    // Miss with LG_DEVICES clear: the s_invalidAnim branch is skipped. Cache size 10 > count 3: load.
    {
        AnimationSet set;
        set.unk_3c = false;
        set.m_cacheSize = 10;
        Fill(set, {2, 4, 6});
        Reset();
        LG_DEVICES = false;
        EXPECT(set.GetAnimation(5) == &g_loadedAnim);
        EXPECT(g_loadCalls == 1 && g_loadArg == 5);
        EXPECT(g_replaceCalls == 0);
    }

    // Miss with unk_3c set: the s_invalidAnim branch is skipped even with LG_DEVICES set. Load.
    {
        AnimationSet set;
        set.unk_3c = true;
        set.m_cacheSize = 10;
        Fill(set, {2, 4, 6});
        Reset();
        EXPECT(set.GetAnimation(5) == &g_loadedAnim);
        EXPECT(g_loadCalls == 1 && g_loadArg == 5);
        EXPECT(g_replaceCalls == 0);
    }

    // Miss with the cache full (cache size 2 <= count 3): replace, and return the replacement.
    {
        AnimationSet set;
        set.unk_3c = true;
        set.m_cacheSize = 2;
        Fill(set, {2, 4, 6});
        Reset();
        EXPECT(set.GetAnimation(5) == &g_replacedAnim);
        EXPECT(g_replaceCalls == 1 && g_replaceArg == 5);
        EXPECT(g_loadCalls == 0);
    }

    // Replace yields s_invalidAnim: fall back to LoadAnimation for the same id.
    {
        AnimationSet set;
        set.unk_3c = true;
        set.m_cacheSize = 2;
        Fill(set, {2, 4, 6});
        Reset();
        g_replaceResult = &AnimationSet::s_invalidAnim;
        EXPECT(set.GetAnimation(5) == &g_loadedAnim);
        EXPECT(g_replaceCalls == 1 && g_replaceArg == 5);
        EXPECT(g_loadCalls == 1 && g_loadArg == 5);
    }

    // Empty map, cache size 0 (0 > 0 is false): replace.
    {
        AnimationSet set;
        set.unk_3c = false;
        set.m_cacheSize = 0;
        Reset();
        LG_DEVICES = false;
        EXPECT(set.GetAnimation(9) == &g_replacedAnim);
        EXPECT(g_replaceCalls == 1 && g_replaceArg == 9);
        EXPECT(g_loadCalls == 0);
    }

    // Name overload: "Hit" maps to id 4, which is stored, so it hits. "Missing" maps to -1: a miss
    // with LG_DEVICES set and unk_3c clear, so s_invalidAnim.
    {
        AnimationSet set;
        set.unk_3c = false;
        set.m_cacheSize = 10;
        Fill(set, {4});
        Reset();
        EXPECT(set.GetAnimation("Hit") == &set.m_animations[4]);
        EXPECT(set.GetAnimation("Missing") == &AnimationSet::s_invalidAnim);
        EXPECT(g_loadCalls == 0 && g_replaceCalls == 0);
    }

    if (g_failures == 0) {
        std::printf("g1-game-anim-AnimationSet-4fa4a6-1 test: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
