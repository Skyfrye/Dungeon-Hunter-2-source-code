// Test for batch v1-vendor-gameswf-render_handler_glitch-fd003c-1 (render_handler_glitch, part 2 of 3).
// Link line: the same as the part 1 test (v1-vendor-gameswf-render_handler_glitch-fd003c-0_test.cpp), with this file in
// place of that one.
//
// The handler is built with its real constructor over a null driver and the doubles of render_handler_glitch_test_types.hpp.
// The checks cover the TransformState constructor (0x7d6050), the handler constructor (0x7d60f4: scalar fields, fill sides,
// the default bitmap, the vertex streams and their three stream descriptors, the driver reference), the bitmap factories,
// get_matrix, set_render_cache, reset, begin_display / end_display (the saved and restored transforms, viewport and option
// 256), render_mask_intersection (batches of 256 vertices and the loop exit) and draw_line_strip (the line width in the
// material pass, the vertices and the line-strip draw), and the destructor (driver reference dropped).

#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "gameswf/gameswf_types.h"
#include "render_handler_glitch_test_types.hpp"
#include "vendor-gameswf/render_cache.hpp"

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

// gameswf::render_cache::~render_cache (0x78ba28, the pack6 batch): its four arrays release themselves.
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

// ---- checks ----------------------------------------------------------------------------------------------------

namespace {
int g_failures = 0;

#define CHECK(cond)                                              \
    do {                                                         \
        if (!(cond)) {                                           \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond); \
            ++g_failures;                                        \
        }                                                        \
    } while (0)

using rhg_test::Event;
using glitch::core::CMatrix4;

bool near(float a, float b) {
    return a > b - 1e-5f && a < b + 1e-5f;
}

bool is_identity(const CMatrix4<float>& m) {
    for (int i = 0; i < 16; ++i) {
        const float want = (i == 0 || i == 5 || i == 10 || i == 15) ? 1.0f : 0.0f;
        if (m.M[i] != want) {
            return false;
        }
    }
    return true;
}

void test_transform_state() {
    render_handler_glitch::TransformState ts;
    CHECK(is_identity(ts.projection) && is_identity(ts.view) && is_identity(ts.world));
    CHECK(ts.projection.flag && ts.view.flag && ts.world.flag);
    CHECK(ts.viewport.UpperLeftCorner.X == 0 && ts.viewport.UpperLeftCorner.Y == 0 &&
          ts.viewport.LowerRightCorner.X == 0 && ts.viewport.LowerRightCorner.Y == 0);
}

struct Rig {
    rhg_test::RecordingDriver driver;
    glitch::video::CTextureManager manager;
    render_handler_glitch* handler = nullptr;
    int driver_refs_before = 0;

    Rig() {
        rhg_test::reset_logs();
        driver.m_textureManager = &manager;
        driver_refs_before = driver.referenceCounter;
        handler = new render_handler_glitch(&driver);
    }
    ~Rig() {
        delete handler;
    }
};

