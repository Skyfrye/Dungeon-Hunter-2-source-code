// Test for batch g1-game-world-LiftableObject-ad7bbe-0 (part 1 of 2).
//
// The batch's translation unit defines the LiftableObject vtable (its key function is the destructor), so it refers to
// the GameObject, ObjectBase, VisualObject, PhysicalObject and PFWorld functions the vtable lists. Those are stubbed
// here; each stub only records the call. The LiftableObject storage is zero-filled and never constructed, and every call
// on it is qualified (non-virtual), so no vtable is read. The visual's scene node is a real glitch::scene::ISceneNode
// subclass (FakeNode below): Release calls getAbsolutePosition and addChild through the node's vptr, so a zeroed buffer
// cannot stand in for it. Virtual calls on the visual itself (AnimController::PlayClip, SetVisible on a live object) are
// not reachable without a constructed object, so Drop, PickUp's attach and InitPost's visual branch are not run here;
// their guard paths are.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>

#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/LiftableObject.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

// ---- symbols the batch refers to (engine assert level and the shared origin) ----
int gAssertLevel = 0;
Point3D<float> Vec3f_Origin{0.0f, 0.0f, 0.0f};

// ---- recorded calls ----
namespace {

struct Calls {
    int pin = 0;
    int unpin = 0;
    int enableFilter = 0;
    int disableFilter = 0;
    int validate = 0;
    int sync = 0;
    int getAbsolute = 0;
    int setPosition = 0;
    bool lastSetPositionDestination = false;
    Point3D<float> lastSetPosition{};
    int setScale = 0;
    Point3D<float> lastSetScale{};
    int checkSpawn = 0;
    int spawnProbability = 0;
    int gameObjectInitPost = 0;
    int meetCondition = 0;
    bool meetConditionResult = true;
    Point3D<float> visualPosition{1.0f, 2.0f, 3.0f};
    glitch::core::vector3d<float> absolute{7.0f, 8.0f, 9.0f};
    int addChild = 0;
    glitch::scene::ISceneNode* lastAddedChild = nullptr;
};

Calls g_calls;

// A real scene node: Release attaches the visual's node to the scene root with addChild, a virtual slot (ISceneNode
// +0x5c), so the object stored at the visual's m_node must carry a live vtable. The engine's own ISceneNode base body
// runs (the fake only records the attach); the root it is attached to is the node DeviceSceneManager() reaches below.
class FakeNode : public glitch::scene::ISceneNode {
public:
    FakeNode()
        : glitch::scene::ISceneNode(0, glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f},
                                    glitch::core::quaternion{}, glitch::core::vector3d<float>{1.0f, 1.0f, 1.0f}) {}

    void render(void*) override {}
    const glitch::core::aabbox3d<float>& getBoundingBox() const override { return box_; }
    // getAbsolutePosition is NON-virtual (ISceneNode.hpp:215), so Release's call on an ISceneNode* is a direct call,
    // not a vtable slot; ISceneNode::getAbsolutePosition itself is stubbed in this file and records the call.
    void addChild(glitch::scene::ISceneNode* child) override {
        ++g_calls.addChild;
        g_calls.lastAddedChild = child;
    }

private:
    glitch::core::aabbox3d<float> box_{};
};

// The scene manager the unit reaches through DeviceSceneManager(): a zeroed block (the unit writes nothing into it)
// whose rootNode is the node the fake node is added to. Raw storage, so no SceneManager constructor runs.
alignas(SceneManager) unsigned char g_sceneManagerStorage[sizeof(SceneManager)];
SceneManager* FakeSceneManager() {
    return reinterpret_cast<SceneManager*>(g_sceneManagerStorage);
}

}  // namespace

