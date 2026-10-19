// Batch g1-game-items-save-ItemManager-04b824-0 (owner ItemManager, the whole class: 9 functions, 6 distinct bodies).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Layouts come from dh2/ItemManager.hpp,
// dh2/ItemObject.hpp (m_audioVisualIndex at +0x3ac), dh2/ObjectBase.hpp (SetVisible slot +0x40, unk_85 at +0x85,
// m_goId at +0xf4), dh2/GameObject.hpp, dh2/ObjectHandle.hpp, dh2/ObjectManager.hpp and the Structs::Item row
// (pydata-accessors/w7_structs_2.hpp, m_w21 at +0x54).
//
// Shared conventions in this file:
//  * Asserts follow the other batches: gAssertLevel 2 aborts (the original writes to address 0), 1 prints the ASSERT line.
//  * A category holds five ObjectInfo slots (kSlotsPerCategory). m_next is the round-robin index Spawn advances.
//  * The original's virtual call through the vtable at +0x40 is ObjectBase::SetVisible(bool): DeSpawn passes false,
//    Spawn passes true.
//  * GO id 3 is the item type PreCache checks on the object ObjectManager returns (ObjectBase::m_goId, +0xf4).

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ItemManager.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"  // Arrays::ItemAudioVisualTable
#include "pydata-accessors/w7_structs_2.hpp"  // Structs::Item

namespace {
// The original's hard-coded slot count: PreCache creates five slots per category, DeSpawn and Spawn scan five.
constexpr int kSlotsPerCategory = 5;
// The item GO id compared with ObjectBase::m_goId in PreCache. The GO_IDS enum in ObjectBase.hpp names only GO_DOOR.
constexpr int kGoIdItem = 3;
}  // namespace

// 0x3eabcc ItemManager::ItemManager() (C2). C1 at 0x3eac00 has the same body. The vptr store and the vector's
// zeroed begin, end and storage end (+0x04 .. +0x0c) are what the compiler emits for this constructor.
ItemManager::ItemManager() {}

// 0x3ebb58 ItemManager::~ItemManager() (D1). D2 at 0x3ebbb4 has the same body. The original sets the vptr, calls
// Flush and then destroys m_categories; the compiler destroys the member after the body.
ItemManager::~ItemManager() {
    Flush();
}

// 0x3ebb98 ItemManager::~ItemManager() (D0, deleting destructor): compiler generated (~ItemManager() then CustomFree(this)).
// No body is written; the C++ delete expression produces it.

// 0x3eac34 ItemManager::DeSpawn(ItemObject*)
void ItemManager::DeSpawn(ItemObject* item) {
    if (item == nullptr) {
        return;
    }
    const int category = item->m_audioVisualIndex;  // +0x3ac, the category the object was initialised for
    if (category < 0 || category >= static_cast<int>(m_categories.size())) {
        return;
    }
    std::vector<ObjectInfo>& slots = m_categories[category].m_objects;
    const std::size_t scanned = slots.size() < static_cast<std::size_t>(kSlotsPerCategory)
                                    ? slots.size()
                                    : static_cast<std::size_t>(kSlotsPerCategory);
    for (std::size_t k = 0; k != scanned; ++k) {
        if (slots[k].m_object != item) {
            continue;
        }
        slots[k].m_inUse = false;
        item->SetVisible(false);                     // vtable +0x40 with 0
        item->ItemInventory::RemoveAllItems(true);   // the ItemInventory subobject at +0x374 (ItemObject)
        item->SetPhysicalObject(nullptr, false);
        item->unk_85 = 0;                            // ObjectBase +0x85, updating flag
        return;
    }
    // Not in this category's slots: nothing else changes.
}

