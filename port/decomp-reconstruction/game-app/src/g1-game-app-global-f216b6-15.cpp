// Batch g1-game-app-global-f216b6-15 (<global>, part 16 of 22): the GetNewScriptCmdImplInstance<Script_*>()
// factories for the trophy, end-game, level, container, trigger-plate, projectile-trap, door, static,
// equipment and loot script commands. Declarations are in dh2/global/GetNewScriptCmdImplInstance.hpp, which
// the sibling batches of this family share.
//
// Each original factory is operator new(size, hint 0) followed by the same stores: m_args (+0x0c) = 0,
// unk_04 (+0x04) = 0, the vtable pointer (set by the class constructor here) and m_cmdId (+0x08) = -1.
// The asm (MOV R0,#size before the BL to operator new) gives 0x10 for most factories, 0x14 for the
// trigger-plate and projectile-trap commands and 0x18 for the door commands. The size column of the batch
// listing (64, 68, 72) and the "allocation" sizes in some Script_*.hpp comments do not match the asm; the asm
// is the authority. The host allocates sizeof(T) and does not use the hint.
//
// Redo pass (r2a-game-app-global-f216b6-6): the trigger-plate, projectile-trap, close-door and drop-loot factories are
// defined here now. Their headers compile, and the headers for the projectile traps exist. The layout of those classes
// is still pending: Script_CloseDoor's pad_18[0x30] lies past the 0x18-byte allocation, and Script_DropLoot's pad_10
// lies past the 0x10-byte allocation (layout requests in the ledger notes of r2a-game-app-global-f216b6-6).

#include "dh2/global/GetNewScriptCmdImplInstance.hpp"

#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/Script_ActivateProjectileTrap.hpp"
#include "dh2/Script_ActivateTriggerPlate.hpp"
#include "dh2/Script_AutoEquip.hpp"
#include "dh2/Script_AwardEndGameTrophies.hpp"
#include "dh2/Script_AwardTrophy.hpp"
#include "dh2/Script_ChangeLevel.hpp"
#include "dh2/Script_CloseDoor.hpp"
#include "dh2/Script_DeactivateProjectileTrap.hpp"
#include "dh2/Script_DeactivateTriggerPlate.hpp"
#include "dh2/Script_DropLoot.hpp"
#include "dh2/Script_EndGame.hpp"
#include "dh2/Script_OpenDoor.hpp"
#include "dh2/Script_ReEquipHands.hpp"
#include "dh2/Script_RestartLevel.hpp"
#include "dh2/Script_SetLevelState.hpp"
#include "dh2/Script_SetStatic.hpp"
#include "dh2/Script_SetWorldMapLocationState.hpp"
#include "dh2/Script_SpawnContainer.hpp"
#include "dh2/Script_UnEquipHands.hpp"
#include "dh2/Script_UnEquipItemFromSlot.hpp"

namespace {

// The shared body of the 0x10-byte factories. The class constructor stores the vtable pointer (+0x00).
template <class T>
ScriptCmdImpl* NewScriptCmd() {
    T* cmd = new T();
    cmd->m_args = nullptr;     // +0x0c
    cmd->unk_04 = false;       // +0x04
    cmd->m_cmdId = -1;         // +0x08
    return cmd;
}

}  // namespace

// 0x457a74 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AwardEndGameTrophies>()
// Asm: MOV R0,#0x10; vtable _ZTV27Script_AwardEndGameTrophies.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AwardEndGameTrophies>() {
    return NewScriptCmd<Script_AwardEndGameTrophies>();
}

// 0x457abc ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AwardTrophy>()
// Asm: MOV R0,#0x10; vtable _ZTV18Script_AwardTrophy.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AwardTrophy>() {
    return NewScriptCmd<Script_AwardTrophy>();
}

// 0x457b04 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EndGame>()
// Asm: MOV R0,#0x10; vtable _ZTV14Script_EndGame.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EndGame>() {
    return NewScriptCmd<Script_EndGame>();
}

// 0x457b4c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ChangeLevel>()
// Asm: MOV R0,#0x10; vtable _ZTV18Script_ChangeLevel.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ChangeLevel>() {
    return NewScriptCmd<Script_ChangeLevel>();
}

// 0x457b94 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_RestartLevel>()
// Asm: MOV R0,#0x10; vtable _ZTV19Script_RestartLevel.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_RestartLevel>() {
    return NewScriptCmd<Script_RestartLevel>();
}

// 0x457bdc ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetWorldMapLocationState>()
// Asm: MOV R0,#0x10; vtable _ZTV31Script_SetWorldMapLocationState. The header comment that says 0x40 is not
// the allocation; the factory allocates 0x10.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetWorldMapLocationState>() {
    return NewScriptCmd<Script_SetWorldMapLocationState>();
}

// 0x457c24 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetLevelState>()
// Asm: MOV R0,#0x10; vtable _ZTV20Script_SetLevelState.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetLevelState>() {
    return NewScriptCmd<Script_SetLevelState>();
}

// 0x457c6c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SpawnContainer>()
// Asm: MOV R0,#0x10; vtable _ZTV21Script_SpawnContainer.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SpawnContainer>() {
    return NewScriptCmd<Script_SpawnContainer>();
}

