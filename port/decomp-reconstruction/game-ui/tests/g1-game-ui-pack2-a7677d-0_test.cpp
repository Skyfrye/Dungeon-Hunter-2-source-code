// Checks the bodies of batch g1-game-ui-pack2-a7677d-0 without the engine. The members they call
// (DragAndDrop::SendEvent, Dragable::SendEvent, GameSWFUtils::GetAbsoluteBoundingRect, RenderFX::SetMember,
// DebugSwitches and gameswf::as_value) are replaced here by recording test doubles, so only this test and the batch
// source are linked. Dropable and Dragable have constructors that need the engine (the character's get_bound, the
// zone), so the tests place them in aligned storage and set the members the bodies read. Dropable::Dropable itself is
// not checked here.
#include <array>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <string>
#include <vector>

#include "dh2/DebugSwitches.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/Dragable.hpp"
#include "dh2/Dropable.hpp"
#include "dh2/FSCommandParam.hpp"
#include "dh2/FlashAnimContext.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/RenderFX.hpp"
#include "gameswf/gameswf_character.h"
#include "vendor-gameswf/as_value.hpp"

// The assert level read by TestDragable (defined in core-platform/src/memory.cpp in the engine build).
int gAssertLevel = 0;

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Recorded calls of the test doubles.
struct DragCall {
    const Dragable* dragable;
    int event;
};
std::vector<DragCall> g_dragable_events;         // Dragable::SendEvent calls, in order
std::vector<int> g_drop_events;                  // DragAndDrop::SendEvent events, in order
MenuFX* g_drop_menu = nullptr;                   // menu of the last DragAndDrop::SendEvent
gameswf::character* g_drop_character = nullptr;  // character of the last DragAndDrop::SendEvent
std::vector<std::string> g_int_members;          // "target.name=value" for RenderFX::SetMember(int)
std::vector<std::string> g_object_members;       // "target.name" for RenderFX::SetMember(as_value&)
std::vector<const void*> g_value_objects;        // object held by each gameswf::as_value built
int g_drop_refs = 0;                             // as_value::drop_refs calls (explicit calls and destructors)
int g_trace_loads = 0;                           // DebugSwitches::load calls
std::vector<std::string> g_trace_queries;        // DebugSwitches::GetSwitch names
std::map<const gameswf::character*, std::array<float, 4>> g_bounds;  // absolute bounds per character

void ResetRecords() {
    g_dragable_events.clear();
    g_drop_events.clear();
    g_drop_menu = nullptr;
    g_drop_character = nullptr;
    g_int_members.clear();
    g_object_members.clear();
    g_value_objects.clear();
    g_drop_refs = 0;
    g_trace_loads = 0;
    g_trace_queries.clear();
}

gameswf::character* Fake(int id) {
    return reinterpret_cast<gameswf::character*>(static_cast<std::uintptr_t>(0x1000 + id * 16));
}

MenuFX* FakeMenu() {
    return reinterpret_cast<MenuFX*>(static_cast<std::uintptr_t>(0x2000));
}

// Storage for a Dropable or a Dragable. The members are plain data, so the zeroed bytes are set field by field.
struct DropableSlot {
    alignas(Dropable) unsigned char bytes[sizeof(Dropable)];
};

struct DragableSlot {
    alignas(Dragable) unsigned char bytes[sizeof(Dragable)];
};

Dropable* PlaceDropable(DropableSlot& slot, gameswf::character* character, bool intersecting) {
    std::memset(slot.bytes, 0, sizeof slot.bytes);
    Dropable* drop = reinterpret_cast<Dropable*>(slot.bytes);
    drop->m_menu = FakeMenu();
    drop->m_character = character;
    drop->m_intersecting = intersecting;
    return drop;
}

Dragable* PlaceDragable(DragableSlot& slot, gameswf::character* character) {
    std::memset(slot.bytes, 0, sizeof slot.bytes);
    Dragable* drag = reinterpret_cast<Dragable*>(slot.bytes);
    drag->m_menu = FakeMenu();
    drag->m_character = character;
    return drag;
}

}  // namespace

// ---- Test doubles for the external members (defined here, not in the engine sources) ----

std::array<float, 4> GameSWFUtils::GetAbsoluteBoundingRect(gameswf::character* character) {
    auto it = g_bounds.find(character);
    if (it == g_bounds.end()) {
        return {0.0f, 0.0f, 0.0f, 0.0f};
    }
    return it->second;
}

int DragAndDrop::SendEvent(int event, MenuFX* menu, gameswf::character* character) {
    g_drop_events.push_back(event);
    g_drop_menu = menu;
    g_drop_character = character;
    return 300 + event;
}

int Dragable::SendEvent(int event) {
    g_dragable_events.push_back(DragCall{this, event});
    return 100 + event;
}

void RenderFX::SetMember(const char* target, const char* name, int value) {
    g_int_members.push_back(std::string(target) + "." + name + "=" + std::to_string(value));
}

void RenderFX::SetMember(const char* target, const char* name, gameswf::as_value& /*value*/) {
    g_object_members.push_back(std::string(target) + "." + name);
}

