// MenuMultiplayerLobbyMulti bodies, batch g1-game-ui-MenuMultiplayerLobbyMulti-0fc06b-0 (part 1 of 1 of this class).
// Rebuilt from the Hex-Rays pseudocode and the vtable of libDungeonHunter2.so. Offsets in comments are the original
// 32-bit ARM offsets. Partial functions say in their comment which part is missing.
//
// Facts shared by the bodies:
//   - The class has no members of its own. Its layout is MenuBase's (0xc4 bytes in the original).
//   - The compiler emits the vptr stores of the constructors and destructors, so no body writes them.
//   - The compiler-generated deleting destructor (D0, 0x435798) is not rebuilt: delete emits it.
//   - Update reads three MenuFX::State fields: m_menu (+0x04, the owning MenuFX), m_characterProxy (+0x48, the
//     gameswf::weak_ptr proxy, void* in MenuFX.hpp) and m_character (+0x4c, the cached menu context).
//   - MenuManager::RegisterMenu (0x42ee94) has an empty body in this tree (partial, see its ledger row), so the
//     registration made by the constructor is not yet performed.

#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMultiplayerLobbyMulti.hpp"

// 0x435714 _ZN25MenuMultiplayerLobbyMulti6UpdateEv
// After MenuBase::Update the context is re-checked (weak_ptr::check_proxy at +0x48 drops a dead context, as
// GetCurrentMenuContext does) and the "updatePlayerList" callback runs on it with no arguments. The callback int result is
// discarded (the header returns void).
void MenuMultiplayerLobbyMulti::Update() {
    MenuBase::Update();
    m_menu->InvokeASCallback(GetCurrentMenuContext(), "updatePlayerList", nullptr, 0);  // check_proxy drops a dead context
}

// 0x43575c _ZN25MenuMultiplayerLobbyMulti4HideEv
// A forward thunk: the original is a single branch to MenuBase::Hide (0x424af4). It is forwarded, not reimplemented.
void MenuMultiplayerLobbyMulti::Hide() {
    MenuBase::Hide();
}

// 0x435760 _ZN25MenuMultiplayerLobbyMulti4ShowEv
// A forward thunk: the original is a single branch to MenuBase::Show (0x425450). It is forwarded, not reimplemented.
void MenuMultiplayerLobbyMulti::Show() {
    MenuBase::Show();
}

// 0x435764 _ZN25MenuMultiplayerLobbyMultiD1Ev (complete-object destructor)
// 0x4357b4 _ZN25MenuMultiplayerLobbyMultiD2Ev (base-object destructor, same bytes)
// The original stores the vptr and calls MenuBase::~MenuBase (0x422824). An empty body makes the compiler emit exactly
// that. One definition serves D1 and D2.
MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti() {}

// 0x435798 _ZN25MenuMultiplayerLobbyMultiD0Ev (deleting destructor)
// Compiler-generated: runs ~MenuMultiplayerLobbyMulti and then CustomFree(this). The delete expression emits it, so no
// body is written here.

// 0x4357e8 _ZN25MenuMultiplayerLobbyMultiC1Ev (complete-object constructor)
// 0x435834 _ZN25MenuMultiplayerLobbyMultiC2Ev (base-object constructor, same bytes)
// MenuBase("menu_MultiplayerLobbyMulti"), the vptr store (emitted by the compiler), then MenuManager::GetInstance() and
// MenuManager::RegisterMenu(this). One definition serves C1 and C2. RegisterMenu has an empty body in this tree
// (partial), so the registration itself is not yet performed.
MenuMultiplayerLobbyMulti::MenuMultiplayerLobbyMulti() : MenuBase("menu_MultiplayerLobbyMulti") {
    MenuManager::GetInstance()->RegisterMenu(this);
}

// 0x435880 _ZN25MenuMultiplayerLobbyMulti11GetInstanceEv
// Function-local static, constructed on first use. The guard variable, the constructor call, the guard release and the
// atexit registration of the original are what the compiler emits for a static local with a non-trivial constructor and
// destructor.
MenuMultiplayerLobbyMulti* MenuMultiplayerLobbyMulti::GetInstance() {
    static MenuMultiplayerLobbyMulti instance;
    return &instance;
}
