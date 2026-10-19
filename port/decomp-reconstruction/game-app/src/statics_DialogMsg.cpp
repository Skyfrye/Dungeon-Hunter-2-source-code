// Storage of the static data members of DialogMsg that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include "dh2/DialogMsg.hpp"

const char* DialogMsg::s_StartFuncName[] = {"StartDialog"};  // 0x999830, .data: points at "StartDialog" (0x8cb690)
const char* DialogMsg::s_SkipFuncName = nullptr;             // 0x9a5478, .bss
const char* DialogMsg::s_NodeName = "_root";                 // 0x99982c, .data: points at "_root" (0x8c3208)
DebugCachedCharacter DialogMsg::s_NodeCachedChar;            // 0x9a5448, .bss, 48 bytes
