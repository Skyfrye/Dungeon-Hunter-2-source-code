// Batch v1-vendor-gameswf-pack6-a8bd9d-0 (category vendor-gameswf, 20 functions in one part).
//
// Owners and where their layouts live:
//   gameswf::as_stage              include/vendor-gameswf/as_stage.hpp (new, Gameloft)
//   gameswf::player_context        include/vendor-gameswf/player_context.hpp (new, Gameloft)
//   gameswf::render_cache          include/vendor-gameswf/render_cache.hpp (new, Gameloft)
//   gameswf::render::bogus_bi      gameswf/gameswf_render.h (DH2 declaration, upstream definition #if 0)
//   gameswf::render (3 factories)  gameswf/gameswf_render.h (DH2 declarations); create_bitmap_info_empty
//                                  replaces the upstream one in gameswf_render.cpp (#if 0)
//   gameswf::string_hash<U> and stringi_hash<U> dtors, hash<...>::set_raw_capacity
//                                  upstream base/container.h (templates)
//
// The deleting destructors (0x76d490, 0x76d578, 0x773cf8) are compiler-generated and skipped.

#include <cstdint>

#include "base/container.h"
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_render.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_action.h"  // as_standard_member and the declaration of its table's set_raw_capacity
#include "vendor-gameswf/gameswf_dh2_hash.hpp"  // dh2_hash_access::set_raw_capacity, the shared rehash body
#include "gameswf/gameswf_root.h"
#include "vendor-gameswf/as_stage.hpp"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"
#include "vendor-gameswf/glyph_provider.hpp"
#include "vendor-gameswf/glyph_texture_cache.hpp"
#include "vendor-gameswf/player_context.hpp"
#include "vendor-gameswf/ref_counted.hpp"  // gameswf::free_internal
#include "vendor-gameswf/render_cache.hpp"

