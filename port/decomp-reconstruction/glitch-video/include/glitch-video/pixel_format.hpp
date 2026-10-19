// glitch::video::pixel_format: the pixel format descriptor table and the size
// helpers that read it. The original table (pixel_format::detail::PFDTable) is
// 40 entries of 0x28 bytes in .rodata at ELF 0x8e36c0; its bytes were recovered
// from the binary and are defined in src/pixel_format_table.cpp. The helpers are
// reconstructed over this layout.
#pragma once

#include <cstdint>

#include "glitch-video/deps/glitch_video_types.hpp"

namespace glitch::video::pixel_format {

namespace detail {

// The original's 40 rows (39 = "unknown"), then the port's ETC2 rows (remaster HD textures, REMASTER.md "GPU textures").
constexpr int kFormatCount = 42;
constexpr int kFormatETC2RGB8 = 40;      // GL_COMPRESSED_RGB8_ETC2 (0x9274), 4x4 blocks of 8 bytes
constexpr int kFormatETC2RGBA8 = 41;     // GL_COMPRESSED_RGBA8_ETC2_EAC (0x9278), 4x4 blocks of 16 bytes

// One row of PFDTable, 0x28 bytes in the original.
struct SFormatEntry {
    uint32_t flags = 0;          // +0x00, bit 0x40: getPackedType returns packedType as stored
    uint32_t key[4] = {};        // +0x04..+0x13, the four words getFormat compares
    int8_t packedType = 0;       // +0x14
    uint8_t bytesPerBlock = 0;   // +0x15, bytes per block for compressed formats
    uint8_t bitsPerPixel = 0;    // +0x16
    uint8_t field17 = 0;         // +0x17, compared with 1, 2 and 3 by getPackedType
    uint8_t unknown18[12] = {};  // +0x18..+0x23, not read by these helpers
    uint8_t blockWidth = 0;      // +0x24, pixels per block row (above 1 selects the block path)
    uint8_t blockHeight = 0;     // +0x25, rows per block (below 2 selects the plain path)
    uint8_t unknown26 = 0;       // +0x26
    uint8_t minSize = 0;         // +0x27, minimum size in bytes of one plane
};
static_assert(sizeof(SFormatEntry) == 0x28, "PFDTable entries are 0x28 bytes");

// Table data: the original's 40 rows and the port's two ETC2 rows, defined in src/pixel_format_table.cpp.
extern SFormatEntry PFDTable[kFormatCount];

}  // namespace detail

// 0x5ed954: packed type of a format; -1 when the descriptor is inconsistent.
char getPackedType(E_PIXEL_FORMAT format);

// 0x5eda70: index of the table row whose four key words match; 39 when none does.
int getFormat(uint32_t a, uint32_t b, uint32_t c, uint32_t d);

// 0x5edaec: bytes per row of a width in pixels.
uint32_t computePitch(E_PIXEL_FORMAT format, uint32_t width);

// 0x5edb48: bytes of one plane, at least the format's minimum.
uint32_t computeSizeInBytes(E_PIXEL_FORMAT format, uint32_t width, uint32_t height);

// 0x5edbb8: depth planes of the 2-D size.
int computeSizeInBytes(E_PIXEL_FORMAT format, uint32_t width, uint32_t height, uint32_t depth);

// 0x5edbcc: one mip level. The width is shifted only when flag is false. The
// original pseudocode is void, but the ARM tail-branches to the 2-D size helper,
// so the size is returned.
uint32_t computeMipmapSizeInBytes(E_PIXEL_FORMAT format, uint32_t width, uint32_t height, uint8_t level, bool flag);

// 0x5edbec: one 3-D mip level, same width rule as above.
uint32_t computeMipmapSizeInBytes(E_PIXEL_FORMAT format, uint32_t width, uint32_t height, uint32_t depth,
                                  uint8_t level, bool flag);

// 0x5edc18: sum of the mip levels 0 .. levels - 1.
int computeSizeInBytes(E_PIXEL_FORMAT format, uint32_t width, uint32_t height, uint32_t depth, uint8_t levels,
                       bool flag);

// 0x5edc80: the same sum with depth 1. The ARM calls 0x5edc18 with depth 1.
int computeSizeInBytes(E_PIXEL_FORMAT format, uint32_t width, uint32_t height, uint8_t levels, bool flag);

// 0x5ed9d0 computeRelativeSwizzleTable(from, to, table): writes the byte-swizzle entries
// of table for the row pair. Row bytes +0x20..+0x23 (unknown18[8..11]) are the source
// of each entry, indexed by the destination row. Returns table, as the original does.
uint8_t* computeRelativeSwizzleTable(E_PIXEL_FORMAT from, E_PIXEL_FORMAT to, uint8_t* table);

// 0x5ee104 unpackPalettized(src, srcPitch, bpp, paletteFormat, palette, dst, dstPitch, width, height, flip): expands a 1, 2, 4
// or 8 bit palettised image into the palette's format (1, 2 or 4 bytes per entry), bottom row first when flip is set. 1 on
// success, 0 (with a log line) for an in-place call, a bad bpp or a palette format of another size.
int unpackPalettized(const void* src, uint32_t srcPitch, uint8_t bpp, E_PIXEL_FORMAT paletteFormat, const void* palette,
                     void* dst, uint32_t dstPitch, uint32_t width, uint32_t height, bool flip)
    asm("_ZN6glitch5video12pixel_format16unpackPalettizedEPKvjhNS0_14E_PIXEL_FORMATES3_Pvjjjb");

// 0x5edd9c swapBytes(format, src, size, flag, dst): byte-swaps size bytes of src into dst
// for packed types 1 and 3 (32-bit words) and fully reverses each 32-bit word for others.
// Returns 1 when it copied, 0 when the format or flag rules out a swap (dst untouched).
int swapBytes(E_PIXEL_FORMAT format, const void* src, uint32_t size, bool flag, void* dst);

}  // namespace glitch::video::pixel_format
