// Shared helpers of the Character Lua bindings and the Character skill and stat code (batch
// r2a-game-character-Character-ee9946-8). Free functions with no owner, so they live in <global>.
//   - argument counts and Lua type tags of sfc::script::lua::Arguments (the Value vector, 112 bytes per value in the
//     original, read here through the host std::vector<Value>);
//   - the two ARM float conversions the listings use: __aeabi_f2uiz (unsigned) and __aeabi_f2iz (signed);
//   - the look-frame point of Character::_MoveTo and Character::_WarpTo;
//   - the ASSERT reporting of the Lua callbacks (gAssertLevel, as in the other Character sources).
// Everything is inline and needs only the Lua value headers, Point3D and core-platform's gAssertLevel, so the pure parts
// run without the engine. The names carry a Lua or Character prefix so that they do not clash with the helpers of the
// per-file anonymous namespaces.
#pragma once

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Point3D.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/Value.hpp"

// Lua type tags of sfc::script::lua::Value::m_type (the vendor-lua LUA_T* values the original uses).
inline constexpr int kLuaTagNil = 0;
inline constexpr int kLuaTagBoolean = 1;
inline constexpr int kLuaTagLightUserData = 2;
inline constexpr int kLuaTagNumber = 3;
inline constexpr int kLuaTagUserData = 7;

// The file the original's ASSERT messages of the Lua callbacks name.
inline constexpr char kLuaCallbacksSourceFile[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_LuaCallbacks.cpp";

// The original ASSERT(expr) on its failing branch: gAssertLevel 2 stops the process (the original stores to address 0),
// 1 prints the message and execution goes on, 0 is silent.
inline void LuaReportAssert(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// Number of values in an argument list (the listings' (end - begin) / 112 of the Value vector).
inline std::size_t LuaArgCount(const sfc::script::lua::Arguments& args) { return args.m_values->size(); }

// True when argument index exists and its tag (Value::m_type) is tag.
inline bool LuaArgHasTag(const sfc::script::lua::Arguments& args, std::size_t index, int tag) {
    return LuaArgCount(args) > index && args[static_cast<unsigned int>(index)].m_type == tag;
}

// __aeabi_f2uiz: truncates toward zero. Negative values and NaN give 0, values at or above 2^32 give 0xFFFFFFFF.
inline std::uint32_t LuaFloatToUInt32(float value) {
    if (!(value > 0.0f)) {
        return 0u;
    }
    if (value >= 4294967296.0f) {
        return 0xFFFFFFFFu;
    }
    return static_cast<std::uint32_t>(value);
}

// __aeabi_f2iz: truncates toward zero. NaN gives 0, values outside the int32 range saturate.
inline std::int32_t LuaFloatToInt32(float value) {
    if (value != value) {
        return 0;
    }
    if (value >= 2147483648.0f) {
        return INT32_MAX;
    }
    if (value < -2147483648.0f) {
        return INT32_MIN;
    }
    return static_cast<std::int32_t>(value);
}

// The look-frame point of Character::_MoveTo and Character::_WarpTo, from the listings:
//   result = origin + t * (up x look) + f * look + u * up
// where look is GameObject::GetLookAtVec and up is Vec3f_K (0, 0, 1) in the binary. The cross product is written
// component by component in the listing's order: x = up.Y * look.Z - up.Z * look.Y, y = up.Z * look.X - look.Z * up.X,
// z = look.Y * up.X - up.Y * look.X. Each axis adds the three terms in that order (cross, look, up).
inline Point3D<float> LookFrameOffset(const Point3D<float>& origin, const Point3D<float>& look,
                                      const Point3D<float>& up, float t, float f, float u) {
    Point3D<float> result = origin;
    result.X = result.X + t * ((up.Y * look.Z) - (up.Z * look.Y));
    result.Y = result.Y + t * ((up.Z * look.X) - (look.Z * up.X));
    result.Z = result.Z + t * ((look.Y * up.X) - (up.Y * look.X));
    result.X = result.X + f * look.X;
    result.Y = result.Y + f * look.Y;
    result.Z = result.Z + f * look.Z;
    result.X = result.X + u * up.X;
    result.Y = result.Y + u * up.Y;
    result.Z = result.Z + u * up.Z;
    return result;
}
