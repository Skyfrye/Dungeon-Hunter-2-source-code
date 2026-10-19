// Batch g1-game-world-ProjectileManager-fb6a9d-0: the ProjectileManager class (the main and laser pools, spawn and
// despawn, the flush and the pre-cache pass). Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so and
// checked against the assembly of _Create (0x3e693c), where the laser-slot search reads the main pool's in-use bytes.
// Offsets in comments are the original 32-bit ones. The pool entries are host-width, so nothing is indexed by byte
// offset.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/ProjectileManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "core-platform/stlport_alloc.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

// Engine-wide assert level (core-platform/memory.hpp). memory.hpp is not included here: its CustomFree declaration
// clashes with the inline one in pydata-accessors/deps/stream_reader.hpp, which structs_records.hpp brings in.
extern int gAssertLevel;

namespace {

// GO ids of the two pooled classes: the m_goId word (+0xf4) the original tests after the spawn.
constexpr std::int32_t kGoIdProjectile = 9;
constexpr std::int32_t kGoIdLaserTypeProjectile = 10;

const char kProjectileManagerSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\ProjectileManager.cpp";

const char kNotFoundExpression[] = "!\"ProjectileManager :: WTF!\"";

// The original ASSERT(expression). Level 2 stops the process (the original writes to address 0); level 1 prints the
// message and carries on. Same helper as Projectile.cpp.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kProjectileManagerSource, line);
    }
}

// Arrays::ProjectileTable row (72 bytes in the original). The host rows are Structs::Projectile, reached through a
// typed pointer as in Projectile.cpp. +0x14 is m_w5 (int), +0x1c is m_w7 (bool, the laser selector).
const Structs::Projectile& ProjectileRow(int tableIndex) {
    return reinterpret_cast<const Structs::Projectile*>(Arrays::ProjectileTable::members)[tableIndex];
}

// The spawn half shared by _Create's two branches: ObjectManager::Spawn(type, name, active = false, silent = true), then
// GetObject(false) and the GO id test (+0xf4). Returns null when there is no object or its id is not goId. The handle is
// a plain value with no destructor, so nothing is released after the call.
Projectile* SpawnPooledObject(const char* type, const char* name, std::int32_t goId) {
    ObjectHandle handle = dword_99F764->Spawn(type, name, false, true);
    ObjectBase* base = handle.GetObject(false);
    if (base == nullptr || static_cast<std::int32_t>(base->m_goId) != goId) {
        return nullptr;
    }
    return static_cast<Projectile*>(base);
}

// The part of DeSpawn that both pools share: the projectile is hidden (vtable +0x40 with 0), stopped, and its updating
// byte (+0x85) is cleared. The pool entry is updated by the caller.
void StopPooledProjectile(Projectile* projectile) {
    projectile->SetVisible(false);      // GameObject::SetVisible through vtable +0x40
    projectile->GameObject::Stop();     // 0x3938f8, not virtual
    projectile->unk_85 = 0;             // +0x85
}

}  // namespace

// 0x3e60fc ProjectileManager::ProjectileManager() (C2) and 0x3e6158 (C1): the same body. The vptr store is the compiler's.
// The pools are default-constructed; the three raw words and the counters and cursors are zeroed as in the original.
ProjectileManager::ProjectileManager() {
    unk_04 = nullptr;                   // +0x04
    unk_08 = nullptr;                   // +0x08
    unk_0c = nullptr;                   // +0x0c
    m_projectileNameIndex = 0;          // +0x1c
    m_projectileCursor = 0;             // +0x20
    m_laserNameIndex = 0;               // +0x30
    m_laserCursor = 0;                  // +0x34
}

