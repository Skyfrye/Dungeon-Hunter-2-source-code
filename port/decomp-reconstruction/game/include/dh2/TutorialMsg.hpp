// TutorialMsg: one in-game tutorial popup, queued through MenuMessageManager<TutorialMsg, 1>. Pushed by
// Script_EnqueueTutorialMessage::Execute (0x4613d4) from the script data (its string id and its duration); read by
// NativeGetNextTutorialMessage (0x450298), which looks the id up in the StringManager ("TutorialMessage") and passes the
// duration on as "TutorialDuration".
// Original 32-bit size 8: two words. The deque node is 128 bytes (16 elements). Not a std::string derivative.
// Reconstructed from libDungeonHunter2.so pseudocode (push_back aux 0x46124c, Flush clone 0x3f2274, Skip clone 0x46026c,
// Invoke clones 0x442a14 and 0x45a030).
#pragma once

#include <cstdint>

#include "dh2/DebugCachedCharacter.hpp"

class TutorialMsg {
public:
    TutorialMsg(std::int32_t stringId, std::int32_t duration) : m_stringId(stringId), m_duration(duration) {}

    std::int32_t m_stringId;                                            // +0x00 StringManager id of the text (Structs::EnqueueTutorialMessage +0x0c)
    std::int32_t m_duration;                                            // +0x04 shown as "TutorialDuration" (Structs::EnqueueTutorialMessage +0x08)

    // Statics of the queue (no per-object storage). Definitions: game-app/src/statics_TutorialMsg.cpp.
    static DebugCachedCharacter s_NodeCachedChar;                       // 0x9a5418 (_ZN11TutorialMsg16s_NodeCachedCharE, .bss, 48 bytes)
    static const char* s_NodeName;                                      // 0x999820 (.data) "_root.tutorials_dialog"
    static const char* s_StartFuncName[];                               // 0x999824 (.data) element 0 is "onTutorialMessage"; one pointer in the binary
    static const char* s_SkipFuncName[];                                // 0x999828 (.data) element 0 is "skipTutorialMessage"; one pointer in the binary
};
