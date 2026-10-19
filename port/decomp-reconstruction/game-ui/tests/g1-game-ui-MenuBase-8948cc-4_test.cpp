// Checks the MenuBase FSCommand registry of batch g1-game-ui-MenuBase-8948cc-4 on the paths that need no engine:
// RegisterFSCommand (the first registration returns true, a repeat returns false, and the name is stored) and MyFSCommand
// (a null command returns true, an unknown command returns false, and a registered handler is called with (command, args,
// menu) and its result is returned). The constructor, Show, Hide and the drag-and-drop passes are not called: the test
// builds no MenuBase and no MenuFX::State.
//
// Everything below the includes is a link-only stub, a storage block or a recorder, so the object file of the batch links
// on its own. The real definitions live in other categories and in the other batches of MenuBase.
#include <cstdio>
#include <string>

#include "gameswf/gameswf.h"  // tu_string members that the link needs; gameswf::rect is complete here too
#include "dh2/Application.hpp"
#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/Dragable.hpp"
#include "dh2/Dropable.hpp"
#include "dh2/GSInit.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/ctrl_camera.hpp"

// ---- Storage for the singletons the bodies reach. Nothing here is constructed. ----
namespace {
alignas(16) unsigned char g_switchStorage[64];
alignas(16) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_managerStorage[256];
alignas(16) unsigned char g_savegameStorage[128];
alignas(16) unsigned char g_stringStorage[64];
alignas(16) unsigned char g_menuStorage[512];
}  // namespace

// GSInit::s_inst (_ZN6GSInit6s_instE) is referenced by MenuBase::Show. Its constructor is not needed, so the storage is
// defined under that assembler name at global scope (external linkage). The test never names GSInit::s_inst.
alignas(16) unsigned char g_gsInitStorage[256] __asm__("_ZN6GSInit6s_instE");

// ---- Link-only definitions: DebugSwitches (the trace read; the switch always reads false). ----
DebugSwitches* DebugSwitches::GetInstance() {
    return reinterpret_cast<DebugSwitches*>(g_switchStorage);
}
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string&) {
    return false;
}

// ---- Link-only definitions: singletons and engine calls the bodies reach. ----
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}
Level* Application::GetCurrentLevel() const {
    return nullptr;
}
MenuManager* MenuManager::GetInstance() {
    return reinterpret_cast<MenuManager*>(g_managerStorage);
}
void MenuManager::UnRegisterListener(MenuBase*) {}
Character* PlayerManager::GetLocalPlayerCharacter() {
    return nullptr;
}
int SavegameManager::getLanguage() const {
    return 0;
}
int SavegameManager::setLanguage(int) {
    return 1;  // the original returns StringManager::switchPack's bool; the stubs report success
}
void SavegameManager::saveSettings() {}
const char* StringManager::getString(int) const {
    return nullptr;
}
const char* StringManager::getStringFromSymbol(const char*) const {
    return nullptr;
}
bool Level::SG_IsMapLocLocked(int) const {
    return false;
}
void GSInit::ClearLoadingScreen() {}
void DragAndDrop::ResetPositions() {}
DragAndDrop::~DragAndDrop() {}
Dragable::~Dragable() {}
Dropable::~Dropable() {}
DebugCachedCharacter::DebugCachedCharacter() {}
DebugCachedCharacter::~DebugCachedCharacter() {}
gameswf::character* DebugCachedCharacter::GetChar() {
    return nullptr;
}
void DebugCachedCharacter::RefreshCache(const char*, MenuFX*, gameswf::character*) {}
int tu_string::utf8_char_count(const char*, int) {
    return 0;
}
void tu_string::resize(int) {}
// The gameswf header declares these out of line (DH2: bodies not in this tree); the g1-game-ui-MenuBase-8948cc-4 TU reaches them.
void tu_string::operator+=(const char*) {}
void tu_string::operator+=(const tu_string&) {}
bool tu_string::operator==(const tu_string&) const {
    return false;
}

