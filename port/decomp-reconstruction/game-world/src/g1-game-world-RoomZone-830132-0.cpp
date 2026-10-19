// Batch g1-game-world-RoomZone-830132-0: the RoomZone class (game-world), all of it in one batch.
// Layout and declarations: dh2/RoomZone.hpp. Member offsets are kept as comments in that header.
//
// Functions, in address order: IsZonable, HasBeenVisited, SetVisited, HasInside, Draw, the InitPost and
// DeclareProperties thunks, the constructor (C1, with C2 the same body), AddObject, the complete destructor (D1, with
// D2 the same body), the deleting destructor (D0, compiler generated), RemoveObject, DeActivate, AddInitialObject,
// InitObjectList, Activate and Update.
//
// PARTIAL: the two constructors leave unk_38c (+0x38c, the owning Module) null, which the original does not write.

#include "dh2/RoomZone.hpp"

#include <algorithm>

#include "dh2/Application.hpp"                    // Application::GetCurrentLevel
#include "dh2/CameraLevel.hpp"                    // CameraLevel, the base CameraBase::m_camera (ICameraSceneNode*)
#include "dh2/Character.hpp"                      // Character (GameObject +0x160 m_position)
#include "dh2/DebugSwitches.hpp"                  // DebugSwitches::s_inst, load, GetSwitch
#include "dh2/GameObject.hpp"                     // GameObject::ZoneEntered, ZoneExited, IsZonable, m_roomZone, unk_2ef
#include "dh2/Level.hpp"                          // Level::m_camera (+0x128)
#include "dh2/Module.hpp"                         // Module::m_visited (+0x3fc)
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectListItem.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ObjectManager.hpp"                  // ObjectManager::AddRoomObjects, DelRoomObjects, unk_f8 (+0xf8)
#include "dh2/PlayerInfo.hpp"                     // PlayerInfo::unk_660 (+0x660, the player's Character)
#include "dh2/PlayerManager.hpp"                  // PlayerManager::GetLocalPlayer
#include "dh2/global/IsMultiplayerGame.hpp"       // dword_99F76C, the PlayerManager instance
#include "dh2/global/ObjectManagerInstance.hpp"   // dword_99F764, the ObjectManager instance
#include "dh2/global/ctrl_camera.hpp"             // ApplicationGetInstance()
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"  // getViewFrustum (vtable +0x144)
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"      // planes[6] at +0x0c

// 0x3964a0 RoomZone::IsZonable() const
// Returns false. Slot +0xc4 of the room: AddInitialObject calls it on the object, so a room is never listed in another room.
bool RoomZone::IsZonable() const {
    return false;
}

// 0x3964a8 RoomZone::HasBeenVisited() const
// Reads Module::m_visited (+0x3fc) of the owning Module (+0x38c). With no Module the room counts as visited.
bool RoomZone::HasBeenVisited() const {
    if (unk_38c != nullptr) {
        return unk_38c->m_visited;
    }
    return true;
}

// 0x3964bc RoomZone::SetVisited(bool)
// Writes Module::m_visited of the owning Module, when there is one.
void RoomZone::SetVisited(bool visited) {
    if (unk_38c != nullptr) {
        unk_38c->m_visited = visited;
    }
}

// 0x3964cc RoomZone::HasInside(Point3D<float> const&) const
// The position's X and Y lie inside the absolute AABB, both ends inclusive. The box is stored as min xyz at +0x12c and
// max xyz at +0x138 (GameObject::m_absAabb), so X uses entries 0 and 3 and Y uses entries 1 and 4.
bool RoomZone::HasInside(const Point3D<float>& position) const {
    return m_absAabb[0] <= position.X && position.X <= m_absAabb[3] &&
           m_absAabb[1] <= position.Y && position.Y <= m_absAabb[4];
}

// 0x396544 RoomZone::Draw() const
// Empty in the original (a bare return).
void RoomZone::Draw() const {
}

// 0x396548 RoomZone::InitPost()
// Forward thunk: Zone::InitPost, which is not reimplemented here (TRACK-B decision 4).
void RoomZone::InitPost() {
    Zone::InitPost();
}

// 0x396554 RoomZone::DeclareProperties()
// Forward thunk: Zone::DeclareProperties, which is not reimplemented here (TRACK-B decision 4).
void RoomZone::DeclareProperties() {
    Zone::DeclareProperties();
}

