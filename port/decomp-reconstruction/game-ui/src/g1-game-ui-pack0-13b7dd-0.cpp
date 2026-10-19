// Batch g1-game-ui-pack0-13b7dd-0: AbstractTableModel (scroll model for menu lists), AchievementMsg (copy and
// constructors) and AnchorBase (constructors, destructors, Reset and Update).
//
// Offsets in comments are the original 32-bit ARM offsets. The code never uses them for addressing.
//
// UpdateTableData also writes the visible flag (+0x9b, character::m_visible) of the scroll buttons after each
// RenderFX::SetEnabled call.

#include "dh2/AbstractTableModel.hpp"
#include "gameswf/gameswf_character.h"

#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/AchievementMsg.hpp"
#include "dh2/AnchorBase.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/MenuFX.hpp"
#include "gameswf/gameswf_character.h"

// Global assert level (libDungeonHunter2.so gAssertLevel). core-platform/memory.hpp declares it too, but that header
// pulls in a glitch_core stand-in that clashes with the shared one, so it is declared here as the other files do.
extern int gAssertLevel;

// ---------------------------------------------------------------------------------------------------------------
// AbstractTableModel
// ---------------------------------------------------------------------------------------------------------------

// 0x41fa00 AbstractTableModel::UpdateTableData(int)
// Moves the scroll offset by delta and refreshes the visible rows. The offset is clamped (plain lists) or wrapped
// (lists with m_wrap) as in the original. Each row is passed to the virtual slot 0 with its row index, its data index
// and whether the data index is in range. The return value is true when the offset changed.
//
// After each RenderFX::SetEnabled call the visible flag (+0x9b) of that button is written with the same value (five write
// sites: wrap: two; non-wrap: the down button, then the up button in the split or the non-split branch).
bool AbstractTableModel::UpdateTableData(int delta) {
    const int oldOffset = m_scrollOffset;     // +0x08
    const int offset = delta + oldOffset;     // v4 in the original
    m_scrollOffset = offset;                  // +0x08 is written before the clamp below

    const bool unbuffered = !m_bufferRows;    // +0x14 == 0
    const int visible = m_visibleRows;        // +0x10
    const int rowCount = unbuffered ? visible : visible + 2;   // rows to refresh (v8)

    if (!m_wrap) {
        // Plain list: the offset is clamped to the data range (LABEL_33 in the original).
        if (m_split) {
            // Split list (list_upper and list_lower): the last data index is count - 1.
            const int lastIndex = m_count - 1;                          // +0x0c - 1
            const int lowerBound = offset >= 0 ? offset : 0;            // v21
            m_scrollOffset = (lastIndex > lowerBound) ? lowerBound : lastIndex;
        } else {
            // Single list: the offset may go up to count - visible rows, and not below 0.
            int span = m_count - visible;                               // v22
            const int lowerBound = offset >= 0 ? offset : 0;            // v10
            const bool negativeSpan = span < 0;                         // v24
            if (negativeSpan) {
                span = 0;
            }
            // v10 = min(lowerBound, span); the original keeps the clamped span (0 when negative).
            m_scrollOffset = (span < lowerBound) ? span : lowerBound;
        }
    } else if (m_count < visible) {
        // Wrapping list with fewer data entries than rows: same clamp as the plain list (LABEL_33).
        if (m_split) {
            const int lastIndex = m_count - 1;
            const int lowerBound = offset >= 0 ? offset : 0;
            m_scrollOffset = (lastIndex > lowerBound) ? lowerBound : lastIndex;
        } else {
            int span = m_count - visible;
            const int lowerBound = offset >= 0 ? offset : 0;
            const bool negativeSpan = span < 0;
            if (negativeSpan) {
                span = 0;
            }
            m_scrollOffset = (span < lowerBound) ? span : lowerBound;
        }
    } else {
        // Wrapping list: one wrap in either direction, otherwise the offset stays as written above.
        if (offset < 0) {
            m_scrollOffset = offset + m_count;
        } else if (offset >= m_count) {
            m_scrollOffset = offset - m_count;
        }
    }

    // Row refresh. The anchor (+0x18) is the data index of row 0 in the window.
    if (rowCount > 0) {
        for (int row = 0; row < rowCount; ++row) {
            int dataIndex = m_scrollOffset - m_anchor + row;   // +0x08 - +0x18 + row
            if (m_split) {
                if (m_anchor <= row) {
                    if (m_anchor < row) {
                        --dataIndex;
                    }
                } else {
                    ++dataIndex;
                }
            }
            const bool enabled = (m_wrap && m_count >= m_visibleRows) ||
                                 (dataIndex >= 0 && dataIndex < m_count);
            unk_vslot00(row, dataIndex, enabled);   // vtable slot 0
        }
    }

    // Button enable state. The two scroll buttons are DebugCachedCharacter members (+0x1c and +0x4c).
    gameswf::character* downButton = m_scrollDown.GetChar();
    gameswf::character* upButton = m_scrollUp.GetChar();
    if (m_wrap && m_count >= m_visibleRows) {
        m_menu->SetEnabled(downButton, true);
        m_menu->SetEnabled(upButton, true);
        downButton->m_visible = true;
        upButton->m_visible = true;
    } else {
        m_menu->SetEnabled(downButton, m_scrollOffset > 0);
        downButton->m_visible = m_scrollOffset > 0;
        if (m_split) {
            m_menu->SetEnabled(upButton, m_scrollOffset < m_count - 1);
            upButton->m_visible = m_scrollOffset < m_count - 1;
        } else {
            m_menu->SetEnabled(upButton, m_visibleRows + m_scrollOffset < m_count);
            upButton->m_visible = m_visibleRows + m_scrollOffset < m_count;
        }
    }

    return m_scrollOffset != oldOffset;
}

