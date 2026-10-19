// CharAI: per-character AI driver (target, master, aggro, script process, skills and spells).
// Embedded by value in Character at +0x3c8 (968); the next Character member (CharAnimator) is at +0x49c,
// so the original 32-bit size is 0xd4.
// Vtable (_ZTV6CharAI, 212 bytes): slots 0/1 are the destructors, slots 2..50 the AI event hooks below.
// Most hooks forward to the loaded script (m_script) at the same slot of its own vtable.
#pragma once

#include <array>
#include <cstdint>
#include <deque>
#include <list>
#include <map>
#include <string>
#include <utility>
#include <vector>

class Character;
class CharAIScript;
class CharAISkillScript;
class GameObject;
class Projectile;

class CharAI {
public:
    // One AI group (shared by the characters whose AI table row names the same group). Values of
    // s_groups, keyed by (group name, id). 0x2c bytes in the original.
    struct GroupInfo {
        GroupInfo();
        GroupInfo(const GroupInfo& other);        // 0x3d2de0
        ~GroupInfo();                             // 0x3d2cc0

        bool CanSpawn(Character* c);              // 0x3d24fc
        void OnDied(Character* c, GameObject* killer);          // 0x3d2628
        void OnEnemySpotted(Character* c, Character* enemy);    // 0x3d27cc
        bool CanRespawn(Character* c);            // 0x3d2a34

        std::vector<Character*> m_masterLeaders;  // +0x00 role 2
        std::vector<Character*> m_leaders;        // +0x0c role 1
        std::vector<Character*> m_members;        // +0x18 roles 0 and 3
        int m_allMembersDead;                     // +0x24 role 3 state (name: m_allMembersDead; suggested m_memberState): -1 unevaluated, 0 a member alive, 1 all members dead, 2 all members in limbus (OnDied 0x3d2628, CanRespawn 0x3d2a34)
        bool m_leadersDead;                       // +0x28
        bool m_triggered;                         // +0x29
        uint8_t pad_2a[2];                        // +0x2a
    };

    CharAI();                                     // 0x3ced50
    virtual ~CharAI();                            // slot 0 (0x3cd964 / 0x3cdb60), slot 1 deleting (0x3cdd5c)

