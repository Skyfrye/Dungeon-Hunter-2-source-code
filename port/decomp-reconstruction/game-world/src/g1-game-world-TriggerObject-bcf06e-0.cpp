// Batch g1-game-world-TriggerObject-bcf06e-0: the TriggerObject methods of libDungeonHunter2.so (the two constructors, the
// destructor, the Trigger and GameObject overrides, Interact and TestInteractiveCond). Declarations come from
// dh2/TriggerObject.hpp, which needs no change for this batch. Offsets in comments are the original 32-bit ones.
//
// Layout facts used here (named in dh2/TriggerObject.hpp, dh2/Trigger.hpp, dh2/GameObject.hpp and dh2/ObjectBase.hpp):
//   TriggerObject +0x718 m_data (std::string), +0x730 m_dataIndex, +0x734 m_script, +0x74c m_scriptId, +0x750 m_scriptOff,
//           +0x768 m_scriptOffId, +0x76c m_unlockCond, +0x784 m_unlocked, +0x788 m_unlockConditions
//   Trigger +0x3b4 m_numActivations, +0x3b8 m_timer
//   GameObject +0x274 m_spawnProb, +0x2d8 m_visualObject, +0x2e4 m_pendingInteractor, +0x300 m_script (LuaScript*),
//           +0x373 m_idleSoundMuted
//   ObjectBase +0x28 unk_28, +0x64 unk_64 (the object id passed to the scripts and the quest event), +0x84 m_static, +0x85 unk_85
//
// Name clash: TriggerObject::m_script (std::string, +0x734) hides GameObject::m_script (LuaScript*, +0x300). The Lua call in
// Interact reads GameObject::m_script.
//

#include "dh2/TriggerObject.hpp"

#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/Character.hpp"
#include "dh2/AnimController.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QE_TriggerOn.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/Application.hpp"
#include "dh2/ConditionList.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/PODecor.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C, the PlayerManager instance
#include "dh2/global/ctrl_camera.hpp"        // ApplicationGetInstance(), the Application singleton accessor
#include "dh2/sfc/script/lua/Arguments.hpp"

// Engine-wide assert level (core-platform/memory.hpp is not included: see the note above).
extern int gAssertLevel;

namespace {

// Row `index` of Arrays::TriggerObjects as the host element (Structs::TriggerObject): m_w1 +0x04 interaction type, m_w3 +0x0c script name, m_w4 +0x10 sound, m_w5 +0x14 GameObjectDict model.
const Structs::TriggerObject& DataRow(int index) {
    return reinterpret_cast<const Structs::TriggerObject*>(Arrays::TriggerObjects::members)[index];
}

}  // namespace

namespace {

const char kTriggerObjectSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Triggers\\TriggerObject.cpp";

// The original ASSERT(expression) at TriggerObject.cpp:line. Level 2 stops the process (the original stores to address 0);
// level 1 prints the message.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kTriggerObjectSource, line);
    }
}

}  // namespace

// 0x399318 TriggerObject::IsUpdatable() const
bool TriggerObject::IsUpdatable() const {
    return true;
}

// 0x399320 TriggerObject::IsZonable() const
bool TriggerObject::IsZonable() const {
    return true;
}

// 0x399328 TriggerObject::IsAnimated() const
bool TriggerObject::IsAnimated() const {
    return true;
}

// 0x399330 TriggerObject::GetInteractionType(GameObject*) const
// -1 without a data row (m_dataIndex, +0x730, is -1); otherwise the interaction type of the data row (+0x4 of Arrays::TriggerObjects, stride 24).
int TriggerObject::GetInteractionType(GameObject* other) const {
    (void)other;
    if (m_dataIndex == -1) {
        return -1;
    }
    return DataRow(m_dataIndex).InteractionType;
}

// 0x39939c TriggerObject::InterpretIncomingNetStruct(bool)
// Trigger::InterpretIncomingNetStruct, then m_unlocked (+0x784) is cleared when the argument is set.
void TriggerObject::InterpretIncomingNetStruct(bool force) {
    Trigger::InterpretIncomingNetStruct(force);
    if (force) {
        m_unlocked = false;  // +0x784
    }
}

