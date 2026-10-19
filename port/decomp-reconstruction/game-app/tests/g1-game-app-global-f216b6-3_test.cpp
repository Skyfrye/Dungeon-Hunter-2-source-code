// Test for batch g1-game-app-global-f216b6-3. Covers the pure arithmetic of the combat rolls (the sign-extend and
// shift helpers, the status-effect and slow tests, the level-scaled percentage) and the sizes of the result
// structs. The engine functions (property reads, rolls, singletons) are not linked here. Exit status 0 means
// every check passed.
#include <cstdio>

#include "dh2/global/cf_calc.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

void TestSignExtend24() {
    Check(cf_calc::SignExtend24(0x00800000) == -8388608, "SignExtend24 of 0x800000 is -0x800000");
    Check(cf_calc::SignExtend24(0x007fffff) == 8388607, "SignExtend24 of 0x7fffff is 0x7fffff");
    Check(cf_calc::SignExtend24(0x12345678) == 0x345678, "SignExtend24 keeps only the low 24 bits");
    Check(cf_calc::SignExtend24(-1) == -1, "SignExtend24 of -1 is -1");
}

void TestShlSar() {
    Check(cf_calc::ShlSar(3, 9, 8) == 6, "ShlSar(3, 9, 8) is 6 (x << 9 >> 8 doubles)");
    Check(cf_calc::ShlSar(-1, 9, 8) == -2, "ShlSar(-1, 9, 8) is -2 (arithmetic shift)");
    Check(cf_calc::ShlSar(5, 8, 8) == 5, "ShlSar(5, 8, 8) is 5");
}

void TestStatusEffect() {
    // 5 * 4 - 8 = 12; 12 + 10 - 5 * 2 = 12
    Check(cf_calc::StatusEffectPasses(10, 4, 8, 2, 0), "status effect passes when 12 > 0");
    Check(!cf_calc::StatusEffectPasses(10, 4, 8, 2, 12), "status effect fails when 12 is not above 12");
    Check(!cf_calc::StatusEffectPasses(10, 4, 8, 2, 20), "status effect fails above the value");
}

void TestSlowEffect() {
    // (int)(100 + 8 / 8) = 101; 101 - 20 = 81; (int)(81 - 8 / 8) = 80
    Check(cf_calc::SlowEffectPasses(100, 8, 20, 8, 50), "slow effect passes when 80 > 50");
    Check(!cf_calc::SlowEffectPasses(100, 8, 20, 8, 80), "slow effect fails when 80 is not above 80");
}

void TestLevelScaledPercent() {
    const float cap = 5.0f;
    Check(cf_calc::LevelScaledPercent(0, cap, 2.0f, 1.0f, 50.0f, 200.0f) == 100.0f,
          "equal levels give 100 percent");
    Check(cf_calc::LevelScaledPercent(3, cap, 2.0f, 1.0f, 50.0f, 200.0f) == 106.0f,
          "three levels above use the positive slope");
    Check(cf_calc::LevelScaledPercent(-2, cap, 2.0f, 1.0f, 50.0f, 200.0f) == 98.0f,
          "two levels below use the negative slope");
    Check(cf_calc::LevelScaledPercent(10, cap, 2.0f, 1.0f, 50.0f, 200.0f) == 110.0f,
          "level difference is capped before the slope");
    Check(cf_calc::LevelScaledPercent(0, cap, 2.0f, 1.0f, 120.0f, 115.0f) == 115.0f,
          "lower bound is applied, then the upper bound");
    Check(cf_calc::LevelScaledPercent(0, cap, 2.0f, 1.0f, 120.0f, 200.0f) == 120.0f,
          "lower bound raises a result below it");
}

void TestResultLayouts() {
    // Three and seven int32 in the original (12 and 28 bytes), two bytes for the packed miss/dodge word.
    Check(sizeof(DotDamage) == 3 * sizeof(std::int32_t), "DotDamage is three int32");
    Check(sizeof(CombatDamage) == 7 * sizeof(std::int32_t), "CombatDamage is seven int32");
    Check(sizeof(MissOrDodgeResult) == 2, "MissOrDodgeResult is two bytes");
}

}  // namespace

int main() {
    TestSignExtend24();
    TestShlSar();
    TestStatusEffect();
    TestSlowEffect();
    TestLevelScaledPercent();
    TestResultLayouts();
    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-3 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-global-f216b6-3 test: %d failure(s)\n", g_failures);
    return 1;
}
