// Batch g1-game-app-global-f216b6-2 (<global>, part 3 of 22).
// The object factories GetNewInstance<T>() for TriggerTrap to AnimatedDecor (declared in dh2/global/object_factory.hpp),
// ToLowerCase(char*, int, int), GetApplicator(glitch::scene::ISceneNodeAnimator*) and
// CF_SetCombatants(Character*, Character*, int, bool, bool) with the combat state it writes.
// IsMultiplayerGame() is in g1-game-app-global-f216b6-2_players.cpp: dh2/Character.hpp (pydata IStreamBase) and
// dh2/PlayerManager.hpp (net-transport IStreamBase) define the same class differently, so one translation unit cannot
// include both. The split follows g1-game-app-global-f216b6-1_objects.cpp.
// Declarations: dh2/global/object_factory.hpp, dh2/global/ToLowerCase.hpp, dh2/global/GetApplicator.hpp and
// dh2/global/CombatFormulas.hpp.
// Constructor constants come from the asm (MOV R1,#n before each constructor BL), since the Hex-Rays listing drops
// some of them (Module passes 5 there).
#include <cstddef>
#include <cstring>

#include "dh2/global/object_factory.hpp"
#include "dh2/global/ToLowerCase.hpp"
#include "dh2/global/GetApplicator.hpp"
#include "dh2/Animator.hpp"
#include "dh2/AnimatorBlender.hpp"
#include "dh2/AnimatorSet.hpp"
#include "dh2/AnimatorSynchronizedBlender.hpp"
#include "dh2/AnimatorSynchronizedSet.hpp"
#include "dh2/global/CombatFormulas.hpp"

#include "dh2/Character.hpp"
#include "dh2/AnimatedDecor.hpp"
#include "dh2/Billboard.hpp"
#include "dh2/CheckpointZone.hpp"
#include "dh2/ColBox.hpp"
#include "dh2/Decor.hpp"
#include "dh2/Dummy.hpp"
#include "dh2/Floor.hpp"
#include "dh2/LightPoint.hpp"
#include "dh2/Module.hpp"
#include "dh2/QuestMoveInZone.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/TriggerObject.hpp"
#include "dh2/TriggerPlate.hpp"
#include "dh2/TriggerTrap.hpp"
#include "dh2/TriggerZone.hpp"
#include "dh2/TriggerZoneExitLevel.hpp"

// ---------------------------------------------------------------------------------------------------------------
// Object factories (<global>). Each original is operator new(size, hint 0), then the class constructor with the GO_IDS
// shown (read from the asm). The host build calls the C++ new, so the allocation sizes are not written. The GameObject
// classes (ColBox, Floor, Dummy, Decor, AnimatedDecor) call GameObject(GO_IDS 20) and write their vtables and members
// inline: there is no standalone constructor symbol, so each class constructor declared in its header carries that
// inline body in the class's own source.
// Redo pass (r2a-game-app-global-f216b6-1): the bodies below replace the stubs. Each constructor is declared in its
// dh2 header; the constructor definitions are not in the tree yet, so the link needs them.
// ---------------------------------------------------------------------------------------------------------------

// 0x340e7c ObjectBase* GetNewInstance<TriggerTrap>()
// Asm: operator new(1028, hint 0), then TriggerTrap::TriggerTrap(GO_IDS 15).
template <>
ObjectBase* GetNewInstance<TriggerTrap>() {
    return new TriggerTrap(static_cast<ObjectBase::GO_IDS>(15));
}

// 0x340ea0 ObjectBase* GetNewInstance<TriggerZoneExitLevel>()
// Asm: operator new(2080, hint 0), then TriggerZoneExitLevel::TriggerZoneExitLevel(GO_IDS 14).
template <>
ObjectBase* GetNewInstance<TriggerZoneExitLevel>() {
    return new TriggerZoneExitLevel(static_cast<ObjectBase::GO_IDS>(14));
}

// 0x340ec4 ObjectBase* GetNewInstance<TriggerZone>()
// Asm: operator new(2008, hint 0), then TriggerZone::TriggerZone(GO_IDS 20).
template <>
ObjectBase* GetNewInstance<TriggerZone>() {
    return new TriggerZone(static_cast<ObjectBase::GO_IDS>(20));
}

// 0x340ee8 ObjectBase* GetNewInstance<TriggerPlate>()
// Asm: operator new(1920, hint 0), then TriggerPlate::TriggerPlate(GO_IDS 18).
template <>
ObjectBase* GetNewInstance<TriggerPlate>() {
    return new TriggerPlate(static_cast<ObjectBase::GO_IDS>(18));
}

// 0x340f0c ObjectBase* GetNewInstance<TriggerObject>()
// Asm: operator new(1936, hint 0), then TriggerObject::TriggerObject(void). No GO_IDS argument.
template <>
ObjectBase* GetNewInstance<TriggerObject>() {
    return new TriggerObject();
}

