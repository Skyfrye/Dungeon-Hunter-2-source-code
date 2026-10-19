// Checks the MenuBase bodies of batch r2a-game-ui-MenuBase-8948cc-0 that are defined in
// game-ui/src/g1-game-ui-MenuBase-8948cc-1.cpp and run without the engine. The singletons they reach are link-only
// stubs over raw storage. Every stub appends a line to g_log, so each test checks the calls the handler makes and
// their arguments, in order. The functions of this batch in g1-game-ui-MenuBase-8948cc-0.cpp (the LevelList and
// CharacterTable name searches and the "All" branches) are checked by g1-game-ui-MenuBase-8948cc-0_test.cpp.
// FS_PopAllMenu and FS_LoadLevel with a level name are not called: they need a MultiMenuManager or a MenuBase object
// with a live vtable, which this test does not build.
#include <cstdint>
#include <cstdio>
#include <initializer_list>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/Dragable.hpp"
#include "dh2/Level.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/global/ctrl_camera.hpp"

// ---- Recorder and fake singleton storage.
namespace {

std::vector<std::string> g_log;
int g_language = 7;
Level* g_level = nullptr;
Dragable* g_dragable = nullptr;
unsigned char g_dragAndDropTag;
unsigned char g_dragableTag;

alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(SavegameManager) unsigned char g_saveStorage[sizeof(SavegameManager)];
alignas(Level) unsigned char g_levelStorage[sizeof(Level)];
alignas(MenuBase) unsigned char g_menuStorage[sizeof(MenuBase)];

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// True when the calls recorded since the last check equal `want`, in order. Clears the record.
bool LogIs(std::initializer_list<const char*> want) {
    std::vector<std::string> expected(want.begin(), want.end());
    const bool same = (g_log == expected);
    if (!same) {
        std::printf("  recorded:");
        for (const std::string& line : g_log) {
            std::printf(" [%s]", line.c_str());
        }
        std::printf("\n");
    }
    g_log.clear();
    return same;
}

SavegameManager& SaveManager() {
    return *reinterpret_cast<SavegameManager*>(g_saveStorage);
}

Level& CurrentLevel() {
    return *reinterpret_cast<Level*>(g_levelStorage);
}

}  // namespace

// ---- Singleton access and the link-only stubs for the calls the handlers make.
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

void MenuFX::PopAll() {
    g_log.push_back("PopAll");
}

// DELIBERATE TEST STUB, not a real object. Because tests link with -Wl,--allow-multiple-definition and the FIRST
// definition wins, this stub also disables the library's real MenuManager::GetInstance (0x42ca8c, which returns
// ApplicationGetInstance().m_menuManager) for the whole executable. The batch's only call is
// `MenuManager::GetInstance()->m_multiMenuManager->PopMenu(true)` in FS_PopAllMenu, which this test does not call.
// The other menu path, FS_SetLanguage -> ResetFonts, is kept safe by the link-only ResetFonts stub further down
// (the Application singleton here has a null m_menuManager, so the real GetInstance would return null there too
// and the real ResetFonts would then dereference it). Any later check that calls a real MenuManager member would
// dereference null and fault.
MenuManager* MenuManager::GetInstance() {
    return nullptr;
}

// The library's MenuManager::ResetFonts (0x42d72c) forwards to MultiMenuManager::ResetFonts() through
// m_multiMenuManager, so it dereferences the null singleton above. FS_SetLanguage reaches that forward once
// setLanguage reports success, and this test builds no MultiMenuManager, so the forward is stubbed out here.
// On an empty manager the real forward clears no fonts, so the call adds nothing to g_log.
int g_resetFonts = 0;
void MenuManager::ResetFonts() {
    ++g_resetFonts;
}

void SavegameManager::loadSettings(bool languageOnly) {
    g_log.push_back(std::string("loadSettings ") + (languageOnly ? "1" : "0"));
}
void SavegameManager::saveSettings() {
    g_log.push_back("saveSettings");
}
int SavegameManager::getLanguage() const {
    g_log.push_back("getLanguage");
    return g_language;
}
int SavegameManager::setLanguage(int language) {
    g_log.push_back("setLanguage " + std::to_string(language));
    return 1;  // the original returns StringManager::switchPack's bool; the stubs report success
}
void SavegameManager::setOption(const char* name, int value) {
    g_log.push_back(std::string("setOption ") + name + " " + std::to_string(value));
}

