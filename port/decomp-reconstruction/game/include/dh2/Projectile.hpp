// Projectile: a moving GameObject spawned by ProjectileManager (arrows, spells, ...), configured from
// Arrays::ProjectileTable (72-byte rows). Original size not recovered (last member ends at +0x3d2;
// GameObject is 0x374). Vtable pointers at +0x00, +0x04 and +0x24 as in ObjectBase.
// Vtable (256 bytes): GameObject's slots with the overrides below, then SetInfo (two overloads) and OnCollision
// at +0xc8..+0xd0.
#pragma once

#include <cstdint>
#include "core-platform/deps/game_types.hpp"  // Point2D, Point3D
#include "dh2/GameObject.hpp"

class ProjectileManager;
namespace glitch { namespace scene { class ISceneNode; } }

class Projectile : public GameObject {
public:
    // Impact kinds for the effect/sound lookup; names are inferred from which table columns each one reads.
    enum ImpactType : int {
        IMPACT_NONE = 0,       // no effect
        IMPACT_EXPIRE = 1,     // expired in the air: table columns +0x08/+0x0c
        IMPACT_GROUND = 2,     // columns +0x2c/+0x30, falling back to +0x14/+0x18
        IMPACT_OBJECT = 3,     // same columns as IMPACT_GROUND; non-character GameObject hit
        IMPACT_CHARACTER = 4   // columns +0x14/+0x18; character hit
    };
    // Return value of the hit callback: 1 ignores the hit, 2 runs the finish callback and the effect but keeps
    // flying, 3 expires the projectile, anything else counts the hit.
    typedef int (*Callback)(Projectile* projectile, void* userData);

    explicit Projectile(GO_IDS id);                    // 0x3e5e40 / 0x3e5edc
    ~Projectile() override;                            // D1 0x3e5d9c and D2 0x3e5e00 (same body); D0 0x3e5de4 is the compiler's deleting dtor

    // ---- virtual, vtable slot order ----
    void Update() override;                            // +0x2c 0x3e51b0 expiry checks, GameObject::Update, speed decay, floor check
    bool IsDead() const override;                      // +0x34 0x3e3df4 m_dead
    bool IsUpdatable() const override;                 // +0x38 0x3e3e0c true
    int IsValidatingFloorPosition() const override;    // +0x74 0x3e3dfc 2
    bool IsAnimated() const override;                  // +0x80 0x3e3e14 true
    bool IsInteractive(GameObject* other) const override;  // +0x88 0x3e3e1c false
    float GetSpeed() const override;                   // +0xa8 0x3e4da8 m_speed
    bool IsZonable() const override;                   // +0xc4 0x3e3e04 false
    virtual void SetInfo(int projectileId, GameObject* owner, GameObject* target, Callback onHit,
                         Callback onFinish, void* userData, bool useProjectileNode);  // +0xc8 0x3e58cc full setup from the table row
    virtual void SetInfo(int projectileId, GameObject* owner, GameObject* target, Callback onHit,
                         Callback onFinish, void* userData, float angleDegrees);      // +0xcc 0x3e57cc SetInfo(.., false) then aims rotated by the angle
    virtual bool OnCollision(GameObject* other, const Point2D<float>& position);      // +0xd0 0x3e55b4 true when the hit was consumed

    // ---- non-virtual ----
    void SetManager(ProjectileManager* manager);       // 0x3e4fe4 asserts "mgr"
    void OnExpire(ImpactType impact);                  // 0x3e5078 snaps to the floor when the table asks, plays the effect, marks expiring
    void HandleImpactFX(ImpactType impact, const Point3D<float>& position);  // 0x3e4db0 VisualFXManager::PlayAnimFXSet + 3D sound
    void HandleImpactFX(GameObject* hit, const Point2D<float>& position);    // 0x3e4eec picks IMPACT_CHARACTER or IMPACT_OBJECT

    // ---- members ----
    // +0x00..+0x373 GameObject
    int m_projectileId;                                // +0x374 row of Arrays::ProjectileTable, -1 before SetInfo
    ProjectileManager* m_manager;                      // +0x378
    bool unk_37c;                                      // +0x37c copied from table column +0x1d
    uint8_t pad_37d[3];
    GameObject* m_owner;                               // +0x380 SetInfo argument "owner"
    GameObject* m_target;                              // +0x384 homing target, null for a straight shot
    Point3D<float> m_startPosition;                    // +0x388 owner's target position, or the "projectile_node" position
    Point3D<float> m_position;                         // +0x394 GetTargetPosition() copied each Update
    float m_launchHeight;                              // +0x3a0 start z; compared with the floor height under the projectile
    glitch::scene::ISceneNode* m_projectileNode;       // +0x3a4 the owner visual's "projectile_node", may be null
    float m_rangeSquared;                              // +0x3a8 table column +0x20 squared, -1 when unlimited
    float m_speed;                                     // +0x3ac table column +0x40
    float m_deceleration;                              // +0x3b0 table column +0x44; m_speed falls by this per second
    int m_lifetimeMs;                                  // +0x3b4 table column +0x3c; counts down, set from the animation length when -666
    Callback m_onHit;                                  // +0x3b8 SetInfo "onHit", called by OnCollision
    Callback m_onFinish;                               // +0x3bc SetInfo "onFinish", called from Update once expiring
    void* m_userData;                                  // +0x3c0
    Point2D<float> m_impactPosition;                   // +0x3c4 collision position given to OnCollision
    GameObject* m_hitObject;                           // +0x3cc object that was hit, null otherwise
    bool m_dead;                                       // +0x3d0
    bool m_expiring;                                   // +0x3d1 hit or expired; Update finishes the projectile on the next frame
};
