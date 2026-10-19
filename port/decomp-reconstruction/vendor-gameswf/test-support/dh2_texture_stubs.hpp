// Link-only stand-ins and a fake texture for the tests of the texture caches (texture_cache, filter_engine). Include it once, in
// the test translation unit (it defines functions). It provides:
//   - gameswf::s_render_handler (null until the test installs a handler) and the allocator stand-ins;
//   - ref_counted and bitmap_info out-of-line members (the batches that define them are not linked);
//   - image_base and image_rgba stand-ins (the texture_cache constructor fills a cleared rgba image);
//   - the set_raw_capacity bodies of the two region tables of texture_cache, through the shared rehash body;
//   - gameswf::test::fake_texture and gameswf::test::texture_handler: a handler that hands out fake textures.
// The test links: the batch source under test, the texture_cache batch (v1-vendor-gameswf-gameswf_texture_cache-d731ee-0.cpp),
// upstream base/container.cpp and base/utf8.cpp, and the tu_string batch source.
#pragma once

#include <cstdint>
#include <cstdlib>
#include <cstring>

#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_dh2_hash.hpp"  // dh2_hash_access::set_raw_capacity, the shared rehash body
#include "vendor-gameswf/image_rgba.hpp"
#include "vendor-gameswf/texture_cache.hpp"
#include "dh2_null_render_handler.hpp"

namespace gameswf {

render_handler* s_render_handler = nullptr;  // the texture caches ask the current handler for their texture

image_base::image_base(std::uint8_t* data, int width, int height, int pitch, id_image type)
    : m_type(type), m_data(data), m_width(width), m_height(height), m_pitch(pitch) {}
image_base::~image_base() { std::free(m_data); }
image_rgba::image_rgba(int width, int height) : image_base(nullptr, width, height, 4 * width, RGBA) {
    m_data = static_cast<std::uint8_t*>(std::malloc(static_cast<std::size_t>(m_pitch) * static_cast<std::size_t>(height)));
    std::memset(m_data, 0xAB, static_cast<std::size_t>(m_pitch) * static_cast<std::size_t>(height));  // the constructor clears it
}
image_rgba::~image_rgba() {}
template <>
void destruct<image_rgba>(const image_rgba* p) { delete p; }

// Reference counts are never driven to zero in these tests, so no fake texture is freed by a smart_ptr.
ref_counted::ref_counted() {}
ref_counted::~ref_counted() {}
void ref_counted::add_ref() const {}
void ref_counted::drop_ref() {}
weak_proxy* ref_counted::get_weak_proxy() const { return nullptr; }
void ref_counted::detach_weak_proxy() {}

bitmap_info::~bitmap_info() {}
void bitmap_info::unlayout() {}
void bitmap_info::set_writable() {}
void* bitmap_info::lock() { return nullptr; }
void bitmap_info::unlock() {}
void bitmap_info::set_texture(glitch::video::ITexture*) {}
void bitmap_info::set_min_filter(filter_mode) {}
void bitmap_info::set_mag_filter(filter_mode) {}
int bitmap_info::is_layout() const { return 0; }
int bitmap_info::get_internal_width() const { return get_width(); }
int bitmap_info::get_internal_height() const { return get_height(); }

void* malloc_internal(unsigned int size, swf::MemHint) { return std::malloc(size); }
void free_internal(void* p, unsigned int) { std::free(p); }
void* realloc_internal(void* p, unsigned int new_size, unsigned int, swf::MemHint) { return std::realloc(p, new_size); }

namespace test {

// A texture with a fixed size. lock() returns m_pixels (null unless the test sets it).
class fake_texture : public bitmap_info {
public:
    fake_texture(int width, int height) : m_width(width), m_height(height) {}

    void* lock() override {
        ++m_lock_calls;
        return m_pixels;
    }
    void unlock() override { ++m_unlock_calls; }
    int get_width() const override { return m_width; }
    int get_height() const override { return m_height; }

    int m_width;
    int m_height;
    int m_lock_calls = 0;
    int m_unlock_calls = 0;
    void* m_pixels = nullptr;
};

// The handler the texture cache constructors ask for their texture: records which factory was used and hands out a fake.
struct texture_handler : null_render_handler {
    int alpha_calls = 0;
    int rgba_calls = 0;
    int target_calls = 0;
    int last_width = 0;
    int last_height = 0;
    bool rgba_image_was_clear = false;
    fake_texture* last = nullptr;

    bitmap_info* make(int w, int h) {
        last_width = w;
        last_height = h;
        last = new fake_texture(w, h);
        return last;
    }
    bitmap_info* create_bitmap_info_alpha(int w, int h, unsigned char*) override {
        ++alpha_calls;
        return make(w, h);
    }
    bitmap_info* create_bitmap_info_rgba(image_rgba* image) override {
        ++rgba_calls;
        rgba_image_was_clear = true;
        for (int y = 0; y < image->m_height; ++y) {
            for (int x = 0; x < image->m_pitch; ++x) {
                if (image->m_data[y * image->m_pitch + x] != 0) {
                    rgba_image_was_clear = false;
                }
            }
        }
        return make(image->m_width, image->m_height);
    }
    bitmap_info* create_bitmap_info_target(int w, int h) override {
        ++target_calls;
        return make(w, h);
    }
};

}  // namespace test
}  // namespace gameswf

// The two tables of the texture cache need their own set_raw_capacity (the binary's rehash; the batches that define them are
// pack10 and pack19, which drag in the font and button machinery), so they use the shared body.
template <>
void hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, fixed_size_hash<gameswf::texture_cache::key> >::set_raw_capacity(int new_size) {
    dh2_hash_access::set_raw_capacity(*this, new_size);
}
template <>
void hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, fixed_size_hash<gameswf::texture_cache::region*> >::set_raw_capacity(int new_size) {
    dh2_hash_access::set_raw_capacity(*this, new_size);
}