void test_constructor() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;

    // The handler holds a reference on the driver.
    CHECK(rig.driver.referenceCounter == rig.driver_refs_before + 1);
    CHECK(g.m_driver == &rig.driver);
    CHECK(g.unk_04 == 1);
    CHECK(g.m_saved_render_state.m_word00 == 0x001f00ffu && g.m_saved_render_state.m_word04 == 0);
    CHECK(g.m_context == nullptr && g.m_render_cache == nullptr);
    CHECK(rhg_test::count_of(Event::BufferedCtor) == 1);
    CHECK(rhg_test::g_intersector.constructed == 1);

    // Identity line matrix and colour transform.
    CHECK(g.m_matrix.m_[0][0] == 1.0f && g.m_matrix.m_[1][1] == 1.0f && g.m_matrix.m_[0][1] == 0.0f &&
          g.m_matrix.m_[0][2] == 0.0f && g.m_matrix.m_[1][0] == 0.0f && g.m_matrix.m_[1][2] == 0.0f);
    for (int c = 0; c < 4; ++c) {
        CHECK(g.m_cxform.m_[c][0] == 1.0f && g.m_cxform.m_[c][1] == 0.0f);
    }

    // The three fill sides: type 0, white, identity matrix and colour transform.
    for (int i = 0; i < 3; ++i) {
        const render_handler_glitch::fill_style& f = g.m_fill_styles[i];
        CHECK(f.unk_00 == 0 && f.unk_44 == 0);
        CHECK(f.color[0] == 0xff && f.color[1] == 0xff && f.color[2] == 0xff && f.color[3] == 0xff);
        CHECK(f.bitmap_matrix.m_[0][0] == 1.0f && f.bitmap_matrix.m_[1][1] == 1.0f && f.bitmap_matrix.m_[0][2] == 0.0f);
        CHECK(f.bitmap_cxform.m_[2][0] == 1.0f && f.bitmap_cxform.m_[2][1] == 0.0f);
    }

    // The default bitmap: 4 x 4 from the opaque block (an image of format 12; alpha 0xff, colour white, every byte 0xff).
    CHECK(g.m_default_bitmap.m_driver == &rig.driver);
    CHECK(g.m_default_bitmap.get_width() == 4 && g.m_default_bitmap.get_height() == 4);
    CHECK(g.m_default_bitmap.m_image);
    bool all_opaque = g.m_default_bitmap.m_image->m_data != nullptr;
    for (int i = 0; all_opaque && i < 4 * 4 * 4; ++i) {
        all_opaque = g.m_default_bitmap.m_image->m_data[i] == 0xff;
    }
    CHECK(all_opaque);

    // The vertex streams: three streams over one vertex buffer, stride 24: positions (offset 12, 3 floats), texture
    // coordinates (offset 0, 2 floats) and colour (offset 8, 4 bytes); 256 staging vertices.
    glitch::video::CVertexStreams& streams = *g.m_vertex_streams;
    CHECK(streams.m_streams.size() == 3);
    CHECK(streams.m_streams[0].buffer && streams.m_streams[0].buffer.get() == streams.m_streams[1].buffer.get() &&
          streams.m_streams[1].buffer.get() == streams.m_streams[2].buffer.get());
    CHECK(streams.m_streams[0].offset == 12 && streams.m_streams[0].field0a == 6 && streams.m_streams[0].field0c == 3 &&
          streams.m_streams[0].field0e == 24);
    CHECK(streams.m_streams[1].offset == 0 && streams.m_streams[1].field0a == 6 && streams.m_streams[1].field0c == 2 &&
          streams.m_streams[1].field0e == 24);
    CHECK(streams.m_streams[2].offset == 8 && streams.m_streams[2].field0a == 1 && streams.m_streams[2].field0c == 4 &&
          streams.m_streams[2].field0e == 24);
    CHECK(g.m_vertex_capacity == 256);
    CHECK(streams.m_streams[0].buffer->m_data == g.m_vertices);
    CHECK(streams.m_streams[0].buffer->m_size == 24u * 256u);
}

void test_destructor_drops_driver() {
    rhg_test::reset_logs();
    rhg_test::RecordingDriver driver;
    glitch::video::CTextureManager manager;
    driver.m_textureManager = &manager;
    const int before = driver.referenceCounter;
    render_handler_glitch* handler = new render_handler_glitch(&driver);
    CHECK(driver.referenceCounter == before + 1);
    delete handler;
    CHECK(driver.referenceCounter == before);
    CHECK(rhg_test::g_intersector.destroyed == 1);
}

void test_get_matrix() {
    Rig rig;
    gameswf::matrix m;
    m.m_[0][0] = 2.0f;
    m.m_[0][1] = 3.0f;
    m.m_[0][2] = 4.0f;
    m.m_[1][0] = 5.0f;
    m.m_[1][1] = 6.0f;
    m.m_[1][2] = 7.0f;
    const CMatrix4<float> out = rig.handler->get_matrix(m);
    const float want[16] = {2, 5, 0, 0, 3, 6, 0, 0, 0, 0, 1, 0, 4, 7, 0, 1};
    bool same = true;
    for (int i = 0; i < 16; ++i) {
        same = same && out.M[i] == want[i];
    }
    CHECK(same);
    CHECK(!out.flag);
}

