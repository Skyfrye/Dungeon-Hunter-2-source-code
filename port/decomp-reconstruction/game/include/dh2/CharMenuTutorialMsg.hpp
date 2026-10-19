// CharMenuTutorialMsg: one queued tutorial message for the character menu. It holds a string id and
// two strings naming the menu frame and menu. Queued through MenuMessageManager<CharMenuTutorialMsg, 1>.
// Original 32-bit size 0x34 (52): int at +0x00, std::string at +0x04 and +0x1c (24 bytes each).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x433b44 / 0x433b70, copy ctor 0x45a780).
// No vtable of its own. The vtable belongs to MenuMessageManager<CharMenuTutorialMsg, 1>.
#pragma once

#include <cstdint>
#include <deque>
#include <string>

#include "dh2/DebugCachedCharacter.hpp"

class CharMenuTutorialMsg {
public:
    CharMenuTutorialMsg(int stringId, const std::string& frame, const std::string& menu); // 0x433b44 (C1), 0x433b70 (C2)
    CharMenuTutorialMsg(const CharMenuTutorialMsg& other);              // 0x45a780

    int m_stringId;                                                     // +0x00 string table id of the tutorial text
    std::string m_frame;                                                // +0x04 menu frame name (24 bytes at 32-bit)
    std::string m_menu;                                                 // +0x1c menu name (24 bytes at 32-bit)

    // Statics (no per-object storage). The two function-name pointers are 4-byte .bss symbols in the original.
    static const char* s_StartFuncName;                                 // 0x9a54b0 (symbol CharMenuTutorialMsg::s_StartFuncName)
    static const char* s_SkipFuncName;                                  // 0x9a54b4 (symbol CharMenuTutorialMsg::s_SkipFuncName), read by Script_SkipCharMenuTutorialMessage::Execute 0x4603d0
    // Tutorial queue global (no symbol; Hex-Rays dword_99FBB8). std::deque::pop_front is called on &dword_99FBB8, so
    // the deque object is at 0x99fbb8, and dword_99FBC8 (0x10 later) is the other word of the empty test.
    // Pushed by Script_EnqueueCharMenuTutorialMessage::Execute 0x460b1c,
    // read by NativeGetCharMenuTutorialMessage 0x44c7a0, popped by Script_SkipCharMenuTutorialMessage 0x4603d0.
    static std::deque<CharMenuTutorialMsg> s_queue;

    // The HUD node that receives the callbacks (_ZN19CharMenuTutorialMsg10s_NodeNameE at 0x9a54ac, .bss: null, no code stores it) and the
    // cache of the found character (_ZN19CharMenuTutorialMsg16s_NodeCachedCharE at 0x9a547c, .bss, 48 bytes).
    static const char* s_NodeName;
    static DebugCachedCharacter s_NodeCachedChar;
};
