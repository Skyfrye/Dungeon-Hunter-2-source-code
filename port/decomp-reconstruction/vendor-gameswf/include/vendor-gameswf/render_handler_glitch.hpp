// render_handler_glitch: Gameloft's gameswf render handler on top of the glitch video driver
// (libDungeonHunter2.so, render_handler_glitch::*). Gameloft class, not in upstream GameSWF r1714.
//
// Layout recovered from the constructor (0x7d60f4), begin_display, end_display, reset and the bitmap
// factories. Each member carries its original 32-bit offset in a comment. Pointers are host width, so
// the offsets are comments only; no code adds raw offsets.
//
// Declared here: the members and methods of batch v1-vendor-gameswf-render_handler_glitch-fd003c-1
// (part 2 of 3). The other members of this class (parts 1 and 3) are added by the integrator.
//
// Layout requests (open, for the integrator):
//   - glitch::video::detail::driver::SRenderState (glitch-video/video_types.hpp) now has the two words this class stores at
//     +0x14..+0x1b (0x001f00ff and zero after the constructor): begin_display saves the driver state in it
//     (IVideoDriver::getRenderState, vtable +0x1e0) and end_display gives it back (setRenderState, +0x1e4).
//   - the constructor builds the seven blend-mode materials from "gameswf_effects.bdae" with
//     glitch::collada::CColladaDatabase (file constructor, DefaultFactory) and constructEffect, which returns an owned
//     reference (the caller adopts it, as SceneManager::LoadEffect does).
#pragma once

#include <cstdint>

#include "base/container.h"
#include "dh2/BufferedRenderer.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-shared/glitch_core.hpp"
#include "glitch-video/video_types.hpp"  // detail::driver::SRenderState (saved by begin_display)
#include "gameswf/gameswf.h"
#include "vendor-gameswf/bitmap_info_ogl.hpp"
#include "vendor-gameswf/triangle_intersector.hpp"

struct membuf;  // base/membuf.h (global in upstream)

namespace glitch::video {
class IVideoDriver;
class ITexture;
class CVertexStreams;
}  // namespace glitch::video

namespace gameswf {
struct render_cache;    // vendor-gameswf/render_cache.hpp
struct player_context;  // vendor-gameswf/player_context.hpp
}  // namespace gameswf

// Part 3 (batch v1-vendor-gameswf-render_handler_glitch-fd003c-2) adds the staging vertex and the blend mode
// argument type. The vertex is the 24-byte entry of m_vertices (+0x374); the mask runs use MaskRun above.
// Vertex and blend_mode are used by this part's functions only.
struct Vertex {
    float u;         // +0x00 texture u (draw_bitmap writes the rect's xmin and xmax here)
    float v;         // +0x04 texture v
    uint32_t color;  // +0x08 packed rgba (draw_bitmap writes the whole colour; draw writes the low byte)
    float x;         // +0x0c
    float y;         // +0x10
    float z;         // +0x14 depth (m_mask_z)
};

// gameswf::blend_mode::id is declared in gameswf.h (the argument of render_handler::set_blend_mode).

class render_handler_glitch : public gameswf::render_handler {
public:
    // The driver's transform state: three glitch matrices and the viewport rectangle of the render target,
    // 0xdc bytes in the original. get_matrix writes each matrix column-major: element (row r, column c) is
    // M[c * 4 + r], so the translation is in M[12] and M[13]. Built as m_saved_state (+0x38) and m_state (+0x114).
    struct TransformState {
        TransformState();                          // 0x7d6050 (batch pack21 writes its body)
        glitch::core::CMatrix4<float> projection;  // +0x00: transform state 2
        glitch::core::CMatrix4<float> view;        // +0x44: transform state 0
        glitch::core::CMatrix4<float> world;       // +0x88: transform state 1
        glitch::core::rect<int32_t> viewport{};    // +0xcc: x0, y0, x1, y1 (the render target's viewport rectangle)
    };

