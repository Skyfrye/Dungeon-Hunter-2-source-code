// Batch v1-vendor-gameswf-gameswf_render_handler-1ca9d1-0 (gameswf::render_handler, 9 functions).
//
// gameswf::render_handler is the upstream GameSWF r1714 interface (struct render_handler in
// vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf.h). Two binary functions are the upstream inline
// bodies and are ledgered upstream, not defined here: the destructor D1 and set_cursor. Both are empty
// and both are BX LR in the listing. The deleting destructor D0 is compiler-generated and not rebuilt.
//
// The other six are Gameloft additions with no upstream counterpart. gameswf.h declares them virtual, with
// // DH2: comments, and they are defined below. Each body matches the Hex-Rays pseudocode and the ARM
// listing (tools/decomp_asm.py): empty, except get_orientation, which returns 0 (MOV R0, #0).
//
// Binary vtable offsets (tools/decomp_vtable.py render_handler, measured from the address point, the
// same offsets the calls use): D1 +0x00, D0 +0x04, flush +0x94, set_cursor +0x98, reset +0xa4,
// set_orientation +0xa8, get_orientation +0xac, begin_display_callback +0xb0, end_display_callback +0xb4.
// The binary has 35 entries between +0x08 and flush. The upstream header declares 24 of them, so the host
// offsets of flush and the slots after it are 0x2c lower than the binary's. The other 11 slots are not
// recovered by this batch.
//
// flush is the first non-inline, non-pure virtual of render_handler, so it is the key function: the
// render_handler vtable is emitted in this file. Link this file into any build that derives from
// render_handler.

#include "gameswf/gameswf.h"

namespace gameswf {

// 0x7d3b94 gameswf::render_handler::flush()
// Gameloft addition. Empty in the binary (BX LR). Virtual, vtable +0x94.
void render_handler::flush() {}

// 0x7d3b9c gameswf::render_handler::reset()
// Gameloft addition. Empty (BX LR). Virtual, vtable +0xa4.
void render_handler::reset() {}

// 0x7d3ba0 gameswf::render_handler::set_orientation(gameswf::orientation_mode)
// Gameloft addition. Empty (BX LR): the mode argument in r1 is not read. Virtual, vtable +0xa8.
// orientation_mode is declared in gameswf.h as an opaque enum (DH2). Its enumerators are not recovered.
void render_handler::set_orientation(orientation_mode /* mode */) {}

// 0x7d3ba4 gameswf::render_handler::get_orientation()
// Gameloft addition. MOV R0, #0; BX LR: the base class reports orientation 0. Virtual, vtable +0xac.
// gameswf::root's landscape_orientation (vendor-gameswf/src/v1-vendor-gameswf-gameswf_root-d24935-0.cpp)
// reads it through s_render_handler.
int render_handler::get_orientation() {
    return 0;
}

// 0x7d3bac gameswf::render_handler::begin_display_callback()
// Gameloft addition. Empty (BX LR). Virtual, vtable +0xb0.
void render_handler::begin_display_callback() {}

// 0x7d3bb0 gameswf::render_handler::end_display_callback()
// Gameloft addition. Empty (BX LR). Virtual, vtable +0xb4.
void render_handler::end_display_callback() {}

// 0x7d3b90 gameswf::render_handler::~render_handler()   [D1, complete destructor]: upstream, not defined here.
// gameswf.h defines it inline (virtual ~render_handler() {}). The listing is BX LR, the same empty body.
//
// 0x7d3b98 gameswf::render_handler::set_cursor(gameswf::render_handler::cursor_type): upstream, not defined here.
// gameswf.h defines it inline ({}). The listing is BX LR. Hex-Rays dropped the cursor parameter.
//
// 0x7d4074 gameswf::render_handler::~render_handler()   [D0, deleting destructor]: not rebuilt.
// Compiler-generated: BL LC_API_FREE_0 (operator delete) on this, then returns this. D1 is empty, so the
// compiler left no call to it. Same treatment as the other batches' deleting destructors.

}  // namespace gameswf
