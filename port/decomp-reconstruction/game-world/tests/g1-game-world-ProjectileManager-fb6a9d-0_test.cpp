// Test for batch g1-game-world-ProjectileManager-fb6a9d-0 (part 1 of 1).
//
// Covered, on real ProjectileManager objects: the constructor state; DeSpawn's null and not-found paths (no state change);
// the main slot search (the cursor start, the forward scan, the wrap-around and the reset of a cursor past the end);
// the creation path with its name counter and pool append; the laser search and its reads of the main pool's in-use
// bytes (the start check, the forward scan, the wrap-around over the laser flags); the laser creation; the GO id test
// that rejects a foreign object; Spawn's table range check; and Flush on empty pools.
//
// Not covered: DeSpawn's found path, Flush and PreCache with live entries, and Spawn in range. Each one calls a virtual
// function on a Projectile (SetVisible, Delete through the vtable, SetInfo), and the test has no Projectile vtable.
//
// The fake projectiles are zero-filled storage that is never constructed. Only m_goId (+0xf4 of the object) is read, and
// the pool entries are set directly, as in the ObjectHandle test.
//
// Link stubs defined here, because the batch source calls them and their owners are not linked in this test:
//   ObjectManager::Spawn          records the type, the name and the two bool arguments; returns an empty handle
//   ObjectHandle::ObjectHandle    the default constructor
//   ObjectHandle::GetObject       returns the next object of g_objectQueue, or null when the queue is empty
//   ObjectBase::Delete, GameObject::Stop, Projectile::SetManager   record their calls
//   VisualFXManager ctor, dtor and RegisterFXSetToLoad, and the explicit instantiation of Singleton<VisualFXManager>
//   dword_99F764                  the ObjectManager instance, pointed at zero-filled storage
//   Arrays::ProjectileTable       members and size
//   gAssertLevel                  0 (no assert output)

#include <cstdint>
#include <cstdio>
#include <cstring>

#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/ProjectileManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

// ---- link-level definitions ----

int gAssertLevel = 0;

alignas(16) unsigned char g_managerStorage[sizeof(ObjectManager)];
static ObjectManager* g_test_dword_99F764 = reinterpret_cast<ObjectManager*>(g_managerStorage);
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

std::uint8_t* Arrays::ProjectileTable::members = nullptr;
std::uint32_t Arrays::ProjectileTable::size = 0;

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Fake projectiles. Zero-filled and never constructed.
constexpr int kFakeCount = 8;
alignas(16) unsigned char g_fakeStorage[kFakeCount][sizeof(Projectile)];

ObjectBase* FakeBase(int i) { return reinterpret_cast<ObjectBase*>(g_fakeStorage[i]); }
Projectile* Fake(int i) { return static_cast<Projectile*>(FakeBase(i)); }

void SetGoId(int i, std::int32_t goId) {
    FakeBase(i)->m_goId = static_cast<ObjectBase::GO_IDS>(goId);
}

// Stub state.
ObjectBase* g_objectQueue[kFakeCount];
int g_queueCount = 0;
int g_queueHead = 0;

int g_spawnCalls = 0;
char g_lastType[64];
char g_lastName[64];
bool g_lastActive = true;
bool g_lastSilent = false;
bool g_lastAssertFound = true;
int g_deleteCalls = 0;
int g_stopCalls = 0;
int g_setManagerCalls = 0;
ProjectileManager* g_lastManager = nullptr;
int g_registerCalls = 0;

void ResetStubs() {
    g_queueCount = 0;
    g_queueHead = 0;
    g_spawnCalls = 0;
    g_lastType[0] = '\0';
    g_lastName[0] = '\0';
    g_lastActive = true;
    g_lastSilent = false;
    g_lastAssertFound = true;
    g_deleteCalls = 0;
    g_stopCalls = 0;
    g_setManagerCalls = 0;
    g_lastManager = nullptr;
    g_registerCalls = 0;
}

void QueueObject(int fakeIndex) {
    g_objectQueue[g_queueCount++] = FakeBase(fakeIndex);
}

ProjectileManager::_Projectile MainEntry(Projectile* p, bool inUse) {
    ProjectileManager::_Projectile e{};
    e.m_projectile = p;
    e.m_inUse = inUse;
    return e;
}

