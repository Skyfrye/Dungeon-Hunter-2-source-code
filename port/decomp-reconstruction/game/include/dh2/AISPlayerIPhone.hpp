// AISPlayerIPhone: the iPhone variant of AISPlayer. It has the AISPlayer layout and its own
// target-range hooks.
// Original 32-bit size 0xd8 (216), the same as AISPlayer.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x3de174 and 0x3de294; the instance built in
// CharAI::SetScript<AISPlayerIPhone> at 0x3ccfe4, which runs the AISPlayer constructor before setting its own vtable).
#pragma once

#include "dh2/AISPlayer.hpp"

class AISPlayerIPhone : public AISPlayer {
public:
    explicit AISPlayerIPhone(bool skipBindings) : AISPlayer(skipBindings) {}  // inlined into CharAI::SetScript<AISPlayerIPhone>

    // Virtual hooks, in vtable slot order. Only the overrides are listed here. The rest are inherited from AISPlayer.
    ~AISPlayerIPhone() override;                                        // slot 0/1: 0x3de174 (base object), 0x3de294 (deleting)
    void OnTargetOutOfRange() override;                                 // slot 20: 0x3de1b4
    void OnTargetInRangedRange() override;                              // slot 21: 0x3de1b0
    void OnTargetInCloseRange() override;                               // slot 22: 0x3de1ac
    void OnTargetInMeleeRange() override;                               // slot 23: 0x3de1a8
};
