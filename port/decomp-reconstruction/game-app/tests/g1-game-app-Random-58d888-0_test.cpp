// Test for the Random batch g1-game-app-Random-58d888-0. It needs no engine code: it links with the batch's own
// source only. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>

#include "dh2/Random.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                       \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// Sets both streams and clears the debug counters.
void Reset(uint32_t seed, uint32_t syncedSeed) {
    Random::s_seed = seed;
    Random::s_syncedSeed = syncedSeed;
    Random::s_debugRandomCounters[0] = 0;
    Random::s_debugRandomCounters[1] = 0;
}

// Independent reference step. The product and the sum are taken on 64-bit values, wrapped to 32 bits, then reduced.
uint32_t RefNext(uint32_t seed) {
    const uint64_t wrapped = (59051ull * seed + 177149ull) & 0xFFFFFFFFull;
    return static_cast<uint32_t>(wrapped % 0xDAF26Bull);
}

void TestHandComputed() {
    // Seed 1: 59051 + 177149 = 236200, which is below the modulus. 236200 mod 1000 = 200.
    Reset(1, 0);
    EXPECT(Random::GetRandom(1000, false) == 200u);
    EXPECT(Random::s_seed == 236200u);
    EXPECT(Random::s_syncedSeed == 0u);
    EXPECT(Random::s_debugRandomCounters[0] == 1);
    EXPECT(Random::s_debugRandomCounters[1] == 0);

    // Second draw from 236200: 59051 * 236200 + 177149 = 13948023349, which wraps to 1063121461.
    // 1063121461 mod 0xDAF26B = 1302343, and 1302343 mod 1000 = 343.
    EXPECT(Random::GetRandom(1000, false) == 343u);
    EXPECT(Random::s_seed == 1302343u);
    EXPECT(Random::s_debugRandomCounters[0] == 2);
    EXPECT(RefNext(236200u) == 1302343u);
}

void TestRangeZero() {
    // Range 0 returns 0, leaves the seed alone, and still counts the call on its stream.
    Reset(12345, 678);
    EXPECT(Random::GetRandom(0, false) == 0u);
    EXPECT(Random::s_seed == 12345u);
    EXPECT(Random::GetRandom(0, true) == 0u);
    EXPECT(Random::s_syncedSeed == 678u);
    EXPECT(Random::s_debugRandomCounters[0] == 1);
    EXPECT(Random::s_debugRandomCounters[1] == 1);
}

void TestSyncedStream() {
    // Synced draw from synced seed 0: 0 * 59051 + 177149 = 177149. 177149 mod 99 = 38.
    // The ordinary seed is not touched.
    Reset(1, 0);
    EXPECT(Random::GetRandom(99, true) == 38u);
    EXPECT(Random::s_syncedSeed == 177149u);
    EXPECT(Random::s_seed == 1u);
    EXPECT(Random::s_debugRandomCounters[0] == 0);
    EXPECT(Random::s_debugRandomCounters[1] == 1);
}

void TestWrap() {
    // The product wraps: 59051 * 0xFFFFFFFF + 177149 is 118098 mod 2^32. 118098 mod 1000 = 98.
    Reset(0xFFFFFFFFu, 0);
    EXPECT(Random::GetRandom(1000, false) == 98u);
    EXPECT(Random::s_seed == 118098u);
    EXPECT(RefNext(0xFFFFFFFFu) == 118098u);
}

void TestNegativeRange() {
    // A negative range is read as unsigned. Every seed below the modulus is below 0xFFFFFFFF, so the result is the new seed.
    Reset(1, 0);
    EXPECT(Random::GetRandom(-1, false) == 236200u);
    EXPECT(Random::s_seed == 236200u);
}

void TestLongSequence() {
    // 2000 mixed draws, alternating streams (every third draw is synced), checked against the reference.
    Reset(987654321u, 555u);
    uint32_t refSeed = 987654321u;
    uint32_t refSynced = 555u;
    int syncedCalls = 0;
    int ordinaryCalls = 0;
    for (int i = 0; i < 2000; ++i) {
        const bool synced = (i % 3) == 0;
        const int range = 1 + (i * 37) % 250;  // 1..250
        uint32_t& refState = synced ? refSynced : refSeed;
        refState = RefNext(refState);
        const uint32_t expected = refState % static_cast<uint32_t>(range);
        const unsigned int got = Random::GetRandom(range, synced);
        EXPECT(got == expected);
        EXPECT(got < static_cast<unsigned int>(range));
        if (synced) {
            ++syncedCalls;
        } else {
            ++ordinaryCalls;
        }
    }
    EXPECT(Random::s_seed == refSeed);
    EXPECT(Random::s_syncedSeed == refSynced);
    EXPECT(Random::s_debugRandomCounters[0] == ordinaryCalls);
    EXPECT(Random::s_debugRandomCounters[1] == syncedCalls);
    EXPECT(syncedCalls == 667);
    EXPECT(ordinaryCalls == 1333);
}

}  // namespace

int main() {
    TestHandComputed();
    TestRangeZero();
    TestSyncedStream();
    TestWrap();
    TestNegativeRange();
    TestLongSequence();
    if (g_failures == 0) {
        std::printf("Random tests passed\n");
        return 0;
    }
    std::printf("Random tests: %d failure(s)\n", g_failures);
    return 1;
}
