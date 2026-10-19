# vendor-gameswf: GameSWF r1714 in libDungeonHunter2.so

Queue: `queue.csv`, 2370 rows (the integrator moved 101 `RenderFX` rows to `game-ui` and 3 `glitch::` rows to the glitch categories).
The ledger is `ledger.csv` (merged) plus the parts in `ledger.d/`: @@LEDGER_SUMMARY@@

## Core layouts (settled 2026-10-13)

Offsets are the 32-bit offsets of the ARM binary and live in the headers as comments. The host build has 8-byte pointers, so
`sizeof` differs; nothing asserts the 32-bit sizes. The members follow the binary order. Every virtual class was compared slot by
slot with `tools/decomp_vtable.py` (character, as_object, as_function, bitmap_info, render_handler_glitch, bitmap_info_ogl, the
sprite/text/font/button classes, player, root, player_context: 0 differing slots).

### Foundation

| Piece | Binary | Header |
|---|---|---|
| gc layer | none: owners hold `smart_ptr<T>` (intrusive `add_ref`/`drop_ref`), weak holders `weak_ptr<T>` | `include/vendor-gameswf/gc_ptr.hpp`: `gc_ptr<T>` is a `smart_ptr<T>`; `gc_array<gc_ptr<T>>` is `array<gc_ptr<T>>`. `DECLARE_GC_TYPES` is under `#if 0` in `gameswf.h`. |
| `ref_counted` | 12 bytes: vptr, `int m_ref_count` +0x04, `weak_proxy* m_weak_proxy` +0x08. Every counted object lives on the gameswf heap | `include/vendor-gameswf/ref_counted.hpp`: class-level `operator new/delete` (`operator new(size, MemHint 0)`, `free_internal`), so a plain `new T` pairs with `destruct<ref_counted>`. `weak_proxy` is freed with `free_internal` (`base/weak_ptr.h`). |
| `array<T>` | 16 bytes: buffer, size, capacity, `bool m_borrowed` +0x0c (`reserve` does nothing when set) | `base/container.h`. `resize` follows the binary: grow by 1.5x, never shrink (`clear` keeps the buffer; the destructor releases it). `push_back<U>(const U&)` is the binary's member template (copy-constructs in the reserved slot). |
| `tu_string` | 20 bytes: byte +0x00 (0xFF heap, else length+1; inline text up to 14 characters), +0x04 heap length+1, +0x08 capacity, +0x0c heap pointer, +0x10 hash cache (low 24 bits, 0xFFFFFF = not computed; bit 0 of byte +0x13 = interned) | `base/container.h`, `base/container.cpp` (`resize`). Mutators invalidate the cache; `get_hashi` is inline; `is_interned()`/`set_interned()`. |
| allocator | `gameswf::malloc_internal(size, MemHint)`, `realloc_internal`, `free_internal(p, size)`, `operator new(size, MemHint)` | `include/vendor-gameswf/gameswf_alloc.hpp`; `compatibility_include.h` maps `tu_malloc`/`tu_realloc`/`tu_free` to them, so every container block comes from the gameswf heap. |
| hash tables | upstream layout, table minimum 4 entries, power of two from the single-precision `logf` / ln 2 (the float 0x3F317218) | each instantiation is its own binary function: explicit `set_raw_capacity` specializations, all through the shared body `dh2_hash_access::set_raw_capacity` in `include/vendor-gameswf/gameswf_dh2_hash.hpp` (declarations in `gameswf_dh2_hash.hpp`, `gameswf_hash_dh2.hpp`, `permanent_string_cache.hpp`, `render_fx_search_hash.hpp`, `gameswf_action.h`, `texture_cache.hpp`, `filter_engine.hpp`). |
| `tu_file` | open hook `m_open` at +0x04, then read +0x08, write +0x0c, seek +0x10, seek_to_end +0x14, tell +0x18, eof +0x1c, close +0x20, error +0x24 | `base/tu_file.h` (r1714 has no `m_open`). |
| class ids | `AS_GENERIC_CHARACTER` 3, `AS_STAGE` 21, `AS_BITMAP_CHARACTER` 33 added; `AS_LOADVARS` removed | `gameswf/gameswf.h` `as_classes`. |
| sound handler | vtable: +0x00 `create_sound`, +0x04 `load_sound`, +0x08 `append_sound`, +0x0c `play_sound(handle, loops)`, +0x10 `set_volume`, +0x14 `stop_sound`, +0x18 `stop_all_sounds`, +0x1c `delete_sound`, +0x34 `is_open`, +0x38 `pause`, +0x3c `get_position` | `gameswf/gameswf.h` (no `set_max_volume`, no listener argument in `play_sound`). The concrete handler is outside the library. |

