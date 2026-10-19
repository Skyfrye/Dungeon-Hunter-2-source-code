// MenuDebug bodies, batch g1-game-ui-MenuDebug-521bad-0 (part 1 of 1 of this class).
// Rebuilt from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. Offsets in comments are the
// original 32-bit ARM offsets.
//
// Facts shared by the bodies:
//   - The layout is MenuBase's (0xc4 bytes), then m_text (DebugCachedCharacter) at +0xc4. The owning MenuFX is
//     MenuFX::State::m_menu at +0x04, the field the original reads as *(this + 4).
//   - The compiler emits the vptr stores of the constructors and destructors, and the construction and destruction of
//     m_text and of the base, so the bodies carry only the calls the original makes in its own code.
//   - The compiler-generated deleting destructor (D0, 0x429ef4) is not rebuilt: delete emits it. It runs ~MenuDebug and
//     then CustomFree(this).
//   - The constructors (C1 and C2) and the destructors (D1 and D2) each have identical bytes, so one definition serves
//     each pair.

#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuDebug.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/RenderFX.hpp"
#include "gameswf/gameswf_character.h"

// 0x429eb8 _ZN9MenuDebugD1Ev (complete-object destructor)
// 0x429f10 _ZN9MenuDebugD2Ev (base-object destructor, the same bytes)
// The original stores the vptr, destroys m_text (+0xc4) and calls MenuBase::~MenuBase. The implicit member and base
// destructors of an empty body make the compiler emit exactly that.
MenuDebug::~MenuDebug() {}

// 0x429ef4 _ZN9MenuDebugD0Ev (deleting destructor) is not rebuilt: the C++ delete expression emits it.

// 0x42a040 _ZN9MenuDebug4InitEv
// Registers this menu with the MenuManager singleton. When the owning MenuFX (m_menu, State +0x04) is set, it caches the
// "text" field of the menu movie in m_text, with the menu's context as the root.
void MenuDebug::Init() {
    MenuManager::GetInstance()->RegisterMenu(this);
    if (m_menu != nullptr) {
        gameswf::character* root = GetCurrentMenuContext();
        m_text.RefreshCache("text", m_menu, root);
    }
}

// 0x42a08c _ZN9MenuDebug7SetTextEPKc
// With the owning MenuFX (m_menu, State +0x04) and the cached "text" character: a text makes the menu visible, is drawn with
// RenderFX::SetText (flag false) and sets the visible flag (+0x9b) of the character; a null text hides the menu and clears the flag.
void MenuDebug::SetText(const char* text) {
    if (m_menu == nullptr) {
        return;
    }
    gameswf::character* character = m_text.GetChar();
    if (character == nullptr) {
        return;
    }
    if (text != nullptr) {
        SetVisible(true);
        m_menu->RenderFX::SetText(m_text.GetChar(), text, false);
        m_text.GetChar()->m_visible = true;
    } else {
        SetVisible(false);
        m_text.GetChar()->m_visible = false;
    }
}

// 0x42a610 _ZN9MenuDebugC1Ev (complete-object constructor)
// 0x42a6e8 _ZN9MenuDebugC2Ev (base-object constructor, the same bytes)
// MenuBase("menu_Debug"), then the vptr store and the default construction of m_text (both emitted by the compiler), then
// Init().
MenuDebug::MenuDebug() : MenuBase("menu_Debug") {
    Init();
}

// 0x42a660 _ZN9MenuDebug11GetInstanceEv
// Function-local static, constructed on first use. The guard variable and the atexit registration of the destructor are
// what the compiler emits for a static local with a non-trivial constructor and destructor, as the original does.
MenuDebug* MenuDebug::GetInstance() {
    static MenuDebug menu;
    return &menu;
}
