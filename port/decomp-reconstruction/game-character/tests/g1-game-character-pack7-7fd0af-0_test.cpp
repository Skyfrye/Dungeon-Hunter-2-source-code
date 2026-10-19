// Test for batch g1-game-character-pack7-7fd0af-0.
//
// The batch bodies (CSScared and CSSkill) run through Character, CharStateMachine, Random, DebugSwitches and the pydata
// constants, none of which link standalone, so this test does not include the batch source. It checks the arithmetic the
// batch's random head-towards offset relies on: the two float constants named by their bit patterns in libDungeonHunter2.so
// (0x38D1B717 is 1.0e-4f, 0x3951B717 is 2.0e-4f), and the claim that a draw in [0, 9998) maps to an offset in (0, 1].
// Returns non-zero on failure.

#include <cstdint>
#include <cstdio>
#include <cstring>

namespace {

float FloatFromBits(std::uint32_t bits) {
    float value = 0.0f;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

int g_failures = 0;

void Check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    constexpr float kDrawScale = 1.0e-4f;
    constexpr float kDrawBias = 2.0e-4f;
    constexpr int kDrawRange = 9998;

    // The bit patterns decode to the constants the batch uses.
    Check(FloatFromBits(0x38D1B717u) == kDrawScale, "0x38D1B717 decodes to 1.0e-4f");
    Check(FloatFromBits(0x3951B717u) == kDrawBias, "0x3951B717 decodes to 2.0e-4f");

    // A draw of 0 gives a small positive offset, never zero.
    const float smallest = 0.0f * kDrawScale + kDrawBias;
    Check(smallest > 0.0f, "draw 0 gives a positive offset");

    // The largest draw (9997) stays at or below 1.0.
    const float largest = static_cast<float>(kDrawRange - 1) * kDrawScale + kDrawBias;
    Check(largest <= 1.0f + 1.0e-6f, "draw 9997 stays at or below 1.0");
    Check(largest > 0.99f, "draw 9997 is close to 1.0");

    // The sign draw negates when it is at most 49 of a range of 100, so 50 of the 100 values negate.
    int negating = 0;
    for (int draw = 0; draw < 100; ++draw) {
        if (draw <= 49) {
            ++negating;
        }
    }
    Check(negating == 50, "sign draw negates on 50 of 100 values");

    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-character-pack7-7fd0af-0 test: all checks passed\n");
    return 0;
}
