// Batch g1-game-app-pack2-e00359-0 (game-app, 20 functions): the destructors and the PODecor constructor clone of the
// PhysicalObject subclasses POColmap, PODecor, POFaerie, POFollower, POItem, POMonster and POPlayer, plus the collision
// callbacks of PODecor (empty) and POItem (Persists empty, Begins and Ends forward to ItemObject). Declarations come from
// dh2/POColmap.hpp, dh2/PODecor.hpp, dh2/POFaerie.hpp, dh2/POFollower.hpp, dh2/POItem.hpp, dh2/POMonster.hpp and
// dh2/POPlayer.hpp.
//
// Destructors. Each complete-object (D1) or base-object (D2) body in the original is the compiler's implicit chain: store
// the class vtable, then call the base destructor. The C++ implicit destructor does the same, so those bodies are empty
// definitions. The deleting variants (D0) are compiler-generated from the virtual destructor (delete runs the destructor,
// then CustomFree), so their rows are skipped. Nothing else is written for them.
//
// POFaerie, POFollower, POMonster and POPlayer. The original D1 at 0x3b38c0, 0x3b388c, 0x3b38f4 and 0x3b3858 stores the
// POCharacter vtable (off_968F50, which is _ZTV11POCharacter + 8) and calls ~PhysicalObject. That is the same body as
// POCharacter::~POCharacter (0x46fb18, D1), inlined by the compiler. The implicit ~POCharacter() call made by the empty
// definitions here gives the same final vptr and the same base call. The link needs POCharacter::~POCharacter, which
// belongs to the POCharacter batch.

#include "dh2/ItemObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/PODecor.hpp"
#include "dh2/POColmap.hpp"
#include "dh2/POFaerie.hpp"
#include "dh2/POFollower.hpp"
#include "dh2/POItem.hpp"
#include "dh2/POMonster.hpp"
#include "dh2/POPlayer.hpp"

// Point2D is only named by reference in these signatures, so the forward declaration in each owner header is enough.

namespace {

// The ItemObject behind an owner body, as the original resolves it. ObjectBase::GetHandle runs on the owner (the original
// dereferences it without a null test), then ObjectHandle::GetObject(false). The object counts only when its m_goId
// (+0xf4, the GO_IDS constructor argument) is 3. Any other object gives null.
ItemObject* ItemOfOwner(GameObject* owner) {
    ObjectHandle handle = owner->GetHandle();
    ObjectBase* object = handle.GetObject(false);
    if (object == nullptr || object->m_goId != static_cast<ObjectBase::GO_IDS>(3)) {
        return nullptr;
    }
    return static_cast<ItemObject*>(object);
}

// The Character behind an owner body: ObjectBase::GetHandle on the owner, then ObjectHandle::operator Character*().
Character* CharacterOfOwner(GameObject* owner) {
    ObjectHandle handle = owner->GetHandle();
    Character* character = handle;
    return character;
}

}  // namespace

// 0x388628 _ZN8POColmapD1Ev (complete-object destructor, D1)
// Vptr reset to POColmap's table, then ~PhysicalObject. Both are implicit.
POColmap::~POColmap() {}

// 0x388dcc _ZN8POColmapD0Ev (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~POColmap() followed by CustomFree(this)).

// 0x388a2c _ZN7PODecorC1EP13PhysicalWorldP10GameObjectb.clone.2 (constructor clone)
// Calls PhysicalObject(world, owner, isStatic 1, isCircle 0, isSensor 0, isBullet 0, group 0, category 2, mask 0xffff,
// unused 1), then stores PODecor's vtable. The implicit member initialisation does the vptr store. The bool argument
// is not read.
PODecor::PODecor(PhysicalWorld* world, GameObject* owner, bool) : PhysicalObject(world, owner, true, false, false, false, 0, 2, 0xFFFF, 1) {}

// 0x39fc2c _ZN7PODecorC1EP13PhysicalWorldP10GameObjectb.clone.2 (second copy of the same clone)
// Same body as 0x388a2c, covered by the definition above.

// 0x470074 _ZN7PODecor17onCollisionBeginsEP18PhysicalBaseObjectRK7Point2DIfEb
// Empty in the original (a bare return).
void PODecor::onCollisionBegins(PhysicalBaseObject*, const Point2D<float>&, bool) {}

