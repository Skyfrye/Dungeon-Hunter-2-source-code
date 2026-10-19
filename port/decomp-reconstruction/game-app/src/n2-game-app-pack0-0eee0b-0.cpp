// Batch n2-game-app-pack0-0eee0b-0 (lib-lua | sfc::script::lua, part 1 of 1): the three non-class functions of the Lua
// wrapper. LuaAllocator is the lua_Alloc hook (its declaration is in dh2/global/runtime_support.hpp); newstate creates
// the state the default Instance owns, and panic is its panic handler (both declared in dh2/sfc/script/lua/Instance.hpp).
#include <cstring>

#include "dh2/global/runtime_support.hpp"
#include "dh2/sfc/script/lua/Instance.hpp"

extern "C" {
#include "lua.h"
#include "lauxlib.h"
}

// 0x310500 LuaAllocator(void*, void*, unsigned int, unsigned int): the lua_Alloc hook. A zero new size frees the block
// and returns null. A block that does not grow is kept in place. A growing block is moved, copying the old size.
// Sizes are 32-bit as in the original's symbol, so the signature matches it.
void* LuaAllocator(void* ud, void* ptr, unsigned int osize, unsigned int nsize) {
    (void)ud;
    if (nsize == 0) {
        LuaFree(ptr);
        return nullptr;
    }
    if (ptr != nullptr) {
        if (nsize <= osize) {
            return ptr;
        }
        void* block = LuaAlloc(nsize);
        std::memcpy(block, ptr, osize);
        LuaFree(ptr);
        return block;
    }
    return LuaAlloc(nsize);
}

namespace sfc {
namespace script {
namespace lua {

// 0x31a9e8 sfc::script::lua::panic(lua_State*): the panic handler; returns 0.
int panic(lua_State* /*state*/) {
    return 0;
}

// 0x31b224 sfc::script::lua::newstate(): lua_newstate with LuaAllocator, then the panic handler when the state exists.
lua_State* newstate() {
    lua_State* state = lua_newstate(reinterpret_cast<lua_Alloc>(&LuaAllocator), nullptr);
    if (state != nullptr) {
        lua_atpanic(state, panic);
    }
    return state;
}

}  // namespace lua
}  // namespace script
}  // namespace sfc
