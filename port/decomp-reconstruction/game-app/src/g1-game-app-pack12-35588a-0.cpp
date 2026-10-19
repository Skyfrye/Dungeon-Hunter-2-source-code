// Batch g1-game-app-pack12-35588a-0 (18 ELF functions in 10 owner classes): the Execute and IsBlocking bodies of the
// Script_StopSound, Script_UnEquipHands, Script_UnEquipItemFromSlot, Script_UnlockCharacter, Script_Wait,
// Script_WaitCamera and Script_WaitDialog commands, SearchFailCache::add, and the TestCharPropId and TestCharTemplate
// predicates.
//
// Every Execute of this group first reads the isTracingScriptCmd debug switch and discards the result. That read is
// kept (TraceScriptCmd): DebugSwitches::GetInstance() loads the switch file on first use, and GetSwitch stores a
// missing key as false, so the lookup has side effects.
//
// The command data is the Structs::<Name> record of pydata-accessors/script_cmd.hpp, which ScriptCmdImpl::m_args points
// to. The record fields are read by their 4-byte word index (m_wN at offset 4*N, as in g1-game-app-pack7).
// The ObjectManager global dword_99F764 is Application +0x38 (dh2/global/Globals.hpp), read as
// ApplicationGetInstance().m_objectManager.
//
// PARTIAL where a dependency is still missing:
//   - Script_StopSound::Execute needs VoxSoundManager::s_instance, Stop and StopMusic. The vox-audio header
//     declares none of them (a header this batch does not own). The record is read, the calls are missing.
//   - Script_WaitCamera::IsBlocking needs the byte at +0x84 of the level's camera (CameraLevel, no header in the tree).
//   - Script_WaitDialog::IsBlocking needs Level::hasActiveDialog. dh2/Level.hpp cannot be included in the same
//     translation unit as dh2/Character.hpp, which this file needs for the TestChar* predicates: both headers define a
//     class IStreamBase (pydata-accessors/deps/stream_reader.hpp and net-transport/deps/i_stream_base.hpp). This is a
//     header conflict, not a change in this file. Character.hpp is kept because it serves more of the batch.
//
// Original functions are called through the same accessors the other game-app sources use: ApplicationGetInstance()
// (dh2/global/ctrl_camera.hpp) for Singleton<Application>::s_inst, and the ScriptCmdImpl slots.

#include "dh2/Script_StopSound.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/Level.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/Script_UnEquipHands.hpp"
#include "dh2/Script_UnEquipItemFromSlot.hpp"
#include "dh2/Script_UnlockCharacter.hpp"
#include "dh2/Script_Wait.hpp"
#include "dh2/Script_WaitCamera.hpp"
#include "dh2/Script_WaitDialog.hpp"
#include "dh2/SearchFailCache.hpp"
#include "dh2/TestCharPropId.hpp"
#include "dh2/TestCharTemplate.hpp"

#include <cstring>
#include <string>

#include "pydata-accessors/script_cmd.hpp"

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/global/ctrl_camera.hpp"

namespace {

// The isTracingScriptCmd read that starts every Execute in this batch. The result is discarded.
void TraceScriptCmd() {
    (void)DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingScriptCmd"));
}

// The ObjectManager global dword_99F764 (Application +0x38), used by the name lookups of these commands.
ObjectManager* ObjectManagerOf() {
    return ApplicationGetInstance().m_objectManager;
}

// The equipment part of Script_UnEquipHands::Execute (0x45ded0), for a resolved character. It stores the item index
// of the item in hand 1 at +0x14f4 and of the item in hand 2 at +0x14f8, then unequips slots 1 and 2 through the
// Character virtual UnEquipItemFromSlot (vtable byte +0x144). The inventory is the ItemInventory base at +0x37c.
void UnEquipBothHands(Character& character) {
    ItemInstance* hand1 = character.ItemInventory::GetEquippedItem(1);
    character.unk_14f4 = character.ItemInventory::GetItemIndex(hand1);
    ItemInstance* hand2 = character.ItemInventory::GetEquippedItem(2);
    character.unk_14f8 = character.ItemInventory::GetItemIndex(hand2);
    character.UnEquipItemFromSlot(1);
    character.UnEquipItemFromSlot(2);
}

// The per-character part of Script_UnlockCharacter::Execute (0x45dc80): clears the flag at +0x08 of the character's
// controller. The controller is the v2Controllable::m_controller at +0x378 of the character.
void UnlockCharacterController(Character& character) {
    character.v2Controllable::m_controller->m_blocked = false;
}

// The "All" branch of Script_UnlockCharacter::Execute: clears the global controller block.
void UnlockAllControllers() {
    v2Controller::s_blocked = false;
}

}  // namespace

