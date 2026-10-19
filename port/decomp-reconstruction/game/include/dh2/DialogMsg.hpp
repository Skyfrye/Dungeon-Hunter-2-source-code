// DialogMsg: one dialog line, queued through MenuMessageManager<DialogMsg, 1>. Both string constructors and the
// id constructors pass the title and the text through ParsePlayerName. The style is the DialogStyles id that
// Script_StartDialog compares with EnterLocationDialog. The actor name is the DialogActors entry for the
// actor index. The first string (the title) is the std::string base (class-facts lists it as the base).
// Original 32-bit size 0x4c (76): 0x18 + 0x18 + 4 + 0x18, as Script_StartDialogID notes.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x31feb0, copy ctor 0x433b9c, SetActorName 0x433dd8,
// ctors 0x433ea8 / 0x4343d8 and 0x434434 / 0x43452c, operator= 0x43f828).
#pragma once

#include <string>

#include "dh2/DebugCachedCharacter.hpp"

class DialogMsg : public std::string {
public:
    ~DialogMsg();                                                       // 0x31feb0

    // Methods in original order.
    DialogMsg(const DialogMsg& other);                                  // 0x433b9c
    void SetActorName(int actorIndex);                                  // 0x433dd8 copies the DialogActors name string into m_actorName, if the index is >= 0
    DialogMsg(const std::string& title, const std::string& text, int style, int actorIndex);  // 0x433ea8 / 0x4343d8
    DialogMsg(int titleId, int textId, int style, int actorIndex);      // 0x434434 / 0x43452c, ids go through StringManager::getString
    DialogMsg& operator=(const DialogMsg& other);                       // 0x43f828

    // std::string base at +0x00 .. +0x17: the title.
    std::string m_text;                                                 // +0x18 the text, after ParsePlayerName
    int m_style;                                                        // +0x30 DialogStyles id
    std::string m_actorName;                                            // +0x34 actor name, empty when none

    // Name table of the DialogMsg queue: ELF _ZN9DialogMsg15s_StartFuncNameE at 0x999830, pointer values, element 0
    // is "StartDialog" (Script_StartDialogID::Execute). The element count is not recovered (the next symbol is at
    // 0x999838), so the bound stays open; the definition goes in the DialogMsg source.
    static const char* s_StartFuncName[];

    // Skip function name of the DialogMsg queue (ELF _ZN9DialogMsg14s_SkipFuncNameE, a pointer). When it is set, the
    // skip step invokes it on the queue (MenuBase::FS_StopDialog). The definition goes in the DialogMsg source.
    static const char* s_SkipFuncName;

    // The HUD node that receives the callbacks: the path "_root" (ELF _ZN9DialogMsg10s_NodeNameE at 0x99982c, .data) and the cache of the
    // found character (_ZN9DialogMsg16s_NodeCachedCharE at 0x9a5448, .bss, 48 bytes). Read by MenuMessageManager<DialogMsg, 1>::Invoke.
    static const char* s_NodeName;
    static DebugCachedCharacter s_NodeCachedChar;
};
