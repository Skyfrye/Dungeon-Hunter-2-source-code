// Module: a Decor that stands for a whole level module. It names its XML files (mgp/mvp, with alternates chosen by
// alt_prob), spawns a generated RoomZone that covers the module, and loads the module's level files when entered.
// The base is Decor, not GameObject: DeclareProperties and InitPost call Decor's versions, and the constructor
// sets Decor's +0x375 and +0x376 flags. (class-facts.json lists GameObject; the code says Decor.)
// Original 32-bit size 0x41c (1052), the operator new size in GetNewInstance<Module>.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x38a100, DeclareProperties 0x389e04, InitPost 0x388b20).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "core-platform/deps/game_types.hpp"  // Point3D
#include "dh2/Decor.hpp"
#include "dh2/ObjectHandle.hpp"

class IStreamBase;

class Module : public Decor {
public:
    explicit Module(GO_IDS id);                                         // 0x389fa8 / 0x38a100, assigns m_moduleId from s_moduleId
    ~Module() override;                                                 // 0x389444 (D1), 0x38952c (D0), 0x389548 (D2)

    // ---- virtual, vtable slot order (Decor and GameObject slots are inherited unless listed here) ----
    void Serialize(IStreamBase* stream) override;                       // +0x10 0x388710 writes GameObject, then m_visited
    void Deserialize(IStreamBase* stream) override;                     // +0x14 0x388f00 reads m_visited, sets the RoomZone's visited flag
    void DeclareProperties() override;                                  // +0x18 0x389e04 "mgp", "mvp", "alt_mgp", "alt_mvp", "alt_prob", "fog_color"
    void InitPost() override;                                           // +0x1c 0x388b20 spawns the generated RoomZone and binds it to the module

    // ---- non-virtual ----
    // Picks the mgp and mvp xml names (the alternates when the alt_prob roll selects them). Returns an int status
    // (16556 when no alternates are configured, the value Hex-Rays shows).
    int _ChooseXmls(std::string& mgp, std::string& mvp) const;          // 0x38a38c
    void LoadModule() const;                                            // 0x38a88c loads mgp/mvp into the current level, then clears the module id

    // Static data.
    static Point3D<float> UNINIT_FOG_COLOR;                             // 12-byte static, (-1, -1, -1); the static initializer 0x3888dc stores 0xbf800000 in each word
    static int s_moduleId;                                              // next module id, incremented by each constructor

    // Decor occupies +0x00 .. +0x377 (m_floorMapPending at +0x375, m_isSolid at +0x376).
    std::string m_mgp;                                                  // +0x378 property "mgp", 24 bytes; the module's main xml
    std::string m_mvp;                                                  // +0x390 property "mvp"; the module's visual xml
    std::string m_altMgp;                                               // +0x3a8 property "alt_mgp"; alternate main xml
    std::string m_altMvp;                                               // +0x3c0 property "alt_mvp"; alternate visual xml
    std::string m_altProb;                                              // +0x3d8 property "alt_prob"; line list of percentages read by _ChooseXmls
    Point3D<float> m_fogColor;                                          // +0x3f0 property "fog_color"; default UNINIT_FOG_COLOR, then two global words
    bool m_visited;                                                     // +0x3fc serialized; Deserialize passes it to RoomZone::SetVisited
    uint8_t pad_3fd[3];                                                 // +0x3fd
    ObjectHandle m_roomZone;                                           // +0x400 handle of the generated "generated_roomzone_%04d" RoomZone, set by InitPost
    int m_moduleId;                                                     // +0x40c id from s_moduleId at construction; LoadModule passes it to Level::SetObjectModuleId
    std::vector<int> m_probabilities;                                   // +0x410 values parsed from alt_prob, plus 100 minus their sum (the last entry)
};
