// Test for the ItemManager batch (game-items-save/src/g1-game-items-save-ItemManager-04b824-0.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// Covers the constructor and Flush, the early exits of DeSpawn, the Spawn range checks and the round-robin slot index
// (m_next wraps after the fifth slot), and PreCache's pool build (15 spawns named ItemObject_<category>_<slot>, five
// slots per category, the return value). The engine is a stand-in here: ObjectManager::Spawn and ObjectHandle::GetObject
// return scripted values, the GameObject, ItemObject, ItemInventory and ItemInstance methods the source calls are empty
// stubs, and the item rows are zeroed storage. The checks never reach a virtual call on an item object: DeSpawn is only
// given objects that no slot holds, and Spawn only reaches a slot whose object is null. Item objects are never constructed.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

#include "dh2/GameObject.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ItemManager.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"

// Engine globals the batch reads. The real definitions are in other translation units, which this test does not link.
int gAssertLevel = 0;
std::uint32_t Arrays::ItemAudioVisualTable::size = 3;
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

namespace {

struct SpawnCall {
    std::string type;
    std::string name;
    bool active;
    bool silent;
};

std::vector<SpawnCall> g_spawnCalls;  // every ObjectManager::Spawn the pool build makes
int g_getObjectCalls = 0;             // every ObjectHandle::GetObject
int g_numItems = 0;                   // what ItemInventory::GetNumItems reports
int g_itemsFetched = 0;               // every ItemInventory::GetItem

alignas(16) unsigned char g_inventoryStorage[sizeof(ItemInventory)];
alignas(16) unsigned char g_instanceStorage[sizeof(ItemInstance)];
alignas(16) unsigned char g_rowStorage[sizeof(Structs::Item)];
alignas(16) unsigned char g_itemStorage[4][sizeof(ItemObject)];
alignas(16) unsigned char g_positionStorage[sizeof(Point3D<float>)];
const Structs::Item* g_row = nullptr;  // what ItemInstance::GetItem returns

ItemInventory& fakeInventory() {
    return *reinterpret_cast<ItemInventory*>(g_inventoryStorage);
}

ItemInstance* fakeInstance() {
    return reinterpret_cast<ItemInstance*>(g_instanceStorage);
}

// The item row with the audio-visual category at +0x54 (Structs::Item::m_w21).
void setRowCategory(int category) {
    Structs::Item* row = reinterpret_cast<Structs::Item*>(g_rowStorage);
    row->AudioVisualID = category;
    g_row = row;
}

// An item object that is never constructed: only its m_audioVisualIndex (+0x3ac) is set.
ItemObject* fakeItem(int k, int audioVisualIndex) {
    ItemObject* item = reinterpret_cast<ItemObject*>(g_itemStorage[k]);
    item->m_audioVisualIndex = static_cast<std::int16_t>(audioVisualIndex);
    return item;
}

const Point3D<float>& fakePosition() {
    return *reinterpret_cast<const Point3D<float>*>(g_positionStorage);
}

int g_failures = 0;

#define CHECK(cond)                                                          \
    do {                                                                     \
        if (!(cond)) {                                                       \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                    \
        }                                                                    \
    } while (0)

}  // namespace

// ---- Stand-ins for the engine methods the batch calls ----

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0xffffffffu) {}

ObjectBase* ObjectHandle::GetObject(bool /*assertFound*/) {
    ++g_getObjectCalls;
    return nullptr;  // no spawned object resolves, so every pool slot stays empty
}

ObjectHandle ObjectManager::Spawn(char const* type, char const* name, bool active, bool silent) {
    g_spawnCalls.push_back(SpawnCall{type, name, active, silent});
    return ObjectHandle();
}

void GameObject::SetPosition(const Point3D<float>& /*pos*/, bool /*setDestination*/) {}
void GameObject::SetDestination(const Point3D<float>& /*dest*/) {}
void GameObject::SetPhysicalObject(PhysicalObject* /*physical*/, bool /*pin*/) {}
void ItemObject::InitAgain(ItemInventory& /*source*/, unsigned int /*index*/, const Character* /*receiver*/) {}
void ItemObject::InitOnce(int /*audioVisualIndex*/) {}
int ItemInventory::GetNumItems() const { return g_numItems; }
ItemInstance* ItemInventory::GetItem(unsigned int /*idx*/) {
    ++g_itemsFetched;
    return fakeInstance();
}
void ItemInventory::RemoveAllItems(bool /*all*/) {}
const Structs::Item* ItemInstance::GetItem() const { return g_row; }

// ---- Checks ----

static void checkConstructorAndFlush() {
    ItemManager manager;
    CHECK(manager.m_categories.empty());
    manager.m_categories.push_back(ItemManager::CategoryInfo{});
    manager.m_categories.back().m_objects.push_back(ItemManager::ObjectInfo{});
    manager.Flush();
    CHECK(manager.m_categories.empty());
}

