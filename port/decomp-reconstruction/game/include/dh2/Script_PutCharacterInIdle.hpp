// Script_PutCharacterInIdle: script command that sets a named character's state machine to idle,
// once the character is not in limbus and not awaiting spawn. Execute stores the wait-for-animation
// flag (!skipping) in the static waitForAnim and calls Script_CharacterState_Callback with SetState.
// Adds no object members: the ScriptCmdImpl m_args block (+0x0c) holds the character name at +0x0c.
// Original 32-bit size 0x10 (16), the ScriptCmdImpl size; no own members (not verified against the factory).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45d590, SetState 0x45971c, IsBlocking 0x45578c returns false).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class ObjectBase;

class Script_PutCharacterInIdle : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45d590
    bool IsBlocking() const override;                                   // slot 0x0c: 0x45578c returns false

    // Callback passed to Script_CharacterState_Callback. Its pseudocode returns int, but the call
    // site casts it to void(*)(ObjectBase*), so the return value is ignored.
    static void SetState(ObjectBase* obj);                              // 0x45971c

    // Static, not stored in the object. Set by Execute to !skipping and read by SetState.
    static bool waitForAnim;                                            // global, address not recorded
};
