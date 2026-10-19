// Batch g1-game-world-TriggerPlate-c8616d-0 (part 1 of 1): the TriggerPlate row readers, the contact counting, the
// object test, Update, the data-row lookup, the constructors, the destructors, DeclareProperties and
// InitPost. Declarations come from dh2/TriggerPlate.hpp, whose members sit at their original offsets.
//
// Layout facts used here (original 32-bit offsets, named in dh2/TriggerPlate.hpp and its bases):
//   ObjectBase +0x64 unk_64 (the object id passed to ScriptManager::StartScript), +0xf4 m_goId
//   GameObject +0x274 m_spawnProb, +0x2d8 m_visualObject; VisualObject +0x38 m_animController
//   Zone +0x381 m_playerOnly; ZoneEx +0x388 m_objectsInside (the set node count at +0x398)
//   Trigger +0x3a8 m_triggerCount, +0x3b8 m_timer, +0x3c0 unk_3c0 (the replicated contact count)
//   TriggerPlate +0x730 m_dataIndex, +0x734 m_numberOfObjects, +0x768 m_triggerType, +0x76c m_scriptOnId,
//                +0x770 m_scriptOffId, +0x774 m_lastNumContacts, +0x778 m_activated, +0x779 m_enabled
//   Arrays::TriggerPlates rows: file stride 32, read as host Structs::TriggerPlate elements (w7_arrays27.hpp):
//     m_w1 +0x04 behaviour, m_w2 +0x08 enabled, m_w3 +0x0c sound off, m_w4 +0x10 sound on,
//     m_w5 +0x14 specific object, m_w6 +0x18 trigger type, m_w7 +0x1c visual (a GameObjectDict index).
//
// Object type 6 is LiftableObject (the GO id its factory passes, game/include/dh2/global/object_factory.hpp), and its
// vtable slot 0xc8 is LiftableObject::GetDataId. IsObjectActivating relies on both facts.
//
// The original's ASSERT in Update prints through ReportAssert, as the other batches do.

#include "dh2/TriggerPlate.hpp"

#include <cstdio>
#include <cstdlib>

#include "dh2/AnimController.hpp"
#include "dh2/Level.hpp"
#include "dh2/QE_TriggerPlate.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/Application.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LiftableObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C, the PlayerManager instance
#include "dh2/global/ctrl_camera.hpp"        // Application& ApplicationGetInstance()
#include "pydata-accessors/structs_records.hpp"  // Structs::TriggerPlate, the host element of Arrays::TriggerPlates
#include "pydata-accessors/w7_arrays27.hpp"      // Arrays::TriggerPlates::members and size

// Global assert level (libDungeonHunter2.so gAssertLevel). Declared the same way as in CameraLevel.cpp.
extern int gAssertLevel;

namespace {

// The source path the original's ASSERT messages print (TriggerPlate.cpp in the Visual Studio project).
constexpr const char kTriggerPlateSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Triggers\\TriggerPlate.cpp";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash), level 1 prints
// the message and the function goes on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kTriggerPlateSource, line);
    }
}

// Row `index` of Arrays::TriggerPlates as the host element type. The caller has checked index != -1.
const Structs::TriggerPlate& TriggerPlateRow(int index) {
    return reinterpret_cast<const Structs::TriggerPlate*>(Arrays::TriggerPlates::members)[index];
}

}  // namespace

// 0x39a394 _ZNK12TriggerPlate10IsAnimatedEv
bool TriggerPlate::IsAnimated() const {
    return true;
}

// 0x39a39c _ZNK12TriggerPlate11IsUpdatableEv
bool TriggerPlate::IsUpdatable() const {
    return true;
}

// 0x39a3a4 _ZNK12TriggerPlate9GetVisualEv
// The visual is row m_w7 (+0x1c), a GameObjectDict index. -1 when m_dataIndex is -1.
int TriggerPlate::GetVisual() const {
    if (m_dataIndex == -1) {
        return -1;
    }
    return TriggerPlateRow(m_dataIndex).Visual;
}

