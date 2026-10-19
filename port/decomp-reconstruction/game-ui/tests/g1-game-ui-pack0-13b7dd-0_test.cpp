// Test for batch g1-game-ui-pack0-13b7dd-0: AbstractTableModel scrolling and dispatch, and AchievementMsg construction
// and copy. The engine functions the table calls (DebugCachedCharacter, RenderFX::SetEnabled and RenderFX::PlayAnim)
// are stubbed here, so the test covers the arithmetic and the call order without the engine. AnchorBase is not tested:
// its constructor and Reset need a live GameObject.
//
// Build and run: bash tools/trackb/check_tu.sh --test <this file> <batch .cpp>
// Exit status 0 means every check passed.

#include <cstdio>
#include <string>
#include <vector>

#include "dh2/AbstractTableModel.hpp"
#include "dh2/AchievementMsg.hpp"
#include "dh2/MenuFX.hpp"
#include "gameswf/gameswf_character.h"

// Global assert level. The batch source reads it; the test leaves asserts off.
int gAssertLevel = 0;

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                 \
    do {                                                                            \
        if (!(cond)) {                                                              \
            ++g_failures;                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);    \
        }                                                                           \
    } while (0)

struct UnkCall {
    int row;
    int dataIndex;
    bool enabled;
};

struct EnableCall {
    gameswf::character* character;
    bool enabled;
};

struct PlayCall {
    std::string name;
    std::string anim;
    int flag;
};

std::vector<UnkCall> g_unk;
std::vector<EnableCall> g_enable;
std::vector<PlayCall> g_play;

// Fake character pointers: they are only compared, never dereferenced.
int g_downTag = 0;
int g_upTag = 0;
int g_otherTag = 0;
gameswf::character* const g_down = reinterpret_cast<gameswf::character*>(&g_downTag);
gameswf::character* const g_up = reinterpret_cast<gameswf::character*>(&g_upTag);
gameswf::character* const g_other = reinterpret_cast<gameswf::character*>(&g_otherTag);

// The menu is never called through its own storage: the stubs ignore this.
alignas(MenuFX) unsigned char g_menuStorage[sizeof(MenuFX)];
MenuFX* const g_menu = reinterpret_cast<MenuFX*>(g_menuStorage);

class TestModel : public AbstractTableModel {
public:
    void unk_vslot00(int row, int dataIndex, bool enabled) override {
        g_unk.push_back({row, dataIndex, enabled});
    }
};

TestModel* g_table = nullptr;

void Reset() {
    g_unk.clear();
    g_enable.clear();
    g_play.clear();
}

}  // namespace

// Stubs for the engine functions the batch calls. Defined here so the test links without the engine.
DebugCachedCharacter::DebugCachedCharacter() {}
DebugCachedCharacter::~DebugCachedCharacter() {}

gameswf::character* DebugCachedCharacter::GetChar() {
    if (g_table != nullptr) {
        if (this == &g_table->m_scrollDown) {
            return g_down;
        }
        if (this == &g_table->m_scrollUp) {
            return g_up;
        }
    }
    return nullptr;
}

int RenderFX::SetEnabled(gameswf::character* character, bool enabled) {
    g_enable.push_back({character, enabled});
    return 0;  // the header returns int (link-1)
}

int RenderFX::PlayAnim(const char* name, const char* anim, int flag) {
    g_play.push_back({name, anim, flag});
    return 77;  // the movie's return value, checked by the scroll tests
}

