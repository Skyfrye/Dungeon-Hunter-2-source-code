// Test for batch g1-game-world-GameObject-5d2019-6.
//
// Covers the direction arithmetic of GameObject that runs without the engine: GetLookAtVec, LookTowards (the yaw
// from a direction, including the bit-pattern constants of the listing), SetHeadingDirection (the heading, its
// normalisation and the 0.0001 threshold) and LookAt(Point3D) (the direction from the position to the target).
//
// The object is zero-filled and never constructed, as in the other GameObject tests. None of the four functions makes a
// virtual call. The unit also references engine functions (visual, physical and level calls, the Application and
// DebugSwitches accessors, the scene node query and the globals). They are stubs here and record nothing.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "glitch-scene-collada-gui/scene_node.hpp"

// ---- Stubs for the engine functions the unit references (never reached by the tests) ----

Point3D<float> Vec3f_Origin{};

Application& ApplicationGetInstance() { std::abort(); }
Level* Application::GetCurrentLevel() const { return nullptr; }
bool Level::CanMoveTowards(const Point3D<float>&, const Point3D<float>&) { return true; }

// A real DebugSwitches object, NOT a null stand-in. GetSwitch below turns every switch off, which is what the
// library's own load() leaves behind when no switch file is present, so the observable behaviour is unchanged.
// The store the stub reads is deliberately NOT DebugSwitches::s_inst: this test file defines that symbol itself
// (so that the batch links), and the library's real GetInstance is a shadowed multiple definition anyway.
DebugSwitches* DebugSwitches::GetInstance() {
    static DebugSwitches instance;
    return &instance;
}
bool DebugSwitches::GetSwitch(const std::string&) { return false; }
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() {}

// The path-finding world (UpdatePath, Stop, PathTo, UpdatePFObject, DisableCollisions). Its instance is the singleton
// storage, defined here by explicit instantiation with empty constructors; no search or obstacle runs.
PFWorld::PFWorld() {}
PFWorld::~PFWorld() {}
template class Singleton<PFWorld>;
void PFWorld::DropPath(PFObject&) {}
bool PFWorld::FindPath(PFObject&, const Point3D<float>&, unsigned int) { return false; }
bool PFWorld::MovePath(PFObject&, Point3D<float>&) { return false; }
void PFWorld::AvoidObstacles(const PFObject&, Point3D<float>&) {}
bool PFWorld::ValidateDirection(Point3D<float>&, const PFObject&) { return true; }
void PFWorld::InitObstacle(PFObject&, bool, float, float) {}

void GameObject::SetDestination(const Point3D<float>&) {}
void GameObject::UpdateAbsoluteAABB() {}
bool GameObject::IsAtDestination() const { return false; }
const Point3D<float>& GameObject::GetTargetPosition() const { return m_position; }

VisualObject::VisualObject(GameObject*, const std::string&, const std::string&) {}
VisualObject::~VisualObject() {}                // the key function: emits the vtable the constructor stub refers to
void VisualObject::Update() {}
void VisualObject::Draw() const {}
void VisualObject::ApplyPosition() {}
void VisualObject::SyncPosition() {}
void VisualObject::ApplyRotation() {}
void VisualObject::SyncRotation() {}
void VisualObject::SyncScaling() {}
void VisualObject::ForceUpdatePosition() {}

bool PhysicalObject::setPosition(float, float) { return true; }
bool PhysicalObject::setLinearVelocity(float, float) { return true; }
void PhysicalObject::setAngularVelocity(float) {}
void PhysicalObject::pin() {}
void PhysicalObject::enableFilter() {}
void PhysicalObject::disableFilter() {}
Point2D<float> PhysicalObject::getPosition() const { return Point2D<float>{0.0f, 0.0f}; }
float PhysicalObject::getAngle() const { return 0.0f; }
float PhysicalObject::getRadius() const { return 0.0f; }

glitch::core::vector3d<float> glitch::scene::ISceneNode::getAbsolutePosition() const {
    return glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f};
}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

bool Near(float a, float b, float tolerance = 1e-5f) { return std::fabs(a - b) <= tolerance; }

std::uint32_t Bits(float value) {
    std::uint32_t bits;
    std::memcpy(&bits, &value, sizeof bits);
    return bits;
}

// The object's storage. GameObject is never constructed here: the tests set the fields they read and call the
// non-virtual functions under test.
alignas(GameObject) unsigned char g_storage[sizeof(GameObject)];

GameObject* Fresh() {
    std::memset(g_storage, 0, sizeof g_storage);
    return reinterpret_cast<GameObject*>(g_storage);
}

