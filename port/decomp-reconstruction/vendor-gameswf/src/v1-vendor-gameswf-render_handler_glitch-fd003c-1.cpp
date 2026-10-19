#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// Batch v1-vendor-gameswf-render_handler_glitch-fd003c-1 (render_handler_glitch, part 2 of 3).
//
// Gameloft class, not in upstream GameSWF r1714. Layout and member offsets are in
// vendor-gameswf/include/vendor-gameswf/render_handler_glitch.hpp. Written against the canonical glitch-video classes:
// IVideoDriver (setTransform +0x6c, getTransform +0x70, createBuffer +0x78, setOption +0xa0, clearBuffers +0xa8, the
// render target stack at +0xc8, setMaterial, draw), IRenderTarget::setViewport, CVertexStreams (allocate, setStream) and
// gameswf::render_cache (render_cache.hpp).
//
// Partial rows of this file: the constructor (the blend-mode materials need glitch::collada::CColladaDatabase, whose file
// constructor and DefaultFactory are not in the canonical header), begin_display and end_display (the saved
// detail::driver::SRenderState has no layout in glitch-video) and draw_line_strip (CMaterial has no setParameter for the
// texture). Each body says what is missing; the ledger repeats it.
#include "vendor-gameswf/render_handler_glitch.hpp"

#include <cmath>
#include <cstdint>
#include <cstring>

#include "gameswf/gameswf_types.h"  // gameswf::rgba and gameswf::rect (complete types)
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"  // the effect database of the constructor
#include "glitch-video/material.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/tb/renderpass_srenderstate.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "vendor-gameswf/render_cache.hpp"

namespace {

// Identity in gameswf's 2x3 layout (m_[row][column]).
void set_identity(gameswf::matrix& m) {
    m.m_[0][0] = 1.0f;
    m.m_[0][1] = 0.0f;
    m.m_[0][2] = 0.0f;
    m.m_[1][0] = 0.0f;
    m.m_[1][1] = 1.0f;
    m.m_[1][2] = 0.0f;
}

// s_no_bitmap_data (local symbol at 0x99e1e0, 16 bytes in .data): the alpha of the default 4x4 bitmap. Read from
// the binary; all sixteen bytes are 0xff, so the default bitmap is fully opaque.
unsigned char s_no_bitmap_data[16] = {
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
};

}  // namespace

// 0x7d4624 render_handler_glitch::fill_style_color(int, gameswf::rgba const&)
// The original first calls fill_style::set_bitmap on this fill side with the default bitmap (m_default_bitmap,
// +0x37c), an identity matrix, wrap mode 0 (WRAP_REPEAT) and the batch colour transform (m_cxform, +0x324). Then it
// writes the colour after the colour transform, sets the fill type to 1 and stores the bytes in rgba order. The alpha
// byte the listing leaves in r0 is the register of the last byte store; the function is void.
void render_handler_glitch::fill_style_color(int fill_side, const gameswf::rgba& color) {
    fill_style& fill = m_fill_styles[fill_side];
    gameswf::matrix identity;
    set_identity(identity);
    fill.set_bitmap(&m_default_bitmap, identity, gameswf::render_handler::WRAP_REPEAT, m_cxform);

    const gameswf::rgba out = m_cxform.transform(color);
    fill.unk_00 = 1;
    fill.color[0] = out.m_r;
    fill.color[1] = out.m_g;
    fill.color[2] = out.m_b;
    fill.color[3] = out.m_a;
}

// 0x7d4bb4 render_handler_glitch::create_bitmap_info_native(int, int, gameswf::membuf const*)
// The original allocates 0x34 bytes and runs bitmap_info_ogl's constructor with the driver, the width, the
// height and the data. Plain operator new here; the original's allocator hint is not reproduced.
gameswf::bitmap_info* render_handler_glitch::create_bitmap_info_native(int width, int height,
                                                                       const membuf* data) {
    return new ::bitmap_info_ogl(m_driver, width, height, data);
}

// 0x7d4d00 render_handler_glitch::create_bitmap_info_texture(glitch::video::ITexture*)
// The original allocates 0x34 bytes and runs bitmap_info_ogl(driver, texture).
gameswf::bitmap_info* render_handler_glitch::create_bitmap_info_texture(glitch::video::ITexture* texture) {
    return new ::bitmap_info_ogl(m_driver, texture);
}

