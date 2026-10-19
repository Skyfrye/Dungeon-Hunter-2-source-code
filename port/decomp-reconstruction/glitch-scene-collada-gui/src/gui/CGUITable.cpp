// Bodies of glitch::gui::IGUITable, CGUITable and CGUITable::Cell (canonical classes: gui/CGUITable.hpp). This file replaces their bodies in
// gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_04.cpp and the table parts of the other recon slices.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUITable.hpp"

#include <algorithm>
#include <string>

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/CGUIScrollBar.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

namespace {

// _ZN6glitch3guiL22GUIColumnOrderingNamesE (0x95727c) and _ZN6glitch3guiL20GUIOrderingModeNamesE (0x957294): file-local name tables of the
// original. The ordering mode table has two names only ("none" is missing), so index 0 reads as "ascending" there.
const char* const GUIColumnOrderingNames[] = {"none", "custom", "ascend", "descend", "ascend_descend", nullptr};
const char* const GUIOrderingModeNames[] = {"ascending", "descending", nullptr};

// "Column<i>name": the name with the character with the code i appended (as in the original), then the suffix.
std::string columnKey(std::uint32_t column, const char* suffix) {
    std::string key = "Column";
    key.push_back(static_cast<char>(column));
    key += suffix;
    return key;
}

std::string cellKey(std::uint32_t row, std::uint32_t column, const char* suffix) {
    std::string key = "Row";
    key.push_back(static_cast<char>(row));
    key += "cell";
    key.push_back(static_cast<char>(column));
    key += suffix;
    return key;
}

void postTableEvent(IGUIElement* receiver, IGUIElement* caller, int eventType) {
    SEvent event;
    event.EventType = EET_GUI_EVENT;
    event.GUIEvent.Caller = caller;
    event.GUIEvent.Element = nullptr;
    event.GUIEvent.EventType = eventType;
    receiver->onEvent(event);
}

}  // namespace

// 0x556134 _ZN6glitch3gui9IGUITableC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUITable::IGUITable(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_TABLE, environment, parent, id, rectangle) {}

// 0x557aa0 _ZN6glitch3gui9IGUITableD1Ev (D0 0x557b14 skipped)
IGUITable::~IGUITable() = default;

// 0x556850 _ZN6glitch3gui9CGUITable4CellC1Ev
CGUITable::Cell::Cell() = default;

// 0x556090 _ZN6glitch3gui9CGUITable4CellC1ERKS1_
CGUITable::Cell::Cell(const Cell& other) : text(other.text), brokenText(other.brokenText), color(other.color), data(other.data) {}

// 0x5583e0 _ZN6glitch3gui9CGUITable4CellaSERKS1_
CGUITable::Cell& CGUITable::Cell::operator=(const Cell& other) {
    if (this != &other) {
        text = other.text;
    }
    if (&brokenText != &other.brokenText) {
        brokenText = other.brokenText;
    }
    color = other.color;
    data = other.data;
    return *this;
}

// 0x557b90 _ZN6glitch3gui9CGUITable4CellD1Ev
CGUITable::Cell::~Cell() = default;

// 0x5563fc _ZN6glitch3gui9CGUITableC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEbbb (C2 0x55664c)
CGUITable::CGUITable(IGUIEnvironment* environmentValue, IGUIElement* parentElement, int id, core::rect<int> rectangle, bool clipValue,
                     bool drawBackValue, bool moveOverSelectValue)
    : IGUITable(environmentValue, parentElement, id, rectangle) {
    clip = clipValue;
    drawBack = drawBackValue;
    moveOverSelect = moveOverSelectValue;
    core::rect<int> scrollRect = detail::makeRect(0, 0, 100, 100);
    verticalScrollBar = environment->addScrollBar(false, scrollRect, this, -1);  // K 0x88
    if (verticalScrollBar != nullptr) {
        ++verticalScrollBar->referenceCounter;
        verticalScrollBar->noClip = false;
        verticalScrollBar->setSubElement(true);
    }
    horizontalScrollBar = environment->addScrollBar(true, scrollRect, this, -1);
    if (horizontalScrollBar != nullptr) {
        ++horizontalScrollBar->referenceCounter;
        horizontalScrollBar->noClip = false;
        horizontalScrollBar->setSubElement(true);
    }
    refreshControls();  // K 0xf4
}

// 0x557c90 _ZN6glitch3gui9CGUITableD1Ev (0x557d64 and 0x557d80 are the other forms)
CGUITable::~CGUITable() {
    if (verticalScrollBar != nullptr) {
        verticalScrollBar->drop();
    }
    if (horizontalScrollBar != nullptr) {
        horizontalScrollBar->drop();
    }
    if (font != nullptr) {
        font->drop();
    }
}

// 0x554f60 _ZNK6glitch3gui9CGUITable14getColumnCountEv
int CGUITable::getColumnCount() const {
    return static_cast<int>(columns.size());
}

// 0x554f80 _ZNK6glitch3gui9CGUITable11getRowCountEv
int CGUITable::getRowCount() const {
    return static_cast<int>(rows.size());
}

