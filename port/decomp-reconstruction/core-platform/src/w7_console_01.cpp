#include "core-platform/w7_console_01.hpp"

#include "core-platform/deps/debug_switches.hpp"
#include "core-platform/filesystem_win32.hpp"
#include "core-platform/memory.hpp"
#include "glitch-core-io/os/device.hpp"

#include <algorithm>
#include <cstring>

// 0x331944 _ZN7ConsoleD1Ev and 0x331a2c _ZN7ConsoleD2Ev
// Both listings have the same body. One definition is kept here for both symbols.
Console::~Console() {
    if (EventManager* const events = ConsoleEventManager()) {
        events->Detach(4, this);
        events->Detach(5, this);
    }
    _destroyList();
    // The string, vector and list storage are released by the member destructors.
}

// 0x331a10 _ZN7ConsoleD0Ev (deleting destructor, 20 bytes)
void ConsoleDeletingDestructor(Console* self) {
    self->~Console();
    CustomFree(self);
}

// 0x333a4c _ZN7ConsoleC1Ev and 0x33401c _ZN7ConsoleC2Ev
// Both listings have the same body. Member initialisers set the zeroed fields.
Console::Console() {
    EventManager* const events = ConsoleEventManager();
    events->Attach(4, this, 15);
    events->Attach(5, this, 15);

    DebugSwitches& sw = DebugSwitches::s_inst;
    sw.load();
    sw.SetSwitch("IsUsingToggleDisplayMode", false);
    sw.load();
    sw.SetSwitch("IsUsingCharacterShowRoom", false);
    sw.load();
    sw.SetSwitch("IsLevelUpdatePaused", false);
    sw.load();
    sw.SetSwitch("DumpQuestInformationOnce", false);
    sw.load();
    sw.SetSwitch("ForceAll4Players", false);
    sw.load();
    sw.SetSwitch("DontUsePlayerSeed", false);
    sw.load();
    sw.SetSwitch("EnablePlayerHeadLight", true);
    sw.load();
    sw.SetSwitch("TestMultiPlayerLight", true);
    sw.load();
    sw.SetSwitch("RENDERING_DisableAllLighting", false);
    sw.load();
    sw.SetSwitch("RENDERING_DisableAllSpecular", false);
    sw.load();
    sw.SetSwitch("RENDERING_DisableGpuSkinning", false);
    sw.load();
    sw.SetSwitch("RENDERING_EnableShadowProjection", true);
    sw.load();
    sw.SetSwitch("RENDERING_EnableXray", true);
    sw.load();
    sw.SetSwitch("isUsingMapHack", false);
    sw.load();
    sw.SetSwitch("IsDisablingMinimap", false);
    sw.load();
    sw.SetSwitch("IsUsingGamepadTweaker", false);
    sw.load();
    sw.SetSwitch("ToggleGamepadScreenShot", true);
    sw.load();
    sw.SetSwitch("Optim_DisableUpdateTimeOnlyForCulledNode", false);
    sw.load();
    (void)sw.GetSwitch("isTracingItemPctRoll");
}

// 0x999708 _ZN7Console14COMMAND_LABELSE: 15 string pointers (60 bytes in .data.rel.ro, strings at 0x8bfba0..0x8bfd30), the
// labels of the console's COMMANDS page in the order _setMenuCommands lists them.
const char* const Console::COMMAND_LABELS[15] = {
    "Reload Level",
    "Add Every Known Items To Mankind To The Player's Inventory",
    "Remove All Unequipped Items From Player's Inventory",
    "Give current level loots to player",
    "Level Up!!!",
    "Toggle God Mode",
    "Unlock All Difficulties",
    "Reset Stats",
    "Checkpoint",
    "Unlock all fast travel locations",
    "Unlock and increase all faeries",
    "Unlock all achievements",
    "Give Gold",
    "End Game Character",
    "Finish All Quests",
};

// 0x332488 _ZN7Console16_setMenuCommandsEv
void Console::_setMenuCommands() {
    std::vector<std::string> labels;
    for (int i = 0; i != 15; ++i) {
        labels.push_back(COMMAND_LABELS[i]);
    }
    _createList(labels, const_cast<char*>("COMMANDS"));
}

// 0x334b1c _ZN7Console8_setMenuEv
void Console::_setMenu() {
    if (!open_) {
        return;
    }
    switch (menu_page_) {
        case 0x0: _setMenuLevelList(); break;
        case 0x1: _setMenuDebugSwitches(); break;
        case 0x2: _setMenuDebugModules(); break;
        case 0x3: _setMenuStats(); break;
        case 0x4: _setMenuCommands(); break;
        case 0x5: _setLootTableList(); break;
        case 0x6: _setMenuQuestList(); break;
        case 0x7: _setMenuLevelListPyData(); break;
        case 0x8: _setMenuWorldMap(); break;
        case 0x9: _setMenuAnimList(); break;
        case 0xA: _setMenuVFXList(); break;
        case 0xB: _setMenuVFXSetList(); break;
        case 0xC: _setMenuCameras(); break;
        case 0xD: _setMenuMenus(); break;
        case 0xE: _setMenuScripts(); break;
        case 0xF: _setMenuCharModules(); break;
        case 0x11: _setMenuLoadModuleFolderList(); break;
        case 0x12: _setMenuLoadQuestProgress(); break;
        case 0x13: _setMenuListeners(); break;
        default: break;  // 0x10 and anything else: no menu page
    }
}

// 0x334bd8 _ZN7Console6ToggleEv
// Verified against the listing: open_ (+0x04) is complemented; when it is now open the vector at
// +0x10 is erased in full, the device file system (IDevice +0x34, reached through dword_99F73C =
// Application::m_device) is asked for "data/scene/*.xml" and "data/scene/*.mlx" through vtable slot
// +0x7c = FileSystemWin32::getFiles, entries whose name has neither ".xml" nor ".mlx" (strstr) are
// erased one by one, and _setMenu runs; when it is now closed _destroyList runs. DEVIATION
// (host-necessitated): a null guard on the device and the file system, where the original
// dereferences dword_99F73C+0x34 without a test.
void Console::Toggle() {
    open_ = !open_;
    if (open_) {
        std::vector<std::string>& items = lists_[0];
        if (!items.empty()) {
            items.erase(items.begin(), items.end());
        }
        if (glitch::IDevice* device = ConsoleDevice()) {
            if (FileSystemWin32* fileSystem = static_cast<FileSystemWin32*>(device->fileSystem)) {  // +0x34 is io::IFileSystem*; getFiles is a FileSystemWin32 method
                fileSystem->getFiles("data/scene/*.xml", items);
                fileSystem->getFiles("data/scene/*.mlx", items);
            }
        }
        // Keep only entries that name a .xml or .mlx file. The listing uses strstr.
        items.erase(
            std::remove_if(items.begin(), items.end(),
                           [](const std::string& name) {
                               return !std::strstr(name.c_str(), ".xml") &&
                                      !std::strstr(name.c_str(), ".mlx");
                           }),
            items.end());
        _setMenu();
    } else {
        _destroyList();
    }
}
