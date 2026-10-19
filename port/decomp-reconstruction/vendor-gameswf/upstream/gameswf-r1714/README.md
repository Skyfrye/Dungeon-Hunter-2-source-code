# GameSWF r1714 (upstream source, subset used by the DH2 build)

Third-party upstream code, not Track A reconstruction.

## Provenance and limits

- Copied as-is (bytes, CRLF kept) from `port/engine-ui/vendor/gameswf1714` (Track A tree). No manifest exists for that tree.
- Track A's pin (`port/engine-ui/gameswf_sources.cmake`) says "official GameSWF r1714, explicit portability/fork patches in reference/gameswf-core". That fork-patch folder is not in the Track A worktree, so this copy cannot be checked against r1714. It may contain unmarked portability edits.
- Binary evidence: the DH2 build does not match this copy in every detail. Its `gameswf::get_gameswf_version` string is `"LINUX"`, where this copy builds `"WIN " __DATE__ " " __TIME__`. 34 base-library functions sit in namespace `gameswf::` in the binary, but are global or in `utf8::` and `image::` here. None of those are changed here.
- Track A overlays (`port/engine-ui/overlays/`) are not included. They are DH2 integration code.

## Selection

- Of the 95 units listed in `gameswf_sources.cmake`, 68 have a compile unit in the DH2 build (`recovered/native/symbols/libDungeonHunter2.so/build-source-filenames.json`). Those 68 are copied, plus the transitive `#include "..."` closure: 170 files, which is the 68 units and 102 headers.
- Not copied (27 units with no compile unit in the DH2 build): `as_class.cpp`, `as_loadvars.cpp`, `as_mouse.cpp`, `as_sharedobject.cpp`, `as_xml.cpp`, `as_xmlsocket.cpp`, `ear_clip_triangulate_sint16.cpp`, `file_util.cpp`, `gameswf_tools.cpp`, `gameswf_video_impl.cpp`, `http_client.cpp`, `http_file_handler.cpp`, `http_helper.cpp`, `http_server.cpp`, `image_filters.cpp`, `logger.cpp`, `net_interface_tcp.cpp`, `png_helper.cpp`, `test_client.cpp`, `triangulate_float.cpp`, `triangulate_sint32.cpp`, `tu_gc_singlethreaded_marksweep.cpp`, `tu_net_file.cpp`, `tu_types.cpp`, `utility.cpp`, `webtweaker.cpp`, `webwidgets.cpp`.
- Gameloft units absent from this tree (not available here): `GameSWFUtils.cpp`, `gameswf_allocator.cpp`, `gameswf_bitmapfont.cpp`, `gameswf_render_handler_glitch.cpp`, `gameswf_scene_node.cpp`, `gameswf_texture_cache.cpp`.

## DH2 changes

Applied in the Track B core-layout pass (2026-10-13). Every change is marked `// DH2:` (or sits in an `#if 0 /* DH2: ... */` block that
replaces upstream code). The list of changed classes, with the settled layouts, is in `../../NOTES.md`. In short:

- `compatibility_include.h` (the upstream hook for project settings): containers allocate through `gameswf::malloc_internal`,
  `realloc_internal` and `free_internal`; `TU_CONFIG_LINK_STATIC` is 1.
- `gameswf/gameswf.h`: `gc_ptr` is a `smart_ptr` (`vendor-gameswf/gc_ptr.hpp`), `ref_counted` is the 12-byte DH2 class, `as_classes` has the DH2
  values, `bitmap_info` and `render_handler` carry the DH2 vtables, `s_render_handler` is a global.
- `base/container.h`, `base/container.cpp`: `array<T>` is 16 bytes (borrowed flag, DH2 growth), `tu_string` is 20 bytes (hash cache, interned bit).
- `base/weak_ptr.h`: the weak proxy is released with `free_internal`.
- `base/tu_file.h/.cpp`: the open hook `m_open` at +0x04; `read_fully`. `base/tu_config.h`: `TU_USES_FLOAT_AS_COORDINATE_COMPONENT` is 1.
- `gameswf/gameswf.h`: `sound_handler` is the DH2 interface (no `set_max_volume`, `play_sound(handle, loops)`), `bitmap_info::lock()` returns the
  pixel pointer, `render_handler::create_bitmap_info_rgb/rgba` take `gameswf::image_rgb*/image_rgba*` (the r1714 `image::` classes are replaced by
  `vendor-gameswf/image_io.hpp` in `gameswf_impl.cpp`, `gameswf_styles.cpp`, `gameswf_environment.cpp`, `gameswf_render.*`).
- `vendor-gameswf/ref_counted.hpp`: every `ref_counted` allocation goes through the gameswf heap (class-level `operator new/delete`).
- `gameswf/gameswf_object.h` (`as_object`, 0x38 bytes), `gameswf_character.h` (`character`, 0xa0 bytes, `character::custom`, `drag_state`),
  `gameswf_environment.h` (`as_environment`, 0x6c bytes), `gameswf_function.h` (`as_function`), `gameswf_morph2.h`, `gameswf_render.h`
  and the headers of the classes listed in the notes (player, root, sprite, text, font, movie definition, styles, shape, listener, abc).

## Unresolved includes (conditional, expected)

- `config.h` (under `HAVE_CONFIG_H`), `gameswf_jit.h` (x86 JIT platform header), `Winsock.h` (Windows).

## Build

Track A builds the subset with: C++17; include directory = this folder (system); definitions `TU_CONFIG_LINK_TO_JPEGLIB=0 TU_CONFIG_LINK_TO_LIBPNG=0 TU_CONFIG_LINK_TO_FREETYPE=0 TU_CONFIG_LINK_TO_THREAD=0`; flags `-w -fno-fast-math -ffp-contract=off` (GCC also `-fpermissive`); zlib (`zlib_adapter.cpp`). The render handler, sound handler and file hooks that the game supplies are not in this folder. Linking the subset needs the DH2 side implementations (for example the glitch render handler, which is not in the tree).

## Host-port changes (Track B, MinGW host build; marked `HOST-PORT:`)

- `base/utility.h`: the `_WIN32` branch's `__PRETTY_FUNCTION__` → `__FUNCDNAME__` alias and the `__asm { int 3 }` assert apply to MSVC only (`_MSC_VER`). MinGW keeps GCC's `__PRETTY_FUNCTION__` and the standard `assert`. No effect on the ARM build the binary came from.
- `base/tu_loadlib.h`: no longer includes `<windows.h>` (forward-declares `struct HINSTANCE__` for `lib_t`). The include leaked `GetClassName`, `GetObject`, `GetMessage`, `SendMessage`, `ERROR`, `IN`, `near`, `far` and other macros into every game translation unit that reached `gameswf_player.h`. `tu_loadlib.cpp` still includes `<windows.h>` itself. No effect on the ARM build.
