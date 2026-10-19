// Batch n2-game-app-sfc_script_lua_Instance-deec90-0 (sfc::script::lua::Instance, part 1 of 1).
// One Lua state and the load, call and registration helpers the game uses on it. The default constructor creates a
// state (newstate) that the destructor closes; Instance(lua_State*) wraps a state it does not own.
//
// The ASSERT of the chunk reader's "Something is wrong" path follows the gAssertLevel convention of the other sfc files.
#include "dh2/sfc/script/lua/Instance.hpp"

#include <cstddef>
#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"
#include "dh2/IFileStream.hpp"
#include "dh2/StreamBuffer.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/Error.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"

extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

namespace sfc {
namespace script {
namespace lua {

namespace {

constexpr char kInstanceSourceFile[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Utils\\sfc\\script\\lua\\Instance.cpp";

// The original's ASSERT failing branch.
void ReportAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kInstanceSourceFile, line);
    }
}

// The user data of the chunk reader (lua_Reader): five words in the original. [0] the Instance, [1] the IFileStream
// (execFile and loadFile(IFileStream&)), [2] the StreamBuffer (loadFile(StreamBuffer&)), [3] the read buffer and
// [4] its size (1024). The reader reads from [1] when it is set, otherwise from [2].
struct ChunkSource {
    Instance* instance;
    IFileStream* file;
    StreamBuffer* stream;
    char* buffer;
    std::size_t bufferSize;
};

// The size of the read buffer of every chunk load (the original's 1024).
constexpr std::size_t kChunkBufferSize = 1024;

}  // namespace

// 0x31a9f0 sfc::script::lua::Instance::Instance(lua_State*) (C2), 0x31aa20 (C1): wraps a state it does not own.
Instance::Instance(lua_State* state) : m_state(state), m_ownsState(false) {}

// 0x31aa50 sfc::script::lua::Instance::includeIO(): empty in the original.
void Instance::includeIO() {}

// 0x31aa54 sfc::script::lua::Instance::includePackage(): empty in the original.
void Instance::includePackage() {}

// 0x31aa78 sfc::script::lua::Instance::pCall_(unsigned int, sfc::script::lua::ReturnValues&): calls the function on the top
// of the stack with nargs values above it. The status goes into the ReturnValues' Error. On success, the results (the
// values the call left above its base) are appended to ret and popped from the stack.
void Instance::pCall_(unsigned int nargs, ReturnValues& ret) {
    lua_State* state = m_state;
    const int top = lua_gettop(state);
    const int status = lua_pcall(state, static_cast<int>(nargs), LUA_MULTRET, 0);
    ret.m_error.setError(state, status);
    if (ret.m_error.m_status == 0) {
        const int results = 1 - (top - static_cast<int>(nargs)) + lua_gettop(state);
        for (int index = -results; index < 0; ++index) {
            ret._addFromStack(state, index);
        }
        lua_settop(state, ~results);
    }
}

// 0x31ab14 sfc::script::lua::Instance::pCall(char const*, sfc::script::lua::ReturnValues&): fetches the global funcName,
// then calls it with no arguments.
void Instance::pCall(const char* funcName, ReturnValues& ret) {
    lua_getfield(m_state, LUA_GLOBALSINDEX, funcName);
    pCall_(0, ret);
}

// 0x31ab4c sfc::script::lua::Instance::pCall(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&): pushes
// the arguments in order, then calls the function on the stack below them.
void Instance::pCall(const Arguments& args, ReturnValues& ret) {
    for (const Value& value : *args.m_values) {
        value._pushOnStack(m_state);
    }
    pCall_(static_cast<unsigned int>(args.m_values->size()), ret);
}

// 0x31abe8 sfc::script::lua::Instance::pCall(char const*, sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&):
// fetches the global funcName, then calls it with args.
void Instance::pCall(const char* funcName, const Arguments& args, ReturnValues& ret) {
    lua_getfield(m_state, LUA_GLOBALSINDEX, funcName);
    pCall(args, ret);
}

// 0x31ac24 sfc::script::lua::Instance::execFile(IFileStream&, sfc::script::lua::ReturnValues&): loads the file as a chunk
// (named "loadFile()"). When the load succeeded, the chunk runs with pCall_.
void Instance::execFile(IFileStream& file, ReturnValues& ret) {
    char buffer[kChunkBufferSize];
    ChunkSource source{this, &file, nullptr, buffer, kChunkBufferSize};
    const int status = lua_load(m_state, _chunkReader, &source, "loadFile()");
    ret.m_error.setError(m_state, status);
    if (ret.m_error.m_status == 0) {
        pCall_(0, ret);
    }
}

// 0x31acf4 sfc::script::lua::Instance::loadFile(StreamBuffer&): loads the stream as a chunk and, when that succeeded, runs
// it with lua_pcall. The Error holds the first failure. The original returns the Error through a hidden pointer.
Error Instance::loadFile(StreamBuffer& stream) {
    Error result;
    char buffer[kChunkBufferSize];
    ChunkSource source{this, nullptr, &stream, buffer, kChunkBufferSize};
    const int status = lua_load(m_state, _chunkReader, &source, "loadFile()");
    result.setError(m_state, status);
    if (result.m_status == 0) {
        const int runStatus = lua_pcall(m_state, 0, 0, 0);
        result.setError(m_state, runStatus);
    }
    return result;
}

// 0x31ade8 sfc::script::lua::Instance::loadFile(IFileStream&): as loadFile(StreamBuffer&), reading the file.
Error Instance::loadFile(IFileStream& file) {
    Error result;
    char buffer[kChunkBufferSize];
    ChunkSource source{this, &file, nullptr, buffer, kChunkBufferSize};
    const int status = lua_load(m_state, _chunkReader, &source, "loadFile()");
    result.setError(m_state, status);
    if (result.m_status == 0) {
        const int runStatus = lua_pcall(m_state, 0, 0, 0);
        result.setError(m_state, runStatus);
    }
    return result;
}

// 0x31aed8 sfc::script::lua::Instance::setGlobal(char const*, sfc::script::lua::Value const&): sets the global name.
void Instance::setGlobal(const char* name, const Value& value) {
    value._pushOnStack(m_state);
    lua_setfield(m_state, LUA_GLOBALSINDEX, name);
}

// 0x31af08 sfc::script::lua::Instance::registerFunction(char const*, int (*)(lua_State*), sfc::script::lua::Arguments const&):
// sets the global name to a C closure whose upvalues are the values of upvalues, in order.
void Instance::registerFunction(const char* name, int (*function)(lua_State*), const Arguments& upvalues) {
    int count = 0;
    for (const Value& value : *upvalues.m_values) {
        value._pushOnStack(m_state);
        ++count;
    }
    lua_pushcclosure(m_state, function, count);
    lua_setfield(m_state, LUA_GLOBALSINDEX, name);
}

// 0x31afbc sfc::script::lua::Instance::registerFunction(char const*, int (*)(lua_State*)): a C closure with no upvalues.
void Instance::registerFunction(const char* name, int (*function)(lua_State*)) {
    lua_pushcclosure(m_state, function, 0);
    lua_setfield(m_state, LUA_GLOBALSINDEX, name);
}

// 0x31aff0 sfc::script::lua::Instance::includeDebug(): luaopen_debug.
int Instance::includeDebug() {
    return luaopen_debug(m_state);
}

// 0x31aff8 sfc::script::lua::Instance::includeTable(): luaopen_table.
int Instance::includeTable() {
    return luaopen_table(m_state);
}

// 0x31b000 sfc::script::lua::Instance::includeMath(): luaopen_math.
int Instance::includeMath() {
    return luaopen_math(m_state);
}

// 0x31b008 sfc::script::lua::Instance::includeString(): luaopen_string.
int Instance::includeString() {
    return luaopen_string(m_state);
}

// 0x31b010 sfc::script::lua::Instance::includeBase(): luaopen_base.
int Instance::includeBase() {
    return luaopen_base(m_state);
}

// 0x31b018 sfc::script::lua::Instance::_chunkReader(lua_State*, void*, unsigned int*): the lua_Reader of every load.
// Reads from the file stream when ChunkSource::file is set, else from the StreamBuffer (both through the IStreamBase slots tell +0x24,
// size +0x08 and read +0x18); with neither set the ASSERT "Something is wrong!!!" (Instance.cpp:94) fires and the chunk ends. The end of
// the chunk is reached when the read position equals the size; otherwise up to the buffer size is read, the count goes to *size, and the buffer
// is returned.
const char* Instance::_chunkReader(lua_State* /*state*/, void* data, std::size_t* size) {
    ChunkSource* source = static_cast<ChunkSource*>(data);
    IStreamBase* stream = source->file != nullptr ? static_cast<IStreamBase*>(source->file) : static_cast<IStreamBase*>(source->stream);
    if (stream == nullptr) {
        ReportAssert("!\"Something is wrong!!!\"", 94);
        return nullptr;
    }
    if (stream->tell() == stream->size()) {
        return nullptr;
    }
    *size = static_cast<std::size_t>(stream->read(source->buffer, source->bufferSize));
    return source->buffer;
}

// 0x31b180 sfc::script::lua::Instance::~Instance() (D1, complete object), 0x31b1e0 (D2, base object): closes the state
// when this Instance owns it.
Instance::~Instance() {
    if (m_ownsState) {
        lua_close(m_state);
    }
}

// 0x31b1c4 sfc::script::lua::Instance::~Instance() (D0, deleting destructor): compiler-generated (D1, then CustomFree).

// 0x31b268 sfc::script::lua::Instance::Instance() (C1), 0x31b2a8 (C2): creates and owns a new state.
Instance::Instance() : m_state(newstate()), m_ownsState(true) {}

}  // namespace lua
}  // namespace script
}  // namespace sfc
