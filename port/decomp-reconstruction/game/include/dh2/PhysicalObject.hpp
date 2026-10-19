// PhysicalObject: a GameObject's Box2D body (one circle or box shape, optionally a second sensor
// shape) plus its collision filter. Subclassed by PODecor, POCharacter, POItem, POProjectile.
// Original 32-bit size 0x28 (40), allocated with operator new(40).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x46f2f0, _init 0x46edf0).
#pragma once

#include <cstdint>

#include "dh2/PhysicalBaseObject.hpp"

class GameObject;
class PhysicalWorld;
class b2Body;
class b2Shape;
struct b2ShapeDef;
template <typename T> struct Point2D;

// The vtable (_ZTV14PhysicalObject, 48 bytes) extends PhysicalBaseObject's (dtor + six pure slots,
// _ZTV18PhysicalBaseObject, 40 bytes) with Update and Draw.
// Body coordinates are in Box2D metres: world units * 0.01.
class PhysicalObject : public PhysicalBaseObject {
public:
    // world, owner: the physics world and the object owning the body. isStatic: zero density.
    // isCircle: circle shape from the owner's relative AABB, otherwise a box. isSensor: the shape
    // is created as the sensor shape (m_sensorShape). isBullet: Box2D bullet flag.
    // The last int is unused. group/category/mask feed the Box2D filter.
    PhysicalObject(PhysicalWorld* world, GameObject* owner, bool isStatic, bool isCircle,
                   bool isSensor, bool isBullet, short group, unsigned short category,
                   unsigned short mask, int unused);                    // 0x46ef68 / 0x46f2f0

    // Vtable slots in order (0x00 .. 0x24).
    ~PhysicalObject() override;                                         // slot 0/1: 0x46eebc, 0x46ef04, 0x46ef20
    bool onCollisionTest(PhysicalBaseObject* other, short otherGroup, unsigned short otherCategory,
                         unsigned short otherMask, short group, unsigned short category,
                         unsigned short mask) override;                 // slot 2: 0x46e6bc
    void onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;    // slot 3: 0x3883c4 (empty)
    void onCollisionPersists(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;  // slot 4: 0x3883c8 (empty)
    void onCollisionEnds(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;      // slot 5: 0x3883cc (empty)
    void onCollisionResults(PhysicalBaseObject* other, bool flag) override;  // slot 6: 0x3883d0 (empty)
    void getLookAt(Point2D<float>& out) override;                       // slot 7: 0x46ed64, owner's look-at vector or (0, 0)
    virtual void Update();                                              // slot 8: 0x46e99c (empty)
    virtual void Draw() const;                                          // slot 9: 0x46f754 debug draw of the body

    float getRadius() const;                                            // 0x46e750 m_radius * 100
    bool canCollide(PhysicalObject* other) const;                       // 0x46e768
    Point2D<float> getPosition() const;                                 // 0x46e818 body position * 100
    float getAngle() const;                                             // 0x46e858
    bool addLinearVelocity(float vx, float vy, float maxX, float maxY); // 0x46e864 clamps each axis to its maximum
    bool setLinearVelocity(float vx, float vy);                         // 0x46e918
    void setAngularVelocity(float omega);                               // 0x46e978
    bool setAngle(float angle);                                         // 0x46ea70 returns b2Body::SetXForm's result
    bool setPosition(float x, float y);                                 // 0x46ea80 world units; returns SetXForm's result
    bool setPosition(const Point2D<float>& position);                   // 0x46ead4 returns setPosition(float, float)
    void unpin();                                                       // 0x46eae0
    void pin();                                                         // 0x46eb20 zero mass
    void disableFilter();                                               // 0x46eb70
    void enableFilter();                                                // 0x46ebe4
    void resetFilter();                                                 // 0x46ec6c
    void setFilter(short group, unsigned short category, unsigned short mask, bool alsoSensor);  // 0x46ece8

    void _init(b2ShapeDef* shape, float x, float y, bool isStatic, bool isBullet);  // 0x46edf0
    b2Shape* _addShape(b2ShapeDef* shape, bool updateMass);             // 0x46edb8

    // _vptr (in PhysicalBaseObject)                                    // +0x00
    // PhysicalBaseObject::m_world                                      // +0x04
    // PhysicalBaseObject::m_owner                                      // +0x08 may be null (no body is built then)
    float m_radius;                                                     // +0x0c half of the larger AABB side, metres
    bool m_isCircle;                                                    // +0x10
    uint8_t pad_11[3];                                                  // +0x11
    b2Body* m_body;                                                     // +0x14 created by PhysicalWorld::createBody, userData = this
    b2Shape* m_shape;                                                   // +0x18 solid shape
    b2Shape* m_sensorShape;                                             // +0x1c set instead of m_shape for sensor bodies
    uint16_t m_category;                                                // +0x20 filter categoryBits
    uint16_t m_mask;                                                    // +0x22 filter maskBits
    int16_t m_group;                                                    // +0x24 filter groupIndex
    bool m_filterDisabled;                                              // +0x26 disableFilter() zeroed the live filters
    bool m_pinned;                                                      // +0x27
};
