// Batch n2-game-app-sfc_script_lua_Value-c98984-0 (sfc::script::lua::Value, part 1 of 2).
// One Lua value moved between C++ and Lua: a type tag (m_type: 0 nil, 1 bool, 2 light userdata, 3 number, 4 string,
// 7 userdata) with the payload in m_number, m_string or m_pointer. Text is held as in the original string: the
// inline buffer (m_stringBuf) while it fits, otherwise a CustomAlloc block; m_string is the data pointer and
// m_stringEnd the end of the text. The wide string of the original is never written by a bound path, so it stays
// empty here (it is kept at its inline place, pad_24).
// The pool of value lists (allocValueList, freeValueList) keeps the original's observable behaviour: a list handed
// out is empty, and a freed list is cleared and kept for reuse. The original's deque bookkeeping is not rebuilt.
// Rebuilt from the Hex-Rays pseudocode and the Lua 5.1.4 API (float lua_Number).
#include "dh2/sfc/script/lua/Value.hpp"

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/sfc/script/lua/Binder.hpp"
#include "dh2/sfc/script/lua/UserData.hpp"

extern "C" {
#include "lua.h"
#include "lauxlib.h"
}

namespace sfc {
namespace script {
namespace lua {

namespace {

// Gives v the empty state every constructor starts from: the text and the wide text are empty and point at their
// inline storage, the payload is zero, and the tag is nil (the original's ctors store the same pointers).
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

// Replaces the text of v with the bytes [begin, end). The new text is built before the old block is released, so the
// source may point into v's own text. A text of 16 bytes or more (with the NUL) takes a CustomAlloc block.
void assignText(Value& v, const char* begin, const char* end) {
    const std::size_t length = static_cast<std::size_t>(end - begin);
    char* const inlineText = reinterpret_cast<char*>(v.m_stringBuf);
    char* const dst = length < sizeof(v.m_stringBuf)
                          ? inlineText
                          : static_cast<char*>(CustomAlloc(static_cast<unsigned int>(length + 1)));
    std::memmove(dst, begin, length);
    dst[length] = '\0';
    if (v.m_string != inlineText && v.m_string != dst) {
        CustomFree(v.m_string);
    }
    v.m_string = dst;
    v.m_stringEnd = dst + length;
}

// The original's ASSERT failing branch (Value.cpp): gAssertLevel 2 stops the process, 1 prints the message.
void ReportAssert(const char* expr, int line) {
    constexpr char kValueSourceFile[] =
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Value.cpp";
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kValueSourceFile, line);
    }
}

// Value pool: lists handed out by allocValueList wait here after freeValueList has cleared them. A leaked singleton,
// so a Value list released during static destruction still finds it.
std::vector<std::vector<Value>*>& valueListPool() {
    static std::vector<std::vector<Value>*>* pool = new std::vector<std::vector<Value>*>();
    return *pool;
}

}  // namespace

// 0x3193e8 sfc::script::lua::Value::~Value() (D1, complete object).
// The original releases the wide text (inline, nothing to free) and then the narrow text when it is on the heap.
Value::~Value() {
    if (m_string != reinterpret_cast<char*>(m_stringBuf)) {
        CustomFree(m_string);
    }
}

// 0x319454 sfc::script::lua::Value::~Value() (D0, deleting destructor): compiler-generated (D1, then CustomFree).

// 0x3194e0 sfc::script::lua::Value::Value(): a nil value.
Value::Value() {
    initValue(*this);
    setNil();
}

// 0x31a414 sfc::script::lua::Value::Value(void*): a light userdata value.
Value::Value(void* pointer) {
    initValue(*this);
    setPointer(pointer);
}

// 0x31b580 sfc::script::lua::Value::getPointer() const: the payload of a light userdata or userdata, else 0.
void* Value::getPointer() const {
    if (m_type == 2 || m_type == 7) {
        return m_pointer;
    }
    return nullptr;
}

// 0x31b5a0 sfc::script::lua::Value::getUserData() const: the same payload as getPointer, as a UserData*.
UserData* Value::getUserData() const {
    return static_cast<UserData*>(getPointer());
}

// 0x31b5c0 sfc::script::lua::Value::setNil(void)
void Value::setNil() {
    m_type = 0;
}

// 0x31b5cc sfc::script::lua::Value::setBool(bool): a bool is kept as 1.0f or 0.0f in m_number.
void Value::setBool(bool value) {
    m_type = 1;
    m_number = value ? 1.0f : 0.0f;
}

// 0x31b5e8 sfc::script::lua::Value::setNumber(float)
void Value::setNumber(float value) {
    m_number = value;
    m_type = 3;
}

// 0x31b5f8 sfc::script::lua::Value::setPointer(void*): a light userdata.
void Value::setPointer(void* pointer) {
    m_pointer = pointer;
    m_type = 2;
}

// 0x31b608 sfc::script::lua::Value::setUserData(sfc::script::lua::UserData*)
void Value::setUserData(UserData* userData) {
    m_pointer = userData;
    m_type = 7;
}

// 0x31bbf0 sfc::script::lua::Value::getNumber() const. Strings are converted by a scratch Lua state (lua_tonumber of
// the text). Userdata and light userdata give their address as a float (the original's 32-bit address).
float Value::getNumber() const {
    switch (m_type) {
        case 1:
        case 3:
            return m_number;
        case 2:
        case 7:
            return static_cast<float>(static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(m_pointer)));
        case 4: {
            lua_State* state = luaL_newstate();
            lua_pushstring(state, m_string);
            const float number = static_cast<float>(lua_tonumber(state, -1));
            lua_close(state);
            return number;
        }
        default:
            return 0.0f;
    }
}

