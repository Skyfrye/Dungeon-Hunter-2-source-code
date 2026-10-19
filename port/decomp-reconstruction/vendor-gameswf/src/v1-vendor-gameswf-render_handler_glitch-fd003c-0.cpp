// Batch v1-vendor-gameswf-render_handler_glitch-fd003c-0: render_handler_glitch, part 1 of 3 (20 functions).
//
// Declarations and layout: vendor-gameswf/include/vendor-gameswf/render_handler_glitch.hpp (shared with parts 2 and 3;
// the part 1 declarations are the block after "0x7d4340 (another part)").
// Every function is read from the Hex-Rays pseudocode (show_batch.py). Register-level checks:
//   0x7d3e0c  set_target: vtable +0x8c with the bitmap_info field at +0x14; vtable +0x90 with the result dropped
//   0x7d3e84  end_display_callback: three vtable +0x6c calls, states 2, 0, 1 (projection, view, world)
//   0x7d4334  set_buffer_capacity: STR R1,[R0,#0x1F0]! then a tail call to BufferedRenderer::ensureBufferCapacity
//   0x7d4340  ensureBufferCapacity: operator new[](uint, glitch::memory::E_MEMORY_HINT) with hint 0; zeroes words 0,1,3,4,5 of each 24-byte entry;
//             stores the block at +0x374 and the capacity at +0x370; IBuffer::reset(size, block, true) is called on
//             the IBuffer* at [m_vertex_streams] + 0x14 between the two stores
//   0x7d43cc  line_style_color: cxform::transform(rgba) at this+0x324; line flag at +0x448 = 1; colour at +0x44c
//             (the alpha byte left in r0 is the register of the last byte store, not a return value)
//   0x7d4558  fill_style_bitmap: tail call to fill_style::set_bitmap (0x7d4430), which returns bool
//
// The line style is fill entry 2 (+0x448 = +0x3b0 + 2 * 76): its unk_00 is the flag that fill_style_color sets to 1,
// its color[4] starts at +0x44c and its unk_48 is the width at +0x490.
//
// All 20 functions of the batch are complete against the canonical glitch-video headers (IVideoDriver pushRenderTarget,
// popRenderTarget and setTransform; IBuffer::reset on the first stream of CVertexStreams; BufferedRenderer::m_playerContext).
// The returns of the binary's register r0 (line_style_color returns the alpha byte, set_target and end_display_callback
// return a driver result) are leftovers of the code generation: the interface functions are void.

#include "vendor-gameswf/render_handler_glitch.hpp"

#include <cstddef>
#include <cstdint>

#include "gameswf/gameswf_types.h"  // gameswf::rgba (full definition)
#include "glitch-core-io/core/memory_hint.hpp"  // glitch::memory::E_MEMORY_HINT (canonical), the hint of 0x7d4340
#include "glitch-video/buffer.hpp"              // IBuffer::reset
#include "glitch-video/vertex_streams.hpp"      // CVertexStreams::m_streams
#include "glitch-video/video_driver.hpp"        // IVideoDriver

// Tagged global operator new[] that 0x7d4340 calls (_ZnajN6glitch6memory13E_MEMORY_HINTE), defined in
// core-platform/src/memory.cpp. core-platform/memory.hpp also declares it, but this TU cannot include that header:
// its deps/glitch_core.hpp stand-ins clash with glitch-shared/glitch_core.hpp, which render_handler_glitch.hpp uses.
void* operator new[](std::size_t size, glitch::memory::E_MEMORY_HINT hint);

// 0x7d3df4 _ZN21render_handler_glitch4openEv
// Empty body (bx lr). Overrides the pure gameswf::render_handler::open().
void render_handler_glitch::open() {
}

// 0x7d3df8 _ZN21render_handler_glitch15get_orientationEv
// Returns 0 (MOV R0, #0; BX LR). Overrides the DH2 render_handler::get_orientation().
int render_handler_glitch::get_orientation() {
    return 0;
}

// 0x7d3e00 _ZN21render_handler_glitch15set_antialiasedEb
// Empty body (bx lr). The flag is ignored. Overrides render_handler::set_antialiased(bool).
void render_handler_glitch::set_antialiased(bool /*enable*/) {
}

// 0x7d3e04 _ZN21render_handler_glitch20create_video_handlerEv
// Returns null (MOV R0, #0; BX LR). Overrides render_handler::create_video_handler().
gameswf::video_handler* render_handler_glitch::create_video_handler() {
    return nullptr;
}

// 0x7d3e0c _ZN21render_handler_glitch10set_targetEPN7gameswf11bitmap_infoE
// With a target, the driver's pushRenderTarget (vtable +0x8c) gets the target's render target (the bitmap_info_ogl field
// at +0x14, passed by const reference). With none, the driver's popRenderTarget (vtable +0x90) runs and the returned
// reference is dropped.
void render_handler_glitch::set_target(gameswf::bitmap_info* target) {
    if (target != nullptr) {
        m_driver->pushRenderTarget(static_cast<::bitmap_info_ogl*>(target)->m_render_target);
    } else {
        m_driver->popRenderTarget();
    }
}

