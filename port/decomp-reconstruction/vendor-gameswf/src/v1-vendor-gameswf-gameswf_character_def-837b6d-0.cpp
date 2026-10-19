// Batch v1-vendor-gameswf-gameswf_character_def-837b6d-0: gameswf::character_def.
//
// Every function in this batch is upstream gameswf r1714 code. Each body is an
// inline member of gameswf::character_def in
// vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_character.h, or is
// compiler-generated from one of those inline definitions (the three
// destructors). The DH2 binary matches the upstream body in every case, so
// nothing is redefined here: a second definition of an inline member would
// not compile. The ledger rows point at the upstream header.
//
// Layout dependency: the offsets in these bodies (m_id at +0x0c, the two weak
// pointers at +0x10 and +0x18) assume the DH2 gameswf::ref_counted, which is
// not the upstream one (upstream derives from gc_object and weak_pointee_mixin).
// That class is reconstructed in another batch. Until its upstream definition
// is replaced, the upstream character_def layout does not match the binary.

#include "gameswf/gameswf_character.h"

// 0x7599a8 gameswf::character_def::display(gameswf::character*)
//   upstream inline: virtual void display(character* instance_info) {}
//   binary: bx lr

// 0x7599b4 gameswf::character_def::get_bound(gameswf::rect*)
//   upstream inline: virtual void get_bound(rect* bound) { assert(0); }
//   binary: bx lr (assert compiled out in the DH2 build)

// 0x7599b8 gameswf::character_def::output_cached_data(gameswf::tu_file*, gameswf::cache_options const&)
//   upstream inline: virtual void output_cached_data(tu_file* out, const cache_options& options) {}
//   binary: bx lr

// 0x7599bc gameswf::character_def::input_cached_data(gameswf::tu_file*)
//   upstream inline: virtual void input_cached_data(tu_file* in) {}
//   binary: bx lr

// 0x7599c0 gameswf::character_def::csm_textsetting(gameswf::stream*, int)
//   upstream inline: virtual void csm_textsetting(stream* in, int tag_type) { assert(0); }
//   binary: bx lr (assert compiled out in the DH2 build)

// 0x75de78 gameswf::character_def::~character_def()   [D2, base object destructor]
// 0x75e180 gameswf::character_def::~character_def()   [D1, complete object destructor]
// 0x75e214 gameswf::character_def::~character_def()   [D0, deleting destructor]
//   compiler-generated from upstream inline: virtual ~character_def() {}
//   D2 and D1 are the same 136-byte body: the vptr is set to the character_def
//   vtable, then m_player and m_registered_class_constructor release their weak
//   proxies (drop the count and free it at zero), then the vptr is set to the
//   as_object_interface vtable and ref_counted::~ref_counted runs.
//   D0 runs D1 and then calls LC_API_FREE_0 (0x30e2b0), which is operator delete.

// 0x75e354 gameswf::character_def::get_player() const
//   upstream inline: player* get_player() const { return m_player.get_ptr(); }
//   get_ptr() and check_proxy() are inlined in the binary: when m_ptr is set and
//   the weak proxy's m_alive byte is 0, the proxy is dropped and m_proxy and
//   m_ptr are cleared, and NULL is returned.

// 0x75ea44 gameswf::character_def::character_def(gameswf::player*)
//   upstream inline ctor: character_def(player* player) : m_id(-1), m_player(player) { assert(player); }
//   binary: ref_counted::ref_counted, m_id = -1, vptr = character_def vtable,
//   m_registered_class_constructor and m_player zeroed, then
//   weak_ptr<player>::operator=(player*) (0x75e9ac, upstream weak_ptr.h).
