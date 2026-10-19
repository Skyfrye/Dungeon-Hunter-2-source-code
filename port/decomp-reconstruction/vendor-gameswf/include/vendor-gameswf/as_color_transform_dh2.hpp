// DH2 table type for gameswf::as_color_transform (Gameloft build). Batch v1-vendor-gameswf-pack22-8e8f27-0.
//
// The member enum is file-local in upstream gameswf_as_classes/as_color_transform.cpp (line 11). The binary's
// stringi table of member names, hash<tu_stringi, as_color_transform_member, stringi_hash_functor<tu_stringi>>, needs
// the type at namespace scope, so it is declared here with the same enumerators. Values are copied from upstream and
// are not checked against the binary by this header.
//
// Do not include this header in the same translation unit as upstream as_color_transform.cpp: that file defines the
// same enum, and the two definitions would clash.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack22-8e8f27-0.cpp.

#pragma once

#include "base/container.h"  // hash<>, stringi_hash_functor<>, tu_stringi (global in upstream)

namespace gameswf {

// DH2: upstream as_color_transform.cpp:11 (file-local there).
enum as_color_transform_member {
	redMultiplier = 1,
	greenMultiplier,
	blueMultiplier,
	alphaMultiplier,
	redOffset,
	greenOffset,
	blueOffset,
	alphaOffset,
	rgb,
	invalidMember,
	AS_COLOR_TRANSFORM_MEMBER_COUNT,
};

// DH2: 0x7da144 gameswf::get_color_transform_member(gameswf::tu_stringi const&). Local (static) in the binary; declared
// external here so the member table can be tested. Returns invalidMember for an unknown name (case-insensitive match).
// Body: vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-7.cpp.
as_color_transform_member get_color_transform_member(const ::tu_stringi& name);

}  // namespace gameswf

// DH2: 0x7d9f98 gameswf::hash<gameswf::tu_stringi, gameswf::as_color_transform_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
// Body: vendor-gameswf/src/v1-vendor-gameswf-pack22-8e8f27-0.cpp. Every translation unit that adds to this table must see
// this declaration before the first use, or it instantiates the upstream generic member instead.
template <>
void hash<tu_stringi, gameswf::as_color_transform_member, stringi_hash_functor<tu_stringi> >::set_raw_capacity(int new_size);
