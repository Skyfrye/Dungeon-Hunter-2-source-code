// Random::GetRandom(int, bool) and its compiler clones (batch g1-game-app-Random-58d888-0).
//
// One generator step serves both streams: seed' = (59051 * seed + 177149) mod 0xDAF26B, on 32-bit unsigned
// integers, so the product and the sum wrap as they do on ARM. The stream is s_seed when synced is false and
// s_syncedSeed when it is true. A non-zero range returns abs32(seed' mod range). Range 0 returns 0 and leaves
// the seed unchanged. Either way the stream's debug counter goes up by one: [0] for the ordinary stream, [1]
// (dword_99F8A8 in the original) for the synchronized one.
//
// Clones. GCC specialised the function on constant arguments. Each clone has the same body with the constant
// folded in, so the one definition below serves all of them. The ledger rows for the clones name this file.
//   0x37bc2c .clone.1, 0x388c58 .clone.3, 0x38e578 .clone.1, 0x3af6d8 .clone.1, 0x3c26a0 .clone.1,
//   0x3ca708 .clone.1, 0x3e8dac .clone.1, 0x3ec5d4 .clone.17, 0x401afc .clone.1, 0x493780 .clone.1:
//       GetRandom(range, false). The range is the first argument (r0), the synced flag is folded to false.
//       The 0x3af6d8 clone is among the callees of LuaScript::_Rand and LuaScript::_RandF (asm xrefs).
//   0x38bc3c .clone.2: GetRandom(99, synced). The range is the constant 0x63 (asm MOV R1,#0x63). The synced
//       flag arrives in r0 and selects the stream and its counter, as in the canonical body.

#include "dh2/Random.hpp"

#include <cstdint>

// Storage of the original's globals (ELF .bss, Random's own symbols). s_seed is at 0x99f89c, s_syncedSeed at
// 0x99f8a0 and s_debugRandomCounters at 0x99f8a4 (8 bytes: [0] at 0x99f8a4, [1] at 0x99f8a8 = dword_99F8A8).
// Both seeds start at zero here. GSInit sets s_seed from the clock and sets s_syncedSeed to zero.
uint32_t Random::s_seed = 0;
uint32_t Random::s_syncedSeed = 0;
int Random::s_debugRandomCounters[2] = {0, 0};

namespace {

// seed' = (59051 * seed + 177149) mod 0xDAF26B. The unsigned 32-bit product and sum wrap as they do on ARM.
uint32_t NextSeed(uint32_t seed) {
    return (59051u * seed + 177149u) % 0xDAF26Bu;
}

// abs32 of the pseudocode: the value read as a signed 32-bit integer, made non-negative.
uint32_t Abs32(uint32_t value) {
    return static_cast<int32_t>(value) < 0 ? 0u - value : value;
}

}  // namespace

// 0x33ff90 Random::GetRandom(int,bool)
// The pseudocode's third parameter (a3) is never read. The clones are listed in the file comment above.
unsigned int Random::GetRandom(int range, bool synced) {
    uint32_t& seed = synced ? s_syncedSeed : s_seed;
    unsigned int result = 0;
    if (range != 0) {
        seed = NextSeed(seed);
        // The original takes the modulus on unsigned values, so a negative range is read as a large unsigned one.
        result = Abs32(seed % static_cast<uint32_t>(range));
    }
    int& counter = synced ? s_debugRandomCounters[1] : s_debugRandomCounters[0];
    ++counter;
    return result;
}