// 0x7d3e68 _ZN21render_handler_glitch18clear_frame_bufferEv
// Empty body (bx lr). DH2 virtual, slot +0x038.
void render_handler_glitch::clear_frame_buffer() {
}

// 0x7d3e6c _ZN21render_handler_glitch17read_frame_bufferEiiiiPh
// Empty body (bx lr). DH2 virtual, slot +0x03c. The arguments are ignored.
void render_handler_glitch::read_frame_buffer(int /*x*/, int /*y*/, int /*width*/, int /*height*/,
                                              unsigned char* /*pixels*/) {
}

// 0x7d3e70 _ZN21render_handler_glitch14set_wire_frameEb
// Stores the flag in BufferedRenderer::m_wireFrame (this+0x1f4; STRB at this+500). DH2 virtual, slot +0x040.
void render_handler_glitch::set_wire_frame(bool wire) {
    m_buffered.m_wireFrame = wire;
}

// 0x7d3e78 _ZN21render_handler_glitch11set_contextEPN7gameswf14player_contextE
// Stores the context in the batch renderer (this+0x228, BufferedRenderer::m_playerContext, which flush passes to
// texture_cache::unlock_all), then in this+0x08 (m_context).
void render_handler_glitch::set_context(gameswf::player_context* context) {
    m_buffered.m_playerContext = context;
    m_context = context;
}

// 0x7d3e84 _ZN21render_handler_glitch20end_display_callbackEv
// Gives the driver the matrices of m_state, in this order (setTransform, driver vtable +0x6c): state 2 (projection,
// +0x114), state 0 (view, +0x158) and state 1 (world, +0x19c). The state numbers are the values of
// E_TRANSFORMATION_STATE that the enumerators of glitch-video do not name.
void render_handler_glitch::end_display_callback() {
    m_driver->setTransform(2, m_state.projection);
    m_driver->setTransform(0, m_state.view);
    m_driver->setTransform(1, m_state.world);
}

// 0x7d3ee4 _ZN21render_handler_glitch10set_matrixERKN7gameswf6matrixE
// Copies the 24-byte gameswf::matrix (float m_[2][3]) to this+0x30c.
void render_handler_glitch::set_matrix(const gameswf::matrix& m) {
    m_matrix = m;
}

// 0x7d3f08 _ZN21render_handler_glitch10set_cxformERKN7gameswf6cxformE
// Copies the 32-byte gameswf::cxform (float m_[4][2]) to this+0x324.
void render_handler_glitch::set_cxform(const gameswf::cxform& cx) {
    m_cxform = cx;
}

// 0x7d3f2c _ZN21render_handler_glitch18fill_style_disableEi
// Clears the flag word of fill side fill_side (fill_style array at this+0x3b0, 76 bytes per entry).
void render_handler_glitch::fill_style_disable(int fill_side) {
    m_fill_styles[fill_side].unk_00 = 0;
}

// 0x7d3f40 _ZN21render_handler_glitch18line_style_disableEv
// Clears the flag word of the line style, which is fill entry 2 (+0x448).
void render_handler_glitch::line_style_disable() {
    m_fill_styles[2].unk_00 = 0;
}

// 0x7d3f4c _ZN21render_handler_glitch16line_style_widthEf
// Stores the width in the line style's last float, fill entry 2 at +0x490 (+0x448 + 72).
void render_handler_glitch::line_style_width(float width) {
    m_fill_styles[2].unk_48 = width;
}

// 0x7d3f54 _ZN21render_handler_glitch10is_visibleERKN7gameswf4rectE
// gameswf::rect is {m_x_min, m_x_max, m_y_min, m_y_max}. The original compares the rect with the two display
// values that begin_display sets (+0x304 width, +0x308 height):
//   width >= x_min  &&  x_max >= 0  &&  y_max >= 0  &&  height >= y_min
bool render_handler_glitch::is_visible(const gameswf::rect& bound) {
    return m_display_width >= bound.m_x_min && bound.m_x_max >= 0.0f && bound.m_y_max >= 0.0f &&
           m_display_height >= bound.m_y_min;
}

// 0x7d4334 _ZN21render_handler_glitch19set_buffer_capacityEN7gameswf14render_handler11buffer_modeEi
// Stores the buffer mode in BufferedRenderer::unk_00 (this+0x1f0), then calls BufferedRenderer::ensureBufferCapacity
// on the embedded object (a tail call in the original).
void render_handler_glitch::set_buffer_capacity(gameswf::render_handler::buffer_mode mode, int vertex_count) {
    m_buffered.unk_00 = static_cast<int>(mode);
    m_buffered.ensureBufferCapacity(vertex_count);
}