ProjectileManager::_LaserTypeProjectile LaserEntry(Projectile* p, bool inUse) {
    ProjectileManager::_LaserTypeProjectile e{};
    e.m_projectile = p;
    e.m_inUse = inUse;
    return e;
}

}  // namespace

// ---- stubs for the engine functions the batch source calls ----

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}

ObjectHandle ObjectManager::Spawn(char const* type, char const* name, bool active, bool silent) {
    ++g_spawnCalls;
    std::snprintf(g_lastType, sizeof(g_lastType), "%s", type);
    std::snprintf(g_lastName, sizeof(g_lastName), "%s", name);
    g_lastActive = active;
    g_lastSilent = silent;
    return ObjectHandle();
}

ObjectBase* ObjectHandle::GetObject(bool assertFound) {
    g_lastAssertFound = assertFound;
    if (g_queueHead >= g_queueCount) {
        return nullptr;
    }
    return g_objectQueue[g_queueHead++];
}

void ObjectBase::Delete() {
    ++g_deleteCalls;
}

void GameObject::Stop() {
    ++g_stopCalls;
}

void Projectile::SetManager(ProjectileManager* manager) {
    ++g_setManagerCalls;
    g_lastManager = manager;
}

VisualFXManager::VisualFXManager() {}
VisualFXManager::~VisualFXManager() {}
// The singleton's destructor destroys its two pools, which call these out-of-line destructors.
VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() {}
VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() {}

void VisualFXManager::RegisterFXSetToLoad(int effectTableId) {
    (void)effectTableId;
    ++g_registerCalls;
}

// Singleton<VisualFXManager>::s_inst is referenced by PreCache. Its storage is defined here.
template class Singleton<VisualFXManager>;

