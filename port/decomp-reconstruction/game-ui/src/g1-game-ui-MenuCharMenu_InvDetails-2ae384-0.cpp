// MenuCharMenu_InvDetails bodies, batch g1-game-ui-MenuCharMenu_InvDetails-2ae384-0 (part 1 of 1 of this class).
// Rebuilt from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. Offsets in comments are the
// original 32-bit ARM offsets.
//
// Facts shared by the bodies:
//   - The class has no members of its own. Its layout is MenuBase's (the MenuFX::State base, 0x5c, then MenuBase).
//   - The compiler emits the vptr stores of the constructors and destructors, so no body writes them.
//   - The compiler-generated deleting destructors (D0, 0x452c84) are not rebuilt: delete emits them.
//   - Calls that the original makes through the vtable stay virtual here (IsValidMenu, vtable +0x3c, in Show).
//     Calls the original makes directly (MenuBase::Show, MenuBase::Hide, the static avatar camera functions) stay
//     qualified and non-virtual.
//   - Status is per function body. The callees below are named in the ledger notes where they are partial in this tree:
//       MenuBase::Hide (0x424af4), MenuBase::Show (0x425450) and MenuBase::~MenuBase (0x422824),
//       MenuManager::RegisterMenu (0x42ee94, empty body in the tree), DebugSwitches::load (0x337888, first-call read missing).
//   - MenuCharMenu_InvMain::CreateAvatarCamera (0x4528d0), DestroyAvatarCamera (0x452810) and RenderCharacterPane (0x452468)
//     are declared in dh2/MenuCharMenu_InvMain.hpp; their bodies belong to the MenuCharMenu_InvMain batch.

#include "dh2/DebugSwitches.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuCharMenu_InvDetails.hpp"
#include "dh2/MenuCharMenu_InvMain.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/RenderFX.hpp"

// 0x4528b8 _ZN23MenuCharMenu_InvDetails4HideEv
// Destroys the shared avatar camera, then runs MenuBase::Hide (a tail branch in the original).
void MenuCharMenu_InvDetails::Hide() {
    MenuCharMenu_InvMain::DestroyAvatarCamera();
    MenuBase::Hide();
}

// 0x452c50 _ZN23MenuCharMenu_InvDetailsD1Ev (complete-object destructor)
// 0x452ca0 _ZN23MenuCharMenu_InvDetailsD2Ev (base-object destructor, the same bytes)
// The original stores the vptr and calls MenuBase::~MenuBase. An empty body makes the compiler emit exactly that.
MenuCharMenu_InvDetails::~MenuCharMenu_InvDetails() {}

// 0x452cd4 _ZN23MenuCharMenu_InvDetails4InitEv
// Registers this menu with the MenuManager singleton (a tail branch in the original).
void MenuCharMenu_InvDetails::Init() {
    MenuManager::GetInstance()->RegisterMenu(this);
}

// 0x452cec _ZN23MenuCharMenu_InvDetailsC1Ev (complete-object constructor)
// 0x452d34 _ZN23MenuCharMenu_InvDetailsC2Ev (base-object constructor, the same bytes)
// MenuBase("menu_InventorySheetDetails"), then Init(). The vptr store is emitted by the compiler.
MenuCharMenu_InvDetails::MenuCharMenu_InvDetails() : MenuBase("menu_InventorySheetDetails") {
    Init();
}

// 0x452d7c _ZN23MenuCharMenu_InvDetails11GetInstanceEv
// Function-local static, constructed on first use. The guard and the atexit registration of the original are
// what the compiler emits for a static local with a non-trivial constructor and destructor.
MenuCharMenu_InvDetails* MenuCharMenu_InvDetails::GetInstance() {
    static MenuCharMenu_InvDetails instance;
    return &instance;
}

// 0x453014 _ZN23MenuCharMenu_InvDetails4ShowEv
// The original returns the IsValidMenu result (0 means the menu is not registered), and then does nothing.
// Otherwise it reads the debug switch, creates the avatar camera, registers the "avatarpane" display callback on the
// owning MenuFX (State +0x04, m_menu) with this menu as the user pointer, and runs MenuBase::Show.
void MenuCharMenu_InvDetails::Show() {
    if (!IsValidMenu()) {  // vtable +0x3c
        return;
    }
    DebugSwitches::s_inst.load();
    // The original builds the name "isTracingMenuCharMenu_InvDetails" (32 bytes) and discards the result. GetSwitch
    // has the side effect of storing a missing name as false, so the call is kept.
    (void)DebugSwitches::s_inst.GetSwitch("isTracingMenuCharMenu_InvDetails");
    MenuCharMenu_InvMain::CreateAvatarCamera();
    m_menu->RegisterDisplayCallback("avatarpane", MenuCharMenu_InvMain::RenderCharacterPane, this);
    MenuBase::Show();
}
