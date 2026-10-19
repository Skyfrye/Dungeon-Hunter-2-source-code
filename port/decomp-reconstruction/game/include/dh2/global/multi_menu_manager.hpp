// Globals and pure helpers used by the MultiMenuManager bodies (batch g1-game-ui-MultiMenuManager-1c2651-0).
// The globals are declarations only: each definition belongs to the category that owns the value. The addresses are
// the ELF .bss objects of libDungeonHunter2.so. Each one is a single byte in the original, so each is declared bool.
// lastOpenMenuID is declared in dh2/global/script_command_globals.hpp.
//
// The inline helpers below are factored out of the bodies so the tables and the array shift can be tested without the
// engine (the same arrangement as dh2/global/menu_manager_events_load.hpp). None of them is a symbol of
// libDungeonHunter2.so: each is the inline form of a switch or of a gameswf::array call in PopMenu, PushMenu or
// UnloadSWFFile.
#pragma once

#include <cstddef>
#include <cstdint>
#include <cstring>

// 0x9a5b58 Game_Text: set by MultiMenuManager::LoadSWFFile to (index == 2).
extern bool Game_Text;

// 0x9f6400 isInGameMenu: set to true by PushMenu for menu_Ingame, cleared for menu_MainMenu; read by both PopMenu bodies.
extern bool isInGameMenu;

// 0x9f6401 isBackKeyPressed: read by PopMenu(bool) and PopMenu(const char*, bool) and cleared by both, and by PushMenu.
extern bool isBackKeyPressed;

// 0x9a5c09 Back_key_Glive: set to true by PushMenu for menu_VerificationLoading.
extern bool Back_key_Glive;

// 0x9a5b5a Is_In_Multiplayer_IGM: set by PushMenu for the multiplayer menus, cleared for menu_MainMenu.
extern bool Is_In_Multiplayer_IGM;

// 0x9a5b59 Is_In_Multiplayer_Mode: set by PushMenu for the multiplayer menus. Also declared in
// core-platform/deps/application.hpp with the same type.
extern bool Is_In_Multiplayer_Mode;

// gameswf::array<T>::remove as the original inlines it in PopMenu and UnloadSWFFile (the binary form is
// gameswf::array<MenuFX*>::remove at 0x437ae8). A count of 1 clears the array. Otherwise the tail moves down one slot
// (memmove) and the count drops by one. The slot past the new count keeps its old value, as in the original.
template <typename T>
inline void MultiMenuManagerArrayRemove(T*& data, std::int32_t& count, std::int32_t index) {
    if (count == 1) {
        count = 0;
        return;
    }
    std::memmove(data + index, data + index + 1, sizeof(T) * static_cast<std::size_t>(count - 1 - index));
    --count;
}

// The last-open menu id that PopMenu returns to from `id`, the switch in the first block of PopMenu(bool) (0x438c14)
// and PopMenu(const char*, bool) (0x439270). `inGame` is isInGameMenu. The result is `id` itself when no case matches.
inline int MultiMenuManagerPopReturnId(int id, bool inGame) {
    switch (id) {
        case 4:
            return 1;
        case 6:
            return inGame ? 10 : 4;
        case 14:
            return inGame ? 5 : 6;
        case 3:
            return inGame ? 10 : 1;
        case 5:
            return 10;
        case 12:
            return 9;
        case 15:
            return 4;
        default:
            return id;
    }
}

// The eight character and sheet pages. PushMenu gives them last-open id 12 (every other unlisted name in its chain
// that matches no case gives 13).
inline bool MultiMenuManagerIsSheetMenu(const char* name) {
    static const char* const kSheetMenus[] = {
        "menu_CharacterMenu",     "menu_CharacterSheetNew", "menu_CharacterSheetStats", "menu_InventorySheetMain",
        "menu_SkillTreeSheetNew", "menu_FaerySheet",        "menu_QuestLogSheetNEW",    "menu_MapSheet",
    };
    for (const char* sheet : kSheetMenus) {
        if (std::strcmp(name, sheet) == 0) {
            return true;
        }
    }
    return false;
}
