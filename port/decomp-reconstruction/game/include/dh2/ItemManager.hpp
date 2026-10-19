// ItemManager: the pool of item objects that drop and spawn into the world. It keeps one CategoryInfo per
// Arrays::ItemAudioVisualTable row. Each category holds five ObjectInfo slots; Spawn hands them out round-robin
// (DeSpawning the occupant of a slot that is still in use) and DeSpawn returns one. PreCache builds the pool
// (one ItemObject per slot, then each is DeSpawned) and Flush empties the category vector.
// Original 32-bit size 0x10 (16), the vptr and the category vector (the constructor writes 0x00 .. 0x0f).
// Vtable (_ZTV11ItemManager, 16 bytes): slots 0/1 are the destructors and there are no other virtuals.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x3eabcc C2 / 0x3eac00 C1, dtors 0x3ebbb4 D2 /
// 0x3ebb58 D1 / 0x3ebb98 D0).
#pragma once

#include <cstdint>
#include <vector>

class Character;
class GameObject;
class ItemInventory;
class ItemObject;

template <typename T> struct Point3D;

class ItemManager {
public:
    // One pooled item object and whether Spawn has handed it out. Original 32-bit size 0x08 (8).
    struct ObjectInfo {
        ItemObject* m_object;                                           // +0x00 pooled item, null until PreCache fills the slot
        bool m_inUse;                                                   // +0x04 set by Spawn, cleared by DeSpawn
    };

    // One category, one per Arrays::ItemAudioVisualTable row. Original 32-bit size 0x10 (16).
    struct CategoryInfo {
        std::vector<ObjectInfo> m_objects;                              // +0x00 the five slots (begin, end, end of storage: 12 bytes in the original)
        int m_next;                                                     // +0x0c index of the next slot Spawn uses; wraps to 0 past 4
    };

    ItemManager();                                                      // 0x3eabcc (C2), 0x3eac00 (C1)
    virtual ~ItemManager();                                             // 0x3ebbb4 (D2), 0x3ebb58 (D1), 0x3ebb98 (D0)

    void DeSpawn(ItemObject* item);                                     // 0x3eac34 frees the slot that holds item, empties its inventory and detaches its physics
    ItemObject* Spawn(ItemInventory& inventory, unsigned int itemIndex, const GameObject* dropper,
                      const Point3D<float>& position, const Point3D<float>& destination,
                      const Character* owner);                          // 0x3eacd0 places a pooled item object for the inventory item at itemIndex
    void Flush();                                                       // 0x3eb6bc empties m_categories
    int PreCache();                                                     // 0x3eb6e4 builds one category per row, fills each slot and DeSpawns it; returns the category count (int in the binary)

    // +0x00 vptr (not declared: the vtable pointer is the first word of every virtual class)
    std::vector<CategoryInfo> m_categories;                             // +0x04 one entry per Arrays::ItemAudioVisualTable row (begin, end, end of storage: 12 bytes in the original)
};
