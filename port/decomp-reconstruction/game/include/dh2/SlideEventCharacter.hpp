// SlideEventCharacter: recognizes a finger slide over one gameswf character and raises the matching
// OnSlideLeft/Right/Up/Down/UpLeft/UpRight/DownLeft/DownRight callback on the owning MenuFX. The distance
// and tolerances come from the PyData table SlideEventConfig. MenuBase::TestSlideEvents runs Test for
// each registered character.
// Original 32-bit size 0x2c (44, operator new(44) per class-facts).
// Offsets in comments are original 32-bit ARM offsets (host pointers are wider).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x41f6c4, 0x41f77c; Test 0x4236c0).
#pragma once

#include <cstdint>

#include "dh2/RenderFX.hpp"

class MenuFX;
namespace gameswf {
class character;
}  // namespace gameswf

class SlideEventCharacter {
public:
    explicit SlideEventCharacter(gameswf::character* character);         // 0x41f6c4 / 0x41f77c
    void Test(RenderFX::Event& event, MenuFX* menu);                     // 0x4236c0 tracks the touch and fires the slide callback

    gameswf::character* m_character;                                     // +0x00 character this slide belongs to, compared with the event target
    float m_slideDist;                                                   // +0x04 PixelSlideDist * 20 from SlideEventConfig, the distance a slide must cover
    bool m_tracking;                                                     // +0x08 set when a slide starts, cleared when the touch ends or the timing window closes
    uint8_t pad_09[3];                                                   // +0x09 .. +0x0b
    int m_timingTolerance;                                               // +0x0c TimingTolerance from SlideEventConfig, the window for a slide
    int m_startTime;                                                     // +0x10 time stamp when the slide started, -1 after the ctor
    int m_angleTolerance;                                                // +0x14 AngleTolerance from SlideEventConfig, read as unsigned and converted to float in Test
    bool m_fired;                                                        // +0x18 latched once a slide is recognized, cleared on release; the ctor does not write it
    uint8_t pad_19[3];                                                   // +0x19 .. +0x1b
    float m_startX;                                                      // +0x1c X where the slide started
    float m_startY;                                                      // +0x20 Y where the slide started
    float m_lastX;                                                       // +0x24 X of the latest sample
    float m_lastY;                                                       // +0x28 Y of the latest sample
};
