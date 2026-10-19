// Storage of the static data members of OnlineStatusMsg that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include "dh2/OnlineStatusMsg.hpp"

DebugCachedCharacter OnlineStatusMsg::s_NodeCachedChar;                      // 0x9a53e4, .bss, 48 bytes
const char* OnlineStatusMsg::s_NodeName = "_root";                           // 0x999818, .data: points at "_root" (0x8c3208)
const char* OnlineStatusMsg::s_StartFuncName[] = {"onOnlineStatusMessage"};  // 0x99981c, .data: points at "onOnlineStatusMessage" (0x8cb630)
const char* OnlineStatusMsg::s_SkipFuncName = nullptr;                       // 0x9a5414, .bss
