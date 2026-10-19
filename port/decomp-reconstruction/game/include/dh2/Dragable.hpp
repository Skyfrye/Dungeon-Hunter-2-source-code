// Dragable: one drag source of a DragAndDrop table. It holds the menu, the gameswf character that is
// dragged, the character's bounds, a dead zone and a copy of the character's matrix, so that ResetPosition
// can put the character back where it started. OnEvent moves it while the pointer drags it.
// Original 32-bit size 0x54 (84): DragAndDrop copies it with memcpy(0x54) and walks the list at a 0x54 stride.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x4124c4 / 0x413240, ~Dragable 0x411e54 / 0x411e58,
// SendEvent 0x412084, ResetPosition 0x412984, OnEvent 0x412b00).
#pragma once

#include <cstdint>

#include "dh2/RenderFX.hpp"

class MenuFX;
namespace gameswf {
class character;
}  // namespace gameswf

class Dragable {
public:
    Dragable(MenuFX* menu, gameswf::character* character, gameswf::character* zone);  // 0x4124c4 / 0x413240
    ~Dragable();                                                        // 0x411e54 / 0x411e58, empty

    // Overrides none: Dragable has no vtable. Methods in original order.
    int SendEvent(int event);                                           // 0x412084 tail-calls DragAndDrop::SendEvent(event, m_menu, m_character)
    int ResetPosition();                                                // 0x412984 restores m_savedMatrix and m_depth; the caller ignores the int
    bool OnEvent(RenderFX::Event& e);                                   // 0x412b00

    uint8_t pad_00[4];                                                  // +0x00 never written by the constructor or the methods above
    MenuFX* m_menu;                                                     // +0x04 menu that owns the dragged character
    gameswf::character* m_character;                                    // +0x08 the dragged character
    float m_bounds[4];                                                  // +0x0c gameswf::rect of m_character in pixels (xmin, xmax, ymin, ymax)
    int unk_1c;                                                         // +0x1c 0 in the ctor; OnEvent clamps the position to m_deadZone when it is 2
    float m_deadZone[4];                                                // +0x20 gameswf::rect in twips: absolute bounds of the zone character, or the screen times 20
    int unk_30;                                                         // +0x30 (int) truncation of the saved matrix tx
    int unk_34;                                                         // +0x34 (int) truncation of the saved matrix ty
    uint16_t m_depth;                                                   // +0x38 depth of m_character at construction, restored by ResetPosition
    uint8_t pad_3a[2];                                                  // +0x3a
    float m_savedMatrix[6];                                             // +0x3c copy of the matrix that m_character+0x4c points to: (a, b, tx, c, d, ty)
};
