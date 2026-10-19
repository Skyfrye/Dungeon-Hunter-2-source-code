// StatusMsg: one HUD status line ("Inventory full", loot and level-up notes), queued through
// MenuMessageManager<StatusMsg, 4> (four queues). The producers (ItemObject::Interact 0x3ed144, Character::LevelUp
// 0x3beb88) build a bare std::string and pass it as the message, so the std::string is the first member at +0x00 and is
// modelled as the base, as for DialogMsg and AchievementMsg. NativeGetNextStatusMessage (0x43fec4) copies that string to the
// script.
// Original 32-bit size 0x1c (28): std::deque<StatusMsg>::_M_push_back_aux_v (0x3be0f0) copies the 24-byte string and the
// word at +0x18, and the deque node is 112 bytes (4 elements; STLport's node size is 128 / sizeof). The word at +0x18
// is copied by the deque and read once into a local that NativeGetNextStatusMessage never uses; no producer sets it.
// Reconstructed from libDungeonHunter2.so pseudocode (push_back 0x3be28c, Enqueue clone 0x3ecff8, Invoke clone 0x442c9c).
#pragma once

#include <string>

#include "dh2/DebugCachedCharacter.hpp"

class StatusMsg : public std::string {
public:
    StatusMsg() = default;
    explicit StatusMsg(const std::string& text) : std::string(text) {}

    // std::string base at +0x00 .. +0x17: the status text.
    int unk_18 = 0;                                                     // +0x18 copied by the deque, never read

    // Statics of the queue (no per-object storage). Definitions: game-app/src/statics_StatusMsg.cpp.
    static DebugCachedCharacter s_NodeCachedChar;                       // 0x9a53b0 (_ZN9StatusMsg16s_NodeCachedCharE, .bss, 48 bytes): cache of the HUD node that receives the callback
    static const char* s_NodeName;                                      // 0x999810 (.data) "_root"
    static const char* s_StartFuncName[];                               // 0x999814 (.data) element 0 is "onStatusMessage"; one pointer in the binary
    static const char* s_SkipFuncName;                                  // 0x9a53e0 (_ZN9StatusMsg14s_SkipFuncNameE, .bss) null
};