// ---- stubs for the batch's link references ----
void GameObject::SetVisible(bool) {}
void GameObject::Deserialize(IStreamBase*) {}
void GameObject::SetPosition(const Point3D<float>& position, bool setDestination) {
    ++g_calls.setPosition;
    g_calls.lastSetPosition = position;
    g_calls.lastSetPositionDestination = setDestination;
}
void GameObject::createBindings(sfc::script::lua::Binder&) {}
void GameObject::SetRelativeAABB(const aabb<float>&, bool) {}
int GameObject::CheckSpawnProbability() {
    ++g_calls.checkSpawn;
    return g_calls.spawnProbability;
}
void GameObject::Enabled() {}
void GameObject::Disabled() {}
void GameObject::InitPost() {
    ++g_calls.gameObjectInitPost;
}
void GameObject::SetScale(const Point3D<float>& scale) {
    ++g_calls.setScale;
    g_calls.lastSetScale = scale;
}
void GameObject::Serialize(IStreamBase*) {}
void ObjectBase::setUpdating(bool) {}
void ObjectBase::PopulateOutgoingNetStruct(bool) {}
void ObjectBase::InterpretIncomingNetStruct(bool) {}
void VisualObject::SetScaling(const Point3D<float>&) {}
void VisualObject::GetPosition(Point3D<float>& out) {
    out = g_calls.visualPosition;
}
void VisualObject::SetPosition(const Point3D<float>&) {}
void VisualObject::ApplyMeshBox() {}
void VisualObject::Sync() {
    ++g_calls.sync;
}
void LiftableObject::DeclareProperties() {}
void LiftableObject::InitFinal() {}
void PhysicalObject::enableFilter() {
    ++g_calls.enableFilter;
}
void PhysicalObject::disableFilter() {
    ++g_calls.disableFilter;
}
void PhysicalObject::pin() {
    ++g_calls.pin;
}
void PhysicalObject::unpin() {
    ++g_calls.unpin;
}
bool PFWorld::ValidatePosition(Point3D<float>&, PFObject*) {
    ++g_calls.validate;
    return true;
}
Point3D<float> GameObject::GetFXScale() const {
    return {};
}
float GameObject::GetOpacity() const {
    return 1.0f;
}
bool GameObject::IsGameObject() const {
    return true;
}
const char* GameObject::getUDTypeName() const {
    return "GameObject";
}
bool GameObject::MeetCondition() const {
    ++g_calls.meetCondition;
    return g_calls.meetConditionResult;
}
GameObject* GameObject::GetFocusObject() const {
    return nullptr;
}
bool GameObject::IsUpdatingPath() const {
    return false;
}
int GameObject::GetFXScaleValue() const {
    return -1;
}
bool GameObject::IsInteractiveEx(GameObject*) const {
    return false;
}
float GameObject::GetRotationSpeed() const {
    return -1.0f;
}
bool GameObject::IsAvoidingObstacles() const {
    return false;
}
float GameObject::GetInteractionRadius() const {
    return 0.0f;
}
bool GameObject::IsValidatingCameraLimits() const {
    return false;
}
int GameObject::IsValidatingFloorPosition() const {
    return 0;
}
bool GameObject::IsUpdatingRotationFromVisual() const {
    return false;
}
bool GameObject::IsUpdatingVisualWithRotation() const {
    return false;
}
bool GameObject::IsUpdatingRotationFromPhysics() const {
    return false;
}
void GameObject::Draw() const {}
bool GameObject::IsHit() const {
    return false;
}
bool GameObject::IsDead() const {
    return false;
}
float GameObject::GetSpeed() const {
    return 4.0f;
}
bool ObjectBase::IsCharacter() const {
    return false;
}
bool ObjectBase::IsRemotelyUpdated() const {
    return false;
}
bool ObjectBase::IsPlayer() const {
    return false;
}
Level* Application::GetCurrentLevel() const {
    return nullptr;
}
glitch::scene::ISceneNode* VisualObject::GetSpecificNode(const char*) const {
    return nullptr;
}
glitch::core::vector3d<float> glitch::scene::ISceneNode::getAbsolutePosition() const {
    ++g_calls.getAbsolute;
    return g_calls.absolute;
}

// Singleton storage (extern template instances in dh2/Singleton.hpp): raw bytes, only their addresses are used.
// The thunks of the LiftableObject vtable are emitted by this translation unit from the stubs above.
extern "C" {
alignas(16) unsigned char _ZN9SingletonI11ApplicationE6s_instE[272];
alignas(16) unsigned char _ZN9SingletonI7PFWorldE6s_instE[152];
// GameObject base-object destructor (called by the LiftableObject destructor): never run here.
void _ZN10GameObjectD2Ev(void*) {}
}

// ---- test helpers ----
namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

alignas(LiftableObject) unsigned char g_objectStorage[sizeof(LiftableObject)];
alignas(VisualObject) unsigned char g_visualStorage[sizeof(VisualObject)];
alignas(GameObject) unsigned char g_ownerStorage[sizeof(GameObject)];
alignas(RootSceneNode) unsigned char g_nodeStorage[sizeof(RootSceneNode)];
alignas(RootSceneNode) unsigned char g_rootStorage[sizeof(RootSceneNode)];
unsigned char g_physicalStorage[64];
unsigned char g_otherStorage[64];

LiftableObject* FreshObject() {
    std::memset(g_objectStorage, 0, sizeof g_objectStorage);
    g_calls = Calls{};
    return reinterpret_cast<LiftableObject*>(g_objectStorage);
}