// 0x3993bc TriggerObject::TestInteractiveCond()
// The object is locked (m_unlocked, +0x784, cleared) when the local player's Character (PlayerInfo +0x660 of GetLocalPlayer(0, true)) exists and its PlayerSavegame (Character +0x14e8) is missing or has
// its quest sync byte (+0x14, m_questSynced) clear. Otherwise the unlock ConditionList (+0x788) decides: true or absent unlocks the object, plays "unlock" once on its animation and clears the
// idle-sound mute (+0x373); false locks it.
void TriggerObject::TestInteractiveCond() {
    Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;  // PlayerInfo +0x660
    if (character == nullptr || (character->m_savegame != nullptr && character->m_savegame->m_questSynced)) {
        if (m_unlockConditions == nullptr || m_unlockConditions->Eval()) {  // +0x788
            m_unlocked = true;  // +0x784
            if (m_visualObject != nullptr) {  // +0x2d8
                m_visualObject->m_animController->PlayClip("unlock", false, 0, 0);  // VisualObject +0x38, vtable slot +0x20
            }
            m_idleSoundMuted = 0;  // +0x373
        } else {
            m_unlocked = false;
        }
    } else {
        m_unlocked = false;
    }
}

// 0x399490 TriggerObject::IsInteractive(GameObject*) const
// Trigger::CanActivate, then m_unlocked. The original returns CanActivate's zero when it is false.
bool TriggerObject::IsInteractive(GameObject* other) const {
    (void)other;
    if (Trigger::CanActivate()) {
        return m_unlocked;  // +0x784
    }
    return false;
}

// 0x3994a8 TriggerObject::Update()
// The delay timer (+0x3b8) is read before Trigger::Update counts it down. An unlocked object that was
// delayed and can now activate plays "idle" (loop, no unused argument) and clears the idle-sound mute. The visual is then
// synced, and a pending interactor (+0x2e4) is passed to Interact (virtual) and cleared.
void TriggerObject::Update() {
    const int timerBefore = m_timer;  // +0x3b8
    Trigger::Update();
    if (m_unlocked) {  // +0x784
        if (timerBefore > 0 && Trigger::CanActivate()) {
            if (m_visualObject != nullptr) {  // +0x2d8
                m_visualObject->m_animController->PlayClip("idle", true, 0, 0);
            }
            m_idleSoundMuted = 0;  // +0x373
        }
    } else {
        TestInteractiveCond();
    }
    if (m_visualObject != nullptr) {
        m_visualObject->Sync();
    }
    if (m_pendingInteractor != nullptr) {  // +0x2e4
        Interact(m_pendingInteractor);     // vtable slot +0x98
        m_pendingInteractor = nullptr;
    }
}

// 0x399580 TriggerObject::Deserialize(IStreamBase*)
// Trigger::Deserialize, TestInteractiveCond, then the animation the state selects: "idle" (an unlocked, activatable object), "idlelocked", or "idleactive" (else "activate").
void TriggerObject::Deserialize(IStreamBase* stream) {
    Trigger::Deserialize(stream);
    TestInteractiveCond();
    if (m_visualObject == nullptr) {  // +0x2d8
        return;
    }
    AnimController* anim = m_visualObject->m_animController;  // VisualObject +0x38
    if (Trigger::CanActivate()) {
        if (m_unlocked) {  // +0x784
            anim->PlayClip("idle", true, 0, 0);
        } else {
            anim->PlayClip("idlelocked", true, m_unlocked, m_unlocked);
        }
    } else if (!anim->PlayClip("idleactive", true, 0, 0)) {
        anim->PlayClip("activate", false, 0, 0);
    }
}

// 0x3996a4 TriggerObject::Serialize(IStreamBase*)
// Thunk: a tail branch to Trigger::Serialize (0x398978) with the same arguments.
void TriggerObject::Serialize(IStreamBase* stream) {
    Trigger::Serialize(stream);
}

