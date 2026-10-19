// Batch g1-game-character-SpawnSpot-3714d9-0 (all of SpawnSpot): a spawn point that joins a SpawnGroupManager group.
// Declarations and layout come from dh2/SpawnSpot.hpp, which already declares every method in this batch.
//
// Offsets in comments are the original 32-bit offsets. GameObject owns m_position (+0x160), m_rotation (+0x16c) and
// m_spawnProb (+0x274); SpawnSpot's own member is m_group (+0x374).
//
// Duplicate bodies: the C1 and C2 constructors (0x3ea8e4, 0x3ea94c) and the D1 and D2 destructors (0x3ea808, 0x3ea888)
// are identical. Each pair shares one definition below. The scalar deleting destructor (D0, 0x3ea86c) is compiler
// generated and is not written.

#include <string>

#include "dh2/SpawnGroupManager.hpp"
#include "dh2/SpawnSpot.hpp"

// 0x3ea6e4 SpawnSpot::IsUpdatable() const
bool SpawnSpot::IsUpdatable() const {
    return false;
}

// 0x3ea6ec SpawnSpot::IsZonable() const
// Returns true: unlike GameObject::IsZonable, the spot does not depend on m_alwaysVisible.
bool SpawnSpot::IsZonable() const {
    return true;
}

// 0x3ea6f4 SpawnSpot::IsAnimated() const
bool SpawnSpot::IsAnimated() const {
    return false;
}

// 0x3ea6fc SpawnSpot::IsInteractive(GameObject*) const
// The argument is not read.
bool SpawnSpot::IsInteractive(GameObject* /*other*/) const {
    return false;
}

// 0x3ea704 SpawnSpot::PlaceObject(GameObject*)
// Sets the object's position to this spot's m_position with setDestination = true, then its rotation to m_rotation.
// The Hex-Rays return type is the r0 residue of the SetRotation call, which is void, so PlaceObject is void.
void SpawnSpot::PlaceObject(GameObject* object) {
    object->SetPosition(m_position, true);
    object->SetRotation(m_rotation);
}

// 0x3ea7b8 SpawnSpot::InitFinal()
// The spot joins its group only when the CheckSpawnProbability result is below m_spawnProb (+0x274, a signed compare,
// asm 0x3ea7b8). Then GameObject::InitFinal runs, and the spot joins the group when MeetCondition passes. The Hex-Rays
// return value is the r0 residue of the last call; the override is void.
void SpawnSpot::InitFinal() {
    if (CheckSpawnProbability() < m_spawnProb) {
        GameObject::InitFinal();
        if (MeetCondition()) {
            SpawnGroupManager::GetInstance()->InsSpawn(this);
        }
    }
}

// 0x3ea7fc SpawnSpot::InitPost()
// Thunk: the binary is a single branch to GameObject::InitPost (0x38be5c). Forwarded, not reimplemented (TRACK-B
// decision 4). The Hex-Rays return type (VisualObject*) is the r0 residue of that branch; the hook is void.
void SpawnSpot::InitPost() {
    GameObject::InitPost();
}

// 0x3ea808 SpawnSpot::~SpawnSpot() (D1, complete object)
// 0x3ea888 SpawnSpot::~SpawnSpot() (D2, same body as D1)
// The spot leaves its group. The original also sets the three vptrs to SpawnSpot's and then, after this body, destroys
// m_group and runs the GameObject destructor. The compiler emits those steps in the same order, so they are not written.
SpawnSpot::~SpawnSpot() {
    SpawnGroupManager::GetInstance()->DelSpawn(this);
}

// 0x3ea8e4 SpawnSpot::SpawnSpot(ObjectBase::GO_IDS) (C1)
// 0x3ea94c SpawnSpot::SpawnSpot(ObjectBase::GO_IDS) (C2, same body as C1)
// The Hex-Rays signature drops the GO_IDS argument, but the asm does not touch r1 before the call to GameObject's
// constructor (0x3ea8e4: MOV R4, R0; BL GameObject C2), so the id is passed on unchanged. m_group is default
// constructed to the empty string (asm: m_group's first byte is set to 0).
SpawnSpot::SpawnSpot(ObjectBase::GO_IDS id) : GameObject(id) {}

// 0x3eaa98 SpawnSpot::DeclareProperties()
// GameObject's properties first, then "group": the std::string member m_group (+0x374) with an empty default.
// AddProperty<std::string>(name, member) passes T() as the default, which is the empty string the original copies.
// The original builds the SimpleTypeProperty<std::string> block inline and registers it with
// PropertyMap::AddProperty(name, Property*). Property::m_offset is the member address measured from the PropertyMap
// base at +0x04, so it is 0x374 - 0x04 = 0x370 (880).
void SpawnSpot::DeclareProperties() {
    GameObject::DeclareProperties();
    AddProperty<std::string>("group", m_group);
}
