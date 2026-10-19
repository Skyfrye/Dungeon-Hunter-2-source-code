// MenuBase bodies, batch g1-game-ui-MenuBase-8948cc-1 (part 2 of 5 of MenuBase): the Flash FSCommand
// handlers from FS_PopAllMenu through FS_ResetSaveFile. Rebuilt from the Hex-Rays pseudocode of
// libDungeonHunter2.so and checked against the ARM assembly where the pseudocode mistypes a call.
// Offsets in comments are the original 32-bit ARM offsets.
//
// Facts shared by the handlers:
//   - A handler is (command, args, menu). MenuBase::MyFSCommand passes the MenuBase as menu, so
//     static_cast<MenuBase*>(menu)->m_menu (State +0x04, the owning MenuFX) is the RenderFX the original uses.
//   - The Hex-Rays globals dword_99F758, dword_99F760, dword_99F778 and dword_99F780 are fields of the
//     Application singleton (Singleton<Application>::s_inst at 0x99f72c): +0x2c PyDataConstants,
//     +0x34 StringManager, +0x4c SavegameManager, +0x54 MenuManager (MenuManager::GetInstance returns that field).
//   - LC_API_ATOI_0 is atoi (its body at 0x30e094 is a bare atoi call) and LC_API_STRCMP_0 is strcmp.
//   - The singleton is reached through ApplicationGetInstance() (dh2/global/ctrl_camera.hpp).

#include <cstdint>
#include <cstdlib>
#include <cstring>

#include "gameswf/gameswf.h"
#include "dh2/Application.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/Dragable.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/Level.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "vendor-gameswf/as_value.hpp"

// 0x4203e4 _ZN8MenuBase13FS_PopAllMenuEPKcS1_Pv
// The original calls the virtual at vtable +0x38 of MenuManager::GetInstance()->m_multiMenuManager (+0xf4 of
// MenuManager) with argument 1, which is MultiMenuManager::PopMenu(bool repeat) with repeat = true. Returns true.
bool MenuBase::FS_PopAllMenu(const char*, const char*, void*) {
    MenuManager::GetInstance()->m_multiMenuManager->PopMenu(true);
    return true;
}

// 0x42040c _ZN8MenuBase14FS_SetBtnImageEPKcS1_Pv
// args is "<movie>|<frame>". The movie name (the bytes before '|') is looked up with RenderFX::Find on the menu's RenderFX,
// and GameSWFUtils::GotoFrame(found, frame text) runs on the result. The original passes the Find result on as a
// character; the same pointer is used here (gameswf::character derives from as_object).
bool MenuBase::FS_SetBtnImage(const char*, const char* args, void* menu) {
    if (!args) {
        return false;
    }
    const char* bar = std::strchr(args, '|');
    if (!bar) {
        return false;
    }
    const std::string name(args, bar);
    auto* target = reinterpret_cast<gameswf::character*>(static_cast<MenuBase*>(menu)->m_menu->Find(name.c_str()));
    if (target == nullptr) {
        return false;
    }
    return GameSWFUtils::GotoFrame(target, bar + 1) != 0;
}

// 0x4204bc _ZN8MenuBase14FS_LoadOptionsEPKcS1_Pv
// loadSettings(false) on the SavegameManager (+0x4c of the Application singleton), then returns the int of
// setLanguage(getLanguage()) (SavegameManager::setLanguage returns int in the binary, see SavegameManager.hpp).
bool MenuBase::FS_LoadOptions(const char*, const char*, void*) {
    SavegameManager* savegame = ApplicationGetInstance().m_savegameManager;
    savegame->loadSettings(false);
    return savegame->setLanguage(savegame->getLanguage()) != 0;
}

// 0x4204fc _ZN8MenuBase14FS_SaveOptionsEPKcS1_Pv
// saveSettings(), then setLanguage(getLanguage()) on the SavegameManager. The original ignores setLanguage's result
// and returns true.
bool MenuBase::FS_SaveOptions(const char*, const char*, void*) {
    SavegameManager* savegame = ApplicationGetInstance().m_savegameManager;
    savegame->saveSettings();
    savegame->setLanguage(savegame->getLanguage());
    return true;
}

// 0x42053c _ZN8MenuBase14FS_SetSaveSlotEPKcS1_Pv
// A null args returns false. Otherwise the original stores atoi(args) as an int at +0x08 of the SavegameManager
// (m_lastSlot) and returns true.
bool MenuBase::FS_SetSaveSlot(const char*, const char* args, void*) {
    if (!args) {
        return false;
    }
    ApplicationGetInstance().m_savegameManager->m_lastSlot = std::atoi(args);
    return true;
}

// 0x42057c _ZN8MenuBase14FS_SetLanguageEPKcS1_Pv
// A null or empty args returns false. Otherwise setLanguage(atoi(args)) on the SavegameManager; a zero result returns
// false, and a nonzero result calls ResetFonts on MenuManager::GetInstance() and returns true.
bool MenuBase::FS_SetLanguage(const char*, const char* args, void*) {
    if (!args || !*args) {
        return false;
    }
    if (ApplicationGetInstance().m_savegameManager->setLanguage(std::atoi(args)) == 0) {
        return false;
    }
    MenuManager::GetInstance()->ResetFonts();
    return true;
}