// 0x455658 Script_StopSound::IsBlocking() const
bool Script_StopSound::IsBlocking() const {
    return false;
}

// 0x45fe2c Script_StopSound::Execute(bool, int)
// After the trace read: with the record's music flag (m_w3, +0x0c) set the music stops with the record's fade (m_w2, +0x08)
// (VoxSoundManager::StopMusic); otherwise the sound m_w4 (+0x10) stops with that fade (VoxSoundManager::Stop(sound, fade)).
void Script_StopSound::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    const Structs::StopSound* record = static_cast<const Structs::StopSound*>(m_args);
    TraceScriptCmd();
    if (record->IsMusic) {
        VoxSoundManager::s_instance->StopMusic(record->FadeoutTime);
    } else {
        VoxSoundManager::s_instance->Stop(record->SoundID, record->FadeoutTime);
    }
}

// 0x455800 Script_UnEquipHands::IsBlocking() const
bool Script_UnEquipHands::IsBlocking() const {
    return false;
}

// 0x45ded0 Script_UnEquipHands::Execute(bool, int)
// The record name (m_w3, +0x0c) is looked up with ObjectManager::GetObjectByName(name, module, false, nullptr). When the
// handle resolves to a Character, UnEquipBothHands runs on it.
void Script_UnEquipHands::Execute(bool skipping, int module) {
    (void)skipping;
    const Structs::UnEquipHands* record = static_cast<const Structs::UnEquipHands*>(m_args);
    TraceScriptCmd();
    ObjectHandle handle = ObjectManagerOf()->GetObjectByName(record->Target, module, false, nullptr);
    if (handle.GetObject(false) != nullptr) {
        Character* character = static_cast<Character*>(handle);
        if (character != nullptr) {
            UnEquipBothHands(*character);
        }
    }
}

// 0x4557f8 Script_UnEquipItemFromSlot::IsBlocking() const
bool Script_UnEquipItemFromSlot::IsBlocking() const {
    return false;
}

// 0x45da8c Script_UnEquipItemFromSlot::Execute(bool, int)
// The record name (m_w4, +0x10) is looked up with ObjectManager::GetObjectByName(name, module, false, nullptr). When the
// handle resolves to a Character, its virtual UnEquipItemFromSlot runs with the record slot (m_w2, +0x08), vtable byte
// +0x144.
void Script_UnEquipItemFromSlot::Execute(bool skipping, int module) {
    (void)skipping;
    const Structs::UnEquipItemFromSlot* record = static_cast<const Structs::UnEquipItemFromSlot*>(m_args);
    TraceScriptCmd();
    ObjectHandle handle = ObjectManagerOf()->GetObjectByName(record->Target, module, false, nullptr);
    if (handle.GetObject(false) != nullptr) {
        Character* character = static_cast<Character*>(handle);
        if (character != nullptr) {
            character->UnEquipItemFromSlot(static_cast<unsigned int>(record->SlotID));
        }
    }
}

// 0x45574c Script_UnlockCharacter::IsBlocking() const
bool Script_UnlockCharacter::IsBlocking() const {
    return false;
}

