// Batch g1-game-world-LiftableObject-ad7bbe-0 (part 1 of 2): the methods of LiftableObject from IsUpdatable through the
// destructors. Reconstructed from libDungeonHunter2.so pseudocode (IDA Hex-Rays and the assembly for the call shapes).
//
// Layout: the members are those of dh2/LiftableObject.hpp. m_dataId is at +0x374, the first word after GameObject.
//
// The destructor is defined once in the tree, here (0x3eebcc, see the note there), because this file emits the vtable.

#include <cstdio>
#include <cstdlib>

#include "dh2/AnimController.hpp"
#include <cstdint>

#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/QE_PickedUpLiftable.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/LiftableObject.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

extern int gAssertLevel;  // engine assert level (core-platform/memory.hpp, not included here, as in DestructibleContainer)

namespace {

const char kLiftableObjectSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Complex\\LiftableObject.cpp";

// The original ASSERT: level 2 writes to address 0 (a crash here, kept as abort); level 1 prints and execution goes on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kLiftableObjectSource, line);
    }
}

// VisualObject::m_node (a RootSceneNode*) as the glitch::scene::ISceneNode* the original passes to ISceneNode methods (Release 0x3ee468 calls getAbsolutePosition and addChild on it).
glitch::scene::ISceneNode* AsSceneNode(RootSceneNode* node) {
    return static_cast<glitch::scene::ISceneNode*>(node);
}

}  // namespace

// 0x3ee3b0 _ZNK14LiftableObject11IsUpdatableEv
bool LiftableObject::IsUpdatable() const {
    return true;
}

// 0x3ee3b8 _ZNK14LiftableObject10IsAnimatedEv
bool LiftableObject::IsAnimated() const {
    return true;
}

// 0x3ee3c0 _ZNK14LiftableObject28IsUpdatingPositionFromVisualEv
// True while an owner holds the object (+0x390 m_owner is set), so the visual drives the position.
bool LiftableObject::IsUpdatingPositionFromVisual() const {
    return m_owner != nullptr;
}

// 0x3ee3d0 _ZNK14LiftableObject29IsUpdatingPositionFromPhysicsEv
bool LiftableObject::IsUpdatingPositionFromPhysics() const {
    return m_owner == nullptr;
}

// 0x3ee3e0 _ZNK14LiftableObject13IsInteractiveEP10GameObject
// Not interactive while marked for deletion (ObjectBase +0x81), held (+0x390), or dropping (+0x394).
bool LiftableObject::IsInteractive(GameObject* other) const {
    (void)other;
    if (m_markedForDeletion != 0 || m_owner != nullptr) {
        return false;
    }
    return !m_dropping;
}

// 0x3ee40c _ZNK14LiftableObject10IsObstacleEv
bool LiftableObject::IsObstacle() const {
    return true;
}

// 0x3ee414 _ZNK14LiftableObject17GetObstacleRadiusEv
// The original returns the bits 0x43160000 (1125515264), which is the float 150.0f (GameObject declares float).
float LiftableObject::GetObstacleRadius() const {
    return 150.0f;
}

// 0x3ee420 _ZNK14LiftableObject19GetObstacleStrengthEv
// The original returns the bits 0x41200000 (1092616192), which is the float 10.0f.
float LiftableObject::GetObstacleStrength() const {
    return 10.0f;
}

// 0x3ee42c _ZNK14LiftableObject9GetDataIdEv
// +0x374: the row index in Arrays::LiftableObjects that InitPost stores (-1 when there is no row).
int LiftableObject::GetDataId() const {
    return m_dataId;
}

// 0x3ee434 _ZN14LiftableObject10__CallbackEPN6glitch5scene19ITimelineControllerEPv
// Timeline callback of the visual, registered in InitPost with the object as user data: the drop animation has ended.
void LiftableObject::__Callback(glitch::scene::ITimelineController* controller, void* user) {
    (void)controller;
    static_cast<LiftableObject*>(user)->m_dropping = false;
}