void test_bitmap_factories() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;
    {
        gameswf::bitmap_info* b = g.create_bitmap_info_empty();
        bitmap_info_ogl* ogl = static_cast<bitmap_info_ogl*>(b);
        CHECK(ogl->m_driver == &rig.driver && ogl->get_width() == 0);
        delete ogl;
    }
    {
        bitmap_info_ogl* ogl = static_cast<bitmap_info_ogl*>(g.create_bitmap_info_target(64, 32));
        CHECK(ogl->get_width() == 64 && ogl->get_height() == 32 && ogl->m_texture_registered);
        bio_test::g_manager_log.lastTexture->drop();
        delete ogl;
    }
    {
        unsigned char alpha[4] = {1, 2, 3, 4};
        bitmap_info_ogl* ogl = static_cast<bitmap_info_ogl*>(g.create_bitmap_info_alpha(2, 2, alpha));
        CHECK(ogl->get_width() == 2 && ogl->m_image && ogl->m_image->m_data[4] == 2);
        delete ogl;
    }
    {
        bio_test::TestTexture* texture = new bio_test::TestTexture(8, 4);
        bitmap_info_ogl* ogl = static_cast<bitmap_info_ogl*>(g.create_bitmap_info_texture(texture));
        CHECK(ogl->m_texture.get() == texture && ogl->get_width() == 8 && ogl->get_height() == 4);
        delete ogl;
        texture->drop();
    }
    {
        gameswf::image_rgba image(2, 1);
        for (int i = 0; i < 8; ++i) {
            image.m_data[i] = static_cast<std::uint8_t>(i + 1);
        }
        bitmap_info_ogl* ogl = static_cast<bitmap_info_ogl*>(g.create_bitmap_info_rgba(&image));
        CHECK(ogl->get_width() == 2 && ogl->m_image->m_data[0] == 4 && ogl->m_image->m_data[1] == 1);
        delete ogl;
    }
    {
        gameswf::image_rgb image(1, 1);
        image.m_data[0] = 9;
        image.m_data[1] = 8;
        image.m_data[2] = 7;
        bitmap_info_ogl* ogl = static_cast<bitmap_info_ogl*>(g.create_bitmap_info_rgb(&image));
        CHECK(ogl->m_image->m_data[0] == 0xff && ogl->m_image->m_data[1] == 9 && ogl->m_image->m_data[3] == 7);
        delete ogl;
    }
    {
        bitmap_info_ogl* ogl = static_cast<bitmap_info_ogl*>(g.create_bitmap_info_native(16, 8, nullptr));
        CHECK(ogl->get_width() == 16 && ogl->get_height() == 8 && ogl->m_membuf == nullptr);
        delete ogl;
    }
}

void test_set_render_cache() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;
    gameswf::render_cache cache;
    gameswf::render_cache::entry entry;
    cache.m_entries.push_back(entry);
    cache.m_entries.push_back(entry);
    cache.m_vertices.resize(8);
    cache.m_uvs.resize(8);
    cache.m_indices.resize(12);
    g.set_render_cache(&cache);
    CHECK(g.m_render_cache == &cache);
    CHECK(cache.m_entries.size() == 0 && cache.m_vertices.size() == 0 && cache.m_uvs.size() == 0);
    CHECK(cache.m_indices.size() == 12);  // the listing has no store to the index count
    g.set_render_cache(nullptr);
    CHECK(g.m_render_cache == nullptr);
}

