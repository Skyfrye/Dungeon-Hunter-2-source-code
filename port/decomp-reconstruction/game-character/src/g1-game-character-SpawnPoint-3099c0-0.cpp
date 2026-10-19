// Batch g1-game-character-SpawnPoint-3099c0-0 (all of SpawnPoint): the constructors and destructors, the four constant
// predicates, PlaceObject, InitPost and DeclareProperties. Declarations and layout come from dh2/SpawnPoint.hpp, which
// already declares every method in this batch.
//
// Offsets in comments are the original 32-bit offsets. GameObject owns m_position (+0x160) and m_rotation (+0x16c);
// ObjectBase owns unk_64 (+0x64), which PlaceObject passes to the script as its module. SpawnPoint's own members are
// m_entrypointId (+0x374), m_script (+0x378) and m_scriptId (+0x390).
//
// Duplicate bodies: the C1 and C2 constructors (0x3ea388, 0x3ea3fc) and the D1 and D2 destructors (0x3ea2cc, 0x3ea33c)
// are identical. Each pair shares one definition below. The scalar deleting destructor (D0, 0x3ea320) is compiler
// generated and is not written.

#include "dh2/SpawnPoint.hpp"

#include <string>

#include "dh2/ScriptManager.hpp"

// 0x3ea388 SpawnPoint::SpawnPoint(ObjectBase::GO_IDS)   (C1, complete object)
// 0x3ea3fc SpawnPoint::SpawnPoint(ObjectBase::GO_IDS)   (C2, base object; same body as C1)
// The id argument is passed to GameObject unchanged (r1 is not reloaded before the call). The vptrs are written by the
// compiler. m_entrypointId and m_scriptId start at -1. m_script starts empty; the original reserves a 16-byte block
// for it, which only sets the capacity.
SpawnPoint::SpawnPoint(ObjectBase::GO_IDS id) : GameObject(id), m_entrypointId(-1), m_scriptId(-1) {}

// 0x3ea2cc SpawnPoint::~SpawnPoint()   (D1, complete object)
// 0x3ea33c SpawnPoint::~SpawnPoint()   (D2, base object; same body as D1)
// The original resets the vptrs, frees the m_script buffer (the string at +0x378) and then runs GameObject::~GameObject.
// In C++ those steps are the implicit destruction of m_script and the base destructor, in the same order.
// The base destructor (0x38d378) carries the open VoxSoundManager::Stop gap noted in game-world.
SpawnPoint::~SpawnPoint() {}

// 0x3ea320 SpawnPoint::~SpawnPoint()   (D0, deleting destructor)
// skipped: the compiler generates the deleting destructor (~SpawnPoint() then CustomFree(this)). A delete expression on a
// SpawnPoint does the same, so there is no separate body.

// 0x3ea20c SpawnPoint::IsUpdatable() const
bool SpawnPoint::IsUpdatable() const {
    return false;
}

// 0x3ea214 SpawnPoint::IsZonable() const
bool SpawnPoint::IsZonable() const {
    return false;
}

// 0x3ea21c SpawnPoint::IsAnimated() const
bool SpawnPoint::IsAnimated() const {
    return false;
}

// 0x3ea224 SpawnPoint::IsInteractive(GameObject*) const
bool SpawnPoint::IsInteractive(GameObject* /*other*/) const {
    return false;
}

// 0x3ea22c SpawnPoint::PlaceObject(GameObject*)
// Copies this spawn point's m_position (+0x160) and m_rotation (+0x16c) to the object, then starts the script m_scriptId
// unless that id is -1. The script runs with module unk_64 (+0x64) and fromRemote false. The Hex-Rays return value is the
// r0 residue of the StartScript call, and the hook is void.
void SpawnPoint::PlaceObject(GameObject* object) {
    object->SetPosition(m_position, true);
    object->SetRotation(m_rotation);
    if (m_scriptId != -1) {
        ScriptManager::s_inst.StartScript(m_scriptId, unk_64, false);
    }
}

// 0x3ea28c SpawnPoint::InitPost()
// GameObject::InitPost, then m_scriptId = ScriptManager::GetIDFromName(m_script, false). The original passes the string's
// data pointer, which is m_script.c_str(). The result is -1 when no script of that name is found. The Hex-Rays return
// type (const char*) is the r0 residue of the store, and the hook is void.
void SpawnPoint::InitPost() {
    GameObject::InitPost();
    m_scriptId = ScriptManager::s_inst.GetIDFromName(m_script.c_str(), false);
}

// 0x3ea554 SpawnPoint::DeclareProperties()
// GameObject's properties first, then "entrypointID" (int, default -1, +0x374) and "script" (std::string, default empty,
// +0x378). The original builds the SimpleTypeProperty objects by hand (36 and 56 bytes) with offsets taken from the
// PropertyMap sub-object at +0x04 (0x370 and 0x374). The AddProperty templates build the same objects.
void SpawnPoint::DeclareProperties() {
    GameObject::DeclareProperties();
    AddProperty<int>("entrypointID", m_entrypointId, -1);
    AddProperty<std::string>("script", m_script);
}