// DialogMsg statics and destructor, and the dialog message queue (MenuMessageManager<DialogMsg,1>::s_inst, storage only).
DialogMsg::~DialogMsg() {}
const char* DialogMsg::s_SkipFuncName = nullptr;
const char* DialogMsg::s_StartFuncName[] = {"StartDialog", nullptr};
template <>
void MenuMessageManager<DialogMsg, 1>::Invoke(const char*, int) const {}
alignas(16) unsigned char g_dialogQueueStorage[64] __asm__("_ZN18MenuMessageManagerI9DialogMsgLi1EE6s_instE");

// ---- Link-only definitions: MenuBase members the constructor and the vtable reach (other batches define them). ----
MenuBase::~MenuBase() {}
void MenuBase::Create() {}
void MenuBase::GotFocus() {}
void MenuBase::LostFocus() {}
void MenuBase::Update() {}
void MenuBase::OnEvent(RenderFX::Event&) {}
void MenuBase::OnFSCommand(const char*, const char*) {}
bool MenuBase::CanHandleEvent(RenderFX::Event&) {
    return true;
}
bool MenuBase::IsValidMenu() const {
    return false;
}
void MenuBase::ProcessLocalization() {}
void MenuBase::SetIsLocalised(bool) {}
void MenuBase::DBG_Draw2DDeadZones() const {}
void MenuBase::CacheStrings() {}
void MenuBase::SetVisible(bool) {}
void MenuBase::RegisterDeadZones() {}
gameswf::character* MenuBase::GetCurrentMenuContext() const {
    return nullptr;
}
// MenuFX::State's destructor is its key function, so the test emits the State vtable and needs every State virtual.
MenuFX::State::State(const char*) {}
MenuFX::State::~State() {}
void MenuFX::State::Create() {}
void MenuFX::State::Show() {}
void MenuFX::State::Hide() {}
void MenuFX::State::GotFocus() {}
void MenuFX::State::LostFocus() {}
void MenuFX::State::Update() {}
void MenuFX::State::Update(int) {}
void MenuFX::State::UpdateBackground() {}
void MenuFX::State::UpdateBackground(int) {}
void MenuFX::State::OnEvent(RenderFX::Event&) {}
void MenuFX::State::OnFSCommand(const char*, const char*) {}
bool MenuFX::State::CanHandleEvent(RenderFX::Event&) {
    return true;
}

// ---- Link-only definitions: the FSCommand handlers that other batches define. The registry only stores their addresses. ----
#define MENU_FS_STUB(fn) \
    bool MenuBase::fn(const char*, const char*, void*) { return false; }