DebugSwitches::DebugSwitches() {}

DebugSwitches::~DebugSwitches() {}

void DebugSwitches::load() {
    ++g_trace_loads;
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    g_trace_queries.push_back(name);
    return false;
}

DebugSwitches DebugSwitches::s_inst;

gameswf::as_value::as_value(gameswf::as_object* obj)
    : m_flags(0), m_type(OBJECT), m_object(obj), m_owner(nullptr) {
    g_value_objects.push_back(obj);
}

void gameswf::as_value::drop_refs() {
    ++g_drop_refs;
}

// ---- Tests ----

namespace {

void TestFSCommandParam() {
    ResetRecords();
    FSCommandParam text("alpha");
    Check(text.GetString("unused") == 1, "GetString returns 1");

    float f = -1.0f;
    Check(FSCommandParam("2.5").GetFloat(&f) && f == 2.5f, "GetFloat reads 2.5");
    Check(!FSCommandParam("0").GetFloat(&f) && f == 0.0f, "GetFloat of 0 is false and stores 0");
    Check(!FSCommandParam("abc").GetFloat(&f) && f == 0.0f, "GetFloat of text without a number stores 0");

    int i = -1;
    Check(FSCommandParam("42").GetInt(&i) && i == 42, "GetInt reads 42");
    Check(FSCommandParam("-7x").GetInt(&i) && i == -7, "GetInt reads the leading integer");
    Check(!FSCommandParam("0").GetInt(&i) && i == 0, "GetInt of 0 is false and stores 0");
    Check(!FSCommandParam("abc").GetInt(&i) && i == 0, "GetInt of text without a number stores 0");
}

void TestFlashAnimContextText() {
    ResetRecords();
    FlashAnimContext ctx{};
    ctx.SetText("hello");
    Check(std::strcmp(ctx.m_text, "hello") == 0, "SetText copies short text");

    const std::string text46(46, 'a');
    ctx.SetText(text46.c_str());
    Check(std::strcmp(ctx.m_text, text46.c_str()) == 0, "SetText copies 46 characters");

    const std::string text47(47, 'b');
    ctx.SetText(text47.c_str());
    Check(std::strcmp(ctx.m_text, text46.c_str()) == 0, "SetText ignores text longer than 46 characters");

    ctx.SetTextToNumber(123);
    Check(std::strcmp(ctx.m_text, "123") == 0, "SetTextToNumber formats 123");
    ctx.SetTextToNumber(-5);
    Check(std::strcmp(ctx.m_text, "-5") == 0, "SetTextToNumber formats a negative value");
    ctx.SetTextToNumber(2147483645);
    Check(std::strcmp(ctx.m_text, "2147483645") == 0, "SetTextToNumber formats the largest value below the limit");
    ctx.SetTextToNumber(2147483646);
    Check(std::strcmp(ctx.m_text, "2147483645") == 0, "SetTextToNumber leaves the text at the limit");
}

void TestDropableSendEvent() {
    ResetRecords();
    gameswf::character* drop_char = Fake(1);
    DropableSlot slot;
    Dropable* drop = PlaceDropable(slot, drop_char, false);
    const int r = drop->SendEvent(5);
    Check(r == 305, "Dropable::SendEvent returns the DragAndDrop result");
    Check(g_drop_events.size() == 1 && g_drop_events[0] == 5, "Dropable::SendEvent passes the event");
    Check(g_drop_menu == FakeMenu() && g_drop_character == drop_char,
          "Dropable::SendEvent passes the menu and the character");
}

// Places a dragable whose character has the given absolute bounds, and tests it against the drop target.
bool Overlaps(Dropable* drop, DragableSlot& slot, int id, std::array<float, 4> bounds) {
    gameswf::character* character = Fake(id);
    g_bounds[character] = bounds;
    Dragable* drag = PlaceDragable(slot, character);
    return drop->IsIntersecting(drag);
}

void TestIsIntersecting() {
    ResetRecords();
    gameswf::character* drop_char = Fake(1);
    g_bounds[drop_char] = {10.0f, 20.0f, 10.0f, 20.0f};  // xmin, xmax, ymin, ymax
    DropableSlot drop_slot;
    Dropable* drop = PlaceDropable(drop_slot, drop_char, false);
    DragableSlot slot;

    Check(Overlaps(drop, slot, 2, {12.0f, 14.0f, 12.0f, 14.0f}), "a dragable centred inside the target overlaps");
    Check(!Overlaps(drop, slot, 2, {30.0f, 40.0f, 30.0f, 40.0f}), "a dragable far away does not overlap");
    Check(Overlaps(drop, slot, 2, {0.0f, 20.0f, 0.0f, 20.0f}), "a centre on the minimum edges counts");
    Check(Overlaps(drop, slot, 2, {18.0f, 22.0f, 18.0f, 22.0f}), "a centre on the maximum edges counts");
    Check(!Overlaps(drop, slot, 2, {21.0f, 40.0f, 12.0f, 14.0f}), "a centre past the right edge does not count");
    Check(!Overlaps(drop, slot, 2, {12.0f, 14.0f, 21.0f, 40.0f}), "a centre past the bottom edge does not count");
    Check(!drop->IsIntersecting(nullptr), "a null dragable does not overlap");
}

void TestTestDragable() {
    ResetRecords();
    gameswf::character* drop_char = Fake(1);
    g_bounds[drop_char] = {10.0f, 20.0f, 10.0f, 20.0f};
    g_bounds[Fake(2)] = {12.0f, 14.0f, 12.0f, 14.0f};  // inside the target
    g_bounds[Fake(3)] = {30.0f, 40.0f, 30.0f, 40.0f};  // outside the target
    DropableSlot drop_slot;
    DragableSlot inside_slot;
    DragableSlot outside_slot;
    Dropable* drop = PlaceDropable(drop_slot, drop_char, false);
    Dragable* inside = PlaceDragable(inside_slot, Fake(2));
    Dragable* outside = PlaceDragable(outside_slot, Fake(3));

    // Enter: not over before, over now, no notify. Over goes to the dragable and to the target.
    ResetRecords();
    int r = drop->TestDragable(inside, false);
    Check(r == 300, "entering returns the Dropable over result");
    Check(drop->m_intersecting, "entering sets m_intersecting");
    Check(g_dragable_events.size() == 1 && g_dragable_events[0].dragable == inside &&
              g_dragable_events[0].event == 0,
          "entering sends over to the dragable");
    Check(g_drop_events.size() == 1 && g_drop_events[0] == 0, "entering sends over to the target");
    Check(g_trace_loads == 1 && g_trace_queries.size() == 1 && g_trace_queries[0] == "isTracingDropable",
          "entering reads the isTracingDropable switch once");

    // Stay: over before and now, no notify. Nothing is sent.
    ResetRecords();
    r = drop->TestDragable(inside, false);
    Check(r == 1, "staying over returns 1");
    Check(g_dragable_events.empty() && g_drop_events.empty() && g_trace_loads == 0,
          "staying over sends nothing and reads no switch");

    // Leave: over before, not over now, no notify. Out goes to the dragable and to the target.
    ResetRecords();
    r = drop->TestDragable(outside, false);
    Check(r == 301, "leaving returns the Dropable out result");
    Check(!drop->m_intersecting, "leaving clears m_intersecting");
    Check(g_dragable_events.size() == 1 && g_dragable_events[0].dragable == outside &&
              g_dragable_events[0].event == 1,
          "leaving sends out to the dragable");
    Check(g_drop_events.size() == 1 && g_drop_events[0] == 1, "leaving sends out to the target");

    // Outside and not over before: nothing.
    ResetRecords();
    r = drop->TestDragable(outside, false);
    Check(r == 0, "staying outside returns 0");
    Check(g_dragable_events.empty() && g_drop_events.empty(), "staying outside sends nothing");

    // Failed drop: not over, notify. The dropped clip is set to 0 and only the dragable gets failed (3).
    ResetRecords();
    r = drop->TestDragable(outside, true);
    Check(r == 103, "a failed drop returns the Dragable failed result");
    Check(g_int_members.size() == 1 && g_int_members[0] == "_root.dropped_clip=0",
          "a failed drop sets _root.dropped_clip to 0");
    Check(g_dragable_events.size() == 1 && g_dragable_events[0].dragable == outside &&
              g_dragable_events[0].event == 3,
          "a failed drop sends failed to the dragable");
    Check(g_drop_events.empty(), "a failed drop does not send to the target");
    Check(g_trace_loads == 1, "a failed drop reads the isTracingDropable switch");
    Check(!drop->m_intersecting, "a failed drop leaves m_intersecting false");

    // Dropped: over and notify. The dropped clip is the dragged character, then dropped (2) goes to both sides.
    ResetRecords();
    drop->TestDragable(inside, true);
    Check(drop->m_intersecting, "a drop sets m_intersecting");
    Check(g_value_objects.size() == 1 &&
              g_value_objects[0] == static_cast<const void*>(static_cast<gameswf::as_object*>(Fake(2))),
          "a drop builds a value holding the dragged character");
    Check(g_object_members.size() == 1 && g_object_members[0] == "_root.dropped_clip",
          "a drop sets _root.dropped_clip to that value");
    Check(g_dragable_events.size() == 1 && g_dragable_events[0].dragable == inside &&
              g_dragable_events[0].event == 2,
          "a drop sends dropped to the dragable");
    Check(g_drop_events.size() == 1 && g_drop_events[0] == 2, "a drop sends dropped to the target");
    Check(g_drop_refs >= 1, "a drop releases the value");

    // Null dragable, not over before, no notify: no events, result 0.
    ResetRecords();
    drop->m_intersecting = false;
    r = drop->TestDragable(nullptr, false);
    Check(r == 0 && !drop->m_intersecting, "a null dragable is not over the target");
    Check(g_dragable_events.empty() && g_drop_events.empty(), "a null dragable sends nothing");
}

}  // namespace

int main() {
    TestFSCommandParam();
    TestFlashAnimContextText();
    TestDropableSendEvent();
    TestIsIntersecting();
    TestTestDragable();

    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-ui-pack2-a7677d-0 tests passed\n");
    return 0;
}