// 0x554fa8 _ZN6glitch3gui9CGUITable15setActiveColumnEib
// With `doOrder` the ordering of the column is applied (a custom column posts TABLE_HEADER_CHANGED and keeps the current ordering mode at
// none); TABLE_HEADER_CHANGED is also posted when the column changed. (The original dereferences a null parent for the last event.)
bool CGUITable::setActiveColumn(int index, bool doOrder) {
    if (index < 0 || index >= static_cast<int>(columns.size())) {
        return false;
    }
    const int previous = activeTab;
    activeTab = index;
    if (doOrder) {
        switch (columns[static_cast<std::size_t>(index)].orderingMode) {
            case EGCO_CUSTOM:
                currentOrdering = EGOM_NONE;
                if (parent != nullptr) {
                    postTableEvent(parent, this, EGET_TABLE_HEADER_CHANGED);
                }
                break;
            case EGCO_ASCENDING:
                currentOrdering = EGOM_ASCENDING;
                break;
            case EGCO_DESCENDING:
                currentOrdering = EGOM_DESCENDING;
                break;
            case EGCO_FLIP_ASCENDING_DESCENDING:
                currentOrdering = currentOrdering == EGOM_ASCENDING ? EGOM_DESCENDING : EGOM_ASCENDING;
                break;
            default:
                currentOrdering = EGOM_NONE;
                break;
        }
        orderRows(getActiveColumn(), currentOrdering);  // K 0xc0
    }
    if (index != previous && parent != nullptr) {
        postTableEvent(parent, this, EGET_TABLE_HEADER_CHANGED);
    }
    return true;
}

// 0x555100 _ZNK6glitch3gui9CGUITable15getActiveColumnEv
int CGUITable::getActiveColumn() const {
    return activeTab;
}

// 0x555108 _ZNK6glitch3gui9CGUITable23getActiveColumnOrderingEv
EGUI_ORDERING_MODE CGUITable::getActiveColumnOrdering() const {
    return currentOrdering;
}

// 0x555110 _ZN6glitch3gui9CGUITable19setResizableColumnsEb
void CGUITable::setResizableColumns(bool resizable) {
    resizableColumns = resizable;
}

// 0x555118 _ZNK6glitch3gui9CGUITable18hasResizableColumnsEv
bool CGUITable::hasResizableColumns() const {
    return resizableColumns;
}

// 0x555120 _ZN6glitch3gui9CGUITable12setCellColorEjjNS_5video6SColorE
void CGUITable::setCellColor(std::uint32_t rowIndex, std::uint32_t columnIndex, video::SColor color) {
    if (rowIndex < rows.size() && columnIndex < columns.size()) {
        rows[rowIndex][columnIndex].color = color;
    }
}

// 0x5551bc _ZN6glitch3gui9CGUITable11setCellDataEjjPv
void CGUITable::setCellData(std::uint32_t rowIndex, std::uint32_t columnIndex, void* data) {
    if (rowIndex < rows.size() && columnIndex < columns.size()) {
        rows[rowIndex][columnIndex].data = data;
    }
}

// 0x555230 _ZNK6glitch3gui9CGUITable11getCellTextEjj
const wchar_t* CGUITable::getCellText(std::uint32_t rowIndex, std::uint32_t columnIndex) const {
    if (rowIndex < rows.size() && columnIndex < columns.size()) {
        return rows[rowIndex][columnIndex].text.c_str();
    }
    return nullptr;
}

// 0x5552ac _ZNK6glitch3gui9CGUITable11getCellDataEjj
void* CGUITable::getCellData(std::uint32_t rowIndex, std::uint32_t columnIndex) const {
    if (rowIndex < rows.size() && columnIndex < columns.size()) {
        return rows[rowIndex][columnIndex].data;
    }
    return nullptr;
}

// 0x555328 _ZNK6glitch3gui9CGUITable11getSelectedEv
int CGUITable::getSelected() const {
    return selected;
}

// 0x555330 _ZNK6glitch3gui9CGUITable17getSelectedColumnEv
int CGUITable::getSelectedColumn() const {
    return selectedColumn;
}

// 0x555338 _ZN6glitch3gui9CGUITable19setSelectableColumnEb
void CGUITable::setSelectableColumn(bool selectable) {
    selectableColumn = selectable;
}

// 0x555340 _ZN6glitch3gui9CGUITable19getSelectableColumnEv
bool CGUITable::getSelectableColumn() {
    return selectableColumn;
}

// 0x555348 _ZN6glitch3gui9CGUITable17recalculateWidthsEv
void CGUITable::recalculateWidths() {
    totalItemWidth = 0;
    for (const Column& column : columns) {
        totalItemWidth += column.width;
    }
    checkScrollbars();  // K 0xf8
}

// 0x5553b8 _ZN6glitch3gui9CGUITable17recalculateHeightsEv
void CGUITable::recalculateHeights() {
    totalItemHeight = 0;
    IGUISkin* skin = environment->getSkin();  // K 0x38
    IGUIFont* skinFont = skin->getFont(EGDF_DEFAULT);
    if (font != skinFont) {
        if (font != nullptr) {
            font->drop();
        }
        font = skinFont;
        itemHeight = 0;
        if (font != nullptr) {
            itemHeight = font->getDimension(L"A").Height + 2 * cellHeightPadding;  // K 0x1c
            ++font->referenceCounter;
        }
    }
    totalItemHeight = font != nullptr ? itemHeight * static_cast<int>(rows.size()) : 0;
    checkScrollbars();  // K 0xf8
}

