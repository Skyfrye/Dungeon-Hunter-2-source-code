// Storage of the static data members of StatusMsg that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include "dh2/StatusMsg.hpp"

DebugCachedCharacter StatusMsg::s_NodeCachedChar;                  // 0x9a53b0, .bss, 48 bytes
const char* StatusMsg::s_NodeName = "_root";                       // 0x999810, .data: points at "_root" (0x8c3208)
const char* StatusMsg::s_StartFuncName[] = {"onStatusMessage"};    // 0x999814, .data: points at "onStatusMessage" (0x8cb620)
const char* StatusMsg::s_SkipFuncName = nullptr;                   // 0x9a53e0, .bss
