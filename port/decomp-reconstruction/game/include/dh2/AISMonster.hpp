// AISMonster: the AI for monsters. A subclass of AISDefault with no members of its own. It overrides the
// target and enemy hooks so a monster idles, sees a target and goes back to its home position.
// Original 32-bit size 0xc4 (196), the same as AISDefault.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x3dd498 and 0x3dd7b0, the instance built in
// CharAI::SetScript<AISMonster> at 0x3ccbe4 with the AISDefault vtable as its base vtable).
// The constructor is inlined into CharAI::SetScript<AISMonster>.
#pragma once

#include "dh2/AISDefault.hpp"

class Character;

class AISMonster : public AISDefault {
public:
    explicit AISMonster(bool skipBindings);                             // inlined into CharAI::SetScript<AISMonster>: AISDefault(skipBindings)

    // Virtual hooks, in vtable slot order. Only the overrides are listed here. The rest are inherited from AISDefault.
    ~AISMonster() override;                                             // slot 0/1: 0x3dd498 (base object), 0x3dd7b0 (deleting)
    void OnUpdate() override;                                           // slot 6:  0x3dd588
    void OnEnemySpotted(Character* c) override;                         // slot 13: 0x3dd4cc
    void OnTargetDied() override;                                       // slot 16: 0x3dd550
    void OnTargetRevived() override;                                    // slot 17: 0x3dd490
    void OnTargetOutOfSight() override;                                 // slot 18: 0x3dd500
    void OnTargetInSight() override;                                    // slot 19: 0x3dd494
};
