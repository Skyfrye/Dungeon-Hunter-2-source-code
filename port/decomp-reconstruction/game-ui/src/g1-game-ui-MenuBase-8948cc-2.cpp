// MenuBase bodies, batch g1-game-ui-MenuBase-8948cc-2 (part 3 of 5 of MenuBase): the Flash FSCommand handlers from
// FS_IsSaveSlotValid through FS_GetPlayerClass2, and MenuBase::IsTopMost. Rebuilt from the Hex-Rays pseudocode of
// libDungeonHunter2.so. Offsets in comments are the original 32-bit ARM offsets. Partial functions say in their comment
// which part is missing.
//
// Facts shared by the handlers:
//   - A handler is (command, args, menu). The menu is the MenuBase, so static_cast<MenuBase*>(menu)->m_menu (State +0x04,
//     the owning MenuFX) is the RenderFX that the original uses for _root.retval.
//   - The Application singleton (Singleton<Application>::s_inst, 0x99f72c) is reached through ApplicationGetInstance()
//     (dh2/global/ctrl_camera.hpp; the integrator defines it). Its fields used here are the Hex-Rays globals:
//     dword_99F744 = m_stateMachine (+0x18), dword_99F76C = m_playerManager (+0x40), dword_99F778 = m_savegameManager
//     (+0x4c). dword_9A247C is GSFlashMenu::s_inst.m_pendingMenu (+0x0c).
//   - LC_API_ATOI_0 is atoi and LC_API_STRCMP_0 is strcmp, as in batches 0 and 1.
//   - RenderFX::SetMember (dh2/RenderFX.hpp) publishes _root.retval. A boolean is published as a gameswf::as_value built
//     with set_bool, and a text as a const char*.
//   - The local Character is ApplicationGetInstance().m_playerManager->GetLocalPlayerCharacter(), which is
//     GetLocalPlayer(0, true)->character_660 (PlayerManager.hpp, Character.hpp, PlayerInfo.hpp).
//   - MenuManager::m_multiMenuManager (+0xf4) is a MultiMenuManager (dh2/MultiMenuManager.hpp). Its virtual PopMenu(bool)
//     is vtable slot +0x38.
//   - VoxSoundManager::PlayMenu is not declared in vox-audio/include/vox-audio/vox/sound_manager.hpp, so the sound
//     handlers stay PARTIAL.
//   - SavegameManager::m_lastSlot (+0x08) is a public member of dh2/SavegameManager.hpp, read directly where a handler needs the slot.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/Character.hpp"
#include "dh2/GSFlashMenu.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/Random.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "core-platform/w7_global_rem.hpp"
#include "dh2/global/menu_base_fs.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/member_names.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "vendor-gameswf/as_value.hpp"

namespace {

// Index of `name` in the Sounds name table, or -1. The original compares with strcmp in table order and returns the
// first match. Its count is Arrays::Sounds::size (w7_arrays_00.hpp). That header declares a second struct named
// Arrays::Sounds, so it cannot be included next to member_names.hpp. The NameTable size is used instead, as batch 0
// does for CharacterTable.
int FindSoundIndex(const char* name) {
    const pydata::NameTable& table = Arrays::Sounds::m_memberNames;
    for (int i = 0; i < table.size; ++i) {
        if (std::strcmp(name, table.names[i]) == 0) {
            return i;
        }
    }
    return -1;
}

}  // namespace

// 0x420cfc _ZN8MenuBase18FS_IsSaveSlotValidEPKcS1_Pv
// The original reads the slot from args (atoi), tests PlayerSavegame::SG_Exists on it, and publishes the boolean as
// _root.retval of the menu's RenderFX. A null args or slot -1 publishes false. Returns true.
bool MenuBase::FS_IsSaveSlotValid(const char*, const char* args, void* menu) {
    bool valid = false;
    if (args != nullptr) {
        const int slot = std::atoi(args);
        if (slot != -1) {
            valid = PlayerSavegame::SG_Exists(static_cast<std::uint32_t>(slot)) != 0;
        }
    }
    gameswf::as_value retval;
    retval.set_bool(valid);
    static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", retval);
    return true;
}

