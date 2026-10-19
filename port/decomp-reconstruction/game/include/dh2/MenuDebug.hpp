// MenuDebug: the debug menu page ("menu_Debug"), a function-local singleton (GetInstance). Its only member
// is a DebugCachedCharacter that caches the "text" field of the page's movie.
// Original 32-bit size: not recovered (the singleton is static storage); the members end at +0xf4.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x42a610 / 0x42a6e8, dtor 0x429f10).
#pragma once

#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/MenuBase.hpp"

class MenuDebug : public MenuBase {
public:
    MenuDebug();                                                        // 0x42a610 / 0x42a6e8
    ~MenuDebug() override;                                              // +0x00, +0x04 (0x429eb8, 0x429ef4); D2 0x429f10

    static MenuDebug* GetInstance();                                    // 0x42a660

    // Overrides of MenuBase slots: only the destructor. Show, Hide and the rest are inherited.
    void Init();                                                        // 0x42a040 registers the menu, caches "text"
    void SetText(const char* text);                                     // 0x42a08c shows the text, or hides the field when text is null

    // MenuBase occupies +0x00 .. +0xc3.
    DebugCachedCharacter m_text;                                        // +0xc4 path "text"
};
