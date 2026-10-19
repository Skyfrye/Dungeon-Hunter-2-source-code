// Batch g1-game-app-POCharacter-203f4e-0 (POCharacter, 8 ELF addresses, 8 bodies).
// Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so. Where the pseudocode is incomplete, the assembly
// (tools/decomp_asm.py) decides. Each correction is noted at its function:
//   - ObjectBase::GetHandle is called on the owner, this->m_owner (PhysicalBaseObject +0x08), in every function that
//     resolves a Character. The pseudocode prints the call with one argument in onCollisionTest and onCollisionBegins.
//   - The debug switch read by onCollisionBegins, onCollisionEnds and onCollisionPersists is
//     "isTracingPlayersCollision". The pseudocode shows an empty string.
//   - The vtable call through the owner at +0x28 is GameObject's IsPlayer slot (ObjectBase::IsPlayer, checked with
//     tools/decomp_vtable.py GameObject). Its result is discarded.
//   - onCollisionEnds, onCollisionBegins and onCollisionPersists are void. The pseudocode return type is an artifact.
// POCharacter adds no members. Its layout is PhysicalObject's (+0x00 .. +0x27), so this batch needs no layout request.
#include "dh2/POCharacter.hpp"

#include <string>

#include "dh2/Character.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/PhysicalBaseObject.hpp"
#include "dh2/PhysicalObject.hpp"

namespace {

// The debug switch read that the three collision callbacks share. The original repeats this sequence inline, and no
// separate function exists in the binary. It loads the switch singleton, then reads "isTracingPlayersCollision"
// (25 bytes at .rodata 0x8cd620). DebugSwitches::load (0x337888) is PARTIAL in game-app, so the value follows its
// defaults until the savegame read is wired.
bool isTracingPlayersCollision() {
    DebugSwitches::s_inst.load();
    return DebugSwitches::s_inst.GetSwitch(std::string("isTracingPlayersCollision"));
}

// The Character behind an owner's handle, or nullptr. Calls GetHandle on the owner first, then the ObjectHandle
// conversion. The callers depend on this order, so they keep it.
Character* characterOf(GameObject* owner) {
    ObjectHandle handle = owner->GetHandle();
    return handle.operator Character*();
}

}  // namespace

// 0x3b4010 POCharacter::POCharacter(PhysicalWorld*, GameObject*, bool, short, unsigned short, unsigned short, bool)
// C2 clone. Register and stack reads (assembly): r1 is the world, r2 the owner (passed through unchanged), r3 the group
// (short). The stack words are category and mask (halfwords) and isBullet (byte). The eighth argument is never loaded.
// PhysicalObject gets isStatic 0, isCircle 1, isSensor 0 and the unused int 0. The body then calls PhysicalObject::pin.
// The vptr store is the compiler's, made after the base constructor returns.
// The demangled symbol lists a bool third. The caller Character::InitPhysicalObject (0x3b4088) passes its own this pointer
// there, so the header keeps the GameObject* owner.
POCharacter::POCharacter(PhysicalWorld* world, GameObject* owner, short group, unsigned short category,
                         unsigned short mask, bool isBullet, bool /*unused*/)
    : PhysicalObject(world, owner, false, true, false, isBullet, group, category, mask, 0) {
    PhysicalObject::pin();
}

// 0x46fb14 POCharacter::onCollisionResults(PhysicalBaseObject*, Point2D<float> const&, bool)
// Virtual slot 10 of the POCharacter vtable. The body is empty (assembly: bx lr, 4 bytes).
void POCharacter::onCollisionResults(PhysicalBaseObject* /*other*/, const Point2D<float>& /*point*/, bool /*flag*/) {
}

// 0x46fb18 POCharacter::~POCharacter()
// D1. The vptr store and the PhysicalObject base destructor call (D2) are the compiler's. The body is empty.
POCharacter::~POCharacter() {
}