void Application::LoadLevel(const char* name, int, std::uint32_t, bool, bool, int, bool, std::uint32_t, std::uint32_t) {
    g_log.push_back(std::string("LoadLevel ") + name);
}
void Application::LoadWorldMap(int index) {
    g_log.push_back("LoadWorldMap " + std::to_string(index));
}
void Application::GoToMainMenu(GoToMainMenuEvent event) {
    g_log.push_back("GoToMainMenu " + std::to_string(static_cast<int>(event)));
}
Level* Application::GetCurrentLevel() const {
    return g_level;
}

Dragable* DragAndDrop::GetDragable(const char* name) {
    g_log.push_back(std::string("GetDragable ") + name);
    return g_dragable;
}
int Dragable::ResetPosition() {
    g_log.push_back("ResetPosition");
    return 1;
}

int PlayerSavegame::SG_Delete(std::uint32_t slot) {
    g_log.push_back("SG_Delete " + std::to_string(slot));
    return 0;
}
int LevelSavegame::DeleteAllLevelSave(unsigned int levelId) {
    g_log.push_back("DeleteAllLevelSave " + std::to_string(levelId));
    return 0;
}

void ScriptManager::SkipScript(int id, bool fromRemote) {
    g_log.push_back("SkipScript " + std::to_string(id) + " " + (fromRemote ? "1" : "0"));
}
ScriptManager::ScriptManager() {}
ScriptManager::~ScriptManager() {}
ScriptManager ScriptManager::s_inst;

