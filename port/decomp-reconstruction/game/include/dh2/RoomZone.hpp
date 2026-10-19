// RoomZone: a Zone for one room of the level. It keeps a circular list of the GameObjects inside it. Its
// AABB is the absolute box in GameObject +0x12c..+0x143. Update tests that box against the six planes of the
// level camera: when it lies fully beyond one plane the room's objects are deactivated, otherwise they are
// activated. Visited state lives on a room record that is not owned. Original 32-bit size not recovered:
// the list head ends at +0x39f (min 0x3a0).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x396558 / 0x3965c4).
#pragma once

#include <cstdint>
#include <list>

#include "dh2/Zone.hpp"

class Module;

class RoomZone : public Zone {
public:
    explicit RoomZone(ObjectBase::GO_IDS id);                           // 0x396558 (C1) / 0x3965c4 (C2): Zone(id, false, true)
    ~RoomZone() override;                                               // 0x396828 (D1), 0x3968b0 (D0), 0x3967a0 (D2)

    // Overrides of Zone / GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 0x18: 0x396554, thunk to Zone::DeclareProperties
    void InitPost() override;                                           // slot 0x1c: 0x396548, thunk to Zone::InitPost
    void Update() override;                                             // slot 0x2c: 0x396e9c
    void Draw() const override;                                         // slot 0x30: 0x396544 empty
    bool IsZonable() const override;                                    // slot 0xc4: 0x3964a0 returns false

    // ---- non-virtual ----
    void Activate();                                                    // 0x396d24 ZoneEntered on each listed object, then ObjectManager::AddRoomObjects(&m_objects)
    void DeActivate();                                                  // 0x396918 ZoneExited on each listed object, then ObjectManager::DelRoomObjects(&m_objects)
    void AddObject(GameObject* object);                                 // 0x39672c appends a node unless the object is already listed
    void RemoveObject(GameObject* object);                              // 0x3968cc unlinks the object's node and frees it
    bool AddInitialObject(GameObject* object);                          // 0x396a90 IsZonable (slot 0xc4), then the object's position
                                                                        // X/Y (+0x160/+0x164) must lie inside the X/Y box (inclusive). It
                                                                        // leaves its previous room, sets its room pointer (+0x2f4), calls
                                                                        // ZoneEntered and appends it to this list. Returns true when accepted
    void InitObjectList();                                              // 0x396c44 once (guarded by m_objectListInitialized): walks
                                                                        // ObjectManager's object map (+0x0c) and calls AddInitialObject on each
    bool HasBeenVisited() const;                                        // 0x3964a8 Module::m_visited of the Module at +0x38c, true when none
    bool HasInside(const Point3D<float>& position) const;               // 0x3964cc position X/Y inside the AABB (inclusive)
    void SetVisited(bool visited);                                      // 0x3964bc writes Module::m_visited of the Module at +0x38c, if set

    // Zone occupies +0x00 .. +0x387.
    bool unk_388;                                                       // +0x388 1 from the ctor, cleared at the end of Update. While set,
                                                                        // Update runs the Activate or DeActivate transition even when m_active
                                                                        // already matches
    bool m_active;                                                      // +0x389 1 from the ctor. Activate sets it, Update clears it on
                                                                        // deactivation
    std::uint8_t pad_38a[2];                                            // +0x38a
    Module* unk_38c;                                                    // +0x38c the owning Module, a back pointer that Module::InitPost sets
                                                                        // (Module-b8ff02-0.cpp). Module::m_visited (+0x3fc) is the visited flag.
                                                                        // Null means visited. The original ctor does not write it
    bool m_objectListInitialized;                                       // +0x390 set by InitObjectList, which then does nothing
    std::uint8_t pad_391[3];                                            // +0x391
    std::list<GameObject*> m_objects;                                   // +0x394 circular list head, 8 bytes in the original (next at +0x394,
                                                                        // prev at +0x398). Each 12-byte node holds the GameObject at +0x08.
                                                                        // ObjectManager::AddRoomObjects and DelRoomObjects take this list
};