// 0x39993c TriggerObject::~TriggerObject()   (complete object destructor, D1)
// 0x3999f4 TriggerObject::~TriggerObject()   (base object destructor, D2): the same body.
// The unlock ConditionList is destroyed and released with CustomFree, and then the compiler destroys the four property
// strings (+0x76c, +0x750, +0x734, +0x718) in reverse declaration order and runs Trigger::~Trigger, as the original does.
// 0x3999d8 (D0, deleting) is compiler generated and is skipped; see the ledger.
TriggerObject::~TriggerObject() {
    ConditionList* conditions = m_unlockConditions;  // +0x788
    if (conditions != nullptr) {
        conditions->~ConditionList();
        CustomFree(conditions);
        m_unlockConditions = nullptr;
    }
}

// 0x399af0 TriggerObject::Interact(GameObject*)
// With an external script (GameObject +0x300) and Trigger::CanActivate, the script's OnTrigger function is called with the interacting object. Then Trigger::Activate, the "activate" clip and, with a data row,
// the row's sound (+0x10) in 3D at the object. Without an off-script (m_scriptOffId, +0x768) or on an even activation count (+0x3b4) the on-script runs (m_scriptId, +0x74c, with the object id unk_64), the
// level asserts (line 286), the TriggerOn quest event (v2QuestObjectiveType "TriggerOn", unk_64, the data index as match id) is raised on it and the idle sound is muted; otherwise the off-script runs.
void TriggerObject::Interact(GameObject* other) {
    if (GameObject::m_script != nullptr && Trigger::CanActivate()) {  // GameObject +0x300
        sfc::script::lua::Arguments args;
        args.pushUserData(other);
        GameObject::m_script->Call("OnTrigger", args);
    }
    Trigger::Activate();
    if (m_visualObject != nullptr) {  // +0x2d8
        m_visualObject->m_animController->PlayClip("activate", false, 0, 0);
    }
    if (m_dataIndex != -1) {
        const glitch::core::vector3d<float> at{m_position.X, m_position.Y, m_position.Z};
        VoxSoundManager::s_instance->Play3D(DataRow(m_dataIndex).Sound, at, false, 1, -1.0f, -1.0f);
    }
    if (m_scriptOffId == -1 || (m_numActivations & 1) == 0) {  // +0x768, +0x3b4
        if (m_scriptId != -1) {  // +0x74c
            ScriptManager::s_inst.StartScript(m_scriptId, unk_64, false);
        }
        Level* level = ApplicationGetInstance().GetCurrentLevel();
        if (level == nullptr) {
            ReportAssert("level", 286);
        }
        {
            QE_TriggerOn event;
            event.eventId_ = static_cast<std::uint32_t>(
                ApplicationGetPyDataConstants()->getConstant("v2QuestObjectiveType", "TriggerOn"));
            event.m_character = nullptr;
            event.m_targetId = unk_64;
            event.m_flag0 = 0;
            event.m_flag1 = 0;
            event.m_value = -1;
            event.m_matchId = m_dataIndex;
            level->RaiseAsync(event);
        }
        m_idleSoundMuted = 1;  // +0x373
    } else {
        ScriptManager::s_inst.StartScript(m_scriptOffId, unk_64, false);
    }
}

// 0x399d70 TriggerObject::DeclareProperties()
// Trigger's properties first, then the four strings: "data" (+0x718), "script" (+0x734), "scriptOff" (+0x750) and
// "unlock_cond" (+0x76c).
void TriggerObject::DeclareProperties() {
    Trigger::DeclareProperties();
    AddProperty<std::string>("data", m_data);
    AddProperty<std::string>("script", m_script);
    AddProperty<std::string>("scriptOff", m_scriptOff);
    AddProperty<std::string>("unlock_cond", m_unlockCond);
}

