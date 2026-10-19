// Batch g1-game-app-LuaScript-5015a8-0 (LuaScript, part 1 of 3). REDO pass: r2a-game-app-LuaScript-5015a8-0 completed
// the bodies that waited on the sfc::script::lua headers (Arguments, ReturnValues, Value, Instance, Binder), which are
// now in dh2/sfc/script/lua, and on dh2/Character.hpp, dh2/PlayerManager.hpp and dh2/global/IsMultiplayerGame.hpp.
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// The virtual-function table and the integer table are std::map (the original uses STLport rb-trees with
// the same header layout), so the tree bookkeeping is the containers' own. Member offsets are recorded in
// dh2/LuaScript.hpp.
//
// The Lua instance and binder are the real sfc::script::lua::Instance and Binder members (dh2/LuaScript.hpp).
// Calls into the sfc wrapper use its declared signatures; those definitions come from the sfc::script::lua batch.
#include "dh2/LuaScript.hpp"

#include <string>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"  // the hosting player's Character, pushed as UserData* by _GetHostPlayer
#include "dh2/Level.hpp"
#include "dh2/LuaManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/ctrl_camera.hpp"  // ApplicationGetInstance(): the Singleton<Application>::s_inst object (0x99f72c)
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C: the PlayerManager global
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "glitch-core-io/core/strings.hpp"

// Number of Call() invocations that reached Lua. Data, not a function; defined here because the Call bodies
// of this batch increment it.
int LuaScript::s_numCalls = 0;
bool LuaScript::s_dumpCallList = false;

// 0x37b568 LuaScript::_IncludePyCst(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Empty body (asm: BX LR).
void LuaScript::_IncludePyCst(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}

// 0x37b56c LuaScript::_IncludePyStruct(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Empty body (asm: BX LR).
void LuaScript::_IncludePyStruct(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}

// 0x37b570 LuaScript::_IncludePyArray(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Empty body (asm: BX LR).
void LuaScript::_IncludePyArray(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}

// 0x37b574 LuaScript::Load(char const*)
// Hands the file to LuaManager::AddFile with this script. The original passes the LuaManager from the global
// dword_99F768, which is Singleton<Application>::s_inst + 0x3c, that is Application::m_luaManager (Application.hpp
// +0x3c). It is read here through ApplicationGetInstance().
int LuaScript::Load(const char* file) {
    return ApplicationGetInstance().m_luaManager->AddFile(this, file);
}

