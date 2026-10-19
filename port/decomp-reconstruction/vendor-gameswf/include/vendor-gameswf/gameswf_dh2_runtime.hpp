// gameswf DH2 runtime helpers: Gameloft code with no counterpart in upstream r1714.
//
// Declarations only. Bodies: vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-1.cpp.
// The allocator (malloc_internal, free_internal) is in gameswf_alloc.hpp, and destruct<T> for
// ref_counted is declared in ref_counted.hpp; both are included here and not redeclared.
//
// Names follow the binary's demangled symbols. Base-library types are global in upstream
// (tu_string, hash, fixed_size_hash, image::rgb, jpeg::input); the binary puts them in
// namespace gameswf (gameswf::tu_string, gameswf::hash, gameswf::image_rgb). Upstream names are used.
//
// This header does not include gameswf.h or gameswf_movie_def.h, so that tests which link only the container
// code can use it. The types needed here are forward declared; the loader_function typedef is the one in
// gameswf_movie_def.h, repeated verbatim.
#pragma once

#include "base/container.h"                  // hash<>, fixed_size_hash<> (global in upstream)
#include "vendor-gameswf/gameswf_alloc.hpp"  // gameswf::malloc_internal, gameswf::free_internal
#include "vendor-gameswf/ref_counted.hpp"    // gameswf::ref_counted, gameswf::destruct<T> declaration

namespace glitch {
namespace video {
class ITexture;  // glitch-video/include/glitch-video/texture.hpp
}  // namespace video
}  // namespace glitch

namespace gameswf {

struct bitmap_character_def;
struct movie_definition_sub;
struct stream;

// Same as gameswf_movie_def.h:406 (the loader table's element type).
typedef void (*loader_function)(stream* input, int tag_type, movie_definition_sub* m);

// DH2: verbose flag for the display-list log (binary: gameswf::s_verbose_dlist, one byte in .bss).
extern bool s_verbose_dlist;
bool get_verbose_dlist();                // 0x759b84
void set_verbose_dlist(bool verbose);    // 0x759be4

// DH2: host texture loader. Binary: gameswf::s_texture_loader_callback, one word in .bss.
typedef glitch::video::ITexture* (*texture_loader_callback)(const char*, int, int);
extern texture_loader_callback s_texture_loader_callback;
void register_texture_loader_callback(texture_loader_callback callback);  // 0x759cdc

// DH2: called for each exported bitmap character (0x759cfc). The third argument is not read by the binary.
// Declared here; defined in the batch .cpp.
void substitute_bitmap_character(::tu_string& name, bitmap_character_def* ch, movie_definition_sub* m);

// DH2: tag loaders of the DH2 build (void-typed loader table; see the batch notes).
void define_debug_id_loader(stream* in, int tag_type, movie_definition_sub* m);       // 0x759d9c
void define_video_loader(stream* in, int tag_type, movie_definition_sub* m);          // 0x75a4b8
void define_native_image_loader(stream* in, int tag_type, movie_definition_sub* m);   // 0x75fbf8

// DH2: destructp<T>(T const*, unsigned int), 0x75a02c. The generic body is in the batch .cpp.
template <class T>
void destructp(const T* p, unsigned int count);

}  // namespace gameswf

// DH2: the loader hash (tag type -> loader_function), 0x76493c. The DH2 set_raw_capacity keeps the table
// minimum at 4 entries (upstream base/container.h uses 16). This explicit specialization covers that
// instantiation only. It is also declared in upstream gameswf/gameswf_movie_def.h (where loader_function is),
// so any TU that includes that header sees it before the loader table is used.
template <>
void hash<int, gameswf::loader_function, fixed_size_hash<int> >::set_raw_capacity(int new_size);
