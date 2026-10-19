// AISDefault: the built-in script AI for a Character. It derives from CharAIScript and handles the AI
// hooks that CharAI forwards to its script (target, master, aggro, combat, animation, collision).
// AISMonster, AISFaery and AISPlayer derive from it and override some of its hooks.
// Original 32-bit size 0xc4 (196): AISDefault adds no members, so it ends where CharAIScript ends.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x3dbf6c and 0x3dc968, the AISDefault
// instance built in CharAI::SetScript<AISDefault> at 0x3cce14, vtable _ZTV10AISDefault at 216 bytes).
// The constructor is inlined into CharAI::SetScript<AISDefault>; it calls CharAIScript(true).
#pragma once

#include <cstdint>

#include "dh2/CharAIScript.hpp"

class Character;
class GameObject;

class AISDefault : public CharAIScript {
public:
    // The constructor is inlined into CharAI::SetScript<AISDefault> (and into the AIS* subclasses' constructors): CharAIScript(skipBindings), then
    // the mask words unk_b8, unk_bc and unk_c0 are cleared.
    explicit AISDefault(bool skipBindings);

    // Virtual hooks, in vtable slot order (slots 0/1 are the destructors). Slots 2..50 override the
    // CharAIScript hooks, which mirror the CharAI hook list. Slot 51 (InitVCB) is new in AISDefault.
    ~AISDefault() override;                                             // slot 0/1: 0x3dbf6c (base object), 0x3dc968 (deleting)
    void OnInit() override;                                             // slot 2:  0x3dbe78
    void OnInitPost() override;                                         // slot 3:  0x3dbe7c
    void OnInitFinal() override;                                        // slot 4:  0x3dbe80
    void OnTerminate() override;                                        // slot 5:  0x3dbe84
    void OnUpdate() override;                                           // slot 6:  0x3dc798
    void OnMsg(int msg, const void* data) override;                     // slot 7:  0x3dbe88
    void OnStateChanged(int newState, int oldState) override;           // slot 8:  0x3dbe8c
    void OnDied(GameObject* killer) override;                           // slot 9:  0x3dbe90
    void OnRevived(GameObject* reviver) override;                       // slot 10: 0x3dbe94
    void OnFriendSpotted(Character* c) override;                        // slot 11: 0x3dbe98
    void OnNeutralSpotted(Character* c) override;                       // slot 12: 0x3dbe9c
    void OnEnemySpotted(Character* c) override;                         // slot 13: 0x3dbea0
    void OnAggro(Character* c) override;                                // slot 14: 0x3dbea4
    void OnDeAggro(Character* c) override;                              // slot 15: 0x3dbea8
    void OnTargetDied() override;                                       // slot 16: 0x3dbeac
    void OnTargetRevived() override;                                    // slot 17: 0x3dbeb0
    void OnTargetOutOfSight() override;                                 // slot 18: 0x3dbeb4
    void OnTargetInSight() override;                                    // slot 19: 0x3dbeb8
    void OnTargetOutOfRange() override;                                 // slot 20: 0x3dc698
    void OnTargetInRangedRange() override;                              // slot 21: 0x3dc560
    void OnTargetInCloseRange() override;                               // slot 22: 0x3dc300
    void OnTargetInMeleeRange() override;                               // slot 23: 0x3dc284
    void OnMasterDied() override;                                       // slot 24: 0x3dbebc
    void OnMasterRevived() override;                                    // slot 25: 0x3dbec0
    void OnMasterOutOfSight() override;                                 // slot 26: 0x3dbec4
    void OnMasterInSight() override;                                    // slot 27: 0x3dbec8
    void OnMasterOutOfRange() override;                                 // slot 28: 0x3dbecc
    void OnMasterInRangedRange() override;                              // slot 29: 0x3dbed0
    void OnMasterInCloseRange() override;                               // slot 30: 0x3dbed4
    void OnMasterInMeleeRange() override;                               // slot 31: 0x3dbed8
    void OnTimer(void* timer) override;                                 // slot 32: 0x3dbedc
    void OnStunExpired() override;                                      // slot 33: 0x3dbee0
    void OnFearExpired() override;                                      // slot 34: 0x3dbee4
    void OnAttackDelayExpired() override;                               // slot 35: 0x3dbee8
    void OnScriptTimer(unsigned int id) override;                       // slot 36: 0x3dcc80
    void OnAnimEvent(const char* name) override;                        // slot 37: 0x3dca50
    void OnEndOfAnim() override;                                        // slot 38: 0x3dbeec
    bool OnPreInteract() override;                                      // slot 39: 0x3dbef0
    void OnInteract() override;                                         // slot 40: 0x3dc1b0
    void OnPreAttack(int attackStep) override;                          // slot 41: 0x3dbef8
    void OnAttack(int a, int b, bool flag) override;                    // slot 42: 0x3dc12c
    void OnProjectileHit(GameObject* target) override;                  // slot 43: 0x3dbefc
    void OnKill(Character* victim) override;                            // slot 44: 0x3dbf00
    void OnCombatResults(Character* attacker, Character* victim, void* results) override;  // slot 45: 0x3dc9a8
    void OnCombatResults(GameObject* other, void* results) override;    // slot 46: 0x3dbf04
    void OnCollisionBegin(GameObject* other, bool flag) override;       // slot 47: 0x3dbf08
    void OnCollisionPersist(GameObject* other, bool flag) override;     // slot 48: 0x3dbfa0
    void OnCollisionEnd(GameObject* other, bool flag) override;         // slot 49: 0x3dbf40
    void OnCollisionResult(GameObject* other, bool flag) override;      // slot 50: 0x3dbf68
    virtual int InitVCB();                                                    // slot 51: 0x3dc7d8 sets the callback mask bits (OnTargetHit 0x800, OnTargetMissed 0x1000)

    // Static collision counter (ELF AISDefault::s_collisionCount, 4 bytes in .bss at 0x9a2c20). OnCollisionBegin adds one
    // and OnCollisionEnd subtracts one; the pseudocode shows no other type information, so it is declared int.
    static int s_collisionCount;

    // Lays out as the base: CharAIScript occupies +0x00 .. +0xc3 and AISDefault has no members of its own.
};
