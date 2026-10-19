// gameswf::render_state (Gameloft, not in gameswf r1714): what a display callback receives.
//
// character::do_display_callback (0x753f9c) builds one on the stack, filling it from the character, its
// world matrix and its world colour transform, and passes it by reference to the callback stored in the
// character's custom block (custom+0x60) together with the user pointer (custom+0x64). The callback type is
// void (*)(render_state&, void*). The game's HUD and menu code declares such callbacks
// (RenderFX::RegisterDisplayCallback).
//
// Layout, 60 bytes (32-bit offsets in comments):
//   +0x00 character* m_character
//   +0x04 matrix     m_matrix      six floats
//   +0x1c cxform     m_cxform      eight floats (multiply, add per channel)

#pragma once

#include "gameswf/gameswf.h"  // matrix, cxform

namespace gameswf {

struct character;

struct render_state {
	character* m_character = nullptr;   // +0x00
	matrix m_matrix;                    // +0x04
	cxform m_cxform;                    // +0x1c
};

// Signature of character::set_display_callback's callback.
typedef void (*display_callback)(render_state& state, void* user_ptr);

}  // namespace gameswf