namespace {

// ---- tests ----

void TestConstructorState() {
    ProjectileManager pm;
    EXPECT(pm.m_projectiles.empty());
    EXPECT(pm.m_laserProjectiles.empty());
    EXPECT(pm.unk_04 == nullptr && pm.unk_08 == nullptr && pm.unk_0c == nullptr);
    EXPECT(pm.m_projectileNameIndex == 0 && pm.m_projectileCursor == 0);
    EXPECT(pm.m_laserNameIndex == 0 && pm.m_laserCursor == 0);
}

void TestDeSpawnNotFoundChangesNothing() {
    ResetStubs();
    ProjectileManager pm;
    pm.m_projectiles.push_back(MainEntry(Fake(0), true));
    pm.m_projectileCursor = 0;
    pm.DeSpawn(nullptr, false);     // null: the assert path, level 0, nothing else
    pm.DeSpawn(Fake(1), false);     // not in the main pool
    pm.DeSpawn(Fake(1), true);      // not in the laser pool (empty)
    EXPECT(pm.m_projectiles.size() == 1);
    EXPECT(pm.m_projectiles[0].m_projectile == Fake(0) && pm.m_projectiles[0].m_inUse);
    EXPECT(pm.m_projectileCursor == 0);
    EXPECT(g_stopCalls == 0);
}

void TestMainCreate() {
    ResetStubs();
    ProjectileManager pm;
    SetGoId(0, 9);
    QueueObject(0);
    Projectile* p = pm._Create(true, false);
    EXPECT(p == Fake(0));
    EXPECT(g_spawnCalls == 1);
    EXPECT(std::strcmp(g_lastType, "Projectile") == 0);
    EXPECT(std::strcmp(g_lastName, "Projectile_000") == 0);
    EXPECT(!g_lastActive && g_lastSilent);
    EXPECT(!g_lastAssertFound);
    EXPECT(pm.m_projectiles.size() == 1);
    EXPECT(pm.m_projectiles[0].m_projectile == p && pm.m_projectiles[0].m_inUse);
    EXPECT(pm.m_projectileNameIndex == 1 && pm.m_projectileCursor == 0);
    EXPECT(g_setManagerCalls == 1 && g_lastManager == &pm);

    // A new entry takes the in-use flag it is given. The next call reuses the free entry from the cursor at 0.
    ResetStubs();
    SetGoId(1, 9);
    QueueObject(1);
    ProjectileManager pm2;
    pm2.m_projectileNameIndex = 12;
    Projectile* free1 = pm2._Create(false, false);
    EXPECT(free1 == Fake(1));
    EXPECT(std::strcmp(g_lastName, "Projectile_012") == 0);
    EXPECT(!pm2.m_projectiles[0].m_inUse);
    Projectile* reused = pm2._Create(true, false);
    EXPECT(reused == Fake(1));
    EXPECT(g_spawnCalls == 1);  // no second spawn
    EXPECT(pm2.m_projectiles[0].m_inUse && pm2.m_projectileCursor == 1);
}

void TestMainSearchWrapAndCursor() {
    ResetStubs();
    ProjectileManager pm;
    // Free entry 1 is found after the cursor (2) wraps over entry 0.
    pm.m_projectiles = {MainEntry(Fake(0), true), MainEntry(Fake(1), false), MainEntry(Fake(2), true)};
    pm.m_projectileCursor = 2;
    EXPECT(pm._Create(true, false) == Fake(1));
    EXPECT(g_spawnCalls == 0);
    EXPECT(pm.m_projectiles[1].m_inUse && pm.m_projectileCursor == 2);

    // Every entry in use: a new projectile is made from the cursor reset to 0 and the name counter, then appended.
    pm.m_projectiles = {MainEntry(Fake(0), true), MainEntry(Fake(1), true), MainEntry(Fake(2), true)};
    pm.m_projectileCursor = 1;
    SetGoId(3, 9);
    QueueObject(3);
    EXPECT(pm._Create(false, false) == Fake(3));
    EXPECT(g_spawnCalls == 1);
    EXPECT(std::strcmp(g_lastName, "Projectile_000") == 0);
    EXPECT(pm.m_projectiles.size() == 4 && !pm.m_projectiles[3].m_inUse);
    EXPECT(pm.m_projectileCursor == 0 && pm.m_projectileNameIndex == 1);

    // A cursor past the end is reset to 0, and entry 0 is free.
    pm.m_projectiles = {MainEntry(Fake(4), false), MainEntry(Fake(5), true)};
    pm.m_projectileCursor = 7;
    EXPECT(pm._Create(true, false) == Fake(4));
    EXPECT(pm.m_projectileCursor == 1);
    EXPECT(g_spawnCalls == 1);
}

void TestForeignObjectRejected() {
    ResetStubs();
    ProjectileManager pm;
    // A main spawn that returns a different GO id (7, not 9) makes nothing and changes no counter.
    SetGoId(6, 7);
    QueueObject(6);
    EXPECT(pm._Create(true, false) == nullptr);
    EXPECT(pm.m_projectiles.empty() && pm.m_projectileNameIndex == 0);
    EXPECT(g_setManagerCalls == 0);

    // A laser spawn needs id 10, so a projectile (9) is rejected.
    SetGoId(6, 9);
    QueueObject(6);
    EXPECT(pm._Create(true, true) == nullptr);
    EXPECT(pm.m_laserProjectiles.empty() && pm.m_laserNameIndex == 0);

    // No object at all: null, nothing changes.
    EXPECT(pm._Create(true, false) == nullptr);
    EXPECT(pm.m_projectiles.empty());
}

void TestLaserCreate() {
    ResetStubs();
    ProjectileManager pm;
    SetGoId(7, 10);
    QueueObject(7);
    Projectile* p = pm._Create(false, true);
    EXPECT(p == Fake(7));
    EXPECT(std::strcmp(g_lastType, "LaserTypeProjectile") == 0);
    EXPECT(std::strcmp(g_lastName, "LTProjectile_000") == 0);
    EXPECT(pm.m_laserProjectiles.size() == 1);
    EXPECT(pm.m_laserProjectiles[0].m_projectile == p && !pm.m_laserProjectiles[0].m_inUse);
    EXPECT(pm.m_laserNameIndex == 1 && pm.m_laserCursor == 0);
    EXPECT(pm.m_projectiles.empty());
    EXPECT(g_setManagerCalls == 1 && g_lastManager == &pm);
}

void TestLaserSearchReadsMainPool() {
    ResetStubs();
    ProjectileManager pm;

    // Main entry 0 is in use and entry 1 is free. The start check at laser cursor 0 reads main[0] (in use), and the
    // forward scan reads main[1] (free), so laser[1] is handed out. Its own in-use byte is not read.
    pm.m_projectiles = {MainEntry(Fake(0), true), MainEntry(Fake(1), false)};
    pm.m_laserProjectiles = {LaserEntry(Fake(2), true), LaserEntry(Fake(3), true)};
    pm.m_laserCursor = 0;
    EXPECT(pm._Create(true, true) == Fake(3));
    EXPECT(g_spawnCalls == 0);
    EXPECT(pm.m_laserProjectiles[1].m_inUse && pm.m_laserCursor == 2);

    // Main entry 0 is free and laser entry 0 is in use. The start check passes on the main byte, so laser[0] is handed
    // out while still in use. The original does the same; the port reproduces it.
    pm.m_projectiles = {MainEntry(Fake(0), false)};
    pm.m_laserProjectiles = {LaserEntry(Fake(2), true), LaserEntry(Fake(3), false)};
    pm.m_laserCursor = 0;
    EXPECT(pm._Create(true, true) == Fake(2));
    EXPECT(g_spawnCalls == 0);
    EXPECT(pm.m_laserCursor == 1);

    // The main pool is shorter than the laser pool. Indices past its end are not free (the partial choice), so no laser
    // entry is found and a new laser projectile is made.
    pm.m_projectiles.clear();
    pm.m_laserProjectiles = {LaserEntry(Fake(2), true), LaserEntry(Fake(3), false)};
    pm.m_laserCursor = 0;
    SetGoId(4, 10);
    QueueObject(4);
    EXPECT(pm._Create(true, true) == Fake(4));
    EXPECT(g_spawnCalls == 1);
    EXPECT(std::strcmp(g_lastName, "LTProjectile_000") == 0);
    EXPECT(pm.m_laserProjectiles.size() == 3 && pm.m_laserCursor == 0);
}

void TestLaserWrapUsesLaserFlags() {
    ResetStubs();
    ProjectileManager pm;
    // The main pool is empty, so no main index is free. Cursor 2 finds nothing forward and wraps: laser[0] is in use and
    // laser[1] is free, so laser[1] is handed out and the cursor moves to 2.
    pm.m_laserProjectiles = {LaserEntry(Fake(2), true), LaserEntry(Fake(3), false), LaserEntry(Fake(5), true)};
    pm.m_laserCursor = 2;
    EXPECT(pm._Create(true, true) == Fake(3));
    EXPECT(g_spawnCalls == 0);
    EXPECT(pm.m_laserProjectiles[1].m_inUse && pm.m_laserCursor == 2);
}

void TestSpawnRejectsOutOfRange() {
    ResetStubs();
    ProjectileManager pm;
    Arrays::ProjectileTable::size = 2;
    EXPECT(pm.Spawn(-1, nullptr, nullptr, nullptr, nullptr, nullptr, 0.0f) == nullptr);
    EXPECT(pm.Spawn(2, nullptr, nullptr, nullptr, nullptr, nullptr, true) == nullptr);
    EXPECT(g_spawnCalls == 0);
    EXPECT(pm.m_projectiles.empty() && pm.m_laserProjectiles.empty());
    Arrays::ProjectileTable::size = 0;
}

void TestFlushEmptyPools() {
    ResetStubs();
    ProjectileManager pm;
    pm.Flush();
    EXPECT(pm.m_projectiles.empty() && pm.m_laserProjectiles.empty());
    EXPECT(g_deleteCalls == 0);
}

}  // namespace

int main() {
    TestConstructorState();
    TestDeSpawnNotFoundChangesNothing();
    TestMainCreate();
    TestMainSearchWrapAndCursor();
    TestForeignObjectRejected();
    TestLaserCreate();
    TestLaserSearchReadsMainPool();
    TestLaserWrapUsesLaserFlags();
    TestSpawnRejectsOutOfRange();
    TestFlushEmptyPools();

    if (g_failures == 0) {
        std::printf("ProjectileManager tests passed\n");
        return 0;
    }
    std::printf("%d failure(s)\n", g_failures);
    return 1;
}
