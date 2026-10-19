// Batch n2-game-app-sfc_script_lua_Arguments-3e968c-0 (sfc::script::lua::Arguments, part 1 of 1).
// The argument list of one Lua call: a heap std::vector<Value> from the Value pool (Value::allocValueList) that the
// destructor returns with Value::freeValueList. The Lua-stack constructor reads the stack (count <= 0) or the
// upvalues of the running C function (count > 0). Rebuilt from the Hex-Rays pseudocode; the vector arithmetic
// ((end - begin) >> 4 times the inverse of 7) is the element count, and the element index is the last element.
#include "dh2/sfc/script/lua/Arguments.hpp"

#include <stdexcept>

#include "dh2/sfc/script/lua/UserData.hpp"
#include "dh2/sfc/script/lua/Value.hpp"

extern "C" {
#include "lua.h"
#include "lauxlib.h"
}

namespace sfc {
namespace script {
namespace lua {

// 0x319228 sfc::script::lua::Arguments::~Arguments() (D1, complete object)
// 0x31927c sfc::script::lua::Arguments::~Arguments() (D2, base object): the same body in the original.
// Stores the vtable pointer, then returns the list to the pool. The original frees the list with freeValueList only.
Arguments::~Arguments() {
    Value::freeValueList(m_values);
}

// 0x319260 sfc::script::lua::Arguments::~Arguments() (D0, deleting destructor): compiler-generated (D1, then CustomFree).

// 0x3192b4 sfc::script::lua::Arguments::Arguments() (C1), 0x3192ec (C2): an empty list from the pool.
Arguments::Arguments() : m_values(Value::allocValueList()) {}

// 0x3196ec sfc::script::lua::Arguments::Arguments(lua_State*, int) (C1), 0x3198e0 (C2): same body.
// count <= 0: every stack value from index 1 - count to the top is copied into the list (a method call passes -1, so
// the receiver at index 1 is skipped), then the whole stack is popped (lua_settop(L, ~top) leaves it empty).
// count > 0: the first count upvalues of the running C function, lua_upvalueindex(1) to lua_upvalueindex(count).
Arguments::Arguments(lua_State* state, int count) : m_values(Value::allocValueList()) {
    if (count <= 0) {
        const int first = 1 - count;
        const int top = lua_gettop(state);
        for (int index = first; index <= top; ++index) {
            m_values->push_back(Value());
            m_values->back()._setFromStack(state, index);
        }
        lua_settop(state, ~top);
    } else {
        for (int i = 1; i <= count; ++i) {
            m_values->push_back(Value());
            m_values->back()._setFromStack(state, lua_upvalueindex(i));
        }
    }
}

// 0x37baf8 sfc::script::lua::Arguments::operator[](unsigned int) const: range-checked element access ("vector" throws).
const Value& Arguments::operator[](unsigned int index) const {
    if (index >= m_values->size()) {
        throw std::out_of_range("vector");
    }
    return (*m_values)[index];
}

// 0x31a46c sfc::script::lua::Arguments::pushPointer(void*): appends a light userdata value.
void Arguments::pushPointer(void* value) {
    m_values->push_back(Value(value));
}

// 0x386f28 sfc::script::lua::Arguments::pushUserData(sfc::script::lua::UserData*): appends a userdata value.
void Arguments::pushUserData(UserData* value) {
    m_values->push_back(Value(value));
}

// 0x39eba8 sfc::script::lua::Arguments::pushNil(void): appends a nil value.
void Arguments::pushNil() {
    m_values->push_back(Value());
}

// 0x39ec10 sfc::script::lua::Arguments::pushString(char const*): appends a string value (the text is copied).
void Arguments::pushString(const char* value) {
    m_values->push_back(Value(value));
}

// 0x3cdd78 sfc::script::lua::Arguments::pushInteger(int): appends a number value.
void Arguments::pushInteger(int value) {
    m_values->push_back(Value(value));
}

}  // namespace lua
}  // namespace script
}  // namespace sfc
