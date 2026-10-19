// glitch::video::pixel_format::convert (0x5f95ac): the pixel transfer between two formats. The helpers (the packed converters, the
// luminance, swizzle and decompress arms, convertPacked 0x5f4fe8, the same-format copy) are in the anonymous namespace of the .cpp,
// as in the binary.
#pragma once

#include <cstdint>

#include "glitch-video/pixel_format.hpp"

namespace glitch::video::pixel_format {

// 0x5f95ac convert(srcFormat, src, srcPitch, dstFormat, dst, dstPitch, width, height, flip). A pitch of 0 means the format's
// natural pitch for the width. Returns 1 when the pixels were transferred and 0 when not (an unsupported pair, a compressed
// destination, a mismatch of pitches for an in-place conversion, or a float format that needs a real conversion).
int convert(E_PIXEL_FORMAT srcFormat, const void* src, uint32_t srcPitch, E_PIXEL_FORMAT dstFormat, void* dst,
            uint32_t dstPitch, uint32_t width, uint32_t height, bool flip)
    asm("_ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb");

}  // namespace glitch::video::pixel_format
