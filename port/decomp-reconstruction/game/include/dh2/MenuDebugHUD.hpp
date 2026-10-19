// MenuDebugHUD: the debug HUD page ("menu_DebugHUD"), a function-local singleton (GetInstance). It keeps five
// DebugCachedCharacters for the debug texts, a std::map and 22 flags that are saved to the debug-stats file.
// Original 32-bit size: not recovered (static singleton); the members end at +0x1e8.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x42a470 / 0x42a584, dtor 0x42a3e4).
// DisplayHugeNumber, HideHugeNumber and the two seal setters read the weak_ptr proxy and cached character
// inside m_timesLoadedText (+0x150, +0x154), m_sealOfFreshness (+0x1b0, +0x1b4) and m_sealOfFreshnessFail
// (+0x1e0, +0x1e4) through DebugCachedCharacter's m_characterProxy (+0x28) and m_character (+0x2c).
#pragma once

#include <cstdint>
#include <map>
#include <string>

#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/MenuBase.hpp"

class MenuDebugHUD : public MenuBase {
public:
    MenuDebugHUD();                                                     // 0x42a470 / 0x42a584
    ~MenuDebugHUD() override;                                           // +0x00, +0x04 (0x42a33c, 0x42a3c8); D2 0x42a3e4

    static MenuDebugHUD* GetInstance();                                 // 0x42a4fc
    static const char* s_statsStrings[22];                              // ELF _ZN12MenuDebugHUD14s_statsStringsE (.data 0x9997b0, 88 bytes): the 22 debug stat labels; Console::_setMenuStats lists them. Defined in core-platform/src/ok3-Console.cpp

    // Overrides of MenuBase slots, in vtable order.
    void Update() override;                                             // +0x1c 0x429c18: empty (bx lr)

    // Non-virtual methods.
    void Init();                                                        // 0x429f4c registers the menu, caches five paths, then loads the file
    void LoadFromFile();                                                // 0x429cd4 reads the 22 flags from the debug-stats save
    void SaveToFile();                                                  // 0x42a1f8 writes the 22 flags to the debug-stats save
    void SetText(const char* text);                                     // 0x429e40 shows or hides m_text
    void DisplayHugeNumber(int value);                                  // 0x42a7b0 formats "%d" into m_timesLoadedText, shows it and m_timesLoaded
    void HideHugeNumber();                                              // 0x42a738 hides m_timesLoadedText and m_timesLoaded
    void SetDisplaySealOfFreshness(bool shown);                         // 0x42a8c0
    void SetDisplaySealOfFreshnessFAIL(bool shown);                     // 0x42a854

    // MenuBase occupies +0x00 .. +0xc3.
    uint8_t pad_c4[4];                                                  // +0xc4
    std::map<std::string, int> unk_c8;                                  // +0xc8 empty std::map (0x14 bytes: header and node count)
    uint8_t pad_dc[4];                                                  // +0xdc
    bool m_debugStatFlags[22];                                          // +0xe0 22 bools, written by SaveToFile and read by LoadFromFile
    uint8_t pad_f6[2];                                                  // +0xf6
    DebugCachedCharacter m_text;                                        // +0xf8 path "text"
    DebugCachedCharacter m_timesLoadedText;                             // +0x128 path "times_loaded.text"
    DebugCachedCharacter m_timesLoaded;                                 // +0x158 path "times_loaded"
    DebugCachedCharacter m_sealOfFreshness;                             // +0x188 path "seal_of_freshness"
    DebugCachedCharacter m_sealOfFreshnessFail;                         // +0x1b8 path "seal_of_freshness_fail"
};