// 0x5554f0 _ZN6glitch3gui9CGUITable15checkScrollbarsEv
void CGUITable::checkScrollbars() {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (horizontalScrollBar == nullptr || verticalScrollBar == nullptr || skin == nullptr) {
        return;
    }
    const int scrollBarSize = skin->getSize(EGDS_SCROLLBAR_SIZE);  // K 0x18
    const bool wasHorizontalVisible = horizontalScrollBar->isVisible();
    const bool wasVerticalVisible = verticalScrollBar->isVisible();
    horizontalScrollBar->setVisible(false);
    verticalScrollBar->setVisible(false);

    const int right = absoluteRect.LowerRightCorner.X;
    const int left = absoluteRect.UpperLeftCorner.X + 1;
    int bottom = absoluteRect.LowerRightCorner.Y;
    if (totalItemWidth > right - left) {
        bottom -= scrollBarSize;
        horizontalScrollBar->setVisible(true);
        horizontalScrollBar->setMax(totalItemWidth - (right - left));  // K 0x80
    }
    const int visibleHeight = bottom - itemHeight - absoluteRect.UpperLeftCorner.Y - 2;
    if (totalItemHeight > visibleHeight) {
        verticalScrollBar->setVisible(true);
        verticalScrollBar->setMax(totalItemHeight - visibleHeight);
        if (!horizontalScrollBar->isVisible()) {
            const int narrowed = right - scrollBarSize - left;
            if (totalItemWidth > narrowed) {
                horizontalScrollBar->setVisible(true);
                horizontalScrollBar->setMax(totalItemWidth - narrowed);
            }
        }
    }

    const int width = relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X;
    const int height = relativeRect.LowerRightCorner.Y - relativeRect.UpperLeftCorner.Y;
    if (verticalScrollBar->isVisible()) {
        if (!wasVerticalVisible) {
            verticalScrollBar->setPos(0);  // K 0x98
        }
        const int lower = horizontalScrollBar->isVisible() ? height - scrollBarSize - 1 : height - 1;
        verticalScrollBar->setRelativePosition(detail::makeRect(width - scrollBarSize, 1, width - 1, lower));
    }
    if (horizontalScrollBar->isVisible()) {
        if (!wasHorizontalVisible) {
            horizontalScrollBar->setPos(0);
        }
        const int rightEdge = verticalScrollBar->isVisible() ? width - scrollBarSize - 1 : width - 1;
        horizontalScrollBar->setRelativePosition(detail::makeRect(1, height - scrollBarSize, rightEdge, height - 1));
    }
}

// 0x5558ac _ZN6glitch3gui9CGUITable15refreshControlsEv
void CGUITable::refreshControls() {
    updateAbsolutePosition();  // K 0x0c
    if (verticalScrollBar != nullptr) {
        verticalScrollBar->setVisible(false);
    }
    if (horizontalScrollBar != nullptr) {
        horizontalScrollBar->setVisible(false);
    }
    recalculateHeights();
    recalculateWidths();
}

// 0x555914 _ZN6glitch3gui9CGUITable17setColumnOrderingEjNS0_20EGUI_COLUMN_ORDERINGE
void CGUITable::setColumnOrdering(std::uint32_t columnIndex, EGUI_COLUMN_ORDERING mode) {
    if (columnIndex < columns.size()) {
        columns[columnIndex].orderingMode = mode;
    }
}

// 0x555944 _ZN6glitch3gui9CGUITable15dragColumnStartEii
bool CGUITable::dragColumnStart(int xpos, int ypos) {
    if (!resizableColumns || itemHeight + absoluteRect.UpperLeftCorner.Y < ypos) {
        return false;
    }
    int pos = absoluteRect.UpperLeftCorner.X + 1;
    if (horizontalScrollBar != nullptr && horizontalScrollBar->isVisible()) {
        pos -= horizontalScrollBar->getPos();  // K 0x94
    }
    int edge = pos + totalItemWidth;
    for (int index = static_cast<int>(columns.size()) - 1; index >= 0; --index) {
        if (edge - 3 <= xpos && xpos <= edge + 2) {
            currentResizedColumn = index;
            resizeStart = xpos;
            return true;
        }
        edge -= columns[static_cast<std::size_t>(index)].width;
    }
    return false;
}

// 0x555a3c _ZN6glitch3gui9CGUITable16dragColumnUpdateEi
// (Irrlicht returns true after a resize; the original returns false in every case.)
bool CGUITable::dragColumnUpdate(int xpos) {
    if (!resizableColumns || currentResizedColumn < 0 || currentResizedColumn >= static_cast<int>(columns.size())) {
        currentResizedColumn = -1;
        return false;
    }
    const int width = columns[static_cast<std::size_t>(currentResizedColumn)].width - resizeStart + xpos;
    setColumnWidth(static_cast<std::uint32_t>(currentResizedColumn), static_cast<std::uint32_t>(std::max(width, 0)));  // K 0x94
    resizeStart = xpos;
    return false;
}

// 0x555ac8 _ZN6glitch3gui9CGUITable17selectColumnHeaderEii
bool CGUITable::selectColumnHeader(int xpos, int ypos) {
    if (itemHeight + absoluteRect.UpperLeftCorner.Y < ypos) {
        return false;
    }
    int pos = absoluteRect.UpperLeftCorner.X + 1;
    if (horizontalScrollBar != nullptr && horizontalScrollBar->isVisible()) {
        pos -= horizontalScrollBar->getPos();
    }
    for (std::size_t i = 0; i < columns.size(); ++i) {
        const int width = columns[i].width;
        if (xpos >= pos && xpos < pos + width) {
            setActiveColumn(static_cast<int>(i), true);  // K 0x88
            return true;
        }
        pos += width;
    }
    return false;
}

