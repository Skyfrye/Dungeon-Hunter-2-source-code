// Batch n2-game-app-sfc_script_lua_Error-3e7271-0 (sfc::script::lua::Error, part 1 of 1).
// The outcome of one Lua load, call or pCall: the status and, when it is not zero, the message left on the Lua stack.
// The copy constructor copies both members; setError takes the message from the top of the stack and pops it.
#include "dh2/sfc/script/lua/Error.hpp"

#include <string>

extern "C" {
#include "lua.h"
#include "lauxlib.h"
}

namespace sfc {
namespace script {
namespace lua {

// 0x31a68c sfc::script::lua::Error::~Error() (D1, complete object), 0x31a6c0 (D2, base object): the original body
// releases the message string (its members are destroyed here by the compiler). Nothing else is done.
Error::~Error() {}

// 0x31a6f4 sfc::script::lua::Error::~Error() (D0, deleting destructor): compiler-generated (D1, then CustomFree).

// 0x31a714 sfc::script::lua::Error::Error(sfc::script::lua::Error const&) (C1), 0x31a78c (C2): copies the status and the
// message.
Error::Error(const Error& other) : m_status(other.m_status), m_message(other.m_message) {}

// 0x31a804 sfc::script::lua::Error::Error() (C1), 0x31a858 (C2): status 0, empty message.
Error::Error() : m_status(0) {}

// 0x31a8ac sfc::script::lua::Error::setError(lua_State*, int): stores the status. A zero status clears the message.
// Otherwise the message is the string on top of the stack, which is popped. A value that is not a string leaves the
// message empty here (the original would read a null pointer).
void Error::setError(lua_State* state, int status) {
    m_status = status;
    if (status == 0) {
        m_message.assign("");
        return;
    }
    const char* text = lua_tolstring(state, -1, nullptr);
    m_message.assign(text != nullptr ? text : "");
    lua_settop(state, -2);
}

// 0x31a918 sfc::script::lua::Error::Error(lua_State*, int) (C1), 0x31a980 (C2): an empty message, then setError.
Error::Error(lua_State* state, int status) : m_status(0) {
    setError(state, status);
}

}  // namespace lua
}  // namespace script
}  // namespace sfc
