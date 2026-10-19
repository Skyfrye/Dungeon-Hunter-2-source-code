// Zone: a box-shaped GameObject that reports who stands inside it. Base of ZoneEx, Door,
// RoomZone, CheckpointZone and QuestMoveInZone.
// Original 32-bit size 0x388 (904): GameObject (0x374) plus the members below.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x397c2c, Zone.cpp assertions).
#pragma once

#include <cstdint>

#include "glitch-shared/glitch_core.hpp"

#include "dh2/GameObject.hpp"

namespace glitch {
namespace scene {
class ISceneNode;
}  // namespace scene
}  // namespace glitch

class Zone : public GameObject {
public:
    // hasPhysics: build a PhysicalObject (a sensor box) from the bounding box in InitPost.
    // playerOnly: the sensor filters on the player category only (mask 4) instead of mask 1310.
    Zone(ObjectBase::GO_IDS id, bool hasPhysics, bool playerOnly);      // 0x397c2c / 0x397ca0
    ~Zone() override;                                                   // 0x397b38, 0x397ba8, 0x397bc4

    // Overrides of GameObject slots.
    void DeclareProperties() override;                                  // slot 0x18: 0x397df8, adds "dimensions" (default 200,200,200)
    void InitPost() override;                                           // slot 0x1c: 0x39771c

    // New virtuals at vtable slots 0xc8 .. 0xd4 (empty in Zone).
    virtual void OnCollision(GameObject* other);                        // 0x395940
    virtual void OnCollisionBegins(GameObject* other);                  // 0x39649c
    virtual void OnCollisionPersists(GameObject* other);                // 0x395944
    virtual void OnCollisionEnds(GameObject* other);                    // 0x395948

    // True when other's body lies inside the zone box (or inside the "_colzone" mesh when present).
    bool IsInside(GameObject* other);                                   // 0x3970c8
    void InitWithBoundingBox(const glitch::core::aabbox3d<float>& box); // 0x397594

    // GameObject occupies +0x00 .. +0x373.
    Point3D<float> m_dimensions;                                        // +0x374 property "dimensions" (SimpleTypeProperty<Point3D<float>>); InitPost scales it by the object scale
    bool m_hasPhysics;                                                  // +0x380 ctor argument
    bool m_playerOnly;                                                  // +0x381 ctor argument
    uint8_t pad_382[2];                                                 // +0x382
    glitch::scene::ISceneNode* m_colZoneNode;                           // +0x384 "_colzone" mesh node (reference counted), null for plain boxes
};
