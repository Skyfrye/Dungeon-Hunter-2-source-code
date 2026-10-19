// glitch::gui::IGUITable and CGUITable: the table with a column header, rows of text cells and the two scroll bars. Canonical header of the
// scene-owner wave (gui family). It replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp, recon/slice_04.hpp and
// the table parts of the recon slices.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUITable constructor 0x556134 (element type 19), destructors 0x557aa0 / 0x557b14;
// CGUITable constructors 0x5563fc / 0x55664c, destructors 0x557c90 / 0x557d64 / 0x557d80; tools/decomp_vtable.py glitch::gui::CGUITable):
// Irrlicht 1.7.x's CGUITable with the additions getSelectedColumn / setSelectableColumn / getSelectableColumn / getRowColumn / selectColumn and
// the text colour in the column. The object continues IGUIElement at +0x158; the virtual bases follow at +0x1b4 / +0x1b8, count at +0x1bc.
//   +0x158 Columns (vector of Column, 84 bytes each)   +0x164 Rows (vector of Row = vector of Cell, 12 bytes each)   +0x170 Font (reference held)
//   +0x174 VerticalScrollBar   +0x178 HorizontalScrollBar (references held)   +0x17c Clip   +0x17d DrawBack   +0x17e MoveOverSelect
//   +0x17f Selecting   +0x180 CurrentResizedColumn (-1)   +0x184 ResizeStart   +0x188 ResizableColumns (true)   +0x189 SelectableColumn (false)
//   +0x18c ItemHeight   +0x190 TotalItemHeight   +0x194 TotalItemWidth   +0x198 Selected (-1)   +0x19c SelectedColumn (not set by the
//   constructor)   +0x1a0 CellHeightPadding (2)   +0x1a4 CellWidthPadding (5)   +0x1a8 ActiveTab (-1)   +0x1ac CurrentOrdering   +0x1b0 DrawFlags (7)
//   Column: +0x00 Name (STLport wide string, 72 bytes)   +0x48 TextColor   +0x4c Width   +0x50 OrderingMode
//   Cell (152 bytes): +0x00 Text   +0x48 BrokenText   +0x90 Color   +0x94 Data
#pragma once

#include <cstdint>
#include <string>

#include "glitch-core-io/core/allocator.hpp"  // core::stringc / stringw / svector (STLPORT-DECISION.md section 6)
#include <vector>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class IGUIFont;
class IGUIScrollBar;

enum EGUI_COLUMN_ORDERING : std::int32_t {
    EGCO_NONE = 0,
    EGCO_CUSTOM,
    EGCO_ASCENDING,
    EGCO_DESCENDING,
    EGCO_FLIP_ASCENDING_DESCENDING,
    EGCO_COUNT,
};

enum EGUI_ORDERING_MODE : std::int32_t {
    EGOM_NONE = 0,
    EGOM_ASCENDING,
    EGOM_DESCENDING,
    EGOM_COUNT,
};

enum EGUI_TABLE_DRAW_FLAGS : std::int32_t {
    EGTDF_ROWS = 1,
    EGTDF_COLUMNS = 2,
    EGTDF_ACTIVE_ROW = 4,
    EGTDF_COUNT = 8,
};