// 0x470078 _ZN7PODecorD1Ev (complete-object destructor, D1)
// Vptr reset to PODecor's table, then ~PhysicalObject. Both are implicit.
PODecor::~PODecor() {}

// 0x470188 _ZN7PODecorD0Ev (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~PODecor() followed by CustomFree(this)).

// 0x3b38c0 _ZN8POFaerieD1Ev (complete-object destructor, D1)
// Stores POCharacter's vtable, then ~PhysicalObject. This is POCharacter::~POCharacter (0x46fb18) inlined. The implicit
// base destructor call reproduces it. Needs POCharacter::~POCharacter at link time.
POFaerie::~POFaerie() {}

// 0x3b44d0 _ZN8POFaerieD0Ev (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~POFaerie() followed by CustomFree(this)).

// 0x3b388c _ZN10POFollowerD1Ev (complete-object destructor, D1)
// Stores POCharacter's vtable, then ~PhysicalObject. Same inlined POCharacter::~POCharacter as POFaerie.
POFollower::~POFollower() {}

// 0x3b4494 _ZN10POFollowerD0Ev (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~POFollower() followed by CustomFree(this)).

// 0x4701c4 _ZN6POItem19onCollisionPersistsEP18PhysicalBaseObjectRK7Point2DIfEb
// Empty in the original (a bare return).
void POItem::onCollisionPersists(PhysicalBaseObject*, const Point2D<float>&, bool) {}

// 0x4701c8 _ZN6POItemD1Ev (complete-object destructor, D1)
// Vptr reset to POItem's table, then ~PhysicalObject. Both are implicit.
POItem::~POItem() {}

// 0x4701fc _ZN6POItem15onCollisionEndsEP18PhysicalBaseObjectRK7Point2DIfEb
// Resolves the item from this->m_owner (ItemOfOwner). A null item, a null other body or a null other owner returns. Then
// the virtual IsInteractive(nullptr) (vtable slot +0x88) must hold, the other owner must resolve to a Character, and the
// item's OnCollisionEnds gets that Character. The original's return value is void.
void POItem::onCollisionEnds(PhysicalBaseObject* other, const Point2D<float>&, bool) {
    ItemObject* item = ItemOfOwner(m_owner);
    if (other == nullptr) {
        return;
    }
    GameObject* otherOwner = other->m_owner;
    if (item == nullptr || otherOwner == nullptr) {
        return;
    }
    if (!item->IsInteractive(nullptr)) {
        return;
    }
    Character* character = CharacterOfOwner(otherOwner);
    if (character == nullptr) {
        return;
    }
    item->OnCollisionEnds(character);
}

// 0x4702a8 _ZN6POItem17onCollisionBeginsEP18PhysicalBaseObjectRK7Point2DIfEb
// The same gates as onCollisionEnds, in the same order. The original's first ObjectBase::GetHandle call is on this->m_owner
// and its operator Character* call is on the other owner. The item's OnCollisionBegins is the last call.
void POItem::onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>&, bool) {
    ItemObject* item = ItemOfOwner(m_owner);
    if (other == nullptr) {
        return;
    }
    GameObject* otherOwner = other->m_owner;
    if (item == nullptr || otherOwner == nullptr) {
        return;
    }
    if (!item->IsInteractive(nullptr)) {
        return;
    }
    Character* character = CharacterOfOwner(otherOwner);
    if (character == nullptr) {
        return;
    }
    item->OnCollisionBegins(character);
}

// 0x470430 _ZN6POItemD0Ev (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~POItem() followed by CustomFree(this)).

// 0x3b38f4 _ZN9POMonsterD1Ev (complete-object destructor, D1)
// Stores POCharacter's vtable, then ~PhysicalObject. Same inlined POCharacter::~POCharacter as POFaerie.
POMonster::~POMonster() {}

// 0x3b4458 _ZN9POMonsterD0Ev (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~POMonster() followed by CustomFree(this)).

// 0x3b3858 _ZN8POPlayerD1Ev (complete-object destructor, D1)
// Stores POCharacter's vtable, then ~PhysicalObject. Same inlined POCharacter::~POCharacter as POFaerie.
POPlayer::~POPlayer() {}

// 0x3b441c _ZN8POPlayerD0Ev (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~POPlayer() followed by CustomFree(this)).
