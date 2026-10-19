// PhysicalBaseObject: abstract base of PhysicalObject (the collision callbacks PhysicalWorld calls).
// _ZTV18PhysicalBaseObject is 40 bytes: offset-to-top, typeinfo, then +0x00 / +0x04 destructors
// (0x46e6b0 D1 empty, 0x46e9a0 D0) and six pure slots. There is no constructor symbol.
// The world and owner pointers live here: PhysicalObject::onCollisionTest (0x46e6bc) reads the owner at +8
// through its PhysicalBaseObject* argument (`other`), so +4 / +8 belong to this class, not to PhysicalObject.
#pragma once

class GameObject;
class PhysicalWorld;
template <typename T> struct Point2D;

class PhysicalBaseObject {
public:
    virtual ~PhysicalBaseObject() = default;                            // slot 0/1: 0x46e6b0, 0x46e9a0
    virtual bool onCollisionTest(PhysicalBaseObject* other, short otherGroup, unsigned short otherCategory,
                                 unsigned short otherMask, short group, unsigned short category,
                                 unsigned short mask) = 0;              // slot 2
    virtual void onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) = 0;    // slot 3
    virtual void onCollisionPersists(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) = 0;  // slot 4
    virtual void onCollisionEnds(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) = 0;      // slot 5
    virtual void onCollisionResults(PhysicalBaseObject* other, bool flag) = 0;                                 // slot 6
    virtual void getLookAt(Point2D<float>& out) = 0;                    // slot 7

    // _vptr                                                            // +0x00
    PhysicalWorld* m_world;                                             // +0x04 written by PhysicalObject's constructor
    GameObject* m_owner;                                                // +0x08 may be null; the owner's byte at +0x80 (visible) is tested by onCollisionTest
};