    // Virtual event hooks, in vtable slot order (slots 2..50). Defaults forward to the script.
    virtual void OnInit();                        // slot 2,  0x3d12b0
    virtual void OnInitPost();                    // slot 3,  0x3d0b80
    virtual void OnInitFinal();                   // slot 4,  0x3d0ba4
    virtual void OnTerminate();                   // slot 5,  0x3d11bc
    virtual void OnUpdate();                      // slot 6,  0x3d1050
    virtual void OnMsg(int msg, const void* data);          // slot 7,  0x3d0bc8
    virtual void OnStateChanged(int newState, int oldState);  // slot 8,  0x3d0bec
    virtual void OnDied(GameObject* killer);      // slot 9,  0x3d1000
    virtual void OnRevived(GameObject* reviver);  // slot 10, 0x3d0f1c
    virtual void OnFriendSpotted(Character* c);   // slot 11, 0x3d2230
    virtual void OnNeutralSpotted(Character* c);  // slot 12, 0x3d217c
    virtual void OnEnemySpotted(Character* c);    // slot 13, 0x3d14b4
    virtual void OnAggro(Character* c);           // slot 14, 0x3d20c8
    virtual void OnDeAggro(Character* c);         // slot 15, 0x3d2014
    virtual void OnTargetDied();                  // slot 16, 0x3d1f60
    virtual void OnTargetRevived();               // slot 17, 0x3d1eb4
    virtual void OnTargetOutOfSight();            // slot 18, 0x3d2410
    virtual void OnTargetInSight();               // slot 19, 0x3d22e4
    virtual void OnTargetOutOfRange();            // slot 20, 0x3d1e00
    virtual void OnTargetInRangedRange();         // slot 21, 0x3d1d4c
    virtual void OnTargetInCloseRange();          // slot 22, 0x3d1ca0
    virtual void OnTargetInMeleeRange();          // slot 23, 0x3d1bf4
    virtual void OnMasterDied();                  // slot 24, 0x3d1b48
    virtual void OnMasterRevived();               // slot 25, 0x3d1a9c
    virtual void OnMasterOutOfSight();            // slot 26, 0x3d19f0
    virtual void OnMasterInSight();               // slot 27, 0x3d1944
    virtual void OnMasterOutOfRange();            // slot 28, 0x3d1898
    virtual void OnMasterInRangedRange();         // slot 29, 0x3d17ec
    virtual void OnMasterInCloseRange();          // slot 30, 0x3d1740
    virtual void OnMasterInMeleeRange();          // slot 31, 0x3d1694
    virtual void OnTimer(void* timer);            // slot 32, 0x3d0c10
    virtual void OnStunExpired();                 // slot 33, 0x3d0c34
    virtual void OnFearExpired();                 // slot 34, 0x3d0c58
    virtual void OnAttackDelayExpired();          // slot 35, 0x3d0c7c
    virtual void OnScriptTimer(unsigned int id);  // slot 36, 0x3d0ca0
    virtual void OnAnimEvent(const char* name);   // slot 37, 0x3d0cc4
    virtual void OnEndOfAnim();                   // slot 38, 0x3d0ce8
    virtual bool OnPreInteract();                 // slot 39, 0x3d0d0c
    virtual void OnInteract();                    // slot 40, 0x3d0d38
    virtual void OnPreAttack(int attackStep);     // slot 41, 0x3d0ed4
    virtual void OnAttack(int a, int b, bool flag);  // slot 42, 0x3d0e7c
    virtual void OnProjectileHit(GameObject* target);  // slot 43, 0x3d0d5c
    virtual void OnKill(Character* victim);       // slot 44, 0x3d0d80
    virtual void OnCombatResults(Character* attacker, Character* victim, void* results);  // slot 45, 0x3d0da4
    virtual void OnCombatResults(GameObject* other, void* results);                        // slot 46, 0x3d0dc8
    virtual void OnCollisionBegin(GameObject* other, bool flag);    // slot 47, 0x3d0dec
    virtual void OnCollisionPersist(GameObject* other, bool flag);  // slot 48, 0x3d0e10
    virtual void OnCollisionEnd(GameObject* other, bool flag);      // slot 49, 0x3d0e34
    virtual void OnCollisionResult(GameObject* other, bool flag);   // slot 50, 0x3d0e58

    // Setup and per-frame update
    void SetCharacter(Character* c);              // 0x3cb7c0
    void Update();                                // 0x3cfbf4
    int RaiseAIEvent(int eventId, void* data);    // 0x3cbb34 (returned by Character::RaiseEvent)
    void UpdatePointers();                        // 0x3cb454 (thunk to _UpdatePointers)
    void UpdateAllSkills();                       // 0x3d8894
    void UpdateSkills();                          // 0x3d8a04
    static void IncUpdateQueue();                 // 0x3ce9b8 (static: only the update queue statics are touched)
    static void HandleGroups();                   // 0x3d24f8 (static: the body is empty)
    static void ClearGroupInfo();                 // 0x3d2fb0 (clears s_groups; static: the body uses no member)
    void RemoveFromGroup();                       // 0x3d2ff8
    static void AddToGroup(Character* c);         // 0x3d37d0 (Hex-Rays types the Character as `this`)

    // Script process
    template <class T> void SetScript();          // 0x3ccaf4 (AISExternal), 0x3ccbe4 (AISMonster), 0x3cccf8 (AISFaery),
                                                  // 0x3cce14 (AISDefault), 0x3ccfe4 (AISPlayerIPhone), 0x3cd11c (AISPlayer)
    void SetScriptByName(const char* name);       // 0x3ceeb0
    bool IsScriptProcessLoaded() const;           // 0x3cb458
    void LoadScriptProcess();                     // 0x3cf1f0
    bool LoadNInitScriptProcess(bool flag);       // 0x3cf3a4
    void InitScriptProcess(bool flag);            // 0x3ce7c0
    void AIUnLoadScriptProcess(bool force);       // 0x3cc9dc
    void SetSkillsAndSpells();                    // 0x3ce044
    void AI_ReloadSkills();                       // 0x3d8cfc
    void AI_ScriptInit();                         // 0x3cfde4
    void AI_ScriptCleanUp();                      // 0x3cfd7c
    void AI_SendMessage(int msg, const void* data);  // 0x3cfd68
    int AI_PauseUpdate(unsigned int ms);          // 0x3cb748 (returns the TMR_Start slot)
    bool IsMyTurn(const CharAI* other);           // 0x3cc484 (the argument is unused)

