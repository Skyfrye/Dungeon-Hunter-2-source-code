// Console (the debug console of the game): the menu page builders, the quest save helpers, the key and touch
// handlers. Owner K3 (2026-10-16). Every body below is transcribed from the Hex-Rays listing of the function named in
// its header comment and checked against the ARM listing where Hex-Rays dropped something. The members of Console are
// in core-platform/w7_console_01.hpp (+0x04 open_, +0x08 menu_page_, +0x0C selected_, +0x10 lists_[4], +0x40 menu_ the
// list box, +0x44 menu_title_, +0x48 toggled_nodes_, +0x54 toggle_display_, +0x58 buffer_58_, +0x70 show_room_anim_,
// +0x74 show_room_object_, +0x78 show_room_index_, +0x7C show_room_camera_, +0x80..+0x8C the touch state,
// +0x90 module_pattern_).
//
// Two things the listings do that the port reproduces and does not "fix":
//  - The wide text handed to IGUIListBox::addItem is never written (the stack buffer of _createList and the static
//    buffer of _addToList are untouched before the call, see w7_console_00.cpp), so the list items are empty strings,
//    and _selectItem's "name of the selected item" for the switch and module pages is an unwritten stack buffer too:
//    it is zero-initialised here (an empty name).
//  - The item colours of the list pages are not the colour value: the colour object handed to setItemOverrideColor is a
//    4-byte stack temporary whose bytes are the argument shifted right by 8 (STRB of bytes 1, 2, 3 and 0), see
//    ItemColor() below.
// HOST-PORT null guards: the list box (menu_) is null when there is no device, where the original dereferences it.

#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <list>
#include <string>
#include <vector>

#include "core-platform/deps/debug_switches.hpp"
#include "core-platform/filesystem_win32.hpp"
#include "core-platform/glitch_memory_debugger.hpp"
#include "core-platform/memory.hpp"
#include "core-platform/ok3_scene_debug.hpp"
#include "core-platform/w7_console_01.hpp"
#include "core-platform/w7_global_rem.hpp"
#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CameraOverview.hpp"
#include "dh2/Character.hpp"
#include "dh2/EvKeyboard.hpp"
#include "dh2/EvTouchScreenMove.hpp"
#include "dh2/EvTouchScreenPress.hpp"
#include "dh2/GSConsole.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuDebugHUD.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuWorldMap.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/Quest.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/native_app_hud_level.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/global/savefile_fs.hpp"
#include "dh2/SceneManager.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/gui/CGUIListBox.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimatorCameraFPS.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// ELF _ZN20GlitchMemoryDebugger29s_isUsingGlitchMemoryDebuggerE (.bss 0x99f6e8, 1 byte).
bool GlitchMemoryDebugger::s_isUsingGlitchMemoryDebugger = false;

// ELF _ZN12MenuDebugHUD14s_statsStringsE (.data 0x9997b0, 88 bytes): 22 pointers into .rodata, read from the binary.
const char* MenuDebugHUD::s_statsStrings[22] = {
    "FPS",
    "Total Memory Usage",
    "Dump Memory Usage",
    "Tris",
    "DrawCalls",
    "SWFDrawCall",
    "SWFTris",
    "GameObjectStats",
    "RoomZoneStats",
    "Animated FX Stats",
    "World & Path Finding Stats",
    "Player's World & Path Finding Stats",
    "Player's Target & OOI",
    "Player's Inventory",
    "Cameras",
    "Lua Calls",
    "TargetSearch",
    "Glitch",
    "MP Arena",
    "Online",
    "Threat",
    "PlayStation Move",
};

namespace {

// The five colours of CSWTCH.7057 (.rodata 0x8bf778), read from the binary: the world map location states 0..2 at
// [0..2] and the level states 0..1 at [3..4].
const std::uint32_t kStateColors[5] = {0xFFFF3333u, 0xFF007F00u, 0xFF00FF00u, 0xFFFF3F3Fu, 0xFF3FFF3Fu};

// Colour of setItemOverrideColor(index, 0, colour): see the file header, the object is the argument >> 8.
glitch::video::SColor ItemColor(std::uint32_t argb) {
    glitch::video::SColor color;
    color.color = argb >> 8;
    return color;
}

Character* LocalPlayerCharacterOf(PlayerManager* manager) {
    return manager->GetLocalPlayer(0, true)->unk_660;
}

void ReportAssert(const char* condition, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", condition, file, line);
    }
}

}  // namespace

// 0x330198 Console::_addToList(char const*)
// The argument is ignored: the listing calls IGUIListBox::addItem (K 0x84) with the address of the function-local
// static wide buffer (ELF _ZZN7Console10_addToListEPKcE6buffer, .bss, 8192 bytes, never written).
int Console::_addToList(const char*) {
    static wchar_t buffer[2048];
    if (menu_ == nullptr) {
        return -1;
    }
    return static_cast<int>(menu_->addItem(buffer));
}

// 0x330270 Console::Update(double)
// Pushes the selection (+0x0C) into the list box (K 0xA0 setSelected) when one is open, then clears
// GlitchMemoryDebugger::s_isUsingGlitchMemoryDebugger.
void Console::Update(double) {
    if (menu_ != nullptr) {
        menu_->setSelected(selected_);
    }
    GlitchMemoryDebugger::s_isUsingGlitchMemoryDebugger = false;
}

// 0x3306a8 Console::CreateQuestSaveFile(void)
// Opens the quest save file through the savefile file system (device +0x34, vtable +0x94 openSavefile(name, true)),
// writes the first player's quests (Character::__SaveQuests(stream, character)) and closes it (+0x78).
void Console::CreateQuestSaveFile() {
    FileSystemWin32& fileSystem = SavefileFileSystem();
    IFileStream* file = fileSystem.openSavefile("/data/questsavefile/current.qsf", true);
    if (file != nullptr) {
        PlayerInfo* player = ApplicationGetInstance().m_playerManager->GetPlayer(0, true);
        Character::__SaveQuests(file, player->unk_660);
        fileSystem.closeFile(file);
    }
}

// 0x3325cc Console::LoadQuestSaveFile(char const*)
// "/data/questsavefile/" + name is opened with vtable +0x88 openFile(path, false, false); for each of the
// PlayerManager's characters (+0x6C4) the file is rewound (vtable +0x20 seek(0)) and Character::__LoadQuests(stream,
// character) reads that player's quests; the file is closed (+0x78).
void Console::LoadQuestSaveFile(const char* name) {
    const std::string path = "/data/questsavefile/" + std::string(name);
    FileSystemWin32& fileSystem = SavefileFileSystem();
    IFileStream* file = fileSystem.openFile(path.c_str(), false, false);
    if (file != nullptr) {
        PlayerManager* manager = ApplicationGetInstance().m_playerManager;
        if (manager->m_numCharacters > 0) {
            int i = 0;
            while (true) {
                file->seek(0);
                PlayerInfo* player = manager->GetPlayer(i, true);
                Character::__LoadQuests(file, player->unk_660);
                if (++i >= manager->m_numCharacters) {
                    break;
                }
            }
        }
        fileSystem.closeFile(file);
    }
}

