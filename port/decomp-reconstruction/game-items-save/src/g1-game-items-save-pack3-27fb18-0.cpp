// Batch g1-game-items-save-pack3-27fb18-0 (owners Objective_MoveInZone, Objective_Qty, Objective_SavedQty and
// Objective_TalkToNPC; part 1 of 1). Four bodies are in companion files of this batch, each split for a header conflict:
//  * g1-game-items-save-pack3-27fb18-0_dbg.cpp: Objective_MoveInZone::DBG_TraceDetailedObjectiveInformation (0x47b3dc).
//    It needs Arrays::LevelList (w7_arrays_00.hpp), which conflicts with Arrays::DesignSettingsTable (w7_arrays_02.hpp).
//  * g1-game-items-save-pack3-27fb18-0_streams.cpp: Objective_SavedQty::_loadData and _saveData (0x47ab54, 0x47ab84).
//    dh2/StreamReader.hpp cannot share a translation unit with pydata-accessors/structs_records.hpp.
//  * g1-game-items-save-pack3-27fb18-0_property.cpp: Property::Property (0x399a88), kept alone so its test links alone.
// Layouts and declarations come from dh2/Objective_MoveInZone.hpp, dh2/Objective_Qty.hpp, dh2/Objective_SavedQty.hpp
// and dh2/Objective_TalkToNPC.hpp.
//
// Notes:
//  * Deleting destructors (D0: 0x47cdc4, 0x47cd6c, 0x47ce74, 0x47cd14) are compiler generated on the host: ~X, then
//    delete. No body is written (see the ledger).
//  * The complete-object destructors store only the Objective_EventReceiver and IEventReceiver vptrs (asm of 0x47a2e0,
//    0x47a290, 0x47a240, 0x47d474: _ZTV23Objective_EventReceiver+8 at +0x00, _ZTV14IEventReceiver+8 at +0x18), then
//    call Objective::~Objective. The host emits the same implicit chain for an empty body.
//  * GetObjectByName takes (name, flags, active, type). The listing passes -1, false and null.
//  * The NPC search (Install, Remove, Register and Unregister) walks ObjectManager::m_characters (std::list<Character*>,
//    +0x60) in list order and takes the first Character whose SafeGetCharPropsId() equals the row's objective id
//    (m_objectId, +0x24). See FindCharacterByPropsId.
//  * The NPC flags are GameObject::unk_2fa (+0x2fa) and unk_2fb (+0x2fb), declared in dh2/GameObject.hpp.
//  * Arrays::DesignSettingsTable::members points at element 0 of a table of host Structs::DesignSettings objects
//    (pydata-accessors/element_table.hpp). The marker effect ids are int32 fields of that record (m_w25..m_w28,
//    32-bit offsets +0x64, +0x68, +0x6c, +0x70), read through the typed element, never through byte offsets.
//  * __sFILE is the libc FILE on the target. The stream is converted to std::FILE* with reinterpret_cast before the
//    stdio calls, as in the other batches of this category.

#include "dh2/Objective_MoveInZone.hpp"

#include <cstdint>

#include "dh2/Application.hpp"
#include "dh2/AnimatedFX.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Objective_EventReceiver.hpp"
#include "dh2/Objective_Qty.hpp"
#include "dh2/Objective_SavedQty.hpp"
#include "dh2/Objective_TalkToNPC.hpp"
#include "dh2/QE_MoveInZone.hpp"
#include "dh2/QuestMoveInZone.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/TestCharPropId.hpp"
#include "dh2/TriggerZoneExitLevel.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/Vector3DFList.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include "pydata-accessors/structs_records.hpp"  // Structs::v2QuestObjectiveStub
#include "pydata-accessors/w7_arrays_02.hpp"     // Arrays::DesignSettingsTable::members

