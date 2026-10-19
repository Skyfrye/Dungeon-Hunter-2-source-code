// Test for batch v1-vendor-gameswf-render_handler_glitch-fd003c-0 (render_handler_glitch, part 1 of 3).
// Link line (run from the worktree root; the libraries are the cmake targets dh2_glitch_video, dh2_glitch_core_io and
// dh2_core_platform, linked after the sources; all sources are under vendor-gameswf/src/):
//   bash tools/trackb/check_tu.sh --test <this file>
//     <render_handler_glitch-fd003c-0 .cpp> <render_handler_glitch-fd003c-1 .cpp> <render_handler_glitch-fd003c-2 .cpp>
//     <pack21 .cpp> <bitmap_info_ogl-434136-0 .cpp> <bitmap_info_ogl-434136-1 .cpp> <gameswf_bitmap_info .cpp>
//     <gameswf_ref_counted .cpp> <pack15 .cpp> <gameswf_render_handler .cpp> <test-support/dh2_test_support.cpp>
//     -Wl,--start-group libdh2_glitch_video.a libdh2_glitch_core_io.a libdh2_core_platform.a -Wl,--end-group
//
// The handler is built with its real constructor over a null driver with the doubles of render_handler_glitch_test_types.hpp
// (batch renderer, triangle intersector, the driver's setMaterial and draw, the texture manager). The checks cover the 20
// functions of the batch: the empty ones, set_target (pushRenderTarget / popRenderTarget with the bitmap's render target),
// set_context (both stores), end_display_callback (the three setTransform calls), set_matrix and set_cxform, the fill and line
// style stores, is_visible, set_buffer_capacity and ensureBufferCapacity (the hinted allocation, the zeroed words, the
// reset of the first stream's buffer).

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "gameswf/gameswf_types.h"
#include "render_handler_glitch_test_types.hpp"

// ---- stand-ins -------------------------------------------------------------------------------------------------

namespace {
}  // namespace

// Fallbacks for the upstream colour transform and matrix (identity, and the transform returns its input). They are weak:
// in the full tree the upstream definitions of gameswf_types.cpp (dh2_vendor_gameswf) win, and the checks hold with them.
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
}  // namespace