// 0x3307ac Console::_getMaxNumberOfItem(void) const
// The number of rows of the page shown (menu_page_ +0x08).
int Console::_getMaxNumberOfItem() const {
    Application& app = ApplicationGetInstance();
    // One 24-byte string per element in the original: (end - begin) >> 3, times the inverse of 3.
    switch (menu_page_) {
        case 0:
            return static_cast<int>(lists_[0].size());
        case 1:
            return static_cast<int>(DebugSwitches::GetInstance()->m_switches.size());   // *(GetInstance() + 16)
        case 2:
            return static_cast<int>(DebugSwitches::GetInstance()->m_modules.size());    // *(GetInstance() + 40)
        case 3:
            MenuDebugHUD::GetInstance();
            return 22;
        case 4:
            return 15;
        case 5:
            return static_cast<int>(Arrays::LootTable::size);
        case 6:
            return static_cast<int>(Arrays::v2Quests::size);
        case 7:
            return static_cast<int>(Arrays::LevelList::size);
        case 8:
            return static_cast<int>(Arrays::WorldMap::size);
        case 9:
            return static_cast<int>(Arrays::AnimDict::size);
        case 0xA:
            return static_cast<int>(Arrays::EffectDict::size);
        case 0xB:
            return static_cast<int>(Arrays::AnimatedEffectTable::size);
        case 0xD:
            return MenuManager::GetInstance()->GetNumMenus() + 1;
        case 0xE:
            return static_cast<int>(ScriptManager::s_inst.m_cmds.size());  // dword_9A5FF8 - dword_9A5FF4, 12-byte elements
        case 0xF: {
            Character* character = app.m_playerManager->GetLocalPlayerCharacter();
            if (character == nullptr) {
                return 0;
            }
            VisualObject* visual = character->m_visualObject;  // +0x2D8
            if (visual == nullptr) {
                return 0;
            }
            int total = 0;
            int category = 0;
            while (true) {
                if (visual->GetModularCategoryCount() <= category) {
                    break;
                }
                total += visual->GetModularModuleCount(category);
                ++category;
            }
            return total;
        }
        case 0x11:
            if (module_pattern_.empty()) {  // +0x90: finish (+0xA0) == start (+0xA4)
                return static_cast<int>(lists_[1].size());
            }
            return static_cast<int>(lists_[2].size());
        case 0x12:
            return static_cast<int>(lists_[3].size());
        case 0x13:
            return static_cast<int>(Arrays::Listeners::size);
        default:
            return 0;
    }
}

// 0x3309d4 Console::_cmdReloadLevel(void)
// Reloads the current level: Application::LoadLevel(level name (Level +0x10C), no entry point, slot 0, not a resume,
// spawn point, difficulty 0, not remote, seeds 0).
void Console::_cmdReloadLevel() {
    Application& app = ApplicationGetInstance();
    if (Level* level = app.GetCurrentLevel()) {
        app.LoadLevel(level->m_levelName.c_str(), 0, 0, false, true, 0, false, 0, 0);
    }
}

// 0x330b6c Console::_setMenuLoadModuleFolderList(void)
// Selection 0, the module folder pattern (+0x90) emptied, then the page of the vector at +0x1C.
void Console::_setMenuLoadModuleFolderList() {
    selected_ = 0;
    module_pattern_.assign("");
    _createList(lists_[1], const_cast<char*>("LOAD MODULES - CATEGORIES"));
}

// 0x33394c Console::_setMenuLoadModuleList(unsigned int)
// The folder picked on the categories page (the 24-byte string at index in the vector at +0x1C): module_pattern_ (+0x90) becomes
// "data/3d/modules/<folder>/mlx", the device file system lists that pattern into the vector at +0x28 (vtable +0x7C getFiles), and the
// page of that vector is built titled LOAD MODULES - SPECIFIC.
void Console::_setMenuLoadModuleList(unsigned int index) {
    module_pattern_ = std::string("data/3d/modules/") + lists_[1][index] + "/mlx";
    SavefileFileSystem().getFiles(module_pattern_.c_str(), lists_[2]);
    _createList(lists_[2], const_cast<char*>("LOAD MODULES - SPECIFIC"));
}

// 0x330bf0 Console::_setMenuAnimList(void)
void Console::_setMenuAnimList() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("ANIMS"));
    if (menu_ != nullptr) {
        menu_->clear();  // K 0x98
    }
    const Structs::ColladaFile* rows = reinterpret_cast<const Structs::ColladaFile*>(Arrays::AnimDict::members);
    for (unsigned int i = 0; i < Arrays::AnimDict::size; ++i) {
        _addToList(rows[i].Name);  // the element's string pointer at +8
    }
    if (menu_ != nullptr) {
        menu_->setSelected(-1);  // K 0xA0
    }
}

// 0x330cc0 Console::_setMenuVFXSetList(void)
void Console::_setMenuVFXSetList() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("VFX_SET"));
    for (unsigned int i = 0; i < Arrays::AnimatedEffectTable::size; ++i) {
        _addToList(Arrays::AnimatedEffectTable::m_memberNames.names[i]);
    }
    if (menu_ != nullptr) {
        menu_->setSelected(-1);
    }
}

// 0x330d70 Console::_setMenuVFXList(void)
void Console::_setMenuVFXList() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("VFX"));
    for (unsigned int i = 0; i < Arrays::EffectDict::size; ++i) {
        _addToList(Arrays::EffectDict::m_memberNames.names[i]);
    }
    if (menu_ != nullptr) {
        menu_->setSelected(-1);
    }
}

// 0x330e20 Console::_setLootTableList(void)
// The name is "na" when the index is past the table (never in the loop, the comparison is the compiler's).
void Console::_setLootTableList() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("LOOT TABLES"));
    if (menu_ != nullptr) {
        menu_->clear();
    }
    for (unsigned int i = 0; i < Arrays::LootTable::size; ++i) {
        const char* name = (i >= Arrays::LootTable::size) ? "na" : Arrays::LootTable::m_memberNames.names[i];
        _addToList(name);
    }
}

// 0x330ee0 Console::_setMenuCharModules(void)
// Every modular module name of the local player's character (all categories), one list item each. The names go
// through the same unwritten wide buffer (addItem K 0x84 with a stack buffer).
void Console::_setMenuCharModules() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("Character Modules"));
    if (menu_ != nullptr) {
        menu_->clear();
    }
    wchar_t buffer[256] = {};
    Character* character = LocalPlayerCharacterOf(ApplicationGetInstance().m_playerManager);
    if (character != nullptr) {
        VisualObject* visual = character->m_visualObject;  // +0x2D8
        if (visual != nullptr) {
            if (visual->GetModularCategoryCount() > 0) {
                int category = 0;
                do {
                    for (int module = 0; module < visual->GetModularModuleCount(category); ++module) {
                        visual->GetModularModuleName(category, module);
                        if (menu_ != nullptr) {
                            menu_->addItem(buffer);
                        }
                    }
                    ++category;
                } while (visual->GetModularCategoryCount() > category);
            }
        }
    }
}

// 0x330ff8 Console::_setMenuScripts(void)
// One row per script: running scripts green (0xFF00FF00), the others 0x0FFF0000; then "Hide all".
void Console::_setMenuScripts() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("Scripts"));
    if (menu_ != nullptr) {
        menu_->clear();
    }
    const int count = static_cast<int>(ScriptManager::s_inst.m_cmds.size());
    for (int id = 0; id < count; ++id) {
        const std::uint32_t color = ScriptManager::s_inst.IsScriptRunning(id) ? 0xFF00FF00u : 0x0FFF0000u;
        const char* name = ScriptManager::s_inst.GetNameFromID(id);
        _addToList(name);
        if (menu_ != nullptr) {
            menu_->setItemOverrideColor(static_cast<std::uint32_t>(id), glitch::gui::EGUI_LBC_TEXT, ItemColor(color));  // K 0xB0
        }
    }
    _addToList("Hide all");
}

