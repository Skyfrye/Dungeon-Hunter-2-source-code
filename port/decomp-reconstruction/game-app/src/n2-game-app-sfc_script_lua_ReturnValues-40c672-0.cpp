// Batch n2-game-app-sfc_script_lua_ReturnValues-40c672-0 (sfc::script::lua::ReturnValues, part 1 of 1).
// The results a Lua-bound C++ function hands back. Each push appends a Value to m_valueList; _doReturn pushes them onto
// the Lua stack in order. m_error (the status of the call that filled the results) is built in place and destroyed
// with the object.
#include "dh2/sfc/script/lua/ReturnValues.hpp"

#include <stdexcept>

#include "dh2/sfc/script/lua/Value.hpp"

extern "C" {
#include "lua.h"
}

namespace sfc {
namespace script {
namespace lua {

// 0x31b308 sfc::script::lua::ReturnValues::_doReturn(lua_State*): pushes every value on the Lua stack in order and
// returns how many were pushed.
unsigned int ReturnValues::_doReturn(lua_State* state) {
    unsigned int count = 0;
    for (const Value& value : *m_valueList) {
        value._pushOnStack(state);
        ++count;
    }
    return count;
}

// 0x31b398 sfc::script::lua::ReturnValues::~ReturnValues() (D1, complete object), 0x31b3f4 (D2, base object).
// The original returns the value list to the pool, then destroys m_error. Members are destroyed after this body, so
// the same order is kept.
ReturnValues::~ReturnValues() {
    Value::freeValueList(m_valueList);
}

// 0x31b3d8 sfc::script::lua::ReturnValues::~ReturnValues() (D0, deleting destructor): compiler-generated (D1, then CustomFree).

// 0x31b434 sfc::script::lua::ReturnValues::ReturnValues() (C1), 0x31b470 (C2): an empty result list, and a status built in
// place (Error::Error()).
ReturnValues::ReturnValues() : m_error(), m_valueList(Value::allocValueList()) {}

// 0x31b4ac sfc::script::lua::ReturnValues::_addFromStack(lua_State*, int): appends a nil value and fills it from stack
// slot index. Returns what Value::_setFromStack returns.
int ReturnValues::_addFromStack(lua_State* state, int index) {
    m_valueList->push_back(Value());
    return m_valueList->back()._setFromStack(state, index);
}

// 0x37c7e4 sfc::script::lua::ReturnValues::pushBoolean(bool)
void ReturnValues::pushBoolean(bool value) {
    m_valueList->push_back(Value(value));
}

// 0x37c8cc sfc::script::lua::ReturnValues::pushString(char const*): the text is copied.
void ReturnValues::pushString(const char* value) {
    m_valueList->push_back(Value(value));
}

// 0x37c9f8 sfc::script::lua::ReturnValues::pushUserData(sfc::script::lua::UserData*)
void ReturnValues::pushUserData(UserData* userData) {
    m_valueList->push_back(Value(userData));
}

// 0x37cb24 sfc::script::lua::ReturnValues::pushInteger(int)
void ReturnValues::pushInteger(int value) {
    m_valueList->push_back(Value(value));
}

// 0x37ccbc sfc::script::lua::ReturnValues::pushNumber(float)
void ReturnValues::pushNumber(float value) {
    m_valueList->push_back(Value(value));
}

// 0x38eb00 sfc::script::lua::ReturnValues::pushPointer(void*): a light userdata.
void ReturnValues::pushPointer(void* pointer) {
    m_valueList->push_back(Value(pointer));
}

// 0x3da43c sfc::script::lua::ReturnValues::operator[](unsigned int) const: range-checked element access ("vector" throws).
Value& ReturnValues::operator[](unsigned int index) const {
    if (index >= m_valueList->size()) {
        throw std::out_of_range("vector");
    }
    return (*m_valueList)[index];
}

}  // namespace lua
}  // namespace script
}  // namespace sfc
