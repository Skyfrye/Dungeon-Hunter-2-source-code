// Test for the AnimatorSynchronizedSet functions of batch g1-game-anim-pack0-625644-0. It runs getType and animateNode on
// zero-filled storage. The constructor is not run: the engine base builds its track state from a live CAnimationSet.
// Run (from the track-b worktree root): bash tools/trackb/check_tu.sh --test <this file> <batch .cpp> <AnimApplicator .cpp>
// where the batch .cpp is game-anim/src/g1-game-anim-pack0-625644-0.cpp and the AnimApplicator .cpp is
// game-anim/src/g1-game-anim-AnimApplicator-85c725-0.cpp.
//
// The batch .cpp also defines AnimatedDecor and Animation. Its ~AnimatedDecor is the key function of the AnimatedDecor
// vtable, so that translation unit emits the vtable and refers to the GameObject and Decor virtuals, to the engine helpers
// the AnimatedDecor bodies call, and to gAssertLevel. The stubs below define those symbols so the batch links alone. None
// of them is reached by the checks in this file.
#include <cctype>
#include <cstdio>
#include <cstring>
#include <new>
#include <string>
#include <vector>

#include "core-platform/lc_api.hpp"
#include "dh2/AnimApplicator.hpp"
#include "dh2/AnimatorSynchronizedSet.hpp"
#include "dh2/Application.hpp"
#include "dh2/Decor.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PODecor.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/Random.hpp"
#include "dh2/VisualObject.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"

// Global assert level read by the AnimatedDecor clip callback (libDungeonHunter2.so gAssertLevel).
int gAssertLevel = 0;

// InitPost's physics branch (m_hasColBox) builds a PODecor on Application::m_physicalWorld and hands it to
// GameObject::SetPhysicalObject. Not reached by the checks here; defined so the batch links alone. PODecor's
// constructor needs the PhysicalObject hierarchy, whose vtable (key function ~PhysicalObject) is emitted here,
// so every PhysicalObject and PODecor virtual slot has an empty body.
alignas(Application) unsigned char g_appStorage[sizeof(Application)];
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}
void GameObject::SetPhysicalObject(PhysicalObject*, bool) {}
PhysicalObject::PhysicalObject(PhysicalWorld*, GameObject*, bool, bool, bool, bool, short, unsigned short,
                               unsigned short, int) {}
PhysicalObject::~PhysicalObject() {}
bool PhysicalObject::onCollisionTest(PhysicalBaseObject*, short, unsigned short, unsigned short, short, unsigned short,
                                     unsigned short) {
    return false;
}
void PhysicalObject::onCollisionBegins(PhysicalBaseObject*, const Point2D<float>&, bool) {}
void PhysicalObject::onCollisionPersists(PhysicalBaseObject*, const Point2D<float>&, bool) {}
void PhysicalObject::onCollisionEnds(PhysicalBaseObject*, const Point2D<float>&, bool) {}
void PhysicalObject::onCollisionResults(PhysicalBaseObject*, bool) {}
void PhysicalObject::getLookAt(Point2D<float>&) {}
void PhysicalObject::Update() {}
void PhysicalObject::Draw() const {}
PODecor::PODecor(PhysicalWorld* world, GameObject* owner, bool) : PhysicalObject(world, owner, true, false, false, false, 0, 2, 0xffff, 1) {}
PODecor::~PODecor() {}
void PODecor::onCollisionBegins(PhysicalBaseObject*, const Point2D<float>&, bool) {}

// Link stubs for the Decor and GameObject virtuals the AnimatedDecor vtable names. Their bodies belong to other batches.
// The Decor destructor is the key function of Decor, so this unit emits the Decor vtable and needs the GameObject slots.
Decor::~Decor() {}
void Decor::DeclareProperties() {}
void Decor::InitPost() {}
bool Decor::IsUpdatable() const { return false; }