// 0x31bc80 sfc::script::lua::Value::getBool() const. A string is true when a scratch Lua state reads it as true.
bool Value::getBool() const {
    switch (m_type) {
        case 0:
            return false;
        case 1:
        case 3:
            return m_number != 0.0f;
        case 2:
        case 7:
            return m_pointer != nullptr;
        case 4: {
            lua_State* state = luaL_newstate();
            lua_pushstring(state, m_string);
            const bool truth = lua_toboolean(state, -1) != 0;
            lua_close(state);
            return truth;
        }
        default:
            return false;
    }
}

// 0x31c368 sfc::script::lua::Value::operator=(sfc::script::lua::Value const&): copies the tag, the number, the text and
// the pointer. The wide text is always empty, so there is nothing to copy for it.
Value& Value::operator=(const Value& other) {
    m_type = other.m_type;
    m_number = other.m_number;
    if (this != &other) {
        assignText(*this, other.m_string, other.m_stringEnd);
    }
    m_pointer = other.m_pointer;
    return *this;
}

// 0x31c46c sfc::script::lua::Value::setString(char const*): a string value (the text is copied).
void Value::setString(const char* value) {
    m_type = 4;
    assignText(*this, value, value + std::strlen(value));
}

// 0x31c49c sfc::script::lua::Value::getString() const. A string gives its text; nil, bool and the numbers and
// userdata give their text form (formatted into the value's own text buffer, which is returned); other tags give null.
const char* Value::getString() const {
    Value& self = const_cast<Value&>(*this);
    switch (m_type) {
        case 0:
            return "nil";
        case 1:
            return getBool() ? "true" : "false";
        case 4:
            return m_string;
        case 2:
        case 7: {
            char text[64];
            std::snprintf(text, sizeof(text), "0x%08x",
                          static_cast<unsigned int>(static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(m_pointer))));
            assignText(self, text, text + std::strlen(text));
            return m_string;
        }
        case 3: {
            const float number = m_number;
            char text[64];
            if (number == std::floor(number)) {
                std::snprintf(text, sizeof(text), "%d", static_cast<int>(getNumber()));
            } else {
                std::snprintf(text, sizeof(text), "%f", static_cast<double>(number));
            }
            assignText(self, text, text + std::strlen(text));
            return m_string;
        }
        default:
            return nullptr;
    }
}

// 0x31c634 sfc::script::lua::Value::Value(sfc::script::lua::Value const&) (C1), 0x31c89c (C2): same body.
// Copies by tag: bool, number, string, light userdata and userdata keep their payload; every other tag becomes nil.
Value::Value(const Value& other) {
    initValue(*this);
    switch (other.m_type) {
        case 1:
            setBool(other.getBool());
            break;
        case 3:
            setNumber(other.getNumber());
            break;
        case 4:
            setString(other.getString());
            break;
        case 2:
            setPointer(other.getPointer());
            break;
        case 7:
            setUserData(other.getUserData());
            break;
        default:
            setNil();
            break;
    }
}