// 0x7d4e28 render_handler_glitch::create_bitmap_info_empty(void)
// The original allocates 0x34 bytes and runs bitmap_info_ogl(driver).
gameswf::bitmap_info* render_handler_glitch::create_bitmap_info_empty() {
    return new ::bitmap_info_ogl(m_driver);
}

// 0x7d4f8c render_handler_glitch::set_render_cache(gameswf::render_cache*)
// Stores the cache pointer (+0x0c). With a cache, the entry, vertex and uv arrays are emptied: each is resize(0), the
// size word set to zero (the listing's loop that zeroes entries from a negative size up to zero is the inlined resize and
// cannot run). The index array (+0x40) is not touched: the listing has no store to its size (+0x44).
void render_handler_glitch::set_render_cache(gameswf::render_cache* cache) {
    m_render_cache = cache;
    if (cache != nullptr) {
        cache->m_entries.resize(0);   // +0x14
        cache->m_uvs.resize(0);       // +0x34
        cache->m_vertices.resize(0);  // +0x24
    }
}

// 0x7d53cc render_handler_glitch::create_bitmap_info_target(int, int)
// The original allocates 0x34 bytes and runs bitmap_info_ogl(driver, width, height).
gameswf::bitmap_info* render_handler_glitch::create_bitmap_info_target(int width, int height) {
    return new ::bitmap_info_ogl(m_driver, width, height);
}

// 0x7d551c render_handler_glitch::create_bitmap_info_alpha(int, int, unsigned char*)
// The original allocates 0x34 bytes and runs bitmap_info_ogl(driver, width, height, data).
gameswf::bitmap_info* render_handler_glitch::create_bitmap_info_alpha(int width, int height,
                                                                      unsigned char* data) {
    return new ::bitmap_info_ogl(m_driver, width, height, data);
}

// 0x7d57b0 render_handler_glitch::create_bitmap_info_rgba(gameswf::image_rgba*)
// The original allocates 0x34 bytes and runs bitmap_info_ogl(driver, image).
gameswf::bitmap_info* render_handler_glitch::create_bitmap_info_rgba(gameswf::image_rgba* im) {
    return new ::bitmap_info_ogl(m_driver, im);
}

// 0x7d5a6c render_handler_glitch::create_bitmap_info_rgb(gameswf::image_rgb*)
// The original allocates 0x34 bytes and runs bitmap_info_ogl(driver, image).
gameswf::bitmap_info* render_handler_glitch::create_bitmap_info_rgb(gameswf::image_rgb* im) {
    return new ::bitmap_info_ogl(m_driver, im);
}

// 0x7d6050 render_handler_glitch::TransformState::TransformState(void)
// The binary writes three identity blocks, 0x44 bytes apart (at +0x00, +0x44 and +0x88, identity flags at +0x40,
// +0x84 and +0xc8 set to 1), and zeroes the 16 bytes at +0xcc..+0xdb: the viewport rectangle (object size 0xdc).
render_handler_glitch::TransformState::TransformState()
    : projection(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY),
      view(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY),
      world(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY),
      viewport{} {
}