// 0x420d7c _ZN8MenuBase14FS_GetSaveSlotEPKcS1_Pv
// The current slot (SavegameManager::m_lastSlot) is published as an int when it exists. Otherwise the first existing
// slot among 1 to 4 is published, or "" when none exists. Returns true.
bool MenuBase::FS_GetSaveSlot(const char*, const char*, void* menu) {
    RenderFX* fx = static_cast<MenuBase*>(menu)->m_menu;
    const std::int32_t current = ApplicationGetInstance().m_savegameManager->m_lastSlot;
    if (current != -1 && PlayerSavegame::SG_Exists(static_cast<std::uint32_t>(current)) != 0) {
        fx->SetMember("_root", "retval", current);
        return true;
    }
    for (std::uint32_t slot = 1; slot != 5; ++slot) {
        if (PlayerSavegame::SG_Exists(slot) != 0) {
            fx->SetMember("_root", "retval", static_cast<int>(slot));
            return true;
        }
    }
    fx->SetMember("_root", "retval", "");
    return true;
}

// 0x420e64 _ZN8MenuBase14FS_ContinueGameEPKcS1_Pv
// The menu stack is closed (MenuFX::PopAll on the menu MenuFX), then the current save slot is read (SavegameManager::m_lastSlot).
// With slot -1 the "StartGame" command runs on the menu (virtual MyFSCommand, vtable +0x38) with the handler args. Otherwise the
// slot PlayerSavegame is loaded (mode 1) and Application::LoadLevel starts the level of the current difficulty: the LevelList
// name of its level id (unk_50[difficulty]), its entry point, the slot, resumed when its seed (m_seeds[difficulty]) is non-zero,
// the use-spawn argument from the synced random seed, difficulty argument 1.
bool MenuBase::FS_ContinueGame(const char*, const char* args, void* menu) {
    MenuBase* self = static_cast<MenuBase*>(menu);
    self->m_menu->PopAll();
    const std::int32_t slot = ApplicationGetInstance().m_savegameManager->m_lastSlot;
    if (slot == -1) {
        self->MyFSCommand("StartGame", args);
        return true;
    }
    PlayerSavegame save(static_cast<std::uint32_t>(slot), 1, false);
    const int difficulty = PlayerSavegame::m_difficultyLevel;
    const auto* levels = static_cast<const Structs::LevelDeclaration*>(static_cast<const void*>(Arrays::LevelList::members));
    const char* levelName = static_cast<const char*>(levels[save.unk_50[difficulty]].LevelFile);
    ApplicationGetInstance().LoadLevel(levelName, save.m_levelEntryPoint[difficulty], save.m_slot, save.m_seeds[difficulty] != 0,
                                       Random::s_syncedSeed != 0, 1, false, 0, 0);
    return true;
}

// 0x420fac _ZN8MenuBase15FS_ReturnToGameEPKcS1_Pv
// With a current save slot (not -1): that slot PlayerSavegame is loaded, the menu stack is closed (MenuFX::PopAll) and
// Application::LoadLevel starts the level of the current difficulty (not resumed, spawn point in use). Returns true.
bool MenuBase::FS_ReturnToGame(const char*, const char*, void* menu) {
    const std::int32_t slot = ApplicationGetInstance().m_savegameManager->m_lastSlot;
    if (slot != -1) {
        PlayerSavegame save(static_cast<std::uint32_t>(slot), 1, false);
        static_cast<MenuBase*>(menu)->m_menu->PopAll();
        const int difficulty = PlayerSavegame::m_difficultyLevel;
        const auto* levels = static_cast<const Structs::LevelDeclaration*>(static_cast<const void*>(Arrays::LevelList::members));
        const char* levelName = static_cast<const char*>(levels[save.unk_50[difficulty]].LevelFile);
        ApplicationGetInstance().LoadLevel(levelName, save.m_levelEntryPoint[difficulty], save.m_slot, false, true, 0, false, 0, 0);
    }
    return true;
}

