// Test double: a gameswf::render_handler (DH2 vtable) whose pure virtuals do nothing and return null or false.
// Tests that construct a texture_cache or a filter_engine derive from it, override the bitmap factories they need and
// install the object as gameswf::s_render_handler.
//
//   struct handler : gameswf::test::null_render_handler { bitmap_info* create_bitmap_info_target(int w, int h) override {...} };
#pragma once

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_types.h"  // gameswf::rgba: a complete type is needed for by-value parameters

namespace gameswf {
namespace test {

struct null_render_handler : render_handler {
    bitmap_info* create_bitmap_info_empty() override { return nullptr; }
    bitmap_info* create_bitmap_info_alpha(int, int, unsigned char*) override { return nullptr; }
    bitmap_info* create_bitmap_info_rgb(image_rgb*) override { return nullptr; }
    bitmap_info* create_bitmap_info_rgba(image_rgba*) override { return nullptr; }
    bitmap_info* create_bitmap_info_texture(glitch::video::ITexture*) override { return nullptr; }
    bitmap_info* create_bitmap_info_native(int, int, const membuf*) override { return nullptr; }
    bitmap_info* create_bitmap_info_target(int, int) override { return nullptr; }
    video_handler* create_video_handler() override { return nullptr; }
    void begin_display(rgba, int, int, int, int, float, float, float, float) override {}
    void end_display() override {}
    void set_blend_mode(blend_mode::id) override {}
    void set_target(bitmap_info*) override {}
    void clear_frame_buffer() override {}
    void read_frame_buffer(int, int, int, int, unsigned char*) override {}
    void set_wire_frame(bool) override {}
    void set_buffer_capacity(buffer_mode, int) override {}
    void set_context(player_context*) override {}
    void set_render_cache(render_cache*) override {}
    void set_matrix(const matrix&) override {}
    void set_cxform(const cxform&) override {}
    void draw_mesh_strip(const void*, int) override {}
    void draw_triangle_list(const void*, int, const unsigned short*, int) override {}
    void draw_line_strip(const void*, int) override {}
    void draw(render_cache*) override {}
    void fill_style_disable(int) override {}
    void fill_style_color(int, const rgba&) override {}
    bool fill_style_bitmap(int, bitmap_info*, const matrix&, bitmap_wrap_mode) override { return false; }
    void line_style_disable() override {}
    void line_style_color(rgba) override {}
    void line_style_width(float) override {}
    void draw_bitmap(const matrix&, bitmap_info*, const rect&, const rect&, rgba) override {}
    void set_antialiased(bool) override {}
    void begin_submit_mask() override {}
    void end_submit_mask() override {}
    void disable_mask() override {}
    bool is_visible(const rect&) override { return false; }
    void open() override {}
};

}  // namespace test
}  // namespace gameswf
