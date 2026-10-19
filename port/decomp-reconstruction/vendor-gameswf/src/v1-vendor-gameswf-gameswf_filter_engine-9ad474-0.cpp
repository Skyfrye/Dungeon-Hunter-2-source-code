// Track B batch v1-vendor-gameswf-gameswf_filter_engine-9ad474-0 (owner gameswf::filter_engine).
// Gameloft addition, not in gameswf r1714.
//
// The passes follow the Hex-Rays pseudocode and were checked against the ARM assembly: float
// arithmetic is single precision (__aeabi_fmul, __aeabi_fdiv, ...), float-to-integer conversions
// saturate as the VFP helpers do (f2iz, f2uiz below), and the passes take no this pointer.

#include "vendor-gameswf/filter_engine.hpp"

#include <algorithm>
#include <array>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <limits>
#include <utility>

#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_sprite.h"
#include "vendor-gameswf/filter.hpp"
#include "vendor-gameswf/gameswf_root.hpp"

namespace gameswf {
namespace {

// __aeabi_f2iz: truncation that saturates; NaN gives 0.
int f2iz(float v) {
    if (v != v) return 0;
    if (v >= 2147483648.0f) return std::numeric_limits<int>::max();
    if (v <= -2147483648.0f) return std::numeric_limits<int>::min();
    return static_cast<int>(v);
}

// __aeabi_f2uiz: truncation to unsigned that saturates; negative and NaN give 0.
std::uint32_t f2uiz(float v) {
    if (!(v > 0.0f)) return 0;
    if (v >= 4294967296.0f) return 0xFFFFFFFFu;
    return static_cast<std::uint32_t>(v);
}

// Byte store of a float sum: the unsigned cast, then the low byte.
std::uint8_t store_sum(float v) {
    return static_cast<std::uint8_t>(f2uiz(v));
}

// blend's byte store: a value above 254 is written as 255.
std::uint8_t saturate_byte(int v) {
    return v > 254 ? std::uint8_t{255} : static_cast<std::uint8_t>(v);
}

}  // namespace

// 0x756d88 _ZN7gameswf13filter_engine5blendERNS0_6rasterES2_
// Composites src over dst. Source rows are packed at four bytes a pixel. The x and y offsets of
// either raster are not applied (the binary starts from data).
void filter_engine::blend(raster& src, raster& dst) {
    const int height = src.height;  // +0x10
    if (height <= 0) return;
    const int width = src.width;  // +0x0c
    std::uint8_t* s_row = src.data;
    std::uint8_t* d_row = dst.data;
    for (int row = 0; row < height; ++row) {
        std::uint8_t* s = s_row;
        std::uint8_t* d = d_row;
        for (int col = 0; col < width; ++col, s += 4, d += 4) {
            const int alpha = s[3];
            if (alpha == 0) continue;
            const int inv = 255 - alpha;
            d[0] = saturate_byte(d[0] * inv / 255 + s[0]);
            d[1] = saturate_byte(d[1] * inv / 255 + s[1]);
            d[2] = saturate_byte(d[2] * inv / 255 + s[2]);
            d[3] = saturate_byte(d[3] * inv / 255 + alpha);
        }
        s_row += 4 * static_cast<std::ptrdiff_t>(width);
        d_row += dst.stride;
    }
}

// 0x756f18 _ZN7gameswf13filter_engine10apply_glowERNS0_6paramsE
// The binary is a bare return (asm: bx lr). The glow pass is not in this build.
void filter_engine::apply_glow(params&) {}

// 0x7572a0 _ZN7gameswf13filter_engine17read_frame_bufferEiiii
// Grows m_pixels to 4 * width * height bytes (new bytes zero), reads the frame into it through the render handler's
// read_frame_buffer (vtable +0x3c: x, y, width, height and the buffer), then converts the pixels in place: the first and
// third bytes swap, and a pixel with alpha 1..254 is scaled by 255 / sqrt_table[alpha] (each channel and the alpha, a
// result above 254 stored as 255). The binary's loop is a do-while that tests the count against 1, so it never
// converts the last pixel; that is reproduced. A count of zero would run the original loop on a wrapped count; here
// nothing is converted for a count below two.
void filter_engine::read_frame_buffer(int x, int y, int width, int height) {
    int pixel_count = width * height;
    const int byte_count = 4 * width * height;
    if (byte_count > m_pixels.size()) {
        m_pixels.resize(byte_count);
    }
    std::uint8_t* pixels = m_pixels.size() > 0 ? &m_pixels[0] : nullptr;
    s_render_handler->read_frame_buffer(x, y, width, height, pixels);
    if (pixel_count < 2) {
        return;
    }
    std::uint8_t* p = pixels;
    for (; pixel_count != 1; --pixel_count, p += 4) {
        const int b0 = p[0];
        const int b1 = p[1];
        const int b2 = p[2];
        const int alpha = p[3];
        if (static_cast<std::uint8_t>(alpha - 1) <= 0xFD) {
            const float scale = 255.0f / static_cast<float>(sqrt_table[alpha]);
            int v = f2iz(static_cast<float>(b2) * scale);
            p[0] = v > 254 ? std::uint8_t{255} : static_cast<std::uint8_t>(v);
            v = f2iz(static_cast<float>(b1) * scale);
            p[1] = v > 254 ? std::uint8_t{255} : static_cast<std::uint8_t>(v);
            v = f2iz(static_cast<float>(b0) * scale);
            p[2] = v > 254 ? std::uint8_t{255} : static_cast<std::uint8_t>(v);
            v = f2iz(static_cast<float>(alpha) * scale);
            p[3] = v > 254 ? std::uint8_t{255} : static_cast<std::uint8_t>(v);
        } else {
            p[0] = static_cast<std::uint8_t>(b2);
            p[1] = static_cast<std::uint8_t>(b1);
            p[2] = static_cast<std::uint8_t>(b0);
            p[3] = static_cast<std::uint8_t>(alpha);
        }
    }
}

// 0x7575b0 _ZN7gameswf13filter_engine7prepareERNS0_6paramsE
// Sets the destination rectangle (offset and size) from the source rectangle and the filter.
void filter_engine::prepare(params& p) {
    const filter& e = *p.filter;
    int w = p.src.width;
    const int h = p.src.height;
    p.dst.x = 0;
    p.dst.y = 0;
    p.dst.width = w;
    p.dst.height = h;
    if (e.type != 0) {
        if (e.type == 2) {  // glow: two extra pixels on each axis
            w += 2;
            p.dst.width = w;
            p.dst.height = h + 2;
        }
    } else {  // drop shadow: offset by distance along the angle, rounded to the nearest pixel
        const float shift_x = std::cos(e.angle) * e.distance;
        const float shift_y = std::sin(e.angle) * e.distance;
        const int dx = f2iz(shift_x + 0.5f);
        const int dy = f2iz(shift_y + 0.5f);
        p.dst.x = dx;
        w += std::abs(dx);
        p.dst.height = std::abs(dy) + h;
        p.dst.y = dy;
        p.dst.width = w;
    }
    p.dst.width = w + f2iz(e.blur_x + 0.5f);
    p.dst.height += f2iz(e.blur_y + 0.5f);
    p.dst.x -= f2iz(e.blur_x * 0.5f);
    p.dst.y -= f2iz(e.blur_y * 0.5f);
}

// 0x7576d4 _ZN7gameswf13filter_engine12apply_shadowERNS0_6paramsE
// Writes the shadow colour into dst where src is opaque enough, offset by (dx, dy). When the
// filter's flag 0x20 is set, src is then composited over the shadow.
void filter_engine::apply_shadow(params& p) {
    const filter& e = *p.filter;
    const float cos_a = std::cos(e.angle);
    const float sin_a = std::sin(e.angle);
    const int dx = f2iz(e.distance * cos_a);
    const int dy = f2iz(e.distance * sin_a);
    raster& src = p.src;
    raster& dst = p.dst;
    if (src.height > 0) {
        std::uint8_t* s_row = src.data + (src.x + src.y * src.stride);
        std::uint8_t* d_row = dst.data + (dst.x + dst.y * dst.stride + 4 * dx + dst.stride * dy);
        for (int row = 0; row < src.height; ++row) {
            std::uint8_t* s = s_row;
            std::uint8_t* d = d_row;
            for (int col = 0; col < src.width; ++col, s += 4, d += 4) {
                const int alpha = s[3];
                if (alpha == 0) continue;
                d[0] = e.color[0];
                d[1] = e.color[1];
                d[2] = e.color[2];
                // (colour alpha * source alpha) / 255, with the binary's reciprocal 0x80808081.
                const std::int64_t product = 2155905153LL * e.color[3] * alpha;
                const int out_alpha = static_cast<int>(static_cast<std::uint64_t>(product) >> 32) >> 7;
                d[3] = static_cast<std::uint8_t>(out_alpha);
            }
            s_row += src.stride;
            d_row += dst.stride;
        }
    }
    if ((e.flags & 0x20) != 0) blend(src, dst);
}

// 0x75792c _ZN7gameswf13filter_engine12apply_blur_vERNS0_6paramsE
// Vertical gaussian pass from src into dst, one byte column at a time. For bpp 4 the binary
// addresses the taps with bpp * start and steps 4 bytes (asm 0x757b38, MLA with the bpp slot),
// and it advances columns by one byte. That is reproduced as found, and it is probably a Gameloft
// defect: the four-channel vertical blur does not look like a vertical pass. The one-channel path
// steps the taps by the stride, as a vertical pass should.
void filter_engine::apply_blur_v(params& p) {
    const filter& e = *p.filter;
    const float blur = e.blur_y;
    const int radius = f2iz(blur);
    const int bpp = p.src.bpp;
    std::array<float, 257> kernel{};
    gaussian_kernel(kernel.data(), radius);
    const int src_stride = p.src.stride;
    if (f2iz(blur + blur) <= 0) return;
    const int width = p.src.width;
    if (width <= 0) return;
    const int height = p.src.height;
    const int dst_stride = p.dst.stride;
    std::uint8_t* src_col0 = p.src.data + (p.src.x + p.src.y * src_stride);
    std::uint8_t* dst_col0 = p.dst.data + (p.dst.x + p.dst.y * dst_stride);
    for (int col = 0; col < width; ++col) {
        std::uint8_t* s_col = src_col0 + col;
        std::uint8_t* d_col = dst_col0 + col;
        for (int row = 0; row < height; ++row) {
            const int start = (row - radius >= 0) ? -radius : -row;
            const int end = (height > row + radius) ? radius : (height - 1 - row);
            const float* k = kernel.data() + (radius + start);
            if (bpp == 4) {
                float c0 = 0.0f;
                float c1 = 0.0f;
                float c2 = 0.0f;
                float ca = 0.0f;
                if (start <= end) {
                    const std::uint8_t* t0 = s_col + bpp * start;
                    for (int j = 0; j <= end - start; ++j) {
                        const std::uint8_t* t = t0 + 4 * j;
                        const float alpha = static_cast<float>(t[3]);
                        const float w = (k[j] * alpha) / 255.0f;
                        c0 += static_cast<float>(t[0]) * w;
                        c1 += static_cast<float>(t[1]) * w;
                        c2 += static_cast<float>(t[2]) * w;
                        ca += k[j] * alpha;
                    }
                }
                d_col[0] = store_sum(c0);
                d_col[1] = store_sum(c1);
                d_col[2] = store_sum(c2);
                d_col[3] = store_sum(ca);
            } else {
                float acc = 0.0f;
                if (start <= end) {
                    const std::uint8_t* px = s_col + static_cast<std::ptrdiff_t>(src_stride) * start;
                    for (int j = 0; j <= end - start; ++j, px += src_stride) {
                        acc += static_cast<float>(*px) * k[j];
                    }
                }
                d_col[0] = store_sum(acc);
            }
            s_col += src_stride;
            d_col += dst_stride;
        }
    }
}

// 0x757cd8 _ZN7gameswf13filter_engine12apply_blur_hERNS0_6paramsE
// Horizontal gaussian pass from src into dst. The window of column i is clamped to the row.
void filter_engine::apply_blur_h(params& p) {
    const filter& e = *p.filter;
    const float blur = e.blur_x;
    const int radius = f2iz(blur);
    const int bpp = p.src.bpp;
    std::array<float, 257> kernel{};
    gaussian_kernel(kernel.data(), radius);
    if (f2iz(blur + blur) <= 0) return;
    const int width = p.src.width;
    const int height = p.src.height;
    if (width <= 0 || height <= 0) return;
    const int src_stride = p.src.stride;
    const int dst_stride = p.dst.stride;
    const int column_step = (bpp == 4) ? 4 : 1;
    std::uint8_t* s_row = p.src.data + (p.src.x + p.src.y * src_stride);
    std::uint8_t* d_row = p.dst.data + (p.dst.x + p.dst.y * dst_stride);
    for (int row = 0; row < height; ++row) {
        std::uint8_t* s = s_row;
        std::uint8_t* d = d_row;
        for (int col = 0; col < width; ++col, s += column_step, d += column_step) {
            const int start = (col - radius >= 0) ? -radius : -col;
            const int end = (width > col + radius) ? radius : (width - 1 - col);
            const float* k = kernel.data() + (radius + start);
            if (bpp == 4) {
                float c0 = 0.0f;
                float c1 = 0.0f;
                float c2 = 0.0f;
                float ca = 0.0f;
                if (start <= end) {
                    const std::uint8_t* t0 = s + 4 * start;
                    for (int j = 0; j <= end - start; ++j) {
                        const std::uint8_t* t = t0 + 4 * j;
                        const float alpha = static_cast<float>(t[3]);
                        const float w = (k[j] * alpha) / 255.0f;
                        c0 += static_cast<float>(t[0]) * w;
                        c1 += static_cast<float>(t[1]) * w;
                        c2 += static_cast<float>(t[2]) * w;
                        ca += k[j] * alpha;
                    }
                }
                d[0] = store_sum(c0);
                d[1] = store_sum(c1);
                d[2] = store_sum(c2);
                d[3] = store_sum(ca);
            } else {
                float acc = 0.0f;
                if (start <= end) {
                    const std::uint8_t* px = s + start;
                    for (int j = 0; j <= end - start; ++j) {
                        acc += static_cast<float>(px[j]) * k[j];
                    }
                }
                d[0] = store_sum(acc);
            }
        }
        s_row += src_stride;
        d_row += dst_stride;
    }
}

// 0x75807c _ZN7gameswf13filter_engine4copyERNS0_6rasterES2_
// Copies width * bpp bytes per row from src to dst.
void filter_engine::copy(raster& src, raster& dst) {
    if (src.height <= 0) return;
    const std::size_t row_bytes = static_cast<std::size_t>(src.width * src.bpp);
    std::uint8_t* s = src.data + (src.x + src.y * src.stride);
    std::uint8_t* d = dst.data + (dst.x + dst.y * dst.stride);
    for (int row = 0; row < src.height; ++row) {
        std::memcpy(d, s, row_bytes);
        s += src.stride;
        d += dst.stride;
    }
}

// 0x7580f8 _ZN7gameswf13filter_engine5clearERNS0_6rasterE
// Zeroes height rows of stride bytes each, starting at data. LC_API_MEMSET_0 forwards to memset.
void filter_engine::clear(raster& r) {
    if (r.height <= 0) return;
    std::uint8_t* p = r.data;
    for (int row = 0; row < r.height; ++row) {
        std::memset(p, 0, static_cast<std::size_t>(r.stride));
        p += r.stride;
    }
}

// 0x758140 _ZN7gameswf13filter_engine5applyERNS0_6paramsE
// Runs the filter. Blur (type 1) runs the passes that have a positive radius and swaps the two
// rasters after each one, so the result is always in dst. Glow (type 2) runs the empty glow pass,
// swaps, and clears dst. Type 0 copies src to dst. Other types do nothing.
void filter_engine::apply(params& p) {
    switch (p.filter->type) {
    case 1:
        if (p.filter->blur_x > 0.0f) {
            apply_blur_h(p);
            std::swap(p.src, p.dst);
        }
        if (p.filter->blur_y > 0.0f) {
            apply_blur_v(p);
            std::swap(p.src, p.dst);
        }
        std::swap(p.src, p.dst);
        break;
    case 2:
        apply_glow(p);
        std::swap(p.src, p.dst);
        clear(p.dst);
        break;
    case 0:
        copy(p.src, p.dst);
        break;
    default:
        break;
    }
}

// 0x75830c _ZN7gameswf13filter_engine27collect_filtered_charactersEPNS_9characterE
// A character takes part when it is visible (byte +0x9b) and the alpha multiplier of its world colour transform
// (float 6 of the cxform) is not zero. If its effect (+0x50) has filters it is appended to m_filtered_characters
// (the array grows to 1.5 times the new count when the buffer is full). A sprite (virtual is(2), the sprite class id) then
// recurses into the characters of its display list (+0xa8: buffer, count at +0xac), in order.
void filter_engine::collect_filtered_characters(character* c) {
    if (!c->m_visible) {
        return;
    }
    if (c->get_world_cxform()->m_[3][0] == 0.0f) {
        return;
    }
    if (c->m_effect->m_filters.size() != 0) {
        m_filtered_characters.push_back(c);
    }
    if (c->is(2)) {
        sprite_instance* sprite = static_cast<sprite_instance*>(c);
        const int count = sprite->m_display_list.size();
        for (int i = 0; i < count; ++i) {
            collect_filtered_characters(sprite->m_display_list.get_character(i));
        }
    }
}

// 0x758434 _ZN7gameswf13filter_engine14display_cachedEPNS_9characterE
// Draws the cached filter result of a character. Binary: the character is looked up in the cache table (m_cache).
// It returns 0 when the character is the one being rendered (m_current), has no entry, or the entry has no region.
// Otherwise the destination rectangle is (0, w, 0, h) with w and h the entry's bound size in twips, and the source
// rectangle is the entry's region of the texture: the region's pixel bounds with the far corner moved to
// (origin + size / 20) and every coordinate divided by the texture size (virtual get_width, get_height). The colour is
// the cached character's world colour transform applied to opaque white. The render handler's draw_bitmap
// (slot +0x80) draws the texture with the character's world matrix. Returns 1.
bool filter_engine::display_cached(character* c) {
    filter_cache_infos info;
    character* key = c;
    if (m_current == c || !m_cache.get(key, &info) || info.m_region == nullptr) {
        return false;
    }
    rect destination;
    destination.m_x_min = 0.0f;
    destination.m_x_max = info.m_bound.m_x_max - info.m_bound.m_x_min;
    destination.m_y_min = 0.0f;
    destination.m_y_max = info.m_bound.m_y_max - info.m_bound.m_y_min;

    rect source;
    get_region_bounds(info.m_region, source);
    source.m_x_max = source.m_x_min + (info.m_bound.m_x_max - info.m_bound.m_x_min) / 20.0f;
    source.m_y_max = source.m_y_min + (info.m_bound.m_y_max - info.m_bound.m_y_min) / 20.0f;
    const float texture_width = static_cast<float>(m_texture->get_width());
    const float texture_height = static_cast<float>(m_texture->get_height());
    source.m_x_min = source.m_x_min / texture_width;
    source.m_x_max = source.m_x_max / texture_width;
    source.m_y_min = source.m_y_min / texture_height;
    source.m_y_max = source.m_y_max / texture_height;

    const cxform world_cxform = *info.m_character->get_world_cxform();
    const rgba color = world_cxform.transform(rgba(0xff, 0xff, 0xff, 0xff));
    const matrix world_matrix = *info.m_character->get_world_matrix();
    if (s_render_handler != nullptr) {
        s_render_handler->draw_bitmap(world_matrix, m_texture.get_ptr(), destination, source, color);
    }
    return true;
}

// 0x7590a4 _ZN7gameswf13filter_engineD1Ev
// Binary: clears the cache table, empties and releases the pixel array (+0x50) and the character array (+0x40),
// then runs the texture_cache destructor. The negative-count zeroing loops of the binary are the inlined tail of
// resize(0) and are not reachable with a valid count.
filter_engine::~filter_engine() {
    m_cache.clear();
    m_pixels.resize(0);
    m_pixels.reserve(0);
    m_filtered_characters.resize(0);
    m_filtered_characters.reserve(0);
}

// 0x757500 _ZN7gameswf13filter_engineC1Ev
// Binary: texture_cache(256, 256, 4, false), the members zeroed (their default state here), then the texture's
// virtual slot +0x08 (bitmap_info::layout) is called, with no null test.
filter_engine::filter_engine()
    : filter_texture_cache(256, 256, 4, false), m_current(nullptr) {
    m_texture->layout();
}

// 0x75918c _ZN7gameswf13filter_engine3runEPNS_4rootE
// Called once a frame. Collects the characters that have filters (the movie's display tree, from the root's movie at
// +0x10) and makes sure each has a cache entry with a texture region of its size:
//   1. An entry is (re)built for a character that has none or whose entry is dirty: bounds from get_bound (slot +0x12c),
//      region from get_character_region(width, height) for the bound size in pixels (twips / 20).
//   2. If any region could not be had, the texture cache is reset and every entry gets a region again (the entries
//      keep their bounds); a failure is logged.
//   3. Each entry with a region that is dirty is rendered into the texture: the handler's frame buffer is cleared,
//      the character is detached from its parent and given an identity colour transform, a begin_display on the
//      region (white background, region viewport, the character bound as the logical rectangle), the character's
//      display, end_display, the character's matrix, colour transform and parent are restored, and the pixels are
//      read back (read_frame_buffer) and copied row by row into the locked texture. The entry is clean afterwards.
// The binary copies the rows to the start of the locked buffer, with the texture width as the row pitch, not to the
// region origin; that is reproduced.
void filter_engine::run(root* r) {
    m_filtered_characters.resize(0);
    collect_filtered_characters(r->m_movie.get_ptr());
    if (m_filtered_characters.size() == 0) {
        return;
    }

    bool allocation_failed = false;
    for (int i = 0; i < m_filtered_characters.size(); ++i) {
        character* ch = m_filtered_characters[i];
        filter_cache_infos info;
        const bool found = m_cache.get(ch, &info);
        if (!found || info.m_dirty) {
            rect bound;
            ch->get_bound(&bound);  // slot +0x12c
            texture_cache::region* region = get_character_region(
                ch, static_cast<int>((bound.m_x_max - bound.m_x_min) / 20.0f), static_cast<int>((bound.m_y_max - bound.m_y_min) / 20.0f));
            info.m_region = region;
            if (region == nullptr) {
                allocation_failed = true;
            }
            info.m_character = ch;
            info.m_bound = bound;
            m_cache.set(ch, info);
        }
    }

    if (allocation_failed) {
        reset();
        for (auto it = m_cache.begin(); it != m_cache.end(); ++it) {
            filter_cache_infos& entry = it->second;
            entry.m_region = get_character_region(
                it->first, static_cast<int>((entry.m_bound.m_x_max - entry.m_bound.m_x_min) / 20.0f),
                static_cast<int>((entry.m_bound.m_y_max - entry.m_bound.m_y_min) / 20.0f));
            if (entry.m_region == nullptr) {
                log_error("filter texture cache allocation failed\n");
            }
        }
    }

    for (auto it = m_cache.begin(); it != m_cache.end(); ++it) {
        filter_cache_infos& entry = it->second;
        if (entry.m_region == nullptr || !entry.m_dirty) {
            continue;
        }
        render_handler* handler = s_render_handler;
        handler->clear_frame_buffer();  // slot +0x38
        character* ch = entry.m_character;

        // What the character is drawn with is set aside: matrix, colour transform and the parent link.
        const matrix saved_matrix = *ch->m_local_matrix;
        const cxform saved_cxform = *ch->m_local_cxform;
        character* saved_parent = ch->m_parent.get_ptr();
        ch->m_parent = nullptr;
        ch->set_cxform(cxform());
        m_current = ch;

        rect region_bounds;
        get_region_bounds(entry.m_region, region_bounds);
        region_bounds.m_x_max = (entry.m_bound.m_x_max - entry.m_bound.m_x_min) / 20.0f + region_bounds.m_x_min;
        region_bounds.m_y_max = (entry.m_bound.m_y_max - entry.m_bound.m_y_min) / 20.0f + region_bounds.m_y_min;
        handler->begin_display(rgba(0xff, 0xff, 0xff, 0xff), static_cast<int>(region_bounds.m_x_min), static_cast<int>(region_bounds.m_y_min),
                               static_cast<int>(region_bounds.m_x_max - region_bounds.m_x_min), static_cast<int>(region_bounds.m_y_max - region_bounds.m_y_min),
                               entry.m_bound.m_x_min, entry.m_bound.m_x_max, entry.m_bound.m_y_max, entry.m_bound.m_y_min);
        ch->display();  // slot +0x120
        handler->end_display();

        ch->set_matrix(saved_matrix);
        ch->set_cxform(saved_cxform);
        ch->m_parent = saved_parent;
        m_current = nullptr;

        const int width = static_cast<int>(region_bounds.m_x_max - region_bounds.m_x_min);
        const int height = static_cast<int>(region_bounds.m_y_max - region_bounds.m_y_min);
        read_frame_buffer(static_cast<int>(region_bounds.m_x_min), r->m_viewport_height - height - static_cast<int>(region_bounds.m_y_min), width, height);

        std::uint8_t* destination = static_cast<std::uint8_t*>(m_texture->lock());
        const std::uint8_t* source = m_pixels.size() > 0 ? &m_pixels[0] : nullptr;
        const int texture_width = m_texture->get_width();
        for (int row = 0; row < height; ++row) {
            std::memcpy(destination, source, 4 * static_cast<std::size_t>(width));
            source += 4 * static_cast<std::size_t>(width);
            destination += 4 * static_cast<std::size_t>(texture_width);
        }
        m_texture->unlock();
        entry.m_dirty = false;
    }
}

}  // namespace gameswf
