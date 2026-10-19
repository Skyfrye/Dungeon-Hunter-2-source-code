// Storage of the static data members of TutorialMsg that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include "dh2/TutorialMsg.hpp"

DebugCachedCharacter TutorialMsg::s_NodeCachedChar;                          // 0x9a5418, .bss, 48 bytes
const char* TutorialMsg::s_NodeName = "_root.tutorials_dialog";              // 0x999820, .data: points at the string (0x8cb648)
const char* TutorialMsg::s_StartFuncName[] = {"onTutorialMessage"};          // 0x999824, .data: points at "onTutorialMessage" (0x8cb660)
const char* TutorialMsg::s_SkipFuncName[] = {"skipTutorialMessage"};         // 0x999828, .data: points at "skipTutorialMessage" (0x8cb678)
