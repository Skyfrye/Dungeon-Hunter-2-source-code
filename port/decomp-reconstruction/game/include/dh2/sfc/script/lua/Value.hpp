// sfc::script::lua::Value: one Lua value (nil, bool, number, string, light userdata or userdata)
// moved between C++ and Lua. Type tag in m_type; the payload is in m_number, m_string or m_pointer.
// Original 32-bit size 0x70 (112): ReturnValues keeps its values in a std::vector<Value> and walks it
// with a 112-byte stride (ReturnValues::operator[], _doReturn).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3194e0, dtor 0x3193e8, copy ctor 0x31c634).
#pragma once

#include <cstdint>
#include <vector>

struct lua_State;

namespace sfc {
namespace script {
namespace lua {

class UserData;

class Value {
public:
    Value();                                                // 0x3194e0 (C1), nil
    virtual ~Value();                                       // 0x3193e8 (D1), 0x319454 (D0)
    Value(void* pointer);                                   // 0x31a414, light userdata (type 2)
    Value(bool value);                                      // 0x37c764, bool (type 1)
    Value(const char* value);                               // 0x37c84c, string (type 4)
    Value(UserData* userData);                              // 0x37c978, userdata (type 7)
    Value(int value);                                       // 0x37ca9c, number (type 3)
    Value(float value);                                     // 0x37cc3c, number (type 3)
    Value(const Value& other);                              // 0x31c634 (C1), 0x31c89c (C2)
    Value& operator=(const Value& other);                   // 0x31c368

    void setNil();                                          // 0x31b5c0
    void setBool(bool value);                               // 0x31b5cc
    void setNumber(float value);                            // 0x31b5e8
    void setPointer(void* pointer);                         // 0x31b5f8
    void setUserData(UserData* userData);                   // 0x31b608
    void setString(const char* value);                      // 0x31c46c

    void* getPointer() const;                               // 0x31b580, 0 unless type 2 or 7
    UserData* getUserData() const;                          // 0x31b5a0, same payload as getPointer
    float getNumber() const;                                // 0x31bbf0, converts strings through a Lua state
    bool getBool() const;                                   // 0x31bc80
    unsigned int getUInteger() const;                       // 0x38d798
    const char* getString() const;                          // 0x31c49c, type 4 returns m_string; other types format into m_string

    int _setFromStack(lua_State* L, int index);             // 0x31c9c8, reads the stack slot into this value
    void _pushOnStack(lua_State* L) const;                  // 0x31cac4, pushes this value onto the Lua stack

    static std::vector<Value>* allocValueList();            // 0x31ce84, pooled std::vector<Value>
    static void freeValueList(std::vector<Value>* values);  // 0x31d194, returns it to the pool

    // Original 32-bit offsets. The vptr is at +0x00 (virtual destructor).
    int m_type;                                             // +0x04 tag: 0 nil, 1 bool, 2 pointer, 3 number, 4 string, 7 userdata
    float m_number;                                         // +0x08 number; a bool is stored as 1.0f or 0.0f (type 1)
    // +0x0c .. +0x23: narrow string, an STLport-style std::string (0x18 bytes). The inline buffer is at +0x0c;
    // while the string is on the heap, the word at +0x0c holds the end-of-storage pointer (dtor 0x3193e8).
    uint8_t m_stringBuf[16];                                // +0x0c
    char* m_stringEnd;                                      // +0x1c end of the string data
    char* m_string;                                         // +0x20 data pointer (inline buffer when short); returned by getString, pushed to Lua
    // +0x24 .. +0x63: wide string storage. Its inline buffer starts at +0x24 and the bytes up to +0x64 are not
    // recovered. No bound Lua path reads it; only the copy constructor and operator= do.
    uint8_t pad_24[0x40];                                   // +0x24
    wchar_t* m_wstringEnd;                                  // +0x64
    wchar_t* m_wstring;                                     // +0x68 data pointer of the wide string
    void* m_pointer;                                        // +0x6c light userdata (type 2) or UserData* (type 7)
};

}  // namespace lua
}  // namespace script
}  // namespace sfc
