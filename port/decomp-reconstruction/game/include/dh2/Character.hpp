// Character: every actor in a level (player, follower, faerie, monster, NPC, merchant).
// Original 32-bit size 0x1f90 (8080, the operator new size seen in ObjectBase subclass allocations).
//
// Layout (32-bit offsets). Character is a multiple-inheritance class: the vtable _ZTV9Character (812 bytes)
// carries one vtable group per base, and the Character constructor/destructor re-point each subobject's vptr
// into it (off_965F38 at +0, off_96608C at +4, off_966098 at +0x24, off_9660B0 at +0x374, off_966124 at
// +0x37c, off_966150 at +0x3b4, off_966160 at +0x3c8, off_966234 at +0x49c, off_966244 at +0x4fc,
// off_966254 at +0x560). The thunks in those groups ("non-virtual thunk to Character::~Character",
// "...Character::Ctrl_Click" and so on) show that these are base classes, not members:
//   +0x000 GameObject            (primary; ObjectBase groups at +0x00/+0x04/+0x24, size 0x374)
//   +0x374 v2Controllable        (size 8: vptr + m_controller)
//   +0x37c ItemInventory         (size 0x38)
//   +0x3b4 CharTimers            (size 0x14)
//   +0x3c8 CharAI                (size 0xd4)
//   +0x49c CharAnimator          (size 0x60)
//   +0x4fc CharStateMachine      (size 0x64)
//   +0x560 CharProperties        (size 0xe34)
//   +0x1394 Character's own members, +0x1508 and +0x1a48 two NetStructCharacter.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x3a9340 / 0x3aa1b4, dtors 0x3a7c84 / 0x3a7de0 / 0x3a7dfc).
#pragma once

#include <cstdint>
#include <map>
#include <string>

#include "core-platform/deps/game_types.hpp"
#include "dh2/Point2D.hpp"
#include "net-transport/net_struct.hpp"
#include "net-transport/net_struct_interpolation.hpp"
#include "net-transport/tb/net_struct_int.hpp"

#include "dh2/GameObject.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharProperties.hpp"
#include "core-platform/timer_util.hpp"  // TimerUtil (m_timerUtil, GetImmunityTimer); the class lives in core-platform

class IStreamBase;
class IFileStream;
class ItemInstance;
class AnimatedFX;
class PlayerSavegame;
class Quest;
class TimerUtil;
struct __sFILE;
template <typename T> struct aabb;
namespace sfc { namespace script { namespace lua { class Arguments; class ReturnValues; class Binder; } } }
namespace Structs { class AIFactions; }  // element of Arrays::AIFactionTable (pydata w7_structs_5.hpp)
namespace Structs { class CharSounds; }  // element of Arrays::CharSoundsTable (pydata w7_structs_2.hpp)