// 0x340f2c ObjectBase* GetNewInstance<CheckpointZone>()
// Asm: operator new(928, hint 0), then CheckpointZone::CheckpointZone(GO_IDS 12).
template <>
ObjectBase* GetNewInstance<CheckpointZone>() {
    return new CheckpointZone(static_cast<ObjectBase::GO_IDS>(12));
}

// 0x340f50 ObjectBase* GetNewInstance<QuestMoveInZone>()
// Asm: operator new(904, hint 0), then QuestMoveInZone::QuestMoveInZone(GO_IDS 20).
template <>
ObjectBase* GetNewInstance<QuestMoveInZone>() {
    return new QuestMoveInZone(static_cast<ObjectBase::GO_IDS>(20));
}

// 0x340f74 ObjectBase* GetNewInstance<RoomZone>()
// Asm: operator new(924, hint 0), then RoomZone::RoomZone(GO_IDS 11).
template <>
ObjectBase* GetNewInstance<RoomZone>() {
    return new RoomZone(static_cast<ObjectBase::GO_IDS>(11));
}

// 0x340f98 ObjectBase* GetNewInstance<Module>()
// Asm: operator new(1052, hint 0), then Module::Module(GO_IDS 5) (MOV R1,#5 before the BL; the Hex-Rays listing drops it).
template <>
ObjectBase* GetNewInstance<Module>() {
    return new Module(static_cast<ObjectBase::GO_IDS>(5));
}

// 0x340fbc ObjectBase* GetNewInstance<Billboard>()
// Asm: operator new(380, hint 0), then Billboard::Billboard(GO_IDS 20).
template <>
ObjectBase* GetNewInstance<Billboard>() {
    return new Billboard(static_cast<ObjectBase::GO_IDS>(20));
}

// 0x340fe0 ObjectBase* GetNewInstance<ColBox>()
// Asm: operator new(896, hint 0), GameObject::GameObject(GO_IDS 20), then the ColBox vtables, m_static (+0x84) = 1 and
// the box at +0x374 zeroed, all inline. The constructor is ColBox::ColBox(GO_IDS) in dh2/ColBox.hpp.
template <>
ObjectBase* GetNewInstance<ColBox>() {
    return new ColBox(static_cast<ObjectBase::GO_IDS>(20));
}

// 0x34104c ObjectBase* GetNewInstance<Floor>()
// Asm: operator new(884, hint 0), GameObject::GameObject(GO_IDS 20), then m_static (+0x84) = 1 and the Floor vtables,
// inline. The constructor is Floor::Floor(GO_IDS) in dh2/Floor.hpp.
template <>
ObjectBase* GetNewInstance<Floor>() {
    return new Floor(static_cast<ObjectBase::GO_IDS>(20));
}

// 0x3410a4 ObjectBase* GetNewInstance<Dummy>()
// Asm: operator new(884, hint 0), GameObject::GameObject(GO_IDS 20), then m_static (+0x84) = 1 and the Dummy vtables,
// inline. The constructor is Dummy::Dummy(GO_IDS) in dh2/Dummy.hpp.
template <>
ObjectBase* GetNewInstance<Dummy>() {
    return new Dummy(static_cast<ObjectBase::GO_IDS>(20));
}

// 0x3410fc ObjectBase* GetNewInstance<Decor>()
// Asm: operator new(888, hint 0), GameObject::GameObject(GO_IDS 20), then m_static (+0x84) = 1, m_floorMapPending (+0x375)
// = 1, m_isSolid (+0x376) = 1 and the Decor vtables, inline. The constructor is Decor::Decor(GO_IDS) in dh2/Decor.hpp.
template <>
ObjectBase* GetNewInstance<Decor>() {
    return new Decor(static_cast<ObjectBase::GO_IDS>(20));
}

// 0x34115c ObjectBase* GetNewInstance<LightPoint>()
// Asm: operator new(436, hint 0), then LightPoint::LightPoint(void). No GO_IDS argument.
template <>
ObjectBase* GetNewInstance<LightPoint>() {
    return new LightPoint();
}

// 0x342600 ObjectBase* GetNewInstance<AnimatedDecor>()
// Asm: operator new(916, hint 0), GameObject::GameObject(GO_IDS 20), then the AnimatedDecor vtables (the Decor-shaped
// slots at +0x04 and +0x24 included), the empty string at +0x37c, m_static (+0x84) = 1, m_floorMapPending (+0x375) set
// to 1 and then cleared to 0, and m_isSolid (+0x376) = 1, all inline. The Decor constructor is not called. The
// constructor is AnimatedDecor::AnimatedDecor(GO_IDS) in dh2/AnimatedDecor.hpp.
template <>
ObjectBase* GetNewInstance<AnimatedDecor>() {
    return new AnimatedDecor(static_cast<ObjectBase::GO_IDS>(20));
}

