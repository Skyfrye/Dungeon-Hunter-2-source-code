// sfc::script::lua::ReturnValues: the results a Lua-bound C++ function hands back. Each push appends a
// Value to m_valueList, and _doReturn pushes them onto the Lua stack in order.
// Original 32-bit size not recovered; the object is at least 0x28 (the list pointer at +0x24 is its last field).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x31b434, _doReturn 0x31b308, operator[] 0x3da43c).
#pragma once

#include <cstdint>
#include <vector>

#include "dh2/sfc/script/lua/Error.hpp"
#include "dh2/sfc/script/lua/Value.hpp"

struct lua_State;

namespace sfc {
namespace script {
namespace lua {

class UserData;

class ReturnValues {
public:
    ReturnValues();                                         // 0x31b434 (C1), 0x31b470 (C2)
    virtual ~ReturnValues();                                // 0x31b398 (D1), 0x31b3f4 (D2), 0x31b3d8 (D0, deleting)

    unsigned int _doReturn(lua_State* L);                   // 0x31b308, pushes every value on L, returns how many
    int _addFromStack(lua_State* L, int index);             // 0x31b4ac, appends a nil Value and fills it from stack slot index

    void pushBoolean(bool value);                           // 0x37c7e4
    void pushString(const char* value);                     // 0x37c8cc
    void pushUserData(UserData* userData);                  // 0x37c9f8
    void pushInteger(int value);                            // 0x37cb24
    void pushNumber(float value);                           // 0x37ccbc
    void pushPointer(void* pointer);                        // 0x38eb00

    Value& operator[](unsigned int index) const;            // 0x3da43c, throws "vector" when index is out of range

    // Original 32-bit offsets. The vptr is at +0x00 (virtual destructor).
    Error m_error;                                          // +0x04 the status and message of the call (ctor 0x31b434 builds it in
                                                            // place, Error::Error(this+4)); Instance::pCall_ and execFile write it.
    std::vector<Value>* m_valueList;                        // +0x24 values returned by the call, from Value::allocValueList
};

}  // namespace lua
}  // namespace script
}  // namespace sfc
