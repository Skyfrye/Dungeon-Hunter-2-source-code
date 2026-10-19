// Batch g1-game-world-ObjectSearcher-3d104b-0 (part 1 of 3 for ObjectSearcher): the IObjectList, BackupObjectList,
// TargetList, CharacterList and PlayerList destructors, the CharacterList and PlayerList iterators, and the three
// TargetSorter comparators. Declarations come from dh2/ObjectSearcher.hpp. The deleting destructors (D0) at
// 0x38b2cc and 0x38d730 are emitted by the compiler from the virtual destructors and are not written here.
// PlayerList::AtEnd (0x38d530) and PlayerList::Size (0x38d55c) read PlayerManager and are in the companion file
// g1-game-world-ObjectSearcher-3d104b-0_players.cpp: dh2/PlayerManager.hpp and dh2/Character.hpp cannot share a
// translation unit (the IStreamBase stand-ins of net-transport and pydata-accessors collide).
//
// Layout facts used here (original 32-bit offsets, named in dh2/ObjectSearcher.hpp):
//   CharacterList +0x04 m_list     std::list<Character*>; the list object is its own sentinel node
//                 +0x08 m_current  node iterator of the current entry (the node value is at +0x08 of the node)
//                 +0x0c m_end      the list's sentinel (end iterator)
//   PlayerList    +0x04 m_players  PlayerManager*
//                 +0x08 m_index    current player index
//   TargetInfo    +0x04 distance, +0x08 angle, +0x0c flags (bit 0 set for a Character)
//
// The ARM originals of Reset and Next return `this` in r0 although they are void in the header. The callers
// ignore that register, so the void declarations are kept.

#include "dh2/ObjectSearcher.hpp"

#include "dh2/Character.hpp"

// 0x38aabc _ZN14ObjectSearcher11IObjectListD1Ev
ObjectSearcher::IObjectList::~IObjectList() {}

// 0x38c900 _ZN14ObjectSearcher16BackupObjectListD1Ev
// Drops the saved references through _Clear(). The original then frees the vector's buffer itself (CustomFree above
// 0x80 bytes, the node allocator below). The std::vector member destructor releases the same buffer after this body.
ObjectSearcher::BackupObjectList::~BackupObjectList() {
    _Clear();
}

// 0x38d18c _ZN14ObjectSearcher10TargetListD1Ev
// The original erases the backup map (root at +0x40, header reset, count at +0x4c) only when it is not empty, then
// destroys the priority queue's deque. m_backups.clear() does the map part here. The deque is released by the
// m_results member destructor after this body, in the same order as the original. TargetInfo has no destructor, so
// the element loop in the original does nothing.
ObjectSearcher::TargetList::~TargetList() {
    m_backups.clear();
}

// 0x38d4a4 _ZN14ObjectSearcher13CharacterList5ResetEv
void ObjectSearcher::CharacterList::Reset() {
    m_current = m_list->begin();   // +0x08 first node of the list
    m_end = m_list->end();         // +0x0c the list's sentinel
}

// 0x38d4b8 _ZN14ObjectSearcher13CharacterList5AtEndEv
bool ObjectSearcher::CharacterList::AtEnd() {
    return m_current == m_end;
}

// 0x38d4d0 _ZN14ObjectSearcher13CharacterList4NextEv
// The original loads the next pointer of the current node. Callers test AtEnd first.
void ObjectSearcher::CharacterList::Next() {
    ++m_current;
}

// 0x38d4e0 _ZN14ObjectSearcher13CharacterList4SizeEv
// Counts the list nodes (the original walks the list from its first node to the sentinel).
int ObjectSearcher::CharacterList::Size() {
    int count = 0;
    for (auto it = m_list->begin(); it != m_list->end(); ++it) {
        ++count;
    }
    return count;
}

// 0x38d50c _ZN14ObjectSearcher13CharacterList3GetEv
// Returns the Character* stored in the current node, as its GameObject base (the GameObject base is at offset 0 of
// Character, so the conversion does not move the pointer). Callers test AtEnd first.
GameObject* ObjectSearcher::CharacterList::Get() {
    return *m_current;
}

// 0x38d518 _ZN14ObjectSearcher13CharacterList7GetCharEv
// Callers test AtEnd first.
Character* ObjectSearcher::CharacterList::GetChar() {
    return *m_current;
}

// 0x38d524 _ZN14ObjectSearcher10PlayerList5ResetEv
void ObjectSearcher::PlayerList::Reset() {
    m_index = 0;
}

// 0x38d54c _ZN14ObjectSearcher10PlayerList4NextEv
void ObjectSearcher::PlayerList::Next() {
    ++m_index;
}

// 0x38d568 _ZN14ObjectSearcher12TargetSorter11_sortNoSortERKNS_10TargetInfoES3_
bool ObjectSearcher::TargetSorter::_sortNoSort(const TargetInfo&, const TargetInfo&) {
    return false;
}

// 0x38d570 _ZN14ObjectSearcher12TargetSorter12_sortClosestERKNS_10TargetInfoES3_
// Characters sort before objects (bit 0 of the flags at +0x0c). Within the same class the nearer hit (smaller
// distance) sorts first. When the class bits differ the original returns the second hit's bit (asm: the flags are
// compared, and on a difference r0 holds b.flags & 1), so the result is true exactly when b is a Character.
bool ObjectSearcher::TargetSorter::_sortClosest(const TargetInfo& a, const TargetInfo& b) {
    const bool aIsCharacter = (a.isCharacter & 1) != 0;
    const bool bIsCharacter = (b.isCharacter & 1) != 0;
    if (aIsCharacter == bIsCharacter) {
        return a.distance > b.distance;   // __aeabi_fcmpgt on +0x04
    }
    return bIsCharacter;
}

// 0x38d5b4 _ZN14ObjectSearcher12TargetSorter12_sortFrontalERKNS_10TargetInfoES3_
// The same class rule as _sortClosest. Within one class the hit with the larger angle (+0x08) sorts first.
bool ObjectSearcher::TargetSorter::_sortFrontal(const TargetInfo& a, const TargetInfo& b) {
    const bool aIsCharacter = (a.isCharacter & 1) != 0;
    const bool bIsCharacter = (b.isCharacter & 1) != 0;
    if (aIsCharacter == bIsCharacter) {
        return a.angle > b.angle;         // __aeabi_fcmpgt on +0x08
    }
    return bIsCharacter;
}

// 0x38d608 _ZN14ObjectSearcher10PlayerListD1Ev
ObjectSearcher::PlayerList::~PlayerList() {}

// 0x38d60c _ZN14ObjectSearcher13CharacterListD1Ev
ObjectSearcher::CharacterList::~CharacterList() {}
