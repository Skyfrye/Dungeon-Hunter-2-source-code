// Test for batch g1-game-character-SpawnGroupManager-ae66a7-0.
//
// The batch source calls functions of other batches (Application::GetDt and the ApplicationGetInstance accessor,
// Random::GetRandom, ObjectManager::Spawn, ObjectHandle, Character::InitSpawned, SpawnSpot::PlaceObject, the pydata group
// lookup) and reads the Arrays::SpawnGroups table. They are stubbed below so the executable links.
//
// Nothing is constructed except SpawnGroupManager itself. Application, Character, SpawnSpot and the pydata records are
// zero-filled storage read field by field (the same access trick as the CharAI and AISDefault tests). The SpawnSpot
// m_group string is placed into that storage. No group is zoned, so SpawnSpot::IsZonable (a virtual call) is never reached.
//
// The checks cover: the weighted entry pick (boundaries and the no-entry case), GetGroup, InsSpawn (group creation with
// timer 0, back insertion, unknown names), DelSpawn (removal of every entry of a spot, erasure of an emptied group), the
// countdown (no expiry above zero, reset to the group's interval), the spawn count with random spot choice, the spawned
// character's name, InitSpawned arguments and placement, the synced flag of every draw, the destructor, and GetInstance.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Random.hpp"
#include "dh2/SpawnGroupManager.hpp"
#include "dh2/SpawnSpot.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

namespace spawn_group_detail {
const Structs::SpawnInfo* ChooseSpawnEntry(const Structs::SpawnInfo* entries, std::uint32_t count, int roll);
}

namespace Arrays {
template <class T>
int GetMemberIDByString(const char* name);
}

// ---- globals the batch source reads or the stubs record ---------------------------------------------------------------

int gAssertLevel = 0;
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
std::uint8_t* Arrays::SpawnGroups::members = nullptr;

namespace {

// Zero-filled storage for host records whose constructors are not run.
template <class T, std::size_t N>
struct RawArray {
    alignas(T) unsigned char bytes[sizeof(T) * N];
    T* data() { return reinterpret_cast<T*>(bytes); }
};

RawArray<Structs::SpawnGroup, 3> g_groups;    // member ids 0 (goblins), 1 (orcs), 2 (unused)
RawArray<Structs::SpawnInfo, 4> g_entries;    // entries of the groups above, and the ChooseSpawnEntry fixtures
RawArray<Application, 1> g_app;
RawArray<Character, 1> g_character;

int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            ++g_failures;                                              \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
        }                                                              \
    } while (0)

// ---- stub state -------------------------------------------------------------------------------------------------------

int g_dt = 0;                                  // Application::GetDt
std::vector<unsigned int> g_rolls;             // scripted Random::GetRandom results, in call order
std::vector<int> g_rollRanges;                 // the range of each call
std::vector<bool> g_rollSynced;                // the synced flag of each call
std::vector<std::string> g_spawnNames;         // ObjectManager::Spawn name argument
std::vector<std::string> g_spawnTypes;         // ObjectManager::Spawn type argument
std::vector<bool> g_spawnFlags;                // ObjectManager::Spawn bools, both true expected
Character* g_spawnResult = nullptr;            // what ObjectHandle's conversion returns
struct InitCall {
    int charPropsId;
    float x, y, z;
};
std::vector<InitCall> g_inits;                 // Character::InitSpawned calls
struct PlaceCall {
    GameObject* object;
    const SpawnSpot* spot;
};
std::vector<PlaceCall> g_places;               // SpawnSpot::PlaceObject calls

// ---- pydata lookups ---------------------------------------------------------------------------------------------------

int IdOf(const char* name) {
    if (std::strcmp(name, "goblins") == 0) return 0;
    if (std::strcmp(name, "orcs") == 0) return 1;
    return -1;
}

// ---- helpers ----------------------------------------------------------------------------------------------------------

// A spot in zero-filled storage with its group name and position set. The destructor of m_group is run by DestroySpot.
struct SpotSlot {
    alignas(SpawnSpot) unsigned char bytes[sizeof(SpawnSpot)];
};

SpawnSpot* MakeSpot(SpotSlot& slot, const char* group, float x) {
    std::memset(slot.bytes, 0, sizeof slot.bytes);
    SpawnSpot* spot = reinterpret_cast<SpawnSpot*>(slot.bytes);
    new (&spot->m_group) std::string(group);
    spot->m_position.X = x;
    spot->m_position.Y = 0.0f;
    spot->m_position.Z = 0.0f;
    return spot;
}

