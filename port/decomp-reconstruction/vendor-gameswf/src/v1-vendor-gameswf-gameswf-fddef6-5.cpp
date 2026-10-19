// Batch v1-vendor-gameswf-gameswf-fddef6-5 (vendor-gameswf, owner gameswf, part 6 of 8), 20 functions.
//
// gameswf r1714 with Gameloft changes, as built into libDungeonHunter2.so (32-bit ARM). Per-function status
// and notes are in ledger.d/v1-vendor-gameswf-gameswf-fddef6-5.csv.
//
//   0x7b2298        grid_index_pick_good_grid_size<float> (clone, grid scale folded)   grid_cells.hpp
//   0x7b526c/527c   gameswf::scanline (non-const and const)                             body here
//   0x7b537c/552c   gameswf::make_next_miplevel (rgb, rgba)                             image_io.hpp
//   0x7b5c84/5cb4/5e48  gameswf::create_alpha, create_rgba, create_rgb                  image_io.hpp
//   0x7b5ce4        gameswf::read_swf_jpeg3                                            image_io.hpp
//   0x7b5e78        gameswf::read_swf_jpeg2_with_tables                                image_io.hpp
//   0x7b5f1c        gameswf::read_swf_jpeg2                                            image_io.hpp
//   0x7b5f48/5fe0   gameswf::read_jpeg (tu_file*, char const*)                         image_io.hpp
//   0x7b6034        gameswf::write_tga                                                 image_io.hpp
//   0x7b65d8..6624  gameswf::mem_seek_func, mem_seek_to_end_func, mem_tell_func,
//                   mem_get_eof_func (internal linkage in the binary)                 static here
//   0x7b6c8c        gameswf::buffered_write                                            tu_file_callbacks.hpp
//   0x7b6c94        gameswf::buffered_seek                                             tu_file_callbacks.hpp
//
// Compile scope. This TU needs declarations only from the other units: the image_rgb, image_rgba and image_alpha
// constructors (pack15 and gameswf-image_alpha), operator new(size, swf::MemHint) (core-platform), free_internal
// (gameswf_alloc), destruct<jpeg::input> (fddef6-1), and tu_file and jpeg::input (upstream base/). check_tu.sh
// compiles it. It is not linked into the test, which tests the pure helpers in the headers.
//
// Upstream definitions with the same name are not replaced: the upstream image:: functions and the upstream
// grid_index template are in other namespaces (or take another argument list), so nothing is wrapped in #if 0.

#include <cstddef>
#include <cstdint>
#include <new>

#include "base/grid_index.h"         // index_box (global in upstream)
#include "base/jpeg.h"               // jpeg::input (global in upstream)
#include "base/tu_file.h"            // tu_file (global in upstream)
#include "core-platform/memory.hpp"  // operator new(size, swf::MemHint), operator new[](size, swf::MemHint)
#include "vendor-gameswf/gameswf_alloc.hpp"  // gameswf::free_internal
#include "vendor-gameswf/grid_cells.hpp"
#include "vendor-gameswf/image_alpha.hpp"
#include "vendor-gameswf/image_io.hpp"
#include "vendor-gameswf/image_rgb.hpp"
#include "vendor-gameswf/image_rgba.hpp"
#include "vendor-gameswf/ref_counted.hpp"       // gameswf::destruct<T> (defined in the fddef6-1 batch)
#include "vendor-gameswf/tu_file_callbacks.hpp"