// 0x396558 RoomZone::RoomZone(ObjectBase::GO_IDS) (C1, complete object)
// 0x3965c4 RoomZone::RoomZone(ObjectBase::GO_IDS) (C2, base object; same body)
// PARTIAL: Zone(id, false, true), then m_active (+0x389) and unk_388 (+0x388) set, m_objectListInitialized (+0x390)
// cleared and the list left empty. The original does not write unk_38c (+0x38c). The host initialises it to null, the
// value HasBeenVisited and SetVisited treat as "no owning Module". Module::InitPost sets it later.
RoomZone::RoomZone(ObjectBase::GO_IDS id) : Zone(id, false, true) {
    m_active = true;                    // +0x389
    unk_388 = true;                     // +0x388
    m_objectListInitialized = false;    // +0x390
    unk_38c = nullptr;                  // +0x38c (not written by the original constructor)
}

// 0x39672c RoomZone::AddObject(GameObject*)
// Appends the object to the list unless it is already listed. The original searches the node values in list order.
void RoomZone::AddObject(GameObject* object) {
    if (std::find(m_objects.begin(), m_objects.end(), object) == m_objects.end()) {
        m_objects.push_back(object);
    }
}

// 0x396828 RoomZone::~RoomZone() (D1, complete object)
// 0x3967a0 RoomZone::~RoomZone() (D2, base object; same body)
// Frees every list node (m_objects is cleared here), then Zone::~Zone runs as the base destructor. The original does not
// call DeActivate, so the listed objects are not told that they left the zone.
RoomZone::~RoomZone() {
    m_objects.clear();
}

// 0x3968b0 RoomZone::~RoomZone() (D0, deleting destructor)
// Skipped: the deleting destructor is compiler generated from ~RoomZone above. The original body is the D1 body followed
// by CustomFree(this), which a delete expression does.

// 0x3968cc RoomZone::RemoveObject(GameObject*)
// Unlinks the first node that holds the object and frees it. Nothing happens when the object is not listed.
void RoomZone::RemoveObject(GameObject* object) {
    const auto it = std::find(m_objects.begin(), m_objects.end(), object);
    if (it != m_objects.end()) {
        m_objects.erase(it);
    }
}

// 0x396918 RoomZone::DeActivate()
// Calls GameObject::ZoneExited on each listed object, then hands the list to ObjectManager::DelRoomObjects. The
// DebugSwitches lookups are kept as the original makes them: isTracingRoomZoneTransition once, then
// isTracingRoomZoneTransitionFull for each object. Their results are not used.
void RoomZone::DeActivate() {
    DebugSwitches::s_inst.load();
    DebugSwitches::s_inst.GetSwitch("isTracingRoomZoneTransition");
    ObjectManager* const objectManager = dword_99F764;
    for (GameObject* object : m_objects) {
        if (object != nullptr) {
            object->ZoneExited();
        }
        DebugSwitches::s_inst.load();
        DebugSwitches::s_inst.GetSwitch("isTracingRoomZoneTransitionFull");
    }
    objectManager->DelRoomObjects(&m_objects);
}

// 0x396a90 RoomZone::AddInitialObject(GameObject*)
// Accepts an object that IsZonable and whose position X and Y lie inside this room's box (both ends inclusive). An
// object that is already in a room (unk_2ef set) leaves it through that room's RemoveObject. The object then records
// this room (m_roomZone, +0x2f4), sets unk_2ef (+0x2ef), calls ZoneEntered and joins this list. Returns true when the
// object was accepted.
bool RoomZone::AddInitialObject(GameObject* object) {
    if (object == nullptr || !object->IsZonable() ||
        m_absAabb[0] > object->m_position.X || object->m_position.X > m_absAabb[3] ||
        m_absAabb[1] > object->m_position.Y || object->m_position.Y > m_absAabb[4]) {
        return false;
    }
    if (object->unk_2ef != 0) {
        DebugSwitches::s_inst.load();
        DebugSwitches::s_inst.GetSwitch("isTracingRoomZoneInit");
        if (object->m_roomZone != nullptr) {
            object->m_roomZone->RemoveObject(object);
        }
    } else {
        DebugSwitches::s_inst.load();
        DebugSwitches::s_inst.GetSwitch("isTracingRoomZoneInit");
    }
    object->m_roomZone = this;
    object->unk_2ef = 1;
    object->ZoneEntered();
    m_objects.push_back(object);
    return true;
}

