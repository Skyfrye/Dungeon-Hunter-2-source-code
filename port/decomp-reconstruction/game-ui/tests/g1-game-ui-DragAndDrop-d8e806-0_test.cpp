// Checks the DragAndDrop bodies of batch g1-game-ui-DragAndDrop-d8e806-0 without the engine. The members they call
// (Dragable, Dropable, GameSWFUtils::PlayAnim and DebugSwitches) are replaced here by recording test doubles, so only
// this test and the DragAndDrop source are linked. GetDragable reads each entry's name through
// gameswf::character::get_name(); the test gives it stand-in character blocks whose m_name points at a tu_string.
// The tu_string resize is a double, so only short (inline) names are exercised, not the heap branch.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "dh2/DebugSwitches.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/Dragable.hpp"
#include "dh2/Dropable.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "gameswf/gameswf_character.h"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Recorded state of the test doubles.
std::vector<std::string> g_played;             // anim names passed to GameSWFUtils::PlayAnim, in call order
const char* g_playReturnsOne = nullptr;        // PlayAnim returns 1 for this anim name, 0 otherwise
std::vector<gameswf::character*> g_hits;       // Dragable::OnEvent returns true for these characters
int g_resets = 0;                              // Dragable::ResetPosition calls
std::vector<const void*> g_resetThis;          // the object ResetPosition ran on, one entry per call
std::vector<const void*> g_tested_dropables;   // Dropable::TestDragable: the Dropable
std::vector<const void*> g_tested_dragables;   // Dropable::TestDragable: the Dragable argument
std::vector<bool> g_tested_notify;             // Dropable::TestDragable: the notify flag
int g_loads = 0;                               // DebugSwitches::load calls
std::vector<std::string> g_switch_queries;     // DebugSwitches::GetSwitch names

void ResetRecords() {
    g_played.clear();
    g_playReturnsOne = nullptr;
    g_hits.clear();
    g_resets = 0;
    g_resetThis.clear();
    g_tested_dropables.clear();
    g_tested_dragables.clear();
    g_tested_notify.clear();
    g_loads = 0;
    g_switch_queries.clear();
}

gameswf::character* Fake(int id) {
    return reinterpret_cast<gameswf::character*>(static_cast<std::uintptr_t>(0x1000 + id));
}

MenuFX* FakeMenu() {
    return reinterpret_cast<MenuFX*>(static_cast<std::uintptr_t>(0x2000));
}

RenderFX::Event MakeEvent(int type) {
    RenderFX::Event e{};
    e.type = static_cast<RenderFX::EventType>(type);
    return e;
}

// Stand-in gameswf::character blocks for GetDragable. Each block is zeroed and only m_name is set; no other member
// is read by the code under test. get_name() is inline in the header and returns *m_name.
alignas(16) unsigned char g_charBlock[4][sizeof(gameswf::character)];

gameswf::character* StandInCharacter(int slot, const tu_string* name) {
    gameswf::character* ch = reinterpret_cast<gameswf::character*>(g_charBlock[slot]);
    ch->m_name = name;
    return ch;
}

}  // namespace

// ---- Test doubles for the external members (defined here, not in the engine sources) ----

// The tu_string constructor from a C string calls resize, which is out of line in the engine. The test names are
// short, so the inline text holds them and resize only has to exist. The inline destructor refers to free_internal
// for heap text, which these names never use.
void tu_string::resize(int) {}

namespace gameswf {
void free_internal(void* p, unsigned int) { std::free(p); }
}  // namespace gameswf

Dragable::Dragable(MenuFX* menu, gameswf::character* character, gameswf::character* /*zone*/)
    : m_menu(menu), m_character(character) {}

Dragable::~Dragable() {}

int Dragable::ResetPosition() {
    ++g_resets;
    g_resetThis.push_back(this);
    return 0;
}

bool Dragable::OnEvent(RenderFX::Event& /*e*/) {
    for (gameswf::character* hit : g_hits) {
        if (hit == m_character) {
            return true;
        }
    }
    return false;
}