void test_reset() {
    Rig rig;
    rhg_test::g_events.clear();
    rig.handler->reset();
    // An empty material goes to the driver, then the batch renderer clears its textures.
    CHECK(rhg_test::g_events.size() == 2);
    CHECK(rhg_test::g_events[0].kind == Event::SetMaterial && rhg_test::g_events[0].ptr == nullptr &&
          rhg_test::g_events[0].arg == 0);
    CHECK(rhg_test::g_events[1].kind == Event::ClearTextures);
    rhg_test::g_events.clear();
    rig.handler->begin_display_callback();
    rig.handler->flush();
    CHECK(rhg_test::count_of(Event::Flush) == 2);
}

void set_matrix_values(CMatrix4<float>& m, float base) {
    for (int i = 0; i < 16; ++i) {
        m.M[i] = base + static_cast<float>(i);
    }
    m.flag = false;
}

void test_begin_and_end_display() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;
    rhg_test::RecordingDriver& driver = rig.driver;

    // The driver's current state: three transforms, a screen viewport and option 256 set.
    CMatrix4<float> t2, t0, t1;
    set_matrix_values(t2, 100.0f);
    set_matrix_values(t0, 200.0f);
    set_matrix_values(t1, 300.0f);
    driver.bio_test::TestDriver::setTransform(2, t2);
    driver.bio_test::TestDriver::setTransform(0, t0);
    driver.bio_test::TestDriver::setTransform(1, t1);
    glitch::video::IRenderTarget* screen = driver.m_renderTargets.back().get();
    screen->m_width = 1000;
    screen->m_height = 1000;
    screen->m_viewport.UpperLeftCorner.X = 1;
    screen->m_viewport.UpperLeftCorner.Y = 2;
    screen->m_viewport.LowerRightCorner.X = 300;
    screen->m_viewport.LowerRightCorner.Y = 400;
    driver.m_options |= 0x100;

    // Mask state to be reset.
    g.m_mask_depth = 2;
    g.m_mask_z = 1.5f;
    {
        g.m_mask_stack.resize(2);
        g.m_mask_stack[0].resize(3);
        g.m_mask_stack[1].resize(5);
    }

    rhg_test::g_events.clear();
    g.begin_display(gameswf::rgba(1, 2, 3, 4), 10, 20, 640, 480, 0.0f, 800.0f, 0.0f, 600.0f);

    CHECK(g.m_display_width == 800.0f && g.m_display_height == 600.0f);
    // The driver's state was saved.
    CHECK(g.m_saved_state.projection.M[0] == 100.0f && g.m_saved_state.projection.M[15] == 115.0f);
    CHECK(g.m_saved_state.view.M[0] == 200.0f && g.m_saved_state.view.M[15] == 215.0f);
    CHECK(g.m_saved_state.world.M[0] == 300.0f && g.m_saved_state.world.M[15] == 315.0f);
    CHECK(g.m_saved_state.viewport.UpperLeftCorner.X == 1 && g.m_saved_state.viewport.UpperLeftCorner.Y == 2 &&
          g.m_saved_state.viewport.LowerRightCorner.X == 300 && g.m_saved_state.viewport.LowerRightCorner.Y == 400);
    CHECK(g.m_saved_option_256);
    // The render target viewport is the new rectangle (x0, y0, x0 + width, y0 + height).
    CHECK(screen->m_viewport.UpperLeftCorner.X == 10 && screen->m_viewport.UpperLeftCorner.Y == 20 &&
          screen->m_viewport.LowerRightCorner.X == 650 && screen->m_viewport.LowerRightCorner.Y == 500);
    // The mask state is reset.
    CHECK(g.m_mask_depth == 0 && g.m_mask_z == 0.0f);
    CHECK(g.m_mask_stack.size() == 2 && g.m_mask_stack[0].size() == 0 && g.m_mask_stack[1].size() == 0);

    // The driver calls, in order: the batch reset, option 256 off, clearBuffers(2), the three transforms.
    {
        int pos = 0;
        auto at = [&](Event::Kind kind) -> const Event* {
            const Event* e = pos < static_cast<int>(rhg_test::g_events.size()) ? &rhg_test::g_events[pos] : nullptr;
            if (e && e->kind == kind) {
                ++pos;
                return e;
            }
            return nullptr;
        };
        CHECK(at(Event::Reset));
        const Event* option = at(Event::SetOption);
        CHECK(option && option->arg == 256 && option->arg2 == 0);
        const Event* clear = at(Event::ClearBuffers);
        CHECK(clear && clear->arg == 2);
        const Event* projection = at(Event::SetTransform);
        CHECK(projection && projection->arg == 2);
        const Event* view = at(Event::SetTransform);
        CHECK(view && view->arg == 0);
        const Event* world = at(Event::SetTransform);
        CHECK(world && world->arg == 1);
        CHECK(pos == static_cast<int>(rhg_test::g_events.size()));
        if (projection) {
            const float want[16] = {1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0.5f, 0, 0, 0, 0.5f, 1};
            bool same = true;
            for (int i = 0; i < 16; ++i) {
                same = same && projection->matrix[i] == want[i];
            }
            CHECK(same);
        }
        if (view) {
            // 2 / w, 2 / h on the diagonal, depth -1, translation -(x1 + x0) / w and -(y1 + y0) / h, -0 in element 14.
            CHECK(near(view->matrix[0], 2.0f / 800.0f) && near(view->matrix[5], 2.0f / 600.0f));
            CHECK(view->matrix[10] == -1.0f && view->matrix[15] == 1.0f);
            CHECK(near(view->matrix[12], -1.0f) && near(view->matrix[13], -1.0f));
            CHECK(view->matrix[14] == 0.0f && std::signbit(view->matrix[14]));
            CHECK(view->matrix[1] == 0.0f && view->matrix[4] == 0.0f && view->matrix[11] == 0.0f);
        }
        if (world) {
            bool identity = true;
            for (int i = 0; i < 16; ++i) {
                identity = identity && world->matrix[i] == ((i % 5 == 0) ? 1.0f : 0.0f);
            }
            CHECK(identity);
        }
    }
    // m_state holds what was given to the driver.
    CHECK(g.m_state.projection.M[5] == -1.0f && g.m_state.projection.M[14] == 0.5f);
    CHECK(near(g.m_state.view.M[12], -1.0f));
    CHECK(is_identity(g.m_state.world));

    // end_display: flush, then the saved transforms back (2, 0, 1), the saved viewport, option 256 as it was.
    rhg_test::g_events.clear();
    driver.m_options &= ~0x100u;
    g.end_display();
    CHECK(rhg_test::g_events.size() >= 5);
    CHECK(rhg_test::g_events[0].kind == Event::Flush);
    const Event* e1 = rhg_test::nth_of(Event::SetTransform, 0);
    const Event* e2 = rhg_test::nth_of(Event::SetTransform, 1);
    const Event* e3 = rhg_test::nth_of(Event::SetTransform, 2);
    CHECK(e1 && e1->arg == 2 && e1->matrix[0] == 100.0f);
    CHECK(e2 && e2->arg == 0 && e2->matrix[0] == 200.0f);
    CHECK(e3 && e3->arg == 1 && e3->matrix[0] == 300.0f);
    CHECK(screen->m_viewport.UpperLeftCorner.X == 1 && screen->m_viewport.UpperLeftCorner.Y == 2 &&
          screen->m_viewport.LowerRightCorner.X == 300 && screen->m_viewport.LowerRightCorner.Y == 400);
    const Event* option = rhg_test::nth_of(Event::SetOption, 0);
    CHECK(option && option->arg == 256 && option->arg2 == 1);
    CHECK((driver.m_options & 0x100u) != 0);
}