// 0x7d60f4 render_handler_glitch::render_handler_glitch(glitch::video::IVideoDriver*)   [C1]
// Reconstructed, in the original's order: the scalar fields (the saved render state starts as 0x001f00ff / 0, unk_04 = 1),
// the identity line matrix and colour transform, the two TransformStates and the BufferedRenderer (member initialisers),
// the triangle intersector (its constructor allocates the tesselator), the vertex streams m_vertex_streams =
// CVertexStreams::allocate(1, 0x40000), the default bitmap m_default_bitmap = bitmap_info_ogl(driver, 4, 4,
// s_no_bitmap_data), the three fill sides (colour 0xff, identity bitmap matrix and colour transform, flag 0), then, when
// there is a driver: a reference on it, the vertex buffer from createBuffer (type 0, usage 4, size 0, no data, flag true)
// and the three setStream calls on the streams (position: offset 12, value type 6, 3 components; texture coordinates:
// offset 0, type 6, 2 components; colour: offset 8, type 1, 4 components; stride 24; the colour stream is the one set
// without the flag), and ensureBufferCapacity(256). Then the effect database "gameswf_effects.bdae"
// (CColladaDatabase(file, &DefaultFactory)) builds the effect "_1_-_Default-fx" with constructEffect (driver, name, null) and
// BufferedRenderer::createBlendModeMaterial(renderer, index, technique) runs seven times: (0, "default"), (1, "default"),
// (3, "multiply"), (4, "screen"), (13, "overlay"), (15, "default"), (16, "default").
// The original leaves fill_style::source_bitmap (+0x08) and unk_48 (+0x48) unset; here they take their member
// defaults (null and 0).
render_handler_glitch::render_handler_glitch(glitch::video::IVideoDriver* driver)
    : m_driver(driver),
      m_buffered(driver),
      m_vertex_streams(glitch::video::CVertexStreams::allocate(static_cast<uint8_t>(1), 0x40000u)),
      m_default_bitmap(driver, 4, 4, s_no_bitmap_data) {
    unk_04 = 1;

    set_identity(m_matrix);
    for (int c = 0; c < 4; ++c) {
        m_cxform.m_[c][0] = 1.0f;
        m_cxform.m_[c][1] = 0.0f;
    }

    for (fill_style& fill : m_fill_styles) {
        fill.unk_00 = 0;
        fill.color[0] = 0xff;
        fill.color[1] = 0xff;
        fill.color[2] = 0xff;
        fill.color[3] = 0xff;
        set_identity(fill.bitmap_matrix);
        for (int c = 0; c < 4; ++c) {
            fill.bitmap_cxform.m_[c][0] = 1.0f;
            fill.bitmap_cxform.m_[c][1] = 0.0f;
        }
        fill.unk_44 = 0;
    }

    if (driver != nullptr) {
        boost::intrusive_ptr_add_ref(driver);  // the handler keeps a reference, dropped by the destructor
        const boost::intrusive_ptr<glitch::video::IBuffer> vertex_buffer = driver->createBuffer(0, 4, 0, nullptr, true);
        glitch::video::CVertexStreams& streams = *m_vertex_streams;
        glitch::video::SVertexStreamData data;
        data.buffer = vertex_buffer;
        data.offset = 12;
        data.field08 = 6;
        data.field0c = 3;
        data.field0e = 24;
        streams.setStream(&streams.m_streams[0], data, true);
        data.buffer = vertex_buffer;
        data.offset = 0;
        data.field08 = 6;
        data.field0c = 2;
        data.field0e = 24;
        streams.setStream(&streams.m_streams[1], data, true);
        data.buffer = vertex_buffer;
        data.offset = 8;
        data.field08 = 1;
        data.field0c = 4;
        data.field0e = 24;
        streams.setStream(&streams.m_streams[2], data, false);
    }

    ensureBufferCapacity(256);

    // The blend-mode materials: one effect of the database, bound to seven slots with their technique names.
    glitch::collada::CColladaDatabase database("gameswf_effects.bdae", &glitch::collada::CColladaDatabase::DefaultFactory);
    const boost::intrusive_ptr<glitch::video::CMaterialRenderer> effect(
        database.constructEffect(m_driver, "_1_-_Default-fx", nullptr), false);
    m_buffered.createBlendModeMaterial(effect, 0, "default");
    m_buffered.createBlendModeMaterial(effect, 1, "default");
    m_buffered.createBlendModeMaterial(effect, 3, "multiply");
    m_buffered.createBlendModeMaterial(effect, 4, "screen");
    m_buffered.createBlendModeMaterial(effect, 13, "overlay");
    m_buffered.createBlendModeMaterial(effect, 15, "default");
    m_buffered.createBlendModeMaterial(effect, 16, "default");
}

