// Checks the MenuBase FSCommand handlers of batch g1-game-ui-MenuBase-8948cc-1 on the paths that run without the
// engine: the null and empty argument checks, the "undefined" level name, and the return values the original
// produces on paths that do not depend on a missing call. The handlers that reach the engine singletons run against
// the link-only stubs below, which record nothing; the calls themselves are checked by
// r2a-game-ui-MenuBase-8948cc-0_test.cpp. FS_PopAllMenu is not called here: it makes a virtual call on a
// MultiMenuManager that this test cannot build.
//
// Two things are NOT null stand-ins, because the library bodies dereference them:
//   * MenuManager::GetInstance(). FS_IncOption and FS_DecOption run ApplyLanguageAndShowName
//     (game-ui/src/g1-game-ui-MenuBase-8948cc-1.cpp), which calls ResetFonts and then GetRoot on the result, and the
//     library's GetRoot reads m_multiMenuManager->m_menuFX[2]. A null manager made that read fault. The manager is a
//     real MenuManager object here and the two calls are stubbed, because this test builds no MultiMenuManager.
//   * the menu argument (the third parameter). The original always passes the MenuBase that owns the FSCommand, and
//     FS_ToggleOption, FS_GetString, FS_GetString2 and FS_GetPlayerName publish on its m_menu (MenuFX::State +0x04).
//     A null menu made those stores go through a null pointer.
#include <cstdint>
#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/Dragable.hpp"
#include "dh2/Level.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "vendor-gameswf/as_value.hpp"

// ---- Fake singleton storage. The handlers read the SavegameManager pointer and its m_lastSlot, the StringManager
// and the PyDataConstants the string lookups go through, the MenuManager singleton, and the menu the engine passes.
namespace {
alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(SavegameManager) unsigned char g_saveStorage[sizeof(SavegameManager)];
alignas(StringManager) unsigned char g_stringStorage[sizeof(StringManager)];
alignas(PyDataConstants) unsigned char g_pyStorage[sizeof(PyDataConstants)];
alignas(MenuManager) unsigned char g_managerStorage[sizeof(MenuManager)];
alignas(MenuFX) unsigned char g_fxStorage[sizeof(MenuFX)];
alignas(MenuBase) unsigned char g_menuStorage[sizeof(MenuBase)];
}  // namespace

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

namespace {
MenuManager* ManagerTag() {
    return reinterpret_cast<MenuManager*>(g_managerStorage);
}
MenuFX* FxTag() {
    return reinterpret_cast<MenuFX*>(g_fxStorage);
}
// The menu the engine passes as the handler's third argument, with the owning MenuFX the handlers publish on.
MenuBase* ArgMenu() {
    MenuBase* menu = reinterpret_cast<MenuBase*>(g_menuStorage);
    menu->m_menu = FxTag();
    return menu;
}
}  // namespace

// ---- The manager singleton and the menu calls the handlers make. ----
// A real object, not a null stand-in (see the file comment); the two members the handlers call are stubbed because
// this test builds no MultiMenuManager. On an empty manager the real forward clears no fonts and the real GetRoot
// yields no movie, so nothing observable is lost.
MenuManager* MenuManager::GetInstance() {
    return ManagerTag();
}
void MenuManager::ResetFonts() {}
MenuFX* MenuManager::GetRoot() {
    return FxTag();
}

// Link-only definition: FS_LoadLevel calls MenuFX::PopAll on the menu, and the menu is not built here.
void MenuFX::PopAll() {}

// ---- The RenderFX entry points the handlers reach. The storage above has no gameswf movie behind it, so the real
// bodies (Find walks m_root, PlayAnim and SetMember run on the movie) cannot run and are stubbed out.
gameswf::as_object* RenderFX::Find(const char*) {
    return nullptr;
}
int RenderFX::PlayAnim(const char*, const char*, int) {
    return 0;
}
void RenderFX::SetMember(const char*, const char*, gameswf::as_value&) {}
void RenderFX::SetMember(const char*, const char*, const char*) {}
int RenderFX::InvokeASCallback(const char*, const char*, const gameswf::as_value*, int) {
    return 0;
}

// ---- The string and constant lookups of FS_GetString, FS_GetString2 and the language tail. No string is loaded, so
// every lookup reports "not found"; the handlers return true on that path anyway.
const char* StringManager::getString(int) const {
    return nullptr;
}
const char* StringManager::getStringFromSymbol(const char*) const {
    return nullptr;
}
int PyDataConstants::getConstant(const char*, const char*) const {
    return 0;
}