int main() {
    // ---- InitTable, plain list, no buffer rows ----
    {
        TestModel table{};   // value-initialized: InitTable keeps the scroll offset, so it must start at 0
        g_table = &table;
        Reset();
        const bool changed = table.InitTable(g_menu, 10, 3, false, false, false);
        CHECK(!changed);               // offset stays 0
        CHECK(table.m_anchor == 0);    // +0x18
        CHECK(table.m_count == 10);
        CHECK(g_unk.size() == 3);
        if (g_unk.size() == 3) {
            CHECK(g_unk[0].row == 0 && g_unk[0].dataIndex == 0 && g_unk[0].enabled);
            CHECK(g_unk[1].row == 1 && g_unk[1].dataIndex == 1 && g_unk[1].enabled);
            CHECK(g_unk[2].row == 2 && g_unk[2].dataIndex == 2 && g_unk[2].enabled);
        }
        // Down button off at offset 0, up button on while visible rows + offset < count.
        CHECK(g_enable.size() == 2);
        if (g_enable.size() == 2) {
            CHECK(g_enable[0].character == g_down && !g_enable[0].enabled);
            CHECK(g_enable[1].character == g_up && g_enable[1].enabled);
        }
    }

    // ---- _doScrollDown and _doScrollUp: the offset moves and the movie plays ----
    {
        TestModel table{};   // value-initialized: InitTable keeps the scroll offset, so it must start at 0
        g_table = &table;
        table.InitTable(g_menu, 10, 3, false, false, false);
        Reset();
        CHECK(table.UpdateTableData(2));   // offset 2
        CHECK(table.m_scrollOffset == 2);
        Reset();

        const int downRet = table._doScrollDown();   // UpdateTableData(-1): offset 1
        CHECK(table.m_scrollOffset == 1);
        CHECK(downRet == 77);
        CHECK(g_play.size() == 1);
        if (g_play.size() == 1) {
            CHECK(g_play[0].name == "list" && g_play[0].anim == "scroll_down" && g_play[0].flag == 0);
        }
        Reset();

        const int upRet = table._doScrollUp();       // UpdateTableData(1): offset 2
        CHECK(table.m_scrollOffset == 2);
        CHECK(upRet == 77);
        CHECK(g_play.size() == 1);
        if (g_play.size() == 1) {
            CHECK(g_play[0].name == "list" && g_play[0].anim == "scroll_up" && g_play[0].flag == 0);
        }
    }

    // ---- UpdateTableData clamps a plain list to [0, count - visible] ----
    {
        TestModel table{};   // value-initialized: InitTable keeps the scroll offset, so it must start at 0
        g_table = &table;
        table.InitTable(g_menu, 10, 3, false, false, false);
        Reset();
        CHECK(table.UpdateTableData(100));
        CHECK(table.m_scrollOffset == 7);   // count - visible
        CHECK(table.UpdateTableData(-100));
        CHECK(table.m_scrollOffset == 0);
        CHECK(!table.UpdateTableData(-5));  // already at 0: no change
        CHECK(table.m_scrollOffset == 0);
    }

    // ---- Single list: the up button is on while visible rows + offset < count (the anchor is 0 here) ----
    {
        TestModel table{};   // value-initialized: InitTable keeps the scroll offset, so it must start at 0
        g_table = &table;
        table.InitTable(g_menu, 10, 3, false, false, false);
        CHECK(table.m_anchor == 0);
        Reset();
        CHECK(table.UpdateTableData(6));    // offset 6: 3 + 6 < 10 is true
        CHECK(g_enable.size() == 2);
        if (g_enable.size() == 2) {
            CHECK(g_enable[0].character == g_down && g_enable[0].enabled);
            CHECK(g_enable[1].character == g_up && g_enable[1].enabled);
        }
        Reset();
        CHECK(table.UpdateTableData(1));    // offset 7 = count - visible: 3 + 7 < 10 is false, so up is off
        CHECK(table.m_scrollOffset == 7);
        CHECK(g_enable.size() == 2);
        if (g_enable.size() == 2) {
            CHECK(g_enable[0].character == g_down && g_enable[0].enabled);
            CHECK(g_enable[1].character == g_up && !g_enable[1].enabled);
        }
    }

    // ---- Buffered single list (anchor 2): the up button still uses visible rows, so it is off at offset 7 ----
    {
        TestModel table{};   // value-initialized: InitTable keeps the scroll offset, so it must start at 0
        g_table = &table;
        table.InitTable(g_menu, 10, 3, true, false, false);
        CHECK(table.m_anchor == 2);
        Reset();
        CHECK(table.UpdateTableData(7));    // offset 7: 3 + 7 < 10 is false (anchor 2 + 7 < 10 would wrongly be true)
        CHECK(table.m_scrollOffset == 7);
        CHECK(g_enable.size() == 2);
        if (g_enable.size() == 2) {
            CHECK(g_enable[0].character == g_down && g_enable[0].enabled);
            CHECK(g_enable[1].character == g_up && !g_enable[1].enabled);
        }
    }

    // ---- Split list with buffer rows: anchor = visible / 2, offset clamps to count - 1 ----
    {
        TestModel table{};   // value-initialized: InitTable keeps the scroll offset, so it must start at 0
        g_table = &table;
        table.InitTable(g_menu, 10, 4, true, true, false);
        CHECK(table.m_anchor == 2);   // 4 / 2
        Reset();
        CHECK(table.UpdateTableData(20));
        CHECK(table.m_scrollOffset == 9);   // count - 1
        // Rows: visible + 2 = 6, data indices from the split adjustment in the pseudocode.
        const int expectIndex[6] = {8, 9, 9, 9, 10, 11};
        const bool expectEnabled[6] = {true, true, true, true, false, false};
        CHECK(g_unk.size() == 6);
        if (g_unk.size() == 6) {
            for (int row = 0; row < 6; ++row) {
                CHECK(g_unk[row].row == row);
                CHECK(g_unk[row].dataIndex == expectIndex[row]);
                CHECK(g_unk[row].enabled == expectEnabled[row]);
            }
        }
        // Down on when offset > 0; up on when offset < count - 1 (9 < 9 is false).
        CHECK(g_enable.size() == 2);
        if (g_enable.size() == 2) {
            CHECK(g_enable[0].character == g_down && g_enable[0].enabled);
            CHECK(g_enable[1].character == g_up && !g_enable[1].enabled);
        }
    }

    // ---- Wrapping list with count >= visible: one wrap in either direction ----
    {
        TestModel table{};   // value-initialized: InitTable keeps the scroll offset, so it must start at 0
        g_table = &table;
        table.InitTable(g_menu, 5, 3, false, false, true);
        CHECK(table.m_scrollOffset == 0);
        Reset();
        CHECK(table.UpdateTableData(-1));
        CHECK(table.m_scrollOffset == 4);   // -1 + count
        // Rows show data 4, 5, 6; every row is enabled because the list wraps, even past count.
        CHECK(g_unk.size() == 3);
        if (g_unk.size() == 3) {
            CHECK(g_unk[0].dataIndex == 4 && g_unk[0].enabled);
            CHECK(g_unk[1].dataIndex == 5 && g_unk[1].enabled);
            CHECK(g_unk[2].dataIndex == 6 && g_unk[2].enabled);
        }
        // Both buttons on while the list wraps.
        CHECK(g_enable.size() == 2);
        if (g_enable.size() == 2) {
            CHECK(g_enable[0].character == g_down && g_enable[0].enabled);
            CHECK(g_enable[1].character == g_up && g_enable[1].enabled);
        }
        Reset();
        CHECK(table.UpdateTableData(7));    // 4 + 7 = 11, one wrap: 11 - 5 = 6
        CHECK(table.m_scrollOffset == 6);
    }

    // ---- Wrapping list with fewer entries than rows: falls back to the plain clamp ----
    {
        TestModel table{};   // value-initialized: InitTable keeps the scroll offset, so it must start at 0
        g_table = &table;
        table.InitTable(g_menu, 2, 3, false, false, true);
        CHECK(table.m_scrollOffset == 0);
        Reset();
        CHECK(!table.UpdateTableData(5));   // span is 2 - 3 < 0, clamped to 0
        CHECK(table.m_scrollOffset == 0);
    }

    // ---- ProcessTableEvent: click (type 2) on the down or up button scrolls; anything else does not ----
    {
        TestModel table{};   // value-initialized: InitTable keeps the scroll offset, so it must start at 0
        g_table = &table;
        table.InitTable(g_menu, 10, 3, false, false, false);
        table.UpdateTableData(2);   // offset 2
        Reset();

        RenderFX::Event click{};
        click.type = static_cast<RenderFX::EventType>(2);
        click.target = g_down;   // Event::target is gameswf::character*, the type of the fake buttons
        CHECK(table.ProcessTableEvent(click) == 77);   // _doScrollDown
        CHECK(table.m_scrollOffset == 1);
        CHECK(g_play.size() == 1 && g_play[0].anim == "scroll_down");
        Reset();

        click.target = g_up;
        CHECK(table.ProcessTableEvent(click) == 77);   // _doScrollUp
        CHECK(table.m_scrollOffset == 2);
        CHECK(g_play.size() == 1 && g_play[0].anim == "scroll_up");
        Reset();

        RenderFX::Event notClick{};
        notClick.type = static_cast<RenderFX::EventType>(1);
        notClick.target = g_down;
        CHECK(table.ProcessTableEvent(notClick) == 0);
        CHECK(table.m_scrollOffset == 2);

        RenderFX::Event otherTarget{};
        otherTarget.type = static_cast<RenderFX::EventType>(2);
        otherTarget.target = g_other;
        CHECK(table.ProcessTableEvent(otherTarget) == 0);
        CHECK(table.m_scrollOffset == 2);
        CHECK(g_play.empty());
    }

    // ---- AchievementMsg: the (name, desc, type, grade, label) constructor ----
    {
        AchievementMsg msg("Name", "Desc", 3, 2, 1);
        CHECK(static_cast<const std::string&>(msg) == "Name");
        CHECK(msg.m_desc == "Desc");
        CHECK(msg.m_trophyType == 3);
        CHECK(msg.m_grade == 2);
        CHECK(msg.m_label == 1);
    }

    // ---- AchievementMsg: copy constructor copies the base string, m_desc and the three ints ----
    {
        AchievementMsg source("A", "B", 4, 5, 6);
        AchievementMsg copy(source);
        CHECK(static_cast<const std::string&>(copy) == "A");
        CHECK(copy.m_desc == "B");
        CHECK(copy.m_trophyType == 4);
        CHECK(copy.m_grade == 5);
        CHECK(copy.m_label == 6);

        // The copy is independent of the source.
        source.m_desc = "changed";
        static_cast<std::string&>(source) = "zz";
        CHECK(static_cast<const std::string&>(copy) == "A");
        CHECK(copy.m_desc == "B");
    }

    if (g_failures == 0) {
        std::printf("g1-game-ui-pack0-13b7dd-0 tests: all passed\n");
        return 0;
    }
    std::fprintf(stderr, "g1-game-ui-pack0-13b7dd-0 tests: %d failure(s)\n", g_failures);
    return 1;
}