GameObject::~GameObject() {}
bool GameObject::IsAnimated() const { return false; }
bool GameObject::IsZonable() const { return false; }
void GameObject::DeclareProperties() {}
void GameObject::InitPost() {}
bool GameObject::IsUpdatable() const { return false; }
const char* GameObject::getUDTypeName() const { return "GameObject"; }
void GameObject::createBindings(sfc::script::lua::Binder&) {}
void GameObject::Serialize(IStreamBase*) {}
void GameObject::Deserialize(IStreamBase*) {}
bool GameObject::IsGameObject() const { return true; }
void GameObject::Update() {}
void GameObject::Draw() const {}
bool GameObject::IsDead() const { return false; }
void GameObject::SetVisible(bool) {}
void GameObject::Enabled() {}
void GameObject::Disabled() {}
void GameObject::InitFinal() {}
bool GameObject::IsUpdatingPath() const { return false; }
bool GameObject::IsUpdatingPositionFromVisual() const { return false; }
bool GameObject::IsUpdatingPositionFromPhysics() const { return false; }
bool GameObject::IsUpdatingRotationFromVisual() const { return false; }
bool GameObject::IsUpdatingRotationFromPhysics() const { return false; }
bool GameObject::IsUpdatingVisualWithRotation() const { return false; }
int GameObject::IsValidatingFloorPosition() const { return 0; }
bool GameObject::IsValidatingCameraLimits() const { return false; }
bool GameObject::IsAvoidingObstacles() const { return false; }
bool GameObject::IsHit() const { return false; }
bool GameObject::IsInteractive(GameObject*) const { return false; }
bool GameObject::IsInteractiveEx(GameObject*) const { return false; }
int GameObject::GetInteractionType(GameObject*) const { return -1; }
float GameObject::GetInteractionRadius() const { return 0.0f; }
void GameObject::Interact(GameObject*) {}
void GameObject::SetRelativeAABB(const aabb<float>&, bool) {}
Point3D<float> GameObject::GetFXScale() const { return Point3D<float>{}; }
int GameObject::GetFXScaleValue() const { return -1; }
float GameObject::GetSpeed() const { return 0.0f; }
float GameObject::GetRotationSpeed() const { return 0.0f; }
GameObject* GameObject::GetFocusObject() const { return nullptr; }
bool GameObject::IsObstacle() const { return false; }
float GameObject::GetObstacleRadius() const { return 0.0f; }
float GameObject::GetObstacleStrength() const { return 0.0f; }
float GameObject::GetOpacity() const { return 1.0f; }
bool GameObject::MeetCondition() const { return false; }

// The destructor chain of Decor (~GameObject, ~ObjectBase, ~UserData, ~PFObject, ~TargetList) and the vtables those
// definitions emit. Each class that defines a key function here names its virtuals, so they are stubbed as well.
void ObjectBase::InterpretIncomingNetStruct(bool) {}
bool ObjectBase::IsCharacter() const { return false; }
bool ObjectBase::IsPlayer() const { return false; }
bool ObjectBase::IsRemotelyUpdated() const { return false; }
void ObjectBase::PopulateOutgoingNetStruct(bool) {}
void ObjectBase::setUpdating(bool) {}
ObjectBase::~ObjectBase() {}
void ObjectBase::Serialize(IStreamBase*) {}
void ObjectBase::Deserialize(IStreamBase*) {}
void ObjectBase::DeclareProperties() {}
void ObjectBase::InitPost() {}
bool ObjectBase::IsGameObject() const { return false; }
bool ObjectBase::IsDead() const { return false; }
bool ObjectBase::IsUpdatable() const { return false; }
void ObjectBase::SetVisible(bool) {}
void ObjectBase::Enabled() {}
void ObjectBase::Disabled() {}
sfc::script::lua::UserData::~UserData() {}
const char* sfc::script::lua::UserData::getUDTypeName() const { return nullptr; }
void sfc::script::lua::UserData::createBindings(sfc::script::lua::Binder&) {}
PFObject::~PFObject() {}
ObjectSearcher::TargetList::~TargetList() {}
ConditionData::~ConditionData() {}