// ---- The remaining link-only stubs for the singleton calls the handlers make. They do nothing.
void SavegameManager::loadSettings(bool) {}
void SavegameManager::saveSettings() {}
int SavegameManager::getLanguage() const {
    return 0;
}
int SavegameManager::setLanguage(int) {
    return 1;  // the original returns StringManager::switchPack's bool; the stubs report success
}
void SavegameManager::setOption(const char*, int) {}
void Application::LoadLevel(const char*, int, std::uint32_t, bool, bool, int, bool, std::uint32_t, std::uint32_t) {}
void Application::LoadWorldMap(int) {}
void Application::GoToMainMenu(GoToMainMenuEvent) {}
Level* Application::GetCurrentLevel() const {
    return nullptr;
}
Dragable* DragAndDrop::GetDragable(const char*) {
    return nullptr;
}
int Dragable::ResetPosition() {
    return 0;
}
int PlayerSavegame::SG_Delete(std::uint32_t) {
    return 0;
}
int LevelSavegame::DeleteAllLevelSave(unsigned int) {
    return 0;
}
void ScriptManager::SkipScript(int, bool) {}
ScriptManager::ScriptManager() {}
ScriptManager::~ScriptManager() {}
ScriptManager ScriptManager::s_inst;

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    // No save slot is set, so FS_ResetSaveFile with no argument takes the m_lastSlot path with -1 and calls nothing.
    ApplicationGetInstance().m_savegameManager = reinterpret_cast<SavegameManager*>(g_saveStorage);
    reinterpret_cast<SavegameManager*>(g_saveStorage)->m_lastSlot = -1;
    // The string and constant sheets the language tail and the string handlers read. Both are zero-filled, and their
    // lookups are the stubs above, so they report "not found" without touching a sheet.
    ApplicationGetInstance().m_stringManager = reinterpret_cast<StringManager*>(g_stringStorage);
    ApplicationGetInstance().m_pyDataConstants = reinterpret_cast<PyDataConstants*>(g_pyStorage);

    // Handlers whose return value is fixed on every path (the menu is not dereferenced).
    Check(MenuBase::FS_SaveOptions("", "", nullptr), "FS_SaveOptions returns true");
    Check(MenuBase::FS_LoadWorldMap("", "", nullptr), "FS_LoadWorldMap returns true");
    Check(MenuBase::FS_GoToMainMenu("", "", nullptr), "FS_GoToMainMenu returns true");
    Check(MenuBase::FS_SkipScript("", "", nullptr), "FS_SkipScript returns true");
    Check(MenuBase::FS_IncOption("", "", nullptr), "FS_IncOption returns true");
    Check(MenuBase::FS_DecOption("", "", nullptr), "FS_DecOption returns true");
    Check(MenuBase::FS_ResetSaveFile("", "", nullptr), "FS_ResetSaveFile returns true");
    Check(MenuBase::FS_GetPlayerName("", "", ArgMenu()), "FS_GetPlayerName returns true");
    Check(!MenuBase::FS_EndLoading("", "", nullptr), "FS_EndLoading returns false");

    // Null and empty argument checks.
    Check(!MenuBase::FS_SetSaveSlot("", nullptr, nullptr), "FS_SetSaveSlot(null) returns false");
    Check(MenuBase::FS_SetSaveSlot("", "3", nullptr), "FS_SetSaveSlot(3) returns true");
    Check(!MenuBase::FS_SetOption("", nullptr, nullptr), "FS_SetOption(null) returns false");
    Check(MenuBase::FS_SetOption("", "option_Sound", nullptr), "FS_SetOption(option_Sound) returns true");
    Check(!MenuBase::FS_ToggleOption("", nullptr, nullptr), "FS_ToggleOption(null) returns false");
    Check(MenuBase::FS_ToggleOption("", "option_Sound", ArgMenu()), "FS_ToggleOption(option_Sound) returns true");
    Check(!MenuBase::FS_GetString("", nullptr, nullptr), "FS_GetString(null) returns false");
    Check(MenuBase::FS_GetString("", "1", ArgMenu()), "FS_GetString(1) returns true");
    Check(!MenuBase::FS_GetString2("", nullptr, nullptr), "FS_GetString2(null) returns false");
    Check(MenuBase::FS_GetString2("", "KEY", ArgMenu()), "FS_GetString2(KEY) returns true");
    Check(!MenuBase::FS_SetLanguage("", nullptr, nullptr), "FS_SetLanguage(null) returns false");
    Check(!MenuBase::FS_SetLanguage("", "", nullptr), "FS_SetLanguage(empty) returns false");

    // FS_SetBtnImage: no '|' separator means no lookup, so the result is false.
    Check(!MenuBase::FS_SetBtnImage("", nullptr, nullptr), "FS_SetBtnImage(null) returns false");
    Check(!MenuBase::FS_SetBtnImage("", "noSeparator", nullptr), "FS_SetBtnImage(no '|') returns false");

    // FS_LoadLevel: "undefined" is the no-op name and returns false before any call on the menu.
    Check(!MenuBase::FS_LoadLevel("", nullptr, nullptr), "FS_LoadLevel(null) returns false");
    Check(!MenuBase::FS_LoadLevel("", "undefined", nullptr), "FS_LoadLevel(undefined) returns false");

    if (g_failures == 0) {
        std::printf("MenuBase batch g1-game-ui-MenuBase-8948cc-1: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