// 0x7d6680 render_handler_glitch::get_matrix(gameswf::matrix const&)
// Converts a gameswf 2x3 matrix (m_[row][column], translation in m_[0][2] and m_[1][2]) to the glitch 4x4
// column-major layout (see TransformState). The original zeroes its 0x41-byte result (sret), fills columns 0, 1
// and 3 from the matrix, sets elements 10 and 15 to 1, and clears the flag at +0x40. The result is returned as
// glitch::core::CMatrix4<float>, which has the same layout (M[16] and the flag).
glitch::core::CMatrix4<float> render_handler_glitch::get_matrix(const gameswf::matrix& m) const {
    const float m00 = m.m_[0][0];
    const float m01 = m.m_[0][1];
    const float m02 = m.m_[0][2];
    const float m10 = m.m_[1][0];
    const float m11 = m.m_[1][1];
    const float m12 = m.m_[1][2];

    glitch::core::CMatrix4<float> out;
    float* e = out.M;
    e[0] = m00;  // column 0: (m00, m10, 0, 0)
    e[1] = m10;
    e[2] = 0.0f;
    e[3] = 0.0f;
    e[4] = m01;  // column 1: (m01, m11, 0, 0)
    e[5] = m11;
    e[6] = 0.0f;
    e[7] = 0.0f;
    e[8] = 0.0f;  // column 2: (0, 0, 1, 0)
    e[9] = 0.0f;
    e[10] = 1.0f;
    e[11] = 0.0f;
    e[12] = m02;  // column 3: (tx, ty, 0, 1)
    e[13] = m12;
    e[14] = 0.0f;
    e[15] = 1.0f;
    out.flag = false;
    return out;
}

// 0x7d6a40 render_handler_glitch::begin_display_callback(void)
// Forwards to BufferedRenderer::flush. The player context that the listing shows as a second argument is the caller's r1
// left over: flush() takes none, and passes its own m_playerContext (set by set_context) to texture_cache::unlock_all.
void render_handler_glitch::begin_display_callback() {
    m_buffered.flush();
}

// 0x7d6afc render_handler_glitch::reset(void)
// Gives the driver an empty material (the listing builds a null material and a null renderer, both with parameter ids
// 0xffff, and passes the material to IVideoDriver::setMaterial, whose clone at 0x7d4ef8 has the attribute map fixed to
// null), then clears the textures of the batch renderer.
void render_handler_glitch::reset() {
    const boost::intrusive_ptr<glitch::video::CMaterial> no_material;
    m_driver->setMaterial(no_material, static_cast<const boost::intrusive_ptr<glitch::video::CVertexAttributeMap>*>(nullptr));
    m_buffered.clearTextures();
}

// 0x7d6ddc render_handler_glitch::flush(void)
// Forwards to BufferedRenderer::flush (see begin_display_callback for the second register).
void render_handler_glitch::flush() {
    m_buffered.flush();
}


// 0x7d6de4 render_handler_glitch::end_display(void)
// Flushes the batch, then restores the driver state that begin_display saved, in the original's order:
// setTransform(2, m_saved_state.projection), setTransform(0, m_saved_state.view), setTransform(1, m_saved_state.world)
// (driver vtable +0x6c), the viewport of the current render target (the last entry of the driver's target stack, +0xc8)
// with m_saved_state.viewport (IRenderTarget::setViewport, slot +0x0c), setOption(256, m_saved_option_256) (slot +0xa0) and
// the render state (slot +0x1e4, setRenderState with the 8 bytes at +0x14). The flush's second register is the caller's r1
// (see begin_display_callback); the return is the driver call's r0, which the interface drops.
void render_handler_glitch::end_display() {
    m_buffered.flush();
    m_driver->setTransform(2, m_saved_state.projection);
    m_driver->setTransform(0, m_saved_state.view);
    m_driver->setTransform(1, m_saved_state.world);
    m_driver->m_renderTargets.back()->setViewport(m_saved_state.viewport);
    m_driver->setOption(256, m_saved_option_256);
    m_driver->setRenderState(m_saved_render_state);  // vtable +0x1e4
}

