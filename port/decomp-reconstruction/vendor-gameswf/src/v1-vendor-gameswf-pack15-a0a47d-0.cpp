// Batch v1-vendor-gameswf-pack15-a0a47d-0 (part 1 of 1), 18 functions.
//
//   0x7b3110       ear_clip_wrapper<...>::tristate::~tristate()   upstream inline destructor, no body here
//   0x7b51dc/5224  gameswf::image_base constructors                 bodies here (image_base.hpp)
//   0x7b528c       gameswf::image_rgba::set_pixel                   body here
//   0x7b57ec/585c  gameswf::image_rgba constructors                 bodies here
//   0x7b5abc/5af0  gameswf::image_rgba destructors (D1, D2)         bodies here; D0 0x7b5c4c skipped
//   0x7b58cc/5944  gameswf::image_rgb constructors                  bodies here
//   0x7b5b24/5b58  gameswf::image_rgb destructors (D1, D2)          bodies here; D0 0x7b5c68 skipped
//   0x7b6a80       tu_file::read_fully(membuf*, int)                body here (new Gameloft member, DH2 comment in base/tu_file.h)
//   0x7b7588/758c  tu_loadlib destructors (D2, D1)                  bodies here (upstream wrapped in #if 0 in base/tu_loadlib.cpp)
//   0x7b7590       tu_loadlib::get_function(char const*)            body here (upstream wrapped in #if 0 in base/tu_loadlib.cpp)
//
// Namespaces. The binary puts the image classes in gameswf::. The vendored base library (tu_file, membuf,
// tu_loadlib, ear_clip_wrapper) is global, so those definitions are global, as in the membuf and tu_string
// batches.

#include <cstddef>
#include <cstdint>

#include "base/membuf.h"
#include "base/tu_file.h"
#include "base/tu_loadlib.h"
#include "core-platform/memory.hpp"  // operator new[](std::size_t, swf::MemHint), 0x752ba4
#include "vendor-gameswf/gameswf_alloc.hpp"  // gameswf::free_internal
#include "vendor-gameswf/image_base.hpp"
#include "vendor-gameswf/image_rgb.hpp"
#include "vendor-gameswf/image_rgba.hpp"

namespace gameswf {
namespace {

// The pitch of image_rgba, 4 * width. The listing is LSL #2 on a 32-bit value.
int rgba_pitch(int width) {
    return static_cast<int>(4u * static_cast<unsigned int>(width));
}

// The pitch of image_rgb, (3 * (width + 1)) & ~3, in 32-bit arithmetic (ADD, ADD with LSL #1, BIC #3).
int rgb_pitch(int width) {
    return static_cast<int>((3u * (static_cast<unsigned int>(width) + 1u)) & 0xFFFFFFFCu);
}

// The buffer size in both constructors: MUL of the pitch and the height in 32-bit arithmetic.
std::size_t buffer_bytes(int pitch, int height) {
    return static_cast<std::size_t>(static_cast<unsigned int>(pitch) * static_cast<unsigned int>(height));
}

}  // namespace

// 0x7b51dc gameswf::image_base::image_base(unsigned char*, int, int, int, gameswf::image_base::id_image)  [C2]
// 0x7b5224 gameswf::image_base::image_base(unsigned char*, int, int, int, gameswf::image_base::id_image)  [C1]
// The two listings are the same. The arguments are data (a2), width (a3), height (a4), pitch (a5, stack)
// and type (a6, stack). The fields are m_data (+0x08), m_width (+0x0c), m_height (+0x10), m_pitch (+0x14) and
// m_type (+0x04). The vptr (+0x00) is set to the image_base vtable by the compiler. The destructor is in
// another batch (0x7b59bc, 0x7b5a08).
image_base::image_base(std::uint8_t* data, int width, int height, int pitch, id_image type)
    : m_type(type), m_data(data), m_width(width), m_height(height), m_pitch(pitch) {}

// 0x7b59bc gameswf::image_base::~image_base()  [D1]
// 0x7b5a08 gameswf::image_base::~image_base()  [D2, the same body]
// The vptr is set to the image_base vtable (0x9911f0, by the compiler). When m_data (+0x08) is set it is released with
// gameswf::free_internal(m_data, 0) and cleared. (These two rows were ledgered upstream by name against r1714's
// image::image_base, which is a different class in a different namespace; the gameswf:: destructor was not defined, link-1.)
// 0x7b5c14 is the deleting destructor (D1, then LC_API_FREE_0): the compiler generates it.
image_base::~image_base() {
    if (m_data) {
        free_internal(m_data, 0);
        m_data = nullptr;
    }
}

// 0x7b57ec gameswf::image_rgba::image_rgba(int, int)  [C1]
// 0x7b585c gameswf::image_rgba::image_rgba(int, int)  [C2, same body]
// Base constructor with data 0, width, height, pitch = 4 * width, type RGBA (2). Then the buffer
// m_pitch * m_height bytes comes from operator new[](size, swf::MemHint) with hint 0 and is stored at +0x08.
image_rgba::image_rgba(int width, int height)
    : image_base(nullptr, width, height, rgba_pitch(width), image_base::RGBA) {
    m_data = static_cast<std::uint8_t*>(
        ::operator new[](buffer_bytes(m_pitch, m_height), swf::MEM_UNRECOVERED));
}

// 0x7b5abc gameswf::image_rgba::~image_rgba()  [D1]
// 0x7b5af0 gameswf::image_rgba::~image_rgba()  [D2]
// The listing stores the image_rgba vtable and calls gameswf::image_base::~image_base (which releases m_data).
// An empty body in C++ does the same, since the compiler sets the vptr and calls the base destructor.
image_rgba::~image_rgba() {}

// 0x7b5c4c gameswf::image_rgba::~image_rgba()  [D0, deleting destructor]: not rebuilt. It runs D1, then
// operator delete (LC_API_FREE_0). C++ delete on an image_rgba* produces it from the virtual destructor.

// 0x7b528c gameswf::image_rgba::set_pixel(int, int, unsigned char, unsigned char, unsigned char, unsigned char)
// The row is gameswf::scanline(this, y) (0x7b526c, m_data + m_pitch * y). Pixel x starts at byte 4 * x of the
// row. The listing stores the first unsigned char at +0, the second at +1, the third at +2 and the fourth at
// +3, which is r, g, b, a. The Hex-Rays return value is the row pointer left in r0 by the store, so the function
// is void, as in upstream image::rgba::set_pixel.
void image_rgba::set_pixel(int x, int y, std::uint8_t r, std::uint8_t g, std::uint8_t b, std::uint8_t a) {
    std::uint8_t* pixel = scanline(this, y) + 4 * x;
    pixel[0] = r;
    pixel[1] = g;
    pixel[2] = b;
    pixel[3] = a;
}

// 0x7b58cc gameswf::image_rgb::image_rgb(int, int)  [C1]
// 0x7b5944 gameswf::image_rgb::image_rgb(int, int)  [C2, same body]
// Base constructor with data 0, width, height, the padded pitch (3 * (width + 1)) & ~3 and type RGB (1). Then
// the buffer m_pitch * m_height bytes comes from operator new[](size, swf::MemHint) with hint 0 and is stored
// at +0x08.
image_rgb::image_rgb(int width, int height)
    : image_base(nullptr, width, height, rgb_pitch(width), image_base::RGB) {
    m_data = static_cast<std::uint8_t*>(
        ::operator new[](buffer_bytes(m_pitch, m_height), swf::MEM_UNRECOVERED));
}

// 0x7b5b24 gameswf::image_rgb::~image_rgb()  [D1]
// 0x7b5b58 gameswf::image_rgb::~image_rgb()  [D2]
// Same as the image_rgba destructors: the vptr is set to the image_rgb vtable, then the base destructor runs.
image_rgb::~image_rgb() {}

// 0x7b5c68 gameswf::image_rgb::~image_rgb()  [D0, deleting destructor]: not rebuilt, as for 0x7b5c4c.

}  // namespace gameswf