// 0x3ee440 _ZNK14LiftableObject18GetInteractionTypeEP10GameObject
// 4 when nobody holds the object, 5 when other holds it, -1 otherwise.
int LiftableObject::GetInteractionType(GameObject* other) const {
    if (m_owner == nullptr) {
        return 4;
    }
    if (m_owner == other) {
        return 5;
    }
    return -1;
}

// 0x3ee460 _ZN14LiftableObject8InteractEP10GameObject
// The original body is empty.
void LiftableObject::Interact(GameObject* other) {
    (void)other;
}

// 0x3ee464 _ZNK14LiftableObject9IsZonableEv
// Thunk: the original is a tail branch to GameObject::MeetCondition (0x38ab60), forwarded here.
bool LiftableObject::IsZonable() const {
    return GameObject::MeetCondition();
}

// 0x3ee468 _ZN14LiftableObject7ReleaseEv
// Asserts that an owner holds the object (line 233). The object takes the absolute position of its visual node (SetPosition) and its base scale (+0x398), the position is validated in the PF world, the visual is
// synchronised and its node is attached to the scene root again (the root is the device's scene manager +0x04, addChild is ISceneNode vtable +0x5c). The physics filter is enabled, the owner is cleared and a
// re-pin is requested (+0x3a4).
void LiftableObject::Release() {
    if (m_owner == nullptr) {
        ReportAssert("m_owner", 233);
    }
    VisualObject* visual = m_visualObject;
    const glitch::core::vector3d<float> absolute = AsSceneNode(visual->m_node)->getAbsolutePosition();
    GameObject::SetPosition(Point3D<float>{absolute.X, absolute.Y, absolute.Z}, true);
    GameObject::SetScale(m_baseScale);
    Singleton<PFWorld>::s_inst.ValidatePosition(m_position, &m_pfObject);
    visual->Sync();
    DeviceSceneManager()->rootNode->addChild(AsSceneNode(visual->m_node));
    m_physicalObject->enableFilter();
    m_owner = nullptr;
    m_pinPending = true;
}

// 0x3ee5a8 _ZN14LiftableObject4DropEv
// Releases the object, then plays the "drop" clip with PlayClip(name, loop = false, 0, 0). The original passes r3 = 0 and the stack slot 0 for the last two parameters (checked in the assembly). m_dropping (+0x394)
// is set when the clip starts, and the timeline callback clears it. The original returns the PlayClip result.
bool LiftableObject::Drop() {
    Release();
    const bool playing = m_visualObject->m_animController->PlayClip("drop", false, 0, 0);
    if (playing) {
        m_dropping = true;
    }
    return playing;
}

// 0x3ee5fc _ZN14LiftableObject6PickUpEP10GameObject
// Asserts that nobody holds the object (line 186) and that an owner is given (187); either failing returns false. Both visuals are asserted (lines 199 and 200) and either missing returns false. The holder is the
// owner visual's "projectile_node", or its root node. The object's visual takes the origin position and the unit scale and its node is added to the holder; the physics filter is disabled and the body unpinned.
// The owner is stored (+0x390), the level is asserted (line 223) and the PickedUpLiftable quest event (v2QuestObjectiveType, no character, unk_64 as the target id, GetDataId() as the match id) is raised on it.
// Returns true.
bool LiftableObject::PickUp(GameObject* owner) {
    if (m_owner != nullptr) {
        ReportAssert("m_owner == 0", 186);
    }
    if (owner == nullptr) {
        ReportAssert("owner != 0", 187);
    }
    if (m_owner != nullptr || owner == nullptr) {
        return false;
    }
    VisualObject* ownerVisual = owner->m_visualObject;
    VisualObject* myVisual = m_visualObject;
    if (ownerVisual == nullptr) {
        ReportAssert("ownerVO", 199);
    }
    if (myVisual == nullptr) {
        ReportAssert("myVO", 200);
    }
    if (ownerVisual == nullptr || myVisual == nullptr) {
        return false;
    }

    // The holder is the owner's "projectile_node", or the owner's root node when there is none.
    glitch::scene::ISceneNode* holder = ownerVisual->GetSpecificNode("projectile_node");
    if (holder == nullptr) {
        holder = AsSceneNode(ownerVisual->m_node);
    }
    myVisual->SetPosition(Vec3f_Origin);
    myVisual->SetScaling(Point3D<float>{1.0f, 1.0f, 1.0f});
    holder->addChild(AsSceneNode(myVisual->m_node));
    m_physicalObject->disableFilter();
    m_physicalObject->unpin();
    m_owner = owner;

    Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
    if (level == nullptr) {
        ReportAssert("level", 223);
    }
    {
        QE_PickedUpLiftable event;
        event.eventId_ = static_cast<std::uint32_t>(
            ApplicationGetPyDataConstants()->getConstant("v2QuestObjectiveType", "PickedUpLiftable"));
        event.m_character = nullptr;
        event.m_targetId = unk_64;
        event.m_flag0 = 0;
        event.m_flag1 = 0;
        event.m_value = -1;
        event.m_matchId = GetDataId();
        level->RaiseAsync(event);
    }
    return true;
}

