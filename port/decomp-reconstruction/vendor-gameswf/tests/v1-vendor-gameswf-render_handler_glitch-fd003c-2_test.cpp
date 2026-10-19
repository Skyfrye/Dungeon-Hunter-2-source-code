// Test for the render_handler_glitch batch v1-vendor-gameswf-render_handler_glitch-fd003c-2 (part 3 of 3) and for
// render_handler_glitch::fill_style::apply (0x7d6b54).
// Link line: the same as the part 1 test (v1-vendor-gameswf-render_handler_glitch-fd003c-0_test.cpp), with this file in
// place of that one.
//
// Two groups of checks. The pure arithmetic of the draw paths (the pixel snap, the quad corners of draw_bitmap, the matrix
// transform of draw_mesh_primitive and the quad index words) runs on render_handler_glitch_detail.hpp. The class itself runs
// over the doubles of render_handler_glitch_test_types.hpp (batch renderer, triangle intersector, driver, texture
// manager): fill_style::apply for the three fill kinds, set_blend_mode, begin_submit_mask / end_submit_mask / disable_mask
// (the pass edits and the colour mask), process_mask_intersection (strip, indexed and plain lists; depth 1 and depth 2 with
// the intersector answers), draw_bitmap (the quad, the snap, the render cache record), draw (the cache replay) and the mesh
// draws.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "gameswf/gameswf_types.h"
#include "render_handler_glitch_test_types.hpp"
#include "vendor-gameswf/render_cache.hpp"
#include "vendor-gameswf/render_handler_glitch_detail.hpp"

// ---- stand-ins -------------------------------------------------------------------------------------------------

__attribute__((weak)) gameswf::rgba gameswf::cxform::transform(const gameswf::rgba in) const {
    return in;
}
__attribute__((weak)) gameswf::cxform::cxform() {
    for (int c = 0; c < 4; ++c) {
        m_[c][0] = 1.0f;
        m_[c][1] = 0.0f;
    }
}
__attribute__((weak)) void gameswf::cxform::clamp() {}
__attribute__((weak)) gameswf::matrix::matrix() {
    m_[0][0] = 1.0f;
    m_[0][1] = 0.0f;
    m_[0][2] = 0.0f;
    m_[1][0] = 0.0f;
    m_[1][1] = 1.0f;
    m_[1][2] = 0.0f;
}

__attribute__((weak)) gameswf::render_cache::~render_cache() {}

namespace gameswf {
template <class T>
void destruct(const T* object) {
    delete const_cast<T*>(object);
}
template void destruct<ref_counted>(const ref_counted* object);

__attribute__((weak)) image_base::~image_base() {
    if (m_data != nullptr) {
        free_internal(m_data, 0);
        m_data = nullptr;
    }
}
__attribute__((weak)) std::uint8_t* scanline(image_base* surf, int y) {
    return surf->m_data + surf->m_pitch * y;
}
}  // namespace gameswf

namespace d = render_handler_glitch_detail;

