// DragAndDrop: the drag-and-drop table of one menu page. It owns the list of Dragable sources, the list of
// Dropable targets (32 bytes each in the original, see dh2/Dropable.hpp, not recovered here) and the Dragable
// that is being dragged now (null when none). MenuBase owns one of these at its +0x5c.
// Original 32-bit size 0x1c (28): the class-facts operator new size. Both vectors are 12 bytes on 32-bit.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x411ebc / 0x411ee0, ~DragAndDrop 0x412484 / 0x4124a4,
// IsDraggingSomething 0x411f04, GetDragable 0x411f34, SendEvent 0x411f94, ResetPositions 0x412aa8,
// OnEvent 0x4130c8, AddDragable 0x413480, AddDropable 0x413624).
#pragma once

#include <vector>

#include "dh2/Dragable.hpp"
#include "dh2/RenderFX.hpp"

class MenuFX;
class Dropable;
namespace gameswf {
class character;
}  // namespace gameswf

class DragAndDrop {
public:
    DragAndDrop();                                                      // 0x411ebc / 0x411ee0
    ~DragAndDrop();                                                     // 0x412484 / 0x4124a4

    // Methods in original order.
    bool IsDraggingSomething() const;                                   // 0x411f04 true when m_dragging is set
    Dragable* GetDragable(const char* name);                            // 0x411f34 first entry whose character name matches, else null
    static int SendEvent(int event, MenuFX* menu, gameswf::character* character);  // 0x411f94 plays OnDragNDrop* (over, out, succeed, failed, dropped)
    void ResetPositions();                                              // 0x412aa8 calls ResetPosition on a copy of each entry and clears m_dragging
    bool OnEvent(RenderFX::Event& e);                                   // 0x4130c8
    void AddDragable(MenuFX* menu, gameswf::character* character, gameswf::character* zone);  // 0x413480
    void AddDropable(MenuFX* menu, gameswf::character* character);      // 0x413624

    Dragable* m_dragging;                                               // +0x00 entry being dragged, null when none
    std::vector<Dragable> m_dragables;                                  // +0x04 .. +0x0f begin, end, capacity (84-byte elements)
    std::vector<Dropable> m_dropables;                                  // +0x10 .. +0x1b begin, end, capacity (32-byte elements)
};