// 0x331140 Console::_setMenuMenus(void)
// One row per registered menu: visible menus green (0xFF00FF00), the others 0x0FFF0000; then "Hide all".
void Console::_setMenuMenus() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("Menus"));
    if (menu_ != nullptr) {
        menu_->clear();
    }
    MenuManager* manager = MenuManager::GetInstance();
    const int count = manager->GetNumMenus();
    for (int id = 0; id < count; ++id) {
        MenuBase* menu = manager->GetMenuByID(id);
        const std::uint32_t color = menu->IsVisible() ? 0xFF00FF00u : 0x0FFF0000u;
        const std::string name = manager->GetMenuName(id);
        const int index = _addToList(name.c_str());
        if (menu_ != nullptr) {
            menu_->setItemOverrideColor(static_cast<std::uint32_t>(index), glitch::gui::EGUI_LBC_TEXT, ItemColor(color));
        }
    }
    _addToList("Hide all");
}

// 0x3312bc Console::_setMenuListeners(void)
// One row per Arrays::Listeners row: the level's listener (Level +0xE4) green, the others red (0xFFFF0000).
void Console::_setMenuListeners() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("LISTENERS"));
    Application& app = ApplicationGetInstance();
    for (unsigned int i = 0; i < Arrays::Listeners::size; ++i) {
        std::uint32_t color;
        if (app.GetCurrentLevel() != nullptr && static_cast<unsigned int>(app.GetCurrentLevel()->m_listenerIndex) == i) {
            color = 0xFF00FF00u;
        } else {
            color = 0xFFFF0000u;
        }
        const int index = _addToList(Arrays::Listeners::m_memberNames.names[i]);
        if (menu_ != nullptr) {
            menu_->setItemOverrideColor(static_cast<std::uint32_t>(index), glitch::gui::EGUI_LBC_TEXT, ItemColor(color));
        }
    }
    if (menu_ != nullptr) {
        menu_->setSelected(-1);
    }
}

// 0x3313f8 Console::_setMenuWorldMap(void)
// One row per world map location, coloured by Character::SG_GetMapLocState (CSWTCH.7057 entry for states 0..2, 0 for
// others); without a local character the colour is 0x80000000 >> 15 (arithmetic) = 0xFFFF0000.
void Console::_setMenuWorldMap() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("WORLD MAP LOCATIONS"));
    if (menu_ != nullptr) {
        menu_->clear();
    }
    wchar_t buffer[128] = {};
    Character* character = LocalPlayerCharacterOf(ApplicationGetInstance().m_playerManager);
    for (unsigned int i = 0; i < Arrays::WorldMap::size; ++i) {
        std::uint32_t color;
        if (character != nullptr) {
            const unsigned int state = static_cast<unsigned int>(character->SG_GetMapLocState(static_cast<int>(i), -1));
            color = state > 2 ? 0u : kStateColors[state];
        } else {
            color = static_cast<std::uint32_t>(static_cast<std::int32_t>(0x80000000u) >> 15);
        }
        const int index = menu_ != nullptr ? static_cast<int>(menu_->addItem(buffer)) : -1;
        if (menu_ != nullptr) {
            menu_->setItemOverrideColor(static_cast<std::uint32_t>(index), glitch::gui::EGUI_LBC_TEXT, ItemColor(color));
        }
    }
}

// 0x331548 Console::_setMenuLevelListPyData(void)
// As the world map page, with Character::SG_GetLevelState: states 0..1 take CSWTCH.7057 [3..4], others 0xFFFFFFFF.
void Console::_setMenuLevelListPyData() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("LEVELS (STATES)"));
    if (menu_ != nullptr) {
        menu_->clear();
    }
    wchar_t buffer[128] = {};
    Character* character = LocalPlayerCharacterOf(ApplicationGetInstance().m_playerManager);
    for (unsigned int i = 0; i < Arrays::LevelList::size; ++i) {
        std::uint32_t color;
        if (character != nullptr) {
            const unsigned int state = static_cast<unsigned int>(character->SG_GetLevelState(static_cast<int>(i), -1));
            color = state > 1 ? 0xFFFFFFFFu : kStateColors[state + 3];
        } else {
            color = static_cast<std::uint32_t>(static_cast<std::int32_t>(0x80000000u) >> 15);
        }
        const int index = menu_ != nullptr ? static_cast<int>(menu_->addItem(buffer)) : -1;
        if (menu_ != nullptr) {
            menu_->setItemOverrideColor(static_cast<std::uint32_t>(index), glitch::gui::EGUI_LBC_TEXT, ItemColor(color));
        }
    }
}

// 0x33169c Console::_setMenuStats(void)
// The 22 statistics of MenuDebugHUD, green when the flag (MenuDebugHUD +0xE0 + i) is set, red otherwise.
void Console::_setMenuStats() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("STATS"));
    if (menu_ != nullptr) {
        menu_->clear();
    }
    MenuDebugHUD* hud = MenuDebugHUD::GetInstance();
    for (int i = 0; i != 22; ++i) {
        const std::uint32_t color = hud->m_debugStatFlags[i] ? 0xFF00FF00u : 0xFFFF0000u;
        const int index = _addToList(MenuDebugHUD::s_statsStrings[i]);
        if (menu_ != nullptr) {
            menu_->setItemOverrideColor(static_cast<std::uint32_t>(index), glitch::gui::EGUI_LBC_TEXT, ItemColor(color));
        }
    }
}

// 0x334940 Console::_setMenuDebugSwitches(void)
// One row per debug switch (the map is copied first, as the listing does), green when on and red when off.
void Console::_setMenuDebugSwitches() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("DEBUG SWITCHES"));
    if (menu_ != nullptr) {
        menu_->clear();
    }
    DebugSwitches::s_inst.load();
    wchar_t buffer[2048] = {};
    const std::map<std::string, bool> switches(DebugSwitches::s_inst.m_switches);
    for (const auto& entry : switches) {
        const std::uint32_t color = entry.second ? 0xFF00FF00u : 0xFFFF0000u;
        const int index = menu_ != nullptr ? static_cast<int>(menu_->addItem(buffer)) : -1;
        if (menu_ != nullptr) {
            menu_->setItemOverrideColor(static_cast<std::uint32_t>(index), glitch::gui::EGUI_LBC_TEXT, ItemColor(color));
        }
    }
}

// 0x334764 Console::_setMenuDebugModules(void)
// The same page as _setMenuDebugSwitches under the title "GAME MODULES": the binary walks a copy of the map at
// DebugSwitches::s_inst +0x18 (0x9A1D30), one row per entry, green when on and red when off.
void Console::_setMenuDebugModules() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("GAME MODULES"));
    if (menu_ != nullptr) {
        menu_->clear();
    }
    DebugSwitches::s_inst.load();
    wchar_t buffer[2048] = {};
    const std::map<std::string, bool> switches(DebugSwitches::s_inst.m_switches);
    for (const auto& entry : switches) {
        const std::uint32_t color = entry.second ? 0xFF00FF00u : 0xFFFF0000u;
        const int index = menu_ != nullptr ? static_cast<int>(menu_->addItem(buffer)) : -1;
        if (menu_ != nullptr) {
            menu_->setItemOverrideColor(static_cast<std::uint32_t>(index), glitch::gui::EGUI_LBC_TEXT, ItemColor(color));
        }
    }
}

// 0x3320ec Console::_setMenuQuestList(void)
// "<quest name> - <current state name>" for every quest of the local character (nothing without one).
void Console::_setMenuQuestList() {
    std::vector<std::string> none;
    _createList(none, const_cast<char*>("QUESTS"));
    if (menu_ != nullptr) {
        menu_->clear();
    }
    Character* character = LocalPlayerCharacterOf(ApplicationGetInstance().m_playerManager);
    if (character != nullptr) {
        for (unsigned int i = 0; i < Arrays::v2Quests::size; ++i) {
            const char* questName = Arrays::v2Quests::m_memberNames.names[i];
            Quest* quest = character->SG_GetQuestByName(questName, -1);
            std::string line(questName);
            line.append(" - ");
            const char* state = quest->DBG_GetCurrentStateName();
            line.append(state, std::strlen(state));
            _addToList(line.c_str());
        }
    }
}