namespace {

int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

using rhg_test::Event;

bool near(float a, float b) {
    return a > b - 1e-4f && a < b + 1e-4f;
}

// ---- the pure arithmetic ----------------------------------------------------------------------------------------

void check_snap() {
    // 20 * ((int)v + 10) / 20 with C division: the value rounds to the nearest 20.
    CHECK(d::snap_to_pixel(0.0f) == 0.0f);
    CHECK(d::snap_to_pixel(9.9f) == 0.0f);   // (9 + 10) / 20 = 0
    CHECK(d::snap_to_pixel(10.0f) == 20.0f); // (10 + 10) / 20 = 1
    CHECK(d::snap_to_pixel(25.0f) == 20.0f); // (25 + 10) / 20 = 1
    CHECK(d::snap_to_pixel(30.0f) == 40.0f); // (30 + 10) / 20 = 2
    CHECK(d::snap_to_pixel(-10.0f) == 0.0f); // 0 / 20
    CHECK(d::snap_to_pixel(-11.0f) == 0.0f); // -1 / 20 truncates to 0
    CHECK(d::snap_to_pixel(-30.0f) == -20.0f);
}

void check_quad() {
    const float rect[4] = {0.0f, 10.0f, 0.0f, 20.0f};  // xmin, xmax, ymin, ymax

    // Identity: the corners are the rect corners, vertex 3 is the far corner.
    const float identity[6] = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    d::QuadPositions q = d::quad_positions(identity, rect);
    CHECK(near(q.x[0], 0.0f) && near(q.y[0], 0.0f));
    CHECK(near(q.x[1], 10.0f) && near(q.y[1], 0.0f));
    CHECK(near(q.x[2], 0.0f) && near(q.y[2], 20.0f));
    CHECK(near(q.x[3], 10.0f) && near(q.y[3], 20.0f));

    // Translation (5, 7).
    const float translate[6] = {1.0f, 0.0f, 5.0f, 0.0f, 1.0f, 7.0f};
    q = d::quad_positions(translate, rect);
    CHECK(near(q.x[0], 5.0f) && near(q.y[0], 7.0f));
    CHECK(near(q.x[1], 15.0f) && near(q.y[1], 7.0f));
    CHECK(near(q.x[2], 5.0f) && near(q.y[2], 27.0f));
    CHECK(near(q.x[3], 15.0f) && near(q.y[3], 27.0f));

    // Swap x and y: the far corner (xmax, ymax) maps to (20, 10).
    const float swap[6] = {0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f};
    q = d::quad_positions(swap, rect);
    CHECK(near(q.x[0], 0.0f) && near(q.y[0], 0.0f));
    CHECK(near(q.x[1], 0.0f) && near(q.y[1], 10.0f));
    CHECK(near(q.x[2], 20.0f) && near(q.y[2], 0.0f));
    CHECK(near(q.x[3], 20.0f) && near(q.y[3], 10.0f));

    // Scale (2, 3) on a unit-sized rect at (1, 1).
    const float scale[6] = {2.0f, 0.0f, 0.0f, 0.0f, 3.0f, 0.0f};
    const float small[4] = {1.0f, 2.0f, 1.0f, 2.0f};
    q = d::quad_positions(scale, small);
    CHECK(near(q.x[0], 2.0f) && near(q.y[0], 3.0f));
    CHECK(near(q.x[1], 4.0f) && near(q.y[1], 3.0f));
    CHECK(near(q.x[2], 2.0f) && near(q.y[2], 6.0f));
    CHECK(near(q.x[3], 4.0f) && near(q.y[3], 6.0f));
}

void check_transform() {
    // Column-major translation by (3, 4, 5).
    const float translate[16] = {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 3, 4, 5, 1};
    float x = 1.0f, y = 2.0f, z = 3.0f;
    d::transform_xyz(translate, x, y, z);
    CHECK(near(x, 4.0f) && near(y, 6.0f) && near(z, 8.0f));

    // Uniform scale 2.
    const float scale[16] = {2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1};
    x = 1.0f;
    y = 2.0f;
    z = 3.0f;
    d::transform_xyz(scale, x, y, z);
    CHECK(near(x, 2.0f) && near(y, 4.0f) && near(z, 6.0f));

    // Rotation of 90 degrees about z: column 0 is (0, 1, 0), column 1 is (-1, 0, 0). The point (1, 0, 0) goes to (0, 1, 0).
    const float rot[16] = {0, 1, 0, 0, -1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1};
    x = 1.0f;
    y = 0.0f;
    z = 0.0f;
    d::transform_xyz(rot, x, y, z);
    CHECK(near(x, 0.0f) && near(y, 1.0f) && near(z, 0.0f));
}

void check_indices() {
    // The pseudocode stores the quad's indices as three 32-bit words; read as u16 they are 0, 1, 2, 1, 2, 3.
    const uint32_t words[3] = {0x00010000u, 0x00010002u, 0x00030002u};
    uint16_t expanded[6] = {};
    std::memcpy(expanded, words, sizeof(expanded));
    bool same = true;
    for (int i = 0; i < 6; ++i) {
        same = same && expanded[i] == d::kQuadIndices[i];
    }
    CHECK(same);
    CHECK(d::kQuadIndices[0] == 0 && d::kQuadIndices[1] == 1 && d::kQuadIndices[2] == 2);
    CHECK(d::kQuadIndices[3] == 1 && d::kQuadIndices[4] == 2 && d::kQuadIndices[5] == 3);
    CHECK(d::kMaskBlendIndex == 15);
}

// ---- the class ---------------------------------------------------------------------------------------------------

struct Rig {
    rhg_test::RecordingDriver driver;
    glitch::video::CTextureManager manager;
    render_handler_glitch* handler = nullptr;

    Rig() {
        rhg_test::reset_logs();
        driver.m_textureManager = &manager;
        handler = new render_handler_glitch(&driver);
        handler->unk_04 = 0;  // no pixel snap unless a test asks for it
    }
    ~Rig() {
        delete handler;
    }
};

// A material with one technique of one pass in its default render state, for the pass edits of the mask paths.
struct MaterialRig {
    glitch::video::detail::renderpass::SRenderState initial;
    glitch::video::SRenderPass pass;
    glitch::video::STechniqueEntry technique;
    glitch::video::CMaterialRenderer renderer;
    boost::intrusive_ptr<glitch::video::CMaterial> material;