// 0x4210a8 _ZN8MenuBase13FS_PlayMusicEPKcS1_Pv
// PARTIAL: args names a cue of the Sounds table. The original finds its index by strcmp over the table names and then
// calls VoxSoundManager::PlayMusic(s_instance, index, 1, 0, 2000). VoxSoundManager is not declared in this tree, so
// that call is left out. Returns true when the name is found and false otherwise, including null or empty args.
bool MenuBase::FS_PlayMusic(const char*, const char* args, void*) {
    if (args == nullptr || *args == '\0') {
        return false;
    }
    const int index = FindSoundIndex(args);
    if (index == -1) {
        return false;
    }
    VoxSoundManager::s_instance->PlayMusic(index, true, false, 2000);
    return true;
}

// 0x421164 _ZN8MenuBase13FS_PlaySoundFXEPKcS1_Pv
// PARTIAL: the same name search as FS_PlayMusic. The original then calls VoxSoundManager::PlayMenu(s_instance, index,
// 0, 0, 0), which is not declared in this tree, so that call is left out. Returns true when the name is found.
bool MenuBase::FS_PlaySoundFX(const char*, const char* args, void*) {
    if (args == nullptr || *args == '\0') {
        return false;
    }
    const int index = FindSoundIndex(args);
    if (index == -1) {
        return false;
    }
    VoxSoundManager::s_instance->PlayMenu(index, false, 0, 0);
    return true;
}

// 0x42121c _ZN8MenuBase12FS_SetFocusEPKcS1_Pv
// RenderFX::SetFocus(menu->m_menu, args, 0). Returns true as in the original.
bool MenuBase::FS_SetFocus(const char*, const char* args, void* menu) {
    static_cast<MenuBase*>(menu)->m_menu->SetFocus(args, 0);
    return true;
}

// 0x421234 _ZN8MenuBase12FS_PushStateEPKcS1_Pv
// The original opens the menu named args as a state. For "menu_CharacterMenu" and "menu_Ingame" it first needs
// GSLevel::s_gsLevel on top of the state machine's stack and returns false otherwise. Then it stores
// MenuManager::GetMenuByName(args) in GSFlashMenu::s_inst.m_pendingMenu (dword_9A247C), pushes &GSFlashMenu::s_inst
// on Application::m_stateMachine (not owned), and returns true.
// The stack top is the last entry of StateMachine::m_stack (the original reads the end pointer minus 8, and the state
// pointer of that entry). The stack must not be empty and its top must be GSLevel::s_gsLevel. A null args returns false
// here; the original calls strcmp on it, which is undefined for a null pointer.
bool MenuBase::FS_PushState(const char*, const char* args, void*) {
    if (args == nullptr) {
        return false;
    }
    const bool guarded = std::strcmp("menu_CharacterMenu", args) == 0 || std::strcmp("menu_Ingame", args) == 0;
    StateMachine* machine = ApplicationGetInstance().m_stateMachine;
    if (guarded && (machine->m_stack.empty() || machine->m_stack.back().state != &GSLevel::s_gsLevel)) {
        return false;
    }
    GSFlashMenu::s_inst.m_pendingMenu = MenuManager::GetInstance()->GetMenuByName(args);
    machine->PushState(&GSFlashMenu::s_inst, false);
    return true;
}

// 0x4212f8 _ZN8MenuBase13FS_SwitchMenuEPKcS1_Pv
// The original first calls the virtual at vtable +0x38 of MenuManager::m_multiMenuManager (+0xf4) with argument 0, which
// is MultiMenuManager::PopMenu(false), then pushes args with MenuManager::PushMenu. Returns true.
bool MenuBase::FS_SwitchMenu(const char*, const char* args, void*) {
    MenuManager* instance = MenuManager::GetInstance();
    instance->m_multiMenuManager->PopMenu(false);
    instance->PushMenu(args);
    return true;
}