// The vertices render_mask_intersection queued, by batch.
void test_render_mask_intersection() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;

    // layout() the default bitmap so that it has a texture; the intersection binds it.
    g.m_default_bitmap.layout();
    glitch::video::ITexture* default_texture = g.m_default_bitmap.m_texture.get();
    CHECK(default_texture != nullptr);

    g.m_mask_z = 0.25f;
    g.m_mask_depth = 1;
    g.m_mask_stack.resize(1);

    // A run of three points: one batch of three vertices, then the final flush.
    g.m_mask_stack[0].resize(3);
    for (int i = 0; i < 3; ++i) {
        g.m_mask_stack[0][i].X = static_cast<float>(i);
        g.m_mask_stack[0][i].Y = static_cast<float>(10 + i);
    }
    rhg_test::g_events.clear();
    g.render_mask_intersection();
    CHECK(rhg_test::g_events.size() >= 3);
    CHECK(rhg_test::g_events[0].kind == Event::SetTexture && rhg_test::g_events[0].ptr == default_texture);
    CHECK(rhg_test::count_of(Event::QueueBuffer) == 1);
    const Event* q = rhg_test::nth_of(Event::QueueBuffer, 0);
    CHECK(q && q->arg == 6 && q->vertices.size() == 3);
    if (q && q->vertices.size() == 3) {
        for (int i = 0; i < 3; ++i) {
            CHECK(q->vertices[i].x == static_cast<float>(i) && q->vertices[i].y == static_cast<float>(10 + i) &&
                  q->vertices[i].z == 0.25f && q->vertices[i].color == 0xffffffffu);
        }
    }
    CHECK(rhg_test::g_events.back().kind == Event::Flush);

    // A run of 256 points: one full batch, no partial batch.
    g.m_mask_stack[0].resize(256);
    for (int i = 0; i < 256; ++i) {
        g.m_mask_stack[0][i].X = static_cast<float>(i);
        g.m_mask_stack[0][i].Y = 0.0f;
    }
    rhg_test::g_events.clear();
    g.render_mask_intersection();
    CHECK(rhg_test::count_of(Event::QueueBuffer) == 1);
    q = rhg_test::nth_of(Event::QueueBuffer, 0);
    CHECK(q && q->vertices.size() == 256);

    // A run of 300 points: the first 256 are queued; the loop then reaches the end of the run in the second batch and
    // returns after a flush without queueing those 44 vertices (the original's exit).
    g.m_mask_stack[0].resize(300);
    for (int i = 0; i < 300; ++i) {
        g.m_mask_stack[0][i].X = static_cast<float>(i);
        g.m_mask_stack[0][i].Y = 1.0f;
    }
    rhg_test::g_events.clear();
    g.render_mask_intersection();
    CHECK(rhg_test::count_of(Event::QueueBuffer) == 1);
    q = rhg_test::nth_of(Event::QueueBuffer, 0);
    CHECK(q && q->vertices.size() == 256 && q->vertices[255].x == 255.0f);
    CHECK(rhg_test::g_events.back().kind == Event::Flush);

    // An empty run: just the final flush.
    g.m_mask_stack[0].resize(0);
    rhg_test::g_events.clear();
    g.render_mask_intersection();
    CHECK(rhg_test::count_of(Event::QueueBuffer) == 0);
    CHECK(rhg_test::g_events.back().kind == Event::Flush);
}

