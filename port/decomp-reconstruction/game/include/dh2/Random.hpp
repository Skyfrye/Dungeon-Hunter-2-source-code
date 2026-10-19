// Random: process-wide linear congruential generator with two streams. The ordinary stream
// (s_seed, counter index 0) drives gameplay draws; the synchronized stream (s_syncedSeed) is
// the one multiplayer peers must advance in step. Only static state; no instances exist.
// Reconstructed from libDungeonHunter2.so pseudocode (GetRandom 0x33ff90 and its clones).
// Original storage: three 32-bit globals, no instance size.
#pragma once

#include <cstdint>

class Random {
public:
    // Returns a value in [0, range) taken from the synchronized stream when synced is true, the
    // ordinary stream otherwise. range == 0 leaves the seed unchanged and returns 0.
    // The seed update is (59051 * seed + 177149) mod 0xDAF26B; the result is abs(seed mod range).
    static unsigned int GetRandom(int range, bool synced);          // 0x33ff90 (clones 0x37bc2c, 0x388c58, ...)

    // Ordinary stream seed, assigned from the real-time clock at startup and at Level::Unload.
    static uint32_t s_seed;                                         // Level::m_seed mirrors it at load step 7

    // Synchronized stream seed, set to zero at startup and at Level::Unload.
    static uint32_t s_syncedSeed;                                   // Level::m_syncedSeed mirrors it

    // Debug call counters, one per stream. [0] is incremented by GetRandom(..., false). [1] is
    // incremented by GetRandom(..., true). The symbol is 8 bytes at 0x99F8A4, so [1] is dword_99F8A8 at +4
    // (checked in the synced clone 0x38bc3c, which stores its counter at base+4).
    static int s_debugRandomCounters[2];
};