static void checkDeSpawnEarlyExits() {
    ItemManager manager;
    manager.m_categories.push_back(ItemManager::CategoryInfo{});
    manager.m_categories[0].m_objects.assign(5, ItemManager::ObjectInfo{});

    manager.DeSpawn(nullptr);  // no item: nothing to do
    CHECK(!manager.m_categories[0].m_objects[0].m_inUse);

    // An item whose category is out of range, or negative, returns before any slot is read.
    manager.DeSpawn(fakeItem(0, -1));
    manager.DeSpawn(fakeItem(1, 3));

    // An item that no slot of its category holds returns with the slots unchanged.
    manager.m_categories[0].m_objects[2].m_inUse = true;
    manager.DeSpawn(fakeItem(2, 0));
    CHECK(manager.m_categories[0].m_objects[2].m_inUse);
    CHECK(manager.m_categories[0].m_objects[2].m_object == nullptr);
}

static void checkSpawnRangeChecks() {
    ItemManager manager;
    manager.m_categories.push_back(ItemManager::CategoryInfo{});
    manager.m_categories.push_back(ItemManager::CategoryInfo{});
    manager.m_categories[0].m_objects.assign(5, ItemManager::ObjectInfo{});
    manager.m_categories[1].m_objects.assign(5, ItemManager::ObjectInfo{});
    const Point3D<float>& pos = fakePosition();

    // The index is past the inventory's end: returns before the item is fetched.
    g_numItems = 2;
    g_itemsFetched = 0;
    CHECK(manager.Spawn(fakeInventory(), 2, nullptr, pos, pos, nullptr) == nullptr);
    CHECK(g_itemsFetched == 0);

    // The item's category (7) is past the pool's end: returns, the round-robin indexes do not move.
    g_numItems = 1;
    setRowCategory(7);
    CHECK(manager.Spawn(fakeInventory(), 0, nullptr, pos, pos, nullptr) == nullptr);
    CHECK(g_itemsFetched == 1);
    CHECK(manager.m_categories[0].m_next == 0);
    CHECK(manager.m_categories[1].m_next == 0);

    // A negative category returns the same way.
    setRowCategory(-1);
    CHECK(manager.Spawn(fakeInventory(), 0, nullptr, pos, pos, nullptr) == nullptr);
    CHECK(manager.m_categories[0].m_next == 0);
}

static void checkSpawnRoundRobin() {
    ItemManager manager;
    manager.m_categories.push_back(ItemManager::CategoryInfo{});
    manager.m_categories[0].m_objects.assign(5, ItemManager::ObjectInfo{});  // five empty slots
    g_numItems = 1;
    setRowCategory(0);
    const Point3D<float>& pos = fakePosition();

    // Each call takes the next slot: the index runs 0..4 and wraps to 0 after the fifth. Empty slots return null.
    const int expectedNext[6] = {1, 2, 3, 4, 0, 1};
    for (int k = 0; k != 6; ++k) {
        CHECK(manager.Spawn(fakeInventory(), 0, nullptr, pos, pos, nullptr) == nullptr);
        CHECK(manager.m_categories[0].m_next == expectedNext[k]);
    }
}

static void checkPreCacheBuildsPool() {
    Arrays::ItemAudioVisualTable::size = 0;
    {
        ItemManager empty;
        CHECK(empty.PreCache() == 0);
        CHECK(empty.m_categories.empty());
    }

    Arrays::ItemAudioVisualTable::size = 3;
    ItemManager manager;
    g_spawnCalls.clear();
    g_getObjectCalls = 0;
    const int result = manager.PreCache();

    CHECK(result == 3);
    CHECK(manager.m_categories.size() == 3);
    for (std::size_t i = 0; i != manager.m_categories.size(); ++i) {
        const ItemManager::CategoryInfo& category = manager.m_categories[i];
        CHECK(category.m_objects.size() == 5);
        CHECK(category.m_next == 0);
        for (const ItemManager::ObjectInfo& slot : category.m_objects) {
            CHECK(slot.m_object == nullptr);
            CHECK(!slot.m_inUse);
        }
    }

    CHECK(g_spawnCalls.size() == 15);
    CHECK(g_getObjectCalls == 15);
    if (g_spawnCalls.size() == 15) {
        CHECK(g_spawnCalls[0].name == "ItemObject_00_00");
        CHECK(g_spawnCalls[4].name == "ItemObject_00_04");
        CHECK(g_spawnCalls[5].name == "ItemObject_01_00");
        CHECK(g_spawnCalls[14].name == "ItemObject_02_04");
        for (const SpawnCall& call : g_spawnCalls) {
            CHECK(call.type == "Item");
            CHECK(!call.active);
            CHECK(call.silent);
        }
    }
}

int main() {
    checkConstructorAndFlush();
    checkDeSpawnEarlyExits();
    checkSpawnRangeChecks();
    checkSpawnRoundRobin();
    checkPreCacheBuildsPool();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d ItemManager check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("ItemManager tests passed\n");
    return 0;
}