    MaterialRig() {
        std::memcpy(pass.stateWords, &initial, sizeof(initial));
        pass.flag30 = 0;
        technique.passCount = 1;
        technique.passes = &pass;
        renderer.m_techniques = &technique;
        renderer.m_techniqueCount = 1;
        renderer.m_refCount = 100;  // never released to zero
        material = boost::intrusive_ptr<glitch::video::CMaterial>(new glitch::video::CMaterial, true);  // born with count 0
        material->m_renderer = boost::intrusive_ptr<glitch::video::CMaterialRenderer>(&renderer, true);
    }
    ~MaterialRig() {
        material->m_renderer = nullptr;
    }
};

// A bitmap with a texture of the given size (the manager's count of one is dropped by the caller).
struct BitmapRig {
    bio_test::TestTexture* texture;
    bitmap_info_ogl* bitmap;

    BitmapRig(rhg_test::RecordingDriver& driver, uint32_t width, uint32_t height)
        : texture(new bio_test::TestTexture(width, height)), bitmap(new bitmap_info_ogl(&driver, texture)) {}
    ~BitmapRig() {
        delete bitmap;
        texture->drop();
    }
};

void test_fill_style_apply() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;
    BitmapRig bmp(rig.driver, 8, 4);

    Vertex vertices[3];
    for (int i = 0; i < 3; ++i) {
        vertices[i].u = 7.0f;
        vertices[i].v = 7.0f;
        vertices[i].color = 0;
        vertices[i].x = 10.0f * static_cast<float>(i + 1);  // 10, 20, 30
        vertices[i].y = 4.0f * static_cast<float>(i + 1);   // 4, 8, 12
        vertices[i].z = 0.0f;
    }

    // Type 1 (a colour fill with the default bitmap): the bitmap's texture is bound, u and v are zeroed, colour set.
    render_handler_glitch::fill_style solid;
    solid.unk_00 = 1;
    solid.source_bitmap = bmp.bitmap;
    solid.color[0] = 1;
    solid.color[1] = 2;
    solid.color[2] = 3;
    solid.color[3] = 4;
    rhg_test::g_events.clear();
    solid.apply(&rig.driver, g.m_buffered, vertices, 3);
    CHECK(rhg_test::count_of(Event::SetTexture) == 1);
    CHECK(rhg_test::nth_of(Event::SetTexture, 0)->ptr == bmp.texture);
    for (int i = 0; i < 3; ++i) {
        CHECK(vertices[i].u == 0.0f && vertices[i].v == 0.0f);
        const uint8_t* rgba = reinterpret_cast<const uint8_t*>(&vertices[i].color);
        CHECK(rgba[0] == 1 && rgba[1] == 2 && rgba[2] == 3 && rgba[3] == 4);
        CHECK(vertices[i].x == 10.0f * static_cast<float>(i + 1));  // positions untouched
    }

    // Type 0 (or any other type): only the colour; no texture bind, u and v kept.
    for (int i = 0; i < 3; ++i) {
        vertices[i].u = 7.0f;
        vertices[i].v = 7.0f;
    }
    render_handler_glitch::fill_style plain;
    plain.unk_00 = 0;
    plain.color[0] = 9;
    plain.color[1] = 8;
    plain.color[2] = 7;
    plain.color[3] = 6;
    rhg_test::g_events.clear();
    plain.apply(&rig.driver, g.m_buffered, vertices, 3);
    CHECK(rhg_test::count_of(Event::SetTexture) == 0);
    CHECK(vertices[0].u == 7.0f && vertices[2].v == 7.0f);
    CHECK(reinterpret_cast<const uint8_t*>(&vertices[1].color)[2] == 7);
    plain.apply(&rig.driver, g.m_buffered, vertices, 0);  // zero vertices: nothing to do

    // Types 2 (repeat) and 3 (clamp): the texture is bound with wrap mode 0 or 2 and u, v come from the position through the
    // bitmap matrix scaled by 1 / width and 1 / height: u = (a x + b y + tx) / 8, v = (c x + d y + ty) / 4.
    render_handler_glitch::fill_style tiled;
    tiled.unk_00 = 2;
    tiled.source_bitmap = bmp.bitmap;
    tiled.bitmap_matrix.m_[0][0] = 2.0f;
    tiled.bitmap_matrix.m_[0][1] = 0.5f;
    tiled.bitmap_matrix.m_[0][2] = 16.0f;
    tiled.bitmap_matrix.m_[1][0] = 1.0f;
    tiled.bitmap_matrix.m_[1][1] = 3.0f;
    tiled.bitmap_matrix.m_[1][2] = 8.0f;
    tiled.color[0] = 255;
    tiled.color[3] = 128;
    rhg_test::g_events.clear();
    tiled.apply(&rig.driver, g.m_buffered, vertices, 3);
    CHECK(rhg_test::count_of(Event::SetTexture) == 1);
    CHECK(((bmp.texture->m_flags38 >> 18) & 7) == 0);  // wrap mode 0 for type 2
    for (int i = 0; i < 3; ++i) {
        const float x = vertices[i].x;
        const float y = vertices[i].y;
        CHECK(near(vertices[i].u, (2.0f * x + 0.5f * y + 16.0f) / 8.0f));
        CHECK(near(vertices[i].v, (1.0f * x + 3.0f * y + 8.0f) / 4.0f));
        const uint8_t* rgba = reinterpret_cast<const uint8_t*>(&vertices[i].color);
        CHECK(rgba[0] == 255 && rgba[3] == 128);
    }
    tiled.unk_00 = 3;
    tiled.apply(&rig.driver, g.m_buffered, vertices, 3);
    CHECK(((bmp.texture->m_flags38 >> 18) & 7) == 2);  // wrap mode 2 for type 3
}