// 0x4205e0 _ZN8MenuBase12FS_SetOptionEPKcS1_Pv
// A null args returns false. Otherwise the original calls SavegameManager::setOption(args + 7, 0), where the 7 bytes
// skipped are a fixed prefix of the option name, and returns true.
bool MenuBase::FS_SetOption(const char*, const char* args, void*) {
    if (!args) {
        return false;
    }
    ApplicationGetInstance().m_savegameManager->setOption(args + 7, 0);
    return true;
}

// 0x420624 _ZN8MenuBase15FS_ToggleOptionEPKcS1_Pv
// With name = args + 7 (the same 7-byte prefix as FS_SetOption): toggleOption(name), then value = isOptionToggled(name).
// The owning RenderFX plays "true" or "false" on the full args string, sets _root.retval to the boolean value, and
// GameSWFUtils::PlayAnim runs "onToggleOption" on args. The original's isOptionToggled is read a second time for the
// anim choice; the second read is kept as in the pseudocode.
bool MenuBase::FS_ToggleOption(const char*, const char* args, void* menu) {
    if (!args) {
        return false;
    }
    MenuFX* owner = static_cast<MenuBase*>(menu)->m_menu;
    SavegameManager* savegame = ApplicationGetInstance().m_savegameManager;
    savegame->toggleOption(args + 7);
    const bool toggled = savegame->isOptionToggled(args + 7);
    owner->PlayAnim(args, savegame->isOptionToggled(args + 7) ? "true" : "false", 0);
    gameswf::as_value value;
    value.set_bool(toggled);
    owner->SetMember("_root", "retval", value);
    GameSWFUtils::PlayAnim(owner, args, "onToggleOption");
    return true;
}

// Shared tail of FS_DecOption and FS_IncOption: stores the new language, refreshes the fonts, and puts the localized
// language name into the root movie's currentLanguageText callback argument.
static void ApplyLanguageAndShowName(int language) {
    SavegameManager* savegame = ApplicationGetInstance().m_savegameManager;
    savegame->setLanguage(language);
    MenuManager::GetInstance()->ResetFonts();
    MenuFX* root = MenuManager::GetInstance()->GetRoot();
    StringManager* strings = ApplicationGetInstance().m_stringManager;
    const int constant = ApplicationGetInstance().m_pyDataConstants->getConstant("StrID", "GLOBAL_LANGUAGE_00");
    const char* text = strings->getString(constant + language);
    gameswf::as_value value;
    value.set_string(text);
    root->InvokeASCallback("_root.menu_language", "currentLanguageText", &value, 1);
}

// 0x420728 _ZN8MenuBase12FS_DecOptionEPKcS1_Pv
// lang = getLanguage() - 1, wrapped to 7 when negative; then the shared language tail. Returns true.
bool MenuBase::FS_DecOption(const char*, const char*, void*) {
    int lang = ApplicationGetInstance().m_savegameManager->getLanguage() - 1;
    if (lang < 0) {
        lang = 7;
    }
    ApplyLanguageAndShowName(lang);
    return true;
}

// 0x420804 _ZN8MenuBase12FS_IncOptionEPKcS1_Pv
// lang = getLanguage() + 1, wrapped to 0 when above 7; then the shared language tail. Returns true.
bool MenuBase::FS_IncOption(const char*, const char*, void*) {
    int lang = ApplicationGetInstance().m_savegameManager->getLanguage() + 1;
    if (lang > 7) {
        lang = 0;
    }
    ApplyLanguageAndShowName(lang);
    return true;
}

// 0x4208e4 _ZN8MenuBase25FS_ResetDraggablePositionEPKcS1_Pv
// The menu's DragAndDrop (+0x5c, MenuBase::m_dragAndDrop) must be set, or the function returns false. The original then
// calls DragAndDrop::GetDragable(args); a null result returns false, and otherwise Dragable::ResetPosition() runs and
// the function returns true.
bool MenuBase::FS_ResetDraggablePosition(const char*, const char* args, void* menu) {
    DragAndDrop* dragAndDrop = static_cast<MenuBase*>(menu)->m_dragAndDrop;
    if (!dragAndDrop) {
        return false;
    }
    Dragable* dragable = dragAndDrop->GetDragable(args);
    if (!dragable) {
        return false;
    }
    dragable->ResetPosition();  // the int result is ignored, as in the original
    return true;
}

// 0x420914 _ZN8MenuBase12FS_GetStringEPKcS1_Pv
// A null args returns false. Otherwise StringManager::getString(atoi(args)); when the string exists it is stored as
// _root.retval on the owning RenderFX. Returns true either way.
bool MenuBase::FS_GetString(const char*, const char* args, void* menu) {
    if (!args) {
        return false;
    }
    const char* text = ApplicationGetInstance().m_stringManager->getString(std::atoi(args));
    if (text) {
        static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", text);
    }
    return true;
}

