// Console declarations used by w7_console_01.cpp.
// Offsets in comments are the ELF pseudocode offsets (ARM 32-bit layout). Field
// names describe how the rebuilt code uses each field; the class is not ABI-checked.
#pragma once

#include <cstdint>
#include <list>
#include <string>
#include <vector>

#include "dh2/EventManager.hpp"    // EventManager (game header, the one definition)
#include "dh2/IEventReceiver.hpp"  // ::IEventReceiver (game header, the one definition)

namespace glitch {
class IDevice;
namespace scene {
class ISceneNode;
class ICameraSceneNode;
}
namespace gui {
class IGUIListBox;
class IGUIStaticText;
}  // namespace gui
}  // namespace glitch

// EventManager instance; ELF global dword_99F740 = Application::m_eventManager (+0x14), defined in
// game-app/src/link1_ApplicationWords.cpp. Null before the application has created it.
EventManager* ConsoleEventManager();

// The device the console works on: the word at Singleton<Application>::s_inst +0x10, the ELF
// global dword_99F73C (Application::m_device). Its gui environment is at IDevice +0x18, its video
// driver at +0x10 and its file system at +0x34. The member belongs to dh2/Application.hpp, which
// this header does not include; the accessor is defined in w7_console_00.cpp. Null before the
// platform layer has created the device.
glitch::IDevice* ConsoleDevice();

class Character;  // dh2/Character.hpp

// Console::onEvent (0x335b14) and onEventNotOpened (0x33271c) are in ok3-Console.cpp, with the page builders,
// _selectItem and the quest save helpers. Application holds a Console* (Application::PostInit constructs it).
class Console : public IEventReceiver {
public:
    Console();                  // 0x333a4c C1 and 0x33401c C2 (identical bodies)
    ~Console() override;        // 0x331a2c D2 and 0x331944 D1 (identical bodies)
    bool onEvent(const IEvent* event, const EventManager* manager) override;  // +0x08 0x335b14
    int onEventNotOpened(const IEvent* event, const EventManager* manager);   // 0x33271c

    // 0x332488 static table of 15 command labels. Contents are in the data category.
    static const char* const COMMAND_LABELS[15];

    // Menu page builders and helpers. Definitions are in other console slices.
    void _createList(std::vector<std::string>& items, char* title);
    void _destroyList();
    void _setMenu();
    void _setMenuLevelList();
    void _setMenuCommands();
    void _setMenuLevelListPyData();
    void _setMenuWorldMap();
    void _setMenuStats();
    void _setMenuDebugModules();
    void _setMenuDebugSwitches();
    void _setMenuQuestList();
    void _setMenuLoadModuleFolderList();
    void _setMenuLoadQuestProgress();
    void _setMenuListeners();
    void _setMenuCameras();
    void SetShowRoomDisplayedAnim(int);  // 0x33026c (from w7_console_00)
    void _setMenuMenus();
    void _setMenuScripts();
    void _setMenuCharModules();
    void _setLootTableList();
    void _setMenuAnimList();
    void _setMenuVFXList();
    void _setMenuVFXSetList();
    void _setMenuLoadModuleList(unsigned int);  // 0x33394c
    int _addToList(const char* name);           // 0x330198 returns the list box's addItem index (the argument is ignored)
    int _getMaxNumberOfItem() const;            // 0x3307ac
    void _cmdReloadLevel();                     // 0x3309d4
    void _selectItem(int index);                // 0x334d1c
    void UpdateToggleDisplayList();             // 0x331cfc
    void UpdateCharacterShowRoom();
    void InitShowRoomCameraPos();
    void CreateQuestSaveFile();
    void LoadQuestSaveFile(const char* name);
    static int DBG_TryStartingLevel(const char* name);  // 0x33179c (static: GSInit::Update passes the uncompiled-data level name and tests the result)

    void Toggle();              // 0x334bd8
    void Update(double dt);     // 0x330270

public:  // decision 9: the game code reads open_ directly (GSConsole, Application::_CheckGamepad)
    bool open_ = false;                     // +0x04
    int menu_page_ = 0;                     // +0x08, index used by _setMenu()
    int selected_ = 0;                      // +0x0C
    std::vector<std::string> lists_[4];     // +0x10, +0x1C, +0x28, +0x34
    // +0x40, the menu list box built by _createList: clear (K 0x98), addItem (K 0x84),
    // setSelected (K 0xa0, read by Update) and setAutoScrollEnabled (K 0xa4).
    glitch::gui::IGUIListBox* menu_ = nullptr;
    // +0x44, the menu title bar built by _createList: setOverrideColor (K 0x84),
    // setBackgroundColor (K 0x94), setTextAlignment (K 0xa0), getTextHeight (K 0xac).
    glitch::gui::IGUIStaticText* menu_title_ = nullptr;
    std::vector<glitch::scene::ISceneNode*> toggled_nodes_;  // +0x48
    glitch::scene::ISceneNode* toggle_display_ = nullptr;  // +0x54 the node of toggled_nodes_ shown now (null = none)
    std::string buffer_58_;                 // +0x58 DBG_GetDetailedNodeName of toggle_display_
    int show_room_anim_ = 0;                // +0x70 anim shown on the show-room character (SetShowRoomDisplayedAnim target; not initialised by the constructor)
    // +0x74 the show-room character: a node of ObjectManager::m_characters (the std::list at ObjectManager +0x60); equal to the
    // list's end() when none is shown (the original keeps the node pointer, 0 until the key toggles the mode on).
    std::list<Character*>::iterator show_room_object_{};
    int show_room_index_ = -1;              // +0x78
    glitch::scene::ICameraSceneNode* show_room_camera_ = nullptr;  // +0x7C the free-look camera ("cameraFPS") of the debug keys
    std::uint8_t touch_flags_ = 0;          // +0x80
    std::int16_t touch_x_ = 0;              // +0x82
    std::int16_t touch_y_ = 0;              // +0x84
    std::uint8_t touch_pending_ = 0;        // +0x86
    int touch_aux_ = 0;                     // +0x88
    int touch_id_ = -1;                     // +0x8C
    std::string module_pattern_;            // +0x90
};

// 0x331a10 D0 (deleting destructor): runs ~Console() then frees the object.
void ConsoleDeletingDestructor(Console* self);