    // Targets and master
    void AI_SetTarget(GameObject* target, bool force);    // 0x3d6890
    void AI_SyncLastTarget();                     // 0x3d49c4
    Character* AI_GetTargetAsCharacter() const;   // 0x3d541c
    Character* AI_GetTargetAsCharacter();         // 0x3d5450
    bool AI_IsTargetACharacter() const;           // 0x3d5484
    bool AI_IsTargetSeeking() const;              // 0x3d49d0
    int AI_PauseTargetSeeking(unsigned int ms);   // 0x3d53ec (returns the TMR_Start slot)
    void AI_SetMaster(Character* master);         // 0x3d4d80
    void AI_SetDead();                            // 0x3d6cdc
    void AI_InteractWith(GameObject* obj);        // 0x3cff34
    void AI_DoMeleeAttack(GameObject* target, bool flag);  // 0x3d01ac
    void AI_DoRangeAttack(GameObject* target, bool flag);  // 0x3d076c

    // Relations and ranges
    bool AI_IsInCombat() const;                   // 0x3d4bc4
    float AI_GetMeleeRadius() const;              // 0x3d4c34
    float AI_GetMeleeRadiusSq() const;            // 0x3d4c9c
    bool AI_IsCloserThan(float dist, const GameObject* obj) const;  // 0x3d4cb0
    bool AI_IsInSight(float dist) const;          // 0x3d4ea0
    bool AI_IsInSight(const GameObject* obj) const;  // 0x3d4ed8
    bool AI_IsInInteractionRange(const GameObject* obj) const;      // 0x3d4f98
    bool AI_IsFriend(const GameObject* obj) const;   // 0x3d511c
    bool AI_IsEnemy(const GameObject* obj) const;    // 0x3d574c
    bool AI_IsNeutral(const GameObject* obj) const;  // 0x3d5a98
    bool AI_IsInMeleeRange(const GameObject* obj) const;  // 0x3d6188
    bool AI_IsInCloseRange(const GameObject* obj) const;  // 0x3d63d8
    bool AI_IsInRange(const GameObject* obj) const;       // 0x3d6604
    bool AI_CanAttack(GameObject* obj) const;     // 0x3d67f4

    // Aggro (m_aggro: my aggro toward others; m_aggroedBy: others' aggro toward me)
    bool AI_HasAggro() const;                     // 0x3d49f0
    bool AI_IsAggroed() const;                    // 0x3d4a00
    int AI_GetAggroCount() const;                 // 0x3d4a10
    Character* AI_GetHighestAggro() const;        // 0x3d4a18
    float AI_GetAggro(Character* c) const;        // 0x3d4ac8
    void AI_GetAggroEntry(int index, Character*& c, float& aggro) const;  // 0x3d72d0
    std::map<float, Character*> AI_GetRelationsConverseMap(const std::map<Character*, float>& m) const;  // 0x3d7208
    float AI_SetAggro(Character* c, float aggro);  // 0x3d79ec (returns the aggro set, or 0 when refused)
    float AI_AddAggro(Character* c, float aggro);  // 0x3d7c68 (returns the aggro actually added: AI_SetAggro result minus the old value)
    void AI_ClearAggro(Character* c);             // 0x3d6d68
    void AI_ClearAllAggro();                      // 0x3d5fa8
    static void ClearAllAggro();                  // 0x3cd384 (static: the body walks the object manager)
    void AI_ClearAllAggroTowardMe(bool flag);     // 0x3d6abc

