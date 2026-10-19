// MenuLeaderboard bodies, batch g1-game-ui-MenuLeaderboard-42cc86-0 (part 1 of 1 of this class).
// Rebuilt from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. Offsets in comments are the
// original 32-bit ARM offsets.
//
// Facts shared by the bodies:
//   - The class has no members of its own. Its layout is MenuBase's (0xc4 bytes in the original).
//   - The compiler emits the vptr stores of the constructors and destructors, so no body writes them.
//   - The compiler-generated deleting destructor (D0, 0x42b850) is not rebuilt: delete emits it.
//   - Callees that are partial in this tree: MenuBase::Hide (0x424af4), MenuBase::Show (0x425450) and
//     MenuManager::RegisterMenu (0x42ee94, empty body here). The constructor's registration therefore is not yet
//     performed in this tree; see the ledger notes.
//   - The global `leader` (0x9a5c10) is declared in dh2/global/Globals.hpp and defined in game-app/src/Globals.cpp.

#include "dh2/MenuBase.hpp"
#include "dh2/MenuLeaderboard.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/global/Globals.hpp"

// 0x42b7f4 _ZN15MenuLeaderboard4HideEv
// Clears the global `leader` flag (a byte store of 0), then tail-calls MenuBase::Hide (non-virtual).
void MenuLeaderboard::Hide() {
    leader = false;
    MenuBase::Hide();
}

// 0x42b818 _ZN15MenuLeaderboard4ShowEv
// A forward thunk: the original is a single branch to MenuBase::Show (0x425450). It is forwarded, not reimplemented.
void MenuLeaderboard::Show() {
    MenuBase::Show();
}

// 0x42b81c _ZN15MenuLeaderboardD1Ev (complete-object destructor)
// 0x42b86c _ZN15MenuLeaderboardD2Ev (base-object destructor, same bytes)
// The original stores the vptr and calls MenuBase::~MenuBase (0x422824). An empty body makes the compiler emit
// exactly that. One definition serves D1 and D2.
MenuLeaderboard::~MenuLeaderboard() {}

// 0x42b850 _ZN15MenuLeaderboardD0Ev
// Compiler-generated deleting destructor: runs ~MenuLeaderboard, then CustomFree(this). The C++ delete expression
// emits it, so it is not written here.

// 0x42b8a0 _ZN15MenuLeaderboardC1Ev (complete-object constructor)
// 0x42b970 _ZN15MenuLeaderboardC2Ev (base-object constructor, same bytes)
// MenuBase("Multiplayer_Leaderboard"), then RegisterMenu(this) on the MenuManager singleton. The vptr store is
// emitted by the compiler. One definition serves C1 and C2. RegisterMenu has an empty body in this tree (partial),
// so the registration itself is not yet performed.
MenuLeaderboard::MenuLeaderboard() : MenuBase("Multiplayer_Leaderboard") {
    MenuManager::GetInstance()->RegisterMenu(this);
}

// 0x42b8ec _ZN15MenuLeaderboard11GetInstanceEv
// Function-local static, constructed on first use. The guard variable, the constructor call and the atexit
// registration of the original are what the compiler emits for a static local with a non-trivial constructor and
// destructor.
MenuLeaderboard* MenuLeaderboard::GetInstance() {
    static MenuLeaderboard instance;
    return &instance;
}