// 0x3e68b0 ProjectileManager::~ProjectileManager() (D1) and 0x3e715c (D2): the same body.
// The raw block at +0x04 .. +0x0f is a vector-like buffer that is never filled: the constructor zeroes its three words and no function stores into them, so the free below does not run. The release is the
// allocator dispatch the listing shows (0x3e68f4 `SUBS`-style size = (+0x0c - +0x04) & ~3, 0x3e68fc
// `CMP R3,#0x80; BHI`): 0x80 bytes or fewer goes to __node_alloc::_M_deallocate, which rounds the size up to
// 8 and pools the block, and anything larger to CustomFree. The node allocator now has a body
// (core-platform/stlport_alloc.hpp / src/stlport_alloc.cpp, 0x31bb44 = __node_alloc::deallocate); the size
// computed below is the host-width difference of the two words, which is the same number because the buffer
// is byte-addressed either way. The two pools are released by their member destructors after this body, as
// the compiler inserts them.
ProjectileManager::~ProjectileManager() {
    if (unk_04 != nullptr) {
        const std::uintptr_t size =
            reinterpret_cast<std::uintptr_t>(unk_0c) - reinterpret_cast<std::uintptr_t>(unk_04);
        if (size > 0x80) {
            CustomFree(unk_04);
        } else {
            std::__node_alloc::_M_deallocate(unk_04, static_cast<unsigned int>(size));
        }
    }
}

// 0x3e6920 ProjectileManager::~ProjectileManager() (D0): skipped. The compiler generates the deleting destructor, which is
// D1 followed by CustomFree(this); a delete expression on a ProjectileManager pointer supplies it.

// 0x3e61b4 ProjectileManager::DeSpawn(Projectile*, bool)
// The pseudocode returns the last r0 value. Callers ignore it, so the port returns void.
void ProjectileManager::DeSpawn(Projectile* projectile, bool laser) {
    if (projectile == nullptr) {
        // Level 2 stops at the first assert. Level 1 prints both, as the original does (282, then the WTF line 318).
        ReportAssert("p", 282);
        ReportAssert(kNotFoundExpression, 318);
        return;
    }
    if (!laser) {
        for (std::size_t i = 0; i < m_projectiles.size(); ++i) {
            if (m_projectiles[i].m_projectile == projectile) {
                StopPooledProjectile(projectile);
                m_projectiles[i].m_inUse = false;           // entry +0x04
                m_projectileCursor = static_cast<int>(i);   // +0x20
                return;
            }
        }
    } else {
        for (std::size_t i = 0; i < m_laserProjectiles.size(); ++i) {
            if (m_laserProjectiles[i].m_projectile == projectile) {
                StopPooledProjectile(projectile);
                m_laserProjectiles[i].m_inUse = false;      // entry +0x04
                m_laserCursor = static_cast<int>(i);        // +0x34
                return;
            }
        }
    }
    // Not in the pool the flag names (the original's LABEL_9): the WTF assert, and no state change.
    ReportAssert(kNotFoundExpression, 318);
}

// 0x3e646c ProjectileManager::Flush()
void ProjectileManager::Flush() {
    // Main pool: each object is hidden (vtable +0x40 with 0), then marked for deletion with ObjectBase::Delete.
    // The entries are dropped afterwards. The original keeps the capacity, as clear() does.
    const std::size_t count = m_projectiles.size();
    for (std::size_t i = 0; i < count; ++i) {
        Projectile* projectile = m_projectiles[i].m_projectile;
        projectile->SetVisible(false);
        projectile->Delete();
    }
    m_projectiles.clear();

    // Laser pool, the same steps.
    const std::size_t laserCount = m_laserProjectiles.size();
    for (std::size_t i = 0; i < laserCount; ++i) {
        Projectile* projectile = m_laserProjectiles[i].m_projectile;
        projectile->SetVisible(false);
        projectile->Delete();
    }
    m_laserProjectiles.clear();
}