// 0x399df0 TriggerObject::TriggerObject()   (complete object constructor, C1)
// 0x399ef4 TriggerObject::TriggerObject()   (base object constructor, C2): the same body.
// Trigger(20, false, true), then the stores below. The original does not store m_scriptOffId (+0x768) here, so Interact reads it only after InitPost has set it, as in the original.
TriggerObject::TriggerObject()
    : Trigger(static_cast<ObjectBase::GO_IDS>(20), false, true) {
    m_dataIndex = -1;              // +0x730
    m_scriptId = -1;               // +0x74c
    m_static = false;              // +0x84
    unk_85 = 1;                    // +0x85 (ObjectBase updating flag)
    m_unlocked = false;            // +0x784
    m_unlockConditions = nullptr;  // +0x788
    unk_28 = 1;                    // +0x28 (ObjectBase; Trigger's constructor also stores it)
}

// 0x399ff8 TriggerObject::InitPost()
// After the spawn check: the data row is found by name in Arrays::TriggerObjects (m_dataIndex, -1 when none matches) and its GameObjectDict model name (row +0x14, when not -1) becomes m_dae (+0x290).
// The script ids of m_script and m_scriptOff, then Trigger::InitPost. An unlock_cond that is empty or "Invalid" leaves the object unlocked; a named one is found in Arrays::v2Conditions and builds
// the unlock ConditionList from the row's stubs (a name that is not listed builds none). Without a data row, or when MeetCondition fails, the object is hidden. Otherwise the "idle" clip (unlocked) or
// "idlelocked" plays, a static PODecor body is created (group 0, category 2, mask 0xffff), the row's sound (+0x10) is loaded and the row's script (+0x0c) is loaded from data/scripts/objects/.
void TriggerObject::InitPost() {
    const int spawn = CheckSpawnProbability();  // GameObject::CheckSpawnProbability
    if (!(spawn < m_spawnProb)) {               // +0x274
        return;
    }

    m_dataIndex = pydata::FindMemberName(Arrays::TriggerObjects::m_memberNames, static_cast<int>(Arrays::TriggerObjects::size), m_data.c_str());  // +0x730
    if (m_dataIndex != -1) {
        const int model = DataRow(m_dataIndex).Visual;
        if (model != -1) {
            m_dae = reinterpret_cast<const Structs::ColladaFile*>(Arrays::GameObjectDict::members)[model].Name;
        }
    }

    m_scriptId = ScriptManager::s_inst.GetIDFromName(m_script.c_str(), false);        // +0x74c
    m_scriptOffId = ScriptManager::s_inst.GetIDFromName(m_scriptOff.c_str(), false);  // +0x768
    Trigger::InitPost();

    if (m_unlockCond.empty() || m_unlockCond == "Invalid") {  // +0x76c
        m_unlocked = true;  // +0x784
    } else {
        const int condition = pydata::FindMemberName(Arrays::v2Conditions::m_memberNames, static_cast<int>(Arrays::v2Conditions::size), m_unlockCond.c_str());
        if (condition != -1) {
            m_unlockConditions = new ConditionList();   // +0x788
            const Structs::v2CondAnd& row = reinterpret_cast<const Structs::v2CondAnd*>(Arrays::v2Conditions::members)[condition];
            m_unlockConditions->AssignPyData(static_cast<Structs::v2ConditionStub*>(row.Conds), static_cast<int>(row.CondsSize));
        }
    }

    if (m_dataIndex == -1 || !MeetCondition()) {
        SetVisible(false);  // vtable slot +0x40 (virtual)
        return;
    }

    if (m_visualObject != nullptr) {  // +0x2d8
        AnimController* anim = m_visualObject->m_animController;
        if (m_unlocked) {  // +0x784
            anim->PlayClip("idle", true, 0, 0);
        } else {
            anim->PlayClip("idlelocked", true, m_unlocked, m_unlocked);
        }
    }

    // The physics body is the static box of PODecor (group 0, category 2, mask 0xffff), owned by the object.
    PODecor* body = new PODecor(ApplicationGetInstance().m_physicalWorld, this, false);
    SetPhysicalObject(body, false);
    if (VoxSoundManager::s_instance != nullptr) {
        VoxSoundManager::s_instance->LoadSound(DataRow(m_dataIndex).Sound);
    }
    LoadExternalScript(DataRow(m_dataIndex).Script, "data/scripts/objects/");
}
