// Checks the DIRECTION and the clip arithmetic of glitch::video::CImage::copyTo - both the full form
// (0x600708) and the wrapper (0x60090c).
//
// Direction, from the listing rather than from the name: pixel_format::convert's mangled signature is
// ...NS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb - parameter 2 is void const* (read) and parameter 5 is void*
// (written). 0x600880's call passes this image's format/data/pitch (r7 = r0 = this: LDR R0,[R7,#0x20],
// LDR R12,[R7,#8], LDR R2,[R7,#0x18]) as parameters 1-3, so THIS image is the pixel SOURCE, and the
// intrusive_ptr argument supplies the write pointer. The argument also supplies everything else a
// destination would: the mip-level guard (+0x24 at 0x60071c) and the default clip rectangle
// (getDimension on it at 0x6008e8). So `source.copyTo(destination)` must write the DESTINATION.
//
// The wrapper 0x60090c builds its read rectangle from a1[4]/a1[5] (LDR LR,[R0,#0x14] and LDR R4,[R0,#0x10]
// at 0x600910/0x600914), i.e. from THIS image's width/height, which only makes sense with this image as
// the source.
//
// Run: bash tools/trackb/check_tu.sh --test <this file> glitch-video/src/image.cpp
//        glitch-video/src/pixel_format_convert.cpp glitch-video/src/pixel_format.cpp
//        glitch-video/src/pixel_format_table.cpp glitch-core-io/src/logging.cpp
//        glitch-core-io/src/process_buffer_heap.cpp core-platform/src/memory.cpp
// (or link it against build/tb-int's archives with a freshly compiled image.cpp, as the image_fill target does)
#include "glitch-video/image.hpp"

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

using glitch::video::CImage;
using glitch::video::E_PIXEL_FORMAT;

// Format 12 is ARGB8888: 4 bytes per pixel, so a tagged byte pattern reads back exactly.
constexpr E_PIXEL_FORMAT kFormat = static_cast<E_PIXEL_FORMAT>(12);

boost::intrusive_ptr<CImage> makeImage(std::int32_t width, std::int32_t height, std::uint8_t tag) {
    boost::intrusive_ptr<CImage> image(new CImage(kFormat, glitch::core::dimension2d<std::int32_t>{width, height}),
                                       true);
    for (std::uint32_t i = 0; i < image->m_dataSize; ++i) {
        image->m_data[i] = tag;
    }
    return image;
}

std::uint8_t at(const CImage& image, std::uint32_t x, std::uint32_t y) {
    return image.m_data[y * image.m_pitch + 4 * x];
}

}  // namespace

int main() {
    // ---- 0x600708: the write side is the ARGUMENT ----
    {
        boost::intrusive_ptr<CImage> source = makeImage(4, 4, 0x11);
        boost::intrusive_ptr<CImage> destination = makeImage(8, 8, 0x22);
        const glitch::core::rect<std::int32_t> whole{0, 0, 4, 4};
        source->copyTo(destination, glitch::core::position2d<std::int32_t>{1, 2}, whole, nullptr, 0);

        // The destination receives the source's bytes, at the placement.
        CHECK(at(*destination, 1, 2) == 0x11);
        CHECK(at(*destination, 4, 5) == 0x11);
        // The destination is untouched outside that 4x4 region.
        CHECK(at(*destination, 0, 0) == 0x22);
        CHECK(at(*destination, 5, 2) == 0x22);
        // ... and the source is left exactly as it was: it is the read side.
        CHECK(at(*source, 0, 0) == 0x11);
        CHECK(at(*source, 3, 3) == 0x11);
    }

    // A second pair with the tags swapped, so a mirror cannot pass by coincidence.
    {
        boost::intrusive_ptr<CImage> source = makeImage(4, 4, 0x33);
        boost::intrusive_ptr<CImage> destination = makeImage(8, 8, 0x44);
        const glitch::core::rect<std::int32_t> whole{0, 0, 4, 4};
        source->copyTo(destination, glitch::core::position2d<std::int32_t>{0, 0}, whole, nullptr, 0);
        CHECK(at(*destination, 0, 0) == 0x33);
        CHECK(at(*destination, 3, 3) == 0x33);
        CHECK(at(*destination, 4, 0) == 0x44);
        CHECK(at(*source, 0, 0) == 0x33);
        CHECK(at(*source, 3, 3) == 0x33);
    }

    // ---- 0x60090c: the wrapper's read rectangle is THIS image's extent ----
    // This image is 3x2 and the destination 8x8: the wrapper must therefore transfer exactly 3x2
    // pixels, i.e. the source's extent. Building the rectangle from the destination instead (the old
    // mirrored body) would ask for 8x8 pixels out of a 3x2 source.
    {
        boost::intrusive_ptr<CImage> source = makeImage(3, 2, 0x55);
        boost::intrusive_ptr<CImage> destination = makeImage(8, 8, 0x66);
        source->copyTo(destination, glitch::core::position2d<std::int32_t>{1, 1}, 0);

        CHECK(at(*destination, 1, 1) == 0x55);
        CHECK(at(*destination, 3, 2) == 0x55);  // the 3rd column / 2nd row of the source extent
        CHECK(at(*destination, 4, 1) == 0x66);  // just outside the source's width
        CHECK(at(*destination, 1, 3) == 0x66);  // just outside the source's height
        CHECK(at(*destination, 0, 0) == 0x66);
        CHECK(at(*source, 0, 0) == 0x55 && at(*source, 2, 1) == 0x55);
    }

    // ---- the clip rectangle still culls, and the source is not the victim ----
    {
        boost::intrusive_ptr<CImage> source = makeImage(4, 4, 0x77);
        boost::intrusive_ptr<CImage> destination = makeImage(8, 8, 0x88);
        const glitch::core::rect<std::int32_t> whole{0, 0, 4, 4};
        const glitch::core::rect<std::int32_t> clip{0, 0, 2, 2};
        // position.X (5) > clipRight (2), so 0x600758 culls the call.
        source->copyTo(destination, glitch::core::position2d<std::int32_t>{5, 0}, whole, &clip, 0);
        CHECK(at(*destination, 0, 0) == 0x88);
        CHECK(at(*destination, 5, 0) == 0x88);
        // The source survives every path.
        CHECK(at(*source, 0, 0) == 0x77);
    }

    std::printf("%s\n", failures ? "image_copyto: FAILED" : "image_copyto: ok");
    return failures != 0;
}
