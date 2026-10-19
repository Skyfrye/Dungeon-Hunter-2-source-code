// Test for batch g1-game-world-PhysicalObject-442e5f-0.
//
// The PhysicalObject constructor belongs to another batch and is not linked. Each PhysicalObject, GameObject
// owner and PhysicalWorld is zero-filled storage with its fields set by hand. Only qualified (non-virtual) calls
// are made, so no vtable is read. canCollide with live shapes dispatches virtually, so it is left to the
// engine-level test. The Box2D part builds a real b2World and body. It is linked with the vendored Box2D sources
// (see the run command in the batch notes).

#include <cmath>
#include <cstdio>
#include <cstring>

#include <Box2D.h>

#include "dh2/GameObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/PhysicalWorld.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

bool Near(float a, float b, float eps = 1e-4f) {
    return std::fabs(a - b) <= eps;
}

alignas(PhysicalObject) unsigned char g_objA[sizeof(PhysicalObject)];
alignas(PhysicalObject) unsigned char g_objB[sizeof(PhysicalObject)];
alignas(GameObject) unsigned char g_ownerA[sizeof(GameObject)];
alignas(GameObject) unsigned char g_ownerB[sizeof(GameObject)];
alignas(PhysicalWorld) unsigned char g_physWorld[sizeof(PhysicalWorld)];

PhysicalObject* ObjA() { return reinterpret_cast<PhysicalObject*>(g_objA); }
PhysicalObject* ObjB() { return reinterpret_cast<PhysicalObject*>(g_objB); }

void ResetObjects() {
    std::memset(g_objA, 0, sizeof g_objA);
    std::memset(g_objB, 0, sizeof g_objB);
    std::memset(g_ownerA, 0, sizeof g_ownerA);
    std::memset(g_ownerB, 0, sizeof g_ownerB);
    std::memset(g_physWorld, 0, sizeof g_physWorld);
}

// ---- pure logic: radius, collision filter, owners, callbacks ----

void TestRadius() {
    ResetObjects();
    PhysicalObject* a = ObjA();
    a->m_radius = 0.5f;
    EXPECT(Near(a->PhysicalObject::getRadius(), 50.0f));
    a->m_radius = 0.25f;
    EXPECT(Near(a->PhysicalObject::getRadius(), 25.0f));
}

void TestCollisionTest() {
    ResetObjects();
    PhysicalObject* a = ObjA();
    PhysicalObject* b = ObjB();

    // Equal nonzero groups decide by the sign of the group.
    EXPECT(a->PhysicalObject::onCollisionTest(b, 1, 0, 0, 1, 0, 0) == true);
    EXPECT(a->PhysicalObject::onCollisionTest(b, -1, 0, 0, -1, 0, 0) == false);

    // Groups that are zero or differ use the masks: (category & otherMask) and (mask & otherCategory).
    EXPECT(a->PhysicalObject::onCollisionTest(b, 0, 0x2, 0x1, 0, 0x1, 0x2) == true);
    EXPECT(a->PhysicalObject::onCollisionTest(b, 0, 0x2, 0x4, 0, 0x1, 0x2) == false);  // category misses otherMask
    EXPECT(a->PhysicalObject::onCollisionTest(b, 0, 0x2, 0x1, 0, 0x1, 0x4) == false);  // mask misses otherCategory
    EXPECT(a->PhysicalObject::onCollisionTest(b, 1, 0x2, 0x1, 2, 0x1, 0x2) == true);   // differing groups use masks
    EXPECT(a->PhysicalObject::onCollisionTest(b, 0, 0x2, 0x1, 0, 0x1, 0x2) == true);   // zero group, same as above
    EXPECT(a->PhysicalObject::onCollisionTest(b, 0, 0x2, 0x1, 1, 0x1, 0x2) == true);   // only one group is zero
}

void TestCollisionTestSymmetry() {
    // The two filter triples enter the test symmetrically (see the note on onCollisionTest).
    ResetObjects();
    PhysicalObject* a = ObjA();
    PhysicalObject* b = ObjB();
    const short groups[] = {-1, 0, 1};
    const unsigned short bits[] = {0x0, 0x1, 0x2, 0x3, 0x4, 0x8};
    for (short g1 : groups) {
        for (unsigned short c1 : bits) {
            for (unsigned short m1 : bits) {
                for (short g2 : groups) {
                    for (unsigned short c2 : bits) {
                        for (unsigned short m2 : bits) {
                            const bool ab = a->PhysicalObject::onCollisionTest(b, g1, c1, m1, g2, c2, m2);
                            const bool ba = a->PhysicalObject::onCollisionTest(b, g2, c2, m2, g1, c1, m1);
                            EXPECT(ab == ba);
                        }
                    }
                }
            }
        }
    }
}

