// GameObject: ObjectBase with a world position, AABB, path-finding state, a visual object and a
// physical object. Original size at least 0x378 (ObjectBase 0x120 + 0x258; the int at +0x374 is the last member recovered).
// Vtable pointers at +0x00, +0x04 and +0x24 as in ObjectBase.
#pragma once

#include <cstdint>
#include <string>
#include "core-platform/deps/game_types.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/ObjectSearcher.hpp"      // ObjectSearcher::TargetList

template <typename T> struct aabb;
class VisualObject;
class PhysicalObject;
class AnchorBase;
class RoomZone;
class LuaScript;
namespace glitch { namespace scene { class ISceneNode; } }
namespace sfc { namespace script { namespace lua { class Arguments; class ReturnValues; class Binder; } } }

class GameObject : public ObjectBase {
public:
    explicit GameObject(GO_IDS id);                     // 0x38c130 / 0x38c398
    ~GameObject() override;                             // 0x38d228 (D1) / 0x38d378 (D2, same body); deleting D0 0x38d35c is compiler generated

    // ---- virtual, vtable slot order ----
    const char* getUDTypeName() const override;         // +0x08 0x340124 "GameObject"
    void createBindings(sfc::script::lua::Binder& binder) override;  // +0x0c 0x38d7ec
    void Serialize(IStreamBase* stream) override;       // +0x10 0x38b9e4 (adds m_spawnProbRolled)
    void Deserialize(IStreamBase* stream) override;     // +0x14 0x38b91c
    void DeclareProperties() override;                  // +0x18 0x38cee8
    void InitPost() override;                           // +0x1c 0x38be5c
    bool IsGameObject() const override;                 // +0x20 0x340054
    // +0x24 IsCharacter, +0x28 IsPlayer: ObjectBase versions
    void Update() override;                             // +0x2c 0x38cbe8
    void Draw() const override;                         // +0x30 0x38c968
    bool IsDead() const override;                       // +0x34 0x3400ac
    bool IsUpdatable() const override;                  // +0x38 0x38aac0
    // +0x3c setUpdating: ObjectBase version
    void SetVisible(bool visible) override;             // +0x40 0x38b0f0
    void Enabled() override;                            // +0x44 0x38ba38
    void Disabled() override;                           // +0x48 0x38ba04
    // +0x4c..+0x54 net struct hooks: ObjectBase versions
    virtual void InitFinal();                           // +0x58 0x38cd48
    virtual bool IsUpdatingPath() const;                // +0x5c 0x34005c
    virtual bool IsUpdatingPositionFromVisual() const;  // +0x60 0x340064
    virtual bool IsUpdatingPositionFromPhysics() const; // +0x64 0x34006c
    virtual bool IsUpdatingRotationFromVisual() const;  // +0x68 0x340074
    virtual bool IsUpdatingRotationFromPhysics() const; // +0x6c 0x34007c
    virtual bool IsUpdatingVisualWithRotation() const;  // +0x70 0x340084
    virtual int IsValidatingFloorPosition() const;      // +0x74 0x34008c (2 when m_static, else 0)
    virtual bool IsValidatingCameraLimits() const;      // +0x78 0x34009c
    virtual bool IsAvoidingObstacles() const;           // +0x7c 0x3400a4
    virtual bool IsAnimated() const;                    // +0x80 0x3883a8
    virtual bool IsHit() const;                         // +0x84 0x3400b4
    virtual bool IsInteractive(GameObject* other) const;    // +0x88 0x3883b0
    virtual bool IsInteractiveEx(GameObject* other) const;  // +0x8c 0x38ad30
    virtual int GetInteractionType(GameObject* other) const;// +0x90 0x38ad74 (-1 = none)
    virtual float GetInteractionRadius() const;         // +0x94 0x38ad7c
    virtual void Interact(GameObject* other);           // +0x98 0x3400bc
    virtual void SetRelativeAABB(const aabb<float>& box, bool update);  // +0x9c 0x38b110
    virtual Point3D<float> GetFXScale() const;          // +0xa0 0x3400c0 (returns m_scale)
    virtual int GetFXScaleValue() const;                // +0xa4 0x3400dc (-1)
    virtual float GetSpeed() const;                     // +0xa8 0x3400e4 (4.0f)
    virtual float GetRotationSpeed() const;             // +0xac 0x3400f0 (-1.0f)
    virtual GameObject* GetFocusObject() const;         // +0xb0 0x3400fc
    virtual bool IsObstacle() const;                    // +0xb4 0x340104
    virtual float GetObstacleRadius() const;            // +0xb8 0x34010c
    virtual float GetObstacleStrength() const;          // +0xbc 0x340114
    virtual float GetOpacity() const;                   // +0xc0 0x34011c (1.0f)
    virtual bool IsZonable() const;                     // +0xc4 0x3883b8 (!m_alwaysVisible)

