// sfc::script::lua::Instance: one Lua state and the load, call and registration helpers the game uses on it.
// The default ctor creates a state that the dtor closes. Instance(lua_State*) wraps a state it does not own.
// LuaScript embeds one at its +0x04 (as sfc::script::lua::Instance, 12 bytes), and LuaManager::AddFile loads
// buffered scripts through loadFile.
// Original 32-bit size 0xc (12): vptr, lua_State*, and the ownership flag (padded to 12).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x31a9f0 / 0x31b268, dtor 0x31b180, pCall 0x31aa78, loadFile 0x31acf4).
#pragma once

#include <cstddef>
#include <cstdint>

#include "dh2/sfc/script/lua/Error.hpp"

struct lua_State;
class IFileStream;
class StreamBuffer;

namespace sfc {
namespace script {
namespace lua {

class Arguments;
class ReturnValues;
class Value;

class Instance {
public:
    Instance();                                                         // 0x31b268 (C1), 0x31b2a8 (C2): creates and owns a new state
    Instance(lua_State* state);                                         // 0x31a9f0 (C2), 0x31aa20 (C1): wraps a state it does not own
    virtual ~Instance();                                                // 0x31b180 (D1), 0x31b1e0 (D2), 0x31b1c4 (D0); closes the state when owned

    // Library openers. includeIO and includePackage have empty bodies in the original.
    void includeIO();                                                   // 0x31aa50
    void includePackage();                                              // 0x31aa54
    int includeDebug();                                                 // 0x31aff0 luaopen_debug
    int includeTable();                                                 // 0x31aff8 luaopen_table
    int includeMath();                                                  // 0x31b000 luaopen_math
    int includeString();                                                // 0x31b008 luaopen_string
    int includeBase();                                                  // 0x31b010 luaopen_base

    // Calls the function on the top of the stack with nargs values already pushed. The status goes into
    // ret's Error, and on success the results are collected into ret.
    void pCall_(unsigned int nargs, ReturnValues& ret);                 // 0x31aa78
    void pCall(const char* funcName, ReturnValues& ret);                // 0x31ab14 fetches the global funcName, then pCall_(0)
    void pCall(const Arguments& args, ReturnValues& ret);               // 0x31ab4c pushes args, then pCall_(size)
    void pCall(const char* funcName, const Arguments& args,
               ReturnValues& ret);                                      // 0x31abe8 fetches funcName, then pCall(args)

    void execFile(IFileStream& file, ReturnValues& ret);                // 0x31ac24 lua_load the file, record the status, then pCall_(0)

    // Loads a chunk from the stream through lua_load and, on success, runs it with lua_pcall. The returned Error
    // holds the first failure. Instance::loadFile(StreamBuffer&) returns the Error by value (hidden sret pointer).
    Error loadFile(StreamBuffer& stream);                               // 0x31acf4
    Error loadFile(IFileStream& file);                                  // 0x31ade8

    void setGlobal(const char* name, const Value& value);               // 0x31aed8
    // Registers a C function as the global name. The Arguments values become its upvalues.
    void registerFunction(const char* name, int (*function)(lua_State*),
                          const Arguments& upvalues);                   // 0x31af08
    void registerFunction(const char* name, int (*function)(lua_State*)); // 0x31afbc

    // lua_Reader for lua_load. user points at five words: [0] the Instance, [1] an IFileStream (execFile and
    // loadFile(IFileStream&)), [2] a StreamBuffer (loadFile(StreamBuffer&)), [3] the read buffer, [4] its size (1024).
    // It reads from [1] when set, else from [2]. size is uint in the 32-bit binary, size_t here to match lua_Reader.
    static const char* _chunkReader(lua_State* state, void* data, std::size_t* size);   // 0x31b018

    // +0x00 vptr (off_95B120): its two slots are the destructors (D1, D0) only.
    lua_State* m_state;                                                 // +0x04 the Lua state every lua_* call goes through
    bool m_ownsState;                                                   // +0x08 set by the default ctor, cleared by Instance(lua_State*);
                                                                        //       ~Instance calls lua_close only when set
    std::uint8_t pad_09[3];                                             // +0x09 alignment, untouched
};

// The Lua state of the default Instance (0x31b224): lua_newstate with LuaAllocator, then the panic handler (0x31a9e8),
// which returns 0. A null state is returned when lua_newstate fails.
lua_State* newstate();
int panic(lua_State* state);

}  // namespace lua
}  // namespace script
}  // namespace sfc