// 0x555bb0 _ZN6glitch3gui9CGUITable9selectNewEib
void CGUITable::selectNew(int ypos, bool onlyHover) {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return;
    }
    const int top = absoluteRect.UpperLeftCorner.Y;
    if (itemHeight + top > ypos) {
        return;
    }
    const int oldSelected = selected;
    if (itemHeight != 0) {
        selected = (verticalScrollBar->getPos() + ypos - top - itemHeight - 1) / itemHeight;
    }
    const int count = static_cast<int>(rows.size());
    if (selected < count) {
        if (selected < 0) {
            selected = 0;
        }
    } else {
        selected = count - 1;
    }
    if (parent != nullptr && !onlyHover) {
        postTableEvent(parent, this, selected == oldSelected ? EGET_TABLE_SELECTED_AGAIN : EGET_TABLE_CHANGED);
    }
}

// 0x555cc4 _ZN6glitch3gui9CGUITable12selectColumnEib
void CGUITable::selectColumn(int xpos, bool onlyHover) {
    if (!selectableColumn) {
        return;
    }
    int pos = absoluteRect.UpperLeftCorner.X + 1;
    if (horizontalScrollBar != nullptr && horizontalScrollBar->isVisible()) {
        pos -= horizontalScrollBar->getPos();
    }
    for (std::size_t i = 0; i < columns.size(); ++i) {
        const int width = columns[i].width;
        if (xpos >= pos && xpos < pos + width) {
            selectedColumn = static_cast<int>(i);
            if (parent != nullptr && !onlyHover) {
                postTableEvent(parent, this, i == 1 ? EGET_TABLE_SELECTED_AGAIN : EGET_TABLE_CHANGED);
            }
            return;
        }
        pos += width;
    }
}

// 0x555dd8 _ZN6glitch3gui9CGUITable12setDrawFlagsEi
void CGUITable::setDrawFlags(int flags) {
    drawFlags = flags;
}

// 0x555de0 _ZNK6glitch3gui9CGUITable12getDrawFlagsEv
int CGUITable::getDrawFlags() const {
    return drawFlags;
}

// 0x555de8 _ZN6glitch3gui9CGUITable12getRowColumnEjjRiS2_
// The row (or -1 past the last one) and the column under the point; nothing is written for a point above the rows (row and column) or outside
// the columns (column).
void CGUITable::getRowColumn(std::uint32_t xposValue, std::uint32_t yposValue, int& row, int& column) {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return;
    }
    const int xpos = static_cast<int>(xposValue);
    const int ypos = static_cast<int>(yposValue);
    const int top = absoluteRect.UpperLeftCorner.Y;
    if (ypos < itemHeight + top) {
        return;
    }
    std::uint32_t rowIndex = static_cast<std::uint32_t>(itemHeight);
    if (itemHeight != 0) {
        rowIndex = static_cast<std::uint32_t>(verticalScrollBar->getPos() + ypos - top - itemHeight - 1) / static_cast<std::uint32_t>(itemHeight);
    }
    row = rowIndex < rows.size() ? static_cast<int>(rowIndex) : -1;

    int pos = absoluteRect.UpperLeftCorner.X + 1;
    if (horizontalScrollBar != nullptr && horizontalScrollBar->isVisible()) {
        pos -= horizontalScrollBar->getPos();
    }
    int index = static_cast<int>(columns.size()) - 1;
    if (index < 0) {
        return;
    }
    const int rightEdge = pos + totalItemWidth;
    int leftEdge = rightEdge - columns[static_cast<std::size_t>(index)].width;
    const bool outsideLast = xpos < leftEdge || rightEdge <= xpos;
    if (!outsideLast) {
        column = index;
        return;
    }
    while (index > 0) {
        --index;
        const int previousLeft = leftEdge - columns[static_cast<std::size_t>(index)].width;
        if (previousLeft <= xpos && xpos < leftEdge) {
            column = index;
            return;
        }
        leftEdge = previousLeft;
    }
}

// 0x558770 _ZN6glitch3gui9CGUITable9clearRowsEv
void CGUITable::clearRows() {
    rows.clear();
    if (verticalScrollBar != nullptr) {
        verticalScrollBar->setPos(0);
    }
    recalculateHeights();
}

// 0x5587c8 _ZN6glitch3gui9CGUITable5clearEv
void CGUITable::clear() {
    rows.clear();
    columns.clear();
    if (verticalScrollBar != nullptr) {
        verticalScrollBar->setPos(0);
    }
    if (horizontalScrollBar != nullptr) {
        horizontalScrollBar->setPos(0);
    }
    recalculateHeights();
    recalculateWidths();
}

// 0x5588d8 _ZN6glitch3gui9CGUITable9removeRowEj
// (An index equal to the row count passes the check of the original; nothing is erased then.)
void CGUITable::removeRow(std::uint32_t rowIndex) {
    if (rowIndex > rows.size()) {
        return;
    }
    if (rowIndex < rows.size()) {
        rows.erase(rows.begin() + rowIndex);
    }
    const int count = static_cast<int>(rows.size());
    if (selected >= count) {
        selected = count - 1;
    }
    recalculateHeights();
}