// 0x421334 _ZN8MenuBase13FS_PushMenuEPKcS1_Pv
bool MenuBase::FS_PushMenu(const char*, const char* args, void*) {
    MenuManager::GetInstance()->PushMenu(args);
    return true;
}

// 0x421350 _ZN8MenuBase15FS_PopAllAboveEPKcS1_Pv
// The original looks up the state named args (default "menu_CharacterMenu") in the menu's MenuFX. While that state is
// not the current one and the MenuFX stack (m_stack, count at +0x118) is not empty, it pops one page with
// MultiMenuManager::PopMenu(false): the virtual at vtable +0x38, whose argument r1 is set to 0 before the loop. It
// returns whether the target is the current state.
bool MenuBase::FS_PopAllAbove(const char*, const char* args, void* menu) {
    MenuManager* instance = MenuManager::GetInstance();
    MenuFX* fx = static_cast<MenuBase*>(menu)->m_menu;
    const char* name = (args != nullptr) ? args : "menu_CharacterMenu";
    MenuFX::State* target = fx->GetState(name);
    if (target != nullptr && target != fx->GetCurrentState()) {
        while (fx->m_stack.m_size > 0) {
            instance->m_multiMenuManager->PopMenu(false);
            if (target == fx->GetCurrentState()) {
                break;
            }
        }
    }
    return target == fx->GetCurrentState();
}

// 0x4213f0 _ZN8MenuBase9IsTopMostEv
// True when this menu is the top state of its MenuFX (the original compares this with GetCurrentState of +0x04).
bool MenuBase::IsTopMost() {
    return this == m_menu->GetCurrentState();
}

// 0x421410 _ZN8MenuBase11FS_PopMenuEPKcS1_Pv
// An empty args pops the menu itself: the original passes a3 + 8, which is the menu's name (State +0x08, m_name).
// The original reads args without a null test, so a null args is treated here as empty.
bool MenuBase::FS_PopMenu(const char*, const char* args, void* menu) {
    if (args == nullptr || *args == '\0') {
        args = static_cast<MenuBase*>(menu)->m_name;
    }
    MenuManager::GetInstance()->PopMenu(args);
    return true;
}

// 0x42143c _ZN8MenuBase16FS_AutoEquipSlotEPKcS1_Pv
// The local player's Character is read. A null Character or a null or empty args returns false. "ALL" unequips every
// equipment slot (Character::UnEquipItemFromSlot, vtable +0x144) and then re-equips them from the last slot down to 0
// (Character::EquipSlotAuto, vtable +0x140). Any other args is parsed with atoi and handled as one slot: unequip, then
// re-equip. Returns true.
bool MenuBase::FS_AutoEquipSlot(const char*, const char* args, void*) {
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayerCharacter();
    if (character == nullptr || args == nullptr || *args == '\0') {
        return false;
    }
    if (std::strcmp(args, "ALL") != 0) {
        const unsigned int slot = static_cast<unsigned int>(std::atoi(args));
        character->UnEquipItemFromSlot(slot);
        character->EquipSlotAuto(slot);
        return true;
    }
    const int count = character->ItemInventory::GetNumEquipmentSlots();
    for (int i = 0; i < count; ++i) {
        character->UnEquipItemFromSlot(static_cast<unsigned int>(i));
    }
    for (int i = count - 1; i >= 0; --i) {
        character->EquipSlotAuto(static_cast<unsigned int>(i));
    }
    return true;
}

// 0x421554 _ZN8MenuBase21FS_GetHasOffHandWeaponEPKcS1_Pv
// As FS_GetHasMainHandWeapon, with ItemInventory::HasOffHandWeapon published as the boolean _root.retval.
bool MenuBase::FS_GetHasOffHandWeapon(const char*, const char*, void* menu) {
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayerCharacter();
    if (character == nullptr) {
        return false;
    }
    gameswf::as_value retval;
    retval.set_bool(character->ItemInventory::HasOffHandWeapon());
    static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", retval);
    return true;
}

