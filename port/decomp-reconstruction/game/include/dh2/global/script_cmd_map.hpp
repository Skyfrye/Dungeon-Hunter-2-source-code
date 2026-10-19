// The script command factory tables of ScriptManager::LoadScriptFile. The original's s_scriptCmdImplMap (ELF 0x968c00, 320 bytes) is one array
// of 160 function pointers; here the two halves are two arrays, both indexed by the ScriptCmdID constant (0 is ExecScript):
//   s_scriptCmdImplMap[id]  GetNewScriptCmdImplInstance<Script_X>, the command object (a ScriptCmdImpl)
//   s_scriptCmdDataMap[id]  Structs::GetNewScriptCmdDataInstance<Structs::X>, its argument record (a Structs::ScriptCmd)
// Defined in game-app/src/script_cmd_map.cpp.
#pragma once

class ScriptCmdImpl;
namespace Structs {
class ScriptCmd;
}

using ScriptCmdImplFactory = ScriptCmdImpl* (*)();
using ScriptCmdDataFactory = Structs::ScriptCmd* (*)();

constexpr int kScriptCmdTypeCount = 80;

extern const ScriptCmdImplFactory s_scriptCmdImplMap[kScriptCmdTypeCount];
extern const ScriptCmdDataFactory s_scriptCmdDataMap[kScriptCmdTypeCount];