// 0x7d4340 _ZN21render_handler_glitch20ensureBufferCapacityEi
// Grows the staging vertices to vertex_count entries of 24 bytes. The block comes from ::operator new[](size,
// glitch::memory::E_MEMORY_HINT(0)): the binary calls _ZnajN6glitch6memory13E_MEMORY_HINTE with R1 = 0, the hinted
// overload and not plain new[]. Words 0, 1, 3, 4 and 5 of each entry are zeroed (word 2, the colour, is left as
// allocated). The block is stored at +0x374 and handed to the buffer of the first stream of m_vertex_streams
// (the IBuffer at +0x14 of the streams object) with IBuffer::reset(size, block, true), which keeps ownership of it; then the
// new capacity is stored at +0x370. The old block is not freed here: reset releases the data the buffer owned.
void render_handler_glitch::ensureBufferCapacity(int vertex_count) {
    if (m_vertex_capacity >= vertex_count) {
        return;
    }
    const uint32_t byte_size = 24u * static_cast<uint32_t>(vertex_count);
    uint8_t* block = static_cast<uint8_t*>(::operator new[](byte_size, glitch::memory::E_MEMORY_HINT(0)));
    if (vertex_count > 0) {
        // Six 32-bit words per entry, the layout the driver reads. Word 2 is not written.
        uint32_t* words = reinterpret_cast<uint32_t*>(block);
        for (int i = 0; i < vertex_count; ++i) {
            uint32_t* entry = words + 6 * i;
            entry[0] = 0;
            entry[1] = 0;
            entry[3] = 0;
            entry[4] = 0;
            entry[5] = 0;
        }
    }
    m_vertices = block;
    m_vertex_streams->m_streams[0].buffer->reset(byte_size, block, true);
    m_vertex_capacity = vertex_count;
}

// 0x7d43cc _ZN21render_handler_glitch16line_style_colorEN7gameswf4rgbaE
// The colour goes through the cxform at this+0x324, then the line style's flag (fill entry 2, unk_00) is set to 1 and the
// four colour bytes are stored at +0x44c in rgba order. The alpha byte that the listing leaves in r0 is the register
// the last byte store used (UBFX/LSR into r0, then STRB r0); the function is void.
void render_handler_glitch::line_style_color(gameswf::rgba color) {
    const gameswf::rgba transformed = m_cxform.transform(color);
    fill_style& line = m_fill_styles[2];
    line.unk_00 = 1;
    line.color[0] = transformed.m_r;
    line.color[1] = transformed.m_g;
    line.color[2] = transformed.m_b;
    line.color[3] = transformed.m_a;
}

// 0x7d4430 render_handler_glitch::fill_style::set_bitmap(gameswf::bitmap_info*, gameswf::matrix const&, gameswf::render_handler::bitmap_wrap_mode, gameswf::cxform const&)
// Sets the fill side for a bitmap fill: the fill type (3 for a clamped wrap, 2 for repeat), the bitmap pointer, the
// matrix, and a copy of the colour transform, clamped. The four colour bytes are the clamped multipliers (r, g, b, a)
// times 255. The flag is set when any of the four additive terms is above 1. The return value is that flag.
bool render_handler_glitch::fill_style::set_bitmap(gameswf::bitmap_info* bitmap, const gameswf::matrix& m,
                                                   gameswf::render_handler::bitmap_wrap_mode wrap,
                                                   const gameswf::cxform& cx) {
    unk_00 = static_cast<int>(wrap) != 0 ? 3 : 2;
    source_bitmap = bitmap;
    bitmap_matrix = m;
    bitmap_cxform = cx;
    bitmap_cxform.clamp();
    for (int c = 0; c < 4; ++c) {
        color[c] = static_cast<std::uint8_t>(
            static_cast<unsigned int>(static_cast<float>(bitmap_cxform.m_[c][0] * 255.0)));
    }
    const bool over = bitmap_cxform.m_[0][1] > 1.0f || bitmap_cxform.m_[1][1] > 1.0f ||
                      bitmap_cxform.m_[2][1] > 1.0f || bitmap_cxform.m_[3][1] > 1.0f;
    unk_44 = over ? 1 : 0;
    return over;
}

// 0x7d4558 _ZN21render_handler_glitch17fill_style_bitmapEiPN7gameswf11bitmap_infoERKNS0_6matrixENS0_14render_handler16bitmap_wrap_modeE
// Forwards to fill_style::set_bitmap of fill side fill_side with the cxform at this+0x324, and returns its bool.
// The DH2 signature has four arguments; upstream's five-argument pure virtual is a separate overload.
bool render_handler_glitch::fill_style_bitmap(int fill_side, gameswf::bitmap_info* bitmap, const gameswf::matrix& m,
                                              gameswf::render_handler::bitmap_wrap_mode wrap) {
    return m_fill_styles[fill_side].set_bitmap(bitmap, m, wrap, m_cxform);
}