// 0x45dc80 Script_UnlockCharacter::Execute(bool, int)
// The record name (m_w3, +0x0c) selects the branch. LC_API_STRCMP_0 is strcmp, so the name "All" (case-sensitive) clears
// v2Controller::s_blocked (UnlockAllControllers). Any other name is looked up with ObjectManager::GetObjectByName, and a
// resolved Character has its controller flag cleared (UnlockCharacterController).
void Script_UnlockCharacter::Execute(bool skipping, int module) {
    (void)skipping;
    const Structs::UnlockCharacter* record = static_cast<const Structs::UnlockCharacter*>(m_args);
    TraceScriptCmd();
    const char* name = record->Target;
    if (std::strcmp(name, "All") != 0) {
        ObjectHandle handle = ObjectManagerOf()->GetObjectByName(name, module, false, nullptr);
        if (handle.GetObject(false) != nullptr) {
            Character* character = static_cast<Character*>(handle);
            if (character != nullptr) {
                UnlockCharacterController(*character);
            }
        }
    } else {
        UnlockAllControllers();
    }
}

// 0x455754 Script_Wait::IsBlocking() const
bool Script_Wait::IsBlocking() const {
    return m_elapsed < m_duration;
}

// 0x4597b4 Script_Wait::Update()
void Script_Wait::Update() {
    const int elapsed = m_elapsed;
    m_elapsed = ApplicationGetInstance().GetDt() + elapsed;
}

// 0x45c438 Script_Wait::Execute(bool, int)
// The record is read first (as the original loads m_args before the trace). The elapsed counter is reset, and the
// duration (Structs::Wait m_w2, the int at +0x08) is copied into m_duration.
void Script_Wait::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    const Structs::Wait* record = static_cast<const Structs::Wait*>(m_args);
    TraceScriptCmd();
    m_elapsed = 0;
    m_duration = record->Time;
}

// 0x45932c Script_WaitCamera::IsBlocking() const
// True while the current level's camera (Level +0x128, a CameraLevel) is running a zoom animation (CameraLevel +0x84, m_zoomAnimActive);
// false without a level or a camera.
bool Script_WaitCamera::IsBlocking() const {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr && level->m_camera != nullptr) {
        return level->m_camera->m_zoomAnimActive;
    }
    return false;
}

// 0x45c5e8 Script_WaitCamera::Execute(bool, int)
void Script_WaitCamera::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    TraceScriptCmd();
}

// 0x4598d8 Script_WaitDialog::IsBlocking() const
// Level::hasActiveDialog() of the current level, with no null check, as in the original.
bool Script_WaitDialog::IsBlocking() const {
    return ApplicationGetInstance().GetCurrentLevel()->hasActiveDialog();
}

// 0x45c4d8 Script_WaitDialog::Execute(bool, int)
void Script_WaitDialog::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    TraceScriptCmd();
}

// 0x52a504 SearchFailCache::add(SearchFailCache::Entry &)
// The original keeps a vector of 12-byte entries. When more than 10 entries are stored, it sets the end pointer back to
// the begin pointer, which empties the vector and keeps its storage. It then copies the entry to the end, or grows the
// vector when the storage is full. std::vector::clear and push_back do both steps.
void SearchFailCache::add(Entry& entry) {
    if (m_entries.size() > 10) {
        m_entries.clear();
    }
    m_entries.push_back(entry);
}

// 0x47b820 TestCharPropId::Compare(int, Character *)
// Static in the header: the id is the first argument (r0), the character the second (r1). r2 is not read.
bool TestCharPropId::Compare(int propId, Character* character) {
    return character != nullptr && character->SafeGetCharPropsId() == propId;
}

// 0x47b05c TestCharTemplate::Compare(int, Character *)
// Static in the header: the template id is the first argument (r0), the character the second (r1). r2 is not read.
bool TestCharTemplate::Compare(int templateId, Character* character) {
    return character != nullptr && character->SafeGetCharPropsTemplateId() == templateId;
}
