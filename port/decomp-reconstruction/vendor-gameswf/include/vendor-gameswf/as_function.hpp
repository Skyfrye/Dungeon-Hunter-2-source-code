// gameswf::as_function as the DH2 binary has it (Gameloft additions to the upstream struct).
//
// The DH2 members are declared once, in the upstream header gameswf/gameswf_function.h, as DH2 changes to the r1714
// struct: the "prototype" object (m_prototype, binary +0x38), the _typeof, clear_refs, get_member, set_member and
// this_alive overrides, and a destructor that releases the prototype. This header only pulls that one in for the
// batch sources that include it by this name.
//
// The binary's offsets (+0x38 for m_prototype, and +0x2c..+0x34 used by this_alive) follow sizeof(as_object) = 0x38.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack17-c88d12-0.cpp.

#pragma once

#include "gameswf/gameswf_function.h"