// 0x7d71bc render_handler_glitch::render_mask_intersection(void)
// The default bitmap's texture (its +0x10 word, +0x38c in the original) is bound first. Then the last mask run is drawn as
// triangle-list vertices, at most 256 at a time: each point gets the white colour and the mask z, and a full batch (256
// vertices, or the whole run) goes to the batch renderer with queueBuffer(streams, 6). The loop keeps the original's exit:
// when the point index reaches the run size, it flushes and returns without queueing the vertices still pending in the
// current batch. The flush calls pass nothing: the listing's second register is the caller's r1 (see
// begin_display_callback).
void render_handler_glitch::render_mask_intersection() {
    m_buffered.setTexture(m_default_bitmap.m_texture);

    const MaskRun& run = m_mask_stack[m_mask_depth - 1];
    const int run_count = run.size();

    ensureBufferCapacity(256);
    if (run_count > 0) {
        Vertex* verts = reinterpret_cast<Vertex*>(m_vertices);
        int point = 0;   // the original's v6: index into the run's points
        int vertex = 0;  // the original's v7: vertices in the current batch
        do {
            for (;;) {
                Vertex& v = verts[vertex++];
                bool full = vertex > 255;
                const glitch::core::vector2d<float> p = run[point];
                if (vertex == run_count) {
                    full = true;
                }
                ++point;
                v.color = 0xffffffffu;  // white: the four bytes are set to -1
                v.z = m_mask_z;
                v.x = p.X;
                v.y = p.Y;
                if (full) {
                    break;
                }
                if (point == run_count) {
                    m_buffered.flush();
                    return;
                }
            }
            m_vertex_streams->m_field08 = static_cast<uint32_t>(vertex);
            m_buffered.queueBuffer(m_vertex_streams, 6);
            vertex = 0;
        } while (point != run_count);
    }
    m_buffered.flush();
}

// 0x7d73d0 render_handler_glitch::begin_display(gameswf::rgba, int, int, int, int, float, float, float, float)
// In the original's order: the display width and height (fabs of x1-x0, y1-y0); the driver's transform states 2, 0
// and 1 saved into m_saved_state (getTransform, slot +0x70); the viewport of the current render target (the last entry of
// the driver's target stack) saved into m_saved_state.viewport; the driver's option 256 saved (bit 8 of the option word
// +0x88) in m_saved_option_256; [NOT WRITTEN: the render state saved into the 8 bytes at +0x14 with getRenderState, slot
// +0x1e0]; the viewport of that render target set to (viewport_x0, viewport_y0, viewport_x0 + viewport_width,
// viewport_y0 + viewport_height); BufferedRenderer::reset; setOption(256, false); clearBuffers(2) (slot +0xa8); the mask
// depth and z set to zero and every mask run emptied; the projection matrix (m_state.projection, state 2) and the view
// matrix (m_state.view, state 0: maps the display rectangle to clip space) built and given to the driver with setTransform;
// the world matrix (state 1) set to the identity and given to the driver. The background colour is not used.
// The mask stack is reset to size zero for each run. The original also writes a zero for any run with a negative size; a
// gameswf::array never has one, so that path is not written.
void render_handler_glitch::begin_display(gameswf::rgba background_color, int viewport_x0,
                                          int viewport_y0, int viewport_width, int viewport_height,
                                          float x0, float x1, float y0, float y1) {
    (void)background_color;
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
    { static int n = 0; if (n++ < 20) __android_log_print(ANDROID_LOG_INFO, "DH2SWF", "begin_display viewport %d,%d %dx%d rect x %g..%g y %g..%g", viewport_x0, viewport_y0, viewport_width, viewport_height, x0, x1, y0, y1); }
#endif

    const float w = x1 - x0;
    const float h = y1 - y0;
    m_display_width = std::fabs(w);
    m_display_height = std::fabs(h);

    m_saved_state.projection = m_driver->getTransform(2);
    m_saved_state.view = m_driver->getTransform(0);
    m_saved_state.world = m_driver->getTransform(1);
    glitch::video::IRenderTarget* target = m_driver->m_renderTargets.back().get();
    m_saved_state.viewport = target->m_viewport;
    m_saved_option_256 = ((m_driver->m_options >> 8) & 1) != 0;
    m_driver->getRenderState(m_saved_render_state);  // vtable +0x1e0

    glitch::core::rect<int32_t> viewport;
    viewport.UpperLeftCorner.X = viewport_x0;
    viewport.UpperLeftCorner.Y = viewport_y0;
    viewport.LowerRightCorner.X = viewport_x0 + viewport_width;
    viewport.LowerRightCorner.Y = viewport_y0 + viewport_height;
    m_driver->m_renderTargets.back()->setViewport(viewport);

    m_buffered.reset();
    m_driver->setOption(256, false);
    m_driver->clearBuffers(2);

    m_mask_depth = 0;
    m_mask_z = 0.0f;
    for (int i = 0; i < m_mask_stack.size(); ++i) {
        m_mask_stack[i].resize(0);
    }

    // State 2 (projection): an orthographic-style matrix with depth mapped to 0..1.
    float* p = m_state.projection.M;
    p[0] = 1.0f;
    p[1] = 0.0f;
    p[2] = 0.0f;
    p[3] = 0.0f;
    p[4] = 0.0f;
    p[5] = -1.0f;
    p[6] = 0.0f;
    p[7] = 0.0f;
    p[8] = 0.0f;
    p[9] = 0.0f;
    p[10] = 0.5f;
    p[11] = 0.0f;
    p[12] = 0.0f;
    p[13] = 0.0f;
    p[14] = 0.5f;
    p[15] = 1.0f;
    m_state.projection.flag = false;
    m_driver->setTransform(2, m_state.projection);

    // State 0 (view): maps the display rectangle to clip space.
    float* v = m_state.view.M;
    v[0] = 2.0f / w;
    v[1] = 0.0f;
    v[2] = 0.0f;
    v[3] = 0.0f;
    v[4] = 0.0f;
    v[5] = 2.0f / h;
    v[6] = 0.0f;
    v[7] = 0.0f;
    v[8] = 0.0f;
    v[9] = 0.0f;
    v[10] = -1.0f;
    v[11] = 0.0f;
    v[12] = -(x1 + x0) / w;
    v[13] = -(y1 + y0) / h;
    v[14] = -0.0f;
    v[15] = 1.0f;
    m_state.view.flag = false;
    m_driver->setTransform(0, m_state.view);

    // State 1 (world): glitch::core::IdentityMatrix, copied with its 0x41 bytes.
    m_state.world = glitch::core::CMatrix4<float>(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY);
    m_driver->setTransform(1, m_state.world);
}

