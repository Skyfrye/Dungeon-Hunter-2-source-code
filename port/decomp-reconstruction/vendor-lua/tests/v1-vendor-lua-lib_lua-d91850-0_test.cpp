// Test for batch v1-vendor-lua-lib_lua-d91850-0: the lrand48 sequence and math_random.
// Lua is not linked. The lua_* and luaL_* calls that math_random makes are stubbed here and record
// their arguments. The reference draws are the POSIX drand48 values (hand-checked against the formula).
#include <cstdio>
#include <cstring>

#include "vendor-lua/dh2_rand48.hpp"

extern "C" {
#include "lua.h"
#include "lauxlib.h"
}

extern "C" int math_random(lua_State *L);

namespace {

int g_nargs = 0;
lua_Integer g_args[2] = {0, 0};
int g_pushes = 0;
lua_Number g_pushed = 0;
int g_argerror_narg = -1;
const char *g_argerror_msg = nullptr;
int g_error_calls = 0;
const char *g_error_fmt = nullptr;
int g_failures = 0;

#define CHECK(cond)                                              \
    do {                                                         \
        if (!(cond)) {                                           \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);  \
            ++g_failures;                                        \
        }                                                        \
    } while (0)

void reset(int nargs, lua_Integer a = 0, lua_Integer b = 0) {
    g_nargs = nargs;
    g_args[0] = a;
    g_args[1] = b;
    g_pushes = 0;
    g_pushed = 0;
    g_argerror_narg = -1;
    g_argerror_msg = nullptr;
    g_error_calls = 0;
    g_error_fmt = nullptr;
}

}  // namespace

extern "C" {

int lua_gettop(lua_State *) { return g_nargs; }

lua_Integer luaL_checkinteger(lua_State *, int narg) { return g_args[narg - 1]; }

void lua_pushnumber(lua_State *, lua_Number n) {
    g_pushed = n;
    ++g_pushes;
}

int luaL_argerror(lua_State *, int narg, const char *extramsg) {
    g_argerror_narg = narg;
    g_argerror_msg = extramsg;
    return 0;
}

int luaL_error(lua_State *, const char *fmt, ...) {
    ++g_error_calls;
    g_error_fmt = fmt;
    return 0;
}

}  // extern "C"

int main() {
    // Generator: the POSIX default state, then srand48(1).
    const long default_draws[4] = {0x32bf5b92L, 0x6b95064bL, 0x2d3a1e03L, 0x3929a55fL};
    for (long want : default_draws) CHECK(dh2::rand48_next() == want);

    dh2::rand48_seed(1);
    const long seed1_draws[4] = {0x55424a4L, 0x3a2ccef5L, 0x6adb4a65L, 0x2b019719L};
    for (long want : seed1_draws) CHECK(dh2::rand48_next() == want);

    // math_random with no arguments: the float r = (float)(draw % 0x7FFFFFFF) * 2^-31.
    dh2::rand48_seed(1);
    reset(0);
    CHECK(math_random(nullptr) == 1);
    CHECK(g_pushes == 1);
    CHECK(g_pushed == static_cast<float>(89400484L % 0x7FFFFFFFL) * 0x1p-31f);
    CHECK(g_pushed > 0.0416f && g_pushed < 0.0417f);

    // One argument, floor(r * u) + 1: draw 1 has r ~ 0.0416, so 1; draw 2 has r ~ 0.4545, so 5.
    dh2::rand48_seed(1);
    reset(1, 10);
    CHECK(math_random(nullptr) == 1);
    CHECK(g_pushed == 1.0f);
    reset(1, 10);
    CHECK(math_random(nullptr) == 1);
    CHECK(g_pushed == 5.0f);

    // Two arguments, floor(r * (u - l + 1)) + l: draw 3 has r ~ 0.8348, so random(5, 7) is floor(2.50) + 5 = 7.
    // Draw 4 has r ~ 0.3360, so random(1, 3) is floor(1.008) + 1 = 2.
    reset(2, 5, 7);
    CHECK(math_random(nullptr) == 1);
    CHECK(g_pushed == 7.0f);
    reset(2, 1, 3);
    CHECK(math_random(nullptr) == 1);
    CHECK(g_pushed == 2.0f);

    // Argument errors name the argument and the upstream message.
    dh2::rand48_seed(1);
    reset(1, 0);
    math_random(nullptr);
    CHECK(g_argerror_narg == 1);
    CHECK(g_argerror_msg != nullptr && std::strcmp(g_argerror_msg, "interval is empty") == 0);

    reset(2, 8, 3);
    math_random(nullptr);
    CHECK(g_argerror_narg == 2);
    CHECK(g_argerror_msg != nullptr && std::strcmp(g_argerror_msg, "interval is empty") == 0);

    reset(3, 1, 2);
    CHECK(math_random(nullptr) == 0);
    CHECK(g_error_calls == 1);
    CHECK(g_error_fmt != nullptr && std::strcmp(g_error_fmt, "wrong number of arguments") == 0);

    // Every draw maps into [0, 1), and each call takes exactly one draw.
    dh2::rand48_seed(12345);
    bool in_range = true;
    for (int i = 0; i < 1000; ++i) {
        reset(0);
        math_random(nullptr);
        if (!(g_pushed >= 0.0f && g_pushed < 1.0f)) in_range = false;
    }
    CHECK(in_range);
    // The first call after srand48(12345) uses the first draw of that seed.
    dh2::rand48_seed(12345);
    const float expected_first = static_cast<float>(dh2::rand48_next() % 0x7FFFFFFFL) * 0x1p-31f;
    dh2::rand48_seed(12345);
    reset(0);
    math_random(nullptr);
    CHECK(g_pushed == expected_first);

    if (g_failures == 0) std::printf("v1-vendor-lua-lib_lua-d91850-0 tests passed\n");
    return g_failures == 0 ? 0 : 1;
}