    // One fill side. Three entries from +0x3b0, 76 bytes each in the original.
    struct fill_style {
        // 0x7d4430 (another part): sets the bitmap, matrix and colour transform of this fill side. Returns bool
        // (part 1 correction: the binary's function is bool; fill_style_bitmap returns it).
        bool set_bitmap(gameswf::bitmap_info* bitmap, const gameswf::matrix& m,
                        gameswf::render_handler::bitmap_wrap_mode wrap, const gameswf::cxform& cx);
        // 0x7d6b54 (another part): applies this fill side to the staging vertices (part 3 calls it from draw_mesh_primitive).
        void apply(glitch::video::IVideoDriver* driver, BufferedRenderer& buffer, Vertex* vertices,
                   int vertex_count) const;

        int32_t unk_00 = 0;               // +0x00: fill type; set to 1 by fill_style_color, to 2 (repeat) or 3 (clamp) by set_bitmap
        uint8_t color[4] = {};            // +0x04: colour after the colour transform, in rgba byte order
        gameswf::bitmap_info* source_bitmap = nullptr;  // +0x08: the bitmap stored by set_bitmap (host pointer)
        gameswf::matrix bitmap_matrix;    // +0x0c: 6 floats, identity after the constructor
        gameswf::cxform bitmap_cxform;    // +0x24: 8 floats, identity after the constructor
        uint8_t unk_44 = 0;               // +0x44: flag set by set_bitmap (1 when an additive colour term is above 1)
        uint8_t pad_45[3] = {};           // +0x45..+0x47
        float unk_48 = 0.0f;              // +0x48: read by draw_line_strip as a scale (on entry 2); writer not in this batch
    };

    // One mask run: a gameswf::array of glitch::core::vector2d<float> points (16 bytes in the original: buffer, size,
    // capacity, borrowed flag at +0x0c). The mask stack is an array of them.
    using MaskRun = ::array<glitch::core::vector2d<float>>;

    // render_handler_glitch(glitch::video::IVideoDriver*) 0x7d60f4 (C1; the binary has no C2).
    explicit render_handler_glitch(glitch::video::IVideoDriver* driver);
    // 0x7d7cf4 (D1). The deleting destructor at 0x7d7f0c is generated by the compiler.
    ~render_handler_glitch() override;

    // gameswf::render_handler overrides in this batch. The factories return the bitmap_info_ogl of the
    // original (covariant return, bitmap_info_ogl is a bitmap_info).
    gameswf::bitmap_info* create_bitmap_info_empty() override;                                  // 0x7d4e28
    gameswf::bitmap_info* create_bitmap_info_alpha(int width, int height,
                                                   unsigned char* data) override;               // 0x7d551c
    gameswf::bitmap_info* create_bitmap_info_rgb(gameswf::image_rgb* im) override;                      // 0x7d5a6c
    gameswf::bitmap_info* create_bitmap_info_rgba(gameswf::image_rgba* im) override;                    // 0x7d57b0
    void begin_display(gameswf::rgba background_color, int viewport_x0, int viewport_y0,
                       int viewport_width, int viewport_height, float x0, float x1, float y0,
                       float y1) override;                                                      // 0x7d73d0
    void end_display() override;                                                                // 0x7d6de4
    void fill_style_color(int fill_side, const gameswf::rgba& color) override;                  // 0x7d4624
    void draw_line_strip(const void* coords, int vertex_count) override;                        // 0x7d77b0

    // Part 3 (batch fd003c-2): the mask stack, the quad and mesh draw paths and the render cache replay.
    void set_blend_mode(gameswf::blend_mode::id mode) override;                                 // 0x7d81e4, slot +0x030
    void begin_submit_mask() override;                                                         // 0x7d825c, slot +0x088
    void end_submit_mask() override;                                                           // 0x7d85bc, slot +0x08c
    void disable_mask() override;                                                              // 0x7d8340, slot +0x090
    bool process_mask_intersection(Vertex* vertices, int vertex_count, const uint16_t* indices,
                                   int index_count, glitch::video::E_PRIMITIVE_TYPE primitive); // 0x7d860c, not virtual
    void draw_bitmap(const gameswf::matrix& m, gameswf::bitmap_info* bi, const gameswf::rect& coords,
                     const gameswf::rect& uv_coords, gameswf::rgba color) override;            // 0x7d8df4, slot +0x080
    void draw(gameswf::render_cache* cache) override;                                           // 0x7d93ac, slot +0x064
    void draw_mesh_primitive(glitch::video::E_PRIMITIVE_TYPE primitive, const void* coords, int vertex_count,
                             const uint16_t* indices, int index_count);                        // 0x7d94f8, not virtual
    // Four-argument form; the DH2 vtable has it at slot +0x05c.
    void draw_triangle_list(const void* coords, int vertex_count, const uint16_t* indices,
                                    int index_count) override;                                          // 0x7d9734
    void draw_mesh_strip(const void* coords, int vertex_count) override;                       // 0x7d9764, slot +0x058

