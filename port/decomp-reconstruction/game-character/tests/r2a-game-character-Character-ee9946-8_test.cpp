// Tests of the pure helpers of dh2/global/character_lua_bindings.hpp, used by the Character Lua bindings of batch
// r2a-game-character-Character-ee9946-8: the ARM float conversions and the look-frame point of _MoveTo and _WarpTo.
// The Lua argument helpers need a live sfc::script::lua::Arguments and are not covered here.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <limits>

#include "dh2/global/character_lua_bindings.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

bool NearlyEqual(float a, float b) { return std::fabs(a - b) < 1e-5f; }

bool SamePoint(const Point3D<float>& p, float x, float y, float z) {
    return NearlyEqual(p.X, x) && NearlyEqual(p.Y, y) && NearlyEqual(p.Z, z);
}

}  // namespace

int main() {
    // __aeabi_f2uiz: truncation, negatives and NaN to 0, saturation at 2^32.
    Check(LuaFloatToUInt32(3.9f) == 3u, "f2uiz truncates");
    Check(LuaFloatToUInt32(0.0f) == 0u, "f2uiz zero");
    Check(LuaFloatToUInt32(-5.0f) == 0u, "f2uiz clamps negatives to 0");
    Check(LuaFloatToUInt32(std::numeric_limits<float>::quiet_NaN()) == 0u, "f2uiz NaN gives 0");
    Check(LuaFloatToUInt32(1.0e20f) == 0xFFFFFFFFu, "f2uiz saturates high");
    Check(LuaFloatToUInt32(2147483648.0f) == 2147483648u, "f2uiz keeps 2^31");

    // __aeabi_f2iz: truncation toward zero, NaN to 0, saturation at both ends.
    Check(LuaFloatToInt32(-3.9f) == -3, "f2iz truncates toward zero");
    Check(LuaFloatToInt32(7.0f) == 7, "f2iz positive");
    Check(LuaFloatToInt32(3.0e10f) == INT32_MAX, "f2iz saturates high");
    Check(LuaFloatToInt32(-3.0e10f) == INT32_MIN, "f2iz saturates low");
    Check(LuaFloatToInt32(std::numeric_limits<float>::quiet_NaN()) == 0, "f2iz NaN gives 0");

    // LookFrameOffset: origin + t * (up x look) + f * look + u * up, with up = (0, 0, 1).
    const Point3D<float> up{0.0f, 0.0f, 1.0f};
    const Point3D<float> origin{10.0f, 20.0f, 30.0f};
    const Point3D<float> lookX{1.0f, 0.0f, 0.0f};
    const Point3D<float> lookY{0.0f, 1.0f, 0.0f};
    const Point3D<float> zero{0.0f, 0.0f, 0.0f};

    // up x (+X) = (0, 1, 0), so t = 2 adds (0, 2, 0); f = 3 adds (3, 0, 0); u = 4 adds (0, 0, 4).
    Check(SamePoint(LookFrameOffset(origin, lookX, up, 2.0f, 3.0f, 4.0f), 13.0f, 22.0f, 34.0f),
          "look frame with look +X");
    // up x (+Y) = (-1, 0, 0).
    Check(SamePoint(LookFrameOffset(zero, lookY, up, 1.0f, 0.0f, 0.0f), -1.0f, 0.0f, 0.0f),
          "up cross look for look +Y");
    // With every coefficient zero the origin is returned unchanged.
    Check(SamePoint(LookFrameOffset(origin, lookY, up, 0.0f, 0.0f, 0.0f), 10.0f, 20.0f, 30.0f),
          "zero coefficients keep the origin");

    if (g_failures == 0) {
        std::printf("r2a-game-character-Character-ee9946-8 helpers: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