// 0x33179c Console::DBG_TryStartingLevel(char const*)
// Starts the named level for the local player: the save slot of the local player (PlayerInfo +0x664), or the first
// save in the list when none is assigned (asserting a slot was found); the difficulty is the character's, or the
// SavegameManager's (+0x0C) without a character, and 0 when past 3. Returns 0 when there is no save to use.
int Console::DBG_TryStartingLevel(const char* name) {
    Application& app = ApplicationGetInstance();
    PlayerManager* manager = app.m_playerManager;
    int slot = manager->GetLocalPlayer(0, false)->unk_664;
    if (slot == -1) {
        std::vector<std::string> saves = PlayerSavegame::SG_GetSavegameList(false);
        if (saves.empty()) {
            return 0;
        }
        slot = PlayerSavegame::SG_GetSlotFromFilename(saves[0].c_str());
        AssignSaveSlotToPlayer(slot, 0);
        saves.clear();
        if (slot == -1) {
            ReportAssert("slotID != -1", "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Console\\Console.cpp", 954);
        }
    }
    unsigned int difficulty;
    if (manager->GetLocalPlayer(0, false)->unk_660 != nullptr) {
        difficulty = static_cast<unsigned int>(manager->GetLocalPlayer(0, false)->unk_660->SG_GetGameDifficulty());
    } else {
        difficulty = static_cast<unsigned int>(app.m_savegameManager->unk_0c);
    }
    if (difficulty > 3) {
        difficulty = 0;
    }
    app.LoadLevel(name, 0, static_cast<std::uint32_t>(slot), false, true, static_cast<int>(difficulty), false, 0, 0);
    return 1;
}

// 0x331b68 Console::InitShowRoomCameraPos(void)
// With the show-room switch on and a character shown: the free camera (+0x7C) is placed at the centre of the
// character's world AABB (GameObject +0x12C/+0x138) + (0, 2000, 1500) (setPosition K 0xA4) and aimed at the centre
// (setTarget K 0x104).
void Console::InitShowRoomCameraPos() {
    DebugSwitches::s_inst.load();
    ObjectManager* objects = ApplicationGetInstance().m_objectManager;
    if (DebugSwitches::s_inst.GetSwitch("IsUsingCharacterShowRoom") && show_room_object_ != objects->m_characters.end() &&
        show_room_camera_ != nullptr) {
        const GameObject* object = *show_room_object_;
        const float x = (object->m_absAabb[0] + object->m_absAabb[3]) * 0.5f;
        const float y = (object->m_absAabb[1] + object->m_absAabb[4]) * 0.5f;
        const float z = (object->m_absAabb[2] + object->m_absAabb[5]) * 0.5f;
        const glitch::core::vector3d<float> target{x, y, z};
        const glitch::core::vector3d<float> position{x + 0.0f, y + 2000.0f, z + 1500.0f};
        show_room_camera_->setPosition(position);  // K 0xA4
        show_room_camera_->setTarget(target);      // K 0x104
    }
}

// 0x331cfc Console::UpdateToggleDisplayList(void)
// With "IsUsingToggleDisplayMode" on: every visible child of the scene root (ESNF_VISIBLE, flags +0x11C bit 0) that is
// not in toggled_nodes_ yet is appended to it and hidden (setVisible K 0x48), then the node shown now (+0x54) is made
// visible again; with the switch off the list and the node are cleared.
void Console::UpdateToggleDisplayList() {
    DebugSwitches::s_inst.load();
    if (DebugSwitches::s_inst.GetSwitch("IsUsingToggleDisplayMode")) {
        glitch::scene::ISceneNode* root = DeviceSceneManager()->rootNode;  // device +0x1C scene manager, +0x04 the root node
        for (glitch::scene::ISceneNode* node : root->children) {           // list sentinel at +0xF4
            if ((node->flags & glitch::scene::ESNF_VISIBLE) == 0) {
                continue;
            }
            if (std::find(toggled_nodes_.begin(), toggled_nodes_.end(), node) == toggled_nodes_.end()) {
                toggled_nodes_.push_back(node);
            }
            node->setVisible(false);
        }
        if (toggle_display_ != nullptr) {
            toggle_display_->setVisible(true);
        }
    } else {
        toggled_nodes_.clear();
        toggle_display_ = nullptr;
    }
}

// 0x331f7c Console::UpdateCharacterShowRoom(void)
// With "IsUsingCharacterShowRoom" on and a character shown: the character is updated (vtable +0x2C Update), its visual
// object and scene node are made visible and the free camera is aimed at the centre of its world AABB.
void Console::UpdateCharacterShowRoom() {
    DebugSwitches::s_inst.load();
    if (DebugSwitches::s_inst.GetSwitch("IsUsingCharacterShowRoom")) {
        ObjectManager* objects = ApplicationGetInstance().m_objectManager;
        if (show_room_object_ != objects->m_characters.end()) {
            Character* character = *show_room_object_;
            character->Update();                                // vtable +0x2C
            character->m_visualObject->SetVisible(true);        // +0x2D8
            character->m_visualObject->m_node->setVisible(true);  // VisualObject +0x08, K 0x48
            if (show_room_camera_ != nullptr) {
                const float x = (character->m_absAabb[0] + character->m_absAabb[3]) * 0.5f;
                const float y = (character->m_absAabb[1] + character->m_absAabb[4]) * 0.5f;
                const float z = (character->m_absAabb[2] + character->m_absAabb[5]) * 0.5f;
                show_room_camera_->setTarget(glitch::core::vector3d<float>{x, y, z});  // K 0x104
            }
        }
    }
}