namespace gameswf {

// ---------------------------------------------------------------------------------------------------------------
// gameswf::as_stage
// ---------------------------------------------------------------------------------------------------------------


// 0x76c728 gameswf::as_stage::is(int) const
// Returns true for class id 0 (AS_OBJECT, the base id) and for AS_STAGE (21).
bool as_stage::is(int class_id) const {
    return class_id == AS_STAGE || class_id == AS_OBJECT;
}

// 0x76ccbc gameswf::as_stage::~as_stage()   [D1, complete-object destructor]
// The binary stores the as_stage vtable and then calls gameswf::as_object::~as_object. C++ runs the base
// destructor after this body and sets the vptr itself, so the body is empty.
as_stage::~as_stage() {
}

// 0x76d490 gameswf::as_stage::~as_stage()   [D0, deleting destructor]: not rebuilt.
// Compiler-generated: runs D1, then operator delete (LC_API_FREE_0 in the binary). C++ delete produces it.

// 0x76d724 gameswf::as_stage::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
// The names "width" and "height" (compared ignoring case, width first) answer with the root's movie size: the player's
// root (player +0x48/+0x4c through the weak pointer, as player::get_root) and its get_movie_width (vtable +0x50) or
// get_movie_height (+0x54), as a number. Any other name returns 0 and leaves the value alone. The player is read
// through the weak pointer without a null test, and so is the root: a dead player or a missing root crashes there too.
bool as_stage::get_member(const tu_stringi& name, as_value* val) {
    const char* s = name.c_str();
    if (tu_string::stricmp(s, "width") == 0) {
        val->set_double(static_cast<double>(get_player()->get_root()->get_movie_width()));
        return true;
    }
    if (tu_string::stricmp(s, "height") == 0) {
        val->set_double(static_cast<double>(get_player()->get_root()->get_movie_height()));
        return true;
    }
    return false;
}

// 0x76f018 gameswf::as_stage::as_stage(gameswf::player*)
// Runs the as_object constructor, sets the vptr, then sets the members "width" and "height" to the number 1.
// The binary builds each value in a temporary as_value (type 2, number 1.0) and drops its references after the
// call. This body uses one value for both calls, which has the same effect.
as_stage::as_stage(player* p) : as_object(p) {
    as_value one;
    one.set_double(1.0);
    as_object::set_member(tu_stringi("width"), one);
    as_object::set_member(tu_stringi("height"), one);
}


// ---------------------------------------------------------------------------------------------------------------
// gameswf::player_context
// ---------------------------------------------------------------------------------------------------------------

// 0x76ce38 gameswf::player_context::player_context()   [C1]
// 0x76ce90 gameswf::player_context::player_context()   [C2]
// The binary runs the ref_counted constructor, then zeroes +0x0c, +0x10, +0x14 (array data), +0x18 (size),
// +0x1c (buffer size), +0x20 (the array's borrowed byte), +0x24 and +0x28, and stores the vptr. The member
// initializers in the header do the same.
player_context::player_context() {
}

// 0x76cee8 gameswf::player_context::~player_context()   [D2, base-object destructor]
// 0x76d4cc gameswf::player_context::~player_context()   [D1, complete-object destructor]
// Same code for both. The glyph provider at +0x0c: ~glyph_provider, then free. The bitmap glyph provider at +0x10 goes
// through destruct<bitmap_glyph_provider> (0x76c9ac). Then the array of players is emptied and its buffer released
// (the binary's loop that zeroes the elements from a negative size is the array destructor's own; the size is never
// negative here), which the member destructor does after this body.
player_context::~player_context() {
    if (m_glyph_provider) {
        m_glyph_provider->~glyph_provider();
        free_internal(m_glyph_provider, 0);
    }
    if (m_bitmap_glyph_provider) {
        destruct<bitmap_glyph_provider>(m_bitmap_glyph_provider);
    }
}

// 0x76c9ac gameswf::destruct<gameswf::bitmap_glyph_provider>(gameswf::bitmap_glyph_provider const*)
// Null check, then the complete-object destructor through vtable slot 0, then free_internal (the deleting destructor is
// slot 1, so this is not a double free).
template <>
void destruct<bitmap_glyph_provider>(const bitmap_glyph_provider* object) {
    if (object) {
        object->~bitmap_glyph_provider();
        free_internal(const_cast<bitmap_glyph_provider*>(object), 0);
    }
}

// 0x76d578 gameswf::player_context::~player_context()   [D0, deleting destructor]: not rebuilt.
// Compiler-generated: runs D1, then operator delete (LC_API_FREE_0 in the binary).

// ---------------------------------------------------------------------------------------------------------------
// hash and string_hash templates (upstream base/container.h)
// ---------------------------------------------------------------------------------------------------------------

// 0x76d9d0 gameswf::string_hash<gameswf::tu_loadlib*>::~string_hash()
// Upstream: the implicit destructor of string_hash<U> runs hash::~hash(), which calls clear() (container.h).
// The binary calls hash<tu_string, tu_loadlib*, string_hash_functor<tu_string>>::clear directly, which is the
// same code after inlining. No DH2 body. Ledger row: upstream.

// 0x76dba8 gameswf::stringi_hash<gameswf::as_standard_member>::~stringi_hash()
// Upstream: same as string_hash above, with stringi_hash<U> and clear(). No DH2 body. Ledger row: upstream.

// 0x76dbd0 gameswf::hash<gameswf::tu_stringi, gameswf::as_standard_member, gameswf::stringi_hash_functor<gameswf::tu_stringi>>::set_raw_capacity(int)
// The binary's rehash differs from the upstream generic member: the table size is the power of two 1 << (int)(logf(n - 1) / ln 2 + 1.0) (ln 2 the
// float 0x3F317218) with a minimum of 4 (upstream 16), the table comes from malloc_internal (32 * size + 8 bytes on ARM: 32-byte entries, next
// at +0, hash at +4, the tu_stringi key at +8, the value at +0x1c), and each moved entry's key heap text is released. It is the shared body,
// dh2_hash_access::set_raw_capacity (gameswf_dh2_hash.hpp). Declared in gameswf_action.h.
// The specialization is of the global ::hash, so it is defined outside namespace gameswf (clang requires the enclosing scope).
}  // namespace gameswf
template <>
void ::hash<tu_stringi, gameswf::as_standard_member, stringi_hash_functor<tu_stringi> >::set_raw_capacity(int new_size) {
    dh2_hash_access::set_raw_capacity(*this, new_size);
}
namespace gameswf {

// ---------------------------------------------------------------------------------------------------------------
// gameswf::render_cache
// ---------------------------------------------------------------------------------------------------------------

// 0x7738a4 gameswf::render_cache::is_valid(gameswf::character*)
// The character's player (as_object::m_player, +0x2c/+0x30) gives the context (player +0xac). The character's world
// colour transform and matrix are fetched and dropped (the calls refresh them). The first clock is the glyph
// provider's glyph texture cache (glyph provider +0x28, then its m_last_clock at +0x08, two words), absent when the
// provider has no cache; the second is the bitmap glyph provider's texture cache (+0x0c, clock at +0x08), absent
// likewise. The comparison and the stores are dh2::render_cache_clocks_valid (render_cache_clocks.hpp). The provider
// pointers of the context are not tested for null, as in the binary.
bool render_cache::is_valid(character* ch) {
    player_context* context = ch->get_player()->m_context;
    ch->get_world_cxform();
    ch->get_world_matrix();

    std::int32_t texture_words[2];
    const std::int32_t* texture_clock = nullptr;
    if (glyph_texture_cache* glyphs = context->m_glyph_provider->m_texture_cache) {
        const std::int64_t clock = glyphs->m_last_clock;
        texture_words[0] = static_cast<std::int32_t>(static_cast<std::uint32_t>(static_cast<std::uint64_t>(clock)));
        texture_words[1] = static_cast<std::int32_t>(static_cast<std::uint32_t>(static_cast<std::uint64_t>(clock) >> 32));
        texture_clock = texture_words;
    }

    std::int32_t bitmap_words[2];
    const std::int32_t* bitmap_clock = nullptr;
    if (texture_cache* bitmaps = context->m_bitmap_glyph_provider->m_texture_cache) {
        const std::int64_t clock = bitmaps->m_last_clock;
        bitmap_words[0] = static_cast<std::int32_t>(static_cast<std::uint32_t>(static_cast<std::uint64_t>(clock)));
        bitmap_words[1] = static_cast<std::int32_t>(static_cast<std::uint32_t>(static_cast<std::uint64_t>(clock) >> 32));
        bitmap_clock = bitmap_words;
    }

    return dh2::render_cache_clocks_valid(m_texture_clock, m_bitmap_clock, texture_clock, bitmap_clock);
}

// 0x78ba28 gameswf::render_cache::~render_cache()
// The binary releases the four arrays in reverse order (indices, uvs, vertices, entries): each has its elements
// zeroed when the size is negative, the size set to zero, and the buffer freed unless it is borrowed. That is the
// array destructor, which the member destructors run after this empty body in the same order.
render_cache::~render_cache() {
}

// ---------------------------------------------------------------------------------------------------------------
// gameswf::render::bogus_bi and the render factories
// ---------------------------------------------------------------------------------------------------------------

namespace render {

// 0x773974 gameswf::render::bogus_bi::~bogus_bi()   [D1, complete-object destructor]
// The binary stores a vtable and calls gameswf::ref_counted::~ref_counted. C++ does the same through the base
// destructors, so the body is empty.
bogus_bi::~bogus_bi() {
}

// 0x773cf8 gameswf::render::bogus_bi::~bogus_bi()   [D0, deleting destructor]: not rebuilt.
// Compiler-generated: runs D1, then operator delete (LC_API_FREE_0 in the binary).

// 0x773c2c gameswf::render::create_bitmap_info_empty()
// Replaces the upstream definition (gameswf_render.cpp, #if 0). With a render handler it asks the handler for a
// 2 x 2 alpha bitmap (virtual slot +0x0c, create_bitmap_info_alpha) whose data is the int 255, so the bytes are
// ff 00 00 00 on a little-endian target. Without a handler it returns a new bogus_bi. The binary uses its own
// operator new with a memory hint; a plain new gives the same object.
bitmap_info* create_bitmap_info_empty() {
    int pixel = 255;
    if (render_handler* handler = get_render_handler()) {
        return handler->create_bitmap_info_alpha(2, 2, reinterpret_cast<unsigned char*>(&pixel));
    }
    return new bogus_bi;
}

// 0x7739dc gameswf::render::create_bitmap_info_native(int, int, gameswf::membuf const*)
// Forwards its three arguments to the handler's virtual slot +0x1c (create_bitmap_info_native). Without a
// handler it returns a new bogus_bi.
bitmap_info* create_bitmap_info_native(int a1, int a2, const membuf* a3) {
    if (render_handler* handler = get_render_handler()) {
        return handler->create_bitmap_info_native(a1, a2, a3);
    }
    return new bogus_bi;
}

// 0x773a5c gameswf::render::create_bitmap_info_texture(glitch::video::ITexture*)
// Forwards the texture to the handler's virtual slot +0x18 (create_bitmap_info_texture). Without a handler it
// returns a new bogus_bi.
bitmap_info* create_bitmap_info_texture(glitch::video::ITexture* texture) {
    if (render_handler* handler = get_render_handler()) {
        return handler->create_bitmap_info_texture(texture);
    }
    return new bogus_bi;
}

}  // namespace render

}  // namespace gameswf
