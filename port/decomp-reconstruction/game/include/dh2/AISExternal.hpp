// AISExternal: the character AI whose hooks are driven by an external Lua script. It overrides the AI hooks
// that call the Lua functions of the same name (OnInit, OnUpdate, OnTargetInMeleeRange, ...) and gates them on
// the callback mask word at +0xb8. It adds no members: the mask word and the two counters that CharAIScript
// holds at +0xbc and +0xc0 are cleared by the constructor.
// Original 32-bit size 0xc4 (196), the same as AISDefault and CharAIScript (AISExternal's alloc is 196 bytes).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x3dd0e4 / 0x3dd128, dtors 0x3dd060 / 0x3dd094 /
// 0x3dd0b0, vtable _ZTV11AISExternal at 216 bytes). The class-facts file lists CharAIScript as the base, but the
// methods call AISDefault:: non-virtually and the destructor stores AISDefault's vtable, so this header derives
// from AISDefault.
#pragma once

#include "dh2/AISDefault.hpp"

class Character;
class GameObject;

class AISExternal : public AISDefault {
public:
    explicit AISExternal(bool skipBindings);                            // 0x3dd0e4 (C1), 0x3dd128 (C2); the flag goes to CharAIScript(bool)

    // Virtual overrides, in vtable slot order. AISExternal adds no virtual function, so every other slot
    // (OnMsg, OnStateChanged, OnAggro, OnTargetRevived, the AI timers, ...) is AISDefault's, inherited unchanged.
    ~AISExternal() override;                                            // slot 0/1: 0x3dd060 (D1), 0x3dd094 (D0, deleting); base object 0x3dd0b0 (D2)
    void OnInit() override;                                             // slot 2:  0x3dcea4 AISDefault::OnInit, then LuaScript::Call("OnInit")
    void OnInitPost() override;                                         // slot 3:  0x3dce54 LuaScript::Call("OnInitPost")
    void OnInitFinal() override;                                        // slot 4:  0x3dce44 LuaScript::Call("OnInitFinal")
    void OnTerminate() override;                                        // slot 5:  0x3dce34 LuaScript::Call("OnTerminate")
    void OnUpdate() override;                                           // slot 6:  0x3dce64 AISDefault::OnUpdate, Lua "OnUpdate" when mask bit 0 is set, then CallStateUpdate and CallStateConditions
    void OnDied(GameObject* killer) override;                           // slot 9:  0x3dd440
    void OnRevived(GameObject* reviver) override;                       // slot 10: 0x3dd3f0
    void OnFriendSpotted(Character* c) override;                        // slot 11: 0x3dd394
    void OnNeutralSpotted(Character* c) override;                       // slot 12: 0x3dd344
    void OnEnemySpotted(Character* c) override;                         // slot 13: 0x3dd2f4
    void OnTargetDied() override;                                       // slot 16: 0x3dce24
    void OnTargetOutOfSight() override;                                 // slot 18: 0x3dce14
    void OnTargetInSight() override;                                    // slot 19: 0x3dce04
    void OnTargetOutOfRange() override;                                 // slot 20: 0x3dcde8
    void OnTargetInRangedRange() override;                              // slot 21: 0x3dcdcc
    void OnTargetInCloseRange() override;                               // slot 22: 0x3dcdb0
    void OnTargetInMeleeRange() override;                               // slot 23: 0x3dcd94
    void OnMasterDied() override;                                       // slot 24: 0x3dcd84
    void OnMasterOutOfSight() override;                                 // slot 26: 0x3dcd74
    void OnMasterInSight() override;                                    // slot 27: 0x3dcd64
    void OnMasterOutOfRange() override;                                 // slot 28: 0x3dcd48
    void OnMasterInRangedRange() override;                              // slot 29: 0x3dcd2c
    void OnMasterInCloseRange() override;                               // slot 30: 0x3dcd10
    void OnMasterInMeleeRange() override;                               // slot 31: 0x3dccf4
    void OnEndOfAnim() override;                                        // slot 38: 0x3dccd0
    void OnProjectileHit(GameObject* target) override;                  // slot 43: 0x3dd2a0
    void OnCombatResults(GameObject* other, void* results) override;    // slot 46: 0x3dd250
    int InitVCB() override;                                             // slot 51: 0x3dcec8 AISDefault::InitVCB, then ORs the Lua hook bits (0x1..0x200) into the mask word at +0xb8

    // No members of its own: CharAIScript occupies +0x00 .. +0xc3 and the mask word, counters and state
    // inherited from it are the only fields the AISExternal constructor writes.
};