// 0x3ee9a4 _ZN14LiftableObject6UpdateEv
// Pins the physics body once after a release (m_pinPending, +0x3a4), then follows the visual's position.
void LiftableObject::Update() {
    if (m_pinPending) {
        m_physicalObject->pin();
        m_pinPending = false;
    }
    VisualObject* visual = m_visualObject;
    if (visual != nullptr) {
        Point3D<float> position{0.0f, 0.0f, 0.0f};
        visual->GetPosition(position);
        GameObject::SetPosition(position, true);
    }
}

// 0x3eea10 _ZN14LiftableObject8InitPostEv
// For an object that passes the spawn probability test: a non-empty data_desc is searched in Arrays::LiftableObjects::m_memberNames (strcmp, the first match) and m_dataId (+0x374) becomes the index, or -1 when
// no name matches or the table is empty; with a row whose GameObjectDict index (record +0x04) is not -1, that dict model name (record +0x08) becomes m_dae (+0x290). An empty data_desc leaves m_dataId alone.
// Then GameObject::InitPost; when MeetCondition holds, the visual gets the drop-finished callback and plays "idle" in a loop and its mesh box is applied; otherwise the object is hidden.
void LiftableObject::InitPost() {
    if (GameObject::CheckSpawnProbability() < m_spawnProb) {
        if (!m_dataDesc.empty()) {
            m_dataId = pydata::FindMemberName(Arrays::LiftableObjects::m_memberNames, static_cast<int>(Arrays::LiftableObjects::size), m_dataDesc.c_str());
            if (m_dataId != -1) {
                const int model = reinterpret_cast<const Structs::LiftableObject*>(Arrays::LiftableObjects::members)[m_dataId].Visual;
                if (model != -1) {
                    m_dae = reinterpret_cast<const Structs::ColladaFile*>(Arrays::GameObjectDict::members)[model].Name;
                }
            }
        }
        GameObject::InitPost();
        if (GameObject::MeetCondition()) {
            VisualObject* visual = m_visualObject;
            if (visual != nullptr) {
                visual->m_animController->SetCallbacks(&LiftableObject::__Callback, this, nullptr, nullptr);
                visual->m_animController->PlayClip("idle", true, 0, 0);
                visual->ApplyMeshBox();
            }
        } else {
            SetVisible(false);
        }
    }
}

// 0x3eebcc _ZN14LiftableObjectD1Ev
// The original stores the three vtable pointers, destroys m_dataDesc (+0x378) and calls GameObject::~GameObject. The
// implicit member and base destruction does the same.
// This is the only definition of the destructor in the tree. The destructor is the key function of LiftableObject (the
// constructor is not virtual, and this is the first virtual function declared that is not inline), so this translation
// unit emits the vtable and the typeinfo. The base-object form D2 at 0x3eec3c is generated from this definition, and the
// part-2 file (ad7bbe-1.cpp) does not define it again.
LiftableObject::~LiftableObject() {}

// 0x3eec20 _ZN14LiftableObjectD0Ev
// Compiler-generated deleting destructor: ~LiftableObject() followed by CustomFree(this). A delete expression produces
// it, so no source is written.
