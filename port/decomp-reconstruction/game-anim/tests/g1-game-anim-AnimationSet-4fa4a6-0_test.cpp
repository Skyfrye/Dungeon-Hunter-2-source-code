// Test for batch g1-game-anim-AnimationSet-4fa4a6-0.
//
// Covers CalculateCacheSize (0x3649bc), which is arithmetic on the reference counter and the cache unit, and
// checks that Update (0x3649d8) and Purge (0x3649dc) leave the cache size alone. The AnimationSet is a stack
// object built with its implicit constructor. The definitions at the bottom are test doubles for engine symbols
// that the batch source references but this test does not link: the Animation destructor (0x364ad4), the
// invalid-entry static, and the AnimDict name lookup (instantiated in pydata-accessors, 0x364b80).

#include <cstdint>
#include <cstdio>

#include "dh2/AnimationSet.hpp"
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

}  // namespace

// Test doubles. These are test-only definitions, not game code.
Animation::~Animation() {}
Animation AnimationSet::s_invalidAnim;
namespace glitch::os {
// GetAnimationBySetIndex stamps the last-use time from this; this test does not check the stamp.
std::uint32_t Timer::getRealTime() { return 0; }
}  // namespace glitch::os

namespace Arrays {
template <>
int GetMemberIDByString<AnimDict>(const char* name) {
    return name ? 0 : -1;
}
}  // namespace Arrays

int main() {
    {
        AnimationSet set{};

        // m_cacheSize = m_cacheUnit * (reference counter - 1) + 10.
        set.referenceCounter = 1;
        set.m_cacheUnit = 5;
        set.CalculateCacheSize();
        EXPECT(set.m_cacheSize == 10);

        set.referenceCounter = 4;
        set.m_cacheUnit = 3;
        set.CalculateCacheSize();
        EXPECT(set.m_cacheSize == 19);

        set.referenceCounter = 2;
        set.m_cacheUnit = 0;
        set.CalculateCacheSize();
        EXPECT(set.m_cacheSize == 10);

        set.referenceCounter = 3;
        set.m_cacheUnit = 7;
        set.CalculateCacheSize();
        EXPECT(set.m_cacheSize == 24);

        // Update and Purge are empty in the original.
        set.m_cacheSize = 77;
        set.Update(5);
        set.Purge();
        EXPECT(set.m_cacheSize == 77);
    }

    if (g_failures == 0) {
        std::printf("AnimationSet CalculateCacheSize test: ok\n");
        return 0;
    }
    std::printf("AnimationSet CalculateCacheSize test: %d failure(s)\n", g_failures);
    return 1;
}