// Gives a rig's batch renderer a material in slot 0 and returns the rig for the mask-path tests.
void test_blend_mode_and_masks() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;
    MaterialRig mat;
    g.m_buffered.m_materials[0].m_material = mat.material;

    // set_blend_mode without masks: flush only when the slot changes.
    g.m_buffered.m_materialIndex = 0;
    rhg_test::g_events.clear();
    g.set_blend_mode(static_cast<gameswf::blend_mode::id>(0));  // the same slot
    CHECK(rhg_test::g_events.empty());
    g.set_blend_mode(static_cast<gameswf::blend_mode::id>(3));
    CHECK(g.m_buffered.m_materialIndex == 3);
    CHECK(rhg_test::count_of(Event::Flush) == 1 && rhg_test::count_of(Event::ApplyMask) == 0);

    // begin_submit_mask: flush (twice when the slot is not the mask slot), slot 15, depth + 1, z + 0.001, mask state 1.
    rhg_test::g_events.clear();
    g.m_mask_z = 0.0f;
    g.begin_submit_mask();
    CHECK(g.m_buffered.m_materialIndex == 15);
    CHECK(g.m_mask_depth == 1 && near(g.m_mask_z, 0.001f));
    CHECK(rhg_test::count_of(Event::Flush) == 2);
    CHECK(rhg_test::g_events.back().kind == Event::ApplyMask && rhg_test::g_events.back().arg == 1);
    CHECK(g.m_mask_stack.size() == 1 && g.m_mask_stack[0].size() == 0);

    // While in the mask slot, set_blend_mode does nothing.
    rhg_test::g_events.clear();
    g.set_blend_mode(static_cast<gameswf::blend_mode::id>(5));
    CHECK(rhg_test::g_events.empty() && g.m_buffered.m_materialIndex == 15);

    // A second level (the slot is already the mask slot, so one flush).
    rhg_test::g_events.clear();
    g.begin_submit_mask();
    CHECK(g.m_mask_depth == 2 && near(g.m_mask_z, 0.002f));
    CHECK(rhg_test::count_of(Event::Flush) == 1);
    CHECK(g.m_mask_stack.size() == 2);

    // end_submit_mask with two levels open: the mask intersection runs first (it binds the default bitmap's texture and
    // flushes), then the flushes, the slot goes to zero and the mask state 2 is applied.
    g.m_default_bitmap.layout();
    g.m_mask_stack[1].resize(3);
    rhg_test::g_events.clear();
    g.end_submit_mask();
    CHECK(g.m_buffered.m_materialIndex == 0);
    CHECK(rhg_test::g_events.front().kind == Event::SetTexture);
    CHECK(rhg_test::g_events.back().kind == Event::ApplyMask && rhg_test::g_events.back().arg == 2);

    // disable_mask with depth 2: flush, depth 1, mask state 0, the closed run (index 1) emptied; then, with a mask still
    // open, the material pass edits around the intersection of the remaining run (index 0) and the colour mask.
    g.m_buffered.m_materialIndex = 15;
    g.m_mask_stack[0].resize(3);
    g.m_mask_stack[1].resize(3);
    rhg_test::g_events.clear();
    g.disable_mask();
    CHECK(g.m_mask_depth == 1);
    CHECK(g.m_mask_stack[1].size() == 0 && g.m_mask_stack[0].size() == 3);
    CHECK(rhg_test::g_events[0].kind == Event::Flush);
    CHECK(rhg_test::g_events[1].kind == Event::ApplyMask && rhg_test::g_events[1].arg == 0);
    // Colour mask: first off for r, g and b (alpha on, as the listing's clone passes it), then all on.
    const Event* mask_off = rhg_test::nth_of(Event::SetColorMask, 0);
    const Event* mask_on = rhg_test::nth_of(Event::SetColorMask, 1);
    CHECK(mask_off && mask_off->arg == 8 && mask_off->ptr == mat.material.get());
    CHECK(mask_on && mask_on->arg == 15 && mask_on->ptr == mat.material.get());
    // render_mask_intersection ran between them: it queued the three points of run 0.
    CHECK(rhg_test::count_of(Event::QueueBuffer) == 1);
    {
        int mask_off_at = -1, queue_at = -1, mask_on_at = -1;
        for (size_t i = 0; i < rhg_test::g_events.size(); ++i) {
            if (rhg_test::g_events[i].kind == Event::SetColorMask && mask_off_at < 0) {
                mask_off_at = static_cast<int>(i);
            } else if (rhg_test::g_events[i].kind == Event::QueueBuffer) {
                queue_at = static_cast<int>(i);
            } else if (rhg_test::g_events[i].kind == Event::SetColorMask) {
                mask_on_at = static_cast<int>(i);
            }
        }
        CHECK(mask_off_at >= 0 && queue_at > mask_off_at && mask_on_at > queue_at);
    }
    // The pass state after both edits: second word has bit 19 set, bit 20 clear, bit 16 set; first word bits 27-29 are 2.
    {
        glitch::video::detail::renderpass::SRenderState state;
        std::memcpy(&state, mat.pass.stateWords, sizeof(state));
        CHECK((state.m_word04 & 0x80000u) != 0 && (state.m_word04 & 0x100000u) == 0 && (state.m_word04 & 0x10000u) != 0);
        CHECK(((state.m_word00 >> 27) & 7u) == 2u);
        CHECK(mat.pass.flag30 == 1);
    }

    // disable_mask with depth 1: closes the last level and does nothing more.
    rhg_test::g_events.clear();
    g.disable_mask();
    CHECK(g.m_mask_depth == 0);
    CHECK(rhg_test::count_of(Event::SetColorMask) == 0 && rhg_test::count_of(Event::QueueBuffer) == 0);

    g.m_buffered.m_materials[0].m_material = nullptr;
}