### Core classes

- **as_object (0x38):** ref_counted +0x00..+0x0b; `stringi_hash<as_value> m_members` +0x0c; `as_value m_ctor` +0x10; `m_watch` +0x1c; `weak_ptr<as_object> m_this_ptr` +0x20; `smart_ptr<as_object> m_proto` +0x28; `weak_ptr<player> m_player` +0x2c; `int m_alive_stamp` +0x34. 25 virtual slots in binary order (`_typeof` is the DH2 name of `type_of`). `gameswf_object.h`.
- **character (0xa0):** `m_id` +0x38; `weak_ptr<character> m_parent` +0x3c; `const tu_string* m_name` +0x44; `m_local_cxform` +0x48, `m_local_matrix` +0x4c, `m_effect` +0x50 (shared identities by default); `custom* m_custom` +0x54; `cxform m_world_cxform` +0x58; `matrix m_world_matrix` +0x78; `m_ratio` +0x90; `m_depth` +0x94, `m_clip_depth` +0x96; kind byte +0x98; flags +0x99 matrix changed, +0x9a cxform changed, +0x9b visible, +0x9c has mouse handler, +0x9d need advance. 95 virtual slots. `character::custom` (0x6c, created on first use): cxform +0x00, matrix +0x20, effect +0x38, name +0x4c, display callback +0x60/+0x64, scene node +0x68. `drag_state` is 32 bytes. `get_world_matrix()/get_world_cxform()` are non-virtual and return pointers to the caches. `gameswf_character.h`.
- **effect (20) / render_state (60) / filter (44):** `effect.hpp`, `render_state.hpp`, `filter.hpp`.
- **as_environment (0x6c):** stack `array<as_value>` +0x00, 4 global registers +0x10, local registers +0x40, `smart_ptr<as_object> m_target` +0x50, `array<frame_slot> m_local_frames` +0x54 (32-byte slots), `weak_ptr<player>` +0x64. No vm_stack base, no AVM2 scope stack; `get_variable` takes an optional `int* with_index`. `gameswf_environment.h/.cpp`.
- **as_function (0x3c):** `smart_ptr<as_object> m_prototype` +0x38; `as_c_function` 0x40 (`m_func` +0x3c); `as_s_function` 0x7c; `as_3_function` 0xbc. `gameswf_function.h`, `gameswf_avm2.h`.
- **as_value (12):** flags +0, type +1 (0 undefined, 1 bool, 2 number, 3 borrowed string, 4 owned string, 5 object, 6 property), payload +4, owner +8. `include/vendor-gameswf/as_value.hpp`.
- **Action runtime (ActionScript):** `listener` 16 bytes (bare `array<weak_ptr<as_object>>`), `counted_buffer` 0x24, `action_buffer` 12, `do_action` 16, `abc_def` 0xcc, `instance_info` 0x40, `class_info` 0x20, `script_info` 0x20, `traits_info` 0x34; `as_array` 0x5c, `as_listener` 0x58, `as_key` 0x68, `as_mcloader` 0x58, `as_date` 0x40, `as_matrix` 0x50, `as_color` 0x60, `as_color_transform` 0x58, `as_transform` 0x40, `as_timer` 0x68, `as_sound` 0x48 (`m_id` +0x38 is the sound handler id), `as_point` 0x40; `as_event`, `as_mouse_event`, `as_textformat`, `as_selection`, `as_netconnection`, `as_stage` 0x38. Details in the headers of `include/vendor-gameswf/` and `upstream/.../gameswf_as_classes/`.
- **player (0xe0), root (0xd0), player_context (0x2c):** `gameswf_player.h`, `include/vendor-gameswf/gameswf_root.hpp`, `player_context.hpp`. The player holds `m_heap` (every live as_object), the permanent string cache (+0x2c), `m_global` +0x34, `m_stage` +0x38, `m_start_ticks` +0x40, the context +0xac. The root keeps the viewport, the drag state (+0x58, 32 bytes) and two listener blocks.
- **Sprite and text classes:** `sprite_instance` 0x100 (the character base, `init_actions` +0xdc, `smart_ptr<movie_definition_sub> m_def` +0xa0, `display_list` +0xa8 of 20 bytes: the character array and the name table); `generic_character` 0xa4; `edit_text_character` 0x198, `edit_text_character_def` 0xa0; `font` 0x88; `button_character_definition` 0x48, `button_character_instance` 0xc0; `bitmap_character` 0x34. `gameswf_sprite.h`, `gameswf_dlist.h`, `gameswf_text.h`, `gameswf_font.h`, `gameswf_button.h`, `gameswf_impl.h`.
- **Movie definitions, styles, shapes:** `movie_definition_sub` 0x44, `movie_def_impl` 0x128, `import_info` 44, `fill_style` 84, `line_style` 108, `gradient_record` 5, `shape_character_def` 0x88, `morph2_character_def` 0xa4 (shapes at +0x88/+0x8c, mesh +0xa0), `mesh` 0x30, `mesh_set` 0x14, `line_strip` 0x14. `gameswf_movie_def.h`, `gameswf_styles.h`, `gameswf_shape.h`, `gameswf_morph2.h`. `TU_USES_FLOAT_AS_COORDINATE_COMPONENT` is 1.
- **Render handler:** `render_handler` carries the 47-slot DH2 vtable (adds the bitmap factories for textures, native data and render targets, `set_blend_mode`, `set_target`, `clear_frame_buffer`, `read_frame_buffer`, `set_wire_frame`, `set_buffer_capacity`, `set_context`, `set_render_cache`, `draw`, `flush`, `open`, `reset`, orientation and display-callback pairs); `create_bitmap_info_rgb/rgba` take `gameswf::image_rgb*/image_rgba*`. `bitmap_info` has the 16-slot DH2 vtable; `lock()` returns the pixel pointer. `render_handler_glitch` (0x494) and `bitmap_info_ogl` are global-namespace classes. `gameswf::s_render_handler` is a global.
- **Texture and filter caches:** `texture_cache` 0x40 (arrays of 16 bytes, hash +0x30, texture +0x34, bpp +0x38, locked pointer +0x3c; the constructor takes its texture from the current render handler); `filter_texture_cache` derives from it without members; `glyph_texture_cache` adds the pixel array +0x40 and the owner +0x50; `filter_engine : filter_texture_cache` (0x68): `m_filtered_characters` +0x40, `m_pixels` +0x50, `hash<character*, filter_cache_infos> m_cache` +0x60, `m_current` +0x64; `filter_cache_infos` 28 bytes.
- **scene_node (0x270):** `gameswf_scene_node.hpp`.

