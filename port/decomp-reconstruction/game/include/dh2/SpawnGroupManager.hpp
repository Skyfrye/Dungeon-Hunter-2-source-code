// SpawnGroupManager: singleton that holds the spawn groups of the loaded level. Groups are keyed by
// their Arrays::SpawnGroups member id (GetGroup takes the group name). Each group keeps the SpawnSpot
// entries it can spawn from and a countdown that update() ticks once per frame. Level::Update calls
// GetInstance() and then update(0.0) at 0x3f84d8.
// Original 32-bit size 0x18 (24): vptr plus the 0x14-byte STLport rb-tree at +0x04. Inferred from the
// layout, not from an allocation; the object is the function-local static sgm inside GetInstance.
// Source file, from the assert strings: Game/Objects/Spawns/SpawnGroupManager.cpp.
// Vtable (16 bytes): offset-to-top, typeinfo, then slots 0 and 1, both destructors.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3e8b3c, dtor 0x3e8f24).
#pragma once

#include <map>

class SpawnSpot;

class SpawnGroupManager {
public:
    // One entry of a group's spot list: STLport _List_node<SpawnSpot*>, 12 bytes at 32-bit.
    struct SpawnEntry {
        SpawnEntry* next;                                                // +0x00
        SpawnEntry* prev;                                                // +0x04
        SpawnSpot* spot;                                                 // +0x08
    };

    // Value of m_groups, 12 bytes at 32-bit. The first two words are the group's list links. The original closes the
    // list with a sentinel inside these two words (an empty list points both links back at this GroupInfo). The port
    // ends the list with nullptr instead, so an empty list has both links null. Entry order, back insertion and
    // removal are the same in both forms.
    struct GroupInfo {
        SpawnEntry* m_spotsFirst;                                        // +0x00 first entry (sentinel next), null when empty
        SpawnEntry* m_spotsLast;                                         // +0x04 last entry (sentinel prev), null when empty
        // +0x08 countdown in ms, ticked by update(). On expiry it is reset to the group's interval
        // (Arrays::SpawnGroups member +0x08), or to 1000 when no spot in the group is ready.
        int m_timer;                                                     // +0x08
    };

    SpawnGroupManager();                                                 // 0x3e8b3c (C2), 0x3e8b84 (C1)
    virtual ~SpawnGroupManager();                                        // slot 0 (D1) 0x3e8f24, slot 1 (D0) 0x3e8f84, D2 0x3e8fa0

    static SpawnGroupManager* GetInstance();                             // 0x3ea730 function-local static, atexit dtor
    // Returns m_groups.end() when name is not a spawn group. The original returns the tree iterator through sret.
    std::map<int, GroupInfo>::iterator GetGroup(const char* name);       // 0x3e8c40
    void InsSpawn(SpawnSpot* spot);                                      // 0x3ea098
    void DelSpawn(SpawnSpot* spot);                                      // 0x3e907c
    // The argument is never read: the countdowns use Application::GetDt(). Level::Update passes 0.0.
    void update(double dt);                                              // 0x3e9238

    // +0x00 vptr
    // m_groups: STLport rb-tree header at +0x04 (0x14 bytes at 32-bit): +0x04 header color,
    // +0x08 root, +0x0c leftmost, +0x10 rightmost, +0x14 node count. Keys are SpawnGroups member ids.
    std::map<int, GroupInfo> m_groups;                                   // +0x04
};
