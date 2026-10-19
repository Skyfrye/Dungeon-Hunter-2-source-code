// Link support for the test of the gameswf_impl pass (tests/v1-vendor-gameswf-gameswf_impl-*_test.cpp), run with
// tools/trackb/check_tu.sh --test. Not a test by itself, and outside tests/ so that the CMake test glob does not make an
// executable of it.
//
// The tests make a character derived from gameswf::character that records the calls a tag makes on it. The character's own
// virtual functions and the rest of the object runtime belong to other batches that the test does not link, so each symbol the
// vtable and the tags name is defined here as a WEAK function that reports and aborts when it is called, as
// dh2_as_runtime_stubs.cpp does for the batches of the object runtime. A strong definition (a stand-in in the test, or the real
// source) wins. The names are the mangled symbols of the 64-bit host (no leading underscore).

#include <cstdio>
#include <cstdlib>

extern "C" void gameswf_impl_stub_called(void) {
	std::fprintf(stderr, "gameswf_impl_stubs: a stubbed symbol was called\n");
	std::abort();
}

#define GI_ABORT_STUB(sym) __asm__(".text\n\t.weak " sym "\n" sym ":\n\tjmp gameswf_impl_stub_called\n")

// gameswf::character: the virtuals that the recording character does not override, and the members its vtable reaches.
GI_ABORT_STUB("_ZN7gameswf9character10get_heightEv");
GI_ABORT_STUB("_ZN7gameswf9character19move_display_objectEiPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft");
GI_ABORT_STUB("_ZN7gameswf9character22replace_display_objectEtPKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft");
GI_ABORT_STUB("_ZN7gameswf9character10get_memberERK10tu_stringiPNS_8as_valueE");
GI_ABORT_STUB("_ZN7gameswf9character10goto_frameEi");
GI_ABORT_STUB("_ZN7gameswf9character10set_memberERK10tu_stringiRKNS_8as_valueE");
GI_ABORT_STUB("_ZN7gameswf9character14get_drag_stateEPNS0_10drag_stateE");
GI_ABORT_STUB("_ZN7gameswf9character14get_root_movieEv");
GI_ABORT_STUB("_ZN7gameswf9character14set_drag_stateERKNS0_10drag_stateE");
GI_ABORT_STUB("_ZN7gameswf9character18set_display_boundsEiiii");
GI_ABORT_STUB("_ZN7gameswf9character19update_world_cxformEv");
GI_ABORT_STUB("_ZN7gameswf9character19update_world_matrixEv");
GI_ABORT_STUB("_ZN7gameswf9character20set_display_callbackEPFvRNS_12render_stateEPvES3_");
GI_ABORT_STUB("_ZN7gameswf9character22replace_display_objectEPS0_PKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft");
GI_ABORT_STUB("_ZN7gameswf9character7advanceEf");
GI_ABORT_STUB("_ZN7gameswf9character7recycleEPS0_i");
GI_ABORT_STUB("_ZN7gameswf9character8hit_testEff");
GI_ABORT_STUB("_ZN7gameswf9character9constructEv");
GI_ABORT_STUB("_ZN7gameswf9character9enumerateEPNS_14as_environmentE");
GI_ABORT_STUB("_ZN7gameswf9character9get_boundEPNS_4rectE");
GI_ABORT_STUB("_ZN7gameswf9character9get_widthEv");

// The event handler function (as_s_function): its vtable names the inherited lookup the test never calls.
GI_ABORT_STUB("_ZN7gameswf13as_s_function10get_memberERK10tu_stringiPNS_8as_valueE");

// as_value::to_function, named by action_buffer's neighbours in pack17.
GI_ABORT_STUB("_ZNK7gameswf8as_value11to_functionEv");