// 0x39a3d8 _ZNK12TriggerPlate10GetSoundOnEv
// The sound played on activation is row m_w4 (+0x10). -1 when m_dataIndex is -1.
int TriggerPlate::GetSoundOn() const {
    if (m_dataIndex == -1) {
        return -1;
    }
    return TriggerPlateRow(m_dataIndex).SoundOn;
}

// 0x39a40c _ZNK12TriggerPlate11GetSoundOffEv
// The sound played on deactivation is row m_w3 (+0x0c). -1 when m_dataIndex is -1.
int TriggerPlate::GetSoundOff() const {
    if (m_dataIndex == -1) {
        return -1;
    }
    return TriggerPlateRow(m_dataIndex).SoundOff;
}

// 0x39a440 _ZNK12TriggerPlate14GetTriggerTypeEv
// The trigger type is row m_w6 (+0x18). -1 when m_dataIndex is -1.
int TriggerPlate::GetTriggerType() const {
    if (m_dataIndex == -1) {
        return -1;
    }
    return TriggerPlateRow(m_dataIndex).TriggerType;
}

// 0x39a474 _ZNK12TriggerPlate11GetBehaviorEv
// The behaviour is row m_w1 (+0x04). -1 when m_dataIndex is -1. Update compares it with 5.
int TriggerPlate::GetBehavior() const {
    if (m_dataIndex == -1) {
        return -1;
    }
    return TriggerPlateRow(m_dataIndex).Behavior;
}

// 0x39a4a8 _ZNK12TriggerPlate17GetSpecificObjectEv
// The specific object is row m_w5 (+0x14). -1 when m_dataIndex is -1.
int TriggerPlate::GetSpecificObject() const {
    if (m_dataIndex == -1) {
        return -1;
    }
    return TriggerPlateRow(m_dataIndex).SpecificObject;
}

// 0x39a510 _ZNK12TriggerPlate18IsObjectActivatingEi
// Walks m_objectsInside in set order. An object is activating when its handle resolves, its GO id is 6 (LiftableObject)
// and its vtable slot 0xc8 (LiftableObject::GetDataId) equals specificObject. -1 never matches.
bool TriggerPlate::IsObjectActivating(int specificObject) const {
    if (specificObject == -1) {
        return false;
    }
    for (GameObject* object : m_objectsInside) {
        ObjectHandle handle = object->GetHandle();
        ObjectBase* resolved = handle.GetObject(false);
        if (resolved != nullptr && static_cast<int>(resolved->m_goId) == 6 &&
            static_cast<LiftableObject*>(resolved)->GetDataId() == specificObject) {
            return true;
        }
    }
    return false;
}

// 0x39a5ec _ZNK12TriggerPlate29GetNumValidContactsActivatingEv
// The count depends on the trigger type (the virtual GetTriggerType, slot 0xe8): 0 the objects inside (the set size,
// +0x398), 1 and 2 the players inside, 3 the objects that are not characters, 4 the objects activating with the
// specific object, anything else 0.
int TriggerPlate::GetNumValidContactsActivating() const {
    switch (GetTriggerType()) {
        case 0:
            return static_cast<int>(m_objectsInside.size());
        case 1:
        case 2:
            return GetNumPlayers();
        case 3:
            return GetNumObjects();
        case 4:
            return IsObjectActivating(GetSpecificObject());
        default:
            return 0;
    }
}