// 0x46fb4c POCharacter::onCollisionTest(PhysicalBaseObject*, short, unsigned short, unsigned short, short, unsigned short, unsigned short)
// The owner's handle gives the Character. If the state machine (the CharStateMachine base at +0x4fc of Character) reports
// limbus, or knockback with category & 3 clear, the test fails. Otherwise the PhysicalObject test runs.
// The assembly has no null test on m_owner before GetHandle, so there is none here.
bool POCharacter::onCollisionTest(PhysicalBaseObject* other, short otherGroup, unsigned short otherCategory,
                                  unsigned short otherMask, short group, unsigned short category,
                                  unsigned short mask) {
    Character* character = characterOf(m_owner);
    if (character != nullptr) {
        CharStateMachine* stateMachine = character;
        if (stateMachine->SM_IsInLimbus()) {
            return false;
        }
        if (stateMachine->SM_IsKnockedBack() && (category & 3) == 0) {
            return false;
        }
    }
    return PhysicalObject::onCollisionTest(other, otherGroup, otherCategory, otherMask, group, category, mask);
}

// 0x46fd28 POCharacter::onCollisionEnds(PhysicalBaseObject*, Point2D<float> const&, bool)
// Both owners must be non-null, else nothing happens. With the trace switch on, the owner's IsPlayer slot is called and
// its result discarded. Then the owner's Character gets RaiseEvent 59 (flag) or 60, with the other owner as data.
void POCharacter::onCollisionEnds(PhysicalBaseObject* other, const Point2D<float>& /*point*/, bool flag) {
    GameObject* owner = m_owner;
    GameObject* otherOwner = other->m_owner;
    if (otherOwner == nullptr || owner == nullptr) {
        return;
    }
    if (isTracingPlayersCollision()) {
        // Vtable slot +0x28 of GameObject: ObjectBase::IsPlayer() const. The original discards the result.
        (void)owner->IsPlayer();
    }
    Character* character = characterOf(owner);
    if (character != nullptr) {
        character->RaiseEvent(flag ? 59 : 60, otherOwner);
    }
}

// 0x46fe2c POCharacter::~POCharacter() (D0) is compiler generated and not written here. See the ledger row.

// 0x46fe68 POCharacter::onCollisionBegins(PhysicalBaseObject*, Point2D<float> const&, bool)
// Same shape as onCollisionEnds. Events are RaiseEvent 55 (flag) or 56.
void POCharacter::onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& /*point*/, bool flag) {
    GameObject* owner = m_owner;
    GameObject* otherOwner = other->m_owner;
    if (otherOwner == nullptr || owner == nullptr) {
        return;
    }
    if (isTracingPlayersCollision()) {
        // Vtable slot +0x28 of GameObject: ObjectBase::IsPlayer() const. The original discards the result.
        (void)owner->IsPlayer();
    }
    Character* character = characterOf(owner);
    if (character != nullptr) {
        character->RaiseEvent(flag ? 55 : 56, otherOwner);
    }
}

// 0x46ff6c POCharacter::onCollisionPersists(PhysicalBaseObject*, Point2D<float> const&, bool)
// Unlike Begins and Ends, the owner's Character is resolved before the trace switch is read. That order is kept.
// Events are RaiseEvent 57 (flag) or 58.
void POCharacter::onCollisionPersists(PhysicalBaseObject* other, const Point2D<float>& /*point*/, bool flag) {
    GameObject* owner = m_owner;
    GameObject* otherOwner = other->m_owner;
    if (otherOwner == nullptr || owner == nullptr) {
        return;
    }
    Character* character = characterOf(owner);
    if (isTracingPlayersCollision()) {
        // Vtable slot +0x28 of GameObject: ObjectBase::IsPlayer() const. The original discards the result.
        (void)owner->IsPlayer();
    }
    if (character != nullptr) {
        character->RaiseEvent(flag ? 57 : 58, otherOwner);
    }
}
