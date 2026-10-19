// CSSpawn: CharState for a character spawning in. Entered through CharStateMachine::SM_SetSpawnState.
// OnInit registers event 50008 to CSDead (state 12) on the character's state machine. OnUpdate is a source no-op.
// Vtable (_ZTV7CSSpawn, 36 bytes): two destructor slots, then the five CharState slots, all overridden here.
// No data members: the bodies touch only the Character and the state machine they are passed. Original 32-bit
// size 0x4 (vtable pointer only), inferred from the absence of members.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x3bffec / 0x3c0a60, OnInit 0x3c7d0c).
#pragma once

#include "dh2/CharState.hpp"

class Character;
class CharStateMachine;

class CSSpawn : public CharState {
public:
    ~CSSpawn() override;                                                                    // slot +0x00: 0x3bffec (D1), slot +0x04: 0x3c0a60 (D0)

    // Overrides of CharState slots, in vtable order. Hex-Rays return values are incidental, so void is declared.
    void OnInit(int stateId, Character* character, CharStateMachine* sm) override;          // slot +0x08: 0x3c7d0c
    void OnFocus(int stateId, Character* character, CharStateMachine* sm,
                 int arg5, int arg6, void* data) override;                                  // slot +0x0c: 0x3c35ec
    void OnBlur(int stateId, Character* character, CharStateMachine* sm, int arg5) override; // slot +0x10: 0x3c2f7c
    void OnUpdate(int stateId, Character* character, CharStateMachine* sm) override;        // slot +0x14: 0x3bfff0 (no-op)
    void OnEvent(int stateId, Character* character, CharStateMachine* sm,
                 int eventId, void* data) override;                                         // slot +0x18: 0x3c0b04
};
