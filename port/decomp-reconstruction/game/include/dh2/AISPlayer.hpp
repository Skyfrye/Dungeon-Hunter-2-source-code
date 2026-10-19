// AISPlayer: the AI for a player-controlled character. A subclass of AISDefault. It counts the aggro
// the player has taken and drives the combat music, and it keeps a list of Character pointers.
// Original 32-bit size 0xd8 (216): AISDefault (0xc4), a std::vector<Character*> at +0xc4 (12 bytes), and
// two ints at +0xd0 and +0xd4.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x3dd99c, 0x3dda18, 0x3de100; the instance built
// in CharAI::SetScript<AISPlayer> at 0x3cd11c). Debug strings name the aggro counters.
#pragma once

#include <vector>

#include "dh2/AISDefault.hpp"

class Character;

class AISPlayer : public AISDefault {
public:
    explicit AISPlayer(bool skipBindings);                              // inlined into CharAI::SetScript<AISPlayer>: AISDefault(skipBindings), empty vector, counts 0

    // Virtual hooks, in vtable slot order. Only the overrides are listed here. The rest are inherited from AISDefault.
    ~AISPlayer() override;                                              // slot 0/1: 0x3dd99c (complete object, D1), 0x3dda18 (deleting, D0); 0x3de100 (D2, base object) is a second copy
    void OnTargetDied() override;                                       // slot 16: 0x3dd84c
    void OnEnemySpotted(Character* c) override;                         // slot 13: 0x3dda34
    void OnAggro(Character* c) override;                                // slot 14: 0x3ddb70
    void OnDeAggro(Character* c) override;                              // slot 15: 0x3dde48
    void OnTargetInMeleeRange() override;                               // slot 23: 0x3dd7f0
    void OnAttack(int a, int b, bool flag) override;                    // slot 42: 0x3dd7ec, thunk to AISDefault::OnAttack
    void OnKill(Character* victim) override;                            // slot 44: 0x3ddb10
    int InitVCB() override;                                             // slot 51: 0x3dd884, adds the OnKill bit (0x400) to the AISDefault mask

    // AISDefault occupies +0x00 .. +0xc3.
    std::vector<Character*> unk_c4;                                     // +0xc4 begin/end/capacity; OnDeAggro empties it when AggroCount reaches 0
    int m_aggroCount;                                                   // +0xd0 "AggroCount" in the OnAggro/OnDeAggro debug output; +1 per aggro, -1 per de-aggro
    int m_aggroForMusic;                                                // +0xd4 "AggroForMusic" in the same output; changed only for local or offline players
};
