// Batch v1-vendor-lua-lib_lua-d91850-0: category vendor-lua, owner lib-lua (Lua 5.1.4, DH2 float lua_Number).
//
// Seventeen of the batch's eighteen functions are upstream Lua 5.1.4 code that the DH2 binary matches.
// They have no body here; their ledger rows point at the upstream source
// (vendor-lua/upstream/lua-5.1.4/src):
//   0x84be2c f_call            ldo.c       0x84c080 lua_setfield      lapi.c
//   0x84cbd0 luaL_addlstring   lauxlib.c   0x84dbfc luaopen_base      lbaselib.c
//   0x850650 luaG_runerror     ldebug.c    0x85228c DumpFunction      ldump.c
//   0x852ce8 luaC_barrierback  lgc.c       0x854854 luaO_log2         lobject.c
//   0x8559dc body              lparser.c   0x856b10 chunk             lparser.c
//   0x857820 luaY_parser       lparser.c   0x857c48 callallgcTM       lstate.c
//   0x8598a0 addintlen         lstrlib.c   0x85bc00 luaT_init         ltm.c
//   0x85bc64 luaU_header       lundump.c   0x85e8c0 luaK_codeABC      lcode.c
//   0x85f904 luaK_prefix       lcode.c
//
// math_random differs from upstream (rand() and a double ratio in lmathlib.c). It is rebuilt below, and
// the upstream definition in lmathlib.c is wrapped in #if 0.

#include <cmath>
#include <cstdarg>
#include <cstddef>

#include "vendor-lua/dh2_rand48.hpp"

extern "C" {
#include "lua.h"
#include "lauxlib.h"
}

namespace {

// The binary scales (float)(lrand48() % 0x7FFFFFFF) by the float constant 0x30000000, which is 2^-31.
constexpr float kDrawScale = 0x1p-31f;

// One lrand48 draw as a float in [0, 1).
float unit_from_draw(long draw) {
    return static_cast<float>(draw % 0x7FFFFFFFL) * kDrawScale;
}

// math.random(u): floor(r * u) + 1. The float product goes to double for floor, and the sum is rounded to float.
float random_upto(float r, int u) {
    const float scaled = static_cast<float>(u) * r;
    return static_cast<float>(std::floor(static_cast<double>(scaled)) + 1.0);
}

// math.random(l, u): floor(r * (u - l + 1)) + l. The subtraction wraps as the 32-bit int does in the binary.
float random_between(float r, int l, int u) {
    const int width = static_cast<int>(static_cast<unsigned int>(u) + 1u - static_cast<unsigned int>(l));
    const float scaled = static_cast<float>(width) * r;
    return static_cast<float>(std::floor(static_cast<double>(scaled)) + static_cast<double>(l));
}

}  // namespace

// 0x854180 math_random
// Replaces the upstream rand() version in lmathlib.c. Like the binary, it draws from lrand48 before it reads
// the argument count: 0 arguments push r, 1 argument is an upper bound, 2 arguments are a range, and any other
// count raises "wrong number of arguments". Each call takes exactly one draw.
extern "C" int math_random(lua_State *L) {
    const float r = unit_from_draw(dh2::rand48_next());
    const int nargs = lua_gettop(L);
    if (nargs == 1) {
        const int u = luaL_checkint(L, 1);
        if (u <= 0) luaL_argerror(L, 1, "interval is empty");
        lua_pushnumber(L, random_upto(r, u));
        return 1;
    }
    if (nargs == 2) {
        const int l = luaL_checkint(L, 1);
        const int u = luaL_checkint(L, 2);
        if (l > u) luaL_argerror(L, 2, "interval is empty");
        lua_pushnumber(L, random_between(r, l, u));
        return 1;
    }
    if (nargs == 0) {
        lua_pushnumber(L, r);
        return 1;
    }
    return luaL_error(L, "wrong number of arguments");
}