// 0x31c9c8 sfc::script::lua::Value::_setFromStack(lua_State*, int): reads the stack slot index into this value. A table
// with a "_this" field is a userdata object (tag 7). Other types that Lua has but this value does not hold become nil.
// The original returns the r0 left by its switch (the tag as float bits); the declaration says int, and this returns
// the stored tag, which no caller reads.
int Value::_setFromStack(lua_State* state, int index) {
    m_type = lua_type(state, index);
    switch (m_type) {
        case 0:
            break;
        case 1:
            m_number = lua_toboolean(state, index) ? 1.0f : 0.0f;
            break;
        case 2:
            m_pointer = lua_touserdata(state, index);
            break;
        case 3:
            m_number = static_cast<float>(lua_tonumber(state, index));
            break;
        case 4: {
            const char* text = lua_tolstring(state, index, nullptr);
            assignText(*this, text, text + std::strlen(text));
            break;
        }
        case 5:
            lua_getfield(state, index, "_this");
            m_pointer = lua_touserdata(state, -1);
            lua_settop(state, -2);
            m_type = 7;
            break;
        default:
            m_type = 0;
            break;
    }
    return m_type;
}

// 0x31cac4 sfc::script::lua::Value::_pushOnStack(lua_State*) const. A userdata is pushed as a table holding "_this"
// with a metatable named "sfc_vftable_<type name>". The metatable's __index table is filled by the object's
// createBindings the first time that name is seen (luaL_newmetatable returns non-zero).
void Value::_pushOnStack(lua_State* state) const {
    switch (m_type) {
        case 0:
            lua_pushnil(state);
            break;
        case 1:
            lua_pushboolean(state, m_number != 0.0f);
            break;
        case 2:
            lua_pushlightuserdata(state, m_pointer);
            break;
        case 3:
            lua_pushnumber(state, m_number);
            break;
        case 4:
            lua_pushstring(state, m_string);
            break;
        case 7:
            if (m_pointer != nullptr) {
                UserData* object = static_cast<UserData*>(m_pointer);
                lua_createtable(state, 0, 0);
                lua_pushstring(state, "_this");
                lua_pushlightuserdata(state, m_pointer);
                lua_settable(state, -3);
                std::string metatableName = "sfc_vftable_";
                metatableName += object->getUDTypeName();
                if (luaL_newmetatable(state, metatableName.c_str())) {
                    lua_pushstring(state, "__index");
                    lua_createtable(state, 0, 0);
                    Binder binder;
                    binder.m_instance = nullptr;
                    binder.m_state = state;
                    object->createBindings(binder);
                    lua_settable(state, -3);
                }
                lua_setmetatable(state, -2);
            } else {
                lua_pushnil(state);
            }
            break;
        default:
            break;
    }
}

// 0x31ce84 sfc::script::lua::Value::allocValueList(void): an empty list from the pool.
std::vector<Value>* Value::allocValueList() {
    std::vector<std::vector<Value>*>& pool = valueListPool();
    if (!pool.empty()) {
        std::vector<Value>* values = pool.back();
        pool.pop_back();
        return values;
    }
    return new std::vector<Value>();
}

// 0x31d194 sfc::script::lua::Value::freeValueList(std::vector<sfc::script::lua::Value>*): empties the list (the original
// erases every element) and returns it to the pool. The original's assert on a list that is not in use is not kept.
void Value::freeValueList(std::vector<Value>* values) {
    if (values == nullptr) {
        ReportAssert("vlist", 62);
        return;
    }
    values->clear();
    valueListPool().push_back(values);
}

// 0x37c764 sfc::script::lua::Value::Value(bool): a bool value.
Value::Value(bool value) {
    initValue(*this);
    setBool(value);
}

// 0x37c84c sfc::script::lua::Value::Value(char const*): a string value.
Value::Value(const char* value) {
    initValue(*this);
    setString(value);
}

// 0x37c978 sfc::script::lua::Value::Value(sfc::script::lua::UserData*): a userdata value.
Value::Value(UserData* userData) {
    initValue(*this);
    setUserData(userData);
}

}  // namespace lua
}  // namespace script
}  // namespace sfc
