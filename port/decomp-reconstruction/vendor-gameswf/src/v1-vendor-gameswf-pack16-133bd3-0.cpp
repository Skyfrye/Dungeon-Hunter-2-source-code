// Batch v1-vendor-gameswf-pack16-133bd3-0 (vendor-gameswf, gameswf r1714 with Gameloft changes).
//
// Defined here:
//   gameswf::profiler::set_enabled, begin_event, end_event, dump (include/vendor-gameswf/profiler.hpp).
//   The binary bodies are bare `bx lr`.
//   gameswf::metadata_info::read (empty; upstream body is assert(0 && "todo"), wrapped in #if 0 in gameswf_abc.cpp)
//   gameswf::abc_def::find_instance (DH2 addition, declared in gameswf_abc.h with a // DH2: comment)
//
// Layouts (gameswf_abc.h, gameswf_avm2.h): abc_def 0xcc bytes (twelve 16-byte arrays from +0x0c), instance_info 0x40,
// class_info and script_info 0x20 (no weak_ptr<abc_def>), metadata_info 12.
//
// Upstream, with no body here (the binary matches the r1714 definition or is compiler-generated; with the arrays at 16 bytes
// the r1714 abc_def constructor, which has an empty body, zeroes exactly what the binary's constructor zeroes):
//   0x7b8e04, 0x7b8efc  abc_def::abc_def(player*) C1 and C2 (gameswf_abc.cpp)
//   0x7b7bf0  zlib_adapter::make_inflater      (base/zlib_adapter.cpp, global namespace in upstream)
//   0x7b91fc  metadata_info::~metadata_info()  D1, compiler-generated (no user dtor in r1714)
//   0x7b931c  class_info::~class_info()        D1, compiler-generated: the trait array, then ref_counted
//   0x7b94c4, 0x7b99ec  abc_def::~abc_def()    D1 and D2 (gameswf_abc.cpp, empty user dtor; the twelve arrays are released in reverse order)
//   0x7b92c8  script_info::~script_info()      D1, compiler-generated (no user dtor in r1714)
//   0x7b98d4  array<int>::~array()             template instance (base/container.h, clear() -> resize(0))
//   0x7b7fc0  abc_def::get_class_constructor   (gameswf_abc.cpp, DH2 edit: goes through find_instance)
//
// Skipped (compiler-generated deleting destructors, D1 then operator delete / LC_API_FREE_0):
//   0x7b9230 metadata_info D0, 0x7b96f0 abc_def D0, 0x7b926c class_info D0, 0x7b9370 script_info D0.

#include "vendor-gameswf/profiler.hpp"

#include <cstdint>

#include "gameswf/gameswf_abc.h"

namespace gameswf {

// 0x7b793c gameswf::profiler::set_enabled(bool)
// Binary: bx lr. The argument is not read.
void profiler::set_enabled(bool enabled) {
	(void)enabled;
}

// 0x7b7940 gameswf::profiler::begin_event(char const*)
// Binary: bx lr. The name is not read.
void profiler::begin_event(const char* name) {
	(void)name;
}

// 0x7b7944 gameswf::profiler::end_event()
// Binary: bx lr.
void profiler::end_event() {
}

// 0x7b7948 gameswf::profiler::dump()
// Binary: bx lr. Nothing is written.
void profiler::dump() {
}


// 0x7b7fb0 gameswf::metadata_info::read(gameswf::stream*, gameswf::abc_def*)
// Binary: bx lr. The DH2 body does nothing; the r1714 body asserts "todo".
void metadata_info::read(stream* in, abc_def* abc) {
	(void)in;
	(void)abc;
}

// 0x7b7fb4 gameswf::abc_def::find_instance(gameswf::tu_string const&) const
// Binary (3 instructions): R3 = [this+0x9c] (the m_instance buffer), R0 = [R3], return R0. The name argument is not read and
// the table is not searched: the result is the first element of m_instance, whatever the name (get_class_constructor reads
// m_iinit, +0x2c, of the result). The binary has no size check.
instance_info* abc_def::find_instance(const tu_string& name) const {
	(void)name;
	return m_instance[0].get();
}

}  // namespace gameswf
