// Short host check for pixel_format::swapBytes (word path and reverse path).
#include <cstdint>
#include <cstring>
#include "glitch-video/pixel_format.hpp"

int main() {
    using namespace glitch::video;
    // Row 1 has packed type 1: 32-bit words, bytes swapped within each 16-bit half.
    const uint8_t src8[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    uint8_t dst[8] = {};
    if (pixel_format::swapBytes(1, src8, 8, false, dst) != 1) return 1;
    const uint8_t want8[8] = {2, 1, 4, 3, 6, 5, 8, 7};
    if (std::memcmp(dst, want8, 8) != 0) return 2;

    // Tail: 6 bytes is one word plus two bytes (low from in[5], high from in[4]).
    uint8_t dst6[8] = {};
    if (pixel_format::swapBytes(1, src8, 6, false, dst6) != 1) return 3;
    if (dst6[4] != 6 || dst6[5] != 5) return 4;

    // Row 2 has packed type 0 and returns 0 (no swap).
    uint8_t dst0[8] = {};
    if (pixel_format::swapBytes(2, src8, 8, false, dst0) != 0) return 5;
    // flag true also refuses.
    if (pixel_format::swapBytes(1, src8, 8, true, dst0) != 0) return 6;

    // Row 0 has packed type 0 as well: refused.
    // Reverse path: row 16 (packed type 2) reverses each word.
    const uint8_t src4[4] = {1, 2, 3, 4};
    uint8_t dst4[4] = {};
    if (pixel_format::swapBytes(16, src4, 4, false, dst4) != 1) return 7;
    const uint8_t want4[4] = {4, 3, 2, 1};
    if (std::memcmp(dst4, want4, 4) != 0) return 8;
    return 0;
}