gameswf::point pt(float x, float y) {
    gameswf::point p;
    p.m_x = x;
    p.m_y = y;
    return p;
}

void test_process_mask_intersection() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;
    Vertex vertices[6];
    std::memset(vertices, 0, sizeof(vertices));
    const float xs[6] = {0, 1, 0, 1, 2, 2};
    const float ys[6] = {0, 0, 1, 1, 0, 1};
    for (int i = 0; i < 6; ++i) {
        vertices[i].x = xs[i];
        vertices[i].y = ys[i];
    }
    g.m_buffered.m_materialIndex = 15;
    g.m_mask_stack.resize(2);

    // Nothing to do: no mask open, another slot, or fewer than three vertices.
    g.m_mask_depth = 0;
    CHECK(!g.process_mask_intersection(vertices, 4, nullptr, 0, 6));
    g.m_mask_depth = 1;
    g.m_buffered.m_materialIndex = 3;
    CHECK(!g.process_mask_intersection(vertices, 4, nullptr, 0, 6));
    g.m_buffered.m_materialIndex = 15;
    CHECK(!g.process_mask_intersection(vertices, 2, nullptr, 0, 6));
    CHECK(g.m_mask_stack[0].size() == 0);

    // Depth 1, a strip of four vertices: triangles (0,1,2) and (1,2,3), six points appended to run 0; result false.
    CHECK(!g.process_mask_intersection(vertices, 4, nullptr, 0, 4));
    CHECK(g.m_mask_stack[0].size() == 6);
    {
        const float want_x[6] = {0, 1, 0, 1, 0, 1};
        const float want_y[6] = {0, 0, 1, 0, 1, 1};
        bool same = g.m_mask_stack[0].size() == 6;
        for (int i = 0; same && i < 6; ++i) {
            same = g.m_mask_stack[0][i].X == want_x[i] && g.m_mask_stack[0][i].Y == want_y[i];
        }
        CHECK(same);
    }

    // Depth 1, an indexed triangle list: the points follow the indices; they are appended to the existing ones.
    const uint16_t indices[6] = {0, 1, 3, 2, 4, 5};
    g.m_mask_stack[0].resize(0);
    CHECK(!g.process_mask_intersection(vertices, 6, indices, 6, 6));
    CHECK(g.m_mask_stack[0].size() == 6);
    CHECK(g.m_mask_stack[0][2].X == 1.0f && g.m_mask_stack[0][2].Y == 1.0f);  // vertex 3
    CHECK(g.m_mask_stack[0][4].X == 2.0f && g.m_mask_stack[0][4].Y == 0.0f);  // vertex 4

    // Depth 1, a plain list of six vertices appended after the six points already there.
    CHECK(!g.process_mask_intersection(vertices, 6, nullptr, 0, 6));
    CHECK(g.m_mask_stack[0].size() == 12);
    CHECK(g.m_mask_stack[0][6].X == 0.0f && g.m_mask_stack[0][11].X == 2.0f && g.m_mask_stack[0][11].Y == 1.0f);

    // Depth 2: the scratch triangles are intersected with each triangle of run 0 (two of them here). The intersector
    // answers the first pair with a four-point strip, the second with nothing.
    g.m_mask_stack[0].resize(0);
    g.m_mask_stack[0].resize(6);
    for (int i = 0; i < 6; ++i) {
        g.m_mask_stack[0][i].X = 100.0f + static_cast<float>(i);
        g.m_mask_stack[0][i].Y = 200.0f + static_cast<float>(i);
    }
    g.m_mask_depth = 2;
    rhg_test::g_intersector.answers.push_back({pt(1, 1), pt(2, 2), pt(3, 3), pt(4, 4)});
    rhg_test::g_intersector.answers.push_back({});
    CHECK(g.process_mask_intersection(vertices, 3, nullptr, 0, 6));
    CHECK(rhg_test::g_intersector.calls.size() == 2);
    {
        const rhg_test::IntersectorLog::Call& c0 = rhg_test::g_intersector.calls[0];
        const rhg_test::IntersectorLog::Call& c1 = rhg_test::g_intersector.calls[1];
        // a is the scratch triangle (vertices 0, 1, 2), b the parent triangle.
        CHECK(c0.a[0].m_x == 0.0f && c0.a[1].m_x == 1.0f && c0.a[2].m_y == 1.0f);
        CHECK(c0.b[0].m_x == 100.0f && c0.b[2].m_x == 102.0f);
        CHECK(c1.a[1].m_x == 1.0f);
        CHECK(c1.b[0].m_x == 103.0f && c1.b[2].m_y == 205.0f);
    }
    // The strip (p0..p3) is appended to run 1 as two triangles (p0, p1, p2) and (p1, p2, p3).
    CHECK(g.m_mask_stack[1].size() == 6);
    if (g.m_mask_stack[1].size() == 6) {
        const float want[6] = {1, 2, 3, 2, 3, 4};
        bool same = true;
        for (int i = 0; i < 6; ++i) {
            same = same && g.m_mask_stack[1][i].X == want[i] && g.m_mask_stack[1][i].Y == want[i];
        }
        CHECK(same);
    }
}