// 0x335b14 Console::onEvent(IEvent const*, EventManager const*)
// Runs onEventNotOpened first. When the console is open: keys 0..9 select an item, '\\' (0x5C) steps the level load,
// 0x87/0x88 move the selection, 0x89/0x8A change the page; a touch press on the console toggles it when a second finger
// comes down and selects item 1 on release of a still touch; a touch move scrolls the list (16 px per row) and the
// pages (40 px per page).
bool Console::onEvent(const IEvent* event, const EventManager* manager) {
    onEventNotOpened(event, manager);
    if (!open_) {
        return false;
    }
    if (event->getEventID() == 0) {
        const EvKeyboard* keyboard = static_cast<const EvKeyboard*>(event);
        if (!keyboard->pressed) {
            return false;
        }
        switch (keyboard->key) {
            case 0x30: case 0x31: case 0x32: case 0x33: case 0x34:
            case 0x35: case 0x36: case 0x37: case 0x38: case 0x39:
                if (!open_) {
                    return false;
                }
                _selectItem(keyboard->key - 48);
                return true;
            case 0x5C: {
                Level* level = ApplicationGetInstance().GetCurrentLevel();
                if (level == nullptr || level->m_loadStep != 36) {
                    return true;
                }
                ++level->m_loadStep;
                return true;
            }
            case 0x5D:
            case 0x5E:
                return true;
            case 0x87:
                if (selected_ == 0) {
                    return true;
                }
                --selected_;
                return true;
            case 0x88: {
                ++selected_;
                const unsigned int last = static_cast<unsigned int>(_getMaxNumberOfItem()) - 1u;
                if (static_cast<unsigned int>(selected_) > last) {
                    selected_ = static_cast<int>(last);
                }
                return true;
            }
            case 0x89:
                if (menu_page_ == 0) {
                    return true;
                }
                --menu_page_;
                selected_ = 0;
                _setMenu();
                return true;
            case 0x8A: {
                int page = menu_page_ + 1;
                if (static_cast<unsigned int>(page) >= 0x13u) {
                    page = 19;
                }
                selected_ = 0;
                menu_page_ = page;
                _setMenu();
                return true;
            }
            default:
                return false;
        }
    }
    if (event->getEventID() == 4) {
        const EvTouchScreenPress* press = static_cast<const EvTouchScreenPress*>(event);
        if (press->pressed) {
            if (touch_id_ >= 0) {
                if (touch_id_ != press->id) {
                    touch_pending_ = 0;
                    touch_id_ = -1;
                    GSConsole::s_inst.Toggle();
                    return true;
                }
                return true;
            }
            touch_pending_ = 1;
            touch_id_ = press->id;
            touch_x_ = press->x;
            touch_y_ = press->y;
            return true;
        }
        const bool wasPending = touch_pending_ != 0;
        touch_id_ = -1;
        if (!wasPending) {
            return true;
        }
        touch_pending_ = 0;
        _selectItem(1);
        return true;
    }
    if (event->getEventID() != 5) {
        return false;
    }
    const EvTouchScreenMove* move = static_cast<const EvTouchScreenMove*>(event);
    touch_pending_ = 0;
    const std::int16_t x = move->x;  // +0x08
    const std::int16_t y = move->y;  // +0x0A
    const int rows = (y - touch_y_) / 16;
    int pages;
    if (rows != 0) {
        const int previous = selected_;
        touch_y_ = y;
        touch_x_ = x;
        const int target = rows + previous;
        if (target <= 0) {
            selected_ = 0;
            return true;
        }
        selected_ = target;
        const unsigned int last = static_cast<unsigned int>(_getMaxNumberOfItem()) - 1u;
        if (static_cast<unsigned int>(selected_) > last) {
            selected_ = static_cast<int>(last);
        }
        pages = (x - touch_x_) / 40;  // touch_x_ was just set to x
    } else {
        pages = (x - touch_x_) / 40;
    }
    if (pages == 0) {
        return true;
    }
    touch_y_ = y;
    touch_x_ = x;
    const int page = pages + menu_page_;
    if (page > 0) {
        menu_page_ = static_cast<unsigned int>(page) >= 0x13u ? 19 : page;
    } else {
        menu_page_ = 0;
    }
    selected_ = 0;
    _setMenu();
    return true;
}

