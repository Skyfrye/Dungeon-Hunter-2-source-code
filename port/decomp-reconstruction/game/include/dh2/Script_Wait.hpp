// Script_Wait: script command that holds the script for a fixed time. Execute resets the elapsed
// counter and copies the duration from its data record (ScriptCmdImpl::m_args, record +0x08). Update adds
// Application's frame delta to the counter each frame, and IsBlocking holds while the counter is below the
// duration.
// Original 32-bit size 0x18 (GetNewScriptCmdImplInstance<Script_Wait> 0x4585e0 news 0x18); members end at +0x18.
// Reconstructed from libDungeonHunter2.so pseudocode and assembly (Update 0x4597b4, IsBlocking 0x455754,
// Execute 0x45c438).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_Wait : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x04, 0x08 and 0x0c).
    void Update() override;                                            // slot 0x04: 0x4597b4 adds Application::GetDt
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45c438
    bool IsBlocking() const override;                                  // slot 0x0c: 0x455754

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    int m_elapsed;                                                     // +0x10 time accumulated since Execute, reset to 0 there
    int m_duration;                                                    // +0x14 copied from the data record (+0x08) by Execute
};
