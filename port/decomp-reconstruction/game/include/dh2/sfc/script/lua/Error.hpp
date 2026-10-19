// sfc::script::lua::Error: the outcome of a Lua load, call or pCall. It holds the status code that Lua
// returned and, when that is not zero, the error message left on top of the Lua stack. ReturnValues embeds one
// at its +0x04 (Instance::pCall_ reads the status at ReturnValues +0x08 to decide whether to collect results).
// Original 32-bit size 0x20 (32): vptr, status, and a 24-byte STLport string from +0x08 whose data pointers sit at
// +0x18 and +0x1c. ReturnValues.hpp embeds it in those 0x20 bytes at its +0x04.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x31a804 / 0x31a918, copy ctor 0x31a714, setError 0x31a8ac).
#pragma once

#include <string>

struct lua_State;

namespace sfc {
namespace script {
namespace lua {

class Error {
public:
    Error();                                                            // 0x31a804 (C1), 0x31a858 (C2): status 0, empty message
    Error(lua_State* state, int status);                                // 0x31a918 (C1), 0x31a980 (C2): calls setError
    Error(const Error& other);                                          // 0x31a714 (C1), 0x31a78c (C2): copies status and message
    virtual ~Error();                                                   // 0x31a68c (D1), 0x31a6c0 (D2), 0x31a6f4 (D0)

    // Stores the status. A zero status clears the message. Otherwise the message is the string on top of the
    // stack, which is popped.
    void setError(lua_State* state, int status);                        // 0x31a8ac

    // +0x00 vptr (off_95B110): its two slots are the destructors (D1, D0) only.
    int m_status;                                                       // +0x04 Lua status (0 is OK, LUA_ERRRUN and up are errors)
    std::string m_message;                                              // +0x08 error text; original STLport string, inline storage at +0x08
};

}  // namespace lua
}  // namespace script
}  // namespace sfc