// 0x420988 _ZN8MenuBase16FS_GetPlayerNameEPKcS1_Pv
// Sets _root.retval on the owning RenderFX to the player name, or to "" when args is empty or the name is empty or
// null, and returns true in all cases. The name comes from PlayerSavegame::SG_GetPlayerName(atoi(args)).
bool MenuBase::FS_GetPlayerName(const char*, const char* args, void* menu) {
    const char* name = nullptr;
    if (args && *args) {
        name = PlayerSavegame::SG_GetPlayerName(static_cast<std::uint32_t>(std::atoi(args)));
    }
    static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", (name && *name) ? name : "");
    return true;
}

// 0x420a1c _ZN8MenuBase13FS_GetString2EPKcS1_Pv
// A null args returns false. Otherwise StringManager::getStringFromSymbol(args) and, when the string is found, it is
// stored as _root.retval on the owning RenderFX. Returns true either way.
bool MenuBase::FS_GetString2(const char*, const char* args, void* menu) {
    if (!args) {
        return false;
    }
    const char* text = ApplicationGetInstance().m_stringManager->getStringFromSymbol(args);
    if (text) {
        static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", text);
    }
    return true;
}

// 0x420b48 _ZN8MenuBase13FS_EndLoadingEPKcS1_Pv
// The current level comes from Application::GetCurrentLevel() on the singleton. When the level exists and its m_loadStep
// (+0x130, Level::m_loadStep) is 36 (0x24), the step is advanced to 37. The function always returns false.
bool MenuBase::FS_EndLoading(const char*, const char*, void*) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level && level->m_loadStep == 36) {
        ++level->m_loadStep;
    }
    return false;
}

// 0x420b8c _ZN8MenuBase15FS_LoadWorldMapEPKcS1_Pv
// Application::LoadWorldMap(-1) on the singleton. The original passes (GSLevelMap*)0xFFFFFFFF; dh2/Application.hpp
// declares the parameter int, and -1 is the same value. Returns true.
bool MenuBase::FS_LoadWorldMap(const char*, const char*, void*) {
    ApplicationGetInstance().LoadWorldMap(-1);
    return true;
}

// 0x420bb8 _ZN8MenuBase12FS_LoadLevelEPKcS1_Pv
// A null args returns false here; the original calls strcmp on it. "undefined" returns false, as the original does.
// Otherwise the original calls MenuFX::PopAll() on m_menu, then Application::LoadLevel(args, 0, 0, false, true, 0, false,
// 0, 0) on the singleton, and returns true. The original passes a null pointer in the second (entry point) argument;
// dh2/Application.hpp declares that argument int, and the value 0 is the same.
bool MenuBase::FS_LoadLevel(const char*, const char* args, void* menu) {
    if (!args) {
        return false;
    }
    if (std::strcmp(args, "undefined") == 0) {
        return false;
    }
    static_cast<MenuBase*>(menu)->m_menu->PopAll();
    ApplicationGetInstance().LoadLevel(args, 0, 0, false, true, 0, false, 0, 0);
    return true;
}

// 0x420c3c _ZN8MenuBase15FS_GoToMainMenuEPKcS1_Pv
// Application::GoToMainMenu(0) on the singleton. The event value 0 is passed as is; the GoToMainMenuEvent values are
// not recovered (dh2/Application.hpp). Returns true.
bool MenuBase::FS_GoToMainMenu(const char*, const char*, void*) {
    ApplicationGetInstance().GoToMainMenu(static_cast<GoToMainMenuEvent>(0));
    return true;
}

// 0x420c68 _ZN8MenuBase13FS_SkipScriptEPKcS1_Pv
// ScriptManager::SkipScript(-2, false) on the static instance ScriptManager::s_inst. Returns true.
bool MenuBase::FS_SkipScript(const char*, const char*, void*) {
    ScriptManager::s_inst.SkipScript(-2, false);
    return true;
}

// 0x420c98 _ZN8MenuBase16FS_ResetSaveFileEPKcS1_Pv
// The slot is atoi(args) when args is non-empty, otherwise the SavegameManager's signed m_lastSlot (+0x08). When the slot
// is not negative, the original calls PlayerSavegame::SG_Delete(slot) and then LevelSavegame::DeleteAllLevelSave(slot).
// The assembly (0x420c98) sets only r0 for both calls, so the slot is the only argument. Returns true in all cases.
bool MenuBase::FS_ResetSaveFile(const char*, const char* args, void*) {
    std::int32_t slot;
    if (args != nullptr && *args != '\0') {
        slot = std::atoi(args);
    } else {
        slot = ApplicationGetInstance().m_savegameManager->m_lastSlot;
    }
    if (slot >= 0) {
        PlayerSavegame::SG_Delete(static_cast<std::uint32_t>(slot));
        LevelSavegame::DeleteAllLevelSave(static_cast<std::uint32_t>(slot));
    }
    return true;
}