void DestroySpot(SpawnSpot* spot) {
    using Str = std::string;
    spot->m_group.~Str();
}

void SetEntry(int index, int charPropsId, int weight, int count) {
    Structs::SpawnInfo* e = g_entries.data() + index;
    e->Char = charPropsId;
    e->Prob = weight;
    e->Qty = count;
}

void SetGroup(int id, int interval, int entryCount, int firstEntry) {
    Structs::SpawnGroup* g = g_groups.data() + id;
    g->ActiveSpotOnly = false;
    g->Delay = interval;
    g->SpawnsSize = static_cast<std::uint32_t>(entryCount);
    g->Spawns = g_entries.data() + firstEntry;
}

// goblins (id 0): interval 500, one entry {charProps 7, weight 4, count 2}.
// orcs (id 1): interval 800, one entry {charProps 9, weight 1, count 1}.
void ResetRecords() {
    std::memset(g_groups.bytes, 0, sizeof g_groups.bytes);
    std::memset(g_entries.bytes, 0, sizeof g_entries.bytes);
    SetEntry(0, 7, 4, 2);
    SetEntry(1, 9, 1, 1);
    SetGroup(0, 500, 1, 0);
    SetGroup(1, 800, 1, 1);
    Arrays::SpawnGroups::members = g_groups.bytes;
}

void ResetStubs() {
    g_dt = 0;
    g_rolls.clear();
    g_rollRanges.clear();
    g_rollSynced.clear();
    g_spawnNames.clear();
    g_spawnTypes.clear();
    g_spawnFlags.clear();
    g_inits.clear();
    g_places.clear();
    g_spawnResult = g_character.data();
}

std::vector<const SpawnSpot*> ListSpots(const SpawnGroupManager::GroupInfo& group) {
    std::vector<const SpawnSpot*> spots;
    for (const SpawnGroupManager::SpawnEntry* e = group.m_spotsFirst; e != nullptr; e = e->next) {
        spots.push_back(e->spot);
    }
    return spots;
}

bool SameSpots(const std::vector<const SpawnSpot*>& got, std::vector<const SpawnSpot*> want) {
    return got == want;
}

}  // namespace

// ---- stubs for symbols defined by other batches ---------------------------------------------------------------------

namespace Arrays {
template <>
int GetMemberIDByString<SpawnGroups>(const char* name) {
    return IdOf(name);
}
}  // namespace Arrays

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_app.data());
}

int Application::GetDt() {
    return g_dt;
}

unsigned int Random::GetRandom(int range, bool synced) {
    g_rollRanges.push_back(range);
    g_rollSynced.push_back(synced);
    unsigned int value = 0;
    if (!g_rolls.empty()) {
        value = g_rolls.front();
        g_rolls.erase(g_rolls.begin());
    }
    if (range <= 0) {
        return 0;
    }
    if (value >= static_cast<unsigned int>(range)) {
        value = static_cast<unsigned int>(range - 1);
    }
    return value;
}

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}

ObjectHandle::operator Character*() {
    return g_spawnResult;
}

ObjectHandle ObjectManager::Spawn(char const* type, char const* name, bool active, bool silent) {
    g_spawnTypes.emplace_back(type);
    g_spawnNames.emplace_back(name);
    g_spawnFlags.push_back(active && silent);
    return ObjectHandle();
}

void Character::InitSpawned(int charPropsId, const Point3D<float>& pos) {
    g_inits.push_back(InitCall{charPropsId, pos.X, pos.Y, pos.Z});
}

void SpawnSpot::PlaceObject(GameObject* object) {
    g_places.push_back(PlaceCall{object, this});
}

// ---- checks -----------------------------------------------------------------------------------------------------------

