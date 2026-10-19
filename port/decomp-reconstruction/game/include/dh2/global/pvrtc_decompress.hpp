// PVRTC texture decoding helpers of the <global> code (batch g1-game-app-global-f216b6-20, codec part):
// InterpolateColours and TwiddleUV (internal linkage in the original, exposed here so they can be tested) and
// PVRTCDecompress. Definitions are in game-app/src/g1-game-app-global-f216b6-20.cpp.
#pragma once

#include <cstdint>

// 0x69f570 InterpolateColours(int const*, int const*, int const*, int const*, int, int, int, int*)
// a1..a4 are the four corner colour words of each channel; a5 selects the 8-step (non-zero) or 4-step blend;
// a6 and a7 are the horizontal and vertical weights (only their low bits are used). Writes a8[0..3].
int InterpolateColours(const int* a1, const int* a2, const int* a3, const int* a4, int a5, int a6, int a7,
                       int* a8);

// 0x69f6f4 TwiddleUV(unsigned long, unsigned long, unsigned long, unsigned long)
// The mangled type is unsigned long, which is 32 bits on the 32-bit target; the body uses 32-bit words.
std::uint32_t TwiddleUV(std::uint32_t a1, std::uint32_t a2, std::uint32_t a3, std::uint32_t a4);

// 0x69f768 PVRTCDecompress(void const*, int, int, int, unsigned char*)

int PVRTCDecompress(const void* compressed, int do2bitMode, int xDim, int yDim, std::uint8_t* result);