    // ---- non-virtual ----
    void UpdateAbsoluteAABB();                          // 0x38aac8
    bool MeetCondition() const;                         // 0x38ab60
    bool IsTouching(const Point3D<float>& point) const; // 0x38ab68
    bool IsNearby(const Point3D<float>& point, float margin) const;  // 0x38ac0c (margin scaled by 100)
    void SetScale(const Point3D<float>& scale);         // 0x38adc8
    bool IsBatchVisible() const;                        // 0x38ade4
    void UpdateIdleSound();                             // 0x38ae2c
    Point3D<float> GetInteractionSpot() const;          // 0x38b228
    bool IsNearby(const GameObject* other, float margin) const;      // 0x38b300
    bool IsPlayerNearby(float margin) const;            // 0x38b48c
    bool IsTouching(const GameObject* other) const;     // 0x38b518
    bool IsHostTouching() const;                        // 0x38b630
    int GetNumPlayerTouching() const;                   // 0x38b6d4
    void RequireOnlineUpdate();                         // 0x38b8b8
    void FlushTargetList();                             // 0x38ba6c
    int CheckSpawnProbability();                        // 0x38bd64
    void DisableZoning();                               // 0x38c600
    void ZoneExited();                                  // 0x38c69c
    void ZoneEntered();                                 // 0x38c710
    void EnableZoning();                                // 0x38c790
    void LoadExternalScript(const char* file, const char* name);  // 0x38ef60
    const Point3D<float>& GetTargetPosition() const;    // 0x3935dc
    void SetDestination(const Point3D<float>& dest);    // 0x393600
    bool IsAtDestination() const;                       // 0x39361c
    void UpdateRotation();                              // 0x393710
    void SetRotation(const Point3D<float>& rotation);   // 0x3938a0
    void Stop();                                        // 0x3938f8
    void PathTo(const Point3D<float>& dest);            // 0x3939f0
    void GetLookAtVec(Point3D<float>& out) const;       // 0x393ae4
    void LookTowards(const Point3D<float>& direction);  // 0x393b1c
    void SetHeadingDirection(const Point3D<float>& direction, bool look);  // 0x393be8
    void LookAt(const Point3D<float>& target);          // 0x393cec
    void LookAt(GameObject* target);                    // 0x393d48
    void UpdateTargetPosition();                        // 0x393d74
    void SetPosition(const Point3D<float>& pos, bool setDestination);  // 0x393db4
    void ForceUpdatePosition();                         // 0x393e90
    void UpdatePFObject();                              // 0x393ea0
    void UpdatePath();                                  // 0x3940c0
    void SetVisualObject(VisualObject* visual);         // 0x394338
    void SetCameraAnchorObject(AnchorBase* anchor);     // 0x394378
    const Point3D<float>& GetCameraAnchorPosition() const;  // 0x3943b8
    void UpdateSubObjects();                            // 0x3943cc
    void DisableCollisions();                           // 0x3949b0
    void EnableCollisions();                            // 0x394a3c
    void SetPhysicalObject(PhysicalObject* physical, bool pin);  // 0x394bf8
    void SetVisualObject(const char* dae, const char* xref, bool force);  // 0x394d34
    void LoadVisualObject();                            // 0x394eb0