// 0x3e693c ProjectileManager::_Create(bool, bool)
// The laser search reads the main pool's in-use byte at the same index as the laser slot (the forward scan and the start check; asm 0x3e6aa8 and 0x3e6acc load the main pool begin from this+0x10). The
// wrap-around scan reads the laser pool's own bytes, as the pseudocode does. A laser entry is handed out when the main pool's byte at the same index is clear, even if the laser entry's own in-use byte
// is set; that is the original's behaviour and is reproduced as is. When the main pool is shorter than the laser pool the original reads heap memory past the end of the main pool (undefined); the
// port treats such a slot as not free. A new projectile is named from the pool's counter ("Projectile_%03u" / "LTProjectile_%03u"), spawned through ObjectManager::Spawn and accepted only with the
// expected GO id (9, 10).
Projectile* ProjectileManager::_Create(bool inUse, bool laser) {
    if (!laser) {
        // Main pool. The search starts at the cursor (or at 0 when the cursor is past the end and the cursor is reset),
        // runs to the end of the pool, then wraps over the entries before the cursor. Every hit sets the cursor past itself.
        const std::size_t count = m_projectiles.size();
        std::size_t start = 0;
        if (static_cast<std::size_t>(m_projectileCursor) < count) {
            start = static_cast<std::size_t>(m_projectileCursor);
        } else {
            m_projectileCursor = 0;
        }
        auto take = [this](std::size_t i) {
            m_projectiles[i].m_inUse = true;                        // entry +0x04
            m_projectileCursor = static_cast<int>(i + 1);           // +0x20
            return m_projectiles[i].m_projectile;
        };
        for (std::size_t i = start; i < count; ++i) {
            if (!m_projectiles[i].m_inUse) {
                return take(i);
            }
        }
        for (std::size_t i = 0; i < start; ++i) {
            if (!m_projectiles[i].m_inUse) {
                return take(i);
            }
        }

        // No free entry: make a projectile named from the counter, and add it to the pool.
        char name[32];
        std::snprintf(name, sizeof(name), "Projectile_%03u", static_cast<unsigned int>(m_projectileNameIndex));
        Projectile* projectile = SpawnPooledObject("Projectile", name, kGoIdProjectile);
        if (projectile == nullptr) {
            return nullptr;
        }
        ++m_projectileNameIndex;                                    // +0x1c
        m_projectileCursor = 0;                                     // +0x20
        _Projectile entry{};
        entry.m_projectile = projectile;
        entry.m_inUse = inUse;
        m_projectiles.push_back(entry);
        projectile->SetManager(this);
        return projectile;
    }

    // Laser pool, the same shape. The start check and the forward scan read the main pool's in-use bytes (see the function comment).
    const std::size_t count = m_laserProjectiles.size();
    std::size_t start = 0;
    if (static_cast<std::size_t>(m_laserCursor) < count) {
        start = static_cast<std::size_t>(m_laserCursor);
    } else {
        m_laserCursor = 0;
    }
    auto takeLaser = [this](std::size_t i) {
        m_laserProjectiles[i].m_inUse = true;                       // entry +0x04 of the laser pool
        m_laserCursor = static_cast<int>(i + 1);                    // +0x34
        return m_laserProjectiles[i].m_projectile;
    };
    auto mainEntryFree = [this](std::size_t i) {
        return i < m_projectiles.size() && !m_projectiles[i].m_inUse;
    };
    for (std::size_t i = start; i < count; ++i) {
        if (mainEntryFree(i)) {
            return takeLaser(i);
        }
    }
    for (std::size_t i = 0; i < start; ++i) {
        if (!m_laserProjectiles[i].m_inUse) {
            return takeLaser(i);
        }
    }

    // No free laser entry: make a LaserTypeProjectile named from its counter.
    char name[32];
    std::snprintf(name, sizeof(name), "LTProjectile_%03u", static_cast<unsigned int>(m_laserNameIndex));
    Projectile* laserProjectile = SpawnPooledObject("LaserTypeProjectile", name, kGoIdLaserTypeProjectile);
    if (laserProjectile == nullptr) {
        return nullptr;
    }
    m_laserCursor = 0;                                              // +0x34
    ++m_laserNameIndex;                                             // +0x30
    _LaserTypeProjectile entry{};
    entry.m_projectile = laserProjectile;
    entry.m_inUse = inUse;
    m_laserProjectiles.push_back(entry);
    laserProjectile->SetManager(this);
    return laserProjectile;
}

