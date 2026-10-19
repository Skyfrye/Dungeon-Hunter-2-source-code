// Script_KillActor: script command that kills a named actor. Execute looks the object up by name in
// the command's data record and, when it is a Character, calls v2Controller::Cmd_Kill on its controller
// with the controller's flag at +0x09 set for the duration of the call. Blocking is never set.
// Original allocation 16 bytes (GetNewScriptCmdImplInstance<Script_KillActor>, 0x4580c4: MOV R0,#0x10). No members of its
// own were recovered: ScriptCmdImpl occupies +0x00 .. +0x0f and the rest is unused.
// Argument record (m_args): +0x0c const char*, the actor name.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45ea04, IsBlocking 0x455830).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_KillActor : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45ea04
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455830 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered; the object is 16 bytes, so this pad is larger than the original (kept, not deleted)
};
