// AbstractTableModel: scroll model for a list of data entries shown in a fixed number of menu rows.
// InitTable stores the menu, the entry count, the row count and three flags, then refreshes the rows.
// UpdateTableData moves the scroll offset and calls the virtual in slot 0 once per visible row with
// (row, data index, enabled). The two scroll buttons are embedded DebugCachedCharacter objects; their clicks
// reach ProcessTableEvent, which dispatches to _doScrollDown or _doScrollUp.
// Original 32-bit size not recovered. The class has no vtable of its own in libDungeonHunter2.so (the
// decomp_vtable listing finds none), so it is abstract and the object size comes from the derived classes.
// The recovered members end at +0x7c. The vtable has at least one slot; only slot 0 is known.
// Reconstructed from libDungeonHunter2.so pseudocode (UpdateTableData 0x41fa00, _doScrollDown 0x41fca8,
// _doScrollUp 0x41fd3c, ProcessTableEvent 0x41fdd0, InitTable 0x41fe2c).
#pragma once

#include <cstdint>

#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/RenderFX.hpp"

class MenuFX;

class AbstractTableModel {
public:
    // Slot 0 of the vtable (+0x00 is the vptr, implicit). Called by UpdateTableData as
    // (this, row, data index, enabled). Name not recovered. Pure, since the class has no vtable of its own.
    virtual void unk_vslot00(int row, int dataIndex, bool enabled) = 0;

    // Methods in original order.
    bool InitTable(MenuFX* menu, int count, int visibleRows, bool bufferRows, bool split, bool wrap);  // 0x41fe2c
    bool UpdateTableData(int delta);                                    // 0x41fa00 moves the offset by delta, returns true when it changed
    int _doScrollDown();                                                // 0x41fca8 UpdateTableData(-1), then plays the scroll_down movie
    int _doScrollUp();                                                  // 0x41fd3c UpdateTableData(1), then plays the scroll_up movie
    int ProcessTableEvent(RenderFX::Event& e);                          // 0x41fdd0 a click (type 2) on m_scrollDown or m_scrollUp scrolls

    // Members in original order. vptr at +0x00 (implicit).
    MenuFX* m_menu;                                                     // +0x04 MenuFX that plays the list movies and enables the buttons
    int m_scrollOffset;                                                 // +0x08 current scroll position, changed by UpdateTableData
    int m_count;                                                        // +0x0c number of data entries (InitTable a3)
    int m_visibleRows;                                                  // +0x10 number of menu rows (InitTable a4)
    bool m_bufferRows;                                                  // +0x14 InitTable a5: two extra rows are refreshed
    bool m_split;                                                       // +0x15 InitTable a6: the list is two movies, list_upper and list_lower
    bool m_wrap;                                                        // +0x16 InitTable a7: the entries wrap when there are more than the rows
    uint8_t pad_17[1];                                                  // +0x17
    int m_anchor;                                                       // +0x18 offset of row 0: 0, 2 or visibleRows / 2, from the flags
    DebugCachedCharacter m_scrollDown;                                  // +0x1c button that ProcessTableEvent sends to _doScrollDown (0x30 bytes)
    DebugCachedCharacter m_scrollUp;                                    // +0x4c button that ProcessTableEvent sends to _doScrollUp (0x30 bytes)
};
