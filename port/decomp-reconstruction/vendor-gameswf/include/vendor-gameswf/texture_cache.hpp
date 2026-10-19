// gameswf::texture_cache (Gameloft, not in upstream GameSWF r1714).
//
// One texture is split into a grid of 16 x 16 pixel cells. Regions (rectangles of cells) are handed
// out from a free list and recorded in a used-region hash by key. The upstream containers
// (array, hash, smart_ptr) are global in base/; the binary's gameswf::array / gameswf::hash names
// are those templates.
//
// Layout recovered from the constructor, reset() and the region functions. Each member carries its
// original 32-bit offset. Pointer-sized members are host width, so only the comments keep the
// original offsets.
#ifndef VENDOR_GAMESWF_TEXTURE_CACHE_HPP
#define VENDOR_GAMESWF_TEXTURE_CACHE_HPP

#include <cstdint>

#include "base/container.h"
#include "base/smart_ptr.h"
#include "gameswf/gameswf.h"

namespace gameswf {

// gameswf::player_context: its layout is not in the tree. Only a pointer is needed here.
struct player_context;
// DH2: the glyph provider that owns a glyph texture cache (vendor-gameswf/glyph_provider.hpp).
struct glyph_provider;

class texture_cache {
public:
    // Key of the used-region hash. The original is sixteen bytes, copied as four words. On the host,
    // unk_0 is pointer width (glyph_texture_cache stores the face pointer there), so the key is 24
    // bytes. pad_10 is host-only padding. It is named and zeroed, so the hash (which reads all of
    // sizeof(key) bytes) sees the same bytes for equal keys, with no compiler padding left unset.
    struct key {
        std::uintptr_t unk_0 = 0;  // +0x0 of the key (entry +0x8). Host width: glyph_texture_cache stores the face pointer here
        int32_t unk_4 = 0;  // +0x4
        int32_t unk_8 = 0;  // +0x8
        int32_t unk_c = 0;  // +0xc
        uint8_t pad_10[4] = {};  // +0x10 (host only): explicit padding after unk_c

        bool operator==(const key& other) const {
            return unk_0 == other.unk_0 && unk_4 == other.unk_4 && unk_8 == other.unk_8 &&
                   unk_c == other.unk_c;
        }
    };

    // A rectangle of 16-pixel cells in the grid. The grid index is y * cells_per_row + x, with
    // cells_per_row = texture width / 16. The region size is 16 bytes in the original.
    struct region {
        int64_t last_clock = 0;  // +0x0: texture_cache clock stamp; 0 for a region that was just cut
        int32_t cells_w = 0;     // +0x8: width in cells
        int32_t cells_h = 0;     // +0xc: height in cells
    };

    // Constructor (C1 0x794030, C2 0x7941c0). Takes the texture from the current render handler (alpha, rgba image or
    // render target), makes it writable and builds the cell grid with reset().
    texture_cache(int width, int height, int bpp, bool render_target);
    // D2 0x758b8c.
    ~texture_cache();

    // 0x793560. Rounds both sizes up to whole cells (minimum one cell). Returns height + 15 from
    // before the rounding.
    static int get_region_size_requirement(int& width, int& height);
    // 0x756c30. Pixel rectangle of a region, from its grid index.
    void get_region_bounds(const region* r, gameswf::rect& bounds) const;
    // 0x79352c. The region argument is not read. Returns the texture height.
    int verify_integrity(const region*) const;
    // 0x793d78.
    void verify_integrity();
    // 0x793ed8.
    void reset();
    // 0x794350. Cuts region r down to cells_w x cells_h and puts the cut-off parts on the free list.
    void subdivide_region(region* r, int cells_w, int cells_h);
    // 0x794488. Takes the oldest used region that fits (width, height in pixels) out of the used hash.
    region* find_used_region(int width, int height);
    // 0x794668. Takes the best-fitting free region for (width, height) in pixels off the free list.
    region* find_available_region(int width, int height);
    // 0x7c44d8. Locks the texture once and returns its pixel buffer.
    void* lock();
    // 0x7935ec. Static in the original. Unlocks the caches reached from the player context.
    static void unlock_all(player_context* ctx);

    // +0x00 (int64): clock, incremented by reset().
    int64_t m_clock = 0;
    // +0x08 (int64): clock value taken by reset() and find_used_region().
    int64_t m_last_clock = 0;
    // +0x10 (array<region>, 16 bytes with its borrowed flag at +0x1c): the cell grid, one region per cell.
    ::array<region> m_regions;
    // +0x20 (array<region*>, 16 bytes; its borrowed flag at +0x2c means the free-list buffer is not owned by
    // this cache, see ~texture_cache): free regions.
    ::array<region*> m_free;
    // +0x30 (hash<key, region*>, a pointer to the table in the original): used regions by key.
    ::hash<key, region*, ::fixed_size_hash<key>> m_used;
    // +0x34 (smart_ptr<bitmap_info>): the texture. bitmap_info's DH2 vtable gives lock +0x18,
    // unlock +0x1c, get_width +0x24 and get_height +0x28, as this class calls them.
    ::smart_ptr<bitmap_info> m_texture;
    // +0x38 (int): bytes per pixel. 1 selects the alpha-only texture path in the constructor.
    int m_bpp = 0;
    // +0x3c (void*): pixel buffer while the texture is locked, otherwise null.
    void* m_locked = nullptr;
    // The object is 0x40 bytes in the binary. filter_engine and glyph_texture_cache derive from it and start
    // their own members at +0x40.
};

}  // namespace gameswf

// DH2: 0x7939dc gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >::set_raw_capacity(int)
// Declared here, next to region, so every TU that adds to this table sees the specialization. Body:
// vendor-gameswf/src/v1-vendor-gameswf-pack10-9a32ad-0.cpp.
template <>
void ::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*,
            ::fixed_size_hash<gameswf::texture_cache::region*> >::set_raw_capacity(int new_size);

// DH2: 0x7c5020 gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::set_raw_capacity(int)
// The used-region table's explicit specialization (the DH2 4-bucket minimum). Body: vendor-gameswf/src/v1-vendor-gameswf-pack19-4d4603-0.cpp.
template <>
void hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, fixed_size_hash<gameswf::texture_cache::key> >::set_raw_capacity(int new_size);

#endif  // VENDOR_GAMESWF_TEXTURE_CACHE_HPP
