// DH2 explicit specializations of hash<>::set_raw_capacity for the two glyph tables of the bitmap font code
// (binary 0x7c56ec and 0x7c5e58). Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack19-4d4603-0.cpp.
//
// Every translation unit that adds to these tables must see the declarations first. Otherwise it instantiates
// upstream's generic member (base/container.h), whose minimum table is 16 buckets, where the DH2 minimum is 4.
// glyph_entity and bitmap_font_entity are named only: the tables hold pointers, and the body releases a smart_ptr
// of bitmap_font_entity, which needs that class complete. The body is in the .cpp, which includes its definition.
//
// The texture_cache::key table (0x7c5020) is declared in vendor-gameswf/texture_cache.hpp, because its key type must
// be complete first.

#ifndef VENDOR_GAMESWF_BITMAP_HASH_DH2_HPP
#define VENDOR_GAMESWF_BITMAP_HASH_DH2_HPP

#include "base/container.h"  // hash<>, fixed_size_hash<>, stringi_hash_functor<>, tu_stringi (global in upstream)
#include "base/smart_ptr.h"  // smart_ptr<T> (global in upstream)

namespace gameswf {

struct glyph_entity;        // vendor-gameswf/glyph_provider.hpp
struct bitmap_font_entity;  // vendor-gameswf/bitmap_glyph_provider.hpp

}  // namespace gameswf

// 0x7c56ec gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
template <>
void hash<int, gameswf::glyph_entity*, fixed_size_hash<int> >::set_raw_capacity(int new_size);

// 0x7c5e58 gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
template <>
void hash<tu_stringi, smart_ptr<gameswf::bitmap_font_entity>, stringi_hash_functor<tu_stringi> >::set_raw_capacity(
    int new_size);

#endif  // VENDOR_GAMESWF_BITMAP_HASH_DH2_HPP