namespace gameswf {

// 0x7b2298 void gameswf::grid_index_pick_good_grid_size<float>(int*, int*, gameswf::index_box<float> const&, int, float) [clone]
// The clone takes four arguments: the float grid scale is folded to 0.707f (see grid_cells.hpp). The box is a3
// in the binary: a3[0] = min.x, a3[1] = min.y, a3[2] = max.x, a3[3] = max.y.
void grid_index_pick_good_grid_size(int* x_cells, int* y_cells, const ::index_box<float>& bound,
                                    int item_count_estimate) {
    const float width = bound.max.x - bound.min.x;   // a3[2] - a3[0]
    const float height = bound.max.y - bound.min.y;  // a3[3] - a3[1]
    grid_dh2::grid_cells_for_extent(width, height, item_count_estimate, x_cells, y_cells);
}

// 0x7b526c std::uint8_t* gameswf::scanline(gameswf::image_base*, int)
// Row y starts at m_data + m_pitch * y (m_data +0x08, m_pitch +0x14). Not range-checked in the binary.
std::uint8_t* scanline(image_base* surf, int y) {
    return surf->m_data + static_cast<std::ptrdiff_t>(surf->m_pitch) * y;
}

// 0x7b527c const std::uint8_t* gameswf::scanline(gameswf::image_base const*, int)
const std::uint8_t* scanline(const image_base* surf, int y) {
    return surf->m_data + static_cast<std::ptrdiff_t>(surf->m_pitch) * y;
}

// 0x7b537c void gameswf::make_next_miplevel(gameswf::image_rgb*)
// The new shape comes from image_dh2::rgb_miplevel_shape. The 2x2 average reads the source pitch (before the
// header is updated) and writes rows of the new pitch. The result of the binary's return register (the new
// height) is not part of the contract: the function is void, as upstream image::make_next_miplevel is.
void make_next_miplevel(image_rgb* im) {
    const image_dh2::miplevel_shape shape = image_dh2::rgb_miplevel_shape(im->m_width, im->m_height);
    if (shape.resample) {
        image_dh2::downsample_2x2(im->m_data, im->m_pitch, shape.pitch, shape.width, shape.height, 3);
    }
    im->m_width = shape.width;
    im->m_height = shape.height;
    im->m_pitch = shape.pitch;
}

// 0x7b552c void gameswf::make_next_miplevel(gameswf::image_rgba*)
// The same as the rgb form with 4 bytes per pixel and pitch 4 * new width. See the rgb note on the return value.
void make_next_miplevel(image_rgba* im) {
    const image_dh2::miplevel_shape shape = image_dh2::rgba_miplevel_shape(im->m_width, im->m_height);
    if (shape.resample) {
        image_dh2::downsample_2x2(im->m_data, im->m_pitch, shape.pitch, shape.width, shape.height, 4);
    }
    im->m_width = shape.width;
    im->m_height = shape.height;
    im->m_pitch = shape.pitch;
}

// 0x7b5c84 gameswf::image_alpha* gameswf::create_alpha(int, int)
// Operator new(0x18, MemHint 0), then the image_alpha constructor. The size is the host object size: the
// binary's 0x18 is its 32-bit layout.
image_alpha* create_alpha(int width, int height) {
    void* mem = ::operator new(sizeof(image_alpha), swf::MEM_UNRECOVERED);
    return new (mem) image_alpha(width, height);
}

// 0x7b5cb4 gameswf::image_rgba* gameswf::create_rgba(int, int)
image_rgba* create_rgba(int width, int height) {
    void* mem = ::operator new(sizeof(image_rgba), swf::MEM_UNRECOVERED);
    return new (mem) image_rgba(width, height);
}

// 0x7b5e48 gameswf::image_rgb* gameswf::create_rgb(int, int)
image_rgb* create_rgb(int width, int height) {
    void* mem = ::operator new(sizeof(image_rgb), swf::MEM_UNRECOVERED);
    return new (mem) image_rgb(width, height);
}

// 0x7b5ce4 gameswf::image_rgba* gameswf::read_swf_jpeg3(gameswf::tu_file*)
// Call order as in the binary: start_image, get_width, get_height, create_rgba; then get_width for the line
// buffer (3 * width bytes, MemHint 0). Per row: get_height in the loop test, read_scanline into the line, and get_width
// in each pixel test. The pixel copy is r, g, b from the line and alpha 255. After the rows the binary calls
// get_width once more and drops the result, then frees the line with free_internal, then finish_image, then
// destructs the input.
image_rgba* read_swf_jpeg3(::tu_file* in) {
    ::jpeg::input* j = ::jpeg::input::create_swf_jpeg2_header_only(in);
    if (j == nullptr) {
        return nullptr;
    }
    j->start_image();
    const int width = j->get_width();
    const int height = j->get_height();
    image_rgba* rgba = create_rgba(width, height);
    std::uint8_t* line = static_cast<std::uint8_t*>(
        ::operator new[](static_cast<std::size_t>(3 * j->get_width()), swf::MEM_UNRECOVERED));
    for (int y = 0; y < j->get_height(); ++y) {
        j->read_scanline(line);
        std::uint8_t* data = scanline(rgba, y);
        for (int x = 0; x < j->get_width(); ++x) {
            data[4 * x + 0] = line[3 * x + 0];
            data[4 * x + 1] = line[3 * x + 1];
            data[4 * x + 2] = line[3 * x + 2];
            data[4 * x + 3] = 0xFF;
        }
    }
    static_cast<void>(j->get_width());  // the binary's extra get_width after the rows; its result is not used
    if (line != nullptr) {
        gameswf::free_internal(line, 0);
    }
    j->finish_image();
    destruct(j);
    return rgba;
}

// 0x7b5e78 gameswf::image_rgb* gameswf::read_swf_jpeg2_with_tables(gameswf::jpeg::input*)
// start_image, then create_rgb with get_width and get_height, then one read_scanline per row (the row count is
// get_height, tested each time), then finish_image. Returns the surface. The loader is not destroyed here.
image_rgb* read_swf_jpeg2_with_tables(::jpeg::input* loader) {
    loader->start_image();
    const int width = loader->get_width();
    const int height = loader->get_height();
    image_rgb* rgb = create_rgb(width, height);
    for (int y = 0; y < loader->get_height(); ++y) {
        loader->read_scanline(scanline(rgb, y));
    }
    loader->finish_image();
    return rgb;
}

// 0x7b5f1c gameswf::image_rgb* gameswf::read_swf_jpeg2(gameswf::tu_file*)
image_rgb* read_swf_jpeg2(::tu_file* in) {
    ::jpeg::input* j = ::jpeg::input::create_swf_jpeg2_header_only(in);
    if (j == nullptr) {
        return nullptr;
    }
    image_rgb* rgb = read_swf_jpeg2_with_tables(j);
    destruct(j);
    return rgb;
}

// 0x7b5f48 gameswf::image_rgb* gameswf::read_jpeg(gameswf::tu_file*)
// No start_image or finish_image: jpeg::input::create has read the header. The row count is get_height, tested each time.
image_rgb* read_jpeg(::tu_file* in) {
    ::jpeg::input* j = ::jpeg::input::create(in);
    if (j == nullptr) {
        return nullptr;
    }
    const int width = j->get_width();
    const int height = j->get_height();
    image_rgb* rgb = create_rgb(width, height);
    for (int y = 0; y < j->get_height(); ++y) {
        j->read_scanline(scanline(rgb, y));
    }
    destruct(j);
    return rgb;
}

// 0x7b5fe0 gameswf::image_rgb* gameswf::read_jpeg(char const*)
// Opens the file in "rb". When the open failed (the binary tests the error word, +0x24), the result is null.
image_rgb* read_jpeg(const char* filename) {
    ::tu_file in(filename, "rb");
    image_rgb* jpeg = nullptr;
    if (in.get_error() == 0) {
        jpeg = read_jpeg(&in);
    }
    return jpeg;
}

// 0x7b6034 void gameswf::write_tga(gameswf::tu_file*, gameswf::image_rgba*)
// The 18-byte header, then each row's bytes in memory order (r, g, b, a for each pixel), with no swizzle. The
// binary writes the header in pieces and each pixel byte on its own; the bytes written are the same. Rows are
// written only when the width is positive, as in the binary.
void write_tga(::tu_file* out, image_rgba* im) {
    std::uint8_t header[18];
    image_dh2::tga_header(im->m_width, im->m_height, header);
    out->write_bytes(header, static_cast<int>(sizeof(header)));
    for (int y = 0; y < im->m_height; ++y) {
        if (im->m_width > 0) {
            out->write_bytes(scanline(im, y), im->m_width * 4);
        }
    }
}

// 0x7b65d8 int gameswf::mem_seek_func(int, void*). Internal linkage in the binary.
// The appdata is a memory_filebuf: size at +0x00, position at +0x10. Returns 0, or 4 when the position was clamped.
[[maybe_unused]] static int mem_seek_func(int pos, void* appdata) {
    memory_filebuf* buf = static_cast<memory_filebuf*>(appdata);
    return memory_seek_position(pos, buf->m_.size(), &buf->m_position);
}

// 0x7b6608 int gameswf::mem_seek_to_end_func(void*). Internal linkage. Position = size, returns 0.
[[maybe_unused]] static int mem_seek_to_end_func(void* appdata) {
    memory_filebuf* buf = static_cast<memory_filebuf*>(appdata);
    buf->m_position = buf->m_.size();
    return 0;
}

// 0x7b661c int gameswf::mem_tell_func(void const*). Internal linkage. Returns the position.
[[maybe_unused]] static int mem_tell_func(const void* appdata) {
    const memory_filebuf* buf = static_cast<const memory_filebuf*>(appdata);
    return buf->m_position;
}

// 0x7b6624 bool gameswf::mem_get_eof_func(void*). Internal linkage. True when position >= size.
[[maybe_unused]] static bool mem_get_eof_func(void* appdata) {
    const memory_filebuf* buf = static_cast<const memory_filebuf*>(appdata);
    return buf->m_position >= buf->m_.size();
}

// 0x7b6c8c int gameswf::buffered_write(void const*, int, void*)
// The binary body is `return 0`: the buffered file does not write.
int buffered_write(const void* src, int bytes, void* appdata) {
    static_cast<void>(src);
    static_cast<void>(bytes);
    static_cast<void>(appdata);
    return 0;
}

// 0x7b6c94 int gameswf::buffered_seek(int, void*)
// The window is [m_base_pos, m_base_pos + 4096). A seek inside it (see buffered_seek_in_window) only moves
// the cursor and the offset and returns pos. Otherwise the underlying file is moved, its new position is read back
// (tell), and the window restarts at that position with cursor and offset 0. Returns the position.
// m_unread (+0x1008) is the number of unread bytes left in the window (buffered_read counts it down; Hex-Rays types it as a
// pointer where this build keeps an intptr_t), and the 4096-byte block at +0x04 is the read window.
int buffered_seek(int pos, void* appdata) {
    buffered_file* bf = static_cast<buffered_file*>(appdata);
    int new_offset = 0;
    std::intptr_t new_cursor = 0;
    if (buffered_seek_in_window(pos, bf->m_base_pos, bf->m_unread, bf->m_offset, &new_offset, &new_cursor)) {
        bf->m_unread = new_cursor;
        bf->m_offset = new_offset;
        return pos;
    }
    bf->m_file->set_position(pos);
    const int position = bf->m_file->get_position();
    bf->m_base_pos = position;
    bf->m_unread = 0;
    bf->m_offset = 0;
    return position;
}

}  // namespace gameswf