    // ---- Lua bindings (registered in createBindings) ----
    static void _DealDamages(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _DropFX(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _EnableCollisions(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetDistanceBetween(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetDistanceFrom(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetID(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetName(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetObjectByName(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetPosition(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetSelf(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetTargetListSize(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GetTargetListTop(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _GrabFX(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _HasPath(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsCharacter(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsDead(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsDecor(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsDoor(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsFlying(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsInRange(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsInWater(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsOverAHole(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsPlayer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsSwimming(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _IsTargetListEmpty(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _Lock(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _MarkAsFlying(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _MarkAsSwimming(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _PlayFX(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _PlaySound3D(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _PopTargetList(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _Rand(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _RegisterSummon(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _SetFXEndPoint(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _SetMaxPath(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _SetPosition(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _SetTargetListCharacterFilter(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _SetTargetListObjectFilter(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _SetTargetListSorting(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _Summon(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _SummonTimerTrap(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _SummonTriggerTrap(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _TargetListBackup(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _TargetListResort(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _TargetListSearch(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _TargetListSearchRect(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);
    static void _Unlock(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);

    // ---- members (ObjectBase ends at +0x120) ----
    Point3D<float> m_scale;                 // +0x120 property "scale"
    float m_absAabb[6];                     // +0x12c world AABB (min xyz, max xyz) = m_relAabb + m_position
    float m_relAabb[6];                     // +0x144 local AABB, initially (-100,-100,-100)-(100,100,100)
    bool m_skipCheckpoint;                  // +0x15c property "skip_checkpoint" (bool& for the property table)
    std::uint8_t pad_15d[3];
    Point3D<float> m_position;              // +0x160 property "position"
    Point3D<float> m_rotation;              // +0x16c property "rotation" (radians after InitPost); z = yaw
    float m_targetYaw;                      // +0x178 UpdateRotation turns m_rotation.Z toward it
    std::int32_t m_turnPositive;            // +0x17c 1 when last turning with +dt, else 0 (not set by the constructor)
    glitch::scene::ISceneNode* m_targetNode;// +0x180 "target_node" scene node of the visual
    Point3D<float> m_targetNodePos;         // +0x184 absolute position of m_targetNode (UpdateTargetPosition)
    Point3D<float> m_prevPosition;          // +0x190 position at start of Update
    Point3D<float> m_prevRotation;          // +0x19c rotation at start of Update
    Point3D<float> m_destination;           // +0x1a8
    std::uint8_t m_moving;                  // +0x1b4 set by UpdatePath while heading to m_destination
    std::uint8_t m_hasHeading;              // +0x1b5 m_heading is non-zero
    std::uint8_t pad_1b6[2];
    Point3D<float> m_heading;               // +0x1b8
    std::uint8_t m_validateDirection;       // +0x1c4 UpdatePath calls PFWorld::ValidateDirection (unless debug switch DisableWallAvoidance)
    std::uint8_t pad_1c5[3];
    PFObject m_pfObject;                    // +0x1c8 (size 0xa4)
    std::uint32_t m_maxPath;                // +0x26c Lua _SetMaxPath (<=100), 0 = default 30
    std::int32_t m_spawnProbRolled;         // +0x270 -1 = not rolled yet, -2 = skip; serialized
    std::int32_t m_spawnProb;               // +0x274 property "spawn_prob", default 100
    std::string m_lightSet;                 // +0x278 property "lightset", default "PlayerLight"
    std::string m_dae;                      // +0x290 property "dae"
    std::string m_xrefObject;               // +0x2a8 property "xrefobject"
    std::string m_xrefMax;                  // +0x2c0 property "xrefmax"
    VisualObject* m_visualObject;           // +0x2d8
    PhysicalObject* m_physicalObject;       // +0x2dc
    AnchorBase* m_cameraAnchor;             // +0x2e0
    GameObject* m_pendingInteractor;        // +0x2e4 Update() calls Interact(it) then clears it
    mutable glitch::scene::ISceneNode* m_interactionSpotNode;  // +0x2e8 node "interaction_position" (mutable: GetInteractionSpot caches it)
    mutable std::uint8_t m_interactionSpotCached;   // +0x2ec (mutable: GetInteractionSpot caches it)
    bool m_alwaysVisible;                   // +0x2ed property "alwaysVisible" (bool& for the property table)
    std::uint8_t m_zoningEnabled;           // +0x2ee 1 initially
    std::uint8_t unk_2ef;                   // +0x2ef 0
    std::uint8_t m_inZone;                  // +0x2f0
    std::uint8_t pad_2f1[3];
    RoomZone* m_roomZone;                   // +0x2f4
    std::uint8_t unk_2f8;                   // +0x2f8 0
    std::uint8_t m_zeroSizeAabb;            // +0x2f9 set by SetRelativeAABB when the box has no x/y extent
    std::uint8_t unk_2fa;                   // +0x2fa 0
    std::uint8_t unk_2fb;                   // +0x2fb 1
    std::uint8_t unk_2fc;                   // +0x2fc 0
    std::uint8_t pad_2fd[3];
    LuaScript* m_script;                    // +0x300 external script (LoadExternalScript)
    ObjectSearcher::TargetList m_targetList;// +0x304 (size 0x54)
    std::string m_idleSound;                // +0x358 property "idle_sound"
    std::int16_t m_idleSoundId;             // +0x370 index into Arrays::Sounds, -1 = none
    std::uint8_t m_idleSoundPlaying;        // +0x372
    std::uint8_t m_idleSoundMuted;          // +0x373 set by Disabled(), cleared by Enabled(). Door::Opened (0x3e7788) and Door::Closed (0x3e7598) also store a byte here (STRB +0x373)
    // GameObject ends here (+0x374): v2Controllable (Character), ItemInventory (ItemObject) and the first members of SpawnPoint, Container, Liftable, ColBox, Zone... start at +0x374.
    // There is no entry-point id in GameObject: the word the level compares with Level::m_entryPointId is SpawnPoint::m_entrypointId ("entrypointID", written by its
    // constructor and DeclareProperties). The port field that stood here, never written, moved every derived layout by four bytes.
};
