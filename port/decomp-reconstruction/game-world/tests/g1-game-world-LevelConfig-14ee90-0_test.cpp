// Test for batch g1-game-world-LevelConfig-14ee90-0.
//
// The original DeclareProperties passes its float defaults as integer bit patterns (1132396544, 1065353216,
// -915135488, 1128792064, 1120403456), and the reconstruction writes them as float literals. This test checks that each
// bit pattern is the literal the source uses, and that Point3D<float> takes the three values in order.
//
// Nothing else is linked: LevelConfig needs ObjectBase, PropertyMap, Level, DebugSwitches and the application singleton,
// which a standalone test cannot construct. The InitPost and DeclareProperties bodies are checked by review and the
// ledger notes, not here.

#include <cstdint>
#include <cstdio>
#include <cstring>

#include "dh2/Point3D.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Reinterprets a 32-bit pattern as the float it encodes, the way the original's integer argument does.
float FloatFromBits(std::uint32_t bits) {
    float value;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

}  // namespace

int main() {
    // DeclareProperties: ambientColor, fog_color (255.0f), fog_direction_mask (z = 1.0f).
    EXPECT(FloatFromBits(1132396544u) == 255.0f);
    EXPECT(FloatFromBits(1065353216u) == 1.0f);
    // DeclareProperties: sun_position, the int -915135488 in the pseudocode (-1000000.0f).
    EXPECT(static_cast<std::uint32_t>(static_cast<std::int32_t>(-915135488)) == 0xC9742400u);
    EXPECT(FloatFromBits(0xC9742400u) == -1000000.0f);
    // DeclareProperties: dfog_change_min_dist (200.0f) and dfog_blend_dist (100.0f).
    EXPECT(FloatFromBits(1128792064u) == 200.0f);
    EXPECT(FloatFromBits(1120403456u) == 100.0f);
    // The zero defaults (clear_color, shadow_color, shadow_opacity) are the zero bit pattern.
    EXPECT(FloatFromBits(0u) == 0.0f);

    // The Point3D literals in the source take the components in X, Y, Z order.
    const Point3D<float> sun{-1000000.0f, -1000000.0f, -1000000.0f};
    EXPECT(sun.X == FloatFromBits(0xC9742400u) && sun.Y == sun.X && sun.Z == sun.X);
    const Point3D<float> fogDirection{0.0f, 0.0f, 1.0f};
    EXPECT(fogDirection.X == 0.0f && fogDirection.Y == 0.0f && fogDirection.Z == FloatFromBits(1065353216u));

    if (g_failures == 0) {
        std::printf("LevelConfig test: all checks passed\n");
        return 0;
    }
    std::printf("LevelConfig test: %d failure(s)\n", g_failures);
    return 1;
}
