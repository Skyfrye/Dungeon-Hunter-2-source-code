// Storage of the static data members of CharMenuTutorialMsg that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include "dh2/CharMenuTutorialMsg.hpp"

const char* CharMenuTutorialMsg::s_StartFuncName = nullptr;  // 0x9a54b0, .bss
const char* CharMenuTutorialMsg::s_SkipFuncName = nullptr;   // 0x9a54b4, .bss
const char* CharMenuTutorialMsg::s_NodeName = nullptr;             // 0x9a54ac, .bss (no code stores it)
DebugCachedCharacter CharMenuTutorialMsg::s_NodeCachedChar;        // 0x9a547c, .bss, 48 bytes