class IGUITable : public IGUIElement {
public:
    // 0x556134: the IGUIElement base with the type EGUIET_TABLE.
    IGUITable(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x557aa0 (D1), 0x557b14 (D0 copy): empty.
    ~IGUITable() override;

    virtual void addColumn(const wchar_t* caption, int columnIndex = -1) = 0;                                         // K 0x7c
    virtual void removeColumn(std::uint32_t columnIndex) = 0;                                                         // K 0x80
    virtual int getColumnCount() const = 0;                                                                           // K 0x84
    virtual bool setActiveColumn(int index, bool doOrder = false) = 0;                                                // K 0x88
    virtual int getActiveColumn() const = 0;                                                                          // K 0x8c
    virtual EGUI_ORDERING_MODE getActiveColumnOrdering() const = 0;                                                   // K 0x90
    virtual void setColumnWidth(std::uint32_t columnIndex, std::uint32_t width) = 0;                                  // K 0x94
    virtual void setResizableColumns(bool resizable) = 0;                                                             // K 0x98
    virtual bool hasResizableColumns() const = 0;                                                                     // K 0x9c
    virtual void setColumnOrdering(std::uint32_t columnIndex, EGUI_COLUMN_ORDERING mode) = 0;                        // K 0xa0
    virtual int getSelected() const = 0;                                                                              // K 0xa4
    virtual int getSelectedColumn() const = 0;                                                                        // K 0xa8
    virtual int getRowCount() const = 0;                                                                              // K 0xac
    virtual std::uint32_t addRow(std::uint32_t rowIndex) = 0;                                                         // K 0xb0
    virtual void removeRow(std::uint32_t rowIndex) = 0;                                                               // K 0xb4
    virtual void clearRows() = 0;                                                                                     // K 0xb8
    virtual void swapRows(std::uint32_t rowIndexA, std::uint32_t rowIndexB) = 0;                                      // K 0xbc
    virtual void orderRows(int columnIndex = -1, EGUI_ORDERING_MODE mode = EGOM_NONE) = 0;                            // K 0xc0
    virtual void getRowColumn(std::uint32_t xpos, std::uint32_t ypos, int& row, int& column) = 0;                    // K 0xc4
    virtual void setCellText(std::uint32_t rowIndex, std::uint32_t columnIndex, const wchar_t* text) = 0;           // K 0xc8
    virtual void setCellText(std::uint32_t rowIndex, std::uint32_t columnIndex, const wchar_t* text, video::SColor color) = 0;  // K 0xcc
    virtual void setCellData(std::uint32_t rowIndex, std::uint32_t columnIndex, void* data) = 0;                      // K 0xd0
    virtual void setCellColor(std::uint32_t rowIndex, std::uint32_t columnIndex, video::SColor color) = 0;            // K 0xd4
    virtual const wchar_t* getCellText(std::uint32_t rowIndex, std::uint32_t columnIndex) const = 0;                 // K 0xd8
    virtual void* getCellData(std::uint32_t rowIndex, std::uint32_t columnIndex) const = 0;                          // K 0xdc
    virtual void clear() = 0;                                                                                         // K 0xe0
    virtual void setDrawFlags(int flags) = 0;                                                                         // K 0xe4
    virtual int getDrawFlags() const = 0;                                                                             // K 0xe8
    virtual void setSelectableColumn(bool selectable) = 0;                                                            // K 0xec
    virtual bool getSelectableColumn() = 0;                                                                           // K 0xf0
};

class CGUITable : public IGUITable {
public:
    struct Cell {
        // 0x556850: both strings empty, Data null (the colour is left unset by the original, 0 here).
        Cell();
        // 0x556090: a member-wise copy.
        Cell(const Cell& other);
        // 0x5583e0.
        Cell& operator=(const Cell& other);
        // 0x557b90.
        ~Cell();

        core::stringw text;               // +0x00
        core::stringw brokenText;         // +0x48
        video::SColor color{};           // +0x90
        void* data = nullptr;            // +0x94
    };
    using Row = std::vector<Cell>;
    struct Column {
        std::wstring name;                       // +0x00
        video::SColor textColor{};               // +0x48
        int width = 0;                           // +0x4c
        EGUI_COLUMN_ORDERING orderingMode = EGCO_NONE;  // +0x50
    };

    // 0x5563fc (C1) / 0x55664c (C2): the two scroll bars are created (hidden, clipped sub elements); the controls are refreshed.
    CGUITable(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle, bool clip, bool drawBack,
              bool moveOverSelect);
    // 0x557c90 (D1), 0x557d64, 0x557d80: drops the scroll bars and the font, frees the rows and columns.
    ~CGUITable() override;

