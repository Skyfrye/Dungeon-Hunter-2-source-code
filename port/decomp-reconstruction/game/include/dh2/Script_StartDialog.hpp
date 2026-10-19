// Script_StartDialog: script command that shows a dialog message. Init caches whether the dialog
// style is EnterLocationDialog in the base field ScriptCmdImpl::unk_04 (+0x04). Execute, when not
// skipping, enqueues a DialogMsg built from the argument object (m_args at +0x0c; fields at +0x08,
// +0x0c, +0x10 of that record), or flushes the queued messages for EnterLocationDialog when one is
// already waiting. IsBlocking is always false. Adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_StartDialog> news 16 bytes.
// Reconstructed from libDungeonHunter2.so pseudocode (Init 0x459034, Execute 0x460fe8,
// IsBlocking 0x45568c, factory 0x458a70).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_StartDialog : public ScriptCmdImpl {
public:
    ~Script_StartDialog();                                              // deleting destructor, class-facts

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x00, 0x08 and 0x0c).
    // The original Init returns bool (the EnterLocationDialog flag); the slot is void in the base.
    void Init() override;                                               // slot 0x00: 0x459034
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x460fe8
    bool IsBlocking() const override;                                   // slot 0x0c: 0x45568c returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own; Init writes unk_04.
};
