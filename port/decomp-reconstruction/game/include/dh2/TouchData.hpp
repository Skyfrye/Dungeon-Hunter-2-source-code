// TouchData: one active touch, held per touch id in ZoomHandler's finger map (std::map<long, TouchData>).
// Original 8 bytes: four 16-bit values, read as shorts by ZoomHandler::onEvent (0x382bdc).
// The global type TouchData in the binary. MenuWorldMap::InputHandler::TouchData (dh2/MenuWorldMap.hpp) is a
// different type with the same layout, nested in its owner.
#pragma once

#include <cstdint>

struct TouchData {
    std::int16_t firstX;   // +0x00 x of the first contact; set on a press, or on a move while both first fields are zero
    std::int16_t firstY;   // +0x02 y of the first contact
    std::int16_t latestX;  // +0x04 x of the latest contact; set on a press and on every move
    std::int16_t latestY;  // +0x06 y of the latest contact
};
