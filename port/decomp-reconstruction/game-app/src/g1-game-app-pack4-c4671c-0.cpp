// Batch g1-game-app-pack4-c4671c-0 (ScriptCmdImpl and the Script_* commands of the AI, timer and trigger group,
// 20 ELF addresses, 20 bodies). Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so, checked against the
// assembly (decomp_asm.py) for the empty bodies, the IsBlocking returns, the trace probe and the destructor.
//
// What is reconstructed and what is not:
//   - ScriptCmdImpl::Init and Update, the empty Execute bodies of Script_AIChangeScript, Script_AIDoSkill,
//     Script_AIEnableTimer, Script_AIResetTimer and Script_AISetHP, every IsBlocking in this batch (all return
//     false) and Script_AISetInt, Script_ActivateTriggerPlate and Script_AutoEquip Execute are complete. The last three
//     start with the isTracingScriptCmd trace probe and read the argument record (ScriptCmdImpl::m_args, +0x0c), whose
//     classes are the Structs::<Name> records of pydata-accessors/script_cmd.hpp.
//   - ~ScriptCmdImpl finalizes and deletes the argument record.
//
// The D2 and D1 destructors (0x4559f8, 0x455a68) have identical bodies, so each pair is one C++ definition.

#include <cstdint>
#include <string>

#include "pydata-accessors/script_cmd.hpp"

#include "dh2/CharAI.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/Character.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/TriggerPlate.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"

#include "dh2/DebugSwitches.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/Script_AIChangeScript.hpp"
#include "dh2/Script_AIDoSkill.hpp"
#include "dh2/Script_AIEnableTimer.hpp"
#include "dh2/Script_AIResetTimer.hpp"
#include "dh2/Script_AISetHP.hpp"
#include "dh2/Script_AISetInt.hpp"
#include "dh2/Script_ActivateTriggerPlate.hpp"
#include "dh2/Script_AutoEquip.hpp"

namespace {

// The trace probe that the original runs first in Script_AISetInt::Execute, Script_ActivateTriggerPlate::Execute and
// Script_AutoEquip::Execute (the asm of 0x45f2fc, 0x45d1d8 and 0x45db88 is the same sequence): DebugSwitches::load(),
// then GetSwitch("isTracingScriptCmd") with the result discarded. GetInstance() calls load() before it returns the
// singleton, which is the same sequence (see game-app/src/g1-game-app-DebugSwitches-d73440-0.cpp). DebugSwitches::s_inst
// is private in dh2/DebugSwitches.hpp, so GetInstance() supplies the object.
void TraceScriptCmdSwitch() {
    (void)DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingScriptCmd"));
}

}  // namespace

// 0x455628 ScriptCmdImpl::Init()
// Empty body (asm: BX LR). Slot +0x00 of the ScriptCmdImpl vtable.
void ScriptCmdImpl::Init() {}

// 0x45562c ScriptCmdImpl::Update()
// Empty body (asm: BX LR). Slot +0x04 of the ScriptCmdImpl vtable.
void ScriptCmdImpl::Update() {}

// 0x4559f8 ScriptCmdImpl::~ScriptCmdImpl() (D2 base-object destructor) and 0x455a68 (D1 complete-object destructor)
// The argument record (m_args, +0x0c, a Structs::ScriptCmd read from the script file) is finalized (its vtable slot +0x08, finalize),
// m_args is read again and the record is deleted through its deleting destructor (slot +0x04) when it is still set, and m_args becomes
// null. Nothing is done without a record.
ScriptCmdImpl::~ScriptCmdImpl() {
    if (m_args != nullptr) {
        static_cast<Structs::ScriptCmd*>(m_args)->finalize();
        if (m_args != nullptr) {
            delete static_cast<Structs::ScriptCmd*>(m_args);
        }
        m_args = nullptr;
    }
}

// 0x4557cc Script_AIChangeScript::Execute(bool, int)
// Empty body (asm: BX LR). The original does nothing.
void Script_AIChangeScript::Execute(bool /*skipping*/, int /*module*/) {}

// 0x4557d0 Script_AIChangeScript::IsBlocking() const
// Returns false (asm: MOV R0,#0; BX LR).
bool Script_AIChangeScript::IsBlocking() const { return false; }

// 0x4557b4 Script_AIDoSkill::Execute(bool, int)
// Empty body (asm: BX LR). The original does nothing.
void Script_AIDoSkill::Execute(bool /*skipping*/, int /*module*/) {}

// 0x4557b8 Script_AIDoSkill::IsBlocking() const
// Returns false.
bool Script_AIDoSkill::IsBlocking() const { return false; }

// 0x45579c Script_AIEnableTimer::Execute(bool, int)
// Empty body (asm: BX LR). The original does nothing.
void Script_AIEnableTimer::Execute(bool /*skipping*/, int /*module*/) {}