// 0x3eacd0 ItemManager::Spawn(ItemInventory&, unsigned int, GameObject const*, Point3D<float> const&, Point3D<float> const&, Character const*)
ItemObject* ItemManager::Spawn(ItemInventory& inventory, unsigned int itemIndex, const GameObject* dropper,
                               const Point3D<float>& position, const Point3D<float>& destination,
                               const Character* owner) {
    if (dropper == nullptr) {
        if (gAssertLevel == 2) {
            std::abort();  // the original writes to address 0 here to force a crash
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "dropper",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Items\\ItemManager.cpp", 102);
        }
    }
    // The dropper is read only by the assert above.

    if (static_cast<unsigned int>(inventory.GetNumItems()) <= itemIndex) {
        return nullptr;
    }
    ItemInstance* instance = inventory.GetItem(itemIndex);
    const int category = instance->GetItem()->AudioVisualID;  // Structs::Item +0x54, the Arrays::ItemAudioVisualTable row
    if (category < 0 || category >= static_cast<int>(m_categories.size())) {
        return nullptr;
    }

    CategoryInfo& pool = m_categories[category];
    const int slotIndex = pool.m_next;  // +0x0c, the slot this call uses
    pool.m_next = slotIndex + 1;
    if (static_cast<unsigned int>(slotIndex + 1) > static_cast<unsigned int>(kSlotsPerCategory - 1)) {
        pool.m_next = 0;
    }

    ObjectInfo& slot = pool.m_objects[slotIndex];
    if (!slot.m_inUse) {
        if (slot.m_object == nullptr) {
            return nullptr;
        }
    } else {
        DeSpawn(slot.m_object);  // free the occupant before reusing the slot
    }

    ItemObject* item = slot.m_object;
    item->SetPosition(position, true);           // GameObject::SetPosition(position, setDestination = 1)
    item->SetDestination(destination);           // GameObject::SetDestination
    item->InitAgain(inventory, itemIndex, owner);  // ItemObject::InitAgain(source, index, receiver)
    item->SetVisible(true);                      // vtable +0x40 with 1
    item->unk_85 = 1;                            // ObjectBase +0x85, updating flag
    slot.m_inUse = true;
    return item;
}

// 0x3eb6bc ItemManager::Flush(void)
void ItemManager::Flush() {
    // The original erases the whole range [begin, end) through std::vector::_M_erase. clear() does the same.
    m_categories.clear();
}

// 0x3eb6e4 ItemManager::PreCache(void)
// Builds one category per Arrays::ItemAudioVisualTable row. Each category gets five slots, every slot is filled with
// the item object ObjectManager spawns for it ("ItemObject_<category>_<slot>", type "Item") and initialised with
// ItemObject::InitOnce(category). Then every slot is DeSpawned. The return value is the number of categories.
int ItemManager::PreCache() {
    const int count = static_cast<int>(Arrays::ItemAudioVisualTable::size);
    ObjectHandle handle;  // the original's local ObjectHandle (v37), assigned from each spawn result
    m_categories.reserve(static_cast<std::size_t>(count));
    int result = count;
    for (int i = 0; i != count; ++i) {
        m_categories.push_back(CategoryInfo{});
        m_categories[i].m_objects.reserve(static_cast<std::size_t>(kSlotsPerCategory));
        for (int slot = 0; slot != kSlotsPerCategory; ++slot) {
            m_categories[i].m_objects.push_back(ObjectInfo{});  // empty slot: no object, not in use
            char name[20];
            std::snprintf(name, sizeof(name), "ItemObject_%02u_%02u", static_cast<unsigned int>(i),
                          static_cast<unsigned int>(slot));
            handle = dword_99F764->Spawn("Item", name, false, true);
            ObjectBase* object = handle.GetObject(false);
            if (object != nullptr) {
                // The original stores the object only when its GO id is the item id; otherwise it stores null
                // and still calls InitOnce on it, which dereferences null. This port skips that call.
                ItemObject* item = (static_cast<int>(object->m_goId) == kGoIdItem) ? static_cast<ItemObject*>(object)
                                                                                     : nullptr;
                m_categories[i].m_objects[slot].m_object = item;
                if (item != nullptr) {
                    item->InitOnce(i);
                }
            }
        }
        for (int slot = 0; slot != kSlotsPerCategory; ++slot) {
            DeSpawn(m_categories[i].m_objects[slot].m_object);
        }
        result = i + 1;
    }
    return result;
}