## DH2 changes to upstream classes and files

Each change is marked `// DH2:` or sits in an `#if 0 /* DH2: ... */` block that replaces upstream code. The list of changed files is in `upstream/gameswf-r1714/README.md`.
Main groups: `compatibility_include.h`, `base/container.h/.cpp`, `base/weak_ptr.h`, `base/tu_file.h/.cpp`, `base/tu_config.h`; `gameswf/gameswf.h`, `gameswf_object`, `gameswf_character`, `gameswf_environment`, `gameswf_function`, `gameswf_value`, `gameswf_listener`, `gameswf_player`, `gameswf_root`, `gameswf_sprite`, `gameswf_dlist`, `gameswf_text`, `gameswf_font`, `gameswf_button`, `gameswf_impl`, `gameswf_movie_def`, `gameswf_styles`, `gameswf_shape`, `gameswf_morph2`, `gameswf_render`, `gameswf_abc`, `gameswf_avm2`, `gameswf_action`, `gameswf_as_sprite`, `gameswf_tesselate` and the `gameswf_as_classes/` natives.

## Tests

`tests/*_test.cpp` are single translation units, each run with `bash tools/trackb/check_tu.sh --test <test> <sources...>`; the exact line is in each test's header comment. Link-only stand-ins live in `test-support/` (`dh2_test_support.cpp` weak allocator, `dh2_core_stubs.cpp` and `dh2_as_runtime_stubs.cpp` weak aborting stubs, `dh2_texture_stubs.hpp` and `dh2_null_render_handler.hpp` for the texture caches).

## Open questions

@@OPEN_QUESTIONS@@