// 0x41fca8 AbstractTableModel::_doScrollDown(void)
// Moves the list one step down (UpdateTableData(-1)). When the offset changed, plays the scroll_down movie: for a
// split list on the list_upper and list_lower movies, otherwise on the single list movie with flag 0 (m_split is 0 on
// this path).
int AbstractTableModel::_doScrollDown() {
    const bool changed = UpdateTableData(-1);
    if (!changed) {
        return 0;
    }
    if (m_split) {
        m_menu->PlayAnim("list_upper", "scroll_down", 0);
        return m_menu->PlayAnim("list_lower", "scroll_down", 0);
    }
    return m_menu->PlayAnim("list", "scroll_down", 0);
}

// 0x41fd3c AbstractTableModel::_doScrollUp(void)
// Moves the list one step up (UpdateTableData(1)), then plays the scroll_up movie, as _doScrollDown does.
int AbstractTableModel::_doScrollUp() {
    const bool changed = UpdateTableData(1);
    if (!changed) {
        return 0;
    }
    if (m_split) {
        m_menu->PlayAnim("list_upper", "scroll_up", 0);
        return m_menu->PlayAnim("list_lower", "scroll_up", 0);
    }
    return m_menu->PlayAnim("list", "scroll_up", 0);
}

// 0x41fdd0 AbstractTableModel::ProcessTableEvent(RenderFX::Event &)
// A click (event type 2) on the down button scrolls down; a click on the up button scrolls up. Other events, and
// clicks on other characters, do nothing.
//
// The original's return value on the paths that do nothing is register residue: the table pointer, or the up
// button's character pointer when the type is 2 and no button matches. No caller in this tree reads it (the only
// xref to 0x41fdd0 is a data reference in a function-pointer table, 0x4a608), so 0 is returned there.
int AbstractTableModel::ProcessTableEvent(RenderFX::Event& e) {
    constexpr int kClickEventType = 2;
    if (static_cast<int>(e.type) == kClickEventType) {
        if (e.target == m_scrollDown.GetChar()) {
            return _doScrollDown();
        }
        if (e.target == m_scrollUp.GetChar()) {
            return _doScrollUp();
        }
    }
    return 0;
}

