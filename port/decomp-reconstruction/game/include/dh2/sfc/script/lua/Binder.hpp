// sfc::script::lua::Binder: publishes C++ callbacks to a Lua state as functions and methods. A bound callback is a
// C closure whose upvalues hold the callback pointer and a user pointer (or the two words of a member function
// pointer). The static __*Callback functions rebuild Arguments and ReturnValues from the Lua stack and call back in.
// Original 32-bit size 0xc (12): vptr, Instance*, lua_State*. LuaScript embeds one at its +0x10 and points m_instance
// at its own Instance; the owner stores the state before binding (bindMethod does nothing while it is zero).
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x31b57c / 0x31bb54, bindMethod 0x319af4, bindFunction 0x31a4d4).
#pragma once

#include <cstring>

struct lua_State;

namespace sfc {
namespace script {
namespace lua {

class Arguments;
class Instance;
class ReturnValues;

class Binder {
public:
    virtual ~Binder();                                                  // 0x31b57c (D1, empty body), 0x31bb54 (D0, frees)

    // Binds a plain callback as a method: calling funcName on an object runs callback(args, ret, user), where args
    // are the call's values after the receiver and user is the object's "_this" userdata (__smethodCallback).
    void bindMethod(const char* funcName,
                    void (*callback)(const Arguments& args, ReturnValues& ret, void* user));     // 0x319af4
    // Binds a plain function under funcName on the Instance. user is passed to callback on every call.
    void bindFunction(const char* funcName,
                      void (*callback)(const Arguments& args, ReturnValues& ret, void* user),
                      void* user);                                      // 0x31a4d4
    // Binds a member function of T as a method. The member pointer is split into its two words
    // (function pointer, this adjustment) and handed to _bindMethod. Declared only; the body is not written here.
    template <typename T>
    void bindMethod(const char* funcName,
                    void (T::*method)(const Arguments& args, ReturnValues& ret));                 // 0x386c20 (instance for TestUD)
    // Pushes the two member-pointer words as upvalues of a __methodCallback closure and sets it under funcName.
    void _bindMethod(const char* funcName, void* methodPtr, void* methodAdj);                     // 0x319c44

    // Lua C closures (lua_CFunction). Each reads its upvalues and "_this" from the calling frame.
    static int __methodCallback(lua_State* state);                      // 0x319ca8
    static int __smethodCallback(lua_State* state);                     // 0x319fd0
    static int __functionCallback(lua_State* state);                    // 0x31a250

    // +0x00 vptr (off_95B140): its two slots are the destructors (D1, D0) only.
    Instance* m_instance;                                               // +0x04 the Instance that registerFunction writes to (bindFunction)
    lua_State* m_state;                                                 // +0x08 the state used by bindMethod and _bindMethod; zero until the owner sets it
};

// Definition of the member template declared above (0x386c20 is its instantiation for TestUD). The two words of
// the member function pointer are passed to _bindMethod unchanged, so the host's own layout (virtual dispatch
// included) is what __methodCallback rebuilds. The name is the one the caller gives.
template <typename T>
void Binder::bindMethod(const char* funcName, void (T::*method)(const Arguments& args, ReturnValues& ret)) {
    static_assert(sizeof(method) == 2 * sizeof(void*), "a member function pointer is two words");
    if (m_state != nullptr) {
        void* words[2];
        std::memcpy(words, &method, sizeof(method));
        _bindMethod(funcName, words[0], words[1]);
    }
}

}  // namespace lua
}  // namespace script
}  // namespace sfc