// 0x33271c Console::onEventNotOpened(IEvent const*, EventManager const*)
// The debug keys of the running level (level load step 38 = loaded): W/S/A/D move the ghost camera offset
// (CameraTarget +0x38/+0x3C) by 200, X resets it; '0'/'9' change the FOV by one degree; F toggles the free camera
// and then, as the listing falls through, the show-room mode; K/U the online object debug; P pauses the level update;
// R reloads the level; ']'/'^' (0x5D/0x5E) create/load the quest save file; 0x83 toggles the show-room mode; 0x84 the
// toggle-display mode; 0x85/0x86 step the show-room character or the toggled node; 0x8B/0x8C and 0x8F/0x90 change the
// far and near planes (or the show-room animation); 0xDB/0xDD activate the overview and the level camera. Returns 0.
int Console::onEventNotOpened(const IEvent* event, const EventManager*) {
    Application& app = ApplicationGetInstance();
    Level* level = app.GetCurrentLevel();
    if (level == nullptr || level->m_loadStep != 38 || event->getEventID() != 0) {
        return 0;
    }
    const EvKeyboard* keyboard = static_cast<const EvKeyboard*>(event);
    int key = keyboard->key;

    if (key == 87) {  // 'W'
        level = app.GetCurrentLevel();
        if (level != nullptr) {
            CameraLevel* camera = level->m_camera;  // Level +0x128
            if (camera != nullptr) {
                camera->m_ghostOffset.X -= 200.0f;  // CameraTarget +0x38
                camera->m_camera->setFarValue(50000.0f);  // CameraBase +0x08, K 0x134
                key = keyboard->key;
            }
        }
        key = keyboard->key;
    } else if (key == 83) {  // 'S'
        level = app.GetCurrentLevel();
        if (level != nullptr) {
            CameraLevel* camera = level->m_camera;
            if (camera != nullptr) {
                camera->m_ghostOffset.X += 200.0f;
            }
        }
        key = keyboard->key;
    }

    switch (key) {
        case 'A': {
            level = app.GetCurrentLevel();
            if (level != nullptr && level->m_camera != nullptr) {
                level->m_camera->m_ghostOffset.Y -= 200.0f;  // +0x3C
            }
            break;
        }
        case 'D': {
            level = app.GetCurrentLevel();
            if (level != nullptr && level->m_camera != nullptr) {
                level->m_camera->m_ghostOffset.Y += 200.0f;
            }
            break;
        }
        case 'X': {
            level = app.GetCurrentLevel();
            if (level != nullptr && level->m_camera != nullptr) {
                level->m_camera->m_ghostOffset = Vec3f_Origin;  // x, y, z from Vec3f_Origin, dword_99F858, dword_99F85C
            }
            break;
        }
    }

    if (event->getEventID() != 0 || !keyboard->pressed) {
        return 0;
    }

    SceneManager* const sceneManager = DeviceSceneManager();
    ObjectManager* const objects = app.m_objectManager;
    DebugSwitches& sw = DebugSwitches::s_inst;
    // The shared tail of keys F and 0x83 (the listing's LABEL_34): toggles IsUsingCharacterShowRoom and builds or
    // tears down the free camera for the show room.
    auto toggleShowRoom = [&]() {
        sw.SetSwitch("IsUsingCharacterShowRoom", !sw.GetSwitch("IsUsingCharacterShowRoom"));
        glitch::scene::CSceneManager* const scene = sceneManager;
        if (sw.GetSwitch("IsUsingCharacterShowRoom")) {
            show_room_object_ = objects->m_characters.begin();  // *(ObjectManager + 0x60): first node
            SetShowRoomDisplayedAnim(0);
            glitch::scene::ISceneNode* node = scene->addSceneNode("cameraFPS", scene->rootNode);  // K 0x6C
            show_room_camera_ = static_cast<glitch::scene::ICameraSceneNode*>(node);
            auto* animator = static_cast<glitch::scene::ISceneNodeAnimatorCameraFPS*>(*show_room_camera_->getAnimators().begin());
            animator->setRotateSpeed(100.0f);  // K 0x60
            animator->setMoveSpeed(6000.0f);   // K 0x58
            show_room_camera_->setFarValue(50000.0f);  // K 0x134
            app.RegisterForIrrlichtEvents(show_room_camera_);  // as the camera's IEventReceiver (+0x130)
            glitch::scene::ICameraSceneNode* levelCamera = app.GetCurrentLevel()->m_camera->m_camera;
            (void)levelCamera->getAbsolutePosition();
            (void)levelCamera->getTarget();  // K 0x108
            InitShowRoomCameraPos();
            show_room_camera_->updateAbsolutePosition(false);                // K 0xB8
            show_room_camera_->setUpVector(levelCamera->getUpVector());      // K 0x114 / 0x118
            show_room_camera_->setFOV(levelCamera->getFOV());                // K 0x13C / 0x128
            show_room_camera_->setAspectRatio(levelCamera->getAspectRatio());  // K 0x138 / 0x124
            show_room_camera_->setInputReceiverEnabled(true);                // K 0x148
            scene->setActiveCamera(show_room_camera_);
        } else {
            glitch::scene::ICameraSceneNode* camera = show_room_camera_;
            show_room_object_ = objects->m_characters.end();  // ObjectManager + 0x60
            app.UnRegisterForIrrlichtEvents(camera);
            scene->rootNode->removeChild(show_room_camera_);  // K 0x60
            scene->setActiveCamera(app.GetCurrentLevel()->m_camera->m_camera);
            show_room_camera_ = nullptr;
        }
    };

    switch (keyboard->key) {
        case '0': {
            glitch::scene::ICameraSceneNode* camera = app.GetCurrentLevel()->m_camera->m_camera;
            camera->setFOV(camera->getFOV() + 0.017453f);  // K 0x13C, 0x128: one degree
            return 0;
        }
        case '9': {
            glitch::scene::ICameraSceneNode* camera = app.GetCurrentLevel()->m_camera->m_camera;
            camera->setFOV(camera->getFOV() - 0.017453f);
            return 0;
        }
        case 'F': {
            glitch::scene::CSceneManager* const scene = sceneManager;
            if (show_room_camera_ != nullptr) {
                sw.SetSwitch("isDisplayingCullingBoxes", false);  // DebugSwitches::GetInstance()
                app.UnRegisterForIrrlichtEvents(show_room_camera_);
                scene->rootNode->removeChild(show_room_camera_);  // K 0x60
                show_room_camera_ = nullptr;
                scene->setActiveCamera(app.GetCurrentLevel()->m_camera->m_camera);
            } else {
                glitch::scene::ISceneNode* node = scene->addSceneNode("cameraFPS", scene->rootNode);  // K 0x6C
                show_room_camera_ = static_cast<glitch::scene::ICameraSceneNode*>(node);
                auto* animator = static_cast<glitch::scene::ISceneNodeAnimatorCameraFPS*>(*show_room_camera_->getAnimators().begin());
                animator->setRotateSpeed(100.0f);
                animator->setMoveSpeed(6000.0f);
                show_room_camera_->setFarValue(50000.0f);
                app.RegisterForIrrlichtEvents(show_room_camera_);
                glitch::scene::ICameraSceneNode* levelCamera = app.GetCurrentLevel()->m_camera->m_camera;
                const glitch::core::vector3d<float> position = levelCamera->getAbsolutePosition();
                const glitch::core::vector3d<float>& target = levelCamera->getTarget();  // K 0x108
                // The free camera starts five times as far from the target as the level camera.
                const glitch::core::vector3d<float> start{target.X + (position.X - target.X) * 5.0f,
                                                          target.Y + (position.Y - target.Y) * 5.0f,
                                                          target.Z + (position.Z - target.Z) * 5.0f};
                show_room_camera_->setPosition(start);                          // K 0xA4
                show_room_camera_->updateAbsolutePosition(false);               // K 0xB8
                show_room_camera_->setUpVector(levelCamera->getUpVector());     // K 0x114
                show_room_camera_->setFOV(levelCamera->getFOV());               // K 0x13C
                show_room_camera_->setAspectRatio(levelCamera->getAspectRatio());  // K 0x138
                show_room_camera_->setTarget(target);                           // K 0x104
                show_room_camera_->setInputReceiverEnabled(true);               // K 0x148
                scene->setActiveCamera(show_room_camera_);
                DebugSwitches::GetInstance()->SetSwitch("isDisplayingCullingBoxes", true);
            }
            toggleShowRoom();  // the listing falls through into the 0x83 body
            return 0;
        }
        case 'K':
            if (GetOnlineGameFlag()) {  // *(GetOnline() + 5)
                objects->DeleteRandomOnlineObject();
            }
            return 0;
        case 'P':
            DebugSwitches::GetInstance()->SetSwitch("IsLevelUpdatePaused",
                                                    !DebugSwitches::GetInstance()->GetSwitch("IsLevelUpdatePaused"));
            return 0;
        case 'R':
            _cmdReloadLevel();
            return 0;
        case 'U':
            if (GetOnlineGameFlag()) {
                objects->ForceFullUpdate();
            }
            return 0;
        case 0x5D:
            CreateQuestSaveFile();
            return 0;
        case 0x5E:
            LoadQuestSaveFile("current.qsf");
            return 0;
        case 0x83:
            toggleShowRoom();
            return 0;
        case 0x84: {
            DebugSwitches::GetInstance()->SetSwitch("IsUsingToggleDisplayMode",
                                                    !DebugSwitches::GetInstance()->GetSwitch("IsUsingToggleDisplayMode"));
            if (!toggled_nodes_.empty()) {
                for (glitch::scene::ISceneNode* node : toggled_nodes_) {
                    node->setVisible(true);
                }
                toggled_nodes_.clear();
            }
            toggle_display_ = nullptr;
            return 0;
        }
        case 0x85: {
            if (DebugSwitches::GetInstance()->GetSwitch("IsUsingCharacterShowRoom")) {
                if (show_room_object_ == objects->m_characters.end()) {
                    show_room_object_ = std::prev(objects->m_characters.end());  // ObjectManager + 0x64
                } else {
                    --show_room_object_;  // the node's previous link (+0x04)
                }
                SetShowRoomDisplayedAnim(0);
                InitShowRoomCameraPos();
            }
            if (toggled_nodes_.empty()) {
                return 0;
            }
            if (toggle_display_ != nullptr) {
                auto found = std::find(toggled_nodes_.begin(), toggled_nodes_.end(), toggle_display_);
                toggle_display_->setVisible(false);
                auto next = found + 1;
                if (next == toggled_nodes_.end()) {
                    toggle_display_ = toggled_nodes_.front();
                } else {
                    toggle_display_ = *next;
                }
            } else {
                toggle_display_ = toggled_nodes_.back();
            }
            buffer_58_ = DBG_GetDetailedNodeName(toggle_display_);
            return 0;
        }
        case 0x86: {
            if (DebugSwitches::GetInstance()->GetSwitch("IsUsingCharacterShowRoom")) {
                ++show_room_object_;  // the node's next link
                if (show_room_object_ == objects->m_characters.end()) {
                    show_room_object_ = objects->m_characters.begin();
                    Character* first = *show_room_object_;
                    first->m_visualObject->m_node->setVisible(true);  // +0x2D8, VisualObject +0x08, K 0x48
                }
                SetShowRoomDisplayedAnim(0);
                InitShowRoomCameraPos();
                (void)DBG_GetDetailedNodeName((*show_room_object_)->m_visualObject->m_node);  // result destroyed at once
            }
            if (toggled_nodes_.empty()) {
                return 0;
            }
            if (toggle_display_ != nullptr) {
                toggle_display_->setVisible(false);
                auto found = std::find(toggled_nodes_.begin(), toggled_nodes_.end(), toggle_display_);
                if (found == toggled_nodes_.begin()) {
                    toggle_display_ = toggled_nodes_.back();
                } else {
                    toggle_display_ = *(found - 1);
                }
            } else {
                toggle_display_ = toggled_nodes_.front();
            }
            buffer_58_ = DBG_GetDetailedNodeName(toggle_display_);
            return 0;
        }
        case 0x8B:
        case 0x8C: {
            level = app.GetCurrentLevel();
            if (level == nullptr || level->m_camera == nullptr) {
                return 0;
            }
            glitch::scene::ICameraSceneNode* camera = level->m_camera->m_camera;
            if (keyboard->key == 0x8B) {
                camera->setFarValue(camera->getFarValue() + 100.0f);  // K 0x134, 0x120
            } else {
                camera->setFarValue(camera->getFarValue() - 100.0f);
            }
            return 0;
        }
        case 0x8F:
        case 0x90: {
            const float delta = keyboard->key == 0x8F ? 100.0f : -100.0f;
            if (DebugSwitches::GetInstance()->GetSwitch("IsUsingCharacterShowRoom")) {
                SetShowRoomDisplayedAnim(show_room_anim_ + (keyboard->key == 0x8F ? 1 : -1));
            } else {
                level = app.GetCurrentLevel();
                if (level != nullptr && level->m_camera != nullptr) {
                    glitch::scene::ICameraSceneNode* camera = level->m_camera->m_camera;
                    camera->setNearValue(camera->getNearValue() + delta);  // K 0x130, 0x11C
                }
            }
            return 0;
        }
        case 0xDB: {
            level = app.GetCurrentLevel();
            if (level != nullptr && level->m_cameraOverview != nullptr) {
                level->m_cameraOverview->SetActive();  // Level +0x12C
            }
            return 0;
        }
        case 0xDD: {
            level = app.GetCurrentLevel();
            if (level != nullptr && level->m_camera != nullptr) {
                level->m_camera->SetActive();  // Level +0x128
            }
            return 0;
        }
        default:
            return 0;
    }
}

