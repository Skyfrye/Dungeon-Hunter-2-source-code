// Test for batch g1-game-app-global-f216b6-8. Covers the functions whose logic runs without the engine:
// NativeGoToMainMenu (one GoToMainMenu call with event 0), IsNonDebugQuest (negated Quest::IsDebug) and the three
// decision helpers that restate the branches of NativeHUDInteract, NativeIsMultiplayerLoadCompleted and
// NativeMustWaitForHost. Exit status 0 means every check passed.
#include <cstdio>
#include <cstring>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/Quest.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/native_sound_menu.hpp"

// The batch source calls these; the test defines them so the batch source links alone.
namespace {

int g_failures = 0;
int g_resetFontsCalls = 0;
int g_goToMainMenuCalls = 0;
int g_lastGoToMainMenuEvent = -1;
const Application* g_lastGoToMainMenuThis = nullptr;
bool g_questIsDebug = false;
const Quest* g_lastIsDebugThis = nullptr;
// One letter per settings call, in call order: S saveSettings, L loadSettings, U UpdateSavedValues,
// G getLanguage, T setLanguage. The language the stub reports is kSettingsLanguage.
std::string g_settingsCalls;
bool g_loadSettingsLanguageOnly = true;
int g_setLanguageArg = -1;
constexpr int kSettingsLanguage = 3;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Storage for the Application the stubs return. It is never constructed, and the stubs never touch it.
Application* PlaceholderApp() {
    alignas(Application) static unsigned char storage[sizeof(Application)];
    return reinterpret_cast<Application*>(storage);
}

// The natives never read their argument in the bodies that run here, so raw storage is enough.
const gameswf::fn_call& DummyCall() {
    alignas(8) static unsigned char storage[64];
    return reinterpret_cast<const gameswf::fn_call&>(storage);
}

// The savegame stubs never read *this either.
SavegameManager* PlaceholderSavegame() {
    alignas(SavegameManager) static unsigned char storage[sizeof(SavegameManager)];
    return reinterpret_cast<SavegameManager*>(storage);
}

// The MenuManager stubs never read *this either.
MenuManager* PlaceholderMenuManager() {
    alignas(MenuManager) static unsigned char storage[sizeof(MenuManager)];
    return reinterpret_cast<MenuManager*>(storage);
}

}  // namespace

Application& ApplicationGetInstance() {
    return *PlaceholderApp();
}

void Application::GoToMainMenu(GoToMainMenuEvent event) {
    ++g_goToMainMenuCalls;
    g_lastGoToMainMenuEvent = static_cast<int>(event);
    g_lastGoToMainMenuThis = this;
}

Level* Application::GetCurrentLevel() const {
    return nullptr;
}

bool Quest::IsDebug() const {
    g_lastIsDebugThis = this;
    return g_questIsDebug;
}

void SavegameManager::saveSettings() {
    g_settingsCalls += 'S';
}

void SavegameManager::loadSettings(bool languageOnly) {
    g_settingsCalls += 'L';
    g_loadSettingsLanguageOnly = languageOnly;
}

int SavegameManager::getLanguage() const {
    g_settingsCalls += 'G';
    return kSettingsLanguage;
}

int SavegameManager::setLanguage(int language) {
    g_settingsCalls += 'T';
    g_setLanguageArg = language;
    return 1;
}

void UpdateSavedValues() {
    g_settingsCalls += 'U';
}

MenuManager* MenuManager::GetInstance() {
    return PlaceholderMenuManager();
}

void MenuManager::ResetFonts() {
    ++g_resetFontsCalls;
}

