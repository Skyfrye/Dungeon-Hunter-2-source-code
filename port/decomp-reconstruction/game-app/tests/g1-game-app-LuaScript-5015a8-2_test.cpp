// Tests for the value rules in luascript_g1 (src/g1-game-app-LuaScript-5015a8-2.cpp). The declarations below must
// match that file. Run: bash tools/trackb/check_tu.sh --test <this file> <src/g1-game-app-LuaScript-5015a8-2.cpp>
#include <cmath>
#include <cstddef>
#include <cstdio>
#include <optional>
#include <utility>
#include <vector>

#include "luascript_link_stubs.hpp"  // sfc, Application, ScriptManager and pydata symbols the bindings in the source reference

namespace luascript_g1 {
int FloatToInt32(float value);
unsigned FloatToUInt32(float value);
struct FixedParts {
    int integer;
    float scaled;
};
FixedParts SplitFixed(float value);
int BitXOr(float first, float second);
int BitNot(float first);
int LevelRangeSelector(bool firstIsNumber, float firstValue);
std::optional<std::pair<int, int>> LevelRangeFor(int selector, int w12, int w13, int w14, int w15, int w16, int w17);
std::vector<std::size_t> SelectTypeMatches(const std::vector<bool>& matches, unsigned skip);
bool IsValidGameType(unsigned value);
}  // namespace luascript_g1

static int g_failures = 0;

#define CHECK(cond)                                                                 \
    do {                                                                            \
        if (!(cond)) {                                                              \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);    \
            ++g_failures;                                                           \
        }                                                                           \
    } while (0)

static void TestFloatConversions() {
    using namespace luascript_g1;
    CHECK(FloatToInt32(3.7f) == 3);
    CHECK(FloatToInt32(-3.7f) == -3);
    CHECK(FloatToInt32(0.0f) == 0);
    CHECK(FloatToInt32(1e10f) == 2147483647);
    CHECK(FloatToInt32(-1e10f) == (-2147483647 - 1));
    CHECK(FloatToInt32(std::nanf("")) == 0);

    CHECK(FloatToUInt32(3.9f) == 3u);
    CHECK(FloatToUInt32(-5.0f) == 0u);
    CHECK(FloatToUInt32(-0.5f) == 0u);
    CHECK(FloatToUInt32(5e9f) == 0xFFFFFFFFu);
    CHECK(FloatToUInt32(std::nanf("")) == 0u);
}

static void TestSplitFixed() {
    using namespace luascript_g1;
    // The scale is exactly 2^-8 (asm multiplier 0x3B800000), so every expected scaled value below is exact.
    FixedParts zero = SplitFixed(0.0f);
    CHECK(zero.integer == 0);
    CHECK(zero.scaled == 0.0f);

    // 512 >> 8 == 2; 512 * 2^-8 == 2.0 exactly.
    FixedParts two = SplitFixed(512.0f);
    CHECK(two.integer == 2);
    CHECK(two.scaled == 2.0f);

    // 256 >> 8 == 1; 256 * 2^-8 == 1.0 exactly.
    FixedParts one = SplitFixed(256.0f);
    CHECK(one.integer == 1);
    CHECK(one.scaled == 1.0f);

    // 300 >> 8 == 1; 300 * 2^-8 == 1.171875 exactly.
    FixedParts frac = SplitFixed(300.0f);
    CHECK(frac.integer == 1);
    CHECK(frac.scaled == 1.171875f);

    // 1000.7 truncates to 1000; 1000 >> 8 == 3; 1000 * 2^-8 == 3.90625 exactly.
    FixedParts mixed = SplitFixed(1000.7f);
    CHECK(mixed.integer == 3);
    CHECK(mixed.scaled == 3.90625f);

    // Arithmetic shift on negatives: -256 >> 8 == -1; -256 * 2^-8 == -1.0 exactly.
    FixedParts neg = SplitFixed(-256.0f);
    CHECK(neg.integer == -1);
    CHECK(neg.scaled == -1.0f);
}

