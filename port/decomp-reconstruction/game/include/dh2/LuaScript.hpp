// LuaScript: one Lua state plus the game's Lua function bindings (Include, Trace, SetInt, Rand, ...).
// Original size 0x98 (operator new(152)); Level embeds one at +0x44 (m_script), LuaManager owns the others.
// Vtable: slots +0x00/+0x04 are the destructors, nothing else is virtual.
// The sfc::script::lua::Instance (+0x04, 12 bytes) and sfc::script::lua::Binder (+0x10, 12 bytes: vptr,
// Instance*, lua_State*) are the script-library types of dh2/sfc/script/lua. Binder's Instance pointer is set
// to &m_instance in the constructor.
// STLport maps/sets below are 24 bytes each in the original (color byte, parent, left, right, node count, pad).
#pragma once

#include <cstdint>
#include <map>
#include <set>
#include <string>

#include "dh2/sfc/script/lua/Binder.hpp"
#include "dh2/sfc/script/lua/Instance.hpp"

namespace sfc { namespace script { namespace lua {
class Arguments;
class ReturnValues;
}}}  // namespace sfc::script::lua

class LuaScript {
public:
    explicit LuaScript(bool skipBindings);             // 0x37c584 / 0x37c674; BindFunction() runs when false
    virtual ~LuaScript();                              // +0x00 0x37c004 (D1), +0x04 0x37c148 (D0); 0x37bec0 is the D2 body

    int Load(const char* file);                        // 0x37b574 LuaManager::AddFile(this, file)
    void BindFunction();                               // 0x37b5a0 registers the C++ callbacks below with the Lua state
    bool IsInVFTable(const char* funcName) const;      // 0x37c2a0 hash lookup in m_vfTable
    const char* _GetFuncName(const char* funcName) const;  // 0x37c314 mapped (virtual-function table) name, else the argument
    void Call(const char* funcName);                   // 0x37c514
    int Call(const char* funcName, const sfc::script::lua::Arguments& args,
             sfc::script::lua::ReturnValues& ret);     // 0x37c390 clears ret, pCall, ++s_numCalls; returns pCall's result
    void Call(const char* funcName, const sfc::script::lua::Arguments& args);  // 0x37c41c
    int Call(const char* funcName, sfc::script::lua::ReturnValues& ret);       // 0x37c494
    int GetInt(const char* name) const;                // 0x37da30 script-side integer by name hash (0 and inserted when absent; _ZNK symbol)
    void SetInt(const char* name, int value);          // 0x37d990

    // Lua callbacks (void* is the LuaScript the binding was registered with).
    static void _Include(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);               // 0x37efe4
    static void _Trace(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);                 // 0x37ee80
    static void _SetInt(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);                // 0x37de5c
    static void _GetInt(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);                // 0x37ec14
    static void _AddToVFTable(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);          // 0x37ec70
    static void _PushVFTable(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);           // 0x37be00
    static void _PopVFTable(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);            // 0x37dc44
    static void _IncludePyCst(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);          // 0x37b568
    static void _IncludePyStruct(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);       // 0x37b56c
    static void _IncludePyArray(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);        // 0x37b570
    static void _GetGameScript(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);         // 0x37c934
    static void _GetHostPlayer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);         // 0x37ca60
    static void _GetHostPlayerDifficulty(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);  // 0x37cb8c
    static void _GetNumPlayers(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);         // 0x37cbd8
    static void _GetHostPlayerLevel(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);    // 0x37cc00
    static void _IsPlayerCharacter(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);     // 0x37ddc8
    static void _Rand(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);                  // 0x37df30
    static void _RandF(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);                 // 0x37e2d8
    static void _DivFixed(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);              // 0x37e068
    static void _MulFixed(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);              // 0x37e1a4
    static void _ToFixed(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);               // 0x37ebc4
    static void _FromFixed(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);             // 0x37ee84
    static void _PlayMusic(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);             // 0x37e420
    static void _PlaySound(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);             // 0x37e578
    static void _StopSound(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);             // 0x37e730
    static void _BitOr(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);                 // 0x37e814
    static void _BitAnd(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);                // 0x37e9ec
    static void _BitXOr(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _BitNot(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _CallPyScript(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);          // 0x37ef3c
    static void _GetGameObjectsByType(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetCurrentLevelRange(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetPyCst(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetPyStruct(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetPyOID(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _SetGameType(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);

    static int s_numCalls;                             // incremented by every Call() that reaches Lua
    static bool s_dumpCallList;                        // ELF 0x9a2404 (1 byte, .bss): GSLevel::Update clears it and sets it when the Lua_DumpCalls debug switch is on; nothing else reads it

    // ---- members (original 32-bit offsets) ----
    // +0x00 vptr
    sfc::script::lua::Instance m_instance;             // +0x04 the Lua state (includeBase/Math/Table/String called in BindFunction); its dtor closes the state
    sfc::script::lua::Binder m_binder;                 // +0x10 publishes the callbacks (Instance* = &m_instance, m_state zero)
    mutable std::map<uint32_t, int> m_ints;            // +0x1c name hash -> value (GetInt/SetInt); original map is 24 bytes; mutable because const GetInt inserts absent names
    std::map<uint32_t, std::string> m_vfTable;         // +0x34 function name hash -> overriding name (IsInVFTable, _GetFuncName)
    std::map<uint32_t, std::string> m_vfTableSaved;    // +0x4c entries of m_vfTable replaced while collecting; _PopVFTable restores them
    bool m_vfTableCollecting;                          // +0x64 set by _PushVFTable, cleared by _PopVFTable
    uint8_t pad_65[3];
    std::string m_scriptDirectory;                     // +0x68 script directory prefix, assigned from the second argument of GameObject::LoadExternalScript (0x38ef60, "data/scripts/objects/" in Container); the name is confirmed
    std::set<std::string> unk_80;                      // +0x80 string set, only cleared in the destructor
    // original size 0x98 (the last 4 bytes are alignment)
};