void TestGetLookAtVec() {
    GameObject* go = Fresh();
    Point3D<float> out{9.0f, 9.0f, 9.0f};

    go->m_rotation.Z = 0.0f;                    // yaw 0 looks along -Y
    go->GetLookAtVec(out);
    EXPECT(Near(out.X, 0.0f));
    EXPECT(Near(out.Y, -1.0f));
    EXPECT(out.Z == 0.0f);

    go->m_rotation.Z = 1.5707963705f;           // yaw pi/2 looks along +X
    go->GetLookAtVec(out);
    EXPECT(Near(out.X, 1.0f));
    EXPECT(Near(out.Y, 0.0f));
}

void TestLookTowards() {
    GameObject* go = Fresh();
    const float sentinel = 7.0f;

    go->m_targetYaw = sentinel;
    go->LookTowards(Point3D<float>{0.0f, 0.0f, 0.0f});
    EXPECT(go->m_targetYaw == sentinel);        // no direction: unchanged

    go->LookTowards(Point3D<float>{1.0f, 0.0f, 0.0f});
    EXPECT(Bits(go->m_targetYaw) == 0x3fc90fdbu);      // pi/2, the listing's constant

    go->LookTowards(Point3D<float>{-1.0f, 0.0f, 0.0f});
    EXPECT(Bits(go->m_targetYaw) == 0x4096cbe4u);      // 3pi/2

    go->LookTowards(Point3D<float>{1.0f, 1.0f, 0.0f});
    EXPECT(Near(go->m_targetYaw, 3.0f * 3.14159265f / 4.0f));   // atan(1 / -1) + pi = 3pi/4

    go->LookTowards(Point3D<float>{-1.0f, 1.0f, 0.0f});
    EXPECT(Near(go->m_targetYaw, -3.0f * 3.14159265f / 4.0f));  // atan(-1 / -1) - pi = -3pi/4

    go->LookTowards(Point3D<float>{1.0f, -1.0f, 0.0f});
    EXPECT(Near(go->m_targetYaw, 3.14159265f / 4.0f));          // atan(1 / 1) = pi/4, no offset for y < 0
}

void TestSetHeadingDirection() {
    GameObject* go = Fresh();
    const float sentinel = 7.0f;

    // Length 5: normalised to (0.6, 0.8), flagged, and the target yaw is untouched without look.
    go->m_targetYaw = sentinel;
    go->SetHeadingDirection(Point3D<float>{3.0f, 4.0f, 0.0f}, false);
    EXPECT(go->m_hasHeading == 1);
    EXPECT(Near(go->m_heading.X, 0.6f));
    EXPECT(Near(go->m_heading.Y, 0.8f));
    EXPECT(go->m_heading.Z == 0.0f);
    EXPECT(go->m_targetYaw == sentinel);

    // With look set, the target yaw follows the caller's direction: atan(3 / -4) + pi.
    go->SetHeadingDirection(Point3D<float>{3.0f, 4.0f, 0.0f}, true);
    EXPECT(Near(go->m_targetYaw, std::atan(3.0f / -4.0f) + 3.14159265f, 1e-4f));

    // Squared length 1e-10 is below the 0.0001 threshold: not flagged, and not normalised (length below 1).
    go->SetHeadingDirection(Point3D<float>{0.00001f, 0.0f, 0.0f}, true);
    EXPECT(go->m_hasHeading == 0);
    EXPECT(Near(go->m_heading.X, 0.00001f, 1e-9f));

    // Length 0.5: flagged, not normalised (squared length 0.25 is at most 1).
    go->SetHeadingDirection(Point3D<float>{0.5f, 0.0f, 0.0f}, false);
    EXPECT(go->m_hasHeading == 1);
    EXPECT(Near(go->m_heading.X, 0.5f));
}

void TestLookAtPoint() {
    GameObject* go = Fresh();
    go->m_position = Point3D<float>{1.0f, 1.0f, 0.0f};
    go->m_targetYaw = 7.0f;
    go->LookAt(Point3D<float>{2.0f, 2.0f, 0.0f});     // direction (1, 1): yaw 3pi/4
    EXPECT(Near(go->m_targetYaw, 3.0f * 3.14159265f / 4.0f));
}

}  // namespace

int main() {
    TestGetLookAtVec();
    TestLookTowards();
    TestSetHeadingDirection();
    TestLookAtPoint();
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("g1-game-world-GameObject-5d2019-6 tests passed\n");
    return 0;
}