void test_draw_line_strip() {
    Rig rig;
    render_handler_glitch& g = *rig.handler;

    // A material in slot 0: a renderer with one technique of one pass, in its default render state.
    glitch::video::detail::renderpass::SRenderState initial;
    glitch::video::SRenderPass pass;
    std::memcpy(pass.stateWords, &initial, sizeof(initial));
    pass.flag30 = 0;
    glitch::video::STechniqueEntry technique;
    technique.passCount = 1;
    technique.passes = &pass;
    glitch::video::CMaterialRenderer renderer;
    renderer.m_techniques = &technique;
    renderer.m_techniqueCount = 1;
    renderer.m_refCount = 100;  // never released to zero
    boost::intrusive_ptr<glitch::video::CMaterial> material(new glitch::video::CMaterial, true);  // born with count 0
    material->m_renderer = boost::intrusive_ptr<glitch::video::CMaterialRenderer>(&renderer, true);
    g.m_buffered.m_materials[0].m_material = material;
    g.m_buffered.m_materialIndex = 7;  // an empty slot: slot 0 is used

    // Line matrix 2x scale, line width 100 on fill side 2, a line colour, and the mask z.
    g.m_matrix.m_[0][0] = 2.0f;
    g.m_matrix.m_[1][1] = 2.0f;
    g.m_matrix.m_[0][2] = 5.0f;
    g.m_matrix.m_[1][2] = 6.0f;
    g.m_fill_styles[2].unk_48 = 100.0f;
    g.m_fill_styles[2].color[0] = 10;
    g.m_fill_styles[2].color[1] = 20;
    g.m_fill_styles[2].color[2] = 30;
    g.m_fill_styles[2].color[3] = 40;
    g.m_mask_z = 0.5f;
    const float points[6] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f};

    rhg_test::g_events.clear();
    g.draw_line_strip(points, 3);

    // Event order: flush, setMaterial, draw.
    CHECK(rhg_test::g_events.size() == 3);
    CHECK(rhg_test::g_events[0].kind == Event::Flush);
    CHECK(rhg_test::g_events[1].kind == Event::SetMaterial && rhg_test::g_events[1].ptr == material.get());
    const Event& draw = rhg_test::g_events[2];
    CHECK(draw.kind == Event::Draw && draw.arg == 1 && draw.arg2 == 3);  // line strip, three elements
    CHECK(draw.indices.size() == 3 && draw.indices[0] == 255 && draw.indices[1] == 0 && draw.indices[2] == 3);
    CHECK(draw.vertices.size() == 3);

    // Line width: (|2| + |2|) * 100 * 0.5 / 20 = 10, written to the pass state float +0x0c with the change flag.
    float width = 0.0f;
    std::memcpy(&width, reinterpret_cast<const uint8_t*>(pass.stateWords) + 0x0c, sizeof(width));
    CHECK(width == 10.0f);
    CHECK(pass.flag30 == 1);

    // Vertices: (x, y, mask z) through the 4x4 matrix of the line matrix, colour from fill side 2, zero u and v.
    if (draw.vertices.size() == 3) {
        for (int i = 0; i < 3; ++i) {
            const BufferedRenderer::Vertex& v = draw.vertices[i];
            CHECK(v.u == 0.0f && v.v == 0.0f);
            CHECK(near(v.x, 2.0f * points[2 * i] + 5.0f) && near(v.y, 2.0f * points[2 * i + 1] + 6.0f) && v.z == 0.5f);
            const uint8_t* rgba = reinterpret_cast<const uint8_t*>(&v.color);
            CHECK(rgba[0] == 10 && rgba[1] == 20 && rgba[2] == 30 && rgba[3] == 40);
        }
    }

    // A thin line: the width never goes below 1.
    g.m_fill_styles[2].unk_48 = 1.0f;
    rhg_test::g_events.clear();
    g.draw_line_strip(points, 2);
    std::memcpy(&width, reinterpret_cast<const uint8_t*>(pass.stateWords) + 0x0c, sizeof(width));
    CHECK(width == 1.0f);
    CHECK(rhg_test::g_events.size() == 3 && rhg_test::g_events[2].arg2 == 2);

    // Clear the material so the rig can be torn down without releasing the stack renderer.
    g.m_buffered.m_materials[0].m_material = nullptr;
    material->m_renderer = nullptr;
}

}  // namespace

int main() {
    test_transform_state();
    test_constructor();
    test_destructor_drops_driver();
    test_get_matrix();
    test_bitmap_factories();
    test_set_render_cache();
    test_reset();
    test_begin_and_end_display();
    test_render_mask_intersection();
    test_draw_line_strip();
    if (g_failures == 0) {
        std::printf("render_handler_glitch part 2: all checks passed\n");
        return 0;
    }
    std::printf("render_handler_glitch part 2: %d failure(s)\n", g_failures);
    return 1;
}