static void TestBitOps() {
    using namespace luascript_g1;
    CHECK(BitXOr(12.0f, 10.0f) == 6);       // 0b1100 ^ 0b1010
    CHECK(BitXOr(-1.0f, 0.0f) == -1);
    CHECK(BitXOr(3.9f, 1.1f) == 2);         // (int)3.9 == 3, (int)1.1 == 1, 3 ^ 1 == 2
    CHECK(BitXOr(7.0f, 7.0f) == 0);

    CHECK(BitNot(0.0f) == -1);
    CHECK(BitNot(5.5f) == -6);              // ~5
    CHECK(BitNot(-1.0f) == 0);
}

static void TestLevelRanges() {
    using namespace luascript_g1;
    // Row fields m_w12..m_w17 of Structs::LevelDeclaration (+0x30..+0x44), passed as plain ints.
    constexpr int w12 = 12, w13 = 13, w14 = 14, w15 = 15, w16 = 16, w17 = 17;

    CHECK(LevelRangeSelector(false, 2.0f) == 0);   // not a number: default selector
    CHECK(LevelRangeSelector(true, 2.9f) == 2);
    CHECK(LevelRangeSelector(true, -1.0f) == -1);

    auto p1 = LevelRangeFor(1, w12, w13, w14, w15, w16, w17);
    CHECK(p1.has_value() && p1->first == 16 && p1->second == 13);
    auto p2 = LevelRangeFor(2, w12, w13, w14, w15, w16, w17);
    CHECK(p2.has_value() && p2->first == 17 && p2->second == 14);
    auto p0 = LevelRangeFor(0, w12, w13, w14, w15, w16, w17);
    CHECK(p0.has_value() && p0->first == 15 && p0->second == 12);

    // Other selectors push nothing.
    CHECK(!LevelRangeFor(3, w12, w13, w14, w15, w16, w17).has_value());
    CHECK(!LevelRangeFor(-1, w12, w13, w14, w15, w16, w17).has_value());
}

static void TestTypeMatchWindow() {
    using namespace luascript_g1;

    // 20 matches, no skip: the first 15 are picked.
    std::vector<bool> all20(20, true);
    auto first15 = SelectTypeMatches(all20, 0);
    CHECK(first15.size() == 15);
    CHECK(!first15.empty() && first15.front() == 0 && first15.back() == 14);

    // Skip 3: the first three matches are passed over, then 15 are picked (indices 3..17).
    auto skip3 = SelectTypeMatches(all20, 3);
    CHECK(skip3.size() == 15);
    CHECK(!skip3.empty() && skip3.front() == 3 && skip3.back() == 17);

    // Non-matching objects are not counted for skip or the limit.
    std::vector<bool> mixed{false, true, true, false, true};
    auto picked = SelectTypeMatches(mixed, 1);  // first match (index 1) skipped, then indices 2 and 4
    CHECK(picked.size() == 2 && picked[0] == 2 && picked[1] == 4);

    // Fewer matches than the skip: nothing is picked.
    CHECK(SelectTypeMatches(std::vector<bool>{true, true}, 5).empty());

    // Fewer than 15 matches with no skip: all of them.
    auto five = SelectTypeMatches(std::vector<bool>(5, true), 0);
    CHECK(five.size() == 5);
}

static void TestGameType() {
    using namespace luascript_g1;
    CHECK(IsValidGameType(0));
    CHECK(IsValidGameType(3));
    CHECK(!IsValidGameType(4));
    CHECK(!IsValidGameType(0xFFFFFFFFu));
}

int main() {
    TestFloatConversions();
    TestSplitFixed();
    TestBitOps();
    TestLevelRanges();
    TestTypeMatchWindow();
    TestGameType();
    if (g_failures == 0) std::printf("g1-game-app-LuaScript-5015a8-2 tests: all passed\n");
    return g_failures == 0 ? 0 : 1;
}
