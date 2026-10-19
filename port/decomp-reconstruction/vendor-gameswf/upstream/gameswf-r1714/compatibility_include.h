// Dummy header; should get included first into tu-testbed headers.
// This is for manual project-specific configuration.

//
// Some optional general configuration.
//

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

// Choose STL containers, or tu-testbed's simplified work-alikes.
// #define _TU_USE_STL 1

// Memory allocation functions.
// #define tu_malloc(size) ...
// #define tu_realloc(old_ptr, new_size, old_size) ...
// #define tu_free(old_ptr, old_size) ...

// DH2: the Gameloft build allocates every container block (array, hash, tu_string) through
// DH2: gameswf::malloc_internal, realloc_internal and free_internal (0x752b3c, 0x752b4c, 0x752b38),
// DH2: which forward to the core-platform allocator (SwfAlloc, SwfFree) with memory hint 0.
// DH2: gameswf is linked statically into libDungeonHunter2.so, nothing is exported from a DLL. Without this
// DH2: the _WIN32 build marks every exported_module method dllexport and then needs all inline bodies.
#ifndef TU_CONFIG_LINK_STATIC
#define TU_CONFIG_LINK_STATIC 1
#endif

#ifdef __cplusplus
#include "vendor-gameswf/gameswf_alloc.hpp"
#define tu_malloc(size) gameswf::malloc_internal((unsigned int) (size), swf::MEM_UNRECOVERED)
#define tu_realloc(old_ptr, new_size, old_size) gameswf::realloc_internal((old_ptr), (unsigned int) (new_size), (unsigned int) (old_size), swf::MEM_UNRECOVERED)
#define tu_free(old_ptr, old_size) gameswf::free_internal((old_ptr), (unsigned int) (old_size))
#endif

// @@ TODO operator new stub

// Fatal error handler.
// #define tu_error_exit(error_code, error_message) ...


//
// Some optional gameswf configuration.
//

// #define GAMESWF_FONT_NOMINAL_GLYPH_SIZE_DEFAULT 32

// Define this to avoid using mesh shapes to render large text
// #define GAMESWF_ALWAYS_USE_TEXTURES_FOR_TEXT_WHEN_POSSIBLE 1

// For disabling zlib and jpeg functionality; you may be able to use
// this in final builds of gameswf, if you preprocess all your SWF
// content to make unpacked formats.
// #define TU_CONFIG_LINK_TO_JPEGLIB 0
// #define TU_CONFIG_LINK_TO_ZLIB 0

// For enabling XML/XMLSocket functionality in gameswf, using GNOME
// libxml2
// #define HAVE_LIBXML 1

// #define TU_CONFIG_LINK_TO_LIBPNG 0
