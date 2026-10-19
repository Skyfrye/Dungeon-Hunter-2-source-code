// TriggerZoneExitLevel: a TriggerZone that offers a fast travel point to the level named by "levelName".
// InitPost resolves that name to m_levelIndex in Arrays::LevelList. While a player stands in the zone, the local
// player hosting and the zone's condition met, Update unlocks m_fastTravelId for the character and shows the HUD
// fast travel panel (DisplayFastTravel) with the level's localized name and entry point. The panel is hidden when
// the zone empties.
// Original 32-bit size not recorded in class-facts. The members below are known through +0x819.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x39c9a4 / 0x39ca40, dtor 0x39c68c / 0x39c6ec / 0x39c708).
#pragma once

#include <string>

#include "dh2/TriggerZone.hpp"

class TriggerZoneExitLevel : public TriggerZone {
public:
    explicit TriggerZoneExitLevel(ObjectBase::GO_IDS id);               // 0x39c9a4 (C1) / 0x39ca40 (C2); m_levelIndex starts at -1
    ~TriggerZoneExitLevel() override;                                   // 0x39c68c (D1), 0x39c6ec (D0), 0x39c708 (D2)

    // Overrides of TriggerZone / Trigger / GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 0x18: 0x39c8f8 TriggerZone's properties, then "levelID", "levelName", "entrypointID", "maploc", "question", "fasttravel"
    void InitPost() override;                                           // slot 0x1c: 0x39c8c8 TriggerZone::InitPost, then m_levelIndex from m_levelName in Arrays::LevelList
    void Update() override;                                             // slot 0x2c: 0x39c33c unlocks m_fastTravelId and shows or hides the fast travel panel

    // TriggerZone occupies +0x000 .. +0x7d3.
    int m_levelIndex;                                                   // +0x7d4 index in Arrays::LevelList from m_levelName, -1 until InitPost
    int m_levelID;                                                      // +0x7d8 property "levelID"
    std::string m_levelName;                                            // +0x7dc property "levelName", the level the zone leads to (24 bytes in the original)
    int m_entrypointID;                                                 // +0x7f4 property "entrypointID", passed to the fast travel panel
    int m_mapLoc;                                                       // +0x7f8 property "maploc"
    int m_question;                                                     // +0x7fc property "question"
    std::string m_fastTravelId;                                         // +0x800 property "fasttravel", unlocked for the character by SG_SetFastTravelIdUnlocked (24 bytes in the original)
    bool m_fastTravelUnlocked;                                          // +0x818 set by Update once m_fastTravelId is unlocked for the local character
    bool m_fastTravelShown;                                             // +0x819 set while Update shows the fast travel panel
};
