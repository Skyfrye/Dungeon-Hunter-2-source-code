// gameswf::inst_info_avm2 and gameswf::arg_format_avm2: the AVM2 disassembler's instruction table entry (gameswf r1714,
// moved here from gameswf_disasm.cpp:33 and :85 because the DH2 build's hash<int, inst_info_avm2> member functions
// (set_raw_capacity 0x7ca120, entry copy 0x7c9cd8, add 0x7c9d8c ...) need the type outside that file).
//
// Layout (32-bit offsets): m_instruction +0x00, m_arg_formats +0x04 (array<arg_format_avm2>, 16 bytes with the array's own
// m_borrowed), so a hash entry is 32 bytes: next in chain +0x00, hash +0x04, key +0x08, value +0x0c .. +0x1f. The binary has
// the destructor (0x7c9bc8) and the assignment (0x7c9b24); both are the implicit ones of the two members.
//
// Bodies: upstream/gameswf-r1714/gameswf/gameswf_disasm.cpp (constructors, process).

#pragma once

#include "base/container.h"
#include "gameswf/gameswf_abc.h"	// abc_def

namespace gameswf {

enum arg_format_avm2
{
	ARG_END=0,
	ARG_MULTINAME,
	ARG_NAMESPACE,
	ARG_BYTE,
	ARG_SHORT,
	ARG_INT,
	ARG_UINT,
	ARG_DOUBLE,
	ARG_STRING,
	ARG_COUNT,
	ARG_CLASSINFO,
	ARG_FUNCTION,
	ARG_EXCEPTION,
	ARG_REGISTER,
	ARG_SLOTINDEX,
	ARG_OFFSET,
	ARG_OFFSETLIST,
};

struct inst_info_avm2
{
	const char*	m_instruction;	// +0x00
	array<arg_format_avm2> m_arg_formats;	// +0x04

	inst_info_avm2(const char* opname);	// gameswf_disasm.cpp
	inst_info_avm2(const char* opname, const arg_format_avm2 arg_format_0, ...);	// DH2: 0x7c9acc, gameswf_disasm.cpp
	int process(const abc_def* def, const uint8 *args);	// DH2: 0x7c8e8c, gameswf_disasm.cpp

	bool has_argument() const { return m_arg_formats.size() != 0;}
};

}  // namespace gameswf

// DH2: 0x7ca120 gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
// Body: vendor-gameswf/src/v1-vendor-gameswf-pack20-97b00f-0.cpp. Every translation unit that adds to this table must see this
// declaration before the first use, or it instantiates the upstream generic member instead.
template <>
void hash<int, gameswf::inst_info_avm2, fixed_size_hash<int> >::set_raw_capacity(int new_size);