// 0x37b5a0 LuaScript::BindFunction()
// The original runs, in this order: Instance::includeBase, includeMath, includeTable and includeString on m_instance
// (+0x04), then Binder::bindFunction on m_binder (+0x10) once for each name below. Each callback gets this LuaScript
// as its void* argument. The original returns the result of the last bindFunction call; Binder::bindFunction is void in
// dh2/sfc/script/lua/Binder.hpp, so no result is returned here. The callbacks have their own rows.
// Binding table, in call order (name -> callback):
//   "Include" -> _Include                 "Trace" -> _Trace                     "SetInt" -> _SetInt
//   "GetInt" -> _GetInt                   "AddToVFTable" -> _AddToVFTable       "PushVFTable" -> _PushVFTable
//   "PopVFTable" -> _PopVFTable           "ToFixed" -> _ToFixed                 "FromFixed" -> _FromFixed
//   "MulFixed" -> _MulFixed               "DivFixed" -> _DivFixed               "Rand" -> _Rand
//   "RandF" -> _RandF                     "BitNot" -> _BitNot                   "BitAnd" -> _BitAnd
//   "BitOr" -> _BitOr                     "BitXOr" -> _BitXOr                   "GetPyCst" -> _GetPyCst
//   "GetPyStruct" -> _GetPyStruct         "GetPyOID" -> _GetPyOID               "CallPyScript" -> _CallPyScript
//   "GetNumPlayers" -> _GetNumPlayers     "GetHostPlayer" -> _GetHostPlayer     "GetHostPlayerLevel" -> _GetHostPlayerLevel
//   "GetHostPlayerDifficulty" -> _GetHostPlayerDifficulty
//   "GetCurrentLevelRange" -> _GetCurrentLevelRange                             "GetGameObjectsByType" -> _GetGameObjectsByType
//   "SetGameType" -> _SetGameType         "GetGameScript" -> _GetGameScript
//   "OnTargetDied" -> _IsPlayerCharacter  (the name is OnTargetDied in the original and the callback is _IsPlayerCharacter; kept as is)
//   "PlayMusic" -> _PlayMusic             "PlaySound" -> _PlaySound             "StopSound" -> _StopSound
void LuaScript::BindFunction() {
    m_instance.includeBase();
    m_instance.includeMath();
    m_instance.includeTable();
    m_instance.includeString();
    m_binder.bindFunction("Include", &LuaScript::_Include, this);
    m_binder.bindFunction("Trace", &LuaScript::_Trace, this);
    m_binder.bindFunction("SetInt", &LuaScript::_SetInt, this);
    m_binder.bindFunction("GetInt", &LuaScript::_GetInt, this);
    m_binder.bindFunction("AddToVFTable", &LuaScript::_AddToVFTable, this);
    m_binder.bindFunction("PushVFTable", &LuaScript::_PushVFTable, this);
    m_binder.bindFunction("PopVFTable", &LuaScript::_PopVFTable, this);
    m_binder.bindFunction("ToFixed", &LuaScript::_ToFixed, this);
    m_binder.bindFunction("FromFixed", &LuaScript::_FromFixed, this);
    m_binder.bindFunction("MulFixed", &LuaScript::_MulFixed, this);
    m_binder.bindFunction("DivFixed", &LuaScript::_DivFixed, this);
    m_binder.bindFunction("Rand", &LuaScript::_Rand, this);
    m_binder.bindFunction("RandF", &LuaScript::_RandF, this);
    m_binder.bindFunction("BitNot", &LuaScript::_BitNot, this);
    m_binder.bindFunction("BitAnd", &LuaScript::_BitAnd, this);
    m_binder.bindFunction("BitOr", &LuaScript::_BitOr, this);
    m_binder.bindFunction("BitXOr", &LuaScript::_BitXOr, this);
    m_binder.bindFunction("GetPyCst", &LuaScript::_GetPyCst, this);
    m_binder.bindFunction("GetPyStruct", &LuaScript::_GetPyStruct, this);
    m_binder.bindFunction("GetPyOID", &LuaScript::_GetPyOID, this);
    m_binder.bindFunction("CallPyScript", &LuaScript::_CallPyScript, this);
    m_binder.bindFunction("GetNumPlayers", &LuaScript::_GetNumPlayers, this);
    m_binder.bindFunction("GetHostPlayer", &LuaScript::_GetHostPlayer, this);
    m_binder.bindFunction("GetHostPlayerLevel", &LuaScript::_GetHostPlayerLevel, this);
    m_binder.bindFunction("GetHostPlayerDifficulty", &LuaScript::_GetHostPlayerDifficulty, this);
    m_binder.bindFunction("GetCurrentLevelRange", &LuaScript::_GetCurrentLevelRange, this);
    m_binder.bindFunction("GetGameObjectsByType", &LuaScript::_GetGameObjectsByType, this);
    m_binder.bindFunction("SetGameType", &LuaScript::_SetGameType, this);
    m_binder.bindFunction("GetGameScript", &LuaScript::_GetGameScript, this);
    m_binder.bindFunction("OnTargetDied", &LuaScript::_IsPlayerCharacter, this);
    m_binder.bindFunction("PlayMusic", &LuaScript::_PlayMusic, this);
    m_binder.bindFunction("PlaySound", &LuaScript::_PlaySound, this);
    m_binder.bindFunction("StopSound", &LuaScript::_StopSound, this);
}

// 0x37be00 LuaScript::_PushVFTable(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Starts a collection: the saved-entry map (+0x4c) is emptied when it holds anything, and m_vfTableCollecting
// (+0x64) is set. The arguments and the return values are not used. self is the LuaScript.
void LuaScript::_PushVFTable(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void* self) {
    LuaScript* script = static_cast<LuaScript*>(self);
    script->m_vfTableSaved.clear();     // +0x4c
    script->m_vfTableCollecting = true;  // +0x64
}

// 0x37c004 LuaScript::~LuaScript()  (D1, complete-object destructor)
// 0x37bec0 LuaScript::~LuaScript()  (D2, base-object destructor)
// The original empties unk_80 (+0x80), the string m_scriptDirectory (+0x68), m_vfTableSaved (+0x4c), m_vfTable (+0x34)
// and m_ints (+0x1c), resets the Binder vptr at +0x10 and calls sfc::script::lua::Instance::~Instance on m_instance
// (+0x04). The members are declared in the order m_instance, m_binder, m_ints, m_vfTable, m_vfTableSaved,
// m_vfTableCollecting, pad, m_scriptDirectory, unk_80, so member destruction runs the same steps in the same order:
// unk_80, m_scriptDirectory, m_vfTableSaved, m_vfTable, m_ints, m_binder (~Binder, empty) and m_instance (~Instance,
// which closes the state it owns). Nothing is left for the body to do. One C++ destructor covers both addresses.
LuaScript::~LuaScript() {}

// 0x37c148 LuaScript::~LuaScript()  (D0, deleting destructor)
// Skipped: compiler-generated deleting destructor. The original runs D1 (0x37c004) and then CustomFree(this). C++
// delete supplies it from the virtual destructor, so no body is written.

// 0x37c2a0 LuaScript::IsInVFTable(char const*) const
// Hashes the name and tests whether m_vfTable (+0x34) holds that hash. The original searches the rb-tree for the
// first key not below the hash and checks for equality, which is what find() does.
bool LuaScript::IsInVFTable(const char* funcName) const {
    return m_vfTable.find(glitch::core::hashString(funcName)) != m_vfTable.end();
}