int main() {
    rhg_test::reset_logs();
    rhg_test::RecordingDriver driver;
    glitch::video::CTextureManager manager;
    driver.m_textureManager = &manager;
    render_handler_glitch* handler = new render_handler_glitch(&driver);
    render_handler_glitch& g = *handler;

    // The constructor built the staging vertices (256 entries) and handed them to the first stream's buffer.
    CHECK(g.m_vertex_capacity == 256);
    CHECK(g.m_vertices != nullptr);
    CHECK(g.m_vertex_streams->m_streams[0].buffer->m_data == g.m_vertices);
    CHECK(g.m_vertex_streams->m_streams[0].buffer->m_size == 24u * 256u);
    CHECK((g.m_vertex_streams->m_streams[0].buffer->m_flags12 & glitch::video::IBuffer::kFlagOwnsData) != 0);

    // get_orientation, create_video_handler, the empty functions.
    CHECK(g.render_handler_glitch::get_orientation() == 0);
    CHECK(g.render_handler_glitch::create_video_handler() == nullptr);
    g.render_handler_glitch::open();
    g.render_handler_glitch::set_antialiased(true);
    g.render_handler_glitch::clear_frame_buffer();
    g.render_handler_glitch::read_frame_buffer(0, 0, 1, 1, nullptr);

    // is_visible: width against x_min, x_max and height against zero, height against y_min.
    g.m_display_width = 100.0f;
    g.m_display_height = 50.0f;
    gameswf::rect r;
    r.m_x_min = 10.0f;
    r.m_x_max = 20.0f;
    r.m_y_min = 5.0f;
    r.m_y_max = 15.0f;
    CHECK(g.render_handler_glitch::is_visible(r));
    gameswf::rect r2 = r;
    r2.m_x_min = 200.0f;
    CHECK(!g.render_handler_glitch::is_visible(r2));
    gameswf::rect r3 = r;
    r3.m_x_max = -1.0f;
    CHECK(!g.render_handler_glitch::is_visible(r3));
    gameswf::rect r4 = r;
    r4.m_y_max = -1.0f;
    CHECK(!g.render_handler_glitch::is_visible(r4));
    gameswf::rect r5 = r;
    r5.m_y_min = 60.0f;
    CHECK(!g.render_handler_glitch::is_visible(r5));

    // set_matrix and set_cxform copy the whole value.
    gameswf::matrix mm;
    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 3; ++j) {
            mm.m_[i][j] = static_cast<float>(i * 3 + j + 1);
        }
    }
    g.render_handler_glitch::set_matrix(mm);
    CHECK(g.m_matrix.m_[0][0] == 1.0f);
    CHECK(g.m_matrix.m_[1][2] == 6.0f);
    gameswf::cxform cx;
    cx.m_[3][1] = 0.5f;
    cx.m_[0][0] = 0.25f;
    g.render_handler_glitch::set_cxform(cx);
    CHECK(g.m_cxform.m_[3][1] == 0.5f);
    CHECK(g.m_cxform.m_[0][0] == 0.25f);

    // Fill entry 1 is cleared, entry 0 is untouched.
    g.m_fill_styles[0].unk_00 = 1;
    g.m_fill_styles[1].unk_00 = 1;
    g.render_handler_glitch::fill_style_disable(1);
    CHECK(g.m_fill_styles[1].unk_00 == 0);
    CHECK(g.m_fill_styles[0].unk_00 == 1);

    // Line style is fill entry 2: width, colour through the cxform (the identity again: the colour passes through the
    // upstream cxform::transform, which applies the stored transform), flag set and cleared.
    g.render_handler_glitch::set_cxform(gameswf::cxform());
    g.render_handler_glitch::line_style_width(2.5f);
    CHECK(g.m_fill_styles[2].unk_48 == 2.5f);
    g.render_handler_glitch::line_style_color(gameswf::rgba(1, 2, 3, 4));
    CHECK(g.m_fill_styles[2].unk_00 == 1);
    CHECK(g.m_fill_styles[2].color[0] == 1 && g.m_fill_styles[2].color[1] == 2 &&
          g.m_fill_styles[2].color[2] == 3 && g.m_fill_styles[2].color[3] == 4);
    g.render_handler_glitch::line_style_disable();
    CHECK(g.m_fill_styles[2].unk_00 == 0);

    // Wire frame flag lives in the embedded BufferedRenderer.
    g.render_handler_glitch::set_wire_frame(true);
    CHECK(g.m_buffered.m_wireFrame);
    g.render_handler_glitch::set_wire_frame(false);
    CHECK(!g.m_buffered.m_wireFrame);

    // Buffer capacity: the mode goes to unk_00 and the count goes to BufferedRenderer::ensureBufferCapacity.
    rhg_test::g_events.clear();
    g.render_handler_glitch::set_buffer_capacity(static_cast<gameswf::render_handler::buffer_mode>(2), 64);
    CHECK(g.m_buffered.unk_00 == 2);
    CHECK(rhg_test::count_of(Event::EnsureCapacity) == 1);
    CHECK(rhg_test::nth_of(Event::EnsureCapacity, 0)->arg == 64);

    // Context: both stores, the batch renderer's player context (+0x228) and m_context (+0x08).
    int context_marker = 0;
    gameswf::player_context* context = reinterpret_cast<gameswf::player_context*>(&context_marker);
    g.render_handler_glitch::set_context(context);
    CHECK(g.m_context == context);
    CHECK(g.m_buffered.m_playerContext == context);

    // Bitmap fill forwards to fill entry 1 with the wrap mode and returns set_bitmap's result (pack21's body: the default
    // bitmap colour transform is the identity here, so no additive term is above 1 and it returns false).
    const bool over = g.render_handler_glitch::fill_style_bitmap(1, nullptr, mm, gameswf::render_handler::WRAP_CLAMP);
    CHECK(!over);
    CHECK(g.m_fill_styles[1].unk_00 == 3);  // clamp
    CHECK(g.m_fill_styles[1].bitmap_matrix.m_[1][2] == 6.0f);

    // fill_style::set_bitmap (0x7d4430): fill type from the wrap mode, bitmap pointer, colour bytes (the multipliers times 255,
    // truncated) and the flag for an additive term above 1 (the cxform clamp is a no-op in this test).
    {
        gameswf::matrix m;
        gameswf::cxform cx2;
        cx2.m_[0][0] = 0.5f;  cx2.m_[0][1] = 0.0f;
        cx2.m_[1][0] = 1.0f;  cx2.m_[1][1] = 0.0f;
        cx2.m_[2][0] = 0.25f; cx2.m_[2][1] = 0.0f;
        cx2.m_[3][0] = 0.0f;  cx2.m_[3][1] = 0.0f;
        int dummy_bitmap = 0;
        gameswf::bitmap_info* bitmap = reinterpret_cast<gameswf::bitmap_info*>(&dummy_bitmap);
        render_handler_glitch::fill_style fs;
        const bool flag = fs.set_bitmap(bitmap, m, gameswf::render_handler::WRAP_CLAMP, cx2);
        CHECK(fs.unk_00 == 3);
        CHECK(fs.source_bitmap == bitmap);
        CHECK(fs.color[0] == 127 && fs.color[1] == 255 && fs.color[2] == 63 && fs.color[3] == 0);
        CHECK(!flag && fs.unk_44 == 0);
        cx2.m_[2][1] = 1.5f;  // additive blue term above 1
        const bool flag2 = fs.set_bitmap(bitmap, m, gameswf::render_handler::WRAP_REPEAT, cx2);
        CHECK(fs.unk_00 == 2);
        CHECK(flag2 && fs.unk_44 == 1);
    }

    // set_target: a target pushes its render target on the driver's stack, none pops it.
    {
        const size_t depth = driver.m_renderTargets.size();
        bitmap_info_ogl* target = new bitmap_info_ogl(&driver, 8, 8);
        CHECK(target->m_render_target.get() != nullptr);
        g.render_handler_glitch::set_target(target);
        CHECK(driver.m_renderTargets.size() == depth + 1);
        CHECK(driver.m_renderTargets.back().get() == target->m_render_target.get());
        g.render_handler_glitch::set_target(nullptr);
        CHECK(driver.m_renderTargets.size() == depth);
        CHECK(driver.m_renderTargets.back().get() != target->m_render_target.get());
        bio_test::g_manager_log.lastTexture->drop();  // the manager's own use of the render-target texture
        delete target;
    }

    // end_display_callback: setTransform for states 2, 0 and 1 with the matrices of m_state, in that order.
    for (int i = 0; i < 16; ++i) {
        g.m_state.projection.M[i] = 100.0f + static_cast<float>(i);
        g.m_state.view.M[i] = 200.0f + static_cast<float>(i);
        g.m_state.world.M[i] = 300.0f + static_cast<float>(i);
    }
    rhg_test::g_events.clear();
    g.render_handler_glitch::end_display_callback();
    CHECK(rhg_test::count_of(Event::SetTransform) == 3);
    {
        const Event* e0 = rhg_test::nth_of(Event::SetTransform, 0);
        const Event* e1 = rhg_test::nth_of(Event::SetTransform, 1);
        const Event* e2 = rhg_test::nth_of(Event::SetTransform, 2);
        CHECK(e0 && e0->arg == 2 && e0->matrix[0] == 100.0f && e0->matrix[15] == 115.0f);
        CHECK(e1 && e1->arg == 0 && e1->matrix[0] == 200.0f && e1->matrix[15] == 215.0f);
        CHECK(e2 && e2->arg == 1 && e2->matrix[0] == 300.0f && e2->matrix[15] == 315.0f);
    }

    // ensureBufferCapacity: growth allocates 24 * n bytes through operator new[](size, E_MEMORY_HINT 0) (core-platform),
    // zeroes words 0, 1, 3, 4, 5 of each 24-byte entry and hands the block to the first stream's buffer (which owns it).
    // A smaller request keeps the block.
    CHECK(g.m_vertex_capacity == 256);
    uint8_t* old_block = g.m_vertices;
    g.ensureBufferCapacity(100);
    CHECK(g.m_vertex_capacity == 256);
    CHECK(g.m_vertices == old_block);
    g.ensureBufferCapacity(300);
    CHECK(g.m_vertex_capacity == 300);
    CHECK(g.m_vertices != nullptr && g.m_vertices != old_block);
    CHECK(g.m_vertex_streams->m_streams[0].buffer->m_data == g.m_vertices);
    CHECK(g.m_vertex_streams->m_streams[0].buffer->m_size == 7200u);
    {
        const uint32_t* words = reinterpret_cast<const uint32_t*>(g.m_vertices);
        for (int i = 0; i < 300; ++i) {
            const uint32_t* entry = words + 6 * i;
            CHECK(entry[0] == 0 && entry[1] == 0 && entry[3] == 0 && entry[4] == 0 && entry[5] == 0);
        }
    }

    delete handler;
    CHECK(rhg_test::g_intersector.constructed == 1);
    CHECK(rhg_test::g_intersector.destroyed == 1);
    if (g_failures == 0) {
        std::printf("render_handler_glitch part 1: all checks passed\n");
        return 0;
    }
    std::printf("render_handler_glitch part 1: %d failure(s)\n", g_failures);
    return 1;
}
