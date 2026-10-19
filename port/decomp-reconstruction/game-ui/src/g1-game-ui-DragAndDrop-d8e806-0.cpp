// DragAndDrop bodies, batch g1-game-ui-DragAndDrop-d8e806-0.
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original 32-bit ARM
// offsets (DragAndDrop is 0x1c bytes there: m_dragging at +0x00, m_dragables at +0x04, m_dropables at +0x10).
// Partial functions say in their comment which part is missing.
//
// Facts used here:
//   - The C1 and C2 constructors (and destructors) have identical bodies. One definition carries both addresses.
//   - DragAndDrop::SendEvent(event, menu, character). Hex-Rays shows a fourth argument on the GameSWFUtils::PlayAnim
//     calls: that is the caller's r3, passed through unread. GameSWFUtils::PlayAnim (0x416fe0) takes
//     (menu, character, anim), so each call here passes three arguments.
//   - The original's inline push_back of an 84-byte Dragable and a 32-byte Dropable, with its doubling growth, is
//     std::vector::emplace_back. The element size differs on the host, so the memcpy of 0x54 bytes is not kept.
//   - LC_API_STRCMP_0 is strcmp (0 when the strings are equal).
//   - gameswf::character::m_name (+0x44) is declared in vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_character.h
//     as a pointer to a tu_string. get_name() returns that string, and its c_str() is the text the original reads.

#include <cstring>
#include <string>

#include "dh2/DebugSwitches.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/Dragable.hpp"
#include "dh2/Dropable.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "gameswf/gameswf_character.h"

// 0x411ebc DragAndDrop::DragAndDrop()
// 0x411ee0 DragAndDrop::DragAndDrop()  (C2 copy: identical body)
// Zeroes m_dragging (+0x00) and the begin, end and capacity words of m_dragables (+0x04..+0x0c) and m_dropables
// (+0x10..+0x18). Both vectors start empty.
DragAndDrop::DragAndDrop() : m_dragging(nullptr), m_dragables(), m_dropables() {}

// 0x411f04 DragAndDrop::IsDraggingSomething() const
bool DragAndDrop::IsDraggingSomething() const {
    return m_dragging != nullptr;
}

// 0x411f34 DragAndDrop::GetDragable(char const*)
// Walks m_dragables at 84 bytes per entry and returns the first entry whose character name equals the query, or
// null when none does (or when the list is empty). The name is the character's m_name (+0x44), a pointer to a DH2
// tu_string. c_str() gives the same text the original computes: the heap buffer at +0x0c when the flag byte is -1,
// otherwise the inline text at +0x01. The original compares with LC_API_STRCMP_0(name, query), which is strcmp.
Dragable* DragAndDrop::GetDragable(const char* name) {
    for (Dragable& entry : m_dragables) {
        if (std::strcmp(entry.m_character->get_name().c_str(), name) == 0) {
            return &entry;
        }
    }
    return nullptr;
}

// 0x411f94 DragAndDrop::SendEvent(int,MenuFX *,gameswf::character *)
// Plays the drag-and-drop animation for one event. 0 plays OnDragNDropOver, 1 plays OnDragNDropOut. 2 plays
// OnDragNDropSucceed and, when that plays nothing (returns 0), OnDragNDropDropped. 3 plays OnDragNDropFailed and,
// when that plays nothing, OnDragNDropDropped. The result is the PlayAnim result of the last call. Any other event
// returns the event value unchanged.
int DragAndDrop::SendEvent(int event, MenuFX* menu, gameswf::character* character) {
    switch (event) {
    case 0:
        return GameSWFUtils::PlayAnim(menu, character, "OnDragNDropOver");
    case 1:
        return GameSWFUtils::PlayAnim(menu, character, "OnDragNDropOut");
    case 2: {
        const int played = GameSWFUtils::PlayAnim(menu, character, "OnDragNDropSucceed");
        if (played != 0) {
            return played;
        }
        return GameSWFUtils::PlayAnim(menu, character, "OnDragNDropDropped");
    }
    case 3: {
        const int played = GameSWFUtils::PlayAnim(menu, character, "OnDragNDropFailed");
        if (played != 0) {
            return played;
        }
        return GameSWFUtils::PlayAnim(menu, character, "OnDragNDropDropped");
    }
    default:
        return event;
    }
}