// ISerializable is the third base of ObjectBase. Its key function is Serialize, whose no-op bodies are the real ones.
void ISerializable::Serialize(IStreamBase*) {}
void ISerializable::Deserialize(IStreamBase*) {}

// The IObjectList and BackupObjectList overrides the destructor chain of the ObjectSearcher result map names.
// DELIBERATE stubs, not real cursor walks: the BackupObjectList::Get below also replaces the library's real accessor
// for the whole executable (tests link with -Wl,--allow-multiple-definition and the first definition wins). The
// checks never walk a BackupObjectList, so nothing dereferences the null today; a later check that walks one through
// TargetList::Search or SearchRect would receive null from Get and fault in the candidate test.
ObjectSearcher::IObjectList::~IObjectList() {}
ObjectSearcher::BackupObjectList::~BackupObjectList() {}
void ObjectSearcher::BackupObjectList::Reset() {}
bool ObjectSearcher::BackupObjectList::AtEnd() { return true; }
void ObjectSearcher::BackupObjectList::Next() {}
int ObjectSearcher::BackupObjectList::Size() { return 0; }
GameObject* ObjectSearcher::BackupObjectList::Get() { return nullptr; }
Character* ObjectSearcher::BackupObjectList::GetChar() { return nullptr; }

// Link stubs for the engine and game helpers the AnimatedDecor bodies call.
void VisualObject::ApplyMeshBox() {}
unsigned int Random::GetRandom(int, bool) { return 0u; }
template <>
void PropertyMap::AddProperty<std::string>(const char*, std::string&) {}

// Case-insensitive compare, as the engine's LC_API_STRCASECMP. Only the AnimatedDecor InitPost path calls it.
int LC_API_STRCASECMP(const char* a, const char* b) {
    for (;; ++a, ++b) {
        const int ca = std::tolower(static_cast<unsigned char>(*a));
        const int cb = std::tolower(static_cast<unsigned char>(*b));
        if (ca != cb || ca == 0) {
            return ca - cb;
        }
    }
}

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    // A real AnimatorSynchronizedSet over an empty CAnimationSet, built the way AnimatorSynchronizedSet's constructor
    // builds one. Zero-filled storage cannot stand in: the constructor's base calls init, which selects animation 0,
    // and CSceneNodeAnimatorSet::setCurrentAnimation reads the database's clip library
    // (animationSet->getDatabase(0)->getAnimationClipLibrary(), 0x60e334 dereferences the record with no test), so
    // the set needs one database entry. The entry is the empty COLLADA file the model's own tests use: a CResFile
    // whose data->tables is a zeroed holder, which makes the clip library empty, the animation range 0 and the event
    // track null. animateNode then runs the base animateNode (0x65f270 tail-calls applyAnimationValues, 0x65f418)
    // over an empty set, whose first statement reads animationSet->animatedTrackCount (0 here) and returns. The
    // checks call the batch functions on this object; no vtable slot is called through it except the base animateNode
    // the batch body names directly.
    glitch::collada::CResFile record;
    glitch::collada::SColladaFileData fileData;
    glitch::collada::SDatabaseTables emptyTables;
    fileData.tables = &emptyTables;
    record.data = &fileData;

    glitch::collada::CColladaDatabase database;
    database.record = &record;

    boost::intrusive_ptr<glitch::collada::CAnimationSet> animationSet(new glitch::collada::CAnimationSet());
    animationSet->databases.push_back(database);
    AnimatorSynchronizedSet set(animationSet, glitch::core::svector<std::string>());

    Check(set.AnimatorSynchronizedSet::getType() == 15, "getType returns 15");

    // animateNode hands the time to the applicator. With no reference node that is the m_time store (LABEL_11 path).
    set.AnimatorSynchronizedSet::animateNode(nullptr, 1234u);
    Check(set.m_applicator.m_time == 1234u, "animateNode stores the time in the applicator");

    std::printf(g_failures == 0 ? "all checks passed\n" : "%d check(s) failed\n", g_failures);
    return g_failures == 0 ? 0 : 1;
}