// 0x4215ec _ZN8MenuBase21FS_GetHasMainHandWeaponEPKcS1_Pv
// The local player's Character is read (character_660). Without one the original returns 0 and publishes nothing. With
// one it publishes ItemInventory::HasMainHandWeapon (the inventory base at Character +0x37c) as the boolean _root.retval
// of the menu, and returns 1.
bool MenuBase::FS_GetHasMainHandWeapon(const char*, const char*, void* menu) {
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayerCharacter();
    if (character == nullptr) {
        return false;
    }
    gameswf::as_value retval;
    retval.set_bool(character->ItemInventory::HasMainHandWeapon());
    static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", retval);
    return true;
}

// 0x421684 _ZN8MenuBase21FS_GetHasTwoHandWeaponEPKcS1_Pv
// As FS_GetHasMainHandWeapon, with ItemInventory::HasTwoHander(false) published as the boolean _root.retval.
bool MenuBase::FS_GetHasTwoHandWeapon(const char*, const char*, void* menu) {
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayerCharacter();
    if (character == nullptr) {
        return false;
    }
    gameswf::as_value retval;
    retval.set_bool(character->ItemInventory::HasTwoHander(false));
    static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", retval);
    return true;
}

// 0x421720 _ZN8MenuBase16FS_GetPlayerClassEPKcS1_Pv
// The original reads the local player's Character and its class (Character::SG_GetPlayerClass). A null Character or a
// class of -1 publishes "" as _root.retval. Otherwise it publishes StringManager::getString(playerClassAsStrID(class))
// when that is not null. The original's atoi of args has no effect on the result and is kept as a call. Returns true,
// as the original does on every path.
bool MenuBase::FS_GetPlayerClass(const char*, const char* args, void* menu) {
    RenderFX* fx = static_cast<MenuBase*>(menu)->m_menu;
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayerCharacter();
    if (character == nullptr) {
        fx->SetMember("_root", "retval", "");
        return true;
    }
    if (args != nullptr) {
        static_cast<void>(std::atoi(args));
    }
    const int playerClass = character->SG_GetPlayerClass();
    if (playerClass == -1) {
        fx->SetMember("_root", "retval", "");
        return true;
    }
    const char* text = ApplicationGetInstance().m_stringManager->getString(playerClassAsStrID(playerClass));
    if (text != nullptr) {
        fx->SetMember("_root", "retval", text);
    }
    return true;
}

// 0x421808 _ZN8MenuBase17FS_GetCharPropertyEPKcS1_Pv
// args is a property name. When the local player has a Character, the original looks the name up with
// CharProperties::GetPropIDFromName (a static, called with args). When the id is not -1 it publishes the decimal text of
// PROPS_GetInt(id, false) on the CharProperties base of the Character (+0x560) as _root.retval. The text buffer is 12
// bytes; the original's 8-byte sprintf buffer overflows for eight or more characters. Returns true, as the original does.
bool MenuBase::FS_GetCharProperty(const char*, const char* args, void* menu) {
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayerCharacter();
    if (character != nullptr) {
        const int propId = CharProperties::GetPropIDFromName(args);
        if (propId != -1) {
            const int value = character->PROPS_GetInt(propId, false);
            char text[12];
            std::snprintf(text, sizeof(text), "%d", value);
            static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", text);
        }
    }
    return true;
}

// 0x421980 _ZN8MenuBase17FS_GetPlayerClass2EPKcS1_Pv
// Sets _root.retval to playerClassAsStr(). Returns true.
bool MenuBase::FS_GetPlayerClass2(const char*, const char*, void* menu) {
    static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", playerClassAsStr());
    return true;
}