// 0x334d1c Console::_selectItem(int)
// Acts on the selected row (selected_ +0x0C) of the page shown (menu_page_ +0x08); `a2` is the key/finger index the
// level and world map pages use (1: first state, 2: second, 3: third). Pages: 0 start a level, 1 toggle a debug switch,
// 2 toggle a module, 3 toggle a HUD statistic, 4 the commands, 5 give a loot table, 6 advance a quest, 7 set a level
// state, 8 set a world map location state, 9 play an animation, 0xA/0xB play an effect / effect set, 0xD show or hide a
// menu, 0xE start or stop a script, 0xF set a modular skin module, 0x11 load a module level, 0x12 load a quest save,
// 0x13 set the level's listener. The command switch of page 4 also runs for page 0x13 without a level, and every command
// ends in the quest-save loader (the listing falls through into it).
void Console::_selectItem(int a2) {
    Application& app = ApplicationGetInstance();
    PlayerManager* const playerManager = app.m_playerManager;
    if (static_cast<unsigned int>(selected_) >= static_cast<unsigned int>(_getMaxNumberOfItem())) {
        return;
    }

    // Page 0x12's body (also the tail of every command of page 4): the quest save file named by the selected row of
    // the vector at +0x34.
    auto loadQuestProgress = [&]() {
        const std::vector<std::string>& saves = lists_[3];
        if (!saves.empty() && static_cast<unsigned int>(selected_) < saves.size()) {
            LoadQuestSaveFile(saves[static_cast<unsigned int>(selected_)].c_str());
        }
    };

    // The 15 commands of COMMAND_LABELS (page 4).
    auto runCommand = [&]() {
        switch (selected_) {
            case 0:
                _cmdReloadLevel();
                break;
            case 1: {
                Character* character = playerManager->GetLocalPlayerCharacter();
                if (character != nullptr) {
                    character->m_infiniteInventory = true;  // Character +0x3AB = ItemInventory +0x2F
                    character->DBG_DropAllLoots();
                }
                break;
            }
            case 2: {
                Character* character = playerManager->GetLocalPlayerCharacter();
                if (character != nullptr) {
                    character->RemoveAllItems(false);
                    character->SetPotionQty(character->m_maxPotions);  // ItemInventory +0x2C (Character +0x3A8)
                }
                break;
            }
            case 3: {
                if (app.GetCurrentLevel() != nullptr) {
                    Character* character = playerManager->GetLocalPlayerCharacter();
                    if (character != nullptr) {
                        ItemInventory* const inventory = character;  // Character +0x37C
                        ObjectManager* const objects = app.m_objectManager;
                        for (Character* monster : objects->m_characters) {  // the list at ObjectManager +0x60
                            if (!monster->IsMonster() || !monster->m_enabled) {  // ObjectBase +0x8A
                                continue;
                            }
                            const int loot = monster->GetLoot();
                            if (loot < 0 || static_cast<unsigned int>(loot) >= Arrays::LootTable::size) {
                                continue;
                            }
                            ItemInventory pool;
                            pool.AddLoot(loot, 0, 0, -1, false);
                            pool.TransferInventoryTo(*inventory, false, true);
                        }
                    }
                }
                break;
            }
            case 4:
                if (app.GetCurrentLevel() != nullptr) {
                    if (Character* character = playerManager->GetLocalPlayerCharacter()) {
                        character->LevelUp(0);
                    }
                }
                break;
            case 5:
                if (app.GetCurrentLevel() != nullptr) {
                    if (Character* character = playerManager->GetLocalPlayerCharacter()) {
                        character->m_freeMana ^= 1u;  // Character +0x14F0, the "god mode" toggle
                    }
                }
                break;
            case 6:
                if (app.GetCurrentLevel() != nullptr) {
                    if (Character* character = playerManager->GetLocalPlayerCharacter()) {
                        character->SG_SetGameDifficultyUnlocked(2);
                        character->SG_Save();
                    }
                }
                break;
            case 7:
                if (app.GetCurrentLevel() != nullptr) {
                    if (Character* character = playerManager->GetLocalPlayerCharacter()) {
                        character->ResetStats();
                        character->ResetSkills();
                    }
                }
                break;
            case 8:
                app.GetCurrentLevel()->QuickSave(false);  // no null test in the listing
                break;
            case 9:
                if (app.GetCurrentLevel() != nullptr) {
                    if (Character* character = playerManager->GetLocalPlayerCharacter()) {
                        character->SG_UnlockAllFastTravels();
                        MenuWorldMap::GetInstance()->unk_12c = true;  // +0x12C
                    }
                }
                break;
            case 0xA:
                if (app.GetCurrentLevel() != nullptr) {
                    if (Character* character = playerManager->GetLocalPlayerCharacter()) {
                        character->IncAllFaeriesLevel();
                    }
                }
                break;
            case 0xB:
                TrophyManager::s_instance->DBG_UnlockAllTrophies();
                break;
            case 0xC:
                if (app.GetCurrentLevel() != nullptr) {
                    if (Character* character = playerManager->GetLocalPlayerCharacter()) {
                        character->AddGold(0x200000);
                    }
                }
                break;
            case 0xD: {
                if (app.GetCurrentLevel() == nullptr) {
                    break;
                }
                Character* character = playerManager->GetLocalPlayerCharacter();
                if (character == nullptr) {
                    break;
                }
                for (int i = 0; i != 50; ++i) {
                    character->LevelUp(0);
                }
                // The primary stats by character class (Character +0x13C8 m_charPropsId): 263..265 strength, dexterity
                // and energy; 325..327 dexterity and energy; 290..292 energy.
                const int classId = character->m_charPropsId;
                bool dexterity = false;
                bool energy = false;
                if (classId > 292) {
                    if (static_cast<unsigned int>(classId - 325) <= 2u) {
                        dexterity = true;
                        energy = true;
                    }
                } else {
                    if (classId >= 290) {
                        energy = true;
                    } else if (static_cast<unsigned int>(classId - 263) <= 2u) {
                        for (int i = 0; i != 100; ++i) {
                            character->IncStatStr();
                        }
                        dexterity = true;
                        energy = true;
                    }
                }
                if (dexterity) {
                    for (int i = 0; i != 100; ++i) {
                        character->IncStatDex();
                    }
                }
                if (energy) {
                    for (int i = 0; i != 100; ++i) {
                        character->IncStatNrg();
                    }
                }
                character->IncAllFaeriesLevel();
                character->m_infiniteInventory = true;
                character->DBG_DropAllLoots();
                character->EquipAllSlotsAuto();  // vtable +0x138
                character->SetPotionQty(character->m_maxPotions);
                character->AddGold(0x200000);
                character->SG_UnlockAllFastTravels();
                MenuWorldMap::GetInstance()->unk_12c = true;
                break;
            }
            case 0xE: {
                if (app.GetCurrentLevel() == nullptr) {
                    break;
                }
                Character* character = playerManager->GetLocalPlayerCharacter();
                if (character == nullptr) {
                    break;
                }
                const int numQuests = character->SG_GetNumQuests(-1);
                if (numQuests != 0) {
                    for (int n = 0; n != numQuests; ++n) {
                        while (character->SG_GetQuestByID(n, -1)->m_state <= 12) {
                            character->SG_GetQuestByID(n, -1)->DBG_IncState();
                        }
                    }
                }
                break;
            }
            default:
                std::puts("Unknown commands");
                break;
        }
        loadQuestProgress();
    };

    switch (menu_page_) {
        case 0:
            if (!GetOnlineGameFlag() || playerManager->IsLocalPlayerHosting()) {
                if (static_cast<unsigned int>(selected_) < lists_[0].size()) {
                    DBG_TryStartingLevel(lists_[0][static_cast<unsigned int>(selected_)].c_str());
                }
            }
            return;
        case 1:
        case 2: {
            // The row's text is read through getListItem(getSelected()); the name handed on is the unwritten stack
            // buffer (see the file header), an empty string here.
            if (menu_ == nullptr || menu_->getListItem(menu_->getSelected()) == nullptr) {
                return;
            }
            const std::string name;
            if (menu_page_ == 1) {
                DebugSwitches::GetInstance()->SetSwitch(name, !DebugSwitches::GetInstance()->GetSwitch(name));
            } else {
                DebugSwitches::GetInstance()->SetModule(name, !DebugSwitches::GetInstance()->GetModule(name));
            }
            _setMenu();
            return;
        }
        case 3: {
            MenuDebugHUD* hud = MenuDebugHUD::GetInstance();
            if (static_cast<unsigned int>(selected_) <= 0x15u) {
                hud->m_debugStatFlags[selected_] = !hud->m_debugStatFlags[selected_];
                hud->SaveToFile();
            }
            _setMenu();
            return;
        }
        case 4:
            runCommand();
            return;
        case 5: {
            Character* character = playerManager->GetLocalPlayerCharacter();
            if (character != nullptr && static_cast<unsigned int>(selected_) < Arrays::LootTable::size) {
                ItemInventory pool;
                pool.AddLoot(selected_, 0, 0, -1, false);
                pool.TransferInventoryTo(*static_cast<ItemInventory*>(character), false, true);
            }
            return;
        }
        case 6: {
            Character* character = playerManager->GetLocalPlayerCharacter();
            if (character == nullptr) {
                return;
            }
            if (Quest* quest = character->SG_GetQuestByName(Arrays::v2Quests::m_memberNames.names[selected_], -1)) {
                quest->DBG_IncState();
            }
            _setMenu();
            return;
        }
        case 7: {
            Character* character = playerManager->GetLocalPlayerCharacter();
            if (character == nullptr) {
                return;
            }
            if (a2 == 1) {
                character->SG_SetLevelState(selected_, 0, -1);
            } else if (a2 == 2) {
                character->SG_SetLevelState(selected_, 1, -1);
            }
            _setMenu();
            return;
        }
        case 8: {
            Character* character = playerManager->GetLocalPlayerCharacter();
            if (character == nullptr) {
                return;
            }
            switch (a2) {
                case 2:
                    character->SG_SetMapLocState(selected_, 1, -1);
                    break;
                case 3:
                    character->SG_SetMapLocState(selected_, 2, -1);
                    break;
                case 1:
                    character->SG_SetMapLocState(selected_, 0, -1);
                    break;
            }
            _setMenu();
            return;
        }
        case 9: {
            if (app.GetCurrentLevel() != nullptr) {
                Character* character = playerManager->GetLocalPlayerCharacter();
                if (character != nullptr) {
                    // AnimTable row 1 (members + 32 in the 20-byte original layout), its first step's Anim (+0x08).
                    Structs::AnimTpl* rows = reinterpret_cast<Structs::AnimTpl*>(Arrays::AnimTable::members);
                    static_cast<Structs::AnimStep*>(rows[1].Steps)[0].Anim = selected_;
                    character->ANIM_Set(1);
                }
            }
            return;
        }
        case 0xA:
        case 0xB: {
            Character* character = playerManager->GetLocalPlayerCharacter();
            if (character == nullptr) {
                return;
            }
            const Point3D<float> position = character->GetTargetPosition();
            VisualFXManager& effects = VisualFXManager::s_inst;
            if (menu_page_ == 0xA) {
                if (static_cast<unsigned int>(selected_) < effects.m_animatedFXPools.size()) {  // 24-byte elements
                    effects.PlayAnimFX(selected_, position, nullptr, nullptr);
                    GSConsole::s_inst.Toggle();
                    return;
                }
            } else {
                if (static_cast<unsigned int>(selected_) < effects.m_animFXSets.size()) {
                    effects.PlayAnimFXSet(selected_, position, nullptr, nullptr);
                    GSConsole::s_inst.Toggle();
                    return;
                }
            }
            GSConsole::s_inst.Toggle();
            return;
        }
        case 0xD: {
            MenuManager* manager = MenuManager::GetInstance();
            if (static_cast<unsigned int>(selected_) < static_cast<unsigned int>(manager->GetNumMenus())) {
                MenuBase* menu = manager->GetMenuByID(selected_);
                if (menu != nullptr) {
                    if (menu->IsVisible()) {
                        menu->Hide();  // vtable +0x10
                    } else {
                        menu->Show();  // vtable +0x0C
                    }
                }
            } else {
                manager->HideAll();
            }
            _setMenu();
            return;
        }
        case 0xE:
            if (ScriptManager::s_inst.IsScriptRunning(selected_)) {
                ScriptManager::s_inst.StopScript(selected_, false);
            } else {
                ScriptManager::s_inst.StartScript(selected_, -1, false);
            }
            return;
        case 0xF: {
            int row = menu_ != nullptr ? menu_->getSelected() : -1;  // K 0x9C
            Character* character = playerManager->GetLocalPlayerCharacter();
            if (character == nullptr) {
                return;
            }
            VisualObject* visual = character->m_visualObject;
            if (visual == nullptr) {
                return;
            }
            int category = 0;
            while (visual->GetModularCategoryCount() > category) {
                const int count = visual->GetModularModuleCount(category);
                if (count <= row) {
                    row -= count;
                    ++category;
                    continue;
                }
                visual->SetModularSkin(category, row);
                visual->ApplyMaterial();
                visual->ApplyMaterialBaseParam();
                visual->ApplyShadowMaterial();
                break;
            }
            return;
        }
        case 0x11: {
            if (module_pattern_.empty()) {  // +0xA0 == +0xA4
                _setMenuLoadModuleList(static_cast<unsigned int>(selected_));
            } else if (static_cast<unsigned int>(selected_) < lists_[2].size()) {
                const char* module = lists_[2][static_cast<unsigned int>(selected_)].c_str();
                std::string path;
                path.assign(module_pattern_ + "/");
                app.unk_d4 = path;                     // ELF 0x99F800, Application +0xD4
                path.append(module, std::strlen(module));
                app.m_uncompiledData = path;           // ELF 0x99F7E8, Application +0xBC
                app.LoadLevel(app.m_uncompiledData.c_str(), 0, 0, false, true, 0, false, 0, 0);
            }
            return;
        }
        case 0x12:
            loadQuestProgress();
            return;
        case 0x13: {
            Level* level = app.GetCurrentLevel();
            if (level == nullptr) {
                runCommand();
                return;
            }
            if (selected_ != 0) {
                level->m_listenerIndex = selected_;  // Level +0xE4
            }
            GSConsole::s_inst.Toggle();
            return;
        }
        default:
            return;
    }
}