// 0x558968 _ZN6glitch3gui9CGUITable8swapRowsEjj
void CGUITable::swapRows(std::uint32_t rowIndexA, std::uint32_t rowIndexB) {
    if (rowIndexA >= rows.size() || rowIndexB >= rows.size()) {
        return;
    }
    Row swap = rows[rowIndexA];
    rows[rowIndexA] = rows[rowIndexB];
    rows[rowIndexB] = swap;
    if (selected == static_cast<int>(rowIndexA)) {
        selected = static_cast<int>(rowIndexB);
    } else if (selected == static_cast<int>(rowIndexB)) {
        selected = static_cast<int>(rowIndexA);
    }
}

// 0x558a18 _ZN6glitch3gui9CGUITable9orderRowsEiNS0_17EGUI_ORDERING_MODEE
// A bubble sort of the rows by the text of one column (the active column for -1).
void CGUITable::orderRows(int columnIndex, EGUI_ORDERING_MODE mode) {
    if (columnIndex == -1) {
        columnIndex = getActiveColumn();  // K 0x8c
    }
    if (columnIndex < 0) {
        return;
    }
    const std::size_t column = static_cast<std::size_t>(columnIndex);
    if (mode != EGOM_ASCENDING && mode != EGOM_DESCENDING) {
        return;
    }
    if (rows.size() < 2) {
        return;
    }
    const int last = static_cast<int>(rows.size()) - 1;
    for (int outer = 0; outer < last; ++outer) {
        for (int inner = 0; inner < last - outer; ++inner) {
            const core::stringw& current = rows[static_cast<std::size_t>(inner)][column].text;
            const core::stringw& next = rows[static_cast<std::size_t>(inner) + 1][column].text;
            const bool swapNeeded = mode == EGOM_ASCENDING ? next < current : current < next;
            if (swapNeeded) {
                Row swap = rows[static_cast<std::size_t>(inner)];
                rows[static_cast<std::size_t>(inner)] = rows[static_cast<std::size_t>(inner) + 1];
                rows[static_cast<std::size_t>(inner) + 1] = swap;
                if (selected == inner) {
                    selected = inner + 1;
                } else if (selected == inner + 1) {
                    selected = inner;
                }
            }
        }
    }
}

// 0x558e28 _ZN6glitch3gui9CGUITable9breakTextERKNSt...basic_stringIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEEEERS8_j
// The text is taken char by char while it fits; the first line break or a char that no longer fits ends it. The result is the whole text when
// it fits, else the text up to the last char that left room for the three dots, followed by the dots.
void CGUITable::breakText(const core::stringw& text, core::stringw& brokenText, std::uint32_t cellWidth) {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr || font == nullptr) {
        return;
    }
    IGUIFont* skinFont = skin->getFont(EGDF_DEFAULT);
    if (skinFont == nullptr) {
        return;
    }
    std::wstring line;
    std::wstring lastLine;
    const int maxLength = static_cast<int>(cellWidth) - 2 * cellWidthPadding;
    const int limit = maxLength - skinFont->getDimension(L"...").Width;
    const int size = static_cast<int>(text.size());
    int pos = 0;
    int consumed = 0;
    bool cut = false;
    if (size != 0) {
        wchar_t current = text[0];
        if (current == L'\n') {
            cut = true;
        } else {
            while (true) {
                const wchar_t single[2] = {current, 0};
                pos += skinFont->getDimension(single).Width;
                if (maxLength < pos) {
                    cut = size > consumed;
                    break;
                }
                ++consumed;
                const std::wstring extended = line + single;
                if (limit >= skinFont->getDimension(extended.c_str()).Width) {
                    line.push_back(current);
                } else {
                    lastLine = line;
                    line.push_back(current);
                }
                if (consumed == size) {
                    break;
                }
                current = text[static_cast<std::size_t>(consumed)];
                if (current == L'\n') {
                    cut = true;
                    break;
                }
            }
        }
    }
    brokenText = cut ? lastLine + L"..." : line;
}

// 0x5590d4 _ZN6glitch3gui9CGUITable11setCellTextEjjPKwNS_5video6SColorE
void CGUITable::setCellText(std::uint32_t rowIndex, std::uint32_t columnIndex, const wchar_t* text, video::SColor color) {
    if (rowIndex < rows.size() && columnIndex < columns.size()) {
        Cell& cell = rows[rowIndex][columnIndex];
        cell.text = text;
        breakText(cell.text, cell.brokenText, static_cast<std::uint32_t>(columns[columnIndex].width));
        cell.color = color;
    }
}

// 0x5591dc _ZN6glitch3gui9CGUITable11setCellTextEjjPKw
void CGUITable::setCellText(std::uint32_t rowIndex, std::uint32_t columnIndex, const wchar_t* text) {
    if (rowIndex < rows.size() && columnIndex < columns.size()) {
        Cell& cell = rows[rowIndex][columnIndex];
        cell.text = text;
        breakText(cell.text, cell.brokenText, static_cast<std::uint32_t>(columns[columnIndex].width));
        IGUISkin* skin = environment->getSkin();  // K 0x38
        if (skin != nullptr) {
            cell.color = skin->getColor(EGDC_BUTTON_TEXT);
        }
    }
}

// 0x5592f0 _ZN6glitch3gui9CGUITable14setColumnWidthEjj
// The width is at least the width of the column title plus the cell padding.
void CGUITable::setColumnWidth(std::uint32_t columnIndex, std::uint32_t width) {
    if (columnIndex < columns.size()) {
        const std::uint32_t minWidth = static_cast<std::uint32_t>(font->getDimension(columns[columnIndex].name.c_str()).Width + 2 * cellWidthPadding);
        columns[columnIndex].width = static_cast<int>(width < minWidth ? minWidth : width);
        for (Row& row : rows) {
            Cell& cell = row[columnIndex];
            breakText(cell.text, cell.brokenText, static_cast<std::uint32_t>(columns[columnIndex].width));
        }
    }
    recalculateWidths();
}

