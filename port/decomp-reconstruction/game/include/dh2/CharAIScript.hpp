// CharAIScript: the abstract Lua-driven AI script base. CharAI holds one subclass (AISExternal, AISDefault,
// AISMonster, AISFaery, AISPlayer, AISPlayerIPhone) as m_script and forwards its AI event hooks to it. It owns
// the owning Character, the state table filled by RegisterAIState and the current state set by ChangeAIState.
// Original 32-bit size 0xc4 (196). AISExternal and AISDefault add no members; AISFaery adds a dword at +0xc4.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x3d8f44 / 0x3d8fb0, dtors 0x3d926c / 0x3d92d4 /
// 0x3d92f0, vtable _ZTV12CharAIScript at 212 bytes: slots 0/1 the destructors, slots 2..50 the AI hooks).
// Every hook slot holds __cxa_pure_virtual in this class, so CharAIScript is abstract.
#pragma once

#include <cstdint>
#include <map>
#include <string>

#include "dh2/LuaScript.hpp"

class Character;
class GameObject;
namespace sfc {
namespace script {
namespace lua {
class Arguments;
class ReturnValues;
}  // namespace lua
}  // namespace script
}  // namespace sfc

class CharAIScript : public LuaScript {
public:
    // One registered AI state, stored in m_states by name. Original 32-bit size 0x60 (96): four std::string
    // of 24 bytes each. RegisterAIState takes the name and then the update, conditions, init and post
    // Lua function names, in that order.
    struct _State {
        _State();                                                       // 0x3d9684
        _State(const _State& other);                                    // 0x3d9648
        ~_State();                                                      // 0x3d91b8

        std::string m_update;                                           // +0x00 Lua function run by CallStateUpdate
        std::string m_conditions;                                       // +0x18 Lua function run by CallStateConditions
        std::string m_init;                                             // +0x30 Lua function run by CallStateInit
        std::string m_post;                                             // +0x48 Lua function run by CallStatePost
    };

    explicit CharAIScript(bool skipBindings);                           // 0x3d8f44 (C1), 0x3d8fb0 (C2); BindFunction runs when false
    ~CharAIScript() override;                                           // slot 0: 0x3d926c (D1), 0x3d92f0 (D2); slot 1: 0x3d92d4 (D0, deleting)

