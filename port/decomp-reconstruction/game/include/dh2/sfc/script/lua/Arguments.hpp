// sfc::script::lua::Arguments: the argument list of one Lua call. It is either read from the Lua stack
// (Arguments(state, count) for a C function called from script, or for the upvalues of a bound callback)
// or filled with push* before a call into Lua. The list is a heap std::vector<Value> held by pointer.
// Original 32-bit size 0x8 (vptr plus the list pointer): Binder::__methodCallback keeps two of them on the stack.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3192b4 / 0x3196ec, dtor 0x319228, push* 0x39eba8 to 0x3cdd78).
#pragma once

#include <vector>

struct lua_State;

namespace sfc {
namespace script {
namespace lua {

class Value;
class UserData;

class Arguments {
public:
    Arguments();                                                        // 0x3192b4 (C1), 0x3192ec (C2): an empty list
    // count > 0: reads the first count upvalues of the running C function (lua_upvalueindex(1..count)).
    // count <= 0: reads every stack value after the first -count, then pops the whole stack. A method
    // call passes -1, so the receiver at index 1 is skipped.
    Arguments(lua_State* state, int count);                             // 0x3196ec (C1), 0x3198e0 (C2)
    virtual ~Arguments();                                               // 0x319228 (D1), 0x31927c (D2), 0x319260 (D0, frees)

    const Value& operator[](unsigned int index) const;                  // 0x37baf8: element index, range-checked (throws out_of_range)

    void pushNil();                                                     // 0x39eba8
    void pushString(const char* value);                                 // 0x39ec10
    void pushInteger(int value);                                        // 0x3cdd78
    void pushPointer(void* value);                                      // 0x31a46c
    void pushUserData(UserData* value);                                 // 0x386f28

    // +0x00 vptr (off_95B100): its two slots are the destructors (D1, D0) only.
    // +0x04 pointer to the list, allocated by Value::allocValueList in the ctor and freed by Value::freeValueList
    // in the dtor. Each element is a 112-byte Value (0x70 stride in the original). Named from operator[] and push*.
    std::vector<Value>* m_values;                                       // +0x04
};

}  // namespace lua
}  // namespace script
}  // namespace sfc
