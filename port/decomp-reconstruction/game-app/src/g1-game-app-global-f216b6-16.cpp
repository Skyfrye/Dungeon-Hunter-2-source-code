// Batch g1-game-app-global-f216b6-16 (<global>, part 17 of 22): the GetNewScriptCmdImplInstance<Script_*>()
// factories for the actor, AI, faery and character script commands. Declarations are in
// dh2/global/GetNewScriptCmdImplInstance.hpp.
//
// Each original factory is operator new(size, hint 0) followed by the same stores: m_args (+0x0c) = 0,
// unk_04 (+0x04) = 0, the vtable pointer (+0x00, set by the class constructor here) and m_cmdId (+0x08) = -1.
// The 32-bit size is 0x10 (the ScriptCmdImpl size) for every factory except Script_MoveActor, which is 0x1C.
// The host allocates sizeof(T) and does not use the hint. Value-initialization zeroes the object before the
// constructor runs, so the zero stores below write values the object already holds; they are kept to mirror
// the original.

#include "dh2/global/GetNewScriptCmdImplInstance.hpp"

#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/Script_AIChangeScript.hpp"
#include "dh2/Script_AIDoSkill.hpp"
#include "dh2/Script_AIEnableTimer.hpp"
#include "dh2/Script_AIResetTimer.hpp"
#include "dh2/Script_AISetHP.hpp"
#include "dh2/Script_AISetInt.hpp"
#include "dh2/Script_HideActor.hpp"
#include "dh2/Script_IncFaeryLevel.hpp"
#include "dh2/Script_KillActor.hpp"
#include "dh2/Script_LookActor.hpp"
#include "dh2/Script_MarkCharacterAsScripted.hpp"
#include "dh2/Script_MoveActor.hpp"
#include "dh2/Script_PutCharacterInIdle.hpp"
#include "dh2/Script_PutCharacterInLimbus.hpp"
#include "dh2/Script_SetActorMaster.hpp"
#include "dh2/Script_SetActorPosition.hpp"
#include "dh2/Script_SetFaeryState.hpp"
#include "dh2/Script_ShowActor.hpp"
#include "dh2/Script_SpawnCharacter.hpp"
#include "dh2/Script_StopActor.hpp"

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

// 0x458034 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetActorMaster>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetActorMaster>() {
    return NewScriptCmd<Script_SetActorMaster>();
}

// 0x45807c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetActorPosition>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetActorPosition>() {
    return NewScriptCmd<Script_SetActorPosition>();
}

// 0x4580c4 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_KillActor>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_KillActor>() {
    return NewScriptCmd<Script_KillActor>();
}

// 0x45810c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_HideActor>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_HideActor>() {
    return NewScriptCmd<Script_HideActor>();
}

// 0x458154 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ShowActor>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ShowActor>() {
    return NewScriptCmd<Script_ShowActor>();
}

// 0x45819c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LookActor>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LookActor>() {
    return NewScriptCmd<Script_LookActor>();
}

// 0x4581e4 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_MoveActor>()
// The original allocates 0x1C bytes (asm: MOV R0,#0x1C) and clears three members of Script_MoveActor as well:
// m_wasStatic (+0x18), unk_10 (+0x10) and m_actor (+0x14). The member order below follows the original stores.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_MoveActor>() {
    Script_MoveActor* cmd = new Script_MoveActor();
    cmd->m_wasStatic = 0;      // +0x18
    cmd->unk_04 = false;       // +0x04
    cmd->m_cmdId = -1;         // +0x08
    cmd->m_args = nullptr;     // +0x0c
    cmd->unk_10 = false;       // +0x10
    cmd->m_actor = nullptr;    // +0x14
    return cmd;
}

// 0x458238 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StopActor>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StopActor>() {
    return NewScriptCmd<Script_StopActor>();
}

// 0x458280 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AISetInt>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AISetInt>() {
    return NewScriptCmd<Script_AISetInt>();
}

// 0x4582c8 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIChangeScript>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIChangeScript>() {
    return NewScriptCmd<Script_AIChangeScript>();
}

// 0x458310 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AISetHP>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AISetHP>() {
    return NewScriptCmd<Script_AISetHP>();
}

// 0x458358 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIDoSkill>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIDoSkill>() {
    return NewScriptCmd<Script_AIDoSkill>();
}

// 0x4583a0 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIResetTimer>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIResetTimer>() {
    return NewScriptCmd<Script_AIResetTimer>();
}

// 0x4583e8 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIEnableTimer>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIEnableTimer>() {
    return NewScriptCmd<Script_AIEnableTimer>();
}

// 0x458430 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_MarkCharacterAsScripted>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_MarkCharacterAsScripted>() {
    return NewScriptCmd<Script_MarkCharacterAsScripted>();
}

// 0x458478 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PutCharacterInIdle>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PutCharacterInIdle>() {
    return NewScriptCmd<Script_PutCharacterInIdle>();
}

// 0x4584c0 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SpawnCharacter>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SpawnCharacter>() {
    return NewScriptCmd<Script_SpawnCharacter>();
}

// 0x458508 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PutCharacterInLimbus>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PutCharacterInLimbus>() {
    return NewScriptCmd<Script_PutCharacterInLimbus>();
}

// 0x458550 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_IncFaeryLevel>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_IncFaeryLevel>() {
    return NewScriptCmd<Script_IncFaeryLevel>();
}

// 0x458598 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetFaeryState>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetFaeryState>() {
    return NewScriptCmd<Script_SetFaeryState>();
}