void TestOwnerVisibility() {
    ResetObjects();
    PhysicalObject* a = ObjA();
    PhysicalObject* b = ObjB();
    GameObject* ownerA = reinterpret_cast<GameObject*>(g_ownerA);
    GameObject* ownerB = reinterpret_cast<GameObject*>(g_ownerB);

    // Without owners the filter alone decides.
    EXPECT(a->PhysicalObject::onCollisionTest(b, 1, 0, 0, 1, 0, 0) == true);

    // An invisible owner on either side blocks the collision.
    a->m_owner = ownerA;
    ownerA->m_visible = 0;
    EXPECT(a->PhysicalObject::onCollisionTest(b, 1, 0, 0, 1, 0, 0) == false);
    ownerA->m_visible = 1;
    EXPECT(a->PhysicalObject::onCollisionTest(b, 1, 0, 0, 1, 0, 0) == true);

    b->m_owner = ownerB;
    ownerB->m_visible = 0;
    EXPECT(a->PhysicalObject::onCollisionTest(b, 1, 0, 0, 1, 0, 0) == false);
    ownerB->m_visible = 1;
    EXPECT(a->PhysicalObject::onCollisionTest(b, 1, 0, 0, 1, 0, 0) == true);
}

void TestCanCollideNoDispatch() {
    // These cases return before any shape or virtual call.
    ResetObjects();
    PhysicalObject* a = ObjA();
    PhysicalObject* b = ObjB();

    EXPECT(a->PhysicalObject::canCollide(nullptr) == false);

    a->m_filterDisabled = true;
    EXPECT(a->PhysicalObject::canCollide(b) == false);
    a->m_filterDisabled = false;
    b->m_filterDisabled = true;
    EXPECT(a->PhysicalObject::canCollide(b) == false);
    b->m_filterDisabled = false;

    // Both filters enabled, but neither object has a shape.
    EXPECT(a->PhysicalObject::canCollide(b) == false);
}

void TestCallbacksAreNoOps() {
    ResetObjects();
    PhysicalObject* a = ObjA();
    PhysicalObject* b = ObjB();
    Point2D<float> point = {1.0f, 2.0f};
    a->m_radius = 0.5f;
    a->PhysicalObject::onCollisionBegins(b, point, true);
    a->PhysicalObject::onCollisionPersists(b, point, false);
    a->PhysicalObject::onCollisionEnds(b, point, true);
    a->PhysicalObject::onCollisionResults(b, false);
    a->PhysicalObject::Update();
    EXPECT(Near(a->m_radius, 0.5f));
    EXPECT(point.X == 1.0f && point.Y == 2.0f);
}

// ---- Box2D-backed: position, angle, velocity, pin and filter switches ----