// 0x39a668 _ZN12TriggerPlate6UpdateEv
// The plate counts its valid contacts, then activates when the count reaches m_numberOfObjects (after the delay timer runs out) and deactivates when it falls below. The count is kept in unk_3c0 and
// the previous count in m_lastNumContacts. Disabled plates do nothing; an activated plate with behaviour 5 stays activated. The count of trigger type 2 is the number of players. A remotely updated
// plate online (COnline +0x05) takes the replicated count (unk_3c0). Activation: Trigger::Activate, ASSERT(level) (line 230), the QE_TriggerPlate quest event on the current level
// (v2QuestObjectiveType "TriggerPlate", the plate's unk_64 and GetDataId()), the on-sound in 3D at the plate with a data row, the "activate" clip, the on-script and m_activated; deactivation: the off-sound,
// the "deactivate" clip, the off-script and m_activated cleared. RequireOnlineUpdate runs at the end of the counting path.
void TriggerPlate::Update() {
    if (!m_enabled) {
        return;
    }
    // The original tests !m_activated || GetBehavior() != 5 and runs the body when that holds. The GetBehavior call
    // (the virtual at slot 0xec) happens only when the plate is activated.
    if (m_activated && GetBehavior() == 5) {
        return;
    }

    ZoneEx::Update();
    if (GetTriggerType() == 2) {
        m_numberOfObjects = dword_99F76C->GetNumPlayers();
    }

    int numContacts;
    if (GetOnlineGameFlag() && IsRemotelyUpdated()) {
        numContacts = unk_3c0;
    } else {
        numContacts = GetNumValidContactsActivating();
        unk_3c0 = numContacts;
    }

    // m_numberOfObjects <= count, or else the delay timer runs down and must reach zero.
    bool ready = m_numberOfObjects <= numContacts;
    if (!ready) {
        Trigger::UpdateTimer();
        ready = m_timer <= 0;
    }
    if (!ready) {
        return;
    }

    if (Trigger::CanActivate()) {
        const int lastContacts = m_lastNumContacts;
        if (lastContacts != numContacts) {
            const int required = m_numberOfObjects;
            if (required <= numContacts) {
                if (lastContacts < required && !m_activated) {
                    Trigger::Activate();
                    Level* level = ApplicationGetInstance().GetCurrentLevel();
                    if (level == nullptr) {
                        ReportAssert("level", 230);
                    }
                    {
                        QE_TriggerPlate event;
                        event.eventId_ = static_cast<std::uint32_t>(
                            ApplicationGetPyDataConstants()->getConstant("v2QuestObjectiveType", "TriggerPlate"));
                        event.m_character = nullptr;
                        event.m_targetId = unk_64;
                        event.m_flag0 = 0;
                        event.m_flag1 = 0;
                        event.m_value = -1;
                        event.m_matchId = GetDataId();
                        level->RaiseAsync(event);
                    }
                    if (m_dataIndex != -1) {
                        const glitch::core::vector3d<float> at{m_position.X, m_position.Y, m_position.Z};
                        VoxSoundManager::s_instance->Play3D(GetSoundOn(), at, false, 1, -1.0f, -1.0f);
                    }
                    if (m_visualObject != nullptr) {
                        m_visualObject->m_animController->PlayClip("activate", false, 0, 0);
                    }
                    if (m_scriptOnId != -1) {
                        ScriptManager::s_inst.StartScript(m_scriptOnId, unk_64, false);
                    }
                    m_activated = true;
                    m_lastNumContacts = numContacts;
                    GameObject::RequireOnlineUpdate();
                    return;
                }
            } else if (lastContacts >= required) {
                if (m_dataIndex != -1) {
                    const glitch::core::vector3d<float> at{m_position.X, m_position.Y, m_position.Z};
                    VoxSoundManager::s_instance->Play3D(GetSoundOff(), at, false, 1, -1.0f, -1.0f);
                }
                if (m_visualObject != nullptr) {
                    m_visualObject->m_animController->PlayClip("deactivate", false, 0, 0);
                }
                if (m_scriptOffId != -1) {
                    ScriptManager::s_inst.StartScript(m_scriptOffId, unk_64, false);
                }
                m_activated = false;
            }
            m_lastNumContacts = numContacts;
        }
    }
    GameObject::RequireOnlineUpdate();
}

// 0x39aa68 _ZNK12TriggerPlate9GetDataIdEv
// The first index in Arrays::TriggerPlates::m_memberNames (scanned up to Arrays::TriggerPlates::size) whose name equals m_data (its data pointer is the word the listing reads at +0x72c), or -1.
int TriggerPlate::GetDataId() const {
    return pydata::FindMemberName(Arrays::TriggerPlates::m_memberNames, static_cast<int>(Arrays::TriggerPlates::size), m_data.c_str());
}

// 0x39aae4 _ZN12TriggerPlateD1Ev (complete object destructor, D1)
// 0x39ab6c _ZN12TriggerPlateD2Ev (base object destructor, D2; the same code)
// Nothing is done here. The original resets the vptrs, frees the three std::string members (m_scriptOff, m_scriptOn,
// m_data, in reverse declaration order) and then runs Trigger::~Trigger. The compiler does those steps in the same order.
TriggerPlate::~TriggerPlate() {}