// 0x457cb4 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DeactivateTriggerPlate>()
// Asm: MOV R0,#0x14 (allocates 0x14); vtable _ZTV29Script_DeactivateTriggerPlate; +0x10 (m_plate) = 0 in addition to the
// common stores.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DeactivateTriggerPlate>() {
    Script_DeactivateTriggerPlate* cmd = new Script_DeactivateTriggerPlate();
    cmd->m_plate = nullptr;      // +0x10
    cmd->unk_04 = false;         // +0x04
    cmd->m_cmdId = -1;           // +0x08
    cmd->m_args = nullptr;       // +0x0c
    return cmd;
}

// 0x457d00 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ActivateTriggerPlate>()
// Asm: MOV R0,#0x14 (allocates 0x14); vtable _ZTV27Script_ActivateTriggerPlate; +0x10 (m_triggerPlate) = 0 in
// addition to the common stores.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ActivateTriggerPlate>() {
    Script_ActivateTriggerPlate* cmd = new Script_ActivateTriggerPlate();
    cmd->m_triggerPlate = nullptr;   // +0x10
    cmd->unk_04 = false;             // +0x04
    cmd->m_cmdId = -1;               // +0x08
    cmd->m_args = nullptr;           // +0x0c
    return cmd;
}

// 0x457d4c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DeactivateProjectileTrap>()
// Asm: MOV R0,#0x14 (allocates 0x14); vtable _ZTV31Script_DeactivateProjectileTrap; +0x10 (m_trap) = 0 in addition to the
// common stores (+0x04 = 0, +0x08 = -1, +0x0c = 0).
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DeactivateProjectileTrap>() {
    Script_DeactivateProjectileTrap* cmd = new Script_DeactivateProjectileTrap();
    cmd->m_trap = nullptr;       // +0x10
    cmd->unk_04 = false;         // +0x04
    cmd->m_cmdId = -1;           // +0x08
    cmd->m_args = nullptr;       // +0x0c
    return cmd;
}

// 0x457d98 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ActivateProjectileTrap>()
// Asm: MOV R0,#0x14 (allocates 0x14); vtable _ZTV29Script_ActivateProjectileTrap; +0x10 (m_trap) = 0 in addition to the
// common stores.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ActivateProjectileTrap>() {
    Script_ActivateProjectileTrap* cmd = new Script_ActivateProjectileTrap();
    cmd->m_trap = nullptr;       // +0x10
    cmd->unk_04 = false;         // +0x04
    cmd->m_cmdId = -1;           // +0x08
    cmd->m_args = nullptr;       // +0x0c
    return cmd;
}

// 0x457de4 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_CloseDoor>()
// Asm: MOV R0,#0x18 (allocates 0x18); vtable _ZTV16Script_CloseDoor; +0x10 (m_door) = 0, +0x14 (m_instant) = 0 in addition
// to the common stores. The Hex-Rays order is the same (+0x14, +0x04, vptr, +0x08, +0x0c, +0x10).
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_CloseDoor>() {
    Script_CloseDoor* cmd = new Script_CloseDoor();
    cmd->m_door = nullptr;       // +0x10
    cmd->m_instant = false;      // +0x14
    cmd->unk_04 = false;         // +0x04
    cmd->m_cmdId = -1;           // +0x08
    cmd->m_args = nullptr;       // +0x0c
    return cmd;
}

// 0x457e34 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_OpenDoor>()
// Asm: MOV R0,#0x18 (allocates 0x18); vtable _ZTV15Script_OpenDoor; +0x10 (m_door) = 0 and +0x14 (m_instant) = 0
// in addition to the common stores.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_OpenDoor>() {
    Script_OpenDoor* cmd = new Script_OpenDoor();
    cmd->m_door = nullptr;       // +0x10
    cmd->m_instant = false;      // +0x14
    cmd->unk_04 = false;         // +0x04
    cmd->m_cmdId = -1;           // +0x08
    cmd->m_args = nullptr;       // +0x0c
    return cmd;
}

// 0x457e84 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetStatic>()
// Asm: MOV R0,#0x10; vtable _ZTV16Script_SetStatic.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetStatic>() {
    return NewScriptCmd<Script_SetStatic>();
}

// 0x457ecc ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ReEquipHands>()
// Asm: MOV R0,#0x10; vtable _ZTV19Script_ReEquipHands.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ReEquipHands>() {
    return NewScriptCmd<Script_ReEquipHands>();
}

// 0x457f14 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_UnEquipHands>()
// Asm: MOV R0,#0x10; vtable _ZTV19Script_UnEquipHands.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_UnEquipHands>() {
    return NewScriptCmd<Script_UnEquipHands>();
}

// 0x457f5c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_UnEquipItemFromSlot>()
// Asm: MOV R0,#0x10; vtable _ZTV26Script_UnEquipItemFromSlot.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_UnEquipItemFromSlot>() {
    return NewScriptCmd<Script_UnEquipItemFromSlot>();
}

// 0x457fa4 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AutoEquip>()
// Asm: MOV R0,#0x10; vtable _ZTV16Script_AutoEquip.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AutoEquip>() {
    return NewScriptCmd<Script_AutoEquip>();
}

// 0x457fec ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DropLoot>()
// Asm: MOV R0,#0x10; vtable _ZTV15Script_DropLoot. The common stores only.
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DropLoot>() {
    return NewScriptCmd<Script_DropLoot>();
}