void test_draw_bitmap_and_cache() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;
    BitmapRig bmp(rig.driver, 16, 16);
    gameswf::matrix m;  // identity
    gameswf::rect coords;
    coords.m_x_min = 0.0f;
    coords.m_x_max = 10.0f;
    coords.m_y_min = 0.0f;
    coords.m_y_max = 20.0f;
    gameswf::rect uv;
    uv.m_x_min = 0.0f;
    uv.m_x_max = 1.0f;
    uv.m_y_min = 0.25f;
    uv.m_y_max = 0.75f;

    // Alpha zero: nothing is drawn.
    rhg_test::g_events.clear();
    g.draw_bitmap(m, bmp.bitmap, coords, uv, gameswf::rgba(1, 2, 3, 0));
    CHECK(rhg_test::g_events.empty());

    // A quad: the texture gets wrap mode 1 and is bound; four vertices and the indices 0, 1, 2, 1, 2, 3 are queued.
    g.m_mask_z = 0.125f;
    g.draw_bitmap(m, bmp.bitmap, coords, uv, gameswf::rgba(11, 22, 33, 44));
    CHECK(((bmp.texture->m_flags38 >> 18) & 7) == 1);
    CHECK(rhg_test::count_of(Event::SetTexture) == 1 && rhg_test::nth_of(Event::SetTexture, 0)->ptr == bmp.texture);
    CHECK(rhg_test::count_of(Event::QueueIndexed) == 1);
    const Event* q = rhg_test::nth_of(Event::QueueIndexed, 0);
    CHECK(q && q->vertices.size() == 4 && q->indices.size() == 6);
    if (q && q->vertices.size() == 4 && q->indices.size() == 6) {
        const float want_x[4] = {0, 10, 0, 10};
        const float want_y[4] = {0, 0, 20, 20};
        const float want_u[4] = {0, 1, 0, 1};
        const float want_v[4] = {0.25f, 0.25f, 0.75f, 0.75f};
        for (int i = 0; i < 4; ++i) {
            CHECK(near(q->vertices[i].x, want_x[i]) && near(q->vertices[i].y, want_y[i]) && q->vertices[i].z == 0.125f);
            CHECK(near(q->vertices[i].u, want_u[i]) && near(q->vertices[i].v, want_v[i]));
            const uint8_t* rgba = reinterpret_cast<const uint8_t*>(&q->vertices[i].color);
            CHECK(rgba[0] == 11 && rgba[1] == 22 && rgba[2] == 33 && rgba[3] == 44);
        }
        const uint16_t want_i[6] = {0, 1, 2, 1, 2, 3};
        for (int i = 0; i < 6; ++i) {
            CHECK(q->indices[i] == want_i[i]);
        }
    }

    // With the pixel snap on, the corners round to a grid of 20 units.
    g.unk_04 = 1;
    rhg_test::g_events.clear();
    gameswf::rect coords2 = coords;
    coords2.m_x_max = 14.0f;
    coords2.m_y_max = 31.0f;
    g.draw_bitmap(m, bmp.bitmap, coords2, uv, gameswf::rgba(1, 1, 1, 255));
    q = rhg_test::nth_of(Event::QueueIndexed, 0);
    CHECK(q && q->vertices.size() == 4);
    if (q && q->vertices.size() == 4) {
        CHECK(q->vertices[1].x == 20.0f && q->vertices[2].y == 40.0f && q->vertices[0].x == 0.0f);
    }
    g.unk_04 = 0;

    // With a mask open and the mask slot selected, the quad goes to the mask stack instead of the batch renderer.
    g.m_buffered.m_materialIndex = 15;
    g.m_mask_depth = 1;
    g.m_mask_stack.resize(1);
    rhg_test::g_events.clear();
    g.draw_bitmap(m, bmp.bitmap, coords, uv, gameswf::rgba(1, 2, 3, 4));
    CHECK(rhg_test::count_of(Event::QueueIndexed) == 1);  // process_mask_intersection returned false at depth 1
    CHECK(g.m_mask_stack[0].size() == 6);                // and recorded the six points of the two triangles
    g.m_mask_depth = 0;
    g.m_mask_stack[0].resize(0);
    g.m_buffered.m_materialIndex = 0;

    // The render cache records the quad.
    gameswf::render_cache cache;
    g.set_render_cache(&cache);
    g.m_mask_z = 0.5f;
    rhg_test::g_events.clear();
    g.draw_bitmap(m, bmp.bitmap, coords, uv, gameswf::rgba(77, 22, 33, 44));
    g.draw_bitmap(m, bmp.bitmap, coords2, uv, gameswf::rgba(66, 22, 33, 44));
    CHECK(cache.m_entries.size() == 2 && cache.m_vertices.size() == 8 && cache.m_uvs.size() == 8 && cache.m_indices.size() == 12);
    if (cache.m_entries.size() == 2 && cache.m_vertices.size() == 8 && cache.m_uvs.size() == 8 && cache.m_indices.size() == 12) {
        CHECK(cache.m_entries[0].m_bitmap == bmp.bitmap && cache.m_entries[0].m_color == 77);
        CHECK(cache.m_entries[0].m_vertex_base == 0 && cache.m_entries[0].m_vertex_count == 4);
        CHECK(cache.m_entries[0].m_index_base == 0 && cache.m_entries[0].m_index_count == 6);
        CHECK(cache.m_entries[1].m_color == 66 && cache.m_entries[1].m_vertex_base == 4 && cache.m_entries[1].m_index_base == 6);
        CHECK(cache.m_indices[0] == 0 && cache.m_indices[5] == 3 && cache.m_indices[6] == 0 && cache.m_indices[11] == 3);
        CHECK(near(cache.m_vertices[1].X, 10.0f) && near(cache.m_vertices[2].Y, 20.0f) && cache.m_vertices[3].Z == 0.5f);
        CHECK(near(cache.m_vertices[5].X, 14.0f) && near(cache.m_vertices[6].Y, 31.0f));
        CHECK(near(cache.m_uvs[1].X, 1.0f) && near(cache.m_uvs[2].Y, 0.75f) && near(cache.m_uvs[5].X, 1.0f));
    }

    // draw: replays the entries. The texture is bound; the staging colours take the entry's colour byte; the entry's indices
    // are queued with the streams' vertex count of the entry. The staging positions are not touched.
    {
        Vertex* staging = reinterpret_cast<Vertex*>(g.m_vertices);
        for (int i = 0; i < 4; ++i) {
            staging[i].x = 500.0f + static_cast<float>(i);
            staging[i].color = 0xaabbcc00u;
        }
        rhg_test::g_events.clear();
        g.m_mask_depth = 0;
        g.draw(&cache);
        CHECK(rhg_test::count_of(Event::SetTexture) == 2);
        CHECK(rhg_test::count_of(Event::QueueIndexed) == 2);
        const Event* r0 = rhg_test::nth_of(Event::QueueIndexed, 0);
        const Event* r1 = rhg_test::nth_of(Event::QueueIndexed, 1);
        CHECK(r0 && r0->vertices.size() == 4 && r0->indices.size() == 6);
        CHECK(r1 && r1->vertices.size() == 4 && r1->indices.size() == 6);
        if (r0 && r0->vertices.size() == 4 && r0->indices.size() == 6) {
            CHECK(r0->vertices[0].x == 500.0f && r0->vertices[3].x == 503.0f);                // positions are the staging ones
            const uint8_t* rgba = reinterpret_cast<const uint8_t*>(&r0->vertices[0].color);
            CHECK(rgba[0] == 77 && rgba[1] == 0xcc && rgba[2] == 0xbb && rgba[3] == 0xaa);   // only the first colour byte changes
            CHECK(r0->indices[0] == 0 && r0->indices[5] == 3);
        }
        if (r1 && r1->indices.size() == 6) {
            CHECK(reinterpret_cast<const uint8_t*>(&r1->vertices[0].color)[0] == 66);
        }

        // With a mask open the cache vertices of each entry get the mask z.
        g.m_mask_depth = 1;
        g.m_mask_z = 0.75f;
        g.m_buffered.m_materialIndex = 0;
        g.draw(&cache);
        CHECK(cache.m_vertices[0].Z == 0.75f && cache.m_vertices[3].Z == 0.75f && cache.m_vertices[7].Z == 0.75f);
        g.m_mask_depth = 0;
    }
    g.set_render_cache(nullptr);
}

