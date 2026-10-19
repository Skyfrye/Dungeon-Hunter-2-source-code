// LightPoint: a LightBase that follows another object. The attachedTo name is resolved to a handle in
// RefreshAttachment, and Update places the light at that object plus attachedOffset. Lights named
// "_prim_PlayerLight_*" attach to PlayerCharacter_0 and take their tweaker from the local player.
// Original 32-bit size 0x1b4 (436), the operator new size in the factory. Vtable (148 bytes): LightBase slots.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x40be5c, Update 0x40ba0c, RefreshAttachment 0x40bac0).
#pragma once

#include <cstdint>
#include <string>

#include "core-platform/deps/game_types.hpp"  // Point3D
#include "dh2/LightBase.hpp"
#include "dh2/ObjectHandle.hpp"

class LightPoint : public LightBase {
public:
    LightPoint();                                                       // 0x40bdd8 / 0x40be5c
    ~LightPoint() override;                                             // 0x40bd1c (D1), 0x40bd70 (D0), 0x40bd8c (D2)

    // ---- virtual, vtable slot order (LightBase's slots are inherited unless listed here) ----
    void DeclareProperties() override;                                  // +0x18 0x40bfc4 "attachedTo", "attachedOffset"
    void InitPost() override;                                           // +0x1c 0x40bcdc clears the two flags, then LightBase::InitPost
    void Update() override;                                             // +0x2c 0x40ba0c LightBase::Update, then sets the position: attached object + offset, or the offset alone
    void RefreshAttachment() override;                                  // +0x58 0x40bac0 resolves m_attachedTo to a handle; a player light takes PlayerCharacter_0; adds the light to the set once

    // ---- non-virtual ----
    // Reads the character of the light's name that follows the prefix. 'S' gives index 0 and sub 4, tag '0'.
    // A digit d gives index and sub d - '0' and tag d. Always returns true.
    bool GetIdsFromName(const char* prefix, int& index, int& sub, char& tag);  // 0x40b7cc
    // Copies the light node's attenuation and colors into the tweaker table entry (set, index), index 0..4.
    // Does nothing while m_irrLight is null.
    void AssignTweaker(int set, int index);                             // 0x40b828

    // LightBase occupies +0x00 .. +0x17f.
    std::string m_attachedTo;                                           // +0x180 property "attachedTo", 24 bytes; "_prim_PlayerLight_" names resolve to PlayerCharacter_0
    ObjectHandle m_attachedHandle;                                      // +0x198 handle of the object named by m_attachedTo, refreshed by RefreshAttachment
    Point3D<float> m_attachedOffset;                                    // +0x1a4 property "attachedOffset", added to the attached object's position in Update
    bool m_playerHeadLight;                                             // +0x1b0 InitPost clears it; RefreshAttachment adds the light to the active set once it is set
    bool m_addedToLightSet;                                             // +0x1b1 set once RefreshAttachment has added the light to the light set
    uint8_t pad_1b2[2];                                                 // +0x1b2
};