Dropable::Dropable(MenuFX* menu, gameswf::character* character) : m_menu(menu), m_character(character) {}

Dropable::~Dropable() {}

int Dropable::TestDragable(Dragable* dragable, bool notify) {
    g_tested_dropables.push_back(this);
    g_tested_dragables.push_back(dragable);
    g_tested_notify.push_back(notify);
    return 0;
}

int GameSWFUtils::PlayAnim(MenuFX* /*menu*/, gameswf::character* /*character*/, const char* anim) {
    g_played.emplace_back(anim);
    return (g_playReturnsOne != nullptr && std::strcmp(anim, g_playReturnsOne) == 0) ? 1 : 0;
}

DebugSwitches::DebugSwitches() {}

DebugSwitches::~DebugSwitches() {}

void DebugSwitches::load() {
    ++g_loads;
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    g_switch_queries.push_back(name);
    return false;
}

DebugSwitches DebugSwitches::s_inst;

// ---- Tests ----

namespace {

void TestConstructorAndIsDragging() {
    ResetRecords();
    DragAndDrop d;
    Check(!d.IsDraggingSomething(), "a new DragAndDrop is not dragging");
    Check(d.m_dragables.empty() && d.m_dropables.empty(), "a new DragAndDrop has empty lists");
}

void TestAddDragableAndDropable() {
    ResetRecords();
    DragAndDrop d;
    MenuFX* menu = FakeMenu();
    d.AddDragable(menu, Fake(1), Fake(90));
    d.AddDragable(menu, Fake(2), Fake(91));
    d.AddDragable(menu, Fake(3), Fake(92));
    d.AddDropable(menu, Fake(10));
    Check(d.m_dragables.size() == 3, "AddDragable appends three entries");
    Check(d.m_dropables.size() == 1, "AddDropable appends one entry");
    Check(d.m_dragables.size() == 3 && d.m_dragables[1].m_character == Fake(2), "AddDragable keeps insertion order");
    Check(d.m_dragables.size() == 3 && d.m_dragables[0].m_menu == menu, "AddDragable passes the menu to the Dragable");
    Check(d.m_dropables.size() == 1 && d.m_dropables[0].m_character == Fake(10), "AddDropable passes the character");
}

void TestSendEvent() {
    ResetRecords();
    MenuFX* menu = FakeMenu();
    gameswf::character* c = Fake(5);

    Check(DragAndDrop::SendEvent(0, menu, c) == 0, "SendEvent 0 returns the PlayAnim result");
    Check(g_played.size() == 1 && g_played[0] == "OnDragNDropOver", "SendEvent 0 plays OnDragNDropOver");

    ResetRecords();
    DragAndDrop::SendEvent(1, menu, c);
    Check(g_played.size() == 1 && g_played[0] == "OnDragNDropOut", "SendEvent 1 plays OnDragNDropOut");

    ResetRecords();
    Check(DragAndDrop::SendEvent(2, menu, c) == 0, "SendEvent 2 with no succeed anim returns the dropped result");
    Check(g_played.size() == 2 && g_played[0] == "OnDragNDropSucceed" && g_played[1] == "OnDragNDropDropped",
          "SendEvent 2 plays Succeed then Dropped when Succeed plays nothing");

    ResetRecords();
    g_playReturnsOne = "OnDragNDropSucceed";
    Check(DragAndDrop::SendEvent(2, menu, c) == 1, "SendEvent 2 returns the Succeed result when it plays");
    Check(g_played.size() == 1 && g_played[0] == "OnDragNDropSucceed", "SendEvent 2 stops after a played Succeed");

    ResetRecords();
    g_playReturnsOne = "OnDragNDropFailed";
    Check(DragAndDrop::SendEvent(3, menu, c) == 1, "SendEvent 3 returns the Failed result when it plays");
    Check(g_played.size() == 1 && g_played[0] == "OnDragNDropFailed", "SendEvent 3 stops after a played Failed");

    ResetRecords();
    Check(DragAndDrop::SendEvent(3, menu, c) == 0, "SendEvent 3 with no failed anim returns the dropped result");
    Check(g_played.size() == 2 && g_played[0] == "OnDragNDropFailed" && g_played[1] == "OnDragNDropDropped",
          "SendEvent 3 plays Failed then Dropped when Failed plays nothing");

    ResetRecords();
    Check(DragAndDrop::SendEvent(9, menu, c) == 9, "SendEvent with another event returns the event");
    Check(g_played.empty(), "SendEvent with another event plays nothing");
}

void TestOnEventIgnoresOtherTypes() {
    ResetRecords();
    DragAndDrop d;
    d.AddDragable(FakeMenu(), Fake(1), Fake(90));
    g_hits.push_back(Fake(1));
    RenderFX::Event e = MakeEvent(4);
    Check(!d.OnEvent(e), "OnEvent returns false for event 4");
    Check(g_loads == 0 && g_switch_queries.empty(), "OnEvent returns before the debug switch for event 4");
    Check(!d.IsDraggingSomething(), "OnEvent leaves m_dragging alone for event 4");
}

void TestOnEventStartsDrag() {
    ResetRecords();
    DragAndDrop d;
    MenuFX* menu = FakeMenu();
    d.AddDragable(menu, Fake(1), Fake(90));
    d.AddDragable(menu, Fake(2), Fake(91));
    d.AddDropable(menu, Fake(10));
    d.AddDropable(menu, Fake(11));
    g_hits.push_back(Fake(2));

    RenderFX::Event e = MakeEvent(5);
    Check(d.OnEvent(e), "OnEvent returns true when event 5 is taken");
    Check(g_loads == 1, "OnEvent loads the debug switches");
    Check(g_switch_queries.size() == 1 && g_switch_queries[0] == "isTracingDragNDrop",
          "OnEvent queries isTracingDragNDrop");
    Check(d.IsDraggingSomething() && d.m_dragging == &d.m_dragables[1], "the first taker becomes m_dragging");
    Check(g_tested_dropables.size() == 2, "OnEvent tests every Dropable");
    Check(g_tested_dragables.size() == 2 && g_tested_dragables[0] == &d.m_dragables[1],
          "the Dropables are tested against the dragged entry");
    Check(g_tested_notify.size() == 2 && !g_tested_notify[0] && !g_tested_notify[1],
          "no notify while a drag starts");
    Check(g_resets == 0, "event 5 does not reset positions");
}

void TestOnEventDragEndsWithoutHit() {
    ResetRecords();
    DragAndDrop d;
    MenuFX* menu = FakeMenu();
    d.AddDragable(menu, Fake(1), Fake(90));
    d.AddDropable(menu, Fake(10));
    g_hits.push_back(Fake(1));
    RenderFX::Event start = MakeEvent(5);
    d.OnEvent(start);
    Check(d.m_dragging == &d.m_dragables[0], "setup: entry 0 is being dragged");

    ResetRecords();
    g_hits.clear();  // nothing takes the next event
    RenderFX::Event move = MakeEvent(5);
    Check(d.OnEvent(move), "OnEvent returns true while a drag ends, using the previous source");
    Check(!d.IsDraggingSomething(), "the drag ends: m_dragging is cleared");
    Check(g_tested_dragables.size() == 1 && g_tested_dragables[0] == &d.m_dragables[0],
          "the Dropable is tested against the previous source");
    Check(g_tested_notify.size() == 1 && g_tested_notify[0], "the Dropable is notified when the drag ends");
    Check(g_resets == 0, "event 5 never resets positions");
}

void TestOnEventRejectsWhenNothingHeld() {
    ResetRecords();
    DragAndDrop d;
    d.AddDragable(FakeMenu(), Fake(1), Fake(90));
    d.AddDropable(FakeMenu(), Fake(10));
    RenderFX::Event e = MakeEvent(5);
    Check(!d.OnEvent(e), "OnEvent returns false when nothing is taken and nothing was dragged");
    Check(g_tested_dropables.empty(), "no Dropable is tested when nothing is held");
}

void TestOnEventReleaseKeepsLastTaker() {
    ResetRecords();
    DragAndDrop d;
    MenuFX* menu = FakeMenu();
    d.AddDragable(menu, Fake(1), Fake(90));
    d.AddDragable(menu, Fake(2), Fake(91));
    d.AddDropable(menu, Fake(10));
    g_hits.push_back(Fake(1));
    g_hits.push_back(Fake(2));

    RenderFX::Event e = MakeEvent(6);
    Check(d.OnEvent(e), "OnEvent returns true for event 6");
    Check(!d.IsDraggingSomething(), "event 6 never sets m_dragging");
    Check(g_resets == 1 && g_resetThis.size() == 1 && g_resetThis[0] == &d.m_dragables[1],
          "event 6 resets the last taker only");
    Check(g_tested_dragables.size() == 1 && g_tested_dragables[0] == &d.m_dragables[1],
          "the Dropable is tested against the last taker");
    Check(g_tested_notify.size() == 1 && g_tested_notify[0], "event 6 notifies the Dropable");
}

void TestGetDragableFindsByName() {
    ResetRecords();
    DragAndDrop d;
    MenuFX* menu = FakeMenu();
    Check(d.GetDragable("Btn_A") == nullptr, "GetDragable returns null for an empty list");

    const tu_string name_a("Btn_A");
    const tu_string name_b("Btn_B");
    const tu_string name_b_again("Btn_B");
    d.AddDragable(menu, StandInCharacter(0, &name_a), Fake(90));
    d.AddDragable(menu, StandInCharacter(1, &name_b), Fake(91));
    d.AddDragable(menu, StandInCharacter(2, &name_b_again), Fake(92));

    Check(d.GetDragable("Btn_A") == &d.m_dragables[0], "GetDragable finds the entry whose name matches");
    Check(d.GetDragable("Btn_B") == &d.m_dragables[1], "GetDragable returns the first of two equal names");
    Check(d.GetDragable("Btn_Z") == nullptr, "GetDragable returns null when no name matches");
    Check(d.GetDragable("Btn") == nullptr, "GetDragable compares whole names, not prefixes");
    Check(d.GetDragable("btn_a") == nullptr, "GetDragable compares case-sensitively");
}

void TestResetPositionsRunsOnCopies() {
    ResetRecords();
    DragAndDrop d;
    MenuFX* menu = FakeMenu();
    d.AddDragable(menu, Fake(1), Fake(90));
    d.AddDragable(menu, Fake(2), Fake(91));
    g_hits.push_back(Fake(1));
    RenderFX::Event e = MakeEvent(5);
    d.OnEvent(e);
    Check(d.IsDraggingSomething(), "setup: a drag is in progress");

    ResetRecords();
    d.ResetPositions();
    Check(g_resets == 2, "ResetPositions resets every entry once");
    Check(g_resetThis.size() == 2 && g_resetThis[0] != &d.m_dragables[0] && g_resetThis[1] != &d.m_dragables[1],
          "ResetPositions runs ResetPosition on copies, not the entries");
    Check(!d.IsDraggingSomething(), "ResetPositions clears m_dragging");
    Check(d.m_dragables.size() == 2, "ResetPositions keeps the entries");
}

}  // namespace

int main() {
    TestConstructorAndIsDragging();
    TestAddDragableAndDropable();
    TestSendEvent();
    TestOnEventIgnoresOtherTypes();
    TestOnEventStartsDrag();
    TestOnEventDragEndsWithoutHit();
    TestOnEventRejectsWhenNothingHeld();
    TestOnEventReleaseKeepsLastTaker();
    TestResetPositionsRunsOnCopies();
    TestGetDragableFindsByName();

    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("DragAndDrop tests passed\n");
    return 0;
}
