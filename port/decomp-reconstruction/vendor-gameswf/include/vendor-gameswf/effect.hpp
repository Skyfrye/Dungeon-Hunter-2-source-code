// gameswf::effect (Gameloft, not in gameswf r1714): the blend mode and filter list of a placed character.
//
// A PlaceObject tag carries a blend-mode byte and an optional filter list. The DH2 build keeps both in one
// small value, which place_object_2::read fills on the stack (read_filter_list, 0x758ca8) and which
// display_list::add_display_object, move_display_object and replace_display_object pass by pointer
// (a null pointer means effect::identity). character::set_effect (0x755cf8) copies it into the
// character's custom block, which holds one at +0x38.
//
// Layout, 20 bytes, no vptr (32-bit offsets in comments):
//   +0x00 int           m_blend_mode   place_object_2::read stores the blend-mode byte here
//   +0x04 array<filter> m_filters      buffer +0x04, size +0x08, capacity +0x0c, borrowed flag +0x10
//
// effect::identity is the shared empty effect that a character points at until set_effect is called.
// It is built by the static initialiser of gameswf_filters.cpp (0x7570d0): all fields zero, destructor
// registered with atexit.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack1-607ee7-0.cpp (destructor),
// v1-vendor-gameswf-gameswf_character-670fee-0.cpp (identity).

#pragma once

#include "base/container.h"          // array<T>
#include "vendor-gameswf/filter.hpp"  // gameswf::filter (44 bytes)

namespace gameswf {

struct effect {
	int m_blend_mode = 0;       // +0x00
	array<filter> m_filters;    // +0x04

	~effect();                  // 0x758af8 (D1, no base, not polymorphic)

	static effect identity;     // 0x9fc4b8 region: the shared empty effect
};

}  // namespace gameswf
