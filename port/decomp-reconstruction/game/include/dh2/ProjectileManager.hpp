// ProjectileManager: the pools of projectiles the game spawns and reuses. The main pool holds
// {Projectile*, in-use flag} entries. The laser pool has the same shape. Flush deletes the objects
// still held in both pools. Spawn calls _Create, initialises the projectile, and sets its spawned byte.
// Original 32-bit size 0x38 (56, inferred from the recovered members; no operator new size in class-facts).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3e60fc, dtor 0x3e68b0, Flush 0x3e646c,
// DeSpawn 0x3e61b4, Spawn 0x3e6edc and 0x3e701c, PreCache 0x3e71cc).
#pragma once

#include <cstdint>
#include <vector>

class Projectile;
class GameObject;

class ProjectileManager {
public:
    // One pooled entry, 8 bytes in the original. DeSpawn clears the in-use byte of the entry.
    class _Projectile {
    public:
        Projectile* m_projectile;                                   // +0x00 the pooled projectile
        bool m_inUse;                                               // +0x04 cleared by DeSpawn, set by Spawn
        uint8_t pad_05[3];                                          // +0x05 .. +0x07
    };

    // The laser pool entry. Same shape as _Projectile (8 bytes in the original).
    class _LaserTypeProjectile {
    public:
        Projectile* m_projectile;                                   // +0x00 the pooled laser projectile
        bool m_inUse;                                               // +0x04 cleared by DeSpawn
        uint8_t pad_05[3];                                          // +0x05 .. +0x07
    };

    ProjectileManager();                                            // 0x3e60fc (C2) / 0x3e6158 (C1)
    virtual ~ProjectileManager();                                   // vtable slot 0x00: 0x3e68b0 (D1), slot 0x04: 0x3e6920 (D0); D2 at 0x3e715c

    void DeSpawn(Projectile* projectile, bool laser);               // 0x3e61b4: stops the projectile and clears its in-use byte
    void Flush();                                                   // 0x3e646c: deletes every pooled object in both pools
    Projectile* Spawn(int tableIndex, GameObject* owner, GameObject* target,
                      int (*callbackA)(Projectile*, void*), int (*callbackB)(Projectile*, void*),
                      void* userData, float unkFloat);           // 0x3e6edc (float overload, last argument stored as a word)
    Projectile* Spawn(int tableIndex, GameObject* owner, GameObject* target,
                      int (*callbackA)(Projectile*, void*), int (*callbackB)(Projectile*, void*),
                      void* userData, bool unkFlag);                    // 0x3e701c (bool overload)
    void PreCache();                                                // 0x3e71cc: fills both pools to ten entries and despawns each

public:
    Projectile* _Create(bool inUse, bool laser);                    // 0x3e693c: takes a free entry of a pool or makes a projectile and adds it; inUse is the in-use byte of a new entry, laser selects the laser pool

    // Raw three-word buffer at +0x04 .. +0x0f. The destructor frees the begin pointer.
    void* unk_04;                                                   // +0x04 begin of a raw buffer (freed by the destructor)
    void* unk_08;                                                   // +0x08 not used by the destructor, zeroed by the ctor
    void* unk_0c;                                                   // +0x0c end of storage (the destructor sizes the free from it)

    // Main pool. Entries are 8 bytes, so the vector spans +0x10 .. +0x1b.
    std::vector<_Projectile> m_projectiles;                         // +0x10 begin, +0x14 end, +0x18 cap
    int m_projectileNameIndex;                                      // +0x1c counter for the "Projectile_%03u" instance names: _Create reads it, adds one per new projectile, the ctor zeroes it
    int m_projectileCursor;                                         // +0x20 index of the entry DeSpawn last touched

    // Laser pool, same layout as the main pool.
    std::vector<_LaserTypeProjectile> m_laserProjectiles;           // +0x24 begin, +0x28 end, +0x2c cap
    int m_laserNameIndex;                                           // +0x30 counter for the "LTProjectile_%03u" instance names, as m_projectileNameIndex
    int m_laserCursor;                                              // +0x34 index of the laser entry DeSpawn last touched
};