namespace {

// The first DesignSettings record (element 0 of Arrays::DesignSettingsTable), reached through the typed pointer. The
// table is built from host elements in place, so the host layout is the one to read (element_table.hpp).
const Structs::DesignSettings& FirstDesignSettings() {
    return *static_cast<const Structs::DesignSettings*>(static_cast<const void*>(Arrays::DesignSettingsTable::members));
}

// The first character of ObjectManager::m_characters (in list order) whose SafeGetCharPropsId() equals propId, or null.
// The listing repeats this search in Install, Remove, Register and Unregister.
Character* FindCharacterByPropsId(int propId) {
    for (Character* character : ApplicationGetInstance().m_objectManager->m_characters) {
        if (character->SafeGetCharPropsId() == propId) {
            return character;
        }
    }
    return nullptr;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// Destructors.

// 0x47a2e0 Objective_MoveInZone::~Objective_MoveInZone() (D1). See the notes at the top of this file.
Objective_MoveInZone::~Objective_MoveInZone() {}

// 0x47cdc4 Objective_MoveInZone::~Objective_MoveInZone() (D0): compiler generated, not written.

// 0x47a290 Objective_Qty::~Objective_Qty() (D1)
Objective_Qty::~Objective_Qty() {}

// 0x47cd6c Objective_Qty::~Objective_Qty() (D0): compiler generated, not written.

// 0x47a240 Objective_SavedQty::~Objective_SavedQty() (D1)
Objective_SavedQty::~Objective_SavedQty() {}

// 0x47ce74 Objective_SavedQty::~Objective_SavedQty() (D0): compiler generated, not written.

// 0x47d474 Objective_TalkToNPC::~Objective_TalkToNPC() (D1)
Objective_TalkToNPC::~Objective_TalkToNPC() {}

// 0x47cd14 Objective_TalkToNPC::~Objective_TalkToNPC() (D0): compiler generated, not written.

// ---------------------------------------------------------------------------------------------------------------------
// Objective_Qty and Objective_SavedQty.

// 0x47a388 Objective_SavedQty::_resetData()
// Clears the base objective (completed flag), then the quantity (+0x20).
void Objective_SavedQty::_resetData() {
    Objective::_resetData();
    m_currentQty = 0;  // +0x20
}

// ---------------------------------------------------------------------------------------------------------------------
// Objective_MoveInZone.

// 0x47b850 Objective_MoveInZone::GetPositions(Vector3DFList&) const
// The list has capacity 1. When m_object is set, its position is added and the function returns. Otherwise the listing walks
// ObjectManager::m_objectMap (a std::map<int, ObjectListItem>) in key order, resolves each entry's object through its handle
// and takes the first one whose GO id is 14 (TriggerZoneExitLevel) and whose level index (+0x7d4, m_levelIndex) equals the row's
// level id (m_w8); that object's position is added.
void Objective_MoveInZone::GetPositions(Vector3DFList& positions) const {
    positions.setNew(1);
    if (m_object != nullptr) {
        glitch::core::vector3d<float> point;  // GameObject +0x160, +0x164, +0x168 (m_position)
        point.X = m_object->m_position.X;
        point.Y = m_object->m_position.Y;
        point.Z = m_object->m_position.Z;
        positions.add(point);
        return;
    }
    for (const auto& entry : dword_99F764->m_objectMap) {
        ObjectBase* listed = entry.second.m_object;
        if (listed == nullptr) {
            continue;
        }
        ObjectHandle handle(listed);
        ObjectBase* object = handle.GetObject(false);
        if (object != nullptr && object->m_goId == 14 &&
            m_pyData->OID1 == static_cast<TriggerZoneExitLevel*>(object)->m_levelIndex) {
            const Point3D<float>& position = static_cast<GameObject*>(object)->m_position;
            glitch::core::vector3d<float> point;
            point.X = position.X;
            point.Y = position.Y;
            point.Z = position.Z;
            positions.add(point);
            return;
        }
    }
}

// 0x47bcd4 Objective_MoveInZone::handleEvent(IEvent const*, EventManager const*)
// A MoveInZone event whose zone is m_object (event +0x18 against m_object) completes the objective when its character
// passes the row's test. The row's props id (m_w9, +0x24): when it is not -1, the character's SafeGetCharPropsId() must equal
// it. When it is -1, the test is skipped for a player and otherwise requires SafeGetCharPropsId() == -1. The character is
// read through the event's m_character (+0x08), which is a Character for every raised MoveInZone event
// (QuestMoveInZone::OnCollisionBegins raises only when other->IsCharacter()). A null character with m_flag1 clear faults
// in the original on the first call through it; this build does the same.
// Then SetIsCompleted, Unregister (vtable slot 0x1c), and m_flag0 is set when m_flag1 is clear.
bool Objective_MoveInZone::handleEvent(const IEvent* event, const EventManager* /*manager*/) {
    const QE_MoveInZone* zone = static_cast<const QE_MoveInZone*>(event);
    if (zone->m_zone != m_object) {  // event +0x18 against this +0x20
        return false;
    }

    // event +0x11 (m_flag1) clear, or a character present: run the character test.
    Character* character = static_cast<Character*>(zone->m_character);  // event +0x08
    if (character != nullptr || zone->m_flag1 == 0) {
        const std::int32_t propId = m_pyData->OID2;  // row +0x24
        // With propId -1 the test runs only when the character is not a player.
        if (propId != -1 || !character->IsPlayer()) {
            if (character->SafeGetCharPropsId() != propId) {
                return false;
            }
        }
    }

    SetIsCompleted();
    Unregister();  // vtable slot 0x1c
    if (zone->m_flag1 == 0) {
        // The event is raised non-const. The listing writes its flag through the IEvent pointer.
        const_cast<QE_MoveInZone*>(zone)->m_flag0 = 1;  // event +0x10
    }
    return false;
}

// 0x47c868 Objective_MoveInZone::Compile()
// Looks up the object named by the row (+0x1c, m_w7) with GetObjectByName(name, -1, false, null). When the object is
// absent or its MeetCondition() holds, m_object becomes the handle's object (null when none) and the objective is valid
// when that object is set and the row's props id (m_w9) is -1 or HasEnemyOfTypeLoaded<TestCharPropId> finds a match.
// When the object exists but its condition fails, m_object is cleared and the validity is left alone.
void Objective_MoveInZone::Compile() {
    const Structs::v2QuestObjectiveStub* row = m_pyData;  // +0x0c
    ObjectHandle handle =
        ApplicationGetInstance().m_objectManager->GetObjectByName(static_cast<const char*>(row->Str2), -1, false, nullptr);
    GameObject* object = handle;  // ObjectHandle::operator GameObject*

    if (object == nullptr || object->MeetCondition()) {
        // GetObject returns the ObjectBase; the objective stores it as the GameObject it was looked up as.
        m_object = static_cast<GameObject*>(handle.GetObject(false));  // +0x20
        if (m_object != nullptr) {
            const std::int32_t propId = row->OID2;  // row +0x24
            // The listing passes an unset register as the level id. HasEnemyOfTypeLoaded ignores it (see
            // g1-game-items-save-Objective_EventReceiver-4e7672-0.cpp), so 0 is passed.
            if (propId == -1 || Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(propId, 0) != 0) {
                m_valid = true;  // +0x08
            }
        }
    } else {
        m_object = nullptr;  // +0x20
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// Objective_TalkToNPC.

// 0x47d8e8 Objective_TalkToNPC::InstallObjectiveMarker(int, int)
// Only a valid row of type 5 acts. The NPC character (see FindCharacterByPropsId) takes the marker: an existing marker is
// removed first, then the character's flags are set (unk_2fa = 1, unk_2fb = markerKind == 3). The effect id is read from
// the first DesignSettings record: markerIndex > 7 takes +0x70 for kind 1 and +0x68 otherwise, and markerIndex <= 7 takes
// +0x6c for kind 1 and +0x64 otherwise. The effect is grabbed, owned by the character, synced, shown, and set to loop.
void Objective_TalkToNPC::InstallObjectiveMarker(int markerKind, int markerIndex) {
    if (!m_valid || m_pyData->Type != 5) {  // +0x08, row +0x04
        return;
    }
    Character* character = FindCharacterByPropsId(m_objectId);  // +0x24
    if (character == nullptr) {
        return;
    }

    if (m_objectiveMarker != nullptr) {  // +0x28
        RemoveObjectiveMarker();
    }
    character->unk_2fa = 1;
    character->unk_2fb = markerKind == 3 ? 1 : 0;

    const Structs::DesignSettings& design = FirstDesignSettings();
    std::int32_t effectId = 0;
    if (markerIndex > 7) {
        effectId = markerKind == 1 ? design.QuestMarkerSecondaryCompleted : design.QuestMarkerCompleted;  // +0x70 / +0x68
    } else {
        effectId = markerKind == 1 ? design.QuestMarkerSecondary : design.QuestMarker;  // +0x6c / +0x64
    }

    AnimatedFX* marker = VisualFXManager::s_inst.GrabAnimFX(effectId, nullptr);
    m_objectiveMarker = marker;  // +0x28
    if (marker == nullptr) {
        return;
    }

    marker->unk_28 = character;  // AnimatedFX +0x28, the owner
    marker->SyncIrrData(true);
    if (marker->m_visual != nullptr) {  // AnimatedFX +0x2c
        marker->m_visual->m_node->m_object = character;  // VisualObject +0x08, RootSceneNode +0x204
    }
    marker->SetVisible(true);

    // GetAnimator()->getTimelineCtrl() (vtable +0x44), then setLoop(true) (vtable +0x40 of the controller).
    glitch::collada::ISceneNodeAnimator* animator = marker->GetAnimator();
    animator->getTimelineCtrl()->setLoop(true);
}

// 0x47da6c Objective_TalkToNPC::RemoveObjectiveMarker()
// Only a valid row of type 5 acts. The NPC character's flags are both cleared (unk_2fb, then unk_2fa). The marker, when it
// exists, loses its owner, is synced, loses the character from its root node, and is hidden.
void Objective_TalkToNPC::RemoveObjectiveMarker() {
    if (!m_valid || m_pyData->Type != 5) {  // +0x08, row +0x04
        return;
    }
    Character* character = FindCharacterByPropsId(m_objectId);  // +0x24
    if (character == nullptr) {
        return;
    }
    character->unk_2fb = 0;
    character->unk_2fa = 0;

    AnimatedFX* marker = m_objectiveMarker;  // +0x28
    if (marker == nullptr) {
        return;
    }
    marker->unk_28 = nullptr;  // AnimatedFX +0x28
    marker->SyncIrrData(true);
    if (marker->m_visual != nullptr) {  // AnimatedFX +0x2c
        marker->m_visual->m_node->m_object = nullptr;  // VisualObject +0x08, RootSceneNode +0x204
    }
    marker->SetVisible(false);
}

// 0x47db34 Objective_TalkToNPC::Register()
// Registers the base receiver, then sets the NPC flag (unk_2fa = 1) on the character when the row is a valid type 5.
void Objective_TalkToNPC::Register() {
    Objective_EventReceiver::Register();
    if (!m_valid || m_pyData->Type != 5) {  // +0x08, row +0x04
        return;
    }
    Character* character = FindCharacterByPropsId(m_objectId);  // +0x24
    if (character != nullptr) {
        character->unk_2fa = 1;  // +0x2fa
    }
}

// 0x47dbc4 Objective_TalkToNPC::Unregister()
// Unregisters the base receiver, then clears the NPC flag (unk_2fa = 0) on the character when the row is a valid type 5.
void Objective_TalkToNPC::Unregister() {
    Objective_EventReceiver::Unregister();
    if (!m_valid || m_pyData->Type != 5) {  // +0x08, row +0x04
        return;
    }
    Character* character = FindCharacterByPropsId(m_objectId);  // +0x24
    if (character != nullptr) {
        character->unk_2fa = 0;  // +0x2fa
    }
}
