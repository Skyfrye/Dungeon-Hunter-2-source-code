// Batch n2-game-app-sfc_script_lua_Binder-545b31-0 (sfc::script::lua::Binder, part 1 of 1).
// Publishes C++ callbacks to a Lua state. A bound callback is a C closure whose upvalues hold the callback pointer
// and a user pointer (bindFunction and bindMethod with a free function), or the two words of a member function
// pointer (_bindMethod). The static __*Callback functions rebuild Arguments and ReturnValues from the Lua stack.
//
// Member function pointers: the original is an ARM build, and its two words carry the virtual flag in bit 0 of the
// adjust word. Here the two words are the host's own member pointer (bindMethod<T> in dh2/sfc/script/lua/Binder.hpp
// copies it with memcpy), and __methodCallback copies them back and calls through it, so virtual dispatch follows the
// host ABI. The member template's instantiation for TestUD (0x386c20) is the header definition; its clone in the
// binary has the name "TestMethod" constant-propagated from TestUD::createBindings.
//
// The ASSERT lines of the original print through gAssertLevel as in the other sfc batches (level 2 aborts where the
// original stores to address 0; level 1 prints; level 0 is silent). The source file names are the original's.
#include "dh2/sfc/script/lua/Binder.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "core-platform/memory.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/Instance.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/UserData.hpp"
#include "dh2/sfc/script/lua/Value.hpp"

extern "C" {
#include "lua.h"
#include "lauxlib.h"
}

namespace sfc {
namespace script {
namespace lua {

namespace {

constexpr char kBinderSourceFile[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Binder.cpp";

// The original's ASSERT(expr) failing branch.
void ReportAssert(bool holds, const char* expr, int line) {
    if (holds) {
        return;
    }
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kBinderSourceFile, line);
    }
}

// The callback type of bindMethod and bindFunction: the Arguments and ReturnValues of one call, and the user pointer.
using BoundCallback = void (*)(const Arguments& args, ReturnValues& ret, void* user);

// The member function type that __methodCallback rebuilds. Its words come from bindMethod<T> (a pointer to a member
// of any class, copied as two words); the object is a UserData, the base of every bound object.
using BoundMethod = void (UserData::*)(const Arguments& args, ReturnValues& ret);

}  // namespace

// 0x319af4 sfc::script::lua::Binder::bindMethod(char const*, void (*)(Arguments const&, ReturnValues&, void*)):
// binds a plain callback as a method. The closure takes the callback as its one upvalue (__smethodCallback).
void Binder::bindMethod(const char* funcName, BoundCallback callback) {
    if (m_state != nullptr) {
        ReportAssert(funcName != nullptr, "funcName", 139);
        ReportAssert(callback != nullptr, "callback", 140);
        lua_pushstring(m_state, funcName);
        lua_pushlightuserdata(m_state, reinterpret_cast<void*>(callback));
        lua_pushcclosure(m_state, __smethodCallback, 1);
        lua_settable(m_state, -3);
    }
}

// 0x319c44 sfc::script::lua::Binder::_bindMethod(char const*, void*, void*): sets funcName to a method closure whose two
// upvalues are the words of the member function pointer (__methodCallback).
void Binder::_bindMethod(const char* funcName, void* methodPtr, void* methodAdj) {
    lua_pushstring(m_state, funcName);
    lua_pushlightuserdata(m_state, methodPtr);
    lua_pushlightuserdata(m_state, methodAdj);
    lua_pushcclosure(m_state, __methodCallback, 2);
    lua_settable(m_state, -3);
}

// 0x319ca8 sfc::script::lua::Binder::__methodCallback(lua_State*): the call of a bound method. Stack slot 1 is the
// receiver table, whose "_this" field is the object. The call's arguments follow it, and upvalues 1 and 2 are the
// member function pointer words. The results are pushed as the Lua return values.
int Binder::__methodCallback(lua_State* state) {
    ReportAssert(lua_type(state, 1) == LUA_TTABLE, "(lua_type(ls, (1)) == 5)", 72);
    lua_getfield(state, 1, "_this");
    void* self = lua_touserdata(state, -1);
    lua_settop(state, -2);
    Arguments args(state, -1);
    Arguments upvalues(state, 2);
    ReturnValues ret;
    void* pointerWords[2] = {upvalues[0].getPointer(), upvalues[1].getPointer()};
    ReportAssert(pointerWords[0] != nullptr, "callback.method", 86);
    ReportAssert(self != nullptr, "_this", 87);
    BoundMethod method;
    std::memcpy(&method, pointerWords, sizeof(method));
    (static_cast<UserData*>(self)->*method)(args, ret);
    return static_cast<int>(ret._doReturn(state));
}

// 0x319fd0 sfc::script::lua::Binder::__smethodCallback(lua_State*): the call of a bound plain callback as a method.
// Upvalue 1 is the callback, and the object's "_this" is passed as the user pointer.
int Binder::__smethodCallback(lua_State* state) {
    ReportAssert(lua_type(state, 1) == LUA_TTABLE, "(lua_type(ls, (1)) == 5)", 46);
    lua_getfield(state, 1, "_this");
    void* self = lua_touserdata(state, -1);
    lua_settop(state, -2);
    Arguments args(state, -1);
    Arguments upvalues(state, 1);
    ReturnValues ret;
    BoundCallback callback = reinterpret_cast<BoundCallback>(upvalues[0].getPointer());
    ReportAssert(callback != nullptr, "callback", 57);
    ReportAssert(self != nullptr, "_this", 58);
    callback(args, ret, self);
    return static_cast<int>(ret._doReturn(state));
}

// 0x31a250 sfc::script::lua::Binder::__functionCallback(lua_State*): the call of a function bound with bindFunction.
// Every stack value is an argument. Upvalue 1 is the callback and upvalue 2 the user pointer.
int Binder::__functionCallback(lua_State* state) {
    Arguments args(state, 0);
    Arguments upvalues(state, 2);
    ReturnValues ret;
    BoundCallback callback = reinterpret_cast<BoundCallback>(upvalues[0].getPointer());
    ReportAssert(callback != nullptr, "callback", 32);
    callback(args, ret, upvalues[1].getPointer());
    return static_cast<int>(ret._doReturn(state));
}

// 0x31a4d4 sfc::script::lua::Binder::bindFunction(char const*, void (*)(Arguments const&, ReturnValues&, void*), void*):
// registers funcName on the Instance as a C function whose upvalues are the callback and the user pointer.
void Binder::bindFunction(const char* funcName, BoundCallback callback, void* user) {
    if (m_instance != nullptr) {
        ReportAssert(funcName != nullptr, "funcName", 121);
        ReportAssert(callback != nullptr, "callback", 122);
        Arguments upvalues;
        upvalues.pushPointer(reinterpret_cast<void*>(callback));
        upvalues.pushPointer(user);
        m_instance->registerFunction(funcName, __functionCallback, upvalues);
    }
}

// 0x31b57c sfc::script::lua::Binder::~Binder() (D1, complete object): the original body is empty.
Binder::~Binder() {}

// 0x31bb54 sfc::script::lua::Binder::~Binder() (D0, deleting destructor): compiler-generated (D1, then CustomFree).

}  // namespace lua
}  // namespace script
}  // namespace sfc
