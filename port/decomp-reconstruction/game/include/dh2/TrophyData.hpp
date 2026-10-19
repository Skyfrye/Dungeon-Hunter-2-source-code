// TrophyData: one unlockable trophy. TrophyManager::InitTrophies makes one per Arrays::TrophyTable row
// (operator new 0x28) and copies the row's Structs::Trophy words: m_w1 desc, m_w2 gl_index, m_w3 gl_live,
// m_w4 grade, m_w5 label, m_w6 name, m_w7 type. Text ids are StringManager ids, -1 when there is no text.
// Original 32-bit size 0x28 (40). Vtable _ZTV10TrophyData is 16 bytes: the two destructor slots and no others.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor D1 0x37f9cc, D0 0x37fa80; InitTrophies 0x3801c4).
#pragma once

#include <cstdint>

class TrophyData {
public:
    virtual ~TrophyData();                                              // slot 0x00: 0x37f9cc (D1); slot 0x04: 0x37fa80 (D0, frees the object)

    // vptr                                                             // +0x00
    std::int32_t m_id;                                                  // +0x04 index in the trophy table; GetTrophyData matches on it
    std::int32_t m_nameTextId;                                          // +0x08 StringManager id of the title (Structs::Trophy m_w6)
    std::int32_t m_descTextId;                                          // +0x0c StringManager id of the description (m_w1)
    bool m_unlocked;                                                    // +0x10 set by TrophyUnlockedCB, read by IsTrophyUnlocked
    uint8_t pad_11[3];                                                  // +0x11
    std::int32_t m_type;                                                // +0x14 (m_w7)
    std::int32_t m_grade;                                               // +0x18 (m_w4)
    std::int32_t m_label;                                               // +0x1c (m_w5)
    std::int32_t m_glLive;                                              // +0x20 (m_w3), copied but not read by the recovered code
    std::int32_t m_glIndex;                                             // +0x24 (m_w2), passed to NotifyTrophy by UnlockTrophiesGLLive
};