VisualObject* FreshVisual() {
    std::memset(g_visualStorage, 0, sizeof g_visualStorage);
    return reinterpret_cast<VisualObject*>(g_visualStorage);
}

std::uint32_t Bits(float value) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof bits);
    return bits;
}

bool SamePoint(const Point3D<float>& a, const Point3D<float>& b) {
    return a.X == b.X && a.Y == b.Y && a.Z == b.Z;
}

}  // namespace

// DeviceSceneManager(): the unit's scene manager (VisualObject-0654b6-2.cpp reads IDevice +0x1c). The test gives it the
// zeroed block above so Release's `rootNode->addChild(...)` lands on the fake root instead of a null manager.
SceneManager* DeviceSceneManager() {
    return FakeSceneManager();
}

namespace {

// ---- tests ----

void TestConstantsAndFlags() {
    LiftableObject* obj = FreshObject();
    // The pseudocode returns the bit patterns 1125515264 (0x43160000) and 1092616192 (0x41200000) as float results.
    EXPECT(Bits(obj->LiftableObject::GetObstacleRadius()) == 1125515264u);
    EXPECT(Bits(obj->LiftableObject::GetObstacleStrength()) == 1092616192u);
    EXPECT(obj->LiftableObject::GetObstacleRadius() == 150.0f);
    EXPECT(obj->LiftableObject::GetObstacleStrength() == 10.0f);
    EXPECT(obj->LiftableObject::IsUpdatable());
    EXPECT(obj->LiftableObject::IsAnimated());
    EXPECT(obj->LiftableObject::IsObstacle());
}

void TestHeldState() {
    LiftableObject* obj = FreshObject();
    EXPECT(!obj->LiftableObject::IsUpdatingPositionFromVisual());
    EXPECT(obj->LiftableObject::IsUpdatingPositionFromPhysics());

    obj->m_owner = reinterpret_cast<GameObject*>(g_otherStorage);
    EXPECT(obj->LiftableObject::IsUpdatingPositionFromVisual());
    EXPECT(!obj->LiftableObject::IsUpdatingPositionFromPhysics());
}

void TestInteractive() {
    LiftableObject* obj = FreshObject();
    GameObject* other = reinterpret_cast<GameObject*>(g_otherStorage);
    EXPECT(obj->LiftableObject::IsInteractive(other));

    obj->m_dropping = true;
    EXPECT(!obj->LiftableObject::IsInteractive(other));
    obj->m_dropping = false;

    obj->m_markedForDeletion = 1;
    EXPECT(!obj->LiftableObject::IsInteractive(other));
    obj->m_markedForDeletion = 0;

    obj->m_owner = other;
    EXPECT(!obj->LiftableObject::IsInteractive(other));
}

void TestInteractionType() {
    LiftableObject* obj = FreshObject();
    GameObject* holder = reinterpret_cast<GameObject*>(g_otherStorage);
    GameObject* stranger = reinterpret_cast<GameObject*>(g_ownerStorage);
    EXPECT(obj->LiftableObject::GetInteractionType(stranger) == 4);

    obj->m_owner = holder;
    EXPECT(obj->LiftableObject::GetInteractionType(holder) == 5);
    EXPECT(obj->LiftableObject::GetInteractionType(stranger) == -1);
}

void TestCallbackAndDataId() {
    LiftableObject* obj = FreshObject();
    obj->m_dropping = true;
    LiftableObject::__Callback(nullptr, obj);
    EXPECT(!obj->m_dropping);

    obj->m_dataId = 5;
    EXPECT(obj->LiftableObject::GetDataId() == 5);
    obj->LiftableObject::Interact(nullptr);
}

void TestIsZonable() {
    LiftableObject* obj = FreshObject();
    g_calls.meetConditionResult = true;
    EXPECT(obj->LiftableObject::IsZonable());
    g_calls.meetConditionResult = false;
    EXPECT(!obj->LiftableObject::IsZonable());
    EXPECT(g_calls.meetCondition == 2);
}

void TestUpdate() {
    LiftableObject* obj = FreshObject();
    obj->m_physicalObject = reinterpret_cast<PhysicalObject*>(g_physicalStorage);
    obj->m_pinPending = true;
    obj->LiftableObject::Update();
    EXPECT(g_calls.pin == 1);
    EXPECT(!obj->m_pinPending);
    EXPECT(g_calls.setPosition == 0);

    // Without a pending pin and with a visual, the position follows the visual.
    obj->m_visualObject = reinterpret_cast<VisualObject*>(FreshVisual());
    obj->LiftableObject::Update();
    EXPECT(g_calls.pin == 1);
    EXPECT(g_calls.setPosition == 1);
    EXPECT(SamePoint(g_calls.lastSetPosition, Point3D<float>{1.0f, 2.0f, 3.0f}));
    EXPECT(g_calls.lastSetPositionDestination);
}

void TestRelease() {
    LiftableObject* obj = FreshObject();
    VisualObject* visual = FreshVisual();
    // Release reaches the visual's node through the vptr (getAbsolutePosition) and then attaches it to the scene root
    // with addChild. The node and the root are both real ISceneNode subobjects.
    std::memset(g_nodeStorage, 0, sizeof g_nodeStorage);
    FakeNode* node = new (g_nodeStorage) FakeNode();
    visual->m_node = reinterpret_cast<RootSceneNode*>(node);
    obj->m_visualObject = visual;
    obj->m_physicalObject = reinterpret_cast<PhysicalObject*>(g_physicalStorage);
    obj->m_owner = reinterpret_cast<GameObject*>(g_otherStorage);
    obj->m_baseScale = Point3D<float>{4.0f, 5.0f, 6.0f};
    obj->m_dropping = true;
    std::memset(g_sceneManagerStorage, 0, sizeof g_sceneManagerStorage);
    SceneManager* sceneManager = FakeSceneManager();
    std::memset(g_rootStorage, 0, sizeof g_rootStorage);
    FakeNode* root = new (g_rootStorage) FakeNode();
    sceneManager->rootNode = root;

    obj->LiftableObject::Release();
    EXPECT(obj->m_owner == nullptr);
    EXPECT(obj->m_pinPending);
    EXPECT(obj->m_dropping);  // Release leaves the drop flag to Drop and the timeline callback
    EXPECT(g_calls.getAbsolute == 1);
    EXPECT(g_calls.setPosition == 1);
    EXPECT(SamePoint(g_calls.lastSetPosition, Point3D<float>{7.0f, 8.0f, 9.0f}));
    EXPECT(g_calls.lastSetPositionDestination);
    EXPECT(g_calls.setScale == 1);
    EXPECT(SamePoint(g_calls.lastSetScale, Point3D<float>{4.0f, 5.0f, 6.0f}));
    EXPECT(g_calls.validate == 1);
    EXPECT(g_calls.sync == 1);
    EXPECT(g_calls.enableFilter == 1);
    EXPECT(g_calls.addChild == 1);
    EXPECT(g_calls.lastAddedChild == static_cast<glitch::scene::ISceneNode*>(node));
}

void TestInitPostGuards() {
    LiftableObject* obj = FreshObject();
    obj->m_spawnProb = 100;

    // The spawn roll fails (roll == limit): nothing else runs.
    g_calls.spawnProbability = 100;
    obj->LiftableObject::InitPost();
    EXPECT(g_calls.checkSpawn == 1);
    EXPECT(g_calls.gameObjectInitPost == 0);
    EXPECT(g_calls.meetCondition == 0);

    // The roll passes and MeetCondition is true with no visual: GameObject::InitPost runs, nothing else.
    g_calls.spawnProbability = 0;
    g_calls.meetConditionResult = true;
    obj->LiftableObject::InitPost();
    EXPECT(g_calls.gameObjectInitPost == 1);
    EXPECT(g_calls.meetCondition == 1);
}

void TestPickUpGuards() {
    LiftableObject* obj = FreshObject();
    std::memset(g_ownerStorage, 0, sizeof g_ownerStorage);
    GameObject* owner = reinterpret_cast<GameObject*>(g_ownerStorage);

    // A null owner is rejected before anything is touched.
    EXPECT(!obj->LiftableObject::PickUp(nullptr));
    EXPECT(obj->m_owner == nullptr);

    // An object already held is rejected.
    obj->m_owner = owner;
    EXPECT(!obj->LiftableObject::PickUp(owner));
    obj->m_owner = nullptr;

    // With no visual on either side, PickUp returns before the attach (the owner's visual is null).
    EXPECT(!obj->LiftableObject::PickUp(owner));
    EXPECT(obj->m_owner == nullptr);
    EXPECT(g_calls.enableFilter == 0);
    EXPECT(g_calls.disableFilter == 0);
}

}  // namespace

int main() {
    TestConstantsAndFlags();
    TestHeldState();
    TestInteractive();
    TestInteractionType();
    TestCallbackAndDataId();
    TestIsZonable();
    TestUpdate();
    TestRelease();
    TestInitPostGuards();
    TestPickUpGuards();
    if (g_failures == 0) {
        std::printf("LiftableObject part 1: all checks passed\n");
        return 0;
    }
    std::printf("LiftableObject part 1: %d failure(s)\n", g_failures);
    return 1;
}