    // Spells and skills
    bool AI_IsSpellActive() const;                // 0x3d7d9c
    void AI_CancelSpell();                        // 0x3d7da4
    void AI_SpellInfo(float& info) const;         // 0x3d7da8 (no return value: CharAISkillScript::GetInfo is void)
    void AI_SkillInfo(unsigned int a, unsigned int b, float& info) const;  // 0x3d7e88 (no return value, as above)
    void AI_EndSpell(bool flag);                  // 0x3d7f60
    bool AI_IsSpellUsable() const;                // 0x3d80b4
    bool AI_BeginSpell(bool flag);                // 0x3d81c0
    bool AI_CastSpell();                          // 0x3d832c
    bool AI_IsSkillUsable(unsigned int skill) const;  // 0x3d8358
    void AI_EndSkill(unsigned int skill);         // 0x3d8474
    void AI_CancelSkill(unsigned int skill);      // 0x3d84e0
    bool AI_IsSkillActive(unsigned int skill) const;  // 0x3d85d4
    bool AI_BeginSkill(unsigned int skill);       // 0x3d86bc
    bool AI_UseSkill(unsigned int skill);         // 0x3d8868

    // Process-wide state (static members seen in the binary: s_updateQueue, s_updateTimer, s_stepAvailableStep, s_groups)
    static std::deque<CharAI*> s_updateQueue;
    static int s_updateTimer;
    static int s_stepAvailableStep;
    static std::map<std::pair<std::string, int>, GroupInfo> s_groups;

public:
    void _UpdatePointers();                       // 0x3cb34c
    int _UpdateRegen();                           // 0x3cb77c (returns the IsRemotelyUpdated result)
    int _UpdateTarget();                          // 0x3cb908 (returns the last event result)
    int _UpdateMaster();                          // 0x3cc5a4 (returns the last event result)
    void _UpdateAggro();                          // 0x3cf3f0
    static int _HandleProjectile(Projectile* p, void* data);  // 0x3cc280 (static: the callback takes it as a plain function)
    void _ClearNonStickyTarget();                 // 0x3d8d70

    static void StepResetAvailableStep();         // 0x3cb2f0 (static: the body only sets s_stepAvailableStep)
    void StepInitScript();                        // 0x3cb314
    int StepQueryAvailableStep(int needed);       // 0x3cb854
    void StepLoadCommon();                        // 0x3cc218
    void StepSetCharacter();                      // 0x3cc26c
    void StepBindFunction();                      // 0x3cc278
    void StepLoadScript();                        // 0x3cdf7c
    void StepCreateScript();                      // 0x3cf04c

    bool _OnEndOfAnimSection();                   // 0x3d3ae4
    bool _OnEndOfAnim();                          // 0x3d3aec
    void _ParseObjectAnimEvent(const char* name); // 0x3d3af4 (the original's return value is a leftover; no caller reads it)
    bool _OnAnimSequenceEnd();                    // 0x3d3d30
    bool _OnAnimSequenceBegin();                  // 0x3d3d4c
    bool _OnAnimStepEnd_SkillSpell();             // 0x3d3d68
    bool _OnAnimStepBegin_SkillSpell();           // 0x3d3dd4
    bool _OnAnimStepEnd_Attack();                 // 0x3d3e44
    bool _OnAnimStepEnd();                        // 0x3d3ff8
    bool _OnAnimStepBegin_Attack();               // 0x3d4044
    bool _OnAnimStepBegin_Move();                 // 0x3d4120
    bool _OnAnimStepBegin();                      // 0x3d4204
    bool _OnAnimEvent(const char* name);          // 0x3d4434

    void _SpellFocus();                           // 0x3d8038
    void _SkillFocus();                           // 0x3d808c
    static void _UpdateSkillsCB(int a, unsigned int b, void* user);  // 0x3d8948
    void _SpellCleanUp();                         // 0x3d8a98
    void _SkillCleanUp();                         // 0x3d8ae0
    void _SpellBlur();                            // 0x3d8b28
    void _SkillBlur();                            // 0x3d8b7c
    void _SpellEvent();                           // 0x3d8ba4
    void _SkillEvent();                           // 0x3d8bf8

