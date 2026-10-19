// Batch g1-game-world-PhysicalObject-442e5f-0: the PhysicalObject collision callbacks, the body queries and
// setters, pin/unpin and the collision filter switches. Declarations come from dh2/PhysicalObject.hpp.
//
// Body coordinates are Box2D metres (world units * 0.01). Box2D calls use the public b2Body, b2Shape and
// b2World API. Shape filters are read and written through b2Shape::GetFilterData and SetFilterData, which
// touch only the three filter fields. Every float constant here is a float (the ARM code calls __aeabi_fmul).

#include <Box2D.h>

// Point2D comes in through GameObject.hpp (core-platform deps/game_types.hpp). dh2/Point2D.hpp is not included:
// it defines the same template, and a TU with both does not compile.
#include "dh2/GameObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/PhysicalWorld.hpp"

// 0x3883c4 _ZN14PhysicalObject17onCollisionBeginsEP18PhysicalBaseObjectRK7Point2DIfEb
// Empty in the original: a bare return.
void PhysicalObject::onCollisionBegins(PhysicalBaseObject*, const Point2D<float>&, bool) {
}

// 0x3883c8 _ZN14PhysicalObject19onCollisionPersistsEP18PhysicalBaseObjectRK7Point2DIfEb
// Empty in the original.
void PhysicalObject::onCollisionPersists(PhysicalBaseObject*, const Point2D<float>&, bool) {
}

// 0x3883cc _ZN14PhysicalObject15onCollisionEndsEP18PhysicalBaseObjectRK7Point2DIfEb
// Empty in the original.
void PhysicalObject::onCollisionEnds(PhysicalBaseObject*, const Point2D<float>&, bool) {
}

// 0x3883d0 _ZN14PhysicalObject18onCollisionResultsEP18PhysicalBaseObjectb
// Empty in the original.
void PhysicalObject::onCollisionResults(PhysicalBaseObject*, bool) {
}

// 0x46e6bc _ZN14PhysicalObject15onCollisionTestEP18PhysicalBaseObjectsttstt
// Vtable slot 2 (+0x08). An owner whose visible byte (ObjectBase::m_visible, +0x80) is zero blocks the collision,
// for either side. Otherwise the groups decide. Equal nonzero groups give the sign of the group. In any other case
// both masks must accept the other side's category. The two filter triples enter this test symmetrically, so the
// order in which canCollide passes them does not change the answer.
bool PhysicalObject::onCollisionTest(PhysicalBaseObject* other, short otherGroup, unsigned short otherCategory,
                                     unsigned short otherMask, short group, unsigned short category,
                                     unsigned short mask) {
    if (m_owner != nullptr && m_owner->m_visible == 0) {
        return false;
    }
    if (other->m_owner != nullptr && other->m_owner->m_visible == 0) {
        return false;
    }

    bool sameGroup = (otherGroup == group);
    if (otherGroup == 0) {
        sameGroup = false;
    }
    if (sameGroup) {
        return otherGroup > 0;
    }
    if ((category & otherMask) != 0) {
        return (mask & otherCategory) != 0;
    }
    return false;
}

// 0x46e750 _ZNK14PhysicalObject9getRadiusEv
// m_radius is in metres. The original returns it in world units (* 100).
float PhysicalObject::getRadius() const {
    return m_radius * 100.0f;
}

// 0x46e768 _ZNK14PhysicalObject10canCollideEPS_
// Both objects must have enabled filters. Each side uses m_shape, or m_sensorShape when m_shape is null, and both
// sides need a shape. The test then goes through the virtual onCollisionTest (vtable slot 2), so a subclass
// override runs, as in the original.
bool PhysicalObject::canCollide(PhysicalObject* other) const {
    if (other == nullptr || m_filterDisabled || other->m_filterDisabled) {
        return false;
    }

    b2Shape* shape = (m_shape != nullptr) ? m_shape : m_sensorShape;
    if (shape == nullptr) {
        return false;
    }
    b2Shape* otherShape = (other->m_shape != nullptr) ? other->m_shape : other->m_sensorShape;
    if (otherShape == nullptr) {
        return false;
    }

    const b2FilterData& self = shape->GetFilterData();
    const b2FilterData& theirs = otherShape->GetFilterData();
    return const_cast<PhysicalObject*>(this)->onCollisionTest(other, self.groupIndex, self.categoryBits,
                                                              self.maskBits, theirs.groupIndex,
                                                              theirs.categoryBits, theirs.maskBits);
}

// 0x46e818 _ZNK14PhysicalObject11getPositionEv
// The body origin (m_xf.position) in metres, returned in world units (* 100).
Point2D<float> PhysicalObject::getPosition() const {
    const b2Vec2& origin = m_body->GetPosition();
    Point2D<float> result;
    result.X = origin.x * 100.0f;
    result.Y = origin.y * 100.0f;
    return result;
}

// 0x46e858 _ZNK14PhysicalObject8getAngleEv
// The body's sweep angle (m_sweep.a, +0x38 from the body).
float PhysicalObject::getAngle() const {
    return m_body->GetAngle();
}

