// Data the MenuManager bodies read (batch g1-game-ui-MenuManager-a5622d-1). Declarations only: each
// definition belongs to the category that owns the value.
#pragma once

class EventManager;
class SavegameManager;

// Symbol Width_Screen, 4 bytes (.data): the screen width compared with 854, 960 and 800.
extern int Width_Screen;

// Symbol HTC_DEVICES, 1 byte (.bss): read by SwitchMenusToMainMenu as (HTC_DEVICES || !NO_IGP).
extern bool HTC_DEVICES;

// Symbol NO_IGP, 1 byte (.bss): read by SwitchMenusToMainMenu as (HTC_DEVICES || !NO_IGP).
extern bool NO_IGP;

// dword_99F740 (unnamed in the symbols): the EventManager instance that ~MenuManager detaches from.
extern EventManager*& dword_99F740;  // a reference to Singleton<Application>::s_inst.m_eventManager (+0x14), defined in game-app/src/link1_ApplicationWords.cpp (link-1)

// dword_99F778 (unnamed in the symbols): the SavegameManager instance, read for getLanguage().
extern SavegameManager*& dword_99F778;  // a reference to Singleton<Application>::s_inst.m_savegameManager (+0x4c), defined in game-app/src/link1_ApplicationWords.cpp (link-1)