// 0x39ab50 _ZN12TriggerPlateD0Ev (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~TriggerPlate() followed by CustomFree(this)). A delete
// expression on a TriggerPlate does the same, so there is no separate body.

// 0x39ae64 _ZN12TriggerPlate17DeclarePropertiesEv
// Trigger's properties first, then "data" (m_data), "number_of_objects" (default 1), "script_on", "script_off" and
// "trigger_type" (default 0).
void TriggerPlate::DeclareProperties() {
    Trigger::DeclareProperties();
    AddProperty<std::string>("data", m_data);
    AddProperty<int>("number_of_objects", m_numberOfObjects, 1);
    AddProperty<std::string>("script_on", m_scriptOn);
    AddProperty<std::string>("script_off", m_scriptOff);
    AddProperty<int>("trigger_type", m_triggerType, 0);
}

// 0x39af04 _ZN12TriggerPlateC1EN10ObjectBase6GO_IDSE (complete object constructor, C1)
// 0x39afe0 _ZN12TriggerPlateC2EN10ObjectBase6GO_IDSE (base object constructor, C2; the same code)
// Trigger(id, hasPhysics = true, playerOnly = false), then the plate's defaults: no row (m_dataIndex -1), one object
// needed, no script ids, trigger type -1, not activated, and no previous contact count.
// The original does not store m_enabled (+0x779). It is cleared here, and InitPost sets it from the row when there is one.
TriggerPlate::TriggerPlate(ObjectBase::GO_IDS id) : Trigger(id, true, false) {
    m_dataIndex = -1;          // +0x730
    m_numberOfObjects = 1;     // +0x734
    m_triggerType = -1;        // +0x768
    m_scriptOnId = -1;         // +0x76c
    m_scriptOffId = -1;        // +0x770
    m_lastNumContacts = 0;     // +0x774
    m_activated = false;       // +0x778
    m_enabled = false;         // +0x779 (not stored by the original constructor)
}

// 0x39b0bc _ZN12TriggerPlate8InitPostEv
// For a plate that passes the spawn probability test: the trigger count (+0x3a8) is -1 and the zone is not player-only. The data row is searched by name (the same search as GetDataId);
// the index goes to m_dataIndex, and a row with a model (m_w7 not -1) copies that GameObjectDict model name into m_dae (+0x290). Then Trigger::InitPost, the script ids of m_scriptOn and
// m_scriptOff, the looping "idle" clip, the row's enabled flag (m_enabled, with a row) and, for trigger type 1, one required object.
void TriggerPlate::InitPost() {
    if (CheckSpawnProbability() < m_spawnProb) {  // +0x274
        m_triggerCount = -1;                      // +0x3a8, the plate is unlimited
        m_playerOnly = false;                     // +0x381 (Zone)

        m_dataIndex = pydata::FindMemberName(Arrays::TriggerPlates::m_memberNames, static_cast<int>(Arrays::TriggerPlates::size), m_data.c_str());
        if (m_dataIndex != -1) {
            const int visual = TriggerPlateRow(m_dataIndex).Visual;  // row +0x1c, a GameObjectDict index
            if (visual != -1) {
                m_dae = reinterpret_cast<const Structs::ColladaFile*>(Arrays::GameObjectDict::members)[visual].Name;
            }
        }
        Trigger::InitPost();

        m_scriptOnId = ScriptManager::s_inst.GetIDFromName(m_scriptOn.c_str(), false);    // +0x76c
        m_scriptOffId = ScriptManager::s_inst.GetIDFromName(m_scriptOff.c_str(), false);  // +0x770

        if (m_visualObject != nullptr) {
            m_visualObject->m_animController->PlayClip("idle", true, 0, 0);
        }
        if (m_dataIndex >= 0) {
            m_enabled = TriggerPlateRow(m_dataIndex).IsActive;  // +0x779 from row +0x08
        }
        if (GetTriggerType() == 1) {
            m_numberOfObjects = 1;                    // +0x734
        }
    }
}