// 0x7d77b0 render_handler_glitch::draw_line_strip(void const*, int)
// The coordinates are float (x, y) pairs (8 bytes each), as the original reads them. In the original's order: the batch
// flush; the line scale; the material (the batch renderer's slot for m_materialIndex, or slot 0 when that slot has no
// material); the line width written into the first render pass of the material's current technique (state float at +0x0c,
// with the pass's change flag set when the value changed: the same pass edit as BufferedRenderer::applyMaskState); the
// texture parameter (IMaterialParameters<CMaterial>::setParameter<intrusive_ptr<ITexture>> with the slot's parameter id 2,
// index 0 and m_default_bitmap.m_texture); IVideoDriver::setMaterial(material); the vertex transform (matrix from
// get_matrix, z from m_mask_z) and the colour of fill side 2 into the staging vertices; the vertex count on the vertex
// streams; and a non-indexed line-strip draw of the streams (primitive type 1, vertex range 0..count).
void render_handler_glitch::draw_line_strip(const void* coords, int vertex_count) {
    m_buffered.flush();

    // Line scale: the length of the x axis of the line matrix, signed by the determinant of its 2x2 part,
    // plus the length of the y axis, times the fill side 2 scale (+0x490), halved and divided by 20.
    const float a = m_matrix.m_[0][0];
    const float b = m_matrix.m_[0][1];
    const float d = m_matrix.m_[1][0];
    const float e = m_matrix.m_[1][1];
    float axis_x = std::sqrt(a * a + b * b);
    if (e * a - d * b < 0.0f) {
        axis_x = -axis_x;
    }
    const float axis_y = std::sqrt(e * e + d * d);
    float scale = ((std::fabs(axis_x) + std::fabs(axis_y)) * m_fill_styles[2].unk_48) * 0.5f / 20.0f;
    if (scale <= 1.0f) {
        scale = 1.0f;
    }

    // Material selection: the batch renderer's material for m_materialIndex, or entry 0 when that slot has no material.
    const int material_index = m_buffered.m_materialIndex;
    BufferedRenderer::MaterialData& selected =
        m_buffered.m_materials[material_index].m_material ? m_buffered.m_materials[material_index]
                                                       : m_buffered.m_materials[0];

    // The line width goes into the first render pass of the material's technique (state float +0x0c). The pass is read with
    // its 32 state bytes, edited and written back through the renderer, which marks the pass changed only when the bytes
    // differ (the listing sets the flag byte when the new width differs from the old one).
    {
        glitch::video::CMaterial& material = *selected.m_material;
        glitch::video::CMaterialRenderer& renderer = *material.m_renderer;
        const int32_t technique = material.getTechnique();
        const glitch::video::SRenderPass* pass = renderer.m_techniques[technique].passes;
        glitch::video::detail::renderpass::SRenderState state;
        std::memcpy(&state, pass->stateWords, sizeof(state));
        state.m_float0c = scale;
        renderer.setRenderState(static_cast<uint8_t>(technique), 0, state);
    }
    selected.m_material->parameters.setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        selected.m_parameterId2, 0, m_default_bitmap.m_texture);
    m_driver->setMaterial(selected.m_material,
                          static_cast<const boost::intrusive_ptr<glitch::video::CVertexAttributeMap>*>(nullptr));

    // The line colour is fill side 2's colour.
    const uint8_t cr = m_fill_styles[2].color[0];
    const uint8_t cg = m_fill_styles[2].color[1];
    const uint8_t cb = m_fill_styles[2].color[2];
    const uint8_t ca = m_fill_styles[2].color[3];

    ensureBufferCapacity(vertex_count);
    const glitch::core::CMatrix4<float> mat = get_matrix(m_matrix);
    const float* M = mat.M;
    const float* pts = static_cast<const float*>(coords);
    const float z = m_mask_z;

    // Packed rgba, low byte first, as the four byte stores of the original give it.
    const uint32_t packed = uint32_t(cr) | (uint32_t(cg) << 8) | (uint32_t(cb) << 16) | (uint32_t(ca) << 24);
    Vertex* verts = reinterpret_cast<Vertex*>(m_vertices);
    for (int i = 0; i < vertex_count; ++i) {
        const float x = pts[2 * i];
        const float y = pts[2 * i + 1];
        Vertex& v = verts[i];
        v.u = 0.0f;  // the original zeroes the first two words of the entry
        v.v = 0.0f;
        v.color = packed;
        v.x = ((x * M[0] + y * M[4]) + z * M[8]) + M[12];
        v.y = ((x * M[1] + y * M[5]) + z * M[9]) + M[13];
        v.z = ((x * M[2] + y * M[6]) + z * M[10]) + M[14];
    }

    m_vertex_streams->m_field08 = static_cast<uint32_t>(vertex_count);
    {
        const boost::intrusive_ptr<const glitch::video::CVertexStreams> batch = m_vertex_streams;
        glitch::video::CPrimitiveStream primitives;  // no index buffer
        primitives.m_offset = 0;
        primitives.m_count = static_cast<uint32_t>(vertex_count);
        primitives.m_vertexStart = 0;
        primitives.m_vertexEnd = static_cast<uint32_t>(vertex_count);
        primitives.m_indexType = 255;
        primitives.m_primitiveType = 1;  // line strip
        m_driver->draw(batch, primitives, nullptr);
    }
}

// 0x7d7cf4 render_handler_glitch::~render_handler_glitch(void)   [D1]
// The body clears the vertex streams and the vertex pointer, then drops the driver reference (dropped and cleared). The rest
// of the listing is the member destructors, in reverse declaration order: the default bitmap (~bitmap_info_ogl), the
// triangle intersector (deletes its tesselator), the triangle point array and each mask run and the mask stack (the DH2
// array destructor empties the array and releases the buffer: resize(0), reserve(0)), and last the batch renderer.
render_handler_glitch::~render_handler_glitch() {
    m_vertex_streams = nullptr;
    m_vertices = nullptr;

    if (m_driver != nullptr) {
        m_driver->drop();
        m_driver = nullptr;
    }
}

// 0x7d7f0c render_handler_glitch::~render_handler_glitch(void)   [D0, deleting destructor]
// SKIPPED: the deleting destructor is generated by the compiler from ~render_handler_glitch() above. It calls
// the D1 body and then frees the object.