// 0x41fe2c AbstractTableModel::InitTable(MenuFX *,int,int,bool,bool,bool)
// Stores the menu, the entry count, the visible row count and the three flags, derives the anchor (+0x18) from them,
// then refreshes the rows. The anchor is visibleRows / 2 for a split buffered list, 2 for a buffered single list, and
// 0 otherwise. The scroll offset (+0x08) is not reset.
bool AbstractTableModel::InitTable(MenuFX* menu, int count, int visibleRows, bool bufferRows, bool split, bool wrap) {
    m_menu = menu;
    m_count = count;
    m_wrap = wrap;
    m_visibleRows = visibleRows;
    m_bufferRows = bufferRows;
    m_split = split;

    // The original starts v7 at the buffer flag, which is 0 whenever it survives. A buffered list always takes one of
    // the two assignments below, so the start value is 0.
    int anchor = 0;
    if (split) {
        if (bufferRows) {
            anchor = visibleRows / 2;
        }
    } else if (bufferRows) {
        anchor = 2;
    }
    m_anchor = anchor;

    return UpdateTableData(0);
}

// ---------------------------------------------------------------------------------------------------------------
// AchievementMsg
// ---------------------------------------------------------------------------------------------------------------

// 0x380554 AchievementMsg::AchievementMsg(AchievementMsg const&)
// Copy constructor. The original range-initialises the base string from the source string and does the same for
// m_desc, then copies the three ints. The STLport string internals written around it (the self pointers at +0x10,
// +0x14, +0x28 and +0x2c) are the host std::string's own business and are not reproduced.
AchievementMsg::AchievementMsg(const AchievementMsg& other)
    : std::string(other),
      m_desc(other.m_desc),
      m_trophyType(other.m_trophyType),
      m_grade(other.m_grade),
      m_label(other.m_label) {}

// 0x433acc AchievementMsg::AchievementMsg(std::string const&,std::string const&,int,int,int)   (C1)
// 0x433b08 AchievementMsg::AchievementMsg(std::string const&,std::string const&,int,int,int)   (C2, same body)
// Base string from name, m_desc from desc, then trophyType, grade and label at +0x30, +0x34 and +0x38.
AchievementMsg::AchievementMsg(const std::string& name, const std::string& desc, int trophyType, int grade, int label)
    : std::string(name),
      m_desc(desc),
      m_trophyType(trophyType),
      m_grade(grade),
      m_label(label) {}

// ---------------------------------------------------------------------------------------------------------------
// AnchorBase
// ---------------------------------------------------------------------------------------------------------------

// 0x47706c AnchorBase::~AnchorBase()   (D2, complete object destructor, empty body)
// 0x477070 AnchorBase::~AnchorBase()   (D1, base object destructor, same empty body)
// The original destructors do nothing. The vptr is set by the compiler. The declaration in AnchorBase.hpp is virtual,
// so both forms are served by the one definition below.
// 0x4770b4 AnchorBase::~AnchorBase()   (D0, scalar deleting destructor): compiler-generated on the host, not written here.
AnchorBase::~AnchorBase() {}

// 0x477074 AnchorBase::Reset(void)
// Copies the position of the GameObject (+0x160, +0x164, +0x168) into m_position (+0x0c, +0x10, +0x14).
void AnchorBase::Reset() {
    m_position.X = m_go->m_position.X;
    m_position.Y = m_go->m_position.Y;
    m_position.Z = m_go->m_position.Z;
}

// 0x477094 AnchorBase::Update(void)
// Same body as Reset: the original copies the GameObject position into m_position.
void AnchorBase::Update() {
    m_position.X = m_go->m_position.X;
    m_position.Y = m_go->m_position.Y;
    m_position.Z = m_go->m_position.Z;
}

// 0x4770d0 AnchorBase::AnchorBase(GameObject *,AnchorBase::AnchorType)   (C1)
// 0x4771a0 AnchorBase::AnchorBase(GameObject *,AnchorBase::AnchorType)   (C2, same body)
// Sets the type, the GameObject and m_enabled (+0x18, set to true), zeroes m_position, then calls Reset. A null
// GameObject fails ASSERT(go) at AnchorBase.cpp:24. Level 2 stops the program (the original stores to address 0);
// level 1 prints the message. Reset then reads the null pointer in both cases, as the original does.
AnchorBase::AnchorBase(GameObject* go, AnchorType type)
    : m_type(type),
      m_go(go),
      m_enabled(true) {
    m_position.X = 0.0f;
    m_position.Y = 0.0f;
    m_position.Z = 0.0f;

    if (go == nullptr) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "go",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Anchors\\AnchorBase.cpp", 24);
        }
    }
    AnchorBase::Reset();
}