// The base-library definitions below are global in the vendored source. The binary's symbols are the same
// names in gameswf::.

// 0x7b3110 gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>,
//          gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate::~tristate()
// No body here. The upstream inline destructor in base/ear_clip_triangulate_impl.h (struct tristate) does the
// same work: delete m_reflex_point_index (the grid_index_point destructor, then the free), then the member
// destructors of m_input_paths and m_verts in reverse declaration order. The binary inlines the gameswf array
// destructors as resize(0) and reserve(0) on each array: m_input_paths (+0x14) first, then m_verts (+0x04).
// The upstream array<> derives from std::vector, which does the same on destruction, so the ledger row is
// upstream and the upstream definition is left unchanged.

// 0x7b6a80 gameswf::tu_file::read_fully(gameswf::membuf*, int)
// Reads into buf until bytes bytes are in, or the stream ends or fails. bytes == -1 means the size of buf
// (membuf +0x00). Each step does the following. It stops when the eof callback returns true (the listing's
// slot at +0x1c). It stops when nothing is left to read. It reads with the read callback (slot +0x08) into
// buf->data() + i and the number of bytes still wanted. It stops when the error field (+0x24) is set or the read
// returned no bytes. Otherwise it subtracts the bytes read and goes on with i advanced by the same count. The
// return value is the last result: the eof flag, or the last read count.
//
// The binary's tu_file has one more 4-byte field before the read callback than r1714: the open hook at +0x04
// (m_open in base/tu_file.h, which the filename constructor fills with the file system's open function), so its read, eof
// and error fields are at +0x08, +0x1c and +0x24.
// buf->data() asserts that buf is not read-only. The binary has no such check. read_fully is only called with a
// writable buffer.
int tu_file::read_fully(membuf* buf, int bytes) {
    int remaining = (bytes == -1) ? buf->size() : bytes;
    int result = 0;
    for (int i = 0;; i += result) {
        result = m_get_eof(m_data);
        if (result != 0) {
            break;
        }
        if (remaining <= 0) {
            break;
        }
        result = m_read(static_cast<std::uint8_t*>(buf->data()) + i, remaining, m_data);
        if (m_error != 0 || result <= 0) {
            break;
        }
        remaining -= result;
    }
    return result;
}

// 0x7b7588 gameswf::tu_loadlib::~tu_loadlib()  [D2]
// 0x7b758c gameswf::tu_loadlib::~tu_loadlib()  [D1]
// The listing is a bare return, so the library handle is not released. Upstream base/tu_loadlib.cpp calls
// FreeLibrary or dlclose there. That definition is wrapped in #if 0 in the upstream file.
tu_loadlib::~tu_loadlib() {}

// 0x7b7590 gameswf::tu_loadlib::get_function(char const*)
// The listing returns 0 without looking the name up. Upstream base/tu_loadlib.cpp uses GetProcAddress or dlsym.
// That definition is wrapped in #if 0 in the upstream file.
void* tu_loadlib::get_function(const char* /*function_name*/) {
    return nullptr;
}
