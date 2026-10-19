// Object factories (<global>). GetNewInstance<T>() builds one game object of class T for the object
// class registry (ObjectBase* (*)()). The original emits one explicit instantiation per class. Each one
// allocates the object with operator new(size, MemoryHintState 0) and then runs the class constructor with
// the class's GO_IDS, a constant the instantiation passes (read from the asm: MOV R1,#id before the BL).
// The host build uses the plain C++ new, so the allocation size and hint do not appear in the bodies.
// Each instantiation is declared here and defined in game-app/src/g1-game-app-global-f216b6-1.cpp.
// The primary template has no definition: only these fifteen instantiations exist in this batch.
#pragma once

class ObjectBase;
class Character;
class Door;
class LevelConfig;
class SoundEmitter;
class LaserTypeProjectile;
class Projectile;
class ItemObject;
class DestructibleContainer;
class SlotContainer;
class OpenableContainer;
class LiftableObject;
class SpawnSpot;
class SpawnPoint;
class ProjectileTrap;
class TimerTrap;

template <class T>
ObjectBase* GetNewInstance();

template <>
ObjectBase* GetNewInstance<Character>();             // 0x340800, GO_IDS 0
template <>
ObjectBase* GetNewInstance<Door>();                  // 0x340824, GO_IDS 2
template <>
ObjectBase* GetNewInstance<LevelConfig>();           // 0x340ca8, GO_IDS 4
template <>
ObjectBase* GetNewInstance<SoundEmitter>();          // 0x340ccc, GO_IDS 20
template <>
ObjectBase* GetNewInstance<LaserTypeProjectile>();   // 0x340cf0, GO_IDS 10
template <>
ObjectBase* GetNewInstance<Projectile>();            // 0x340d14, GO_IDS 9
template <>
ObjectBase* GetNewInstance<ItemObject>();            // 0x340d38, GO_IDS 3
template <>
ObjectBase* GetNewInstance<DestructibleContainer>(); // 0x340d5c, GO_IDS 1
template <>
ObjectBase* GetNewInstance<SlotContainer>();         // 0x340d80, GO_IDS 8
template <>
ObjectBase* GetNewInstance<OpenableContainer>();     // 0x340da4, GO_IDS 7
template <>
ObjectBase* GetNewInstance<LiftableObject>();        // 0x340dc8, GO_IDS 6
template <>
ObjectBase* GetNewInstance<SpawnSpot>();             // 0x340dec, GO_IDS 20
template <>
ObjectBase* GetNewInstance<SpawnPoint>();            // 0x340e10, GO_IDS 13
template <>
ObjectBase* GetNewInstance<ProjectileTrap>();        // 0x340e34, GO_IDS 17
template <>
ObjectBase* GetNewInstance<TimerTrap>();             // 0x340e58, GO_IDS 16

// Batch g1-game-app-global-f216b6-2 (part 3 of 22) appends the factories for TriggerTrap to AnimatedDecor below.
// Same shape as the ones above: operator new, then the class constructor with the GO_IDS shown (read from the asm).
// TriggerObject and LightPoint take no GO_IDS. Module takes 5 (the Hex-Rays listing drops it). The GameObject
// classes (ColBox, Floor, Dummy, Decor, AnimatedDecor) pass GO_IDS 20 to GameObject, and their own members are
// written inline in the original. Definitions: game-app/src/g1-game-app-global-f216b6-2.cpp.
class TriggerTrap;
class TriggerZoneExitLevel;
class TriggerZone;
class TriggerPlate;
class TriggerObject;
class CheckpointZone;
class QuestMoveInZone;
class RoomZone;
class Module;
class Billboard;
class ColBox;
class Floor;
class Dummy;
class Decor;
class LightPoint;
class AnimatedDecor;

template <>
ObjectBase* GetNewInstance<TriggerTrap>();           // 0x340e7c, GO_IDS 15
template <>
ObjectBase* GetNewInstance<TriggerZoneExitLevel>();  // 0x340ea0, GO_IDS 14
template <>
ObjectBase* GetNewInstance<TriggerZone>();           // 0x340ec4, GO_IDS 20
template <>
ObjectBase* GetNewInstance<TriggerPlate>();          // 0x340ee8, GO_IDS 18
template <>
ObjectBase* GetNewInstance<TriggerObject>();         // 0x340f0c, no GO_IDS
template <>
ObjectBase* GetNewInstance<CheckpointZone>();        // 0x340f2c, GO_IDS 12
template <>
ObjectBase* GetNewInstance<QuestMoveInZone>();       // 0x340f50, GO_IDS 20
template <>
ObjectBase* GetNewInstance<RoomZone>();              // 0x340f74, GO_IDS 11
template <>
ObjectBase* GetNewInstance<Module>();                // 0x340f98, GO_IDS 5
template <>
ObjectBase* GetNewInstance<Billboard>();             // 0x340fbc, GO_IDS 20
template <>
ObjectBase* GetNewInstance<ColBox>();                // 0x340fe0, GameObject GO_IDS 20
template <>
ObjectBase* GetNewInstance<Floor>();                 // 0x34104c, GameObject GO_IDS 20
template <>
ObjectBase* GetNewInstance<Dummy>();                 // 0x3410a4, GameObject GO_IDS 20
template <>
ObjectBase* GetNewInstance<Decor>();                 // 0x3410fc, GameObject GO_IDS 20
template <>
ObjectBase* GetNewInstance<LightPoint>();            // 0x34115c, no GO_IDS
template <>
ObjectBase* GetNewInstance<AnimatedDecor>();         // 0x342600, GameObject GO_IDS 20