namespace {

void CheckChooseSpawnEntry() {
    ResetRecords();
    const Structs::SpawnInfo* entries = g_entries.data();
    // Weights 3, 0, 5 at entries 0, 1, 2: the total is 8.
    SetEntry(0, 1, 3, 1);
    SetEntry(1, 2, 0, 1);
    SetEntry(2, 3, 5, 1);
    CHECK(spawn_group_detail::ChooseSpawnEntry(entries, 3, 0) == entries + 0);
    CHECK(spawn_group_detail::ChooseSpawnEntry(entries, 3, 2) == entries + 0);
    CHECK(spawn_group_detail::ChooseSpawnEntry(entries, 3, 3) == entries + 2);
    CHECK(spawn_group_detail::ChooseSpawnEntry(entries, 3, 7) == entries + 2);
    CHECK(spawn_group_detail::ChooseSpawnEntry(entries, 3, 8) == nullptr);
    CHECK(spawn_group_detail::ChooseSpawnEntry(entries, 0, 0) == nullptr);
}

void CheckInsertGetDel() {
    ResetRecords();
    SpawnGroupManager mgr;
    SpotSlot slotA, slotB, slotC, slotO, slotX;
    SpawnSpot* a = MakeSpot(slotA, "goblins", 1.0f);
    SpawnSpot* b = MakeSpot(slotB, "goblins", 2.0f);
    SpawnSpot* c = MakeSpot(slotC, "goblins", 3.0f);
    SpawnSpot* o = MakeSpot(slotO, "orcs", 5.0f);
    SpawnSpot* x = MakeSpot(slotX, "nowhere", 9.0f);

    // Unknown names are not inserted and create no group.
    mgr.InsSpawn(x);
    CHECK(mgr.GetGroup("goblins") == mgr.m_groups.end());
    CHECK(mgr.m_groups.empty());

    mgr.InsSpawn(a);
    mgr.InsSpawn(o);
    mgr.InsSpawn(b);
    mgr.InsSpawn(c);

    auto goblins = mgr.GetGroup("goblins");
    CHECK(goblins != mgr.m_groups.end());
    CHECK(goblins->second.m_timer == 0);
    CHECK(SameSpots(ListSpots(goblins->second), {a, b, c}));
    auto orcs = mgr.GetGroup("orcs");
    CHECK(orcs != mgr.m_groups.end());
    CHECK(SameSpots(ListSpots(orcs->second), {o}));
    CHECK(mgr.GetGroup("nowhere") == mgr.m_groups.end());

    // A countdown set on an existing group survives later insertions.
    goblins->second.m_timer = 300;
    mgr.InsSpawn(a);  // inserts a again: the list then holds a twice
    CHECK(SameSpots(ListSpots(mgr.GetGroup("goblins")->second), {a, b, c, a}));
    CHECK(mgr.GetGroup("goblins")->second.m_timer == 300);

    // DelSpawn removes every entry of the spot, here both copies of a.
    mgr.DelSpawn(a);
    CHECK(SameSpots(ListSpots(mgr.GetGroup("goblins")->second), {b, c}));
    // A spot of another group leaves this group alone.
    mgr.DelSpawn(o);
    CHECK(SameSpots(ListSpots(mgr.GetGroup("goblins")->second), {b, c}));
    CHECK(mgr.GetGroup("orcs") == mgr.m_groups.end());
    // A spot that is not in any group changes nothing.
    mgr.DelSpawn(x);
    CHECK(mgr.m_groups.size() == 1);

    mgr.DelSpawn(b);
    CHECK(mgr.GetGroup("goblins") != mgr.m_groups.end());
    mgr.DelSpawn(c);
    // The group is erased once its list is empty.
    CHECK(mgr.GetGroup("goblins") == mgr.m_groups.end());
    CHECK(mgr.m_groups.empty());

    DestroySpot(x);
    DestroySpot(o);
    DestroySpot(c);
    DestroySpot(b);
    DestroySpot(a);
}

void CheckDestructorAndInstance() {
    ResetRecords();
    SpotSlot slotA, slotB;
    SpawnSpot* a = MakeSpot(slotA, "goblins", 1.0f);
    SpawnSpot* b = MakeSpot(slotB, "orcs", 2.0f);
    {
        SpawnGroupManager* heap = new SpawnGroupManager();
        heap->InsSpawn(a);
        heap->InsSpawn(b);
        heap->InsSpawn(a);
        delete heap;  // frees the entries of both groups
    }
    CHECK(SpawnGroupManager::GetInstance() != nullptr);
    CHECK(SpawnGroupManager::GetInstance() == SpawnGroupManager::GetInstance());
    DestroySpot(b);
    DestroySpot(a);
}

void CheckUpdate() {
    ResetRecords();
    ResetStubs();
    dword_99F764 = reinterpret_cast<ObjectManager*>(g_app.data());

    SpawnGroupManager mgr;
    SpotSlot slotA, slotB, slotO;
    SpawnSpot* a = MakeSpot(slotA, "goblins", 1.0f);
    SpawnSpot* b = MakeSpot(slotB, "goblins", 2.0f);
    SpawnSpot* o = MakeSpot(slotO, "orcs", 5.0f);
    mgr.InsSpawn(a);
    mgr.InsSpawn(b);
    mgr.InsSpawn(o);
    mgr.GetGroup("goblins")->second.m_timer = 300;

    // Update 1, dt 100. goblins counts 300 down to 200 and does nothing. orcs counts 0 down to -100 and expires: its
    // countdown becomes the interval 800. One draw of the weight total (1) gives entry 0. Its count is 1, so one spawn
    // draws one candidate (the only spot, o), which is placed and then removed.
    g_dt = 100;
    g_rolls = {0, 0};
    mgr.update(0.0);
    CHECK(mgr.GetGroup("goblins")->second.m_timer == 200);
    CHECK(mgr.GetGroup("orcs")->second.m_timer == 800);
    CHECK(g_rollRanges == (std::vector<int>{1, 1}));
    CHECK(g_spawnNames == (std::vector<std::string>{"Spawn_00001"}));
    CHECK(g_spawnTypes == (std::vector<std::string>{"Character"}));
    CHECK(g_spawnFlags == (std::vector<bool>{true}));
    CHECK(g_inits.size() == 1 && g_inits[0].charPropsId == 9 && g_inits[0].x == 5.0f);
    CHECK(g_places.size() == 1 && g_places[0].spot == o && g_places[0].object == static_cast<GameObject*>(g_spawnResult));

    // Update 2, dt 200. goblins counts 200 down to 0 and expires: interval 500. Its total weight 4 gives a roll of 1
    // (entry 0, count 2). Two spawns draw from the candidates [a, b]: roll 1 picks b, then roll 0 picks a.
    // orcs counts 800 down to 600 and does nothing.
    g_dt = 200;
    g_rollRanges.clear();
    g_rollSynced.clear();
    g_places.clear();
    g_inits.clear();
    g_rolls = {1, 1, 0};
    mgr.update(0.0);
    CHECK(mgr.GetGroup("goblins")->second.m_timer == 500);
    CHECK(mgr.GetGroup("orcs")->second.m_timer == 600);
    CHECK(g_rollRanges == (std::vector<int>{4, 2, 1}));
    CHECK(g_spawnNames.size() == 3 && g_spawnNames[1] == "Spawn_00002" && g_spawnNames[2] == "Spawn_00003");
    CHECK(g_inits.size() == 2 && g_inits[0].charPropsId == 7 && g_inits[0].x == 2.0f && g_inits[1].x == 1.0f);
    CHECK(g_places.size() == 2 && g_places[0].spot == b && g_places[1].spot == a);

    // Every draw uses the ordinary stream.
    for (bool synced : g_rollSynced) {
        CHECK(!synced);
    }

    // Update 3, dt 600. goblins expires with roll 3 (entry 0) and draws a then b. orcs expires at exactly zero (600 - 600)
    // and draws o.
    g_dt = 600;
    g_rollRanges.clear();
    g_rollSynced.clear();
    g_places.clear();
    g_inits.clear();
    g_rolls = {3, 0, 0, 0, 0};
    mgr.update(0.0);
    CHECK(mgr.GetGroup("goblins")->second.m_timer == 500);
    CHECK(mgr.GetGroup("orcs")->second.m_timer == 800);
    CHECK(g_spawnNames.size() == 6 && g_spawnNames[5] == "Spawn_00006");
    CHECK(g_places.size() == 3 && g_places[0].spot == a && g_places[1].spot == b && g_places[2].spot == o);

    // The group lists were not changed by the spawns.
    CHECK(SameSpots(ListSpots(mgr.GetGroup("goblins")->second), {a, b}));

    // A group with no entries expires, takes its interval and draws nothing. Here goblins loses its entries (count 0)
    // and orcs expires too (800 down to -200), so orcs alone draws: total 1 gives roll 0, then the pick of its one spot.
    ResetRecords();
    g_groups.data()[0].SpawnsSize = 0;
    g_dt = 1000;
    g_rolls = {0, 0};
    g_rollRanges.clear();
    g_places.clear();
    g_spawnNames.clear();
    g_inits.clear();
    mgr.update(0.0);
    CHECK(mgr.GetGroup("goblins")->second.m_timer == 500);
    CHECK(g_rollRanges == (std::vector<int>{1, 1}));
    CHECK(g_spawnNames == (std::vector<std::string>{"Spawn_00007"}));
    CHECK(g_places.size() == 1 && g_places[0].spot == o);

    DestroySpot(o);
    DestroySpot(b);
    DestroySpot(a);
}

}  // namespace

int main() {
    CheckChooseSpawnEntry();
    CheckInsertGetDel();
    CheckDestructorAndInstance();
    CheckUpdate();

    if (g_failures == 0) {
        std::printf("SpawnGroupManager checks passed\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
