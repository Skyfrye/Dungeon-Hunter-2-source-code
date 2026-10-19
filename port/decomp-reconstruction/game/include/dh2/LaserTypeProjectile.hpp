// LaserTypeProjectile: a Projectile drawn as a beam between two bone nodes of its visual. It is repositioned
// every Update toward its owner's target and expires when its countdown runs out or when the floor, the path or
// a room blocks it. Original 32-bit size 0x3e4 (996) and Projectile 0x3d4 (980), per the allocation sizes in the
// Track A factory notes (a hint; the member offsets below agree with them).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3e4b6c / 0x3e4bc8).
#pragma once

#include <cstdint>

#include "dh2/Projectile.hpp"

namespace glitch {
namespace scene {
class ISceneNode;
}  // namespace scene
}  // namespace glitch

class LaserTypeProjectile : public Projectile {
public:
    explicit LaserTypeProjectile(ObjectBase::GO_IDS id);                // 0x3e4b6c (C1) / 0x3e4bc8 (C2)
    ~LaserTypeProjectile() override;                                    // 0x3e4ac8 (D1), 0x3e4b10 (D0), 0x3e4b2c (D2)

    // ---- overrides, in vtable order ----
    void Update() override;                                             // slot 0x2c: 0x3e3fcc counts down, moves the beam, expires
    float GetSpeed() const override;                                    // slot 0xa8: 0x3e3e24 returns m_speed (+0x3ac)
    void SetInfo(int projectileId, GameObject* owner, GameObject* target, Callback onHit,
                 Callback onFinish, void* userData, bool useProjectileNode) override;   // slot 0xc8: 0x3e4570 full setup
    void SetInfo(int projectileId, GameObject* owner, GameObject* target, Callback onHit,
                 Callback onFinish, void* userData, float angleDegrees) override;       // slot 0xcc: 0x3e449c asserts
                                                                        // "not supported by the laser projectile", then calls slot 0xc8
    bool OnCollision(GameObject* other, const Point2D<float>& position) override;       // slot 0xd0: 0x3e3e2c

    // Projectile occupies +0x00 .. +0x3d1 with 2 bytes of padding (980 bytes in the original).
    std::uint8_t pad_3d2[2];                                            // +0x3d2
    glitch::scene::ISceneNode* m_boneOrigin;                            // +0x3d4 "_bone_origin" node of the visual, set by SetInfo
    glitch::scene::ISceneNode* m_boneTarget;                            // +0x3d8 "_bone_target" node of the visual, set by SetInfo
    GameObject* m_laserOwner;                                           // +0x3dc SetInfo "owner" argument. This SetInfo sets
                                                                        // Projectile::m_owner (+0x380) to null instead, so OnCollision's
                                                                        // enemy test calls GetHandle on m_owner, which is null (see OnCollision)
    std::int32_t unk_3e0;                                               // +0x3e0 -1 from the ctor and SetInfo. Update counts it down by
                                                                        // dt in ms. When it goes negative with an m_onFinish set, Update calls
                                                                        // m_onFinish once and reloads it from table column +0x38 (an int32; the assembly uses LDR)
};