namespace {

void TestGoToMainMenu() {
    g_goToMainMenuCalls = 0;
    g_lastGoToMainMenuEvent = -1;
    NativeGoToMainMenu(DummyCall());
    Check(g_goToMainMenuCalls == 1, "NativeGoToMainMenu calls GoToMainMenu once");
    Check(g_lastGoToMainMenuEvent == 0, "NativeGoToMainMenu passes event 0");
    Check(g_lastGoToMainMenuThis == PlaceholderApp(), "NativeGoToMainMenu uses the Application singleton");
}

void TestIsNonDebugQuest() {
    // Quest::IsDebug is stubbed above and never reads the object, so storage without a constructed Quest is enough.
    alignas(Quest) static unsigned char storage[sizeof(Quest)];
    const Quest* quest = reinterpret_cast<const Quest*>(storage);
    g_questIsDebug = true;
    Check(IsNonDebugQuest(quest) == false, "a debug quest is not a non-debug quest");
    Check(g_lastIsDebugThis == quest, "IsNonDebugQuest asks the same quest");
    g_questIsDebug = false;
    Check(IsNonDebugQuest(quest) == true, "a non-debug quest is a non-debug quest");
}

void TestHudInteractDecision() {
    Check(DecideHudInteract("quit") == HudInteractDecision::kSetExitConfirmation, "quit sets the exit confirmation");
    Check(DecideHudInteract("no") == HudInteractDecision::kClearExitConfirmation, "no clears the exit confirmation");
    Check(DecideHudInteract("yes") == HudInteractDecision::kAppDestroy, "other commands destroy the app");
    Check(DecideHudInteract("") == HudInteractDecision::kAppDestroy, "an empty command destroys the app");
    Check(DecideHudInteract("Quit") == HudInteractDecision::kAppDestroy, "the compare is case sensitive");
    Check(DecideHudInteract("quitx") == HudInteractDecision::kAppDestroy, "a longer command is not quit");
    Check(DecideHudInteract("nox") == HudInteractDecision::kAppDestroy, "a longer command is not no");
}

void TestMultiplayerLoadCompleted() {
    Check(MultiplayerLoadCompleteFromFlags(false, false, false) == true, "offline is always loaded");
    Check(MultiplayerLoadCompleteFromFlags(true, true, true) == true, "online with both checks is loaded");
    Check(MultiplayerLoadCompleteFromFlags(true, false, true) == false, "online without loading done is not loaded");
    Check(MultiplayerLoadCompleteFromFlags(true, true, false) == false, "online not ready to roll is not loaded");
}

void TestMustWaitForHost() {
    // offline: never wait
    Check(!MustWaitForHostFromFlags(false, false, false, false, false), "offline does not wait");
    // hosting locally: never wait
    Check(!MustWaitForHostFromFlags(true, true, false, false, false), "local host does not wait");
    // online, remote host with no word at +0x1394: wait
    Check(MustWaitForHostFromFlags(true, false, false, false, false), "online without a host word waits");
    // host words set and the local flag set: wait
    Check(MustWaitForHostFromFlags(true, false, true, true, true), "host words and the local flag wait");
    // host word set but the local flag clear: no wait
    Check(!MustWaitForHostFromFlags(true, false, true, true, false), "a clear local flag does not wait");
    // host word +0x1414 clear: no wait
    Check(!MustWaitForHostFromFlags(true, false, true, false, true), "a clear second host word does not wait");
}

void TestSaveAndLoadSettings() {
    PlaceholderApp()->m_savegameManager = PlaceholderSavegame();
    g_settingsCalls.clear();
    NativeSaveSettings(DummyCall());
    Check(g_settingsCalls == "SGT", "NativeSaveSettings saves, then re-applies the language");
    Check(g_setLanguageArg == kSettingsLanguage, "NativeSaveSettings passes the language back");
    Check(g_resetFontsCalls == 0, "NativeSaveSettings does not reset the fonts when the save is not blocked");
    // A blocked save clears the block and resets the fonts once, then saves as usual.
    PlaceholderSavegame()->m_saveBlocked = true;
    g_resetFontsCalls = 0;
    g_settingsCalls.clear();
    NativeSaveSettings(DummyCall());
    Check(g_resetFontsCalls == 1, "NativeSaveSettings resets the fonts once when the save is blocked");
    Check(PlaceholderSavegame()->m_saveBlocked == false, "NativeSaveSettings clears m_saveBlocked");
    Check(g_settingsCalls == "SGT", "a blocked NativeSaveSettings still saves and re-applies the language");
    g_settingsCalls.clear();
    g_loadSettingsLanguageOnly = true;
    NativeLoadSettings(DummyCall());
    Check(g_settingsCalls == "LUGT", "NativeLoadSettings loads, updates saved values, re-applies the language");
    Check(g_loadSettingsLanguageOnly == false, "NativeLoadSettings loads everything, not only the language");
    Check(g_setLanguageArg == kSettingsLanguage, "NativeLoadSettings passes the language back");
}

}  // namespace

int main() {
    TestGoToMainMenu();
    TestIsNonDebugQuest();
    TestHudInteractDecision();
    TestMultiplayerLoadCompleted();
    TestMustWaitForHost();
    TestSaveAndLoadSettings();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("all g1-game-app-global-f216b6-8 checks passed\n");
    return 0;
}