// 0x412484 DragAndDrop::~DragAndDrop()
// 0x4124a4 DragAndDrop::~DragAndDrop()  (C2 copy: identical body)
// The original destroys m_dropables (+0x10) and then m_dragables (+0x04), the reverse of declaration order. The
// member destructors run after this body in the same order.
DragAndDrop::~DragAndDrop() {}

// 0x412aa8 DragAndDrop::ResetPositions()
// Each entry is copied (the original memcpy's 0x54 bytes), ResetPosition runs on the copy, and the copy is destroyed.
// The copy shares m_character with the entry, so the character goes back to its saved position. Then m_dragging is
// cleared.
void DragAndDrop::ResetPositions() {
    for (const Dragable& entry : m_dragables) {
        Dragable copy = entry;
        copy.ResetPosition();
    }
    m_dragging = nullptr;
}

// 0x4130c8 DragAndDrop::OnEvent(RenderFX::Event &)
// Only events 5, 6 and 7 are handled. The others return false before anything else runs.
// Each Dragable is offered the event in order. For events other than 6 the first taker becomes m_dragging and the
// scan stops. For event 6 the scan goes on, the last taker is kept as the source, and m_dragging stays null.
// The Dropables are then tested against m_dragging, or against the source when nothing is dragged now. Their
// notify flag is set when the drag has just ended. Event 6 also resets the position of the source.
bool DragAndDrop::OnEvent(RenderFX::Event& e) {
    const int type = static_cast<int>(e.type);
    if (static_cast<unsigned int>(type - 5) > 2u) {
        return false;
    }

    DebugSwitches::s_inst.load();
    const std::string trace_switch("isTracingDragNDrop");
    DebugSwitches::s_inst.GetSwitch(trace_switch);  // the original discards the result

    Dragable* source = m_dragging;  // v7: the entry dragged before this event
    m_dragging = nullptr;
    for (Dragable& entry : m_dragables) {
        if (entry.OnEvent(e)) {
            if (static_cast<int>(e.type) != 6) {  // the original re-reads the event type after OnEvent
                m_dragging = &entry;
                break;
            }
            source = &entry;
        }
    }

    if (source == nullptr && m_dragging == nullptr) {
        return false;
    }

    for (Dropable& target : m_dropables) {
        Dragable* dragged = (m_dragging != nullptr) ? m_dragging : source;  // v11
        const bool notify = (source != m_dragging) && (m_dragging == nullptr);  // v12
        target.TestDragable(dragged, notify);
    }

    // Type 6 leaves m_dragging null, so source is non-null here (the early return above).
    if (static_cast<int>(e.type) == 6) {
        source->ResetPosition();
    }
    return true;
}

// 0x413480 DragAndDrop::AddDragable(MenuFX *,gameswf::character *,gameswf::character *)
// Builds a Dragable from (menu, character, zone) and appends it to m_dragables. The original grows the buffer when
// the end equals the capacity; std::vector grows it on emplace_back.
void DragAndDrop::AddDragable(MenuFX* menu, gameswf::character* character, gameswf::character* zone) {
    m_dragables.emplace_back(menu, character, zone);
}

// 0x413624 DragAndDrop::AddDropable(MenuFX *,gameswf::character *)
// Builds a Dropable from (menu, character) and appends it to m_dropables. Growth as for AddDragable.
void DragAndDrop::AddDropable(MenuFX* menu, gameswf::character* character) {
    m_dropables.emplace_back(menu, character);
}