void test_mesh_draws() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;
    const float coords[6] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f};
    const uint16_t indices[3] = {0, 1, 2};
    g.m_matrix.m_[0][0] = 2.0f;
    g.m_matrix.m_[1][1] = 3.0f;
    g.m_matrix.m_[0][2] = 10.0f;
    g.m_matrix.m_[1][2] = 20.0f;
    g.m_mask_z = 0.0f;
    g.m_fill_styles[0].unk_00 = 0;
    g.m_fill_styles[0].color[0] = 5;
    g.m_fill_styles[0].color[1] = 6;
    g.m_fill_styles[0].color[2] = 7;
    g.m_fill_styles[0].color[3] = 8;

    // Alpha zero on fill side 0: nothing.
    g.m_fill_styles[0].color[3] = 0;
    rhg_test::g_events.clear();
    g.draw_mesh_primitive(6, coords, 3, indices, 3);
    CHECK(rhg_test::g_events.empty());
    g.m_fill_styles[0].color[3] = 8;

    // Indexed triangles: the points go through the line matrix (get_matrix), the colour is the fill colour.
    g.draw_triangle_list(coords, 3, indices, 3);
    CHECK(rhg_test::count_of(Event::QueueIndexed) == 1);
    const Event* q = rhg_test::nth_of(Event::QueueIndexed, 0);
    CHECK(q && q->vertices.size() == 3 && q->indices.size() == 3);
    if (q && q->vertices.size() == 3) {
        for (int i = 0; i < 3; ++i) {
            CHECK(near(q->vertices[i].x, 2.0f * coords[2 * i] + 10.0f));
            CHECK(near(q->vertices[i].y, 3.0f * coords[2 * i + 1] + 20.0f));
            const uint8_t* rgba = reinterpret_cast<const uint8_t*>(&q->vertices[i].color);
            CHECK(rgba[0] == 5 && rgba[1] == 6 && rgba[2] == 7 && rgba[3] == 8);
        }
    }

    // A strip without indices goes to queueBuffer with the strip primitive (4).
    rhg_test::g_events.clear();
    g.draw_mesh_strip(coords, 3);
    CHECK(rhg_test::count_of(Event::QueueBuffer) == 1 && rhg_test::nth_of(Event::QueueBuffer, 0)->arg == 4);
    CHECK(rhg_test::nth_of(Event::QueueBuffer, 0)->vertices.size() == 3);

    // draw_mesh_primitive with indices but a zero index count is a plain draw.
    rhg_test::g_events.clear();
    g.draw_mesh_primitive(6, coords, 3, indices, 0);
    CHECK(rhg_test::count_of(Event::QueueBuffer) == 1 && rhg_test::nth_of(Event::QueueBuffer, 0)->arg == 6);

    // With a mask open in the mask slot, the draw goes to the mask stack (depth 1) and the batch gets the draw too.
    g.m_buffered.m_materialIndex = 15;
    g.m_mask_depth = 1;
    g.m_mask_stack.resize(1);
    rhg_test::g_events.clear();
    g.draw_mesh_primitive(6, coords, 3, nullptr, 0);
    CHECK(g.m_mask_stack[0].size() == 3);
    CHECK(rhg_test::count_of(Event::QueueBuffer) == 1);
}

}  // namespace

int main(int argc, char** argv) {
    const int only = argc > 1 ? std::atoi(argv[1]) : 0;  // run one group (1..5); 0 runs all
    check_snap();
    check_quad();
    check_transform();
    check_indices();
    if (only == 0 || only == 1) test_fill_style_apply();
    if (only == 0 || only == 2) test_blend_mode_and_masks();
    if (only == 0 || only == 3) test_process_mask_intersection();
    if (only == 0 || only == 4) test_draw_bitmap_and_cache();
    if (only == 0 || only == 5) test_mesh_draws();
    if (g_failures == 0) {
        std::printf("render_handler_glitch part 3: all checks passed\n");
        return 0;
    }
    std::printf("render_handler_glitch part 3: %d check(s) failed\n", g_failures);
    return 1;
}