    // K 0x08, 0x5568a0: the mouse presses start a column resize / header selection / row selection, the wheel scrolls; scroll bar events are
    // absorbed.
    bool onEvent(const SEvent& event) override;
    // K 0x20, 0x556ea0: the sunken pane, the rows (lines, selection, cell texts), the header and the children.
    void draw() override;
    // K 0x74 / 0x78, 0x5597dc and 0x559ecc.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    void addColumn(const wchar_t* caption, int columnIndex = -1) override;                                           // 0x55a914
    void removeColumn(std::uint32_t columnIndex) override;                                                           // 0x5596c0
    int getColumnCount() const override;                                                                             // 0x554f60
    bool setActiveColumn(int index, bool doOrder = false) override;                                                  // 0x554fa8
    int getActiveColumn() const override;                                                                            // 0x555100
    EGUI_ORDERING_MODE getActiveColumnOrdering() const override;                                                     // 0x555108
    void setColumnWidth(std::uint32_t columnIndex, std::uint32_t width) override;                                    // 0x5592f0
    void setResizableColumns(bool resizable) override;                                                               // 0x555110
    bool hasResizableColumns() const override;                                                                       // 0x555118
    void setColumnOrdering(std::uint32_t columnIndex, EGUI_COLUMN_ORDERING mode) override;                          // 0x555914
    int getSelected() const override;                                                                                // 0x555328
    int getSelectedColumn() const override;                                                                          // 0x555330
    int getRowCount() const override;                                                                                // 0x554f80
    std::uint32_t addRow(std::uint32_t rowIndex) override;                                                           // 0x55adfc
    void removeRow(std::uint32_t rowIndex) override;                                                                 // 0x5588d8
    void clearRows() override;                                                                                       // 0x558770
    void swapRows(std::uint32_t rowIndexA, std::uint32_t rowIndexB) override;                                        // 0x558968
    void orderRows(int columnIndex = -1, EGUI_ORDERING_MODE mode = EGOM_NONE) override;                              // 0x558a18
    void getRowColumn(std::uint32_t xpos, std::uint32_t ypos, int& row, int& column) override;                      // 0x555de8
    void setCellText(std::uint32_t rowIndex, std::uint32_t columnIndex, const wchar_t* text) override;              // 0x5591dc
    void setCellText(std::uint32_t rowIndex, std::uint32_t columnIndex, const wchar_t* text, video::SColor color) override;  // 0x5590d4
    void setCellData(std::uint32_t rowIndex, std::uint32_t columnIndex, void* data) override;                        // 0x5551bc
    void setCellColor(std::uint32_t rowIndex, std::uint32_t columnIndex, video::SColor color) override;              // 0x555120
    const wchar_t* getCellText(std::uint32_t rowIndex, std::uint32_t columnIndex) const override;                    // 0x555230
    void* getCellData(std::uint32_t rowIndex, std::uint32_t columnIndex) const override;                             // 0x5552ac
    void clear() override;                                                                                           // 0x5587c8
    void setDrawFlags(int flags) override;                                                                           // 0x555dd8
    int getDrawFlags() const override;                                                                               // 0x555de0
    void setSelectableColumn(bool selectable) override;                                                              // 0x555338
    bool getSelectableColumn() override;                                                                             // 0x555340
    // K 0xf4, 0x5558ac: updates the rectangles, hides the scroll bars and recomputes the heights and widths.
    virtual void refreshControls();
    // K 0xf8, 0x5554f0: shows the scroll bars the content needs (and sizes them); keeps their position when they were already shown.
    virtual void checkScrollbars();

    // 0x555348: the sum of the column widths, then checkScrollbars.
    void recalculateWidths();
    // 0x5553b8: the item height from the menu font (+ twice the cell height padding), the total height, then checkScrollbars.
    void recalculateHeights();
    // 0x555944 / 0x555a3c: the column border under the point (3 pixels to the left, 2 to the right) starts the resize; the update resizes
    // (it returns false in the original).
    bool dragColumnStart(int xpos, int ypos);
    bool dragColumnUpdate(int xpos);
    // 0x555ac8: activates the column header under the point.
    bool selectColumnHeader(int xpos, int ypos);
    // 0x555bb0: selects the row under ypos and posts TABLE_CHANGED / TABLE_SELECTED_AGAIN (not when only hovering).
    void selectNew(int ypos, bool onlyHover);
    // 0x555cc4: the selectable column under xpos (the event is SELECTED_AGAIN only for the column 1, as in the original).
    void selectColumn(int xpos, bool onlyHover);
    // 0x558e28: cuts the text to the cell width at the first line break, ending in "..." when it was cut.
    void breakText(const core::stringw& text, core::stringw& brokenText, std::uint32_t cellWidth);

    std::vector<Column> columns;               // +0x158
    std::vector<Row> rows;                     // +0x164
    IGUIFont* font = nullptr;                  // +0x170
    IGUIScrollBar* verticalScrollBar = nullptr;     // +0x174
    IGUIScrollBar* horizontalScrollBar = nullptr;   // +0x178
    bool clip = false;                         // +0x17c
    bool drawBack = false;                     // +0x17d
    bool moveOverSelect = false;               // +0x17e
    bool selecting = false;                    // +0x17f
    int currentResizedColumn = -1;             // +0x180
    int resizeStart = 0;                       // +0x184
    bool resizableColumns = true;              // +0x188
    bool selectableColumn = false;             // +0x189
    int itemHeight = 0;                        // +0x18c
    int totalItemHeight = 0;                   // +0x190
    int totalItemWidth = 0;                    // +0x194
    int selected = -1;                         // +0x198
    int selectedColumn = -1;                   // +0x19c
    int cellHeightPadding = 2;                 // +0x1a0
    int cellWidthPadding = 5;                  // +0x1a4
    int activeTab = -1;                        // +0x1a8
    EGUI_ORDERING_MODE currentOrdering = EGOM_NONE;  // +0x1ac
    int drawFlags = EGTDF_ROWS | EGTDF_COLUMNS | EGTDF_ACTIVE_ROW;  // +0x1b0
};

}  // namespace glitch::gui
