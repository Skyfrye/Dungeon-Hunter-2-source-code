// PhysicalWorld (batch g1-game-world-PhysicalWorld-6d6c7e-0).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against the assembly where the
// pseudocode dropped a string literal or a call argument (the contact callbacks read the switch
// "isTracingPhysicalWorld", and the listener calls take the contact position). Offsets in comments are the original
// 32-bit ones. Box2D is the vendored 2.0.1 build, reached through dh2/PhysicalWorld.hpp.

#include <new>

#include <Box2D.h>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/PhysicalBaseObject.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/PhysicalWorld.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/runtime_support.hpp"    // PushProfilingContext, PopProfilingContext, operator new(size, MemoryHintState)

namespace {

// The switch read that the contact callbacks, Violation and each body in clear() make: DebugSwitches::load, then
// GetSwitch on "isTracingPhysicalWorld". Their results are discarded, so the read has no effect in those functions.
void ReadTraceSwitch() {
    DebugSwitches::s_inst.load();
    DebugSwitches::s_inst.GetSwitch("isTracingPhysicalWorld");
}

// The user data of a shape is the PhysicalObject that owns it (PhysicalObject writes this there). The listener calls
// go to its PhysicalBaseObject subobject.
PhysicalBaseObject* ShapeOwner(b2Shape* shape) {
    return static_cast<PhysicalBaseObject*>(shape->GetUserData());    // shape +0x2c (m_userData)
}

// The contact position the listener callbacks receive (a copy of point->position, +0x08 and +0x0c in the original).
Point2D<float> ContactPosition(const b2ContactPoint* point) {
    Point2D<float> position;
    position.X = point->position.x;    // point +0x08
    position.Y = point->position.y;
    return position;
}

}  // namespace

// 0x34bc30 PhysicalWorld::PhysicalWorld() (C2) and 0x34bc7c PhysicalWorld::PhysicalWorld() (C1): the same code.
// The compiler stores the four vtable pointers (+0x00 .. +0x0c); the body only clears m_world at +0x10.
PhysicalWorld::PhysicalWorld() : m_world(nullptr) {}

// 0x34bcc8 PhysicalWorld::destroyBody(b2Body*&)
// A non-null body is destroyed in m_world. The caller's pointer is cleared in either case.
void PhysicalWorld::destroyBody(b2Body*& body) {
    if (body != nullptr) {
        m_world->DestroyBody(body);    // m_world at +0x10
    }
    body = nullptr;
}

// 0x34bcf0 PhysicalWorld::createBody(b2BodyDef*)
// A null definition returns null. Otherwise m_world creates the body (the original tail-calls b2World::CreateBody;
// the extra register arguments in the pseudocode are not part of the call).
b2Body* PhysicalWorld::createBody(b2BodyDef* def) {
    if (def == nullptr) {
        return nullptr;
    }
    return m_world->CreateBody(def);    // m_world at +0x10
}

// 0x34bd08 PhysicalWorld::update()
// Steps m_world by the application's frame time with 10 iterations. The frame time in ms becomes seconds in single
// precision: __aeabi_ui2f, then __aeabi_fmul with 0x3A83126F (0.001f). Runs inside a profiling context.
void PhysicalWorld::update() {
    PushProfilingContext("PhysicalWorld::update");
    const unsigned int dtMs = static_cast<unsigned int>(Singleton<Application>::s_inst.GetDt());
    const float dt = static_cast<float>(dtMs) * 0.001f;
    m_world->Step(dt, 10);    // m_world at +0x10
    PopProfilingContext("PhysicalWorld::update");
}

// 0x34be0c PhysicalWorld::clear()
// Does nothing when m_world is null. Otherwise it reads "isTracingPhysicalWorld" and then "IsTracingPhysicalWorld".
// When the second switch is set, every body in m_world's body list gets one more switch read (a trace with no other
// effect). Then the world is destroyed (b2World destructor, then CustomFree) and m_world is cleared.
void PhysicalWorld::clear() {
    if (m_world == nullptr) {
        return;
    }
    DebugSwitches::s_inst.load();
    DebugSwitches::s_inst.GetSwitch("isTracingPhysicalWorld");
    DebugSwitches::s_inst.load();
    const bool tracing = DebugSwitches::s_inst.GetSwitch("IsTracingPhysicalWorld");
    if (tracing) {
        for (b2Body* body = m_world->GetBodyList(); body != nullptr; body = body->GetNext()) {
            ReadTraceSwitch();
        }
    }
    m_world->~b2World();
    CustomFree(m_world);
    m_world = nullptr;
}