    // _vptr                                      // +0x00
    Character* m_character;                       // +0x04 owner
    int m_updateDelay;                            // +0x08 ms countdown between AI updates (re-armed to 100..299)
    int m_updateWaited;                           // +0x0c ms accumulated while waiting for this AI's turn (cap 500)
    int m_aiTickTimer;                            // +0x10 CharTimers slot of the "AI_Tick" timer (event 51), -1 = none
    int m_dotTimer;                               // +0x14 CharTimers slot of the "DoT_Tick" timer (event 52), -1 = none
    bool m_updatePaused;                          // +0x18 set by AI_PauseUpdate, cleared by timer event 49
    uint8_t pad_19[3];                            // +0x19
    CharAIScript* m_script;                       // +0x1c live script; hooks forward to it. Set when load step 6 completes
    CharAIScript* m_scriptLoading;                // +0x20 script object being built/owned (SetScript<T> stores here)
    bool m_stagedLoad;                            // +0x24 load the script process one step per frame instead of all at once
    uint8_t pad_25[3];                            // +0x25
    int m_loadStep;                               // +0x28 0..7; >6 means loaded (IsScriptProcessLoaded)
    bool m_usesCommons;                           // +0x2c "_commons" Lua file is loaded before the script
    uint8_t pad_2d[3];                            // +0x2d
    const char* m_scriptName;                     // +0x30 Lua script file for AISExternal, null for built-in scripts
    GroupInfo* m_group;                           // +0x34 points at the value inside s_groups
    int m_groupRole;                              // +0x38 -1 none, 0 Normal, 1 Leader, 2 MasterLeader, 3 Group
    GameObject* m_requestedTarget;                // +0x3c last argument of AI_SetTarget
    GameObject* m_target;                         // +0x40
    GameObject* m_lastTarget;                     // +0x44 AI_SyncLastTarget copies m_target here
    bool m_targetAlive;                           // +0x48 cached !IsDead of the target (events 10/11)
    bool m_targetInSight;                         // +0x49 events 12/13
    bool m_targetSeeking;                         // +0x4a false while AI_PauseTargetSeeking runs (event 50 re-enables)
    bool m_stickyTarget;                          // +0x4b ctor 1; _ClearNonStickyTarget only clears when false
    bool m_interacting;                           // +0x4c interact request already issued for the target
    bool unk_4d;                                  // +0x4d ctor 1
    uint8_t pad_4e[2];                            // +0x4e
    Character* m_master;                          // +0x50
    bool m_masterAlive;                           // +0x54 ctor 1 (events 18/19)
    bool m_masterInSight;                         // +0x55 ctor 1 (events 20/21)
    uint8_t pad_56[2];                            // +0x56
    GameObject* unk_58;                           // +0x58 object pointer cleared by _UpdatePointers when destroyed
    std::map<unsigned int, Character*> unk_5c;    // +0x5c STLport map header +0x5c..+0x6b, count +0x6c; values cleared by _UpdatePointers
    uint32_t unk_70;                              // +0x70 untouched by the ctor
    int m_attackStep;                             // +0x74 step index passed to OnPreAttack
    bool m_attacking;                             // +0x78 melee attack in progress
    bool m_attackLastStep;                        // +0x79 current attack step is the final one
    bool m_attackCommitted;                       // +0x7a
    uint8_t pad_7b;                               // +0x7b
    std::map<Character*, float> m_aggro;          // +0x7c my aggro toward other characters (header +0x7c, count +0x8c)
    uint8_t pad_90[4];                            // +0x90 untouched
    std::map<Character*, float> m_aggroedBy;      // +0x94 others' aggro toward me (header +0x94, count +0xa4)
    uint8_t pad_a8[4];                            // +0xa8 untouched
    std::list<std::array<uint32_t, 4>> unk_ac;    // +0xac STLport list, 8-byte header, 16-byte payload per node; contents unknown
    std::vector<CharAISkillScript*> m_skillScripts;  // +0xb4 per CharSkill, deleted on unload (begin +0xb4, end +0xb8, cap +0xbc)
    std::vector<CharAISkillScript*> m_spellScripts;  // +0xc0 per faery spell, deleted on unload (begin +0xc0, end +0xc4, cap +0xc8)
    int m_curSkill;                               // +0xcc ctor -1; skill index set by AI_BeginSkill
    bool m_skillStepBegun;                        // +0xd0 set when the skill/spell anim step begins
    bool m_skillStepEnded;                        // +0xd1
    uint8_t pad_d2[2];                            // +0xd2
};
