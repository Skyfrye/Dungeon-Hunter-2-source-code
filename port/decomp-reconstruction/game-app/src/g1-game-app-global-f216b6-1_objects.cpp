// Batch g1-game-app-global-f216b6-1, object factories (<global>, part 2 of 22). Companion of
// g1-game-app-global-f216b6-1.cpp, split off because the dh2 game headers included here clash with
// net-session-online's c_msg_fixed.hpp in one translation unit (NetBitStream is defined by both).
// GetNewInstance<T>() builds one game object for the object class registry. Each original allocates with
// operator new (asm: operator new(size, hint 0)) and runs the class constructor with a GO_IDS constant that
// the asm passes in R1. The constants below are read from the asm, because the Hex-Rays listing drops them.
// Declarations: dh2/global/object_factory.hpp.
// Redo pass (r2a-game-app-global-f216b6-0): the class headers for the eleven factories below now exist in
// game/include/dh2, so their bodies are complete. The host build uses the plain C++ new, so the original
// allocation sizes (0x318 LevelConfig, 0x3a0 SoundEmitter, 0x3e4 LaserTypeProjectile, 0x3d0 ItemObject,
// 0x6f8 DestructibleContainer, 0x748 SlotContainer, 0x718 OpenableContainer, 0x3a8 LiftableObject,
// 0x38c SpawnSpot, 0x394 SpawnPoint, 0x410 ProjectileTrap) are not written.
#include "dh2/global/object_factory.hpp"

#include "dh2/Character.hpp"
#include "dh2/DestructibleContainer.hpp"
#include "dh2/Door.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/LaserTypeProjectile.hpp"
#include "dh2/LevelConfig.hpp"
#include "dh2/LiftableObject.hpp"
#include "dh2/OpenableContainer.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/ProjectileTrap.hpp"
#include "dh2/SlotContainer.hpp"
#include "dh2/SoundEmitter.hpp"
#include "dh2/SpawnPoint.hpp"
#include "dh2/SpawnSpot.hpp"
#include "dh2/TimerTrap.hpp"

// 0x340800 ObjectBase* GetNewInstance<Character>()
// Asm: operator new(0x1f90, hint 0), then Character::Character(GO_IDS 0).
template <>
ObjectBase* GetNewInstance<Character>() {
    return new Character(static_cast<ObjectBase::GO_IDS>(0));
}

// 0x340824 ObjectBase* GetNewInstance<Door>()
// Asm: operator new(0x6d0, hint 0), then Door::Door(GO_IDS 2).
template <>
ObjectBase* GetNewInstance<Door>() {
    return new Door(static_cast<ObjectBase::GO_IDS>(2));
}

// 0x340d14 ObjectBase* GetNewInstance<Projectile>()
// Asm: operator new(0x3d4, hint 0), then Projectile::Projectile(GO_IDS 9).
template <>
ObjectBase* GetNewInstance<Projectile>() {
    return new Projectile(static_cast<ObjectBase::GO_IDS>(9));
}

// 0x340ca8 ObjectBase* GetNewInstance<LevelConfig>()
// Asm: operator new(0x318, hint 0), then LevelConfig::LevelConfig(GO_IDS 4).
template <>
ObjectBase* GetNewInstance<LevelConfig>() {
    return new LevelConfig(static_cast<ObjectBase::GO_IDS>(4));
}

// 0x340ccc ObjectBase* GetNewInstance<SoundEmitter>()
// Asm: operator new(0x3a0, hint 0), then SoundEmitter::SoundEmitter(GO_IDS 0x14).
template <>
ObjectBase* GetNewInstance<SoundEmitter>() {
    return new SoundEmitter(static_cast<ObjectBase::GO_IDS>(0x14));
}

// 0x340cf0 ObjectBase* GetNewInstance<LaserTypeProjectile>()
// Asm: operator new(0x3e4, hint 0), then LaserTypeProjectile::LaserTypeProjectile(GO_IDS 0xa).
template <>
ObjectBase* GetNewInstance<LaserTypeProjectile>() {
    return new LaserTypeProjectile(static_cast<ObjectBase::GO_IDS>(0xa));
}

// 0x340d38 ObjectBase* GetNewInstance<ItemObject>()
// Asm: operator new(0x3d0, hint 0), then ItemObject::ItemObject(GO_IDS 3).
template <>
ObjectBase* GetNewInstance<ItemObject>() {
    return new ItemObject(static_cast<ObjectBase::GO_IDS>(3));
}

// 0x340d5c ObjectBase* GetNewInstance<DestructibleContainer>()
// Asm: operator new(0x6f8, hint 0), then DestructibleContainer::DestructibleContainer(GO_IDS 1).
template <>
ObjectBase* GetNewInstance<DestructibleContainer>() {
    return new DestructibleContainer(static_cast<ObjectBase::GO_IDS>(1));
}

// 0x340d80 ObjectBase* GetNewInstance<SlotContainer>()
// Asm: operator new(0x748, hint 0), then SlotContainer::SlotContainer(GO_IDS 8).
template <>
ObjectBase* GetNewInstance<SlotContainer>() {
    return new SlotContainer(static_cast<ObjectBase::GO_IDS>(8));
}

// 0x340da4 ObjectBase* GetNewInstance<OpenableContainer>()
// Asm: operator new(0x718, hint 0), then OpenableContainer::OpenableContainer(GO_IDS 7).
template <>
ObjectBase* GetNewInstance<OpenableContainer>() {
    return new OpenableContainer(static_cast<ObjectBase::GO_IDS>(7));
}

// 0x340dc8 ObjectBase* GetNewInstance<LiftableObject>()
// Asm: operator new(0x3a8, hint 0), then LiftableObject::LiftableObject(GO_IDS 6).
template <>
ObjectBase* GetNewInstance<LiftableObject>() {
    return new LiftableObject(static_cast<ObjectBase::GO_IDS>(6));
}

// 0x340dec ObjectBase* GetNewInstance<SpawnSpot>()
// Asm: operator new(0x38c, hint 0), then SpawnSpot::SpawnSpot(GO_IDS 0x14).
template <>
ObjectBase* GetNewInstance<SpawnSpot>() {
    return new SpawnSpot(static_cast<ObjectBase::GO_IDS>(0x14));
}

// 0x340e10 ObjectBase* GetNewInstance<SpawnPoint>()
// Asm: operator new(0x394, hint 0), then SpawnPoint::SpawnPoint(GO_IDS 0xd).
template <>
ObjectBase* GetNewInstance<SpawnPoint>() {
    return new SpawnPoint(static_cast<ObjectBase::GO_IDS>(0xd));
}

// 0x340e34 ObjectBase* GetNewInstance<ProjectileTrap>()
// Asm: operator new(0x410, hint 0), then ProjectileTrap::ProjectileTrap(GO_IDS 0x11).
template <>
ObjectBase* GetNewInstance<ProjectileTrap>() {
    return new ProjectileTrap(static_cast<ObjectBase::GO_IDS>(0x11));
}

// 0x340e58 ObjectBase* GetNewInstance<TimerTrap>()
// Asm: operator new(0x408, hint 0), then TimerTrap::TimerTrap(GO_IDS 0x10). The constructor is declared in
// dh2/TimerTrap.hpp; its definition is not in the tree yet (link needs it).
template <>
ObjectBase* GetNewInstance<TimerTrap>() {
    return new TimerTrap(static_cast<ObjectBase::GO_IDS>(0x10));
}