    // AI event hooks, vtable slots 2..50, in slot order. The names and signatures mirror the CharAI hook list
    // that CharAI forwards to m_script. Each is pure in CharAIScript and is overridden by the AIS* subclasses.
    virtual void OnInit() = 0;                                          // slot 2
    virtual void OnInitPost() = 0;                                      // slot 3
    virtual void OnInitFinal() = 0;                                     // slot 4
    virtual void OnTerminate() = 0;                                     // slot 5
    virtual void OnUpdate() = 0;                                        // slot 6
    virtual void OnMsg(int msg, const void* data) = 0;                  // slot 7
    virtual void OnStateChanged(int newState, int oldState) = 0;        // slot 8
    virtual void OnDied(GameObject* killer) = 0;                        // slot 9
    virtual void OnRevived(GameObject* reviver) = 0;                    // slot 10
    virtual void OnFriendSpotted(Character* c) = 0;                     // slot 11
    virtual void OnNeutralSpotted(Character* c) = 0;                    // slot 12
    virtual void OnEnemySpotted(Character* c) = 0;                      // slot 13
    virtual void OnAggro(Character* c) = 0;                             // slot 14
    virtual void OnDeAggro(Character* c) = 0;                           // slot 15
    virtual void OnTargetDied() = 0;                                    // slot 16
    virtual void OnTargetRevived() = 0;                                 // slot 17
    virtual void OnTargetOutOfSight() = 0;                              // slot 18
    virtual void OnTargetInSight() = 0;                                 // slot 19
    virtual void OnTargetOutOfRange() = 0;                              // slot 20
    virtual void OnTargetInRangedRange() = 0;                           // slot 21
    virtual void OnTargetInCloseRange() = 0;                            // slot 22
    virtual void OnTargetInMeleeRange() = 0;                            // slot 23
    virtual void OnMasterDied() = 0;                                    // slot 24
    virtual void OnMasterRevived() = 0;                                 // slot 25
    virtual void OnMasterOutOfSight() = 0;                              // slot 26
    virtual void OnMasterInSight() = 0;                                 // slot 27
    virtual void OnMasterOutOfRange() = 0;                              // slot 28
    virtual void OnMasterInRangedRange() = 0;                           // slot 29
    virtual void OnMasterInCloseRange() = 0;                            // slot 30
    virtual void OnMasterInMeleeRange() = 0;                            // slot 31
    virtual void OnTimer(void* timer) = 0;                              // slot 32
    virtual void OnStunExpired() = 0;                                   // slot 33
    virtual void OnFearExpired() = 0;                                   // slot 34
    virtual void OnAttackDelayExpired() = 0;                            // slot 35
    virtual void OnScriptTimer(unsigned int id) = 0;                    // slot 36
    virtual void OnAnimEvent(const char* name) = 0;                     // slot 37
    virtual void OnEndOfAnim() = 0;                                     // slot 38
    virtual bool OnPreInteract() = 0;                                   // slot 39
    virtual void OnInteract() = 0;                                      // slot 40
    virtual void OnPreAttack(int attackStep) = 0;                       // slot 41
    virtual void OnAttack(int a, int b, bool flag) = 0;                 // slot 42
    virtual void OnProjectileHit(GameObject* target) = 0;               // slot 43
    virtual void OnKill(Character* victim) = 0;                         // slot 44
    virtual void OnCombatResults(Character* attacker, Character* victim, void* results) = 0;  // slot 45
    virtual void OnCombatResults(GameObject* other, void* results) = 0;                       // slot 46
    virtual void OnCollisionBegin(GameObject* other, bool flag) = 0;    // slot 47
    virtual void OnCollisionPersist(GameObject* other, bool flag) = 0;  // slot 48
    virtual void OnCollisionEnd(GameObject* other, bool flag) = 0;      // slot 49
    virtual void OnCollisionResult(GameObject* other, bool flag) = 0;   // slot 50
    virtual int InitVCB() = 0;                                          // slot 51 (AISDefault::InitVCB, 0x3dc7d8, implements it; CharAI::StepInitScript and SetSkillsAndSpells call it)

    // Script setup and Lua bindings. SetCharacter stores the owner, then calls its createBindings
    // (virtual slot +0x0c) with the Binder at +0x10, then sets the script directory to "data/scripts/ai/".
    void SetCharacter(Character* c);                                    // 0x3d90f8
    void BindFunction();                                                // 0x3d8f2c: LuaScript::BindFunction, then CharAIScriptBindFunction
    void CharAIScriptBindFunction();                                    // 0x3d8ec8: binds "RegisterAIState" and "ChangeAIState"

    // State machine. Each CallState* runs one Lua function of the current state through LuaScript::Call and
    // does nothing when m_currentState is null.
    void CallStatePost();                                               // 0x3d8e78
    void CallStateInit();                                               // 0x3d8e8c
    void CallStateConditions();                                         // 0x3d8ea0
    void CallStateUpdate();                                             // 0x3d8eb4

    // Lua callbacks (void* is the CharAIScript the binding was registered with).
    static void _RegisterState(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);  // 0x3da144
    static void _ChangeState(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self);    // 0x3d9710

    // LuaScript occupies +0x00 .. +0x97.
    Character* m_character;                                             // +0x98 owner; SetCharacter stores it (ctor 0)
    std::map<std::string, _State> m_states;                             // +0x9c state table keyed by name (STLport tree header, 24 bytes, +0x9c .. +0xb3)
    _State* m_currentState;                                             // +0xb4 current state, a pointer to the mapped value; null until ChangeAIState; ctor 0
    uint32_t unk_b8;                                                    // +0xb8 bit 0 gates LuaScript::Call("OnUpdate") in AISExternal::OnUpdate; AISExternal ctor clears it
    uint32_t unk_bc;                                                    // +0xbc unsigned counter read by AISDefault::OnUpdate (over 199 pauses CharAI for 1000 ms); AISExternal ctor clears it
    uint32_t unk_c0;                                                    // +0xc0 cleared by the AISExternal ctor, no other reader found yet
};
