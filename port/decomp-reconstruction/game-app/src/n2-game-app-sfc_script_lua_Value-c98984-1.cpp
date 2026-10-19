// Batch n2-game-app-sfc_script_lua_Value-c98984-1 (sfc::script::lua::Value, part 2 of 2).
// The number constructors and the unsigned read. The empty-text and nil setup is the same as in part 1
// (n2-game-app-sfc_script_lua_Value-c98984-0.cpp), repeated here because the helper there is internal to that file.
#include "dh2/sfc/script/lua/Value.hpp"

#include <cstdint>
#include <cstring>

namespace sfc {
namespace script {
namespace lua {

namespace {

// The empty state of a new value (see initValue in n2-game-app-sfc_script_lua_Value-c98984-0.cpp).
void initValue(Value& v) {
    v.m_string = reinterpret_cast<char*>(v.m_stringBuf);
    v.m_stringEnd = v.m_string;
    *v.m_string = '\0';
    v.m_wstring = reinterpret_cast<wchar_t*>(v.pad_24);
    v.m_wstringEnd = v.m_wstring;
    std::memset(v.pad_24, 0, sizeof(wchar_t));
    v.m_type = 0;
    v.m_number = 0.0f;
    v.m_pointer = nullptr;
}

}  // namespace

// 0x37ca9c sfc::script::lua::Value::Value(int): a number value.
Value::Value(int value) {
    initValue(*this);
    setNumber(static_cast<float>(value));
}

// 0x37cc3c sfc::script::lua::Value::Value(float): a number value.
Value::Value(float value) {
    initValue(*this);
    setNumber(value);
}

// 0x38d798 sfc::script::lua::Value::getUInteger() const: the number, converted to unsigned int.
// The binary converts with __aeabi_f2uiz / fcvtzu, which saturate (negative and NaN give 0, 2^32 and above give 0xffffffff). A plain C++ cast of an
// out-of-range float is undefined and on x86-64 wraps (-1.0f gave 0xffffffff): found by the float-cast-overflow check on the host runner, the first hit
// was Character::_SetProp from a skill script.
unsigned int Value::getUInteger() const {
    const float number = getNumber();
    if (!(number > 0.0f)) return 0u;
    if (number >= 4294967296.0f) return 0xffffffffu;
    return static_cast<unsigned int>(number);
}

}  // namespace lua
}  // namespace script
}  // namespace sfc