    // Members of this class that are not overrides.
    gameswf::bitmap_info* create_bitmap_info_native(int width, int height,
                                                    const membuf* data) override;                        // 0x7d4bb4
    gameswf::bitmap_info* create_bitmap_info_texture(glitch::video::ITexture* texture) override;         // 0x7d4d00
    gameswf::bitmap_info* create_bitmap_info_target(int width, int height) override;                     // 0x7d53cc
    void set_render_cache(gameswf::render_cache* cache) override;                                        // 0x7d4f8c
    // 0x7d6680: the gameswf matrix in glitch's 4x4 layout, returned by value (M[16] and the flag at +0x40).
    glitch::core::CMatrix4<float> get_matrix(const gameswf::matrix& m) const;                   // 0x7d6680
    void begin_display_callback() override;                                                              // 0x7d6a40
    void reset() override;                                                                               // 0x7d6afc
    void flush() override;                                                                               // 0x7d6ddc
    void render_mask_intersection();                                                            // 0x7d71bc
    void ensureBufferCapacity(int count);                                                       // 0x7d4340 (another part)

    // Methods of batch v1-vendor-gameswf-render_handler_glitch-fd003c-0 (part 1). The line style is fill entry 2
    // (+0x448 = +0x3b0 + 2 * 76): line_style_color, line_style_disable and line_style_width write its fields.
    void open() override;                                                                      // 0x7d3df4, slot +0x0a0
    int get_orientation() override;                                                            // 0x7d3df8, slot +0x0ac
    void set_antialiased(bool enable) override;                                                // 0x7d3e00, slot +0x084
    gameswf::video_handler* create_video_handler() override;                                   // 0x7d3e04, slot +0x024
    void set_target(gameswf::bitmap_info* target) override;                                     // 0x7d3e0c, slot +0x034
    void clear_frame_buffer() override;                                                         // 0x7d3e68, slot +0x038
    void read_frame_buffer(int x, int y, int width, int height,
                                   unsigned char* pixels) override;                                     // 0x7d3e6c, slot +0x03c
    void set_wire_frame(bool wire) override;                                                    // 0x7d3e70, slot +0x040
    void set_context(gameswf::player_context* context) override;                                // 0x7d3e78, slot +0x048
    void end_display_callback() override;                                                      // 0x7d3e84, slot +0x0b4
    void set_matrix(const gameswf::matrix& m) override;                                        // 0x7d3ee4, slot +0x050
    void set_cxform(const gameswf::cxform& cx) override;                                       // 0x7d3f08, slot +0x054
    void fill_style_disable(int fill_side) override;                                           // 0x7d3f2c, slot +0x068
    void line_style_disable() override;                                                        // 0x7d3f40, slot +0x074
    void line_style_width(float width) override;                                               // 0x7d3f4c, slot +0x07c
    bool is_visible(const gameswf::rect& bound) override;                                      // 0x7d3f54, slot +0x09c
    void set_buffer_capacity(gameswf::render_handler::buffer_mode mode,
                                     int vertex_count) override;                                        // 0x7d4334, slot +0x044
    void line_style_color(gameswf::rgba color) override;                                       // 0x7d43cc, slot +0x078
    bool fill_style_bitmap(int fill_side, gameswf::bitmap_info* bitmap, const gameswf::matrix& m,
                                   gameswf::render_handler::bitmap_wrap_mode wrap) override;           // 0x7d4558, slot +0x070