void TestBox2D() {
    ResetObjects();

    b2AABB bounds;
    bounds.lowerBound.Set(-1000.0f, -1000.0f);
    bounds.upperBound.Set(1000.0f, 1000.0f);
    b2Vec2 gravity(0.0f, 0.0f);
    b2World world(bounds, gravity, true);

    b2BodyDef bodyDef;
    bodyDef.position.Set(0.0f, 0.0f);
    b2Body* body = world.CreateBody(&bodyDef);

    b2CircleDef circle;
    circle.radius = 0.5f;
    circle.density = 1.0f;
    circle.filter.categoryBits = 0x0001;
    circle.filter.maskBits = 0xFFFF;
    circle.filter.groupIndex = 0;
    b2Shape* shape = body->CreateShape(&circle);
    body->SetMassFromShapes();

    PhysicalWorld* physWorld = reinterpret_cast<PhysicalWorld*>(g_physWorld);
    physWorld->m_world = &world;

    PhysicalObject* a = ObjA();
    a->m_body = body;
    a->m_shape = shape;
    a->m_sensorShape = nullptr;
    a->m_world = physWorld;
    a->m_category = 0x0001;
    a->m_mask = 0xFFFF;
    a->m_group = 0;
    a->m_radius = 0.5f;

    // setPosition takes world units and stores metres. getPosition returns world units again.
    EXPECT(a->PhysicalObject::setPosition(300.0f, -200.0f) == true);
    Point2D<float> pos = a->PhysicalObject::getPosition();
    EXPECT(Near(pos.X, 300.0f, 1e-2f) && Near(pos.Y, -200.0f, 1e-2f));
    EXPECT(Near(body->GetPosition().x, 3.0f) && Near(body->GetPosition().y, -2.0f));

    Point2D<float> target = {10.0f, 20.0f};
    EXPECT(a->PhysicalObject::setPosition(target) == true);
    pos = a->PhysicalObject::getPosition();
    EXPECT(Near(pos.X, 10.0f, 1e-2f) && Near(pos.Y, 20.0f, 1e-2f));

    // setAngle keeps the origin position. setPosition keeps the angle.
    EXPECT(a->PhysicalObject::setAngle(0.5f) == true);
    EXPECT(Near(a->PhysicalObject::getAngle(), 0.5f));
    pos = a->PhysicalObject::getPosition();
    EXPECT(Near(pos.X, 10.0f, 1e-2f) && Near(pos.Y, 20.0f, 1e-2f));
    EXPECT(a->PhysicalObject::setPosition(-30.0f, 40.0f) == true);
    EXPECT(Near(a->PhysicalObject::getAngle(), 0.5f));

    // Linear velocity: the return value is true only when both components are zero.
    EXPECT(a->PhysicalObject::setLinearVelocity(3.0f, 4.0f) == false);
    EXPECT(Near(body->GetLinearVelocity().x, 3.0f) && Near(body->GetLinearVelocity().y, 4.0f));
    EXPECT(a->PhysicalObject::setLinearVelocity(0.0f, 0.0f) == true);
    EXPECT(Near(body->GetLinearVelocity().x, 0.0f) && Near(body->GetLinearVelocity().y, 0.0f));
    EXPECT(a->PhysicalObject::setLinearVelocity(0.0f, 2.0f) == false);

    // addLinearVelocity caps x and y at the given maxima. It returns whether y was over its maximum before the cap.
    EXPECT(a->PhysicalObject::addLinearVelocity(1.0f, 1.0f, 10.0f, 10.0f) == false);
    EXPECT(Near(body->GetLinearVelocity().x, 1.0f) && Near(body->GetLinearVelocity().y, 3.0f));
    EXPECT(a->PhysicalObject::addLinearVelocity(10.0f, 10.0f, 6.0f, 6.0f) == true);
    EXPECT(Near(body->GetLinearVelocity().x, 6.0f) && Near(body->GetLinearVelocity().y, 6.0f));
    EXPECT(a->PhysicalObject::addLinearVelocity(10.0f, 0.0f, 6.0f, 100.0f) == false);
    EXPECT(Near(body->GetLinearVelocity().x, 6.0f) && Near(body->GetLinearVelocity().y, 6.0f));

    // A nonzero velocity change wakes a sleeping body. A zero change does not.
    body->PutToSleep();
    EXPECT(body->IsSleeping());
    a->PhysicalObject::setLinearVelocity(0.0f, 0.0f);
    EXPECT(body->IsSleeping());
    a->PhysicalObject::addLinearVelocity(0.0f, 0.0f, 100.0f, 100.0f);
    EXPECT(body->IsSleeping());
    a->PhysicalObject::setLinearVelocity(1.0f, 0.0f);
    EXPECT(!body->IsSleeping());

    body->PutToSleep();
    a->PhysicalObject::setAngularVelocity(2.5f);
    EXPECT(!body->IsSleeping());
    EXPECT(Near(body->GetAngularVelocity(), 2.5f));

    // pin sets the mass to zero, unpin restores the mass from the shapes. Both are idempotent.
    body->SetMassFromShapes();
    const float shapeMass = body->GetMass();
    EXPECT(shapeMass > 0.7f && shapeMass < 0.8f);  // pi * 0.5^2 with density 1
    a->PhysicalObject::pin();
    EXPECT(a->m_pinned);
    EXPECT(body->GetMass() == 0.0f);
    a->PhysicalObject::pin();
    EXPECT(body->GetMass() == 0.0f);
    a->PhysicalObject::unpin();
    EXPECT(!a->m_pinned);
    EXPECT(Near(body->GetMass(), shapeMass, 1e-5f));
    a->PhysicalObject::unpin();
    EXPECT(Near(body->GetMass(), shapeMass, 1e-5f));

    // disableFilter clears the shape filter and sets the flag. enableFilter restores m_category, m_mask and m_group.
    a->m_category = 0x0004;
    a->m_mask = 0x0008;
    a->m_group = -3;
    b2FilterData initial;
    initial.categoryBits = 0x0004;
    initial.maskBits = 0x0008;
    initial.groupIndex = -3;
    shape->SetFilterData(initial);

    a->PhysicalObject::disableFilter();
    EXPECT(a->m_filterDisabled);
    EXPECT(shape->GetFilterData().categoryBits == 0 && shape->GetFilterData().maskBits == 0 &&
           shape->GetFilterData().groupIndex == 0);
    a->PhysicalObject::disableFilter();
    EXPECT(a->m_filterDisabled);
    EXPECT(shape->GetFilterData().categoryBits == 0 && shape->GetFilterData().groupIndex == 0);

    a->PhysicalObject::enableFilter();
    EXPECT(!a->m_filterDisabled);
    EXPECT(shape->GetFilterData().categoryBits == 0x0004 && shape->GetFilterData().maskBits == 0x0008 &&
           shape->GetFilterData().groupIndex == -3);
    a->PhysicalObject::enableFilter();
    EXPECT(!a->m_filterDisabled);
    EXPECT(shape->GetFilterData().categoryBits == 0x0004);

    // A filter switch with no shapes does not touch the world.
    a->m_shape = nullptr;
    a->PhysicalObject::disableFilter();
    EXPECT(a->m_filterDisabled);
    a->PhysicalObject::enableFilter();
    EXPECT(!a->m_filterDisabled);
}

}  // namespace

int main() {
    TestRadius();
    TestCollisionTest();
    TestCollisionTestSymmetry();
    TestOwnerVisibility();
    TestCanCollideNoDispatch();
    TestCallbacksAreNoOps();
    TestBox2D();

    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("PhysicalObject batch 0 tests passed\n");
    return 0;
}