// ---------------------------------------------------------------------------------------------------------------
// Free functions.
// ---------------------------------------------------------------------------------------------------------------

// 0x34e414 ToLowerCase(char*, int, int)
// Lowercases the ASCII capitals in str[from..to] inclusive. A `to` of -1, or one at or past the end, means the last
// character. Returns strlen(str) on every path that gets that far (the asm keeps the LC_API_STRLEN result in R0), and 0
// for a null str. The original's end-of-range arithmetic is kept: when `to` is at or past the end, it becomes len - 1.
std::size_t ToLowerCase(char* str, int from, int to) {
    if (str == nullptr) {
        return 0;
    }
    const int length = static_cast<int>(std::strlen(str));
    if (to == -1 || length <= to) {
        to = length - 1;
    }
    for (int i = from; i <= to; ++i) {
        const char c = str[i];
        if (static_cast<unsigned char>(c - 'A') <= 25u) {  // 'A' .. 'Z'
            str[i] = static_cast<char>(c + 32);
        }
    }
    return static_cast<std::size_t>(length);
}

// 0x369160 AnimApplicator* GetApplicator(glitch::scene::ISceneNodeAnimator*)
// A null animator gives null. Otherwise the animator's getType() (vptr+0x24) selects the game animator class and its embedded
// AnimApplicator: 11 Animator (+0x58), 12 AnimatorBlender (+0x88), 13 AnimatorSet (+0x58), 14 AnimatorSynchronizedBlender (+0xd8),
// 15 AnimatorSynchronizedSet (+0x84). Any other type gives null.
AnimApplicator* GetApplicator(glitch::scene::ISceneNodeAnimator* animator) {
    if (animator == nullptr) {
        return nullptr;
    }
    switch (static_cast<int>(animator->getType())) {
        case 11:
            return &static_cast<Animator*>(animator)->m_applicator;
        case 12:
            return &static_cast<AnimatorBlender*>(animator)->m_applicator;
        case 13:
            return &static_cast<AnimatorSet*>(animator)->m_applicator;
        case 14:
            return &static_cast<AnimatorSynchronizedBlender*>(animator)->m_applicator;
        case 15:
            return &static_cast<AnimatorSynchronizedSet*>(animator)->m_applicator;
        default:
            return nullptr;
    }
}

// Combat formula state. File-static in the original (see dh2/global/CombatFormulas.hpp). This batch defines the five
// variables that only CF_SetCombatants writes: s_attacker, s_defender, s_element, s_offHanded and s_isSkill. The other
// four, s_ad_dlevel, s_da_dlevel, s_isBlocked and s_isCritical, are defined once in
// game-app/src/g1-game-app-global-f216b6-3.cpp (declared in dh2/global/cf_calc.hpp). CMakeLists.txt links every
// game-app/src/*.cpp into one target, so each symbol needs exactly one strong definition; this batch must not define
// those four.
Character* s_attacker = nullptr;  // 0x9a29bc
Character* s_defender = nullptr;  // 0x9a29c0
int s_element = 0;                // 0x9a29cc
bool s_offHanded = false;         // 0x9a29d0
bool s_isSkill = false;           // 0x9a29d1

// 0x3b059c CF_SetCombatants(Character*, Character*, int, bool, bool)
// Stores both characters and the flags, and returns the attacker's property 19 minus the defender's. That difference is
// also stored in s_ad_dlevel, and its negation in s_da_dlevel. The original reads property 19 with
// CharProperties::_GetProperty(this, this + 0xa94, 19), where this + 0xa94 is the final sheet m_props. The public
// CharProperties::PROPS_Get(propId, useTemp) makes that same call: its clones at 0x3af76c and 0x3bd130 are
// _GetProperty(this, this + 2708, propId), and useTemp is not used. The subtraction and the negation wrap at 32 bits as
// they do on ARM, so they are done on unsigned values.
int CF_SetCombatants(Character* attacker, Character* defender, int element, bool offHanded, bool isSkill) {
    s_attacker = attacker;
    s_defender = defender;
    const int attackerProperty = attacker->PROPS_Get(19, false);
    const int defenderProperty = defender->PROPS_Get(19, false);
    const int result = static_cast<int>(static_cast<unsigned int>(attackerProperty) -
                                        static_cast<unsigned int>(defenderProperty));
    s_isCritical = false;
    s_da_dlevel = static_cast<int>(0u - static_cast<unsigned int>(result));
    s_element = element;
    s_offHanded = offHanded;
    s_isSkill = isSkill;
    s_ad_dlevel = result;
    s_isBlocked = false;
    return result;
}
