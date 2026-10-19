// Batch v1-vendor-gameswf-pack8-c43a3a-0 (vendor-gameswf, DH2 gameswf r1714 with Gameloft changes).
//
// Nineteen binary functions in seven owners. Most rows are upstream-identical and have no body here: their
// ledger rows point at the upstream source (see ledger.d/v1-vendor-gameswf-pack8-c43a3a-0.csv):
//   start_sound_tag D2 (implicit), stream::read_sint, gradient_record and line_style constructors,
//   line_style D2 (inline in gameswf_styles.h), tesselate::compare_segment_x and compare_segment_y.
// Deleting destructors (D0) are compiler-generated and skipped.
//
// Layouts used here (32-bit binary offsets; the DH2 members are declared in the upstream headers with // DH2:):
//   gameswf::stream (gameswf/gameswf_stream.h): +0x00 unk_00 (bool), +0x04 m_input, +0x08 m_current_byte,
//     +0x09 m_unused_bits, +0x0c m_tag_stack (array<int>, 16 bytes), +0x1c unk_1c (array<char>, 16 bytes).
//   sprite_instance::init_actions (gameswf/gameswf_sprite.h): +0x00 m_actions (array<action_buffer*>, 16 bytes),
//     +0x10 m_executed (array<bool>, 16 bytes).

#include "gameswf/gameswf_stream.h"
#include "base/container.h"

namespace gameswf {

// 0x783dd4 gameswf::stream::stream(gameswf::tu_file*, bool)
// 0x783e24 gameswf::stream::stream(gameswf::tu_file*, bool)
// Second copy of the same body (the C1/C2 pair). Binary, in order: +0x00 = flag; +0x04 = input; +0x08 and +0x09 = 0;
// the array<int> at +0x0c zeroed (16 bytes: the byte at +0x18 is the array's m_borrowed, cleared by its constructor); the
// array<char> at +0x1c zeroed (16 bytes, the byte at +0x28 is its m_borrowed) and then reserve(0x100).
stream::stream(tu_file* input, bool flag)
	:
	unk_00(flag),
	m_input(input),
	m_current_byte(0),
	m_unused_bits(0),
	m_tag_stack(),
	unk_1c()
{
	unk_1c.reserve(0x100);  // binary: array<char>::reserve(this + 0x1c, 0x100)
}

// 0x784030 gameswf::stream::~stream()
// 0x7840c8 gameswf::stream::~stream()
// Second copy of the same body. The binary destroys the array<char> at +0x1c first (clear, then reserve(0)) and the
// array<int> at +0x0c second. Both are the implicit member destructors of the declared members, in reverse order.
stream::~stream()
{
}

}  // namespace gameswf

// 0x77e3b8 gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
// The body needs the complete as_function type (gameswf_function.h). Same table rule as the loader hash (gameswf-fddef6-1, 0x76493c):
// minimum 4 entries, power of two from single-precision logf. Values are smart_ptr<as_function>: the binary copies
// each live entry into the new table with add() (a reference is taken), releases the old value pointer with
// ref_counted::drop_ref, and marks the old entry empty without clearing the value word. Free the old table after the move.
#include <cmath>
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_function.h"  // as_function, complete for the smart_ptr values
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_dh2_hash.hpp"  // the declaration of this specialization (link-1)

template <>
void hash<int, smart_ptr<gameswf::as_function>, fixed_size_hash<int> >::set_raw_capacity(int new_size) {
	if (new_size <= 0) {
		// Binary: clear() and return.
		clear();
		return;
	}

	// Binary: 1 << (int)(float)(logf(new_size - 1) / ln 2 + 1.0), ln 2 the float 0x3F317218, then the minimum of 4. For new_size == 1 the
	// log is -inf and the shift amount is 0 on ARM, which the minimum also gives 4.
	int size = 4;
	if (new_size > 1) {
		float q = std::logf(static_cast<float>(new_size - 1)) / 0.693147182464599609375f;  // 0x3F317218 (ln 2), not 0.69315f
		int bits = static_cast<int>(q + 1.0f);
		unsigned int pow2 = (bits >= 0 && bits < 32) ? (1u << bits) : 0u;
		size = static_cast<int>(pow2);
		if (size < 4) {
			size = 4;
		}
	}

	if (m_table != nullptr && size == m_table->m_size_mask + 1) {
		// Binary: the same raw capacity is already in place; no work.
		return;
	}

	hash<int, smart_ptr<gameswf::as_function>, fixed_size_hash<int> > new_hash;
	new_hash.m_table = static_cast<table*>(gameswf::malloc_internal(sizeof(table) + sizeof(entry) * size, swf::MEM_UNRECOVERED));
	new_hash.m_table->m_entry_count = 0;
	new_hash.m_table->m_size_mask = size - 1;
	for (int i = 0; i < size; i++) {
		new_hash.E(i).m_next_in_chain = -2;
	}

	if (m_table != nullptr) {
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry* e = &E(i);
			if (!e->is_empty() && !e->is_tombstone()) {
				new_hash.add(e->first, e->second);  // binary: add() copies the value (takes a reference)
				if (e->second.get_ptr() != nullptr) {
					e->second.get_ptr()->drop_ref();  // binary: ref_counted::drop_ref on the old value pointer
				}
				e->m_next_in_chain = -2;  // binary: the old entry is marked empty; the value word is not cleared
				e->m_hash_value = 0;
			}
		}
		gameswf::free_internal(m_table, static_cast<unsigned int>(sizeof(table) + sizeof(entry) * (m_table->m_size_mask + 1)));
	}

	m_table = new_hash.m_table;
	new_hash.m_table = nullptr;
}

// 0x780ea0 gameswf::sprite_instance::init_actions::~init_actions()
// The binary clears the array<bool> at +0x10 first (size 0, reserve(0)) and the array<action_buffer*> at +0x00
// second. Those are the implicit member destructors in reverse declaration order, so the body is empty. The bytes at
// +0x0c and +0x1c are the m_borrowed members of the two arrays (gameswf_sprite.h: m_actions, m_executed).
#include "gameswf/gameswf_sprite.h"

namespace gameswf {

sprite_instance::init_actions::~init_actions()
{
}

}  // namespace gameswf

// 0x786a38 gameswf::tesselate::curve(float, float, float, float, float, float)
// PARTIAL, body not written. The binary is a subdivision loop with a tolerance test against s_tolerance, ending in a
// call to tesselate::add_line_segment, and it differs from upstream gameswf_tesselate.cpp:521 (the midpoint arithmetic
// and the recursion shape). The Hex-Rays argument types are garbled (six floats passed in r0 to r3 and the stack,
// shown as seven parameters with pointer-typed reads), so the midpoint expressions are not confirmed. Next step:
// read the assembly (tools/decomp_asm.py --address 0x786a38) and fix the argument mapping before writing the loop.

// 0x7873dc gameswf::tesselate::end_shape()
// PARTIAL, body not written. Binary order: output_current_segments(); s_accepter = 0; the s_current_path elements are
// zeroed and the size set to 0; then reserve(0) releases the buffer (upstream gameswf_tesselate.cpp:459 does only the
// clear). output_current_segments and the tesselate state (s_accepter, s_current_path) are file-local statics in
// upstream; their binary symbols are not reconstructed yet.
