// Batch g1-game-app-global-f216b6-17 (<global>, part 18 of 22): the GetNewScriptCmdImplInstance<Script_*>()
// factories for the Wait, dialog, sound, effect, animation, camera, safe-zone and flash script commands.
// Declarations are in dh2/global/GetNewScriptCmdImplInstance.hpp.
//
// Each original factory is operator new(size, hint 0) followed by the same stores: unk_04 (+0x04) = 0, the vtable
// pointer (+0x00, set by the class constructor here), m_cmdId (+0x08) = -1, m_args (+0x0c) = 0, and any
// class-own members zeroed. The 32-bit allocation size is read from the asm (MOV R0,#n before the BL): 0x18 for
// Script_Wait, 0x14 for Script_HideFlash and Script_ShowFlash, and 0x10 for the other seventeen. The host
// allocates sizeof(T) and does not use the hint. Value-initialization zeroes the object before the constructor
// runs, so the zero stores below write values the object already holds; they are kept to mirror the original.

#include "dh2/global/GetNewScriptCmdImplInstance.hpp"

#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/Script_EmptyImpl.hpp"
#include "dh2/Script_EnterSafeZone.hpp"
#include "dh2/Script_HideFlash.hpp"
#include "dh2/Script_LeaveSafeZone.hpp"
#include "dh2/Script_LockCharacter.hpp"
#include "dh2/Script_PlayAnimById.hpp"
#include "dh2/Script_PlayAnimByName.hpp"
#include "dh2/Script_PlayEffect.hpp"
#include "dh2/Script_PlayLevelMusic.hpp"
#include "dh2/Script_PlaySound.hpp"
#include "dh2/Script_SetCameraTarget.hpp"
#include "dh2/Script_ShowFlash.hpp"
#include "dh2/Script_StartDialog.hpp"
#include "dh2/Script_StartDialogID.hpp"
#include "dh2/Script_StopEffect.hpp"
#include "dh2/Script_StopSound.hpp"
#include "dh2/Script_UnlockCharacter.hpp"
#include "dh2/Script_Wait.hpp"
#include "dh2/Script_WaitCamera.hpp"
#include "dh2/Script_WaitDialog.hpp"

namespace {

// The shared body of the 0x10-byte factories.
template <class T>
ScriptCmdImpl* NewScriptCmd() {
    T* cmd = new T();
    cmd->m_args = nullptr;     // +0x0c
    cmd->unk_04 = false;       // +0x04
    cmd->m_cmdId = -1;         // +0x08
    return cmd;
}

}  // namespace

// 0x4585e0 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_Wait>()
// Allocates 0x18 bytes (asm: MOV R0,#0x18). Script_Wait's own members m_elapsed (+0x10) and m_duration (+0x14)
// are cleared too. The store order follows the original.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_Wait>() {
    Script_Wait* cmd = new Script_Wait();
    cmd->m_duration = 0;       // +0x14
    cmd->unk_04 = false;       // +0x04
    cmd->m_cmdId = -1;         // +0x08
    cmd->m_args = nullptr;     // +0x0c
    cmd->m_elapsed = 0;        // +0x10
    return cmd;
}

// 0x458630 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_UnlockCharacter>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_UnlockCharacter>() {
    return NewScriptCmd<Script_UnlockCharacter>();
}

// 0x458678 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LockCharacter>()
// Allocates 0x10 bytes (asm checked). Script_LockCharacter.hpp declares a pad_10[0x30] that the original factory
// does not allocate; the header comment that says 64 bytes is stale (layout request: drop the pad, size 0x10).
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LockCharacter>() {
    return NewScriptCmd<Script_LockCharacter>();
}

// 0x4586c0 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_HideFlash>()
// Allocates 0x14 bytes (asm: MOV R0,#0x14). Script_HideFlash's own member m_menu (+0x10) is cleared too.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_HideFlash>() {
    Script_HideFlash* cmd = new Script_HideFlash();
    cmd->m_menu = nullptr;     // +0x10
    cmd->unk_04 = false;       // +0x04
    cmd->m_cmdId = -1;         // +0x08
    cmd->m_args = nullptr;     // +0x0c
    return cmd;
}

