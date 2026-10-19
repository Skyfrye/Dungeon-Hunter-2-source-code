// POCharacter: the PhysicalObject body of a Character. It adds no members. The constructor builds a PhysicalObject with
// isCircle set and isStatic and isSensor clear, pins the body (zero mass), and then stores its own vtable pointer.
// The collision callbacks read the owner through PhysicalBaseObject::m_owner (+0x08) and raise Character events on it.
// Original 32-bit size 0x28 (40), allocated with operator new(40). The layout is PhysicalObject's (+0x00 .. +0x27).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor clone 0x3b4010, dtors 0x46fb18 / 0x46fe2c, callbacks 0x46fb14 .. 0x46ff6c).
#pragma once

#include "dh2/PhysicalObject.hpp"

class GameObject;
class PhysicalBaseObject;
class PhysicalWorld;
template <typename T> struct Point2D;

// The vtable (_ZTV11POCharacter, 52 bytes: offset-to-top, typeinfo, then eleven slots) keeps PhysicalObject's slots 6 to 9
// and adds slot 10. POPlayer, POVillager, POMonster, POFollower and POFaerie inherit this table unchanged except for
// their own destructors.
class POCharacter : public PhysicalObject {
public:
    // world, owner: the physics world and the owning GameObject. group, category, mask: the Box2D collision filter.
    // isBullet: Box2D bullet flag. The last bool is never read. The constructor passes isStatic 0, isCircle 1 and
    // isSensor 0 to PhysicalObject. The demangled symbol orders the parameters (PhysicalWorld*, GameObject*, bool,
    // short, unsigned short, unsigned short, bool). The clone's register and stack reads give the order declared
    // here: r2 is passed through as the owner, r3 is stored and passed as the group, and the stack words are loaded as
    // halfwords and then a byte. The caller Character::InitPhysicalObject (0x3b4088) passes its this pointer as the third
    // argument, so the owner pointer is confirmed and the demangled bool is not the binary's type.
    POCharacter(PhysicalWorld* world, GameObject* owner, short group, unsigned short category,
                unsigned short mask, bool isBullet, bool unused);       // 0x3b4010 (C2 clone, the only constructor symbol)

    // Overrides of PhysicalObject slots, in vtable order.
    ~POCharacter() override;                                            // slot 0/1: 0x46fb18 (D1), 0x46fe2c (D0, calls CustomFree)
    // slot 2: 0x46fb4c. Returns 0 while the Character behind the handle from ObjectBase::GetHandle is in limbus,
    // or knocked back with category & 3 clear. Otherwise PhysicalObject::onCollisionTest.
    bool onCollisionTest(PhysicalBaseObject* other, short otherGroup, unsigned short otherCategory,
                         unsigned short otherMask, short group, unsigned short category,
                         unsigned short mask) override;
    // slot 3 to 5: when both bodies have an owner, raise a Character event on this body's owner.
    // Begins raises 55 (flag) or 56, Persists 57 or 58, Ends 59 or 60.
    void onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;     // slot 3: 0x46fe68
    void onCollisionPersists(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;   // slot 4: 0x46ff6c
    void onCollisionEnds(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;       // slot 5: 0x46fd28

    // Slot 6 is PhysicalObject::onCollisionResults(PhysicalBaseObject*, bool). The overload below hides it, so the
    // base overload is brought back into scope here.
    using PhysicalObject::onCollisionResults;

    // Slot 10: a new virtual, not an override. Its body is empty (0x46fb14). Slots 7 to 9 are PhysicalObject's
    // getLookAt, Update and Draw.
    virtual void onCollisionResults(PhysicalBaseObject* other, const Point2D<float>& point, bool flag);     // slot 10: 0x46fb14 (empty)

    // POCharacter declares no members. Its layout is PhysicalObject's, +0x00 .. +0x27.
};
