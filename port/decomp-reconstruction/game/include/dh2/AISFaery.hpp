// AISFaery: the AI for a faery that follows its master. A subclass of AISDefault. It keeps the id of the
// faery form it shows and updates the visual skin when the master's current faery changes.
// Original 32-bit size 0xc8 (200): AISDefault (0xc4) plus one int at +0xc4.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x3de2e4 and 0x3de688, the instance built in
// CharAI::SetScript<AISFaery> at 0x3cccf8, where the id is set to -1).
#pragma once

#include "dh2/AISDefault.hpp"

class Character;

class AISFaery : public AISDefault {
public:
    explicit AISFaery(bool skipBindings);                               // inlined into CharAI::SetScript<AISFaery>: AISDefault(skipBindings), faery id -1 (+0xc4)

    // Virtual hooks, in vtable slot order. Only the overrides are listed here. The rest are inherited from AISDefault.
    ~AISFaery() override;                                               // slot 0/1: 0x3de2e4 (base object), 0x3de688 (deleting)
    void OnUpdate() override;                                           // slot 6:  0x3de544
    void OnFriendSpotted(Character* c) override;                        // slot 11: 0x3de4ec
    void OnMasterOutOfSight() override;                                 // slot 26: 0x3de4c8
    void OnMasterOutOfRange() override;                                 // slot 28: 0x3de450
    void OnMasterInRangedRange() override;                              // slot 29: 0x3de444
    void OnMasterInCloseRange() override;                               // slot 30: 0x3de2d0
    void OnMasterInMeleeRange() override;                               // slot 31: 0x3de318

    // AISDefault occupies +0x00 .. +0xc3.
    int m_currentFaerieId;                                              // +0xc4 faery id shown on the visual; set to -1 by the ctor, updated in OnUpdate
};