// 0x5596c0 _ZN6glitch3gui9CGUITable12removeColumnEj
void CGUITable::removeColumn(std::uint32_t columnIndex) {
    if (columnIndex < columns.size()) {
        columns.erase(columns.begin() + columnIndex);
        for (Row& row : rows) {
            row.erase(row.begin() + columnIndex);
        }
    }
    if (static_cast<int>(columnIndex) <= activeTab) {
        activeTab = columns.empty() ? -1 : 0;
    }
    recalculateWidths();
}

// 0x55a914 _ZN6glitch3gui9CGUITable9addColumnEPKwi
// The width is the width of the caption + the cell padding on both sides + 15 (room for the ordering arrow); the text colour is the button
// text colour of the skin. A negative or out-of-range index appends. (The original dereferences the font unchecked.)
void CGUITable::addColumn(const wchar_t* caption, int columnIndex) {
    Column header;
    header.name = caption;
    const int captionWidth = font != nullptr ? font->getDimension(caption).Width : 0;
    header.width = captionWidth + 15 + 2 * cellWidthPadding;
    header.orderingMode = EGCO_NONE;
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin != nullptr) {
        header.textColor = skin->getColor(EGDC_BUTTON_TEXT);
    }
    if (columnIndex < 0 || columnIndex >= static_cast<int>(columns.size())) {
        columns.push_back(header);
        for (Row& row : rows) {
            row.push_back(Cell());
        }
    } else {
        columns.insert(columns.begin() + columnIndex, header);
        for (Row& row : rows) {
            row.insert(row.begin() + columnIndex, Cell());
        }
    }
    if (activeTab == -1) {
        activeTab = 0;
    }
    recalculateWidths();
}

// 0x55adfc _ZN6glitch3gui9CGUITable6addRowEj
std::uint32_t CGUITable::addRow(std::uint32_t rowIndex) {
    if (rowIndex > rows.size()) {
        return static_cast<std::uint32_t>(rows.size());
    }
    if (rowIndex == rows.size()) {
        rows.push_back(Row());
    } else {
        rows.insert(rows.begin() + rowIndex, Row());
    }
    for (std::size_t i = 0; i < columns.size(); ++i) {
        rows[rowIndex].push_back(Cell());
    }
    recalculateHeights();
    return rowIndex;
}

// 0x5568a0 _ZN6glitch3gui9CGUITable7onEventERKNS_6SEventE
bool CGUITable::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    if (!enabled) {
        return forward();
    }
    if (event.EventType == EET_GUI_EVENT) {
        if (event.GUIEvent.EventType == EGET_ELEMENT_FOCUS_LOST) {
            currentResizedColumn = -1;
            selecting = false;
        } else if (event.GUIEvent.EventType == EGET_SCROLL_BAR_CHANGED) {
            if (event.GUIEvent.Caller == verticalScrollBar || event.GUIEvent.Caller == horizontalScrollBar) {
                return true;
            }
        }
        return forward();
    }
    if (event.EventType != EET_MOUSE_INPUT_EVENT) {
        return forward();
    }
    const int x = event.MouseInput.X;
    const int y = event.MouseInput.Y;
    // A visible scroll bar under the point gets the event first (only while the table has the focus).
    auto scrollBarTakes = [&](IGUIScrollBar* scrollBar) {
        return environment->hasFocus(this) && scrollBar->isVisible() && detail::rectContains(scrollBar->absoluteRect, x, y) &&
               scrollBar->onEvent(event);
    };
    switch (event.MouseInput.Event) {
        case EMIE_LMOUSE_PRESSED_DOWN:
            if (scrollBarTakes(verticalScrollBar) || scrollBarTakes(horizontalScrollBar)) {
                return true;
            }
            if (dragColumnStart(x, y)) {
                environment->setFocus(this);  // K 0x10
                return true;
            }
            if (selectColumnHeader(x, y)) {
                return true;
            }
            selecting = true;
            environment->setFocus(this);
            return true;
        case EMIE_LMOUSE_LEFT_UP:
            currentResizedColumn = -1;
            selecting = false;
            if (!detail::rectContains(absoluteRect, x, y)) {
                environment->removeFocus(this);  // K 0x18
            }
            if (scrollBarTakes(verticalScrollBar) || scrollBarTakes(horizontalScrollBar)) {
                return true;
            }
            selectNew(y, false);
            selectColumn(x, false);
            return true;
        case EMIE_MOUSE_MOVED:
            if (currentResizedColumn >= 0 && dragColumnUpdate(x)) {
                return true;
            }
            if ((!selecting && !moveOverSelect) || !detail::rectContains(absoluteRect, x, y)) {
                return forward();
            }
            selectNew(y, true);
            return true;
        case EMIE_MOUSE_WHEEL:
            verticalScrollBar->setPos(verticalScrollBar->getPos() - 10 * static_cast<int>(event.MouseInput.Wheel));
            return true;
        default:
            return forward();
    }
}