// 0x37c314 LuaScript::_GetFuncName(char const*) const
// Returns the mapped name stored under the hash of funcName, or funcName itself when the hash is not in
// m_vfTable. The original returns the stored string's character data (node +0x28), which is c_str() here.
const char* LuaScript::_GetFuncName(const char* funcName) const {
    const auto entry = m_vfTable.find(glitch::core::hashString(funcName));
    return entry != m_vfTable.end() ? entry->second.c_str() : funcName;
}

// 0x37c390 LuaScript::Call(char const*, sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&)
// Clears the value vector of ret (ReturnValues +0x24), maps the name with _GetFuncName, runs
// sfc::script::lua::Instance::pCall(m_instance, name, args, ret) and increments s_numCalls.
// The declared int return is not an interface of the original: the asm (0x37c390) leaves whatever the last call left
// in r0, and sfc::script::lua::Instance::pCall is void (0x31abe8: lua_getfield then a tail branch to the void
// pCall(args), 60 bytes), so the original never produces a value at all. Every caller in the binary ignores it
// (checked with xrefs_to 0x37c390: TriggerTrap::CanTrigger 0x39eb08 and the fourteen CharAISkillScript methods all
// branch straight on without reading r0). The body is therefore complete and 0 is returned.
int LuaScript::Call(const char* funcName, const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret) {
    ret.m_valueList->clear();
    const char* const name = _GetFuncName(funcName);
    m_instance.pCall(name, args, ret);
    ++s_numCalls;
    return 0;
}

// 0x37c41c LuaScript::Call(char const*, sfc::script::lua::Arguments const&)
// Builds a ReturnValues on the stack, calls the three-argument Call with it and destroys it. The result of that call
// is discarded by this overload, so this body has no open part of its own.
void LuaScript::Call(const char* funcName, const sfc::script::lua::Arguments& args) {
    sfc::script::lua::ReturnValues ret;
    Call(funcName, args, ret);
}

// 0x37c494 LuaScript::Call(char const*, sfc::script::lua::ReturnValues&)
// Clears the value vector of ret, maps the name with _GetFuncName, runs sfc::script::lua::Instance::pCall(m_instance,
// name, ret) and increments s_numCalls. Same return-value situation as the three-argument Call (0x37c390): the
// original's int is the previous call's r0 and pCall is void, and the callers ignore it (xrefs_to 0x37c494:
// LuaScript::Call(char const*) 0x37c554 and eight CharAISkillScript methods). The body is complete.
int LuaScript::Call(const char* funcName, sfc::script::lua::ReturnValues& ret) {
    ret.m_valueList->clear();
    const char* const name = _GetFuncName(funcName);
    m_instance.pCall(name, ret);
    ++s_numCalls;
    return 0;
}

// 0x37c514 LuaScript::Call(char const*)
// Builds a ReturnValues on the stack and calls Call(name, ret) with it. The result is discarded by this overload.
void LuaScript::Call(const char* funcName) {
    sfc::script::lua::ReturnValues ret;
    Call(funcName, ret);
}

// 0x37c584 LuaScript::LuaScript(bool)  (C1, complete-object constructor)
// 0x37c674 LuaScript::LuaScript(bool)  (C2, base-object constructor)
// One C++ constructor covers both. The members are constructed in declaration order, which matches the original:
// m_instance (Instance::Instance, which creates and owns a Lua state), m_binder (its vptr), then the empty maps, the
// string and unk_80. The body does the rest: the Binder's Instance pointer is &m_instance (this+4) and its state is
// zero, m_vfTableCollecting (+0x64) is cleared, and BindFunction() runs when skipBindings is false.
LuaScript::LuaScript(bool skipBindings) {
    m_binder.m_instance = &m_instance;
    m_binder.m_state = nullptr;
    m_vfTableCollecting = false;  // +0x64
    if (!skipBindings) {
        BindFunction();
    }
}

// 0x37c934 LuaScript::_GetGameScript(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With a current level (Application::GetCurrentLevel), pushes Level::GetMPGameScript() (the level config's multiplayer game script name) as a string.
void LuaScript::_GetGameScript(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues& ret, void*) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr) {
        ret.pushString(level->GetMPGameScript());
    }
}

// 0x37ca60 LuaScript::_GetHostPlayer(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes the hosting player's Character as user data. The original reads the pointer at PlayerInfo +0x660
// (Hex-Rays *((UserData**)info + 408)) and pushes it unchanged. PlayerInfo::unk_660 is the Character* at +0x660. The
// UserData base of Character is at its offset 0 (GameObject is the primary base and ObjectBase holds the UserData), so
// the implicit upcast passes the same pointer.
void LuaScript::_GetHostPlayer(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues& ret, void*) {
    ret.pushUserData(dword_99F76C->GetHostingPlayer()->unk_660);
}

// 0x37cb8c LuaScript::_GetHostPlayerDifficulty(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes the current level's difficulty (Level +0x118, Level::m_difficulty) as an integer, or 0 when there is no
// current level.
void LuaScript::_GetHostPlayerDifficulty(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues& ret, void*) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    ret.pushInteger(level != nullptr ? level->m_difficulty : 0);
}
