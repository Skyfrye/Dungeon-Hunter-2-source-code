// Dropable: a drop target of a DragAndDrop table. It holds the menu, the gameswf character of the target, the
// target's bounds, and whether the last test found a dragged Dragable over it.
// Original 32-bit size 0x20 (32), the stride DragAndDrop uses for its Dropable vector. Fields end at +0x1f.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x411e5c / 0x411e88, ~Dropable 0x411eb4 / 0x411eb8,
// SendEvent 0x412070, IsIntersecting 0x412098, TestDragable 0x4126a0).
#pragma once

#include <cstdint>

class Dragable;
class MenuFX;
namespace gameswf {
class character;
}  // namespace gameswf

class Dropable {
public:
    Dropable(MenuFX* menu, gameswf::character* character);              // 0x411e5c / 0x411e88 stores both pointers and passes m_bounds to character::get_bound

    // Dropable has no vtable. Methods in original order.
    ~Dropable();                                                        // 0x411eb4 / 0x411eb8, empty
    int SendEvent(int event);                                           // 0x412070 DragAndDrop::SendEvent(event, m_menu, m_character)
    bool IsIntersecting(Dragable* dragable) const;                      // 0x412098 true when the centre of dragable's character lies inside the absolute bounds of m_character
    int TestDragable(Dragable* dragable, bool notify);                  // 0x4126a0 stores the IsIntersecting result in m_intersecting; sends the over, out, dropped or failed events for the change

    MenuFX* m_menu;                                                     // +0x00 menu that owns the target; the _root of this menu gets dropped_clip
    uint8_t pad_04[4];                                                  // +0x04 never written by the constructor or the methods above
    bool m_intersecting;                                                // +0x08 result of the last IsIntersecting test
    uint8_t pad_09[3];                                                  // +0x09
    gameswf::character* m_character;                                    // +0x0c the drop target character
    float m_bounds[4];                                                  // +0x10 gameswf::rect (xmin, xmax, ymin, ymax) from character::get_bound, written by the ctor only
};
