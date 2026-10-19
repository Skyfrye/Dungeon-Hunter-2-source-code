// OnlineStatusMsg: one multiplayer status line (a player joined or left, the host changed), queued through
// MenuMessageManager<OnlineStatusMsg, 1>. Pushed by PlayerManager::OnHostChangedNotification (0x376380),
// MultiplayerCallback::HandlePlayerJoined (0x49cd94) and OnlineGameState::processEvents (0x49db80); read by
// NativeGetNextOnlineStatusMessage (0x440e5c), which sends the string to the script. As for StatusMsg the std::string is
// the first member (the base).
// Original 32-bit size 0x1c (28): std::deque<OnlineStatusMsg>::_M_push_back_aux_v (0x3761a8) copy-constructs the string
// and copies the word at +0x18; the deque node is 112 bytes (4 elements). The word is read into a local that
// NativeGetNextOnlineStatusMessage never uses.
// Reconstructed from libDungeonHunter2.so pseudocode (push_back 0x376338, pop_front 0x383da8, Flush 0x3f1af4, Invoke
// clone 0x442da0).
#pragma once

#include <string>

#include "dh2/DebugCachedCharacter.hpp"

class OnlineStatusMsg : public std::string {
public:
    OnlineStatusMsg() = default;
    explicit OnlineStatusMsg(const std::string& text) : std::string(text) {}

    // std::string base at +0x00 .. +0x17: the status text.
    int unk_18 = 0;                                                     // +0x18 copied by the deque, never read

    // Statics of the queue (no per-object storage). Definitions: game-app/src/statics_OnlineStatusMsg.cpp.
    static DebugCachedCharacter s_NodeCachedChar;                       // 0x9a53e4 (_ZN15OnlineStatusMsg16s_NodeCachedCharE, .bss, 48 bytes)
    static const char* s_NodeName;                                      // 0x999818 (.data) "_root"
    static const char* s_StartFuncName[];                               // 0x99981c (.data) element 0 is "onOnlineStatusMessage"; one pointer in the binary
    static const char* s_SkipFuncName;                                  // 0x9a5414 (_ZN15OnlineStatusMsg14s_SkipFuncNameE, .bss) null
};
