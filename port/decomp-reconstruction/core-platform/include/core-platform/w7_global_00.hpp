// Declarations for the global_00 reconstruction slice (w7_global_00.cpp).
#pragma once

#include <istream>
#include <vector>

#include "core-platform/deps/game_types.hpp"

// Three-float vector used by the operator/ overload below. The layout (X, Y, Z
// at +0, +4, +8) is taken from the component stores in the listing.
struct Vector3D {
    float X, Y, Z;
};

// 0x310750 _ZdvRK8Vector3Df
Vector3D operator/(const Vector3D& v, float divisor);

// 0x313498 _ZrsRSiRSt6vectorI7Point3DIfESaIS2_EE
std::istream& operator>>(std::istream& is, std::vector<Point3D<float>>& points);

// Subtitle queue state used by ClearSubtitles. Element and deque layouts follow
// the offsets the listing uses. The entry layout comes from GetSubtitleTextToSet (0x33933c),
// which is where the two leading words are read: the word at +0x00 is compared with the
// caller's current time as a signed 32-bit value (0x339360 `LDR R2,[R5]; CMP R2,R0; BGT`) and the
// word at +0x04 likewise (0x339448 `LDR R2,[R3,#4]; CMP R0,R2; BGE`), so they are the entry's
// start and end times, not pointers. ClearSubtitles itself only touches +0x08.
struct SubtitleEntry {
    int startTime;  // +0x00, the time the entry becomes due
    int endTime;    // +0x04, the time the entry stops showing
    void* text_08;  // +0x08 separately allocated buffer, freed before the entry
};

// Deque of SubtitleEntry* with 32-slot nodes. The five words are contiguous in
// the original (the first one is the global g_SubtitlesQueue). A node is 0x80 bytes there
// (32 four-byte pointers) and 0x100 here (32 host-width pointers); the node size the
// listing passes to __node_alloc::_M_deallocate stays 0x80, so the free-list bucket
// matches the original's (see the ClearSubtitles comment in src/w7_global_00.cpp).
struct SubtitleDeque {
    SubtitleEntry** cur;     // +0x00 start.cur
    SubtitleEntry** first;   // +0x04 start.first (node base)
    SubtitleEntry** last;    // +0x08 start.last (node end)
    SubtitleEntry*** node;   // +0x0C start.node (map slot)
    SubtitleEntry** finish;  // +0x10 finish.cur
    // The rest of the STLport deque (LoadSubtitles' push side, 0x339830): ELF 0x9a1d90 .. 0x9a1da0.
    SubtitleEntry** finishFirst = nullptr;  // +0x14 finish.first (node base)
    SubtitleEntry** finishLast = nullptr;   // +0x18 finish.last (node end)
    SubtitleEntry*** finishNode = nullptr;  // +0x1C finish.node (map slot)
    SubtitleEntry*** map = nullptr;         // +0x20 the node map (array of node pointers)
    unsigned int mapSize = 0;               // +0x24 slots in the map
};

extern SubtitleDeque g_SubtitlesQueue;
extern SubtitleEntry* g_CurrentSubtitle;

// 0x33971c ClearSubtitles
void ClearSubtitles();

// 0x339830 LoadSubtitles: sets the skip text of the language (g_skip) and reads the trailer subtitle file of that language into the queue.
// Returns the result of the final fclose, or 0 when the file does not open.
int LoadSubtitles();
