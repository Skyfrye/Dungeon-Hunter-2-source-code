// Batch g1-game-world-ZoneEx-dd645a-0 (part 1 of 1): the ZoneEx counters, the constructor, the destructors, Update and the
// two collision hooks that keep m_objectsInside and the character and player counts in step.
// Declarations come from dh2/ZoneEx.hpp, whose members sit at their original offsets.
//
// Layout facts used here (original 32-bit offsets, from the Hex-Rays accesses of this object):
//   Zone +0x00 .. +0x387        GameObject and Zone members, reached through the Zone base
//   +0x388 .. +0x39f            m_objectsInside, the STLport _Rb_tree of GameObject* (24 bytes in the original)
//   +0x38c                      tree root (_M_header._M_parent)
//   +0x390                      leftmost node, begin() (_M_header._M_left)
//   +0x394                      rightmost node (_M_header._M_right)
//   +0x398                      tree node count, which is the set size
//   +0x3a0                      m_numCharacters
//   +0x3a4                      m_numPlayers
//   ObjectBase +0x24            virtual IsCharacter() const (vtable slot 9)
//   ObjectBase +0x28            virtual IsPlayer() const (vtable slot 10)
//
// The constructor and the destructor do not write the vtable pointers or the tree header here. The compiler does that
// for a C++ class, and an empty std::set is the same state as the original's header-only tree.
//
// Deleting destructor (D0, 0x3986d8) is not defined here: the compiler emits it for delete on the virtual destructor.

#include "dh2/ZoneEx.hpp"

#include <iterator>

// 0x397e9c _ZNK6ZoneEx16GetNumCharactersEv
int ZoneEx::GetNumCharacters() const {
    return m_numCharacters;
}

// 0x397ea4 _ZNK6ZoneEx13GetNumPlayersEv
int ZoneEx::GetNumPlayers() const {
    return m_numPlayers;
}

// 0x397eac _ZNK6ZoneEx13GetNumObjectsEv
int ZoneEx::GetNumObjects() const {
    // Tree node count (+0x398) minus the characters, so this counts the objects that are not characters.
    return static_cast<int>(m_objectsInside.size()) - GetNumCharacters();
}

// 0x397ec0 _ZN6ZoneExC1EN10ObjectBase6GO_IDSEbb
// 0x397f28 _ZN6ZoneExC2EN10ObjectBase6GO_IDSEbb (identical body, the other constructor variant)
ZoneEx::ZoneEx(ObjectBase::GO_IDS id, bool hasPhysics, bool playerOnly)
    : Zone(id, hasPhysics, playerOnly),  // Zone::Zone runs first, as in the original
      m_objectsInside(),                 // empty tree, node count 0 (+0x398)
      m_numCharacters(0),                // +0x3a0
      m_numPlayers(0) {                  // +0x3a4
}

// 0x3980a8 _ZN6ZoneEx6UpdateEv
void ZoneEx::Update() {
    auto it = m_objectsInside.begin();
    while (it != m_objectsInside.end()) {
        // Drop each object that is no longer inside the box. The successor is taken before the erase. When the erase
        // leaves end(), the original returns from Update, which is what this return does.
        for (;;) {
            GameObject* obj = *it;
            if (Zone::IsInside(obj)) {
                break;
            }
            auto next = std::next(it);
            if (obj->IsCharacter()) {
                --m_numCharacters;
                if (obj->IsPlayer()) {
                    --m_numPlayers;
                }
            }
            m_objectsInside.erase(it);
            it = next;
            if (it == m_objectsInside.end()) {
                return;
            }
        }
        // The object is still inside: move to the next element in set order.
        ++it;
    }
}

// 0x398200 _ZN6ZoneEx15OnCollisionEndsEP10GameObject
void ZoneEx::OnCollisionEnds(GameObject* other) {
    if (Zone::IsInside(other)) {
        return;
    }
    // lower_bound is the first element not less than other (the original's _M_lower_bound walk, which starts at the
    // root). The object is in the tree only when that element equals other.
    auto it = m_objectsInside.lower_bound(other);
    if (it == m_objectsInside.end() || *it != other) {
        return;
    }
    m_objectsInside.erase(it);
    if (other->IsCharacter()) {
        --m_numCharacters;
        if (other->IsPlayer()) {
            --m_numPlayers;
        }
    }
}

// 0x39858c _ZN6ZoneEx17OnCollisionBeginsEP10GameObject
void ZoneEx::OnCollisionBegins(GameObject* other) {
    if (!Zone::IsInside(other)) {
        return;
    }
    // insert_unique: the counters only move for an object that was not in the tree yet.
    const bool inserted = m_objectsInside.insert(other).second;
    if (inserted && other->IsCharacter()) {
        ++m_numCharacters;
        if (other->IsPlayer()) {
            ++m_numPlayers;
        }
    }
}

// 0x3986d8 _ZN6ZoneExD0Ev (deleting destructor, D0): not defined here. The compiler emits it for delete on the virtual
// destructor; the original calls ~ZoneEx() and then CustomFree(this).

// 0x39865c _ZN6ZoneExD1Ev
// 0x3986f4 _ZN6ZoneExD2Ev (identical body, the other destructor variant)
ZoneEx::~ZoneEx() {
    // The original erases the whole tree before Zone::~Zone runs. The member destructor would do the same after this
    // body, so clear() only makes the order explicit.
    m_objectsInside.clear();
}
