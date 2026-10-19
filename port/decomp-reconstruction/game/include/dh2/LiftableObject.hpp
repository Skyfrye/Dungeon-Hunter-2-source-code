// LiftableObject: a GameObject the player can pick up, carry and drop. The owner holds it through m_owner; Release
// puts it back in the world, Drop plays the "drop" animation. Its data row (Arrays::LiftableObjects) is looked up by
// data_desc in InitPost, and its dae name is taken from the row.
// Original 32-bit size 0x3a8 (936), the operator new size in GetNewInstance<LiftableObject>.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3eed10, Update 0x3ee9a4, InitPost 0x3eea10, PickUp 0x3ee5fc).
#pragma once

#include <cstdint>
#include <string>

#include "core-platform/deps/game_types.hpp"  // Point3D
#include "dh2/GameObject.hpp"

namespace glitch {
namespace scene {
class ITimelineController;
}  // namespace scene
}  // namespace glitch

class LiftableObject : public GameObject {
public:
    explicit LiftableObject(GO_IDS id);                                 // 0x3eec88 / 0x3eed10
    ~LiftableObject() override;                                         // 0x3eebcc (D1), 0x3eec20 (D0), 0x3eec3c (D2)

    // ---- virtual, vtable slot order (only the slots LiftableObject changes or adds) ----
    void DeclareProperties() override;                                  // +0x18 0x3eefec "data", "data_desc"
    void InitPost() override;                                           // +0x1c 0x3eea10 looks up data_desc, copies the row's dae into m_dae
    void Update() override;                                             // +0x2c 0x3ee9a4 pins the physics object after a release, then follows the visual
    bool IsUpdatable() const override;                                  // +0x38 0x3ee3b0
    void InitFinal() override;                                          // +0x58 0x3eeec8 copies the local player's scale, creates the physics object
    bool IsUpdatingPositionFromVisual() const override;                 // +0x60 0x3ee3c0 true while an owner holds the object
    bool IsUpdatingPositionFromPhysics() const override;                // +0x64 0x3ee3d0 true while no owner holds it
    bool IsAnimated() const override;                                   // +0x80 0x3ee3b8
    bool IsInteractive(GameObject* other) const override;               // +0x88 0x3ee3e0 false while held, dropping or marked for deletion
    int GetInteractionType(GameObject* other) const override;           // +0x90 0x3ee440 4 when no owner, 5 when other is the owner, -1 otherwise
    void Interact(GameObject* other) override;                          // +0x98 0x3ee460 empty
    bool IsObstacle() const override;                                   // +0xb4 0x3ee40c
    float GetObstacleRadius() const override;                           // +0xb8 0x3ee414
    float GetObstacleStrength() const override;                         // +0xbc 0x3ee420
    bool IsZonable() const override;                                    // +0xc4 0x3ee464
    virtual int GetDataId() const;                                      // +0xc8 0x3ee42c returns m_dataId (new slot, not in GameObject)

    // ---- non-virtual ----
    void Release();                                                     // 0x3ee468 drops the owner, restores m_baseScale, requests a re-pin
    bool Drop();                                                        // 0x3ee5a8 Release, then plays "drop"; sets m_dropping if the animation starts
    bool PickUp(GameObject* owner);                                     // 0x3ee5fc attaches to owner, raises the PickedUpLiftable objective event

    // Timeline callback of the visual: the drop animation has finished.
    static void __Callback(glitch::scene::ITimelineController* controller, void* user);  // 0x3ee434 clears m_dropping

    // GameObject occupies +0x00 .. +0x373.
    int m_dataId;                                                       // +0x374 property "data", default -1; row index in Arrays::LiftableObjects set by InitPost
    std::string m_dataDesc;                                             // +0x378 property "data_desc", 24 bytes; the row name InitPost looks up
    GameObject* m_owner;                                                // +0x390 object holding the lift (PickUp sets, Release clears)
    bool m_dropping;                                                    // +0x394 set by Drop while the "drop" animation plays; cleared by __Callback
    Point3D<float> m_baseScale;                                         // +0x398 scale copied from the local player in InitFinal; Release restores it
    bool m_pinPending;                                                  // +0x3a4 set by Release; Update pins the physics object and clears it
    uint8_t pad_3a5[3];                                                 // +0x3a5
};
