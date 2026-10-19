// DH2 (batch v1-vendor-gameswf-pack14-1a21ee-0): the RenderFX search index table, hash<tu_string,
// array<RenderFX::SearchIndex::Entry>*, string_hash_functor<tu_string>>. The value is a pointer and the key is a
// tu_string, so the body needs only the forward declaration of the entry type. Body:
// vendor-gameswf/src/v1-vendor-gameswf-pack14-1a21ee-0.cpp.
//
// RenderFX is a class in the game headers (game/include/dh2/RenderFX.hpp). A class and a namespace mangle the same
// way (N8RenderFX11SearchIndex5EntryE), so the library units that need only the name declare the nesting as a
// namespace here. Do not include this header in a translation unit that also includes dh2/RenderFX.hpp; once that
// header declares RenderFX::SearchIndex::Entry, the specialization declaration below moves there.
#pragma once

#include "base/container.h"  // hash<>, tu_string, string_hash_functor<> (global)

namespace RenderFX {
namespace SearchIndex {
struct Entry;
}  // namespace SearchIndex
}  // namespace RenderFX

// 0x7aa8f0 gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >::set_raw_capacity(int)
template <>
void hash<tu_string, array<RenderFX::SearchIndex::Entry>*, string_hash_functor<tu_string> >::set_raw_capacity(int new_size);