// 0x34bf84 PhysicalWorld::~PhysicalWorld() (D1, complete-object destructor) and 0x34c000 (D2): the same body, defined
// once here. The compiler resets the vtable pointers; the body is clear().
PhysicalWorld::~PhysicalWorld() {
    clear();
}

// 0x34bfe4 PhysicalWorld::~PhysicalWorld() (D0, deleting destructor): skipped, compiler-generated. The original runs
// D1 and then CustomFree(this), which is what the delete expression does.

// 0x34c048 PhysicalWorld::load(float, float, float, float)
// Clears any previous world, reads the trace switch, and creates a b2World over the AABB (minX, minY) to (maxX, maxY)
// with zero gravity and sleeping on. Then it registers this object's four listener subobjects with that world, as the
// boundary listener, the contact filter, the contact listener and the destruction listener. The original allocates
// the 32-bit size of b2World (0x19278 bytes) with operator new(size, MemoryHintState 0); this build allocates
// sizeof(b2World) with the same operator.
void PhysicalWorld::load(float minX, float minY, float maxX, float maxY) {
    clear();
    ReadTraceSwitch();

    b2AABB worldAABB;
    worldAABB.lowerBound = b2Vec2(minX, minY);
    worldAABB.upperBound = b2Vec2(maxX, maxY);
    const b2Vec2 gravity(0.0f, 0.0f);

    void* block = ::operator new(sizeof(b2World), static_cast<MemoryHintState>(0));
    b2World* world = new (block) b2World(worldAABB, gravity, true);
    m_world = world;
    world->SetBoundaryListener(this);
    world->SetContactFilter(this);
    world->SetContactListener(this);
    world->SetDestructionListener(this);
}

// 0x34c1e4 PhysicalWorld::_IsShape1Instigator(b2ContactPoint const*, PhysicalBaseObject*, PhysicalBaseObject*)
// Decides which side of a contact is the instigator. The offset from the contact position to the body of point->shape1
// (its origin, m_xf.position at +0x04 and +0x08) is dotted with the owner's look-at vector (getLookAt, slot 7); a
// positive dot product means shape1 is the instigator. When shape1's body has no mass, the answer comes from shape2's
// body instead: it is the instigator only when shape2's body is massless. All of the arithmetic is single precision.
// The fourth argument is passed by the callers but never read.
bool PhysicalWorld::_IsShape1Instigator(const b2ContactPoint* point, PhysicalBaseObject* first,
                                        PhysicalBaseObject* /*second*/) {
    b2Body* body1 = point->shape1->GetBody();    // shape +0x0c (m_body)
    if (!(body1->GetMass() > 0.0f)) {
        b2Body* body2 = point->shape2->GetBody();
        return !(body2->GetMass() > 0.0f);
    }
    const b2Vec2& origin1 = body1->GetPosition();    // body +0x04 (m_xf.position)
    const float offsetX = point->position.x - origin1.x;
    const float offsetY = point->position.y - origin1.y;

    Point2D<float> lookAt;
    lookAt.X = 0.0f;
    lookAt.Y = 0.0f;
    first->getLookAt(lookAt);

    const float dot = (offsetX * lookAt.X) + (offsetY * lookAt.Y);
    return dot > 0.0f;
}

// 0x34c2cc PhysicalWorld::SayGoodbye(b2Joint*): empty.
void PhysicalWorld::SayGoodbye(b2Joint* /*joint*/) {}

// 0x34c2d8 PhysicalWorld::SayGoodbye(b2Shape*): empty.
void PhysicalWorld::SayGoodbye(b2Shape* /*shape*/) {}

