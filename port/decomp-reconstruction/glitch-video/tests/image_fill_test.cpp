// Checks for glitch::video::CImage: fill (0x5ff9b4) and the construction path - the owning constructors
// (0x602028 / 0x602110), initData's allocator (0x601988), the data-taking forms 0x602670, 0x6021f8 and
// 0x6027e8, the sub-image form 0x601b10 and the format-conversion form 0x601d38.
//
// The packings were read off the binary's switch and then confirmed by building an image over a caller's buffer
// and printing the bytes back. Expectations are written BOTH as explicit bytes at offsets 0..3 and as the
// little-endian word the buffer holds, because the byte at offset 0 is the easy thing to get backwards: for
// format 12 it is SColor component 3, not component 0.
//
// Write loop (confirmed in the listing, not inferred): `m_dataSize >> 5` passes of eight words (the eight STR at
// 0x5ffa3c..0x5ffa58, ADD R3,#0x20 at 0x5ffa5c) followed by `(m_dataSize >> 2) & 7` words (UBFX R3,R12,#2,#3 at
// 0x5ffa68). m_dataSize is a BYTE count for every format here (format 5 at 8x8 measures 128), so the loop is
// simply "fill the block in 8-word strides, then the remainder in words". A block smaller than one word (e.g.
// a 1x1 16-bit image, 2 bytes) therefore writes nothing - that is the binary's shape, not a defect.
//
// The data-taking constructors take two bools. The listing (0x6026d8, 0x60226c, 0x60285c) tests the FIRST one and
// stores the SECOND into m_ownsData (+0x29): the first set means "adopt the block the caller passes" - the
// constructor writes 0x0badf00d into +0x08 so initData, which allocates only when that pointer is null, does not
// allocate and then stores the caller's pointer over it - and the first clear means initData allocates and the
// caller's bytes are copied in. m_ownsData only decides whether the destructor frees the block afterwards. The
// checks below therefore wrap a caller's buffer with (adopt = true, own = false).
#include "glitch-video/image.hpp"

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-video/pixel_format_convert.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

using glitch::video::CImage;

glitch::core::dimension2d<std::int32_t> dims(std::int32_t width, std::int32_t height) {
    return glitch::core::dimension2d<std::int32_t>{width, height};
}

// SColor components 0..3 are bytes 0..3 of the word: a=0x12, b=0x34, c=0x56, r(alpha)=0xFF.
glitch::video::SColor sampleColor() {
    glitch::video::SColor color;
    color.setComponent(0, 0x12);
    color.setComponent(1, 0x34);
    color.setComponent(2, 0x56);
    color.setComponent(3, 0xFF);
    return color;
}

// Builds an image of the given pixel size over a caller-owned buffer and fills it.
std::vector<std::uint8_t> filled(glitch::video::E_PIXEL_FORMAT format, std::int32_t width, std::int32_t height,
                                 const glitch::video::SColor& color, std::uint32_t extraBytes = 0) {
    std::vector<std::uint8_t> bytes(static_cast<std::size_t>(width) * height * 4 + extraBytes, 0);
    CImage image(format, dims(width, height), bytes.data(), true, false);
    image.fill(color);
    return bytes;
}

std::uint32_t word(const std::vector<std::uint8_t>& bytes, std::size_t index) {
    std::uint32_t value = 0;
    std::memcpy(&value, bytes.data() + 4 * index, 4);
    return value;
}

}  // namespace