int main() {
    ApplicationGetInstance().m_savegameManager = reinterpret_cast<SavegameManager*>(g_saveStorage);
    SaveManager().m_lastSlot = -1;
    g_level = &CurrentLevel();
    MenuBase* menu = reinterpret_cast<MenuBase*>(g_menuStorage);  // zeroed, never constructed: only m_dragAndDrop is read

    // FS_SetSaveSlot: atoi of the argument goes to SavegameManager::m_lastSlot; a null argument leaves it alone.
    Check(!MenuBase::FS_SetSaveSlot("", nullptr, nullptr), "FS_SetSaveSlot(null) returns false");
    Check(SaveManager().m_lastSlot == -1, "FS_SetSaveSlot(null) leaves the slot");
    Check(MenuBase::FS_SetSaveSlot("", "12", nullptr), "FS_SetSaveSlot(12) returns true");
    Check(SaveManager().m_lastSlot == 12, "FS_SetSaveSlot(12) stores 12");
    SaveManager().m_lastSlot = -1;

    // FS_SetOption: the 7-byte prefix "option_" is dropped and the value is 0.
    Check(!MenuBase::FS_SetOption("", nullptr, nullptr), "FS_SetOption(null) returns false");
    Check(LogIs({}), "FS_SetOption(null) makes no call");
    Check(MenuBase::FS_SetOption("", "option_Sound", nullptr), "FS_SetOption(option_Sound) returns true");
    Check(LogIs({"setOption Sound 0"}), "FS_SetOption passes the name after the prefix, value 0");

    // FS_SaveOptions and FS_LoadOptions: the order of the SavegameManager calls.
    g_language = 7;
    Check(MenuBase::FS_SaveOptions("", "", nullptr), "FS_SaveOptions returns true");
    Check(LogIs({"saveSettings", "getLanguage", "setLanguage 7"}), "FS_SaveOptions saves, then re-applies the language");
    Check(MenuBase::FS_LoadOptions("", "", nullptr), "FS_LoadOptions returns setLanguage's result (nonzero here)");
    Check(LogIs({"loadSettings 0", "getLanguage", "setLanguage 7"}),
          "FS_LoadOptions loads all settings, then re-applies the language");

    // FS_SetLanguage: null and empty arguments make no call; a value calls setLanguage, then (the original
    // returns ResetFonts' bool, which is void here) returns true.
    Check(!MenuBase::FS_SetLanguage("", nullptr, nullptr), "FS_SetLanguage(null) returns false");
    Check(!MenuBase::FS_SetLanguage("", "", nullptr), "FS_SetLanguage(empty) returns false");
    Check(LogIs({}), "FS_SetLanguage null and empty make no call");
    g_resetFonts = 0;
    Check(MenuBase::FS_SetLanguage("", "3", nullptr), "FS_SetLanguage(3) returns true");
    Check(LogIs({"setLanguage 3"}), "FS_SetLanguage(3) calls setLanguage(3)");
    Check(g_resetFonts == 1, "FS_SetLanguage(3) resets the fonts once it has a result");

    // FS_ResetSaveFile: a nonempty argument is the slot; otherwise the slot is m_lastSlot. Negative slots do nothing.
    Check(MenuBase::FS_ResetSaveFile("", "5", nullptr), "FS_ResetSaveFile(5) returns true");
    Check(LogIs({"SG_Delete 5", "DeleteAllLevelSave 5"}), "FS_ResetSaveFile(5) deletes slot 5");
    Check(MenuBase::FS_ResetSaveFile("", "", nullptr), "FS_ResetSaveFile(empty, slot -1) returns true");
    Check(LogIs({}), "FS_ResetSaveFile with no slot set makes no call");
    SaveManager().m_lastSlot = 2;
    Check(MenuBase::FS_ResetSaveFile("", "", nullptr), "FS_ResetSaveFile(empty) returns true");
    Check(LogIs({"SG_Delete 2", "DeleteAllLevelSave 2"}), "FS_ResetSaveFile(empty) deletes m_lastSlot");
    Check(MenuBase::FS_ResetSaveFile("", nullptr, nullptr), "FS_ResetSaveFile(null) returns true");
    Check(LogIs({"SG_Delete 2", "DeleteAllLevelSave 2"}), "FS_ResetSaveFile(null) deletes m_lastSlot");
    SaveManager().m_lastSlot = -1;

    // FS_EndLoading: the level's m_loadStep goes from 36 to 37, and nothing else changes.
    g_level = nullptr;
    Check(!MenuBase::FS_EndLoading("", "", nullptr), "FS_EndLoading returns false without a level");
    g_level = &CurrentLevel();
    CurrentLevel().m_loadStep = 36;
    Check(!MenuBase::FS_EndLoading("", "", nullptr), "FS_EndLoading returns false");
    Check(CurrentLevel().m_loadStep == 37, "FS_EndLoading advances the step from 36 to 37");
    Check(!MenuBase::FS_EndLoading("", "", nullptr), "FS_EndLoading returns false again");
    Check(CurrentLevel().m_loadStep == 37, "FS_EndLoading leaves any other step alone");
    CurrentLevel().m_loadStep = 10;
    Check(!MenuBase::FS_EndLoading("", "", nullptr), "FS_EndLoading returns false at step 10");
    Check(CurrentLevel().m_loadStep == 10, "FS_EndLoading does not move step 10");

    // FS_LoadWorldMap, FS_GoToMainMenu, FS_SkipScript: fixed arguments, true.
    Check(MenuBase::FS_LoadWorldMap("", "", nullptr), "FS_LoadWorldMap returns true");
    Check(LogIs({"LoadWorldMap -1"}), "FS_LoadWorldMap passes -1");
    Check(MenuBase::FS_GoToMainMenu("", "", nullptr), "FS_GoToMainMenu returns true");
    Check(LogIs({"GoToMainMenu 0"}), "FS_GoToMainMenu passes event 0");
    Check(MenuBase::FS_SkipScript("", "", nullptr), "FS_SkipScript returns true");
    Check(LogIs({"SkipScript -2 0"}), "FS_SkipScript(-2, false)");

    // FS_LoadLevel: null and "undefined" return false before any call.
    Check(!MenuBase::FS_LoadLevel("", nullptr, menu), "FS_LoadLevel(null) returns false");
    Check(!MenuBase::FS_LoadLevel("", "undefined", menu), "FS_LoadLevel(undefined) returns false");
    Check(LogIs({}), "FS_LoadLevel null and undefined make no call");

    // FS_ResetDraggablePosition: needs the menu's DragAndDrop, then the Dragable of the name.
    menu->m_dragAndDrop = nullptr;
    Check(!MenuBase::FS_ResetDraggablePosition("", "Panel", menu), "FS_ResetDraggablePosition without DragAndDrop returns false");
    Check(LogIs({}), "FS_ResetDraggablePosition without DragAndDrop makes no call");
    menu->m_dragAndDrop = reinterpret_cast<DragAndDrop*>(&g_dragAndDropTag);
    g_dragable = nullptr;
    Check(!MenuBase::FS_ResetDraggablePosition("", "Panel", menu), "FS_ResetDraggablePosition with no Dragable returns false");
    Check(LogIs({"GetDragable Panel"}), "FS_ResetDraggablePosition looks the name up");
    g_dragable = reinterpret_cast<Dragable*>(&g_dragableTag);
    Check(MenuBase::FS_ResetDraggablePosition("", "Panel", menu), "FS_ResetDraggablePosition returns true");
    Check(LogIs({"GetDragable Panel", "ResetPosition"}), "FS_ResetDraggablePosition resets the found Dragable");

    if (g_failures == 0) {
        std::printf("MenuBase batch r2a-game-ui-MenuBase-8948cc-0: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
