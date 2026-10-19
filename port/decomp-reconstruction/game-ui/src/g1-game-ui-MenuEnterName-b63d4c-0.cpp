// MenuEnterName bodies, batch g1-game-ui-MenuEnterName-b63d4c-0 (part 1 of 1 of this class).
// Rebuilt from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. Offsets in comments are the
// original 32-bit ARM offsets.
//
// Facts shared by the bodies:
//   - The class has no members of its own, so its layout is MenuBase's.
//   - The compiler emits the vptr stores of the constructors and destructors, so no body writes them.
//   - The compiler-generated deleting destructor (D0, 0x42af50) is not rebuilt: delete emits it.
//   - Show and Hide reach IsValidMenu through the vtable (+0x3c), so that call stays virtual. The calls to
//     MenuBase::Show and MenuBase::Hide are direct (qualified), as in the original tail branches.

#include "dh2/GSKeyboard.hpp"
#include "dh2/MenuEnterName.hpp"
#include "dh2/MenuManager.hpp"

// 0x42ae9c _ZN13MenuEnterName9LostFocusEv
// Empty in the original (bx lr). Overrides MenuBase::LostFocus (vtable +0x18).
void MenuEnterName::LostFocus() {}

// 0x42aec0 _ZN13MenuEnterName8GotFocusEv
// Thunk (vtable +0x14): a tail branch to the static GSKeyboard::ClearString. The this pointer stays in r0
// and the static callee does not read it, so the forward carries no argument.
void MenuEnterName::GotFocus() {
    GSKeyboard::ClearString();
}

// 0x42aec4 _ZN13MenuEnterName4HideEv
// Returns the IsValidMenu result (vtable +0x3c) in the original. When it is nonzero, the original tail-branches
// to MenuBase::Hide. The Hex-Rays int return is the r0 residue of that path; the override is void.
void MenuEnterName::Hide() {
    if (IsValidMenu()) {  // vtable +0x3c
        MenuBase::Hide();
    }
}

// 0x42aef0 _ZN13MenuEnterName4ShowEv
// Same shape as Hide: IsValidMenu (vtable +0x3c), then MenuBase::Show when the menu is valid.
void MenuEnterName::Show() {
    if (IsValidMenu()) {  // vtable +0x3c
        MenuBase::Show();
    }
}

// 0x42af1c _ZN13MenuEnterNameD1Ev (complete-object destructor)
// 0x42af6c _ZN13MenuEnterNameD2Ev (base-object destructor, the same bytes)
// 0x42af50 _ZN13MenuEnterNameD0Ev (deleting destructor) is compiler-generated: it runs D1 and then CustomFree.
// The empty body makes the compiler store the vptr and call MenuBase::~MenuBase, which is what the original does.
MenuEnterName::~MenuEnterName() {}

// 0x42afa0 _ZN13MenuEnterNameC1Ev (complete-object constructor)
// 0x42afec _ZN13MenuEnterNameC2Ev (base-object constructor, the same bytes)
// MenuBase("menu_EnterName"), the vptr store (emitted by the compiler), then MenuManager::GetInstance()
// and MenuManager::RegisterMenu(this).
MenuEnterName::MenuEnterName() : MenuBase("menu_EnterName") {
    MenuManager::GetInstance()->RegisterMenu(this);
}

// 0x42b038 _ZN13MenuEnterName11GetInstanceEv
// Function-local static, constructed on first use. The guard, the constructor call, the guard release and the
// atexit registration of the original are what the compiler emits for a static local with a non-trivial
// constructor and destructor.
MenuEnterName* MenuEnterName::GetInstance() {
    static MenuEnterName instance;
    return &instance;
}
