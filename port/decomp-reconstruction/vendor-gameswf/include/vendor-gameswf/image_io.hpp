// gameswf image factories, mip-map reduction, JPEG readers and the TGA writer (Gameloft build, namespace
// gameswf::). Upstream r1714 has the same functions in namespace image:: (base/image.cpp, base/image.h) on
// the upstream image::rgb / image::rgba / image::alpha classes. The binary's classes are the gameswf::image_*
// types in image_rgb.hpp, image_rgba.hpp and image_alpha.hpp.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-5.cpp (the addresses are on each declaration).
//
// The pure arithmetic (mip-map shape and 2x2 average, TGA header bytes) is in namespace gameswf::image_dh2
// below, with no dependency on the other units, so the test can check it on its own.

#ifndef VENDOR_GAMESWF_IMAGE_IO_HPP
#define VENDOR_GAMESWF_IMAGE_IO_HPP

#include <cstddef>
#include <cstdint>

#include "vendor-gameswf/image_alpha.hpp"
#include "vendor-gameswf/image_rgb.hpp"
#include "vendor-gameswf/image_rgba.hpp"

// Declared by base/tu_file.h and base/jpeg.h (global namespace in the vendored base library).
class tu_file;
namespace jpeg {
struct input;
}  // namespace jpeg

namespace gameswf {

// 0x7b5e48. Operator new(0x18, MemHint 0), then the image_rgb constructor. Returns the new surface.
image_rgb* create_rgb(int width, int height);
// 0x7b5cb4. Same shape as create_rgb, for image_rgba.
image_rgba* create_rgba(int width, int height);
// 0x7b5c84. Same shape as create_rgb, for image_alpha.
image_alpha* create_alpha(int width, int height);

// 0x7b537c. Halves the surface in place (2x2 average when both dimensions are even, the shape changes in any case).
void make_next_miplevel(image_rgb* im);
// 0x7b552c. The same for image_rgba (4 bytes per pixel).
void make_next_miplevel(image_rgba* im);

// 0x7b5f48. Reads a whole JPEG from the file. Returns null when the header does not open.
image_rgb* read_jpeg(::tu_file* in);
// 0x7b5fe0. Opens the file "rb" and calls read_jpeg(tu_file*). Null when the file did not open.
image_rgb* read_jpeg(const char* filename);
// 0x7b5f1c. Reads an SWF JPEG2 image: the tables come first (create_swf_jpeg2_header_only), then the image.
image_rgb* read_swf_jpeg2(::tu_file* in);
// 0x7b5e78. Reads the image from a jpeg::input whose tables are already loaded.
image_rgb* read_swf_jpeg2_with_tables(::jpeg::input* loader);
// 0x7b5ce4. Reads an SWF JPEG3 image and stores it as RGBA with alpha 255.
image_rgba* read_swf_jpeg3(::tu_file* in);
// 0x7b6034. Writes an uncompressed 32-bit TGA: the 18-byte header, then the rows (bytes r, g, b, a per pixel).
void write_tga(::tu_file* out, image_rgba* im);

namespace image_dh2 {

// The shape that make_next_miplevel gives the surface.
struct miplevel_shape {
    int width;     // new width: max(1, width >> 1)
    int height;    // new height: max(1, height >> 1)
    int pitch;     // new pitch: rgb (3 * width + 3) & ~3, rgba 4 * width
    bool resample; // true when the source is exactly 2x the new size, so the 2x2 average runs
};

// The rgb shape. The binary's guard (width == 2 * new width) is the same as upstream's.
inline miplevel_shape rgb_miplevel_shape(int width, int height) {
    miplevel_shape s{};
    s.width = width >> 1;
    if (s.width < 1) {
        s.width = 1;
    }
    s.height = height >> 1;
    if (s.height < 1) {
        s.height = 1;
    }
    s.pitch = static_cast<int>((3u * static_cast<unsigned int>(s.width) + 3u) & 0xFFFFFFFCu);
    s.resample = (width == 2 * s.width && height == 2 * s.height);
    return s;
}

// The rgba shape: the same width and height rules, pitch 4 * width.
inline miplevel_shape rgba_miplevel_shape(int width, int height) {
    miplevel_shape s{};
    s.width = width >> 1;
    if (s.width < 1) {
        s.width = 1;
    }
    s.height = height >> 1;
    if (s.height < 1) {
        s.height = 1;
    }
    s.pitch = static_cast<int>(4u * static_cast<unsigned int>(s.width));
    s.resample = (width == 2 * s.width && height == 2 * s.height);
    return s;
}

// The 2x2 average, in place. Output row j (pitch dst_pitch) gets the average of source rows 2j and 2j+1
// (pitch src_pitch), columns 2i and 2i+1, one channel at a time (channels is 3 or 4). The sum of four bytes
// is shifted right by 2. Each output pixel is read in full before it is stored, as the binary does.
inline void downsample_2x2(std::uint8_t* data, int src_pitch, int dst_pitch, int new_w, int new_h, int channels) {
    for (int j = 0; j < new_h; ++j) {
        std::uint8_t* out = data + static_cast<std::ptrdiff_t>(j) * dst_pitch;
        const std::uint8_t* in = data + static_cast<std::ptrdiff_t>(2 * j) * src_pitch;
        for (int i = 0; i < new_w; ++i) {
            std::uint8_t value[4] = {0, 0, 0, 0};
            for (int c = 0; c < channels; ++c) {
                const int sum = in[c] + in[c + channels] + in[c + src_pitch] + in[c + channels + src_pitch];
                value[c] = static_cast<std::uint8_t>(sum >> 2);
            }
            for (int c = 0; c < channels; ++c) {
                out[c] = value[c];
            }
            out += channels;
            in += 2 * channels;
        }
    }
}

// The 18-byte TGA header that write_tga writes: id length 0, colour map type 0, image type 2 (uncompressed
// true colour), colour map origin, length and entry size 0, x and y origin 0, width and height as 16-bit
// little-endian values (the low 16 bits), pixel depth 32, image descriptor 0.
inline void tga_header(int width, int height, std::uint8_t (&out)[18]) {
    const unsigned int w = static_cast<unsigned int>(width);
    const unsigned int h = static_cast<unsigned int>(height);
    out[0] = 0;
    out[1] = 0;
    out[2] = 2;
    for (int i = 3; i <= 11; ++i) {
        out[i] = 0;
    }
    out[12] = static_cast<std::uint8_t>(w & 0xFFu);
    out[13] = static_cast<std::uint8_t>((w >> 8) & 0xFFu);
    out[14] = static_cast<std::uint8_t>(h & 0xFFu);
    out[15] = static_cast<std::uint8_t>((h >> 8) & 0xFFu);
    out[16] = 32;
    out[17] = 0;
}

}  // namespace image_dh2

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_IMAGE_IO_HPP