// 0x396c44 RoomZone::InitObjectList()
// Runs once (m_objectListInitialized, +0x390). Walks ObjectManager's object map (dword_99F764 +0x0c) in key order. Each
// entry's object is replaced by the object its handle resolves to (ObjectBase::GetHandle, then the GameObject conversion);
// a null entry stays null. Each result goes through AddInitialObject, then the flag is set.
void RoomZone::InitObjectList() {
    if (m_objectListInitialized) {
        return;
    }
    ObjectManager* const objectManager = dword_99F764;
    for (auto& entry : objectManager->m_objectMap) {
        GameObject* object = nullptr;
        ObjectBase* base = entry.second.m_object;
        if (base != nullptr) {
            ObjectHandle handle = base->GetHandle();
            object = handle;
        }
        AddInitialObject(object);
    }
    m_objectListInitialized = true;
}

// 0x396d24 RoomZone::Activate()
// Calls GameObject::ZoneEntered on each listed object, then hands the list to ObjectManager::AddRoomObjects. The
// DebugSwitches lookups match DeActivate, with the isTracingRoomZoneTransition names of the original.
void RoomZone::Activate() {
    DebugSwitches::s_inst.load();
    DebugSwitches::s_inst.GetSwitch("isTracingRoomZoneTransition");
    ObjectManager* const objectManager = dword_99F764;
    for (GameObject* object : m_objects) {
        if (object != nullptr) {
            object->ZoneEntered();
        }
        DebugSwitches::s_inst.load();
        DebugSwitches::s_inst.GetSwitch("isTracingRoomZoneTransitionFull");
    }
    objectManager->AddRoomObjects(&m_objects);
}

// 0x396e9c RoomZone::Update()
// Tests the room's absolute AABB against the six planes of the level camera (the view frustum of the camera node,
// SViewFrustum::planes, read through Level::m_camera -> CameraBase::m_camera -> getViewFrustum). For each plane the
// tested corner takes min on an axis when the normal component is >= 0 and max otherwise. When that corner lies
// on the positive side of a plane, the whole room is beyond it: the room deactivates (DeActivate, when m_active is set or
// unk_388 is pending), m_active is cleared and unk_388 is cleared. When no plane rejects the room, the room activates
// (Activate, when m_active is clear or unk_388 is pending), m_active is set, the ObjectManager counter unk_f8 (+0xf8)
// is incremented, and a room that is not visited is marked visited once the local player's position lies inside it.
// unk_388 is cleared at the end in both cases. The original does not check the GetLocalPlayer result for null.
void RoomZone::Update() {
    const float minX = m_absAabb[0];
    const float minY = m_absAabb[1];
    const float minZ = m_absAabb[2];
    const float maxX = m_absAabb[3];
    const float maxY = m_absAabb[4];
    const float maxZ = m_absAabb[5];

    Level* const level = ApplicationGetInstance().GetCurrentLevel();
    const glitch::scene::SViewFrustum* const frustum = level->m_camera->m_camera->getViewFrustum();

    for (int i = 0; i < 6; ++i) {
        const glitch::core::plane3d<float>& plane = frustum->planes[i];
        const float x = plane.Normal.X >= 0.0f ? minX : maxX;
        const float y = plane.Normal.Y >= 0.0f ? minY : maxY;
        const float z = plane.Normal.Z >= 0.0f ? minZ : maxZ;
        const float dotXY = plane.Normal.X * x + plane.Normal.Y * y;
        const float value = (dotXY + plane.Normal.Z * z) + plane.D;
        if (value > 0.0f) {
            if (m_active || unk_388) {
                DeActivate();
            }
            m_active = false;
            unk_388 = false;
            return;
        }
    }

    if (!m_active || unk_388) {
        Activate();
    }
    m_active = true;
    ++dword_99F764->unk_f8;
    if (!HasBeenVisited()) {
        PlayerInfo* const localPlayer = dword_99F76C->GetLocalPlayer(0, true);
        Character* const character = localPlayer->unk_660;
        if (character != nullptr) {
            const Point3D<float> position = character->m_position;  // Character +0x160, the GameObject position
            if (HasInside(position)) {
                SetVisited(true);
            }
        }
    }
    unk_388 = false;
}
