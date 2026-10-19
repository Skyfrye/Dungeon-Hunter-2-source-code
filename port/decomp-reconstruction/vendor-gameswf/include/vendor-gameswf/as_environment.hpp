// gameswf::as_environment as the DH2 binary has it (Gameloft).
//
// The DH2 layout is declared once, in the upstream header gameswf/gameswf_environment.h, as a DH2 change to
// the r1714 struct (value stack as a plain array, no AVM2 scope stack, smart_ptr target, weak_ptr player).
// This header only pulls it in for the batch sources that include it by this name.
//
// Layout, 108 bytes on 32-bit (host pointers are 8 bytes; the offsets are comments only):
//   +0x00  m_stack            array<as_value>, 16 bytes (the array grew a borrowed byte at +0x0c)
//   +0x10  m_global_register  as_value[4], 12 bytes each
//   +0x40  m_local_register   array<as_value>
//   +0x50  m_target           smart_ptr<as_object>
//   +0x54  m_local_frames     array<frame_slot>, frame_slot is 32 bytes (a 20-byte tu_string and an as_value)
//   +0x64  m_player           weak_ptr<player>: proxy +0x64, pointer +0x68
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack3-a95b99-0.cpp (pop, get_player), fddef6-6 and others.

#pragma once

#include "gameswf/gameswf_environment.h"