// 0x45870c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ShowFlash>()
// Allocates 0x14 bytes (asm: MOV R0,#0x14). Script_ShowFlash's own member m_menu (+0x10) is cleared too.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ShowFlash>() {
    Script_ShowFlash* cmd = new Script_ShowFlash();
    cmd->m_menu = nullptr;     // +0x10
    cmd->unk_04 = false;       // +0x04
    cmd->m_cmdId = -1;         // +0x08
    cmd->m_args = nullptr;     // +0x0c
    return cmd;
}

// 0x458758 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StopEffect>()
// Allocates 0x10 bytes (asm checked). Script_StopEffect.hpp's pad_10[0x30] and "64 bytes" comment are not in the
// original factory (layout request: drop the pad, size 0x10).
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StopEffect>() {
    return NewScriptCmd<Script_StopEffect>();
}

// 0x4587a0 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayEffect>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayEffect>() {
    return NewScriptCmd<Script_PlayEffect>();
}

// 0x4587e8 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayAnimByName>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayAnimByName>() {
    return NewScriptCmd<Script_PlayAnimByName>();
}

// 0x458830 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayAnimById>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayAnimById>() {
    return NewScriptCmd<Script_PlayAnimById>();
}

// 0x458878 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LeaveSafeZone>()
// Allocates 0x10 bytes (asm checked). Script_LeaveSafeZone.hpp's "64 bytes" comment and pad_10[0x30] are stale
// (layout request: drop the pad, size 0x10).
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LeaveSafeZone>() {
    return NewScriptCmd<Script_LeaveSafeZone>();
}

// 0x4588c0 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EnterSafeZone>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EnterSafeZone>() {
    return NewScriptCmd<Script_EnterSafeZone>();
}

// 0x458908 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayLevelMusic>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayLevelMusic>() {
    return NewScriptCmd<Script_PlayLevelMusic>();
}

// 0x458950 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StopSound>()
// Allocates 0x10 bytes (asm checked). Script_StopSound.hpp's "64 bytes" comment and pad_10[0x30] are stale
// (layout request: drop the pad, size 0x10).
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StopSound>() {
    return NewScriptCmd<Script_StopSound>();
}

// 0x458998 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlaySound>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlaySound>() {
    return NewScriptCmd<Script_PlaySound>();
}

// 0x4589e0 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_WaitDialog>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_WaitDialog>() {
    return NewScriptCmd<Script_WaitDialog>();
}

// 0x458a28 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StartDialogID>()
// Allocates 0x10 bytes (asm checked). Script_StartDialogID.hpp's "64 bytes" comment and pad_10[0x30] are stale
// (layout request: drop the pad, size 0x10).
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StartDialogID>() {
    return NewScriptCmd<Script_StartDialogID>();
}

// 0x458a70 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StartDialog>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StartDialog>() {
    return NewScriptCmd<Script_StartDialog>();
}

// 0x458ab8 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EmptyImpl>()
// The original allocates 0x10 bytes (asm: MOV R0,#0x10), sets unk_04 = 0, m_cmdId = -1 and m_args = 0, and sets the vtable
// pointer. Layout request (owner header Script_EmptyImpl.hpp): its pad_10[0x30] is not in the original 0x10-byte object,
// so it should be removed. The factory does not depend on it.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EmptyImpl>() {
    return NewScriptCmd<Script_EmptyImpl>();
}

// 0x458b00 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetCameraTarget>()
// Allocates 0x10 bytes (asm checked). Script_SetCameraTarget.hpp says 0x40 and carries pad_10[0x30]; the original
// factory does not allocate that (layout request: correct the size comment, drop the pad).
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetCameraTarget>() {
    return NewScriptCmd<Script_SetCameraTarget>();
}

// 0x458b48 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_WaitCamera>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_WaitCamera>() {
    return NewScriptCmd<Script_WaitCamera>();
}