// 0x3e6edc ProjectileManager::Spawn(int, GameObject*, GameObject*, int (*)(Projectile*, void*), int (*)(Projectile*, void*), void*, float)
// The float overload: the table row is set up through the float SetInfo (vtable +0xcc), which aims the projectile by the angle.
Projectile* ProjectileManager::Spawn(int tableIndex, GameObject* owner, GameObject* target,
                                     int (*callbackA)(Projectile*, void*), int (*callbackB)(Projectile*, void*),
                                     void* userData, float angleDegrees) {
    if (tableIndex < 0 || static_cast<std::uint32_t>(tableIndex) >= Arrays::ProjectileTable::size) {
        return nullptr;
    }
    // The row's +0x1c byte selects the laser pool; the spawned entry is in use.
    Projectile* projectile = _Create(true, ProjectileRow(tableIndex).IsLaser);
    if (projectile != nullptr) {
        projectile->SetVisible(true);                               // vtable +0x40 with 1
        projectile->SetInfo(tableIndex, owner, target, callbackA, callbackB, userData, angleDegrees);  // vtable +0xcc
        projectile->unk_85 = 1;                                     // +0x85
    } else {
        ReportAssert("p", 266);
    }
    return projectile;
}

// 0x3e701c ProjectileManager::Spawn(int, GameObject*, GameObject*, int (*)(Projectile*, void*), int (*)(Projectile*, void*), void*, bool)
// The bool overload: the same steps, with the bool SetInfo (vtable +0xc8).
Projectile* ProjectileManager::Spawn(int tableIndex, GameObject* owner, GameObject* target,
                                     int (*callbackA)(Projectile*, void*), int (*callbackB)(Projectile*, void*),
                                     void* userData, bool useProjectileNode) {
    if (tableIndex < 0 || static_cast<std::uint32_t>(tableIndex) >= Arrays::ProjectileTable::size) {
        return nullptr;
    }
    Projectile* projectile = _Create(true, ProjectileRow(tableIndex).IsLaser);
    if (projectile != nullptr) {
        projectile->SetVisible(true);                               // vtable +0x40 with 1
        projectile->SetInfo(tableIndex, owner, target, callbackA, callbackB, userData, useProjectileNode);  // vtable +0xc8
        projectile->unk_85 = 1;                                     // +0x85
    } else {
        ReportAssert("p", 243);
    }
    return projectile;
}

// 0x3e71cc ProjectileManager::PreCache()
// Each pool is given room for ten entries (the original reallocates only below ten, which reserve(10) does too). Ten
// entries are then made in each pool, every entry in either pool is despawned, and the FX set of every table row is
// registered for loading.
void ProjectileManager::PreCache() {
    m_projectiles.reserve(10);
    for (int i = 0; i != 10; ++i) {
        _Create(false, false);
    }
    const std::size_t count = m_projectiles.size();
    for (std::size_t i = 0; i < count; ++i) {
        DeSpawn(m_projectiles[i].m_projectile, false);
    }

    m_laserProjectiles.reserve(10);
    for (int j = 0; j != 10; ++j) {
        _Create(false, true);
    }
    const std::size_t laserCount = m_laserProjectiles.size();
    for (std::size_t i = 0; i < laserCount; ++i) {
        DeSpawn(m_laserProjectiles[i].m_projectile, true);
    }

    const std::uint32_t tableSize = Arrays::ProjectileTable::size;
    for (std::uint32_t k = 0; k < tableSize; ++k) {
        // +0x14 of the row: the FX set id.
        Singleton<VisualFXManager>::s_inst.RegisterFXSetToLoad(ProjectileRow(static_cast<int>(k)).ImpactFX);
    }
}