class Character : public GameObject,            // +0x000
                  public v2Controllable,        // +0x374
                  public ItemInventory,         // +0x37c
                  public CharTimers,            // +0x3b4
                  public CharAI,                // +0x3c8
                  public CharAnimator,          // +0x49c
                  public CharStateMachine,      // +0x4fc
                  public CharProperties {       // +0x560
public:
    // Result of one combat roll (Character::_F_CalculateResult). 40 bytes in the original; _F_ResetResult sets
    // words 0-3 and 8-9 to -1 and the rest to 0. Field meanings beyond the damage and the two flag words are not
    // recovered.
    struct AttackResult {
        std::int32_t m_damage;              // +0x00 fixed point (>> 8 for display), -1 after a reset
        std::int32_t unk_04;                // +0x04 -1
        std::int32_t unk_08;                // +0x08 -1
        std::int32_t unk_0c;                // +0x0c -1
        std::int32_t unk_10;                // +0x10 0
        std::int32_t unk_14;                // +0x14 0
        std::uint32_t m_resultFlags;        // +0x18 byte tests 0x02 0x04 0x08 0x10 (+0x18), 0x01 (+0x19)
        std::uint32_t m_attackFlags;        // +0x1c tests 0x200000, 0x4000000, 0x20000000
        std::int32_t unk_20;                // +0x20 -1
        std::int32_t unk_24;                // +0x24 -1
    };

    // Replicated state (one outgoing copy at +0x1508, one incoming copy at +0x1a48 in Character).
    // Original 32-bit size 0x540 (1344): NetStruct (0x130) followed by eleven members.
    class NetStructCharacter : public NetStruct {
    public:
        NetStructCharacter();                                           // 0x3a6a24
        ~NetStructCharacter() override;                                 // 0x3a7a50, 0x3a7b08

        // NetStruct occupies +0x00 .. +0x12f.
        // The three position members are NetStructInterpolatedRangedFloat<18,-200000,200000> (x, y) and <16,-50000,50000> (z).
        NetStructInterpolatedRangedFloat<18u, -200000, 200000> m_posX;  // +0x130
        NetStructInterpolatedRangedFloat<18u, -200000, 200000> m_posY;  // +0x228
        NetStructInterpolatedRangedFloat<16u, -50000, 50000> m_posZ;    // +0x320
        NetStructRangedFloat<16u, -1, 1> m_dirX;                        // +0x418 from GameObject +0x1b8
        NetStructRangedFloat<16u, -1, 1> m_dirY;                        // +0x440 from GameObject +0x1bc
        NetStructInt<32u>  m_hp;                                        // +0x468 HP + 1, 0 = dead 
        NetStructInt<32u>  m_mpOrKillerId;                              // +0x490 MP + 1 of a living character; the killer's network id (ObjectBase +0x108) when dead
        NetStructInt<16u>  m_state;                                     // +0x4b8 CharStateMachine state, -1 = none 
        NetStructBool m_enabled;                                        // +0x4e0 from ObjectBase +0x8a
        NetStructBool m_killerIsPlayer;                                 // +0x500
        NetStructBool m_visible;                                        // +0x520 from ObjectBase +0x80
    };

    explicit Character(GO_IDS id);                                      // 0x3a9340 / 0x3aa1b4
    ~Character() override;                                              // 0x3a7c84 (D1), 0x3a7dfc (D2, same body); deleting D0 0x3a7de0 is compiler generated

    // ---- virtual, primary vtable slot order ----
    const char* getUDTypeName() const override;                         // +0x08 0x3a2f08
    void createBindings(sfc::script::lua::Binder& binder) override;     // +0x0c 0x3b56bc
    void Serialize(IStreamBase* stream) override;                       // +0x10 0x3a65c4
    void Deserialize(IStreamBase* stream) override;                     // +0x14 0x3a6210
    void DeclareProperties() override;                                  // +0x18 0x3a9fe4
    void InitPost() override;                                           // +0x1c 0x3b4d60
    bool IsCharacter() const override;                                  // +0x24 0x3a2e1c
    bool IsPlayer() const override;                                     // +0x28 0x3a49f0
    void Update() override;                                             // +0x2c 0x3abe98
    void Draw() const override;                                         // +0x30 0x3a84f4
    bool IsDead() const override;                                       // +0x34 0x3a2ed4
    void Enabled() override;                                            // +0x44 0x3a598c
    void Disabled() override;                                           // +0x48 0x3a5974
    void PopulateOutgoingNetStruct(bool force) override;                // +0x4c 0x3a6f0c
    void InterpretIncomingNetStruct(bool force) override;               // +0x50 0x3a7f10
    void InitFinal() override;                                          // +0x58 0x3b4978
    bool IsUpdatingPath() const override;                               // +0x5c 0x3a2e2c
    bool IsUpdatingPositionFromVisual() const override;                 // +0x60 0x3a2e38
    bool IsUpdatingPositionFromPhysics() const override;                // +0x64 0x3a2e44
    bool IsUpdatingRotationFromVisual() const override;                 // +0x68 0x3a2e50
    bool IsUpdatingRotationFromPhysics() const override;                // +0x6c 0x3a2e5c
    bool IsUpdatingVisualWithRotation() const override;                 // +0x70 0x3a2e68
    int IsValidatingFloorPosition() const override;                     // +0x74 0x3a2e78
    bool IsValidatingCameraLimits() const override;                     // +0x78 0x3a2e88
    bool IsAvoidingObstacles() const override;                          // +0x7c 0x3a3754
    bool IsAnimated() const override;                                   // +0x80 0x3a2ee0
    bool IsInteractive(GameObject* other) const override;               // +0x88 0x3a4870
    int GetInteractionType(GameObject* other) const override;           // +0x90 0x3a47e8
    float GetInteractionRadius() const override;                        // +0x94 0x3a374c
    void Interact(GameObject* other) override;                          // +0x98 0x3a4d78
    void SetRelativeAABB(const aabb<float>& box, bool update) override; // +0x9c 0x3a4398
    Point3D<float> GetFXScale() const override;                         // +0xa0 0x3a2e9c
    int GetFXScaleValue() const override;                               // +0xa4 0x3a2ecc
    float GetRotationSpeed() const override;                            // +0xac 0x3a372c
    GameObject* GetFocusObject() const override;                        // +0xb0 0x3a2e24
    bool IsObstacle() const override;                                   // +0xb4 0x3a2ee8
    float GetObstacleRadius() const override;                           // +0xb8 0x3a2ef0
    float GetObstacleStrength() const override;                         // +0xbc 0x3a2efc
    float GetOpacity() const override;                                  // +0xc0 0x3a3724
    bool IsZonable() const override;                                    // +0xc4 0x3a36e4
    // New primary slots from +0xc8. Each also overrides the v2Controllable / ItemInventory slot of the same
    // signature (the secondary vtable groups hold non-virtual thunks to these).
    void Ctrl_Click(const Point3D<float>& pos, bool held) override;     // +0xc8 0x3addc8
    void Ctrl_RotateBy(float angle) override;                           // +0xcc 0x3ad418
    void Ctrl_LookAt(const Point3D<float>& pos) override;               // +0xd0 0x3addbc (forwards to GameObject::LookAt)
    void Ctrl_LookAt(GameObject* target) override;                      // +0xd4 0x3ad9ac
    void Ctrl_WarpTo(const Point3D<float>& pos) override;               // +0xd8 0x3adcf4
    void Ctrl_HeadTowards(const Point3D<float>& pos) override;          // +0xdc 0x3adb60
    void Ctrl_HeadTowards(GameObject* target) override;                 // +0xe0 0x3ad8d4
    void Ctrl_HeadTo(const Point3D<float>& pos) override;               // +0xe4 0x3adac8
    void Ctrl_HeadTo(GameObject* target) override;                      // +0xe8 0x3ada6c
    void Ctrl_MoveTo(const Point3D<float>& pos) override;               // +0xec 0x3ada30
    void Ctrl_MoveTo(GameObject* target) override;                      // +0xf0 0x3ad9e4
    void Ctrl_Stop() override;                                          // +0xf4 0x3ad890
    void Ctrl_Attack(GameObject* target) override;                      // +0xf8 0x3ad87c
    void Ctrl_BeginSkill(unsigned int skill) override;                  // +0xfc 0x3ad86c
    void Ctrl_EndSkill(unsigned int skill) override;                    // +0x100 0x3ad85c
    void Ctrl_BeginCast(bool primary) override;                         // +0x104 0x3ad84c
    void Ctrl_EndCast(bool primary) override;                           // +0x108 0x3ad83c
    void Ctrl_UsePotion() override;                                     // +0x10c 0x3ad6f0
    void Ctrl_UseOOI(GameObject* target) override;                      // +0x110 0x3ad690
    void Ctrl_DropObject() override;                                    // +0x114 0x3ad57c
    void Ctrl_Kill(GameObject* killer, bool silent) override;           // +0x118 0x3ad528
    void Ctrl_OpenIGM() override;                                       // +0x11c 0x3ad478
    virtual void InitLightSetAndMaterial();                             // +0x120 0x3b4834
    bool CanRangeAttack() const override;                               // +0x124 0x3a4d3c (also the ItemInventory slot)
    bool CanRangeAttack(int& a, int& b, int& c) const override;         // +0x128 0x3a4cd0
    virtual int AddItemInstance(ItemInstance* item, bool a, bool b);    // +0x12c 0x3a4cc0
    int EquipItemAuto(unsigned int item) override;                      // +0x130 0x3a9fa8
    int UnEquipItemAuto(unsigned int item) override;                    // +0x134 0x3a9f6c
    virtual int EquipAllSlotsAuto();                                    // +0x138 0x3a4c14
    int EquipItemToSlot(unsigned int item, unsigned int slot) override; // +0x13c 0x3a9f30
    virtual int EquipSlotAuto(unsigned int slot);                       // +0x140 0x3a9ee8 (hides ItemInventory::EquipSlotAuto(unsigned, Character*))
    virtual int UnEquipItemFromSlot(unsigned int slot);                 // +0x144 0x3a9eb0 (hides ItemInventory::UnEquipItemFromSlot(unsigned, int))
    virtual int CanUpdate();                                            // +0x148 0x3a52a4

    // ---- queries on the character tables (rows are Arrays::AITable / CharAnimTable / ... records) ----
    int GetCharAIId() const;                                            // 0x3a2fec
    const Structs::AIProps* GetCharAI() const;                          // 0x3a3024 AITable row (68-byte listing stride)
    int GetCharType() const;                                            // 0x3a3054
    bool IsMonster() const;                                             // 0x3a3064
    bool IsFollower() const;                                            // 0x3a307c
    bool IsFaerie() const;                                              // 0x3a3094
    bool IsSummoned() const;                                            // 0x3a30ac
    bool IsMerchant() const;                                            // 0x3a30c4
    bool IsInvisibleMan() const;                                        // 0x3a30dc
    bool IsCleaner() const;                                             // 0x3a30f4
    bool IsNPC() const;                                                 // 0x3a310c
    bool IsMiniBoss() const;                                            // 0x3a3144
    bool IsBoss() const;                                                // 0x3a3158
    bool IsCharSitting() const;                                         // 0x3a316c
    int GetCharAIFactionId() const;                                     // 0x3a3180
    const Structs::AIFactions* GetCharAIFaction() const;                // 0x3a31b8 AIFactionTable row (12-byte listing stride)
    int GetCharModelId() const;                                         // 0x3a31e8
    int GetCharAnimTableId() const;                                     // 0x3a3228
    const Structs::CharAnim* GetCharAnimTable() const;                  // 0x3a3264 CharAnimTable row (160-byte listing stride)
    int GetCharSoundsId() const;                                        // 0x3a3294
    const Structs::CharSounds* GetCharSounds() const;                   // 0x3a32d0 CharSoundsTable row (host element)
    int GetFXFootprint() const;                                         // 0x3a3300
    int GetFXBloodDeath() const;                                        // 0x3a3368
    int GetFXBlood() const;                                             // 0x3a33d0
    int GetAttackDelay() const;                                         // 0x3a3438
    bool HasComboAttack() const;                                        // 0x3a346c
    int GetNumComboAttack() const;                                      // 0x3a34f0
    int GetLoot() const;                                                // 0x3a2fcc
    bool HasLoot() const;                                               // 0x3a2fd8
    int GetAnimStance() const;                                          // 0x3a53e0
    int GetCharUniqueAnimSetId() const;                                 // 0x3a54b4
    const char* GetCharModelName() const;                               // 0x3a54d4
    const char* GetClassName() const;                                   // 0x3a56a4 StringManager::getString result (const char*)
    int GetPreSetAIState() const;                                       // 0x3a5784 3 default, "Limbus" -> 0, "PreSpawn" -> 17
    Point3D<float> GetLeftFootPosition() const;                         // 0x3a57f4
    Point3D<float> GetRightFootPosition() const;                        // 0x3a5874
    int GetRespawnDelay() const;                                        // 0x3a4bac
    bool CanRespawn() const;                                            // 0x3a5248
    bool HasPotion() const;                                             // 0x3a5990
    bool CTRLIsAllowed() const;                                         // 0x3ad430
    bool IsCastingPossible();                                           // 0x3aea9c
    bool IsUsingFreezingRay() const;                                    // 0x3bc688
    bool IsSneaking() const;                                            // 0x3bc690
    void CancelSneaking();                                              // 0x3bc6b8

    // ---- state ----
    void SetInitialPosition(const Point3D<float>& pos);                 // 0x3a58f4
    void Revive(GameObject* reviver, bool resetPhysics);                // 0x3a59ac
    void DropLoot(GameObject* killer) const;                            // 0x3a5ae4
    void Kill(GameObject* killer, bool silent);                         // 0x3a5b18
    void HitFor(unsigned int damage, GameObject* attacker);             // 0x3a8bc4
    void Clean();                                                       // 0x3a66f8
    static void ClearConcurrentAI();                                    // 0x3a799c (static: the body only clears s_concurrentAI)
    int RaiseEvent(int eventId, void* data);                            // 0x3a4d5c
    TimerUtil* GetImmunityTimer(int damageType);                        // 0x3a5184
    void UpdateAIPointers();                                            // 0x3a4344
    void UpdateObjectOfInterest();                                      // 0x3abb9c
    void UpdateSpotTarget();                                            // 0x3a469c
    void UpdateStateFX();                                               // 0x3a4470
    void DisableSelfFX();                                               // 0x3a40b0
    void DisableStateFX();                                              // 0x3a40e4
    void AddMultiplayerHighlight();                                     // 0x3a41a0
    void RemoveMultiplayerHighlight();                                  // 0x3a4068
    void CheckForAllQuestsTrophy();                                     // 0x3a3fe4
    void ForceUseOOI(GameObject* target);                               // 0x3ad5ac
    void UseOOI();                                                      // 0x3ad614
    static int HasCharOIDInCache(int oid);                              // 0x3a2f48 returns the cached flags (0 when absent)
    static void AddCharOIDToCache(int oid, unsigned int flags);         // 0x3ab674

    // Event handlers registered with CharStateMachine::SM_RegisterEvent (pointer-to-member).
    bool CSM_Attack(int eventId, void* data, int stateId, int& nextState);               // 0x3ad22c
    bool CSM_Injured(int eventId, void* data, int stateId, int& nextState);              // 0x3ad23c
    bool CSM_Interrupted(int eventId, void* data, int stateId, int& nextState);          // 0x3ad244
    bool CSM_StoppedAttacking(int eventId, void* data, int stateId, int& nextState);     // 0x3ad280
    bool CSM_StopSkill(int eventId, void* data, int stateId, int& nextState);            // 0x3ad290
    bool CSM_CanStopInteraction(int eventId, void* data, int stateId, int& nextState);   // 0x3ad29c
    bool CSM_AfterInteraction(int eventId, void* data, int stateId, int& nextState);     // 0x3ad2c8
    bool CSM_Spawn(int eventId, void* data, int stateId, int& nextState);                // 0x3ad2e4

    // ---- creation and initialisation ----
    static Character* CreatePlayer(Character* source, unsigned int slot, unsigned int a, const char* name);  // 0x3acd58
    static Character* CreatePlayer(unsigned int slot, unsigned int a, unsigned int b, const char* name, bool c, bool d);  // 0x3acea4
    static Character* CreateNPC(const char* name, const char* a, bool b, bool c);   // 0x3ad064
    static Character* CreateNPC(int a, const char* name, bool b);                   // 0x3ad1f8
    void InitAll();                                                     // 0x3b35f0
    void InitializePlayerSavegame();                                    // 0x3b36b0
    void UpdateInventoryLocalization();                                 // 0x3b36e4
    int SafeGetCharPropsTemplateId();                                   // 0x3b36ec
    int SafeGetCharPropsId();                                           // 0x3b3d38
    void InitSpawned(int charPropsId, const Point3D<float>& pos);       // 0x3b379c
    void InitCoopCam();                                                 // 0x3b3928
    void InitPhysicalObject();                                          // 0x3b4088
    void RegisterCharacterFXTable();                                    // 0x3b4738
    void InitCam();                                                     // 0x3b4bc4
    void _InitEquipment();                                              // 0x3b395c
    void _InitHpMp();                                                   // 0x3b3a70
    void _InitSkillsSlots();                                            // 0x3b3a90
    void _InitSounds();                                                 // 0x3b3b00

    // ---- inventory ----
    bool INV_DoesMeetRequirements(ItemInstance* item);                  // 0x3a4930
    int INV_TransmuteItem(ItemInstance* item, bool a);                  // 0x3a4a3c returns the gold value (0 when item is null)
    int INV_TransmuteItem(unsigned int item, bool a);                   // 0x3a4bec
    void INV_UpdateSkin();                                              // 0x3a999c
    int INV_CheckItemsRequirements();                                   // 0x3a9d10 (Hex-Rays int: returns ValidateHPMP's result or the check result)
    void ReloadSkills();                                                // 0x3a9db4

    // ---- faeries ----
    int GetCharFaeryListId() const;                                     // 0x3ae5a0
    const void* GetCharFaeryList() const;                               // 0x3ae5dc
    Character* GetFaeryCharacter();                                     // 0x3ae60c
    const Character* GetFaeryCharacter() const;                         // 0x3ae614
    void IncFaeryLevel(unsigned int faery);                             // 0x3ae61c
    void SetFaeryState(unsigned int faery, int state);                  // 0x3ae7d4
    void IncAllFaeriesLevel();                                          // 0x3ae94c
    void ChangeFaery(unsigned int faery);                               // 0x3ae99c
    const void* GetCharFaery(int faeryId) const;                        // 0x3aeac0

    // ---- combat ----
    // Binary check (0x3aef68, 0x3af0c8, call sites in Update 0x3abe98): the first explicit argument is the AMOUNT
    // (gold, or xp >> 8), which Hex-Rays types Character* only because it is compared with the -1 sentinel of
    // m_pendingGoldText / m_pendingXPText. The gold body reads that amount (StringManager::parse) and never reads the
    // second int (Update passes a register, v11, that the listing never sets). The XP body passes the amount to
    // StringManager::parse, styleId and colorId to FlashAnimManager::PlayScrollingCombatText, and never reads unusedArg.
    // Parameter type and name of the first argument are therefore wrong here (rename candidate: amount, type int). Not
    // retyped: the definitions in game-character/src/g1-game-character-Character-ee9946-8.cpp use Character* target.
    void F_ApplyScrollingCombatTextGold(int gold, int unusedArg);       // 0x3aef68 (the first explicit argument is the gold amount; the second is not read)
    void F_ApplyScrollingCombatTextXP(int xp, int styleId, int colorId, int unusedArg);  // 0x3af0c8 (the first explicit argument is the xp amount; the last is not read)
    static void F_ApplyScrollingCombatText(const AttackResult& result, GameObject* attacker, Character* target);  // 0x3af1fc
    static void F_ApplyScrollingCombatText(const AttackResult& result, Character* attacker, Character* target);   // 0x3af77c
    static void F_ApplyCombatSound(const AttackResult& result, GameObject* attacker, Character* target);          // 0x3afd38
    static void F_ApplyCombatSound(const AttackResult& result, Character* attacker, Character* target);           // 0x3afee0
    static void F_ApplyResult(const AttackResult& result, GameObject* attacker, Character* target, bool suppressNetMessage);  // 0x3b01b8 (writes the dead-state flags back)
    static void F_ApplyResult(const AttackResult& result, Character* attacker, Character* target, bool suppressNetMessage);  // 0x3b10b4
    static void F_GOAttack(AttackResult& result, GameObject* attacker, Character* target, int a, int b);          // 0x3b061c
    static void F_DotAttack(AttackResult& result, Character* attacker, Character* target, int a, int b);          // 0x3b2e68
    void F_SpellAttack(AttackResult& result, Character* attacker, Character* target, int a, int b);        // 0x3b3004
    void F_SkillAttack(AttackResult& result, Character* attacker, Character* target, int a, int b);        // 0x3b31a4
    void F_MeleeAttack(AttackResult& result, Character* attacker, Character* target, bool a, bool b);      // 0x3b3368
    static void _F_ResetResult(AttackResult& result);                                                      // 0x3af3b0
    static void _F_CalculateResult(AttackResult& result, Character* attacker, Character* target, int a, int b, int c, int d);  // 0x3b2638

    // ---- skills, stats and experience ----
    int GetCharSkillListId() const;                                     // 0x3bc5c0
    const void* GetCharSkillList() const;                               // 0x3bc5fc
    int GetSkillIDFromOID(int oid) const;                               // 0x3bc62c
    const void* GetCharSkill(int skill) const;                          // 0x3bc784
    int ResetSkills();                                                  // 0x3bc860 (returns SG_Save(); 0 without a savegame)
    bool CanIncrementSkill(int skill);                                  // 0x3bc9ec
    bool IsSkillAvailable(int skill) const;                             // 0x3bca50
    bool IsSkillEquippable(int skill) const;                            // 0x3bca84
    bool IsSkillUsable(int skill);                                      // 0x3bcad8
    bool IncSkill(int skill, bool a);                                   // 0x3bcc58 (true when a level was added, or when a is set and the skill could be raised)
    void VerifySpecialization();                                        // 0x3bd000
    void SetMP(int mp);                                                 // 0x3bd0c0
    void SetHP(int hp);                                                 // 0x3bd0d0
    int GetTotalMP() const;                                             // 0x3bd0e0
    int GetTotalHP() const;                                             // 0x3bd0f0
    int GetMP() const;                                                  // 0x3bd100
    int GetHP() const;                                                  // 0x3bd110
    int GetLevel() const;                                               // 0x3bd120
    int ValidateHPMP();                                                 // 0x3bd140 (Hex-Rays int; tail-called by the equip wrappers)
    void ResetStatsChange(int a, int b, int c, int d);                  // 0x3bd1cc
    int ResetStats();                                                   // 0x3bd26c (returns SG_Save(): 0 without a savegame)
    float GetHPPercent() const;                                         // 0x3bd2dc (float in the binary: __aeabi_fdiv)
    float GetMPPercent() const;                                         // 0x3bd338 (float in the binary: __aeabi_fdiv)
    float GetEffectiveThreatPerDamage() const;                          // 0x3bd394
    float GetEffectiveThreatPerHeal() const;                            // 0x3bd3bc
    float GetEffectiveThreatPerDamageToFriendly() const;                // 0x3bd3e4
    bool HasMana(int cost) const;                                       // 0x3bd40c
    void IncStatNrg();                                                  // 0x3bd4f8
    void IncStatEnd();                                                  // 0x3bd600
    void IncStatDex();                                                  // 0x3bd708
    void IncStatStr();                                                  // 0x3bd810
    void ModifyCharProps(int propId, int amount);                       // 0x3bda74
    void RegenMP(int amount);                                           // 0x3bdbb8
    void RegenHP(int amount);                                           // 0x3bdca4
    void RegenTick(bool inCombat);                                      // 0x3bdd90
    bool UseMana(int cost);                                             // 0x3bdef4
    void LevelUp(int levels);                                           // 0x3beb88
    bool _GiveXP(int xp, bool a);                                       // 0x3bf498 (returns 1 when the XP was granted; DistributeXP uses it)
    static void DistributeXP(Character* killer, Character* victim);     // 0x3bf828 (the original passes the killer as this; it may be null)

    // ---- savegame access (SG_*: thin wrappers over m_savegame, the PlayerSavegame at +0x14e8) ----
    int SG_GetSlot();  // 0x3bb728
    void SG_SetSlot(unsigned int);  // 0x3bb740
    void SG_SetPlayer(Character*);  // 0x3bb754
    void SG_Block(bool);  // 0x3bb770
    bool SG_IsBlocked();  // 0x3bb784
    void SG_SetUseSpawnPoint(bool);  // 0x3bb798
    void SG_RedoQuestSync();  // 0x3bb7d0
    const char* SG_GetPlayerName() const;  // 0x3bb7e8
    int SG_GetPlayerClass() const;  // 0x3bb7fc
    void SG_SetPlayerClass(int);  // 0x3bb814
    int SG_GetPlayerLevel();  // 0x3bb828
    void SG_SetPlayerLevel(int);  // 0x3bb840
    void SG_SetLevelId(int, int);  // 0x3bb854
    void SG_SetLevelEntryPoint(int, int);  // 0x3bb89c
    int SG_GetGameDifficulty();  // 0x3bb8e4
    int SG_GetGameDifficultyUnlocked();  // 0x3bb918
    void SG_SetGameDifficultyUnlocked(int);  // 0x3bb930
    void SG_SetGameDifficulty(int);  // 0x3bb950
    int SG_GetCurrentFaerieId(int) const;  // 0x3bb98c
    void SG_SetCurrentFaerie(unsigned int, int);  // 0x3bb9d8
    int SG_GetFaerieCount(int);  // 0x3bba20
    void SG_UnlockAllFastTravels();  // 0x3bba70
    void SG_SetFastTravelIdUnlocked(char const*, bool, int);  // 0x3bba84
    bool SG_GetFastTravelIdUnlocked(char const*, int);  // 0x3bbad0
    bool SG_GetFastTravelIdUnlocked(int, int);  // 0x3bbb08
    static void __SaveQuests(IFileStream*, void*);  // 0x3bbb40
    static void __LoadQuests(IStreamBase*, void*);  // 0x3bbb44
    void SG_SetFaerieState(unsigned int, int, int);  // 0x3bbb48
    bool SG_IsFaerieUnlocked(unsigned int, int);  // 0x3bbb94
    void SG_SetFaerieLevel(unsigned int, int, int);  // 0x3bbbcc
    int SG_GetFaerieLevel(unsigned int, int);  // 0x3bbc18
    void SG_SetSaveDate();  // 0x3bbc58
    bool SG_IsLevelLocked(int, int);  // 0x3bbc6c
    void SG_SetLevelState(int, int, int);  // 0x3bbca4
    int SG_GetLevelState(int, int);  // 0x3bbcf0
    bool SG_IsMapLocSeen(int, int);  // 0x3bbd30
    bool SG_IsMapLocLocked(int, int);  // 0x3bbd68
    void SG_SetMapLocState(int, int, int);  // 0x3bbda0
    int SG_GetMapLocState(int, int);  // 0x3bbdec
    void SG_ReloadSkills();  // 0x3bbe2c
    void SG_TellSlots(void (*cb)(int, unsigned int, void*), void*);  // 0x3bbe40
    void SG_SetSkillInSlot(int, unsigned int);  // 0x3bbe54
    int SG_GetSkillInSlot(int);  // 0x3bbe68
    int SG_GetSkillSlot(unsigned int);  // 0x3bbe84
    int SG_HasSkillSlots();  // 0x3bbea0 (-1 without a savegame; the original's return type is int)
    void SG_SetSkillLevel(unsigned int, int);  // 0x3bbebc
    int SG_GetSkillLevel(unsigned int) const;  // 0x3bbed0
    int SG_GetSkillId(unsigned int);  // 0x3bbeec
    void SG_SetPlayerName(char const*);  // 0x3bbf08
    void SG_SetCurrentAct(int, int);  // 0x3bbf40
    void SG_SetCurrentPrimaryQuest(int, int);  // 0x3bbfbc
    void SG_SetCurrentQuest(int, int);  // 0x3bc01c
    void SG_NeedToResendQuestSyncMsg();  // 0x3bc07c (no return value on any path; the caller ignores it)
    void SG_DBG_TraceDetailedQuestInformation(__sFILE*, int, int);  // 0x3bc1dc
    Quest* SG_GetNextQuest(bool (*cb)(Quest const*), int, int);  // 0x3bc228
    Quest* SG_GetQuestByName(char const*, int);  // 0x3bc274
    Quest* SG_GetQuestByID(bool (*cb)(Quest const*), int, int);  // 0x3bc2ac
    Quest* SG_GetQuestByID(int, int);  // 0x3bc2f8
    int SG_GetNumQuests(bool (*cb)(Quest const*), int);  // 0x3bc33c
    int SG_GetNumQuests(int);  // 0x3bc37c
    int SG_GetCurrentPrimaryQuest(int);  // 0x3bc400 (PlayerSavegame returns int; -1 without a savegame)
    int SG_GetCurrentQuest(int);  // 0x3bc440 (PlayerSavegame returns int; -1 without a savegame)
    int SG_Update(bool);  // 0x3bc480 (PlayerSavegame::SG_Update result; 0 without a savegame)
    void SG_SaveCheckpoint();  // 0x3bc494
    int SG_Save();  // 0x3bc4a8 (PlayerSavegame::SG_Save result; 0 without a savegame)
    void SG_LoadCheckpoint(int);  // 0x3bc4bc
    int SG_Load(int);  // 0x3bc4d0 (PlayerSavegame::SG_Load result; 0 without a savegame)
    static void _ClearMaster(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b5678
    static void _LookAtTarget(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b5684
    static void _ClearTarget(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b5690
    static void _Stop(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b56b4
    static void _GetMaster(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6c70
    static void _GetTarget(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6c7c
    static void _GetSpotTarget(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6c88
    static void _GetHitCount(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6cc8
    static void _GetPropHP(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6cd8
    static void _GetCharID(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6d5c
    static void _GetStateTime(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6d6c
    static void _GetState(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6d78
    static void _GetCurrentEquippedFaeryId(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6da0
    static void _GetEquippedFaeryElement(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6dc4
    static void _GetCurrentEquippedFaeryLevel(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6df8
    static void _GetCurrentSpellInfo(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6e30
    static void _GetCharAIFlags(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6e80
    static void _IsConnected(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6ec4
    static void _CanAttackFromRange(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6f10
    static void _HasMaster(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6f3c
    static void _HasTarget(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6f50
    static void _CanAttackInMelee(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6f64
    static void _HasBow(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6f84
    static void _HasShield(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6fa4
    static void _IsMasterHostPlayer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b6fc4
    static void _TargetInMeleeRange(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7020
    static void _HasAggro(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7044
    static void _StopTimer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7064
    static void _RegisterAnim(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b70d8
    static void _EnableSpotTargeting(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7144
    static void _SetLevel(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b73a4
    static void _ResumeTimer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b74a8
    static void _PauseTimer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b751c
    static void _StartTimer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7590
    static void _SetKnockBackState(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7680
    static void _RotateBy(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7704
    static void _RegenMP(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7774
    static void _RegenHP(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b77ec
    static void _UseMana(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7864
    static void _HasMana(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b78ec
    static void _AllowSkillBreak(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7974
    static void _AllowRotation(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b79ec
    static void _SetIsTargetable(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7a64
    static void _GetPropBonusDamage(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7acc
    static void _GetPropBonusCritRating(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7b28
    static void _GetPropBonusAttackRating(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7b84
    static void _RemoveDots(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7be0
    static void _DBG_DumpProps(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7dbc
    static void _Kill(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7e40
    static void _SetProp(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b7eac
    static void _AddAggro(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b8098
    static void _ClearProps(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b82e4
    static void _RemoveBuff(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b842c
    static void _GetSkillIDFromOID(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b856c
    static void _ClearAggro(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b8648
    static void _CreateBuff(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b86a8
    static void _DoSkill(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b8bd8
    static void _BeginSkill(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b8cb8
    static void _WarpBehind(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b8d98
    static void _LookAt(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b8ed8
    static void _SetTarget(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b8f38
    static void _GetCurrentSkillInfo(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b8f9c
    static void _SetMaster(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b9084
    static void _SetSpellCooldownTimerId(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b90e4
    static void _Flee(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b91a0
    static void _SpellCombatRoll(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b92a4
    static void _EndSkill(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b93cc
    static void _StopSkill(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b94ac
    static void _SetStunState(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b9580
    static void _SetScareState(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b96b0
    static void _SetSkillCooldownTimerId(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b97e0
    static void _SpawnSkillProjectile(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b99d0
    static void _GetProp(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b9d8c
    static void _Attack(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b9f44
    static void _SkillCombatRoll(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3b9fbc
    static void _SetProjectileTarget(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3ba298
    static void _PlayAnim(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3ba388
    static void _HeadTo(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3ba71c
    static void _ApplyPropClass(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3babdc
    static void _MoveTo(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3bada8
    static void _WarpTo(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData);  // 0x3bb268
    // ---- Lua bindings (registered by createBindings): userData is the Character ----

    // ---- misc ----
    // Unloads the script process of one entry of s_concurrentAI. The iterator is taken by value (ELF symbol without R):
    // the ABI passes a pointer to the caller's temporary, and the original's write-back goes to that temporary.
    void UnLoadScriptProcess(std::map<int, Character*>::iterator it, bool a);  // 0x3a7b24

    // ---- statics ----
    static std::map<int, Character*> s_concurrentAI;    // monsters whose AI scripts are running, keyed by real time
    static std::map<int, unsigned int> s_cachedCharOIDs;// object ids of characters cached by AddCharOIDToCache

    // ---- members ----
    // +0x000 GameObject .. +0x373, +0x374 v2Controllable, +0x37c ItemInventory, +0x3b4 CharTimers, +0x3c8 CharAI,
    // +0x49c CharAnimator, +0x4fc CharStateMachine, +0x560 CharProperties (to +0x1393): all bases, see above.
    std::uint8_t m_initPostDone;            // +0x1394 InitPost guard
    std::uint8_t m_initFinalDone;           // +0x1395 InitFinal guard; tested by SG_NeedToResendQuestSyncMsg
    std::uint8_t m_needsNetPlacement;       // +0x1396 1; InterpretIncomingNetStruct repositions once, then clears
    std::int8_t unk_1397;                   // +0x1397 -1
    std::string m_charTemplate;             // +0x1398 property "char_template" (24 bytes in the original)
    std::string m_charPropsName;            // +0x13b0 property "charpropsname". Decision open: the 32-bit const char* CharacterTable name that
                                            //   _CompileAnimSet (0x3c9b7c) reads at +0x13c4 falls inside this string (string size or a separate pointer)
    std::int16_t m_charPropsId;             // +0x13c8 row of Arrays::CharacterTable, -1 = unresolved (SafeGetCharPropsId)
    std::int16_t m_charPropsTemplateId;     // +0x13ca row of Arrays::Charater_Templates, -1 = unresolved
    std::string m_aiState;                  // +0x13cc property "ai_state" ("Limbus", "PreSpawn")
    bool m_aiStateVisible;                  // +0x13e4 property "ai_state_visible", default 1; PropertyMap::AddProperty<bool> (DeclareProperties 0x3a9fe4)
    std::uint8_t pad_13e5[3];
    std::string m_startingWaypoint;         // +0x13e8 property "starting_waypoint"
    std::string m_charGroup;                // +0x1400 property "char_group"
    std::string m_charGroupRole;            // +0x1418 property "char_group_role"
    bool m_autoSpawn;                       // +0x1430 property "auto_spawn", default 1; returned by CSM_Spawn; AddProperty<bool> (DeclareProperties 0x3a9fe4)
    std::uint8_t pad_1431[3];
    Point2D<int> m_spawnDelay;              // +0x1434 property "spawn_delay" (SimpleTypeProperty<Point2D<int>>, default 0,0): X the minimum spawn delay, Y (+0x1438) the maximum
    float m_spawnViewRadius;                // +0x143c property "spawn_view_radius" (not set by the ctor; type not confirmed)
    float unk_1440;                         // +0x1440 InitPost: (float) CharProperties value 210
    float unk_1444;                         // +0x1444 InitPost: (float) CharProperties value 211
    std::uint8_t m_lowHpSoundArmed;         // +0x1448 1; HitFor plays sfx_mc_low_hp / sfx_friend_low_hp once, then clears
    std::uint8_t m_dead;                    // +0x1449 serialized as "dead" bool; set by Kill, cleared by Revive
    std::uint8_t pad_144a[2];
    GameObject* m_killer;                   // +0x144c last killer / attacker set by Kill; cleared if it dies (UpdateAIPointers)
    Point3D<float> m_initialPosition;       // +0x1450 SetInitialPosition (z floor-corrected); AISMonster moves back to it
    Point3D<float> m_initialRotation;       // +0x145c copy of the rotation at +0x16c made by InitPost
    Point3D<float> m_savedPoint;            // +0x1468 serialized Point3D (role not recovered)
    Point3D<float> m_revivePosition;        // +0x1474 serialized; the local offline player is placed here by Revive
    std::uint8_t m_isDummy;                 // +0x1480 skips culling, ignores incoming net structs, never treated as local player
    std::uint8_t m_isSpawned;               // +0x1481 set by InitSpawned; blocks respawn (CanRespawn, GetRespawnDelay)
    std::uint8_t pad_1482[2];
    AnimatedFX* m_selfFX;                   // +0x1484 per-AI-row FX (merchant marker); DisableSelfFX
    std::int32_t m_selfFXBaseId;            // +0x1488 FX id base, row offset +0x30 of Arrays::AITable is added
    AnimatedFX* m_stateFX;                  // +0x148c stun / fear / slow FX; DisableStateFX
    std::int32_t m_stateFXId;               // +0x1490 state category 0/1/3/4 of m_stateFX, NOT an FX id (ee9946-3 compares it with the chosen category).
                                            //   rename candidate: m_stateFXState (rename not applied: game-character sources use m_stateFXId)
    AnimatedFX** m_targetCircleFX;          // +0x1494 array of 9 FX (operator new[](36)), ground circles for objects of interest
    std::int32_t m_targetCircleIndex;       // +0x1498 visible entry of m_targetCircleFX, -1 = none
    AnimatedFX* m_cursorFX;                 // +0x149c local-player FX from Arrays::DesignSettingsTable +0x88
    AnimatedFX* m_multiplayerHighlightFX;   // +0x14a0 AddMultiplayerHighlight / RemoveMultiplayerHighlight
    GameObject* m_objectOfInterest;         // +0x14a4 closest interactive object (UpdateObjectOfInterest)
    std::int8_t m_ooiInteractionType;       // +0x14a8 GetInteractionType result for it, -1 = none
    std::uint8_t pad_14a9;
    std::int16_t m_ooiRefreshTimer;         // +0x14aa ms until the next search (reset to 500)
    std::uint8_t m_ooiPriority;             // +0x14ac low bit of the target-list flags
    std::uint8_t m_ooiChanged;              // +0x14ad set when the object of interest changed this frame
    std::uint8_t pad_14ae[2];
    Point3D<float> m_spotTargetPos;         // +0x14b0 queued click while casting (Ctrl_Click)
    Point3D<float> m_spotTargetValidPos;    // +0x14bc position validated against PFWorld, drives the spot FX
    std::uint8_t m_spotTargetPending;       // +0x14c8
    std::uint8_t pad_14c9;
    std::int16_t m_spotTargetFXId;          // +0x14ca AnimatedFX id, -1 = none
    AnimatedFX* m_spotTargetFX;             // +0x14cc UpdateSpotTarget
    std::uint16_t unk_14d0;                 // +0x14d0 0; read as an unsigned 16-bit word by GetHitCount (0x3b6cc8). Retyped from int16 (every
                                            //   current use is a cast or an assignment). rename candidate: m_hitCount (rename not applied)
    std::uint8_t pad_14d2[2];
    Character* m_aggroRedirect;             // +0x14d4 0; Kill (0x3a5b18) sends the death event to this character instead of the aggro entry when it is set (*(Character**)(target+0x14d4))
    std::int32_t unk_14d8;                  // +0x14d8 0
    std::uint8_t unk_14dc;                  // +0x14dc 0
    std::uint8_t pad_14dd[3];
    TimerUtil* m_timerUtil;                 // +0x14e0 updated every frame; GetImmunityTimer(damageType) indexes this array
                                            //   from here (+0x14e0 + 4 * damageType), which overlaps +0x14e4..: see notes
    std::uint8_t m_isNetSpawned;            // +0x14e4 tested by Kill (skip level event) and InterpretIncomingNetStruct
    std::uint8_t m_netSpawnAcked;           // +0x14e5 Update sets it once the spawn was sent
    std::uint8_t pad_14e6[2];
    PlayerSavegame* m_savegame;             // +0x14e8 player save slot, destroyed by Clean (SG_* wrappers); null for non-players
    void* unk_14ec;                         // +0x14ec 0; owned object released by Clean through vtable slot +0x1c
    std::uint8_t m_freeMana;                // +0x14f0 UseMana is skipped when set (or by the debug switch)
    std::uint8_t pad_14f1[3];
    std::int32_t unk_14f4;                  // +0x14f4 -1
    std::int32_t unk_14f8;                  // +0x14f8 -1
    float m_combatTextCooldown;             // +0x14fc -1.0f; counts down by the frame time while > 0
    std::int32_t m_pendingGoldText;         // +0x1500 gold amount shown by Update as scrolling combat text, -1 = none
    std::int32_t m_pendingXPText;           // +0x1504 xp << 8 shown by Update, -1 = none
    NetStructCharacter m_netOut;            // +0x1508 filled by PopulateOutgoingNetStruct
    NetStructCharacter m_netIn;             // +0x1a48 read by InterpretIncomingNetStruct
    std::int32_t m_netLocalNumber;          // +0x1f88 the player record's +0x674 (the matching member id), stored by PlayerManager::_AddCharacter
    std::int32_t m_netInternalId;           // +0x1f8c the player record's +0x670 (internal id), stored by PlayerManager::_AddCharacter
    // End +0x1f90, the original allocation size. The constructor does not write these two words.
};