// 0x4557a0 Script_AIEnableTimer::IsBlocking() const
// Returns false.
bool Script_AIEnableTimer::IsBlocking() const { return false; }

// 0x4557a8 Script_AIResetTimer::Execute(bool, int)
// Empty body (asm: BX LR). The original does nothing.
void Script_AIResetTimer::Execute(bool /*skipping*/, int /*module*/) {}

// 0x4557ac Script_AIResetTimer::IsBlocking() const
// Returns false.
bool Script_AIResetTimer::IsBlocking() const { return false; }

// 0x4557c0 Script_AISetHP::Execute(bool, int)
// Empty body (asm: BX LR). The original does nothing, so the HP is not set by this command.
void Script_AISetHP::Execute(bool /*skipping*/, int /*module*/) {}

// 0x4557c4 Script_AISetHP::IsBlocking() const
// Returns false.
bool Script_AISetHP::IsBlocking() const { return false; }

// 0x4557d8 Script_AISetInt::IsBlocking() const
// Returns false.
bool Script_AISetInt::IsBlocking() const { return false; }

// 0x45f2fc Script_AISetInt::Execute(bool, int)
// After the trace probe, the object named by the record (m_w5, +0x14) is looked up (GetObjectByName(name, module, false, nullptr)
// on the ObjectManager). When it is a Character (the object virtual IsCharacter, slot +0x24) with a live AI script (Character +0x3e4,
// CharAI::m_script), the script's Lua variable named by the record (m_w3, +0x0c) is set to the record's value (m_w6, +0x18):
// LuaScript::SetInt. CharAI declares the script slot as CharAIScript*; the listing calls LuaScript::SetInt on it (the script of an
// external AI is a LuaScript), so the pointer is converted with static_cast.
void Script_AISetInt::Execute(bool /*skipping*/, int module) {
    const auto* record = static_cast<const Structs::AISetInt*>(m_args);
    TraceScriptCmdSwitch();
    ObjectHandle handle = dword_99F764->GetObjectByName(record->Target, module, false, nullptr);
    ObjectBase* object = handle.GetObject(false);
    if (object != nullptr && object->IsCharacter()) {
        Character* character = static_cast<Character*>(object);
        if (character->CharAI::m_script != nullptr) {
            static_cast<LuaScript*>(character->CharAI::m_script)->SetInt(record->Name, record->Value);
        }
    }
}

// 0x4558cc Script_ActivateTriggerPlate::IsBlocking() const
// Returns false.
bool Script_ActivateTriggerPlate::IsBlocking() const { return false; }

// 0x45d1d8 Script_ActivateTriggerPlate::Execute(bool, int)
// After the trace probe, the object named by the record (m_w3, +0x0c) is looked up (GetObjectByName(name, module, false, nullptr)).
// A trigger plate (m_goId 18) is remembered in m_triggerPlate (+0x10) and enabled (TriggerPlate::m_enabled, +0x779); any other
// object, or none, clears m_triggerPlate.
void Script_ActivateTriggerPlate::Execute(bool /*skipping*/, int module) {
    const auto* record = static_cast<const Structs::ActivateTriggerPlate*>(m_args);
    TraceScriptCmdSwitch();
    ObjectHandle handle = dword_99F764->GetObjectByName(record->Target, module, false, nullptr);
    ObjectBase* object = handle.GetObject(false);
    if (object != nullptr && static_cast<std::int32_t>(object->m_goId) == 18) {
        m_triggerPlate = object;
        static_cast<TriggerPlate*>(object)->m_enabled = true;
    } else {
        m_triggerPlate = nullptr;
    }
}

// 0x4557f0 Script_AutoEquip::IsBlocking() const
// Returns false.
bool Script_AutoEquip::IsBlocking() const { return false; }

// 0x45db88 Script_AutoEquip::Execute(bool, int)
// After the trace probe, the object named by the record (m_w3, +0x0c) is looked up (GetObjectByName(name, module, false, nullptr)).
// When it resolves, the handle is converted to a Character (ObjectHandle::operator Character*) and, when that is non-null, the
// Character equips its best items in every slot (the virtual EquipAllSlotsAuto, +0x138).
void Script_AutoEquip::Execute(bool /*skipping*/, int module) {
    const auto* record = static_cast<const Structs::AutoEquip*>(m_args);
    TraceScriptCmdSwitch();
    ObjectHandle handle = dword_99F764->GetObjectByName(record->Target, module, false, nullptr);
    if (handle.GetObject(false) != nullptr) {
        Character* character = handle;
        if (character != nullptr) {
            character->EquipAllSlotsAuto();
        }
    }
}