// 0x46e864 _ZN14PhysicalObject17addLinearVelocityEffff
// A nonzero increment wakes the body. The increment is added to the current velocity. The x and y results are
// then capped at maxX and maxY. The return value is whether the y result exceeded maxY before it was capped.
bool PhysicalObject::addLinearVelocity(float vx, float vy, float maxX, float maxY) {
    if (vx != 0.0f || vy != 0.0f) {
        m_body->WakeUp();
    }

    const b2Vec2 current = m_body->GetLinearVelocity();
    float x = vx + current.x;
    float y = vy + current.y;
    if (x > maxX) {
        x = maxX;
    }
    const bool result = y > maxY;
    if (y > maxY) {
        y = maxY;
    }
    m_body->SetLinearVelocity(b2Vec2(x, y));
    return result;
}

// 0x46e918 _ZN14PhysicalObject17setLinearVelocityEff
// A nonzero component wakes the body. The result is true only when both components are zero. It is false as soon
// as either component is nonzero, in which case the wake happened.
bool PhysicalObject::setLinearVelocity(float vx, float vy) {
    bool result = (vx == 0.0f);
    if (vx != 0.0f) {
        m_body->WakeUp();
    } else {
        result = (vy == 0.0f);
        if (vy != 0.0f) {
            m_body->WakeUp();
        }
    }
    m_body->SetLinearVelocity(b2Vec2(vx, vy));
    return result;
}

// 0x46e978 _ZN14PhysicalObject18setAngularVelocityEf
void PhysicalObject::setAngularVelocity(float omega) {
    m_body->WakeUp();
    m_body->SetAngularVelocity(omega);
}

// 0x46e99c _ZN14PhysicalObject6UpdateEv
// Empty in the original. Slot 8 of the vtable.
void PhysicalObject::Update() {
}

// 0x46ea70 _ZN14PhysicalObject8setAngleEf
// Keeps the current origin position and sets the rotation. Returns SetXForm's result.
bool PhysicalObject::setAngle(float angle) {
    return m_body->SetXForm(m_body->GetPosition(), angle);
}

// 0x46ea80 _ZN14PhysicalObject11setPositionEff
// The world position is converted to metres with a float multiply by 0.01f, and the current angle is kept.
// Returns SetXForm's result.
bool PhysicalObject::setPosition(float x, float y) {
    const b2Vec2 position(x * 0.01f, y * 0.01f);
    return m_body->SetXForm(position, m_body->GetAngle());
}

// 0x46ead4 _ZN14PhysicalObject11setPositionERK7Point2DIfE
// Tail call to setPosition(float, float).
bool PhysicalObject::setPosition(const Point2D<float>& position) {
    return setPosition(position.X, position.Y);
}

// 0x46eae0 _ZN14PhysicalObject5unpinEv
// A pinned body gets its mass back from its shapes, then is woken.
void PhysicalObject::unpin() {
    if (!m_pinned) {
        return;
    }
    m_pinned = false;
    m_body->SetMassFromShapes();
    m_body->WakeUp();
}

// 0x46eb20 _ZN14PhysicalObject3pinEv
// A pin sets the body's mass to zero. The centre stays at the body's local centre, and the inertia is zero.
void PhysicalObject::pin() {
    if (m_pinned) {
        return;
    }
    m_pinned = true;
    b2MassData massData;
    massData.mass = 0.0f;
    massData.center = m_body->GetLocalCenter();
    massData.I = 0.0f;
    m_body->SetMass(&massData);
}

// 0x46eb70 _ZN14PhysicalObject13disableFilterEv
// The first disable clears the category, mask and group of m_shape and m_sensorShape, and refilters each one that
// exists. Repeated calls change nothing except the flag.
void PhysicalObject::disableFilter() {
    if (!m_filterDisabled) {
        b2FilterData open;
        open.categoryBits = 0;
        open.maskBits = 0;
        open.groupIndex = 0;
        if (m_shape != nullptr) {
            m_shape->SetFilterData(open);
            m_world->m_world->Refilter(m_shape);
        }
        if (m_sensorShape != nullptr) {
            m_sensorShape->SetFilterData(open);
            m_world->m_world->Refilter(m_sensorShape);
        }
    }
    m_filterDisabled = true;
}

// 0x46ebe4 _ZN14PhysicalObject12enableFilterEv
// When the filter is disabled, restore m_category, m_mask and m_group to each shape that exists, and refilter it.
void PhysicalObject::enableFilter() {
    if (m_filterDisabled) {
        b2FilterData restored;
        restored.categoryBits = m_category;
        restored.maskBits = m_mask;
        restored.groupIndex = m_group;
        if (m_shape != nullptr) {
            m_shape->SetFilterData(restored);
            m_world->m_world->Refilter(m_shape);
        }
        if (m_sensorShape != nullptr) {
            m_sensorShape->SetFilterData(restored);
            m_world->m_world->Refilter(m_sensorShape);
        }
    }
    m_filterDisabled = false;
}