    // +0x04 (byte): set to 1 by the constructor. draw_bitmap (part 3) rounds the quad corners to whole pixels when it is
    // non-zero; no other function of the batches reads it.
    // (The byte itself is gameswf::render_handler::unk_04, declared in the base.)
    // +0x08: the player_context pointer stored by set_context (part 1). Zeroed by the constructor.
    gameswf::player_context* m_context = nullptr;
    // +0x0c: render cache, set by set_render_cache.
    gameswf::render_cache* m_render_cache = nullptr;
    // +0x10: the glitch video driver. The original owns one reference (added by the constructor and
    // dropped by the destructor); the reference handling is not written in this batch.
    glitch::video::IVideoDriver* m_driver = nullptr;
    // +0x14..+0x37: the driver's detail::driver::SRenderState (0x24 bytes). The constructor stores 0x001f00ff and 0 in its two
    // first words and 1.0f, 0, 1.0f, 0, 0, 0, 0 in the rest (+0x1c..+0x34: clear depth, depth range near/far, scissor).
    // begin_display saves the driver's state here (getRenderState, vtable +0x1e0) and end_display restores it (setRenderState,
    // +0x1e4).
    glitch::video::detail::driver::SRenderState m_saved_render_state;
    // +0x38: the driver's transform state (projection, view, world, viewport), saved by begin_display and
    // restored by end_display. Its blocks sit at +0x38, +0x7c, +0xc0 and +0x104.
    TransformState m_saved_state;         // +0x38..+0x113
    // +0x114: the transform state begin_display builds (projection +0x114, view +0x158, world +0x19c,
    // viewport +0x1e0). It is the state the driver receives through setTransform.
    TransformState m_state;               // +0x114..+0x1ef
    // +0x1f0 (272 bytes): the batch renderer that collects quads and triangles for flush.
    BufferedRenderer m_buffered;          // +0x1f0
    // +0x300 (byte): zeroed by the constructor.
    uint8_t unk_300 = 0;                  // +0x300
    // +0x301 (byte): driver option 256 state read in begin_display; end_display writes it back.
    bool m_saved_option_256 = false;      // +0x301
    // +0x304, +0x308: display width and height (|x1 - x0|, |y1 - y0|) set by begin_display.
    float m_display_width = 0.0f;         // +0x304
    float m_display_height = 0.0f;        // +0x308
    // +0x30c: gameswf matrix (identity after the constructor), converted by get_matrix for the draws.
    gameswf::matrix m_matrix;             // +0x30c
    // +0x324: colour transform (identity after the constructor).
    gameswf::cxform m_cxform;             // +0x324
    // +0x344: mask depth (number of mask runs in use).
    int32_t m_mask_depth = 0;             // +0x344
    // +0x348: z value written into the mask vertices (float bits in the original).
    float m_mask_z = 0.0f;                // +0x348
    // +0x34c (array of MaskRun, 16 bytes with its borrowed flag at +0x358): the mask stack.
    ::array<MaskRun> m_mask_stack;        // +0x34c
    // +0x35c (array of vector2d<float>, flag at +0x368): triangle points, released by the destructor.
    ::array<glitch::core::vector2d<float>> m_triangle_points;  // +0x35c
    // +0x36c (4 bytes in the original): the triangle_intersector of the mask paths. Its constructor (0x785b08) allocates a
    // tesselator_accepter; the destructor (0x788204) deletes it.
    gameswf::triangle_intersector m_triangle_intersector;  // +0x36c
    // +0x370 (int): vertex capacity of m_vertices, grown by ensureBufferCapacity (part 1). Zeroed by the constructor.
    int32_t m_vertex_capacity = 0;        // +0x370
    // +0x374: the batch vertex buffer, 24-byte entries (owned by the vertex streams).
    uint8_t* m_vertices = nullptr;        // +0x374
    // +0x378: the batch vertex streams (CVertexStreams::allocate(1, 0x40000) in the constructor).
    boost::intrusive_ptr<glitch::video::CVertexStreams> m_vertex_streams;  // +0x378
    // +0x37c (52 bytes in the original): the default 4x4 bitmap, a bitmap_info_ogl embedded by value. The
    // constructor builds it from the driver, 4, 4 and the 16-byte opaque alpha block. Its texture, the member
    // m_texture (+0x10 in the original, so +0x38c), is what render_mask_intersection binds.
    ::bitmap_info_ogl m_default_bitmap;  // +0x37c..+0x3af
    // +0x3b0: fill sides 0..2, 76 bytes each.
    fill_style m_fill_styles[3];          // +0x3b0..+0x4ab
};
