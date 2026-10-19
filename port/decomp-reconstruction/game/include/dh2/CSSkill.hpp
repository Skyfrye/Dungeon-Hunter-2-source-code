// CSSkill: CharState for a character using a skill. Entered through CharStateMachine::SM_SetSkillState.
// OnInit registers the skill's event transitions (50001, 50004, 50005, 50008, 50010 to 50013) on the character's
// state machine. OnEvent handles the "is_stoppable" event by setting a flag on the Character.
// Vtable (_ZTV7CSSkill, 36 bytes): two destructor slots, then the five CharState slots, all overridden here.
// OnUpdate is a source no-op (bx lr). No data members: the bodies touch only the Character and the state machine
// they are passed. Original 32-bit size 0x4 (vtable pointer only), inferred from the absence of members.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x3c0014 / 0x3c095c, OnInit 0x3c8438).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSSkill : public CharState {
public:
    ~CSSkill() override;                                                                    // slot +0x00: 0x3c0014 (D1), slot +0x04: 0x3c095c (D0)

    // Overrides of CharState slots, in vtable order. Hex-Rays return values are incidental, so void is declared.
    void OnInit(int stateId, Character* character, CharStateMachine* sm) override;          // slot +0x08: 0x3c8438
    void OnFocus(int stateId, Character* character, CharStateMachine* sm,
                 int arg5, int arg6, void* data) override;                                  // slot +0x0c: 0x3c4480
    void OnBlur(int stateId, Character* character, CharStateMachine* sm, int arg5) override; // slot +0x10: 0x3c434c
    void OnUpdate(int stateId, Character* character, CharStateMachine* sm) override;        // slot +0x14: 0x3c0018 (no-op)
    void OnEvent(int stateId, Character* character, CharStateMachine* sm,
                 int eventId, void* data) override;                                         // slot +0x18: 0x3c0ac8
};
