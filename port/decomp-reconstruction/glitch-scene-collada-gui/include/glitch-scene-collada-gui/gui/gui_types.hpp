// glitch::gui enumerations and name tables shared by the GUI classes. Canonical header of the scene-owner wave (gui family). It replaces the
// EGUI_ELEMENT_TYPE of gui_simple_accessors.hpp and the alignment words of layouts/gui.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout): the name tables are internal-linkage arrays that every translation unit of the engine
// carries its own copy of (_ZN6glitch3guiL19GUIElementTypeNamesE ... at 0x956b40, 0x956b9c, 0x956fb4, 0x95700c, 0x957038, 0x95705c). Their
// strings are the Irrlicht 1.x ones. The element type word of IGUIElement (+0x154) indexes GUIElementTypeNames (IGUIElement::getTypeName
// 0x5350a4 does not check the index: the table has 22 names and a null terminator, the types ELEMENT (22) and ROOT (23) read past it).
#pragma once

#include <cstdint>

namespace glitch::gui {

// The element kinds (IGUIElement +0x154). The constructor argument of CGUIEnvironment's root element is 23 (EGUIET_ROOT).
enum EGUI_ELEMENT_TYPE : std::uint32_t {
    EGUIET_BUTTON = 0,
    EGUIET_CHECK_BOX,
    EGUIET_COMBO_BOX,
    EGUIET_CONTEXT_MENU,
    EGUIET_MENU,
    EGUIET_EDIT_BOX,
    EGUIET_FILE_OPEN_DIALOG,
    EGUIET_COLOR_SELECT_DIALOG,
    EGUIET_IN_OUT_FADER,
    EGUIET_IMAGE,
    EGUIET_LIST_BOX,
    EGUIET_MESH_VIEWER,
    EGUIET_MESSAGE_BOX,
    EGUIET_MODAL_SCREEN,
    EGUIET_SCROLL_BAR,
    EGUIET_SPIN_BOX,
    EGUIET_STATIC_TEXT,
    EGUIET_TAB,
    EGUIET_TAB_CONTROL,
    EGUIET_TABLE,
    EGUIET_TOOL_BAR,
    EGUIET_WINDOW,
    EGUIET_ELEMENT,  // 22
    EGUIET_ROOT,     // 23
    EGUIET_COUNT,
};

// The edge alignments (IGUIElement +0x140 .. +0x14c). GUIAlignmentNames: "upperLeft", "lowerRight", "center", "scale".
enum EGUI_ALIGNMENT : std::uint32_t {
    EGUIA_UPPERLEFT = 0,
    EGUIA_LOWERRIGHT = 1,
    EGUIA_CENTER = 2,
    EGUIA_SCALE = 3,
};

// The GUI event types (SEvent::GUIEvent.EventType, the +0x10 word of a GUI event). Irrlicht 1.6's order without the two edit box change
// events: the values the listings post or test are ELEMENT_FOCUS_LOST 0, FOCUSED 1, CLOSED 4, BUTTON_CLICKED 5, SCROLL_BAR_CHANGED 6,
// CHECKBOX_CHANGED 7, LISTBOX_CHANGED 8, LISTBOX_SELECTED_AGAIN 9, MESSAGEBOX_YES / NO / OK / CANCEL 12 .. 15, TAB_CHANGED 17 and
// COMBO_BOX_CHANGED 19 (the ones after COMBO_BOX_CHANGED are checked where the widget posts them).
enum EGUI_EVENT_TYPE : std::int32_t {
    EGET_ELEMENT_FOCUS_LOST = 0,
    EGET_ELEMENT_FOCUSED,
    EGET_ELEMENT_HOVERED,
    EGET_ELEMENT_LEFT,
    EGET_ELEMENT_CLOSED,
    EGET_BUTTON_CLICKED,
    EGET_SCROLL_BAR_CHANGED,
    EGET_CHECKBOX_CHANGED,
    EGET_LISTBOX_CHANGED,
    EGET_LISTBOX_SELECTED_AGAIN,
    EGET_FILE_SELECTED,
    EGET_FILE_CHOOSE_DIALOG_CANCELLED,
    EGET_MESSAGEBOX_YES,
    EGET_MESSAGEBOX_NO,
    EGET_MESSAGEBOX_OK,
    EGET_MESSAGEBOX_CANCEL,
    EGET_EDITBOX_ENTER,
    EGET_TAB_CHANGED,
    EGET_MENU_ITEM_SELECTED,
    EGET_COMBO_BOX_CHANGED,
    EGET_SPINBOX_CHANGED,
    EGET_TABLE_CHANGED,
    EGET_TABLE_HEADER_CHANGED,
    EGET_TABLE_SELECTED_AGAIN,
    EGET_COUNT,
};

// The name tables (each is null-terminated except GUISkinTextNames).
extern const char* const GUIElementTypeNames[23];  // 22 names then a null
extern const char* const GUIAlignmentNames[5];     // 4 names then a null
extern const char* const GUISkinTypeNames[5];      // "windowsClassic", "windowsMetallic", "burning", "unknown", null
extern const char* const GUISkinColorNames[22];    // 21 names then a null
extern const char* const GUISkinSizeNames[11];     // 10 names then a null
extern const char* const GUISkinTextNames[9];      // 8 names then a null
extern const char* const GUISkinIconNames[24];     // 23 names then a null

}  // namespace glitch::gui

namespace glitch {

// The key codes of SEvent::KeyInput.Key: the Windows virtual-key values (the ones the GUI classes test; the rest of the table is not used).
enum EKEY_CODE : std::int32_t {
    KEY_BACK = 0x08,
    KEY_TAB = 0x09,
    KEY_RETURN = 0x0D,
    KEY_SHIFT = 0x10,
    KEY_CONTROL = 0x11,
    KEY_MENU = 0x12,
    KEY_ESCAPE = 0x1B,
    KEY_SPACE = 0x20,
    KEY_PRIOR = 0x21,
    KEY_NEXT = 0x22,
    KEY_END = 0x23,
    KEY_HOME = 0x24,
    KEY_LEFT = 0x25,
    KEY_UP = 0x26,
    KEY_RIGHT = 0x27,
    KEY_DOWN = 0x28,
    KEY_INSERT = 0x2D,
    KEY_DELETE = 0x2E,
    KEY_KEY_A = 0x41,
    KEY_KEY_C = 0x43,
    KEY_KEY_V = 0x56,
    KEY_KEY_X = 0x58,
    KEY_KEY_Z = 0x5A,
};

}  // namespace glitch