// 0x556ea0 _ZN6glitch3gui9CGUITable4drawEv
void CGUITable::draw() {
    if (!visible) {
        return;
    }
    video::IVideoDriver* driver = environment->getVideoDriver();  // K 0x20
    IGUISkin* skin = environment->getSkin();                      // K 0x38
    if (skin == nullptr) {
        return;
    }
    IGUIFont* skinFont = skin->getFont(EGDF_DEFAULT);
    if (skinFont == nullptr) {
        return;
    }
    const core::rect<int>* clipRect = clip ? &absoluteClippingRect : nullptr;

    // The inner area (inside the border, without the scroll bars).
    core::rect<int> tableRect = detail::makeRect(absoluteRect.UpperLeftCorner.X + 1, absoluteRect.UpperLeftCorner.Y + 1,
                                                 absoluteRect.LowerRightCorner.X, absoluteRect.LowerRightCorner.Y);
    if (verticalScrollBar != nullptr && verticalScrollBar->isVisible()) {
        tableRect.LowerRightCorner.X -= skin->getSize(EGDS_SCROLLBAR_SIZE);
    }
    if (horizontalScrollBar != nullptr && horizontalScrollBar->isVisible()) {
        tableRect.LowerRightCorner.Y -= skin->getSize(EGDS_SCROLLBAR_SIZE);
    }
    const int headerBottom = itemHeight + tableRect.UpperLeftCorner.Y;
    const core::rect<int> clientClip =
        detail::makeRect(tableRect.UpperLeftCorner.X, headerBottom + 1, tableRect.LowerRightCorner.X, tableRect.LowerRightCorner.Y);

    skin->draw3DSunkenPane(this, skin->getColor(EGDC_3D_HIGH_LIGHT), true, drawBack, absoluteRect, clipRect);  // K 0x48

    int rowTop = headerBottom + 1;
    int posX = tableRect.UpperLeftCorner.X;
    int rightEdge = tableRect.UpperLeftCorner.X + totalItemWidth;
    if (verticalScrollBar != nullptr && verticalScrollBar->isVisible()) {
        rowTop -= verticalScrollBar->getPos();
    }
    if (horizontalScrollBar != nullptr && horizontalScrollBar->isVisible()) {
        posX = tableRect.UpperLeftCorner.X - horizontalScrollBar->getPos();
        rightEdge -= horizontalScrollBar->getPos();
    }
    core::rect<int> rowRect = detail::makeRect(posX, rowTop, rightEdge, rowTop + itemHeight);
    for (std::size_t row = 0; row < rows.size(); ++row) {
        if (absoluteRect.UpperLeftCorner.Y <= rowRect.LowerRightCorner.Y && absoluteRect.LowerRightCorner.Y >= rowRect.UpperLeftCorner.Y) {
            if ((drawFlags & EGTDF_ROWS) != 0) {
                const core::rect<int> line = detail::makeRect(rowRect.UpperLeftCorner.X, rowRect.LowerRightCorner.Y - 1,
                                                              rowRect.LowerRightCorner.X, rowRect.LowerRightCorner.Y);
                video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_3D_SHADOW), line, &clientClip);
            }
            const bool isSelected = selected == static_cast<int>(row);
            if (isSelected && (drawFlags & EGTDF_ACTIVE_ROW) != 0) {
                video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_HIGH_LIGHT), rowRect, &clientClip);
            }
            int x = rowRect.UpperLeftCorner.X;
            for (std::size_t column = 0; column < columns.size() && column < rows[row].size(); ++column) {
                const int width = columns[column].width;
                const core::rect<int> cellRect =
                    detail::makeRect(x + cellWidthPadding, rowRect.UpperLeftCorner.Y, x + width - cellWidthPadding, rowRect.LowerRightCorner.Y);
                const Cell& cell = rows[row][column];
                video::SColor color;
                if (isSelected) {
                    color = skin->getColor(enabled ? EGDC_HIGH_LIGHT_TEXT : EGDC_GRAY_TEXT);
                } else {
                    color = enabled ? cell.color : skin->getColor(EGDC_GRAY_TEXT);
                }
                skinFont->draw(cell.brokenText.c_str(), cellRect, color, false, true, &clientClip);  // K 0x0c
                x += width;
            }
        }
        rowRect.UpperLeftCorner.Y += itemHeight;
        rowRect.LowerRightCorner.Y += itemHeight;
    }

    // The header.
    core::rect<int> separator = clientClip;
    int columnLeft = posX;
    for (std::size_t i = 0; i < columns.size(); ++i) {
        const Column& column = columns[i];
        const int columnRight = columnLeft + column.width;
        core::rect<int> columnRect = detail::makeRect(columnLeft, tableRect.UpperLeftCorner.Y, columnRight, headerBottom);
        skin->draw3DButtonPaneStandard(this, columnRect, &tableRect);  // K 0x40
        posX = columnRight;
        if ((drawFlags & EGTDF_COLUMNS) != 0) {
            separator.UpperLeftCorner.X = columnLeft;
            separator.LowerRightCorner.X = columnLeft + 1;
            video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_3D_SHADOW), separator, &tableRect);
        }
        if (selectableColumn && selectedColumn == static_cast<int>(i)) {
            const core::rect<int> highlight = detail::makeRect(columnLeft, tableRect.UpperLeftCorner.Y, columnRight, tableRect.LowerRightCorner.Y);
            video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_HIGH_LIGHT), highlight, &tableRect);
        }
        columnRect.UpperLeftCorner.X += cellWidthPadding;
        skinFont->draw(column.name.c_str(), columnRect, skin->getColor(enabled ? EGDC_BUTTON_TEXT : EGDC_GRAY_TEXT), false, true, &tableRect);
        if (activeTab == static_cast<int>(i)) {
            core::position2d<int> arrow;
            arrow.X = columnRight - 5 - cellWidthPadding;
            arrow.Y = tableRect.UpperLeftCorner.Y + 7;
            skin->drawIcon(this, currentOrdering == EGOM_ASCENDING ? EGDI_CURSOR_UP : EGDI_CURSOR_DOWN, arrow, 0, 0, false, &tableRect);  // K 0x60
        }
        columnLeft = columnRight;
    }
    const core::rect<int> rest = detail::makeRect(posX, tableRect.UpperLeftCorner.Y, tableRect.LowerRightCorner.X, headerBottom);
    skin->draw3DButtonPaneStandard(this, rest, &tableRect);
    IGUIElement::draw();
}