int main() {
    const glitch::video::SColor color = sampleColor();
    CHECK(color.color == 0xFF563412u);  // component 0 is the LOW byte

    // Format 12 (masks 0x0000ff00 / 0x00ff0000 / 0xff000000 / 0x000000ff): offset 0 gets component 3.
    {
        const auto bytes = filled(12, 4, 4, color);
        CHECK(bytes[0] == 0xFF && bytes[1] == 0x12 && bytes[2] == 0x34 && bytes[3] == 0x56);
        CHECK(word(bytes, 0) == 0x563412FFu);
        CHECK(word(bytes, 15) == 0x563412FFu);  // the whole 64-byte block is written
    }

    // Format 13 (masks 0x00ff0000 / 0x0000ff00 / 0x000000ff / 0xff000000): offset 0 gets component 2.
    {
        const auto bytes = filled(13, 4, 4, color);
        CHECK(bytes[0] == 0x56 && bytes[1] == 0xFF && bytes[2] == 0x12 && bytes[3] == 0x34);
        CHECK(word(bytes, 0) == 0x3412FF56u);
    }

    // Format 14 (masks 0x000000ff / 0x0000ff00 / 0x00ff0000 / 0xff000000): offset 0 gets component 1.
    {
        const auto bytes = filled(14, 4, 4, color);
        CHECK(bytes[0] == 0x34 && bytes[1] == 0x56 && bytes[2] == 0xFF && bytes[3] == 0x12);
        CHECK(word(bytes, 0) == 0x12FF5634u);
    }

    // Format 5, R5G6B5: halfword (a>>3)<<11 | (b>>2)<<5 | (c>>3), replicated into both halves of the word.
    // A 8x8 image is 16 halfwords per row * 8 rows = 128 bytes, so the whole block is written.
    {
        const std::uint32_t half = ((0x12u >> 3) << 11) | ((0x34u >> 2) << 5) | (0x56u >> 3);
        const auto bytes = filled(5, 8, 8, color);
        CHECK(word(bytes, 0) == (half | (half << 16)));
        CHECK(word(bytes, 31) == (half | (half << 16)));
    }

    // Format 8, A1R5G5B5: halfword (r>>7)<<15 | (a>>3)<<10 | (b>>3)<<5 | (c>>3), replicated.
    {
        const std::uint32_t half = ((0xFFu >> 7) << 15) | ((0x12u >> 3) << 10) | ((0x34u >> 3) << 5) | (0x56u >> 3);
        const auto bytes = filled(8, 8, 8, color);
        CHECK(word(bytes, 0) == (half | (half << 16)));
    }

    // A 1x1 16-bit image has a 2-byte block: no whole word pair and a tail of 0, so fill writes nothing.
    {
        const auto bytes = filled(5, 1, 1, color);
        CHECK(word(bytes, 0) == 0u);
    }

    // A format outside the five writes nothing.
    {
        const auto bytes = filled(2, 4, 4, color);
        CHECK(word(bytes, 0) == 0u);
    }

    // The owning constructors (0x602028 and 0x602110) allocate their own block. Format 12 is 4 bytes per
    // pixel, so 4x4 is a 16-byte pitch and a 64-byte block; the reference count starts at 0, not at the
    // IReferenceCounted default of 1, because that is what every original constructor stores.
    {
        glitch::video::CImage owned(12, glitch::core::dimension2d<std::int32_t>{4, 4});
        CHECK(owned.referenceCounter == 0);
        CHECK(owned.m_data != nullptr);
        CHECK(owned.m_pitch == 16);
        CHECK(owned.m_dataSize == 64);
        CHECK(owned.m_ownsData == 1);
        CHECK(owned.m_hasMipmaps == 0);
        CHECK(owned.m_mipData == nullptr);  // no mip chain without the flag
        owned.fill(color);
        CHECK(word(std::vector<std::uint8_t>(owned.m_data, owned.m_data + 64), 0) == 0x563412FFu);
    }
    {
        glitch::video::CImage mip(5, glitch::core::dimension2d<std::int32_t>{4, 4}, true);
        CHECK(mip.referenceCounter == 0);
        CHECK(mip.m_hasMipmaps == 1);
        CHECK(mip.m_mipData != nullptr);       // a chain was built
        CHECK(mip.m_mipData[mip.m_mipLevels] == nullptr);  // the chain is null-terminated
        CHECK(mip.m_pitch == 8);               // 4 pixels * 16 bits / 8
        CHECK(mip.m_dataSize == 32);
    }

    // ~CImage (0x601804) releases the block and the chain only when the image owns them. The first block goes
    // out of scope at the closing brace, so this exercises the destructor; a sanitizer or a leak checker would
    // see a leak here if the destructor did nothing.
    {
        glitch::video::CImage owned(12, glitch::core::dimension2d<std::int32_t>{8, 8});
        CHECK(owned.m_data != nullptr);
        CHECK(owned.m_dataSize == 256);
        owned.fill(color);  // touch it so the block is not optimised away
        CHECK(word(std::vector<std::uint8_t>(owned.m_data, owned.m_data + 4), 0) == 0x563412FFu);
    }

    // ---- 0x602670 (C2 0x60272c): CImage(format, size, data, copy, own) ----
    // The listing tests the FIRST bool (CMP R6,#0 with BNE 0x602704 at 0x6026d8): set adopts the caller's block,
    // clear makes initData allocate and copies pitch * height bytes of the caller's block into it. The second bool
    // goes to m_ownsData and only decides whether the destructor frees the block.
    {
        std::vector<std::uint8_t> bytes(4 * 4 * 4, 0x5A);
        CImage adopt(12, dims(4, 4), bytes.data(), true, false);
        CHECK(adopt.m_data == bytes.data());  // adopted, nothing allocated
        CHECK(adopt.m_ownsData == 0);
        CHECK(adopt.m_pitch == 16);
        CHECK(adopt.m_dataSize == 64);
        CHECK(adopt.m_mipData == nullptr);
        adopt.fill(color);
        CHECK(bytes[0] == 0xFF && bytes[1] == 0x12);  // the caller's buffer is the image's buffer
    }
    {
        std::vector<std::uint8_t> bytes(4 * 4 * 4, 0x5A);
        CImage ownCopy(12, dims(4, 4), bytes.data(), false, true);
        CHECK(ownCopy.m_data != bytes.data());  // a block of its own
        CHECK(ownCopy.m_ownsData == 1);
        CHECK(ownCopy.m_pitch == 16);
        CHECK(ownCopy.m_dataSize == 64);
        CHECK(ownCopy.m_mipData == nullptr);
        CHECK(bytes[0] == 0x5A);  // copied out of the caller's block, not adopted
        CHECK(ownCopy.m_data[0] == 0x5A && ownCopy.m_data[63] == 0x5A);
    }

    // ---- 0x6027e8 (C2 0x602938): CImage(format, size, data, size in bytes, mip level count, copy, own) ----
    // The block holds every level back to back and +0x0c becomes an array of pointers into it, one level past each
    // preceding one, terminated by null. m_hasMipmaps stays clear: the levels live inside the block, so the
    // destructor must free the block once and the array once and never the levels individually.
    {
        // 4x4 ARGB8888: level 0 is 64 bytes, level 1 (2x2) 16, level 2 (1x1) 4.
        std::uint8_t* block = new std::uint8_t[84]();
        block[0] = 0x11;
        block[64] = 0x22;
        block[80] = 0x33;
        CImage img(12, dims(4, 4), block, 64, 2, true, true);  // adopt, own: the image frees the block
        CHECK(img.m_data == block);
        CHECK(img.m_pitch == 16);
        CHECK(img.m_dataSize == 64);  // the fourth argument, not pitch * height
        CHECK(img.m_mipLevels == 2);
        CHECK(img.m_hasMipmaps == 0);
        CHECK(img.m_ownsData == 1);
        CHECK(img.m_mipData != nullptr);
        CHECK(img.m_mipData[0] == static_cast<void*>(img.m_data + 64));
        CHECK(img.m_mipData[1] == static_cast<void*>(img.m_data + 80));
        CHECK(img.m_mipData[2] == nullptr);
        CHECK(static_cast<std::uint8_t*>(img.m_mipData[0])[0] == 0x22);
        CHECK(static_cast<std::uint8_t*>(img.m_mipData[1])[0] == 0x33);
    }
    {
        // The same block with the first bool clear: initData allocates dataSize bytes and copies them, and the
        // level array is built over that block.
        std::vector<std::uint8_t> block(84, 0x7E);
        CImage img(12, dims(4, 4), block.data(), 84, 2, false, true);
        CHECK(img.m_data != block.data());
        CHECK(img.m_dataSize == 84);
        CHECK(img.m_data[0] == 0x7E && img.m_data[83] == 0x7E);
        CHECK(img.m_mipData[0] == static_cast<void*>(img.m_data + 64));
        CHECK(img.m_mipData[1] == static_cast<void*>(img.m_data + 80));
        CHECK(img.m_mipData[2] == nullptr);
    }
    {
        // No levels: the array stays null. Adopted, so the caller's vector is not freed by the image.
        std::vector<std::uint8_t> block(64, 0x7E);
        CImage img(12, dims(4, 4), block.data(), 64, 0, true, false);
        CHECK(img.m_data == block.data());
        CHECK(img.m_mipLevels == 0);
        CHECK(img.m_mipData == nullptr);
    }

    // ---- 0x6021f8 (C2 0x602434): CImage(format, size, data, mip data, copy, own) ----
    // Adopt: the caller's block and the caller's level array are used as they are; the level count is recovered by
    // walking that array, and m_hasMipmaps is set only when the walk reaches a null entry with width and height
    // both 1.
    {
        std::vector<std::uint8_t> pixels(64, 0x21);
        std::vector<std::uint8_t> level1(16, 0x22);
        std::vector<std::uint8_t> level2(4, 0x23);
        void* levels[3] = {level1.data(), level2.data(), nullptr};
        CImage img(12, dims(4, 4), pixels.data(), levels, true, false);
        CHECK(img.m_data == pixels.data());
        CHECK(img.m_mipData == levels);
        CHECK(img.m_mipLevels == 2);
        CHECK(img.m_hasMipmaps == 1);
        CHECK(img.m_pitch == 16);
        CHECK(img.m_dataSize == 64);
        CHECK(img.m_ownsData == 0);
    }
    {
        // Adopt with no level array: no array, no mip flag, no level count.
        std::vector<std::uint8_t> pixels(64, 0x21);
        CImage img(12, dims(4, 4), pixels.data(), nullptr, true, false);
        CHECK(img.m_data == pixels.data());
        CHECK(img.m_mipData == nullptr);
        CHECK(img.m_mipLevels == 0);
        CHECK(img.m_hasMipmaps == 0);
    }
    {
        // First bool clear, no level array: initData allocates and pitch * height bytes are copied in.
        std::vector<std::uint8_t> pixels(64, 0x31);
        CImage img(12, dims(4, 4), pixels.data(), nullptr, false, true);
        CHECK(img.m_data != pixels.data());
        CHECK(img.m_ownsData == 1);
        CHECK(img.m_hasMipmaps == 0);
        CHECK(img.m_mipData == nullptr);
        CHECK(img.m_data[0] == 0x31 && img.m_data[63] == 0x31);
    }
    {
        // First bool clear with mip data: the flag is set before initData, so a full chain is allocated as well,
        // level 0 is copied in and every caller level is copied into the chain slot initData made for it
        // (4x4 format 12: level 1 is 2 * 4 * 2 = 16 bytes, level 2 is 1 * 4 * 1 = 4).
        std::vector<std::uint8_t> pixels(64, 0x41);
        std::vector<std::uint8_t> level1(16, 0x42);
        std::vector<std::uint8_t> level2(4, 0x43);
        void* levels[3] = {level1.data(), level2.data(), nullptr};
        CImage img(12, dims(4, 4), pixels.data(), levels, false, true);
        CHECK(img.m_data != pixels.data());
        CHECK(img.m_hasMipmaps == 1);
        CHECK(img.m_mipLevels == 2);
        CHECK(img.m_mipData != nullptr && img.m_mipData != levels);
        CHECK(img.m_mipData[2] == nullptr);
        CHECK(img.m_data[0] == 0x41);
        CHECK(static_cast<std::uint8_t*>(img.m_mipData[0])[0] == 0x42);
        CHECK(static_cast<std::uint8_t*>(img.m_mipData[0])[15] == 0x42);
        CHECK(static_cast<std::uint8_t*>(img.m_mipData[1])[0] == 0x43);
        CHECK(static_cast<std::uint8_t*>(img.m_mipData[1])[3] == 0x43);
    }

    // ---- 0x601b10 (C2 0x601c24): the sub-image constructor ----
    // The pixel transfer is pixel_format::convert with the source format equal to the destination format, so it takes
    // convert's "copy()" branch (0x5ee40c, reconstructed): rows = height, pitch = computePitch(12, 2) = 8, and because
    // the source pitch (16) differs from that 8 the copy is one memcpy per row, the source advancing by its own
    // pitch. The block below checks the fields and the allocation first, then overwrites the source bytes with their
    // offsets so the transferred region is measurable.
    {
        boost::intrusive_ptr<CImage> source(new CImage(12, dims(4, 4)), true);
        source->fill(color);
        boost::intrusive_ptr<CImage> sub(
            new CImage(source, glitch::core::position2d<std::int32_t>{1, 1}, dims(2, 2)), true);
        CHECK(sub->m_format == 12);
        CHECK(sub->m_width == 2 && sub->m_height == 2);
        CHECK(sub->m_pitch == 8);  // computePitch(12, 2) = 2 * 32 / 8
        CHECK(sub->m_dataSize == 16);
        CHECK(sub->m_ownsData == 1);
        CHECK(sub->m_hasMipmaps == 0);
        CHECK(sub->m_mipData == nullptr);
        CHECK(sub->m_data != nullptr);

        // Source 4x4 format 12: pitch 16. The call's source pointer is m_data + 1 * 16 + 1 * 4 = offset 20, so row 0
        // of the sub-image is source bytes 20..27 and row 1 (after the source advances by 16) is 36..43.
        for (std::uint32_t i = 0; i < source->m_dataSize; ++i) {
            source->m_data[i] = static_cast<std::uint8_t>(i);
        }
        boost::intrusive_ptr<CImage> copied(
            new CImage(source, glitch::core::position2d<std::int32_t>{1, 1}, dims(2, 2)), true);
        const std::uint8_t expected0[8] = {20, 21, 22, 23, 24, 25, 26, 27};
        const std::uint8_t expected1[8] = {36, 37, 38, 39, 40, 41, 42, 43};
        CHECK(std::memcmp(copied->m_data, expected0, sizeof expected0) == 0);
        CHECK(std::memcmp(copied->m_data + 8, expected1, sizeof expected1) == 0);

        boost::intrusive_ptr<CImage> empty;
        boost::intrusive_ptr<CImage> none(
            new CImage(empty, glitch::core::position2d<std::int32_t>{0, 0}, dims(2, 2)), true);
        CHECK(none->m_format == 39);  // the table's "no row matched" value; m_ownsData stays 1
        CHECK(none->m_data == nullptr && none->m_mipData == nullptr);
        CHECK(none->m_width == 0 && none->m_height == 0 && none->m_dataSize == 0);
        CHECK(none->m_ownsData == 1);
    }

    // ---- 0x601d38 (C2 0x601eb0): the format-conversion constructor ----
    {
        // RGB565 -> ARGB4444 is an arm the port's convert models (pixel_format_convert_test.cpp check 2 uses the
        // same pair). The destination is compared against a direct convert call with the arguments the listing
        // passes, so the constructor's wiring (format order, pitches, dimensions) is what is under test.
        boost::intrusive_ptr<CImage> source(new CImage(5, dims(2, 2)), true);
        source->fill(color);
        boost::intrusive_ptr<CImage> converted(new CImage(6, source), true);
        CHECK(converted->m_format == 6);
        CHECK(converted->m_width == 2 && converted->m_height == 2);
        CHECK(converted->m_pitch == 4);  // computePitch(6, 2) = 2 * 16 / 8
        CHECK(converted->m_dataSize == 8);
        CHECK(converted->m_ownsData == 1);
        CHECK(converted->m_mipData == nullptr);

        std::uint8_t expected[8] = {0};
        CHECK(glitch::video::pixel_format::convert(5, source->m_data, source->m_pitch, 6, expected,
                                                   converted->m_pitch, converted->m_width, converted->m_height,
                                                   false) == 1);
        CHECK(std::memcmp(converted->m_data, expected, sizeof(expected)) == 0);
    }
    {
        // A pair both trees refuse (a compressed destination row) takes the failure path at 0x601dfc: format 39,
        // the block freed and cleared, and the image left empty with ownsData clear. The source carries a mip
        // chain, so the level-by-level free in that path runs as well.
        boost::intrusive_ptr<CImage> mipSource(new CImage(5, dims(4, 4), true), true);
        boost::intrusive_ptr<CImage> failed(new CImage(17, mipSource), true);
        CHECK(failed->m_format == 39);
        CHECK(failed->m_data == nullptr);
        CHECK(failed->m_dataSize == 0);
        CHECK(failed->m_ownsData == 0);
        CHECK(failed->m_width == 0 && failed->m_height == 0);
    }

    std::printf("%s\n", failures ? "image_fill: FAILED" : "image_fill: ok");
    return failures != 0;
}