// 0x34c304 PhysicalWorld::ShouldCollide(b2Shape*, b2Shape*)
// When either shape has no owner, the default b2ContactFilter decides. Otherwise each owner is asked through
// PhysicalBaseObject::onCollisionTest (slot 2, +0x08). Both calls are made, then the answer is "no" if the first owner
// refuses and the second owner's answer otherwise. The binary passes the calling shape's filter in the first triple
// (the otherGroup, otherCategory and otherMask slots) and the other shape's filter in the last triple. The callee
// (PhysicalObject::onCollisionTest) reads the last triple as its own filter, so the roles are swapped for each call.
// Both calls together give the symmetric filter test, so the swap is kept as the binary has it.
bool PhysicalWorld::ShouldCollide(b2Shape* shape1, b2Shape* shape2) {
    PhysicalBaseObject* owner1 = ShapeOwner(shape1);
    PhysicalBaseObject* owner2 = ShapeOwner(shape2);
    if (owner1 == nullptr || owner2 == nullptr) {
        return b2ContactFilter::ShouldCollide(shape1, shape2);
    }
    const b2FilterData& filter1 = shape1->GetFilterData();
    const b2FilterData& filter2 = shape2->GetFilterData();
    const bool accepts1 = owner1->onCollisionTest(owner2, filter1.groupIndex, filter1.categoryBits,
                                                  filter1.maskBits, filter2.groupIndex, filter2.categoryBits,
                                                  filter2.maskBits);
    const bool accepts2 = owner2->onCollisionTest(owner1, filter2.groupIndex, filter2.categoryBits,
                                                  filter2.maskBits, filter1.groupIndex, filter1.categoryBits,
                                                  filter1.maskBits);
    if (!accepts1) {
        return false;
    }
    return accepts2;
}

// 0x34c418 PhysicalWorld::Remove(b2ContactPoint const*)
// When both shapes have owners, the first owner gets onCollisionEnds (slot 5) with the second owner, the contact
// position and the instigator flag. The second owner gets the same call with the other owner and the negated flag.
void PhysicalWorld::Remove(const b2ContactPoint* point) {
    ReadTraceSwitch();
    PhysicalBaseObject* owner1 = ShapeOwner(point->shape1);
    PhysicalBaseObject* owner2 = ShapeOwner(point->shape2);
    if (owner1 == nullptr || owner2 == nullptr) {
        return;
    }
    const bool instigator = _IsShape1Instigator(point, owner1, owner2);
    owner1->onCollisionEnds(owner2, ContactPosition(point), instigator);
    owner2->onCollisionEnds(owner1, ContactPosition(point), !instigator);
}

// 0x34c548 PhysicalWorld::Result(b2ContactResult const*)
// When both shapes have owners, the first owner gets onCollisionResults (slot 6) with the second owner and true, then
// the second owner gets the first owner and false.
void PhysicalWorld::Result(const b2ContactResult* result) {
    ReadTraceSwitch();
    PhysicalBaseObject* owner1 = ShapeOwner(result->shape1);
    PhysicalBaseObject* owner2 = ShapeOwner(result->shape2);
    if (owner1 == nullptr || owner2 == nullptr) {
        return;
    }
    owner1->onCollisionResults(owner2, true);
    owner2->onCollisionResults(owner1, false);
}

// 0x34c62c PhysicalWorld::Violation(b2Body*)
// Box2D's boundary callback. Only the trace switch read remains in the binary; the body argument is unused.
void PhysicalWorld::Violation(b2Body* /*body*/) {
    ReadTraceSwitch();
}

// 0x34c6c4 PhysicalWorld::Add(b2ContactPoint const*)
// When both shapes have owners, the first owner gets onCollisionBegins (slot 3) with the second owner, the contact
// position and the instigator flag. The second owner gets the same call with the other owner and the negated flag.
void PhysicalWorld::Add(const b2ContactPoint* point) {
    ReadTraceSwitch();
    PhysicalBaseObject* owner1 = ShapeOwner(point->shape1);
    PhysicalBaseObject* owner2 = ShapeOwner(point->shape2);
    if (owner1 == nullptr || owner2 == nullptr) {
        return;
    }
    const bool instigator = _IsShape1Instigator(point, owner1, owner2);
    owner1->onCollisionBegins(owner2, ContactPosition(point), instigator);
    owner2->onCollisionBegins(owner1, ContactPosition(point), !instigator);
}

// 0x34c7f4 PhysicalWorld::Persist(b2ContactPoint const*)
// The same as Add, through onCollisionPersists (slot 4).
void PhysicalWorld::Persist(const b2ContactPoint* point) {
    ReadTraceSwitch();
    PhysicalBaseObject* owner1 = ShapeOwner(point->shape1);
    PhysicalBaseObject* owner2 = ShapeOwner(point->shape2);
    if (owner1 == nullptr || owner2 == nullptr) {
        return;
    }
    const bool instigator = _IsShape1Instigator(point, owner1, owner2);
    owner1->onCollisionPersists(owner2, ContactPosition(point), instigator);
    owner2->onCollisionPersists(owner1, ContactPosition(point), !instigator);
}