// 0x5597dc _ZNK6glitch3gui9CGUITable19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUITable::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addInt("ColumnCount", static_cast<int>(columns.size()), false);  // K 0x4c
    for (std::uint32_t i = 0; i < columns.size(); ++i) {
        const Column& column = columns[i];
        attributes->addString(columnKey(i, "name").c_str(), column.name.c_str(), false);                                    // K 0x94
        attributes->addColor(columnKey(i, "color").c_str(), column.textColor, false);                                       // K 0x118
        attributes->addInt(columnKey(i, "width").c_str(), column.width, false);
        attributes->addEnum(columnKey(i, "OrderingMode").c_str(), static_cast<int>(column.orderingMode), GUIColumnOrderingNames, false);  // K 0xf4
    }
    attributes->addInt("RowCount", static_cast<int>(rows.size()), false);
    for (std::uint32_t r = 0; r < rows.size(); ++r) {
        for (std::uint32_t c = 0; c < rows[r].size(); ++c) {
            attributes->addString(cellKey(r, c, "text").c_str(), rows[r][c].text.c_str(), false);
            attributes->addColor(cellKey(r, c, "color").c_str(), rows[r][c].color, false);
        }
    }
    attributes->addBool("Clip", clip, false);  // K 0xd8
    attributes->addBool("DrawBack", drawBack, false);
    attributes->addBool("MoveOverSelect", moveOverSelect, false);
    attributes->addBool("ResizableColumns", resizableColumns, false);
    attributes->addInt("CellWidthPadding", cellWidthPadding, false);
    attributes->addInt("CellHeightPadding", cellHeightPadding, false);
    attributes->addEnum("CurrentOrdering", static_cast<int>(currentOrdering), GUIOrderingModeNames, false);
    attributes->addInt("DrawFlags", drawFlags, false);
}

// 0x559ecc _ZN6glitch3gui9CGUITable21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUITable::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    columns.clear();
    const int columnCount = attributes->getInt("ColumnCount");  // K 0x58
    for (int i = 0; i < columnCount; ++i) {
        const std::uint32_t index = static_cast<std::uint32_t>(i);
        Column column;
        column.name = core::stringc2stringw(attributes->getString(columnKey(index, "name").c_str()).c_str());  // K 0x84
        column.textColor = attributes->getColor(columnKey(index, "color").c_str());                          // K 0x124
        column.width = attributes->getInt(columnKey(index, "width").c_str());
        const int ordering = attributes->getEnum(columnKey(index, "OrderingMode").c_str(), GUIColumnOrderingNames);  // K 0x100
        if (ordering > 0) {
            column.orderingMode = static_cast<EGUI_COLUMN_ORDERING>(ordering);
        }
        columns.push_back(column);
    }
    rows.clear();
    const int rowCount = attributes->getInt("RowCount");
    for (int r = 0; r < rowCount; ++r) {
        rows.push_back(Row());
        for (int c = 0; c < columnCount; ++c) {
            Cell cell;
            cell.text = core::stringc2stringw(attributes->getString(cellKey(static_cast<std::uint32_t>(r), static_cast<std::uint32_t>(c), "text").c_str()).c_str());
            breakText(cell.text, cell.brokenText, static_cast<std::uint32_t>(columns[static_cast<std::size_t>(c)].width));
            cell.color = attributes->getColor(cellKey(static_cast<std::uint32_t>(r), static_cast<std::uint32_t>(c), "color").c_str());
            cell.data = nullptr;
            rows.back().push_back(cell);
        }
    }
    itemHeight = 0;
    totalItemHeight = 0;
    totalItemWidth = 0;
    if (font != nullptr) {
        font->drop();
        font = nullptr;
    }
    clip = attributes->getBool("Clip");  // K 0xe4
    drawBack = attributes->getBool("DrawBack");
    moveOverSelect = attributes->getBool("MoveOverSelect");
    currentResizedColumn = -1;
    resizeStart = 0;
    resizableColumns = attributes->getBool("ResizableColumns");
    selected = -1;
    cellWidthPadding = attributes->getInt("CellWidthPadding");
    cellHeightPadding = attributes->getInt("CellHeightPadding");
    activeTab = -1;
    selecting = false;
    currentOrdering = static_cast<EGUI_ORDERING_MODE>(attributes->getEnum("CurrentOrdering", GUIOrderingModeNames));
    drawFlags = attributes->getInt("DrawFlags");
    refreshControls();  // K 0xf4
}

}  // namespace glitch::gui