MENU_FS_STUB(FS_AssignPoint)
MENU_FS_STUB(FS_AutoEquipSlot)
MENU_FS_STUB(FS_ContinueGame)
MENU_FS_STUB(FS_DecOption)
MENU_FS_STUB(FS_EndLoading)
MENU_FS_STUB(FS_ExitGame)
MENU_FS_STUB(FS_GetCharProperty)
MENU_FS_STUB(FS_GetHasMainHandWeapon)
MENU_FS_STUB(FS_GetHasOffHandWeapon)
MENU_FS_STUB(FS_GetHasTwoHandWeapon)
MENU_FS_STUB(FS_GetNumPotions)
MENU_FS_STUB(FS_GetOption)
MENU_FS_STUB(FS_GetPlayerClass)
MENU_FS_STUB(FS_GetPlayerClass2)
MENU_FS_STUB(FS_GetPlayerName)
MENU_FS_STUB(FS_GetSaveSlot)
MENU_FS_STUB(FS_GetString)
MENU_FS_STUB(FS_GetString2)
MENU_FS_STUB(FS_GoToMainMenu)
MENU_FS_STUB(FS_IncOption)
MENU_FS_STUB(FS_IncSkill)
MENU_FS_STUB(FS_IsSaveSlotValid)
MENU_FS_STUB(FS_LaunchTwitter)
MENU_FS_STUB(FS_LoadLevel)
MENU_FS_STUB(FS_LoadLevel2)
MENU_FS_STUB(FS_LoadOptions)
MENU_FS_STUB(FS_LoadWorldMap)
MENU_FS_STUB(FS_LockCharacter)
MENU_FS_STUB(FS_PauseGameplay)
MENU_FS_STUB(FS_PlayMusic)
MENU_FS_STUB(FS_PlaySoundFX)
MENU_FS_STUB(FS_PopAllAbove)
MENU_FS_STUB(FS_PopAllMenu)
MENU_FS_STUB(FS_PopMenu)
MENU_FS_STUB(FS_PushMenu)
MENU_FS_STUB(FS_PushState)
MENU_FS_STUB(FS_ResetDraggablePosition)
MENU_FS_STUB(FS_ResetSaveFile)
MENU_FS_STUB(FS_ResumeGameplay)
MENU_FS_STUB(FS_ReturnToGame)
MENU_FS_STUB(FS_SaveOptions)
MENU_FS_STUB(FS_SetBtnImage)
MENU_FS_STUB(FS_SetDifficulty)
MENU_FS_STUB(FS_SetFocus)
MENU_FS_STUB(FS_SetLanguage)
MENU_FS_STUB(FS_SetOption)
MENU_FS_STUB(FS_SetPlayerClass)
MENU_FS_STUB(FS_SetPlayerName)
MENU_FS_STUB(FS_SetSaveSlot)
MENU_FS_STUB(FS_SkipScript)
MENU_FS_STUB(FS_StartGame)
MENU_FS_STUB(FS_StopMusic)
MENU_FS_STUB(FS_SwitchMenu)
MENU_FS_STUB(FS_ToggleOption)
MENU_FS_STUB(FS_UnlockCharacter)
#undef MENU_FS_STUB

// ---- Recorders for the handlers the registry calls. ----
namespace {

int g_failures = 0;
int g_handlerCalls = 0;
std::string g_seenCommand;
std::string g_seenArgs;
const void* g_seenMenu = nullptr;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

bool RecordingHandler(const char* command, const char* args, void* menu) {
    ++g_handlerCalls;
    g_seenCommand = command;
    g_seenArgs = args;
    g_seenMenu = menu;
    return true;
}

bool FalseHandler(const char*, const char*, void*) {
    return false;
}

}  // namespace

int main() {
    // MyFSCommand is called non-virtually (qualified name), so no vtable of the fake object is read. It only passes this on.
    MenuBase* menu = reinterpret_cast<MenuBase*>(g_menuStorage);

    Check(MenuBase::RegisterFSCommand("TestCmdA", RecordingHandler), "first registration of TestCmdA returns true");
    Check(!MenuBase::RegisterFSCommand("TestCmdA", FalseHandler), "repeat registration of TestCmdA returns false");
    Check(MenuBase::RegisterFSCommand("TestCmdB", FalseHandler), "registration of TestCmdB returns true");

    Check(menu->MenuBase::MyFSCommand(nullptr, "ignored"), "MyFSCommand with a null command returns true");
    Check(g_handlerCalls == 0, "a null command calls no handler");
    Check(!menu->MenuBase::MyFSCommand("NoSuchCommand", "ignored"), "MyFSCommand with an unknown command returns false");

    Check(menu->MenuBase::MyFSCommand("TestCmdA", "argv"), "MyFSCommand returns the registered handler's result (true)");
    Check(g_handlerCalls == 1, "the registered handler is called once");
    Check(g_seenCommand == "TestCmdA", "the handler receives the command");
    Check(g_seenArgs == "argv", "the handler receives the args");
    Check(g_seenMenu == static_cast<const void*>(menu), "the handler receives the menu");

    Check(!menu->MenuBase::MyFSCommand("TestCmdB", "argv"), "MyFSCommand returns the handler's false result");
    Check(g_handlerCalls == 1, "a different command does not call the recording handler");

    if (g_failures == 0) {
        std::printf("MenuBase batch g1-game-ui-MenuBase-8948cc-4: all checks passed\n");
        return 0;
    }
    return 1;
}
