// Link support for the vendor-gameswf tests of the batches that derive from gameswf::as_object (pack11, pack14, pack21,
// pack22). Those batch sources reference the object runtime (as_object and its virtuals, as_function, the built-in tables,
// call_method, the character setters ...), which is outside the batches and needs a player and the engine to run. The tests
// exercise only the parts of the batches that do not touch it. This file defines each referenced symbol as a WEAK function
// that reports and aborts when called, so the test links; a strong definition (a stand-in in the test, or the real
// source) wins. Run with check_tu.sh --test <test> <batch sources> test-support/dh2_test_support.cpp
// test-support/dh2_as_runtime_stubs.cpp (and the other sources the test header lists).
//
// The names are the mangled symbols as the 64-bit host emits them (no leading underscore on x86-64).

#include <cstdio>
#include <cstdlib>

extern "C" void dh2_stub_called(void) {
	std::fprintf(stderr, "dh2_as_runtime_stubs: a stubbed symbol was called\n");
	std::abort();
}

#define DH2_ABORT_STUB(sym) __asm__(".text\n\t.weak " sym "\n" sym ":\n\tjmp dh2_stub_called\n")
#define DH2_ZERO_DATA(sym, bytes) __asm__(".data\n\t.weak " sym "\n\t.p2align 4\n" sym ":\n\t.zero " #bytes "\n")

DH2_ABORT_STUB("_ZN7gameswf11as_function10clear_refsEP4hashIPNS_9as_objectEb15fixed_size_hashIS3_EES3_");
DH2_ABORT_STUB("_ZN7gameswf11as_function10get_memberERK10tu_stringiPNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf11as_function10set_memberERK10tu_stringiRKNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf11as_function10this_aliveEv");
DH2_ABORT_STUB("_ZN7gameswf11as_function7_typeofEv");
DH2_ABORT_STUB("_ZN7gameswf11as_functionD2Ev");
DH2_ABORT_STUB("_ZN7gameswf11as_listener10get_memberERK10tu_stringiPNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf11as_listener9enumerateEPNS_14as_environmentE");
DH2_ABORT_STUB("_ZN7gameswf11as_property3setEPNS_9as_objectERKNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf11as_propertyC1ERKNS_8as_valueES3_");
DH2_ABORT_STUB("_ZN7gameswf11call_methodERKNS_8as_valueEPNS_14as_environmentES2_iiPKc");
DH2_ABORT_STUB("_ZN7gameswf11execute_tag21execute_state_reverseEPNS_9characterEi");
DH2_ABORT_STUB("_ZN7gameswf11execute_tagD2Ev");
DH2_ABORT_STUB("_ZN7gameswf11get_builtinENS_14builtin_objectERK10tu_stringiPNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf11ref_counted8drop_refEv");
DH2_ABORT_STUB("_ZN7gameswf11ref_countedD2Ev");
DH2_ABORT_STUB("_ZN7gameswf13action_bufferC1Ev");
DH2_ABORT_STUB("_ZN7gameswf13action_bufferaSERKS0_");
DH2_ABORT_STUB("_ZN7gameswf13as_c_functionC1EPNS_6playerEPFvRKNS_7fn_callEE");
DH2_ABORT_STUB("_ZN7gameswf13as_c_functionclERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf13as_s_functionclERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf14counted_buffer8drop_refEv");
DH2_ABORT_STUB("_ZN7gameswf15as_color_getRGBERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf15as_color_setRGBERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf15remove_object_213execute_stateEPNS_9characterE");
DH2_ABORT_STUB("_ZN7gameswf15remove_object_221execute_state_reverseEPNS_9characterEi");
DH2_ABORT_STUB("_ZN7gameswf15remove_object_27executeEPNS_9characterE");
DH2_ABORT_STUB("_ZN7gameswf16string_to_numberEPdPKc");
DH2_ABORT_STUB("_ZN7gameswf18as_color_transformC1EPNS_6playerEPKNS_6cxformE");
DH2_ABORT_STUB("_ZN7gameswf19get_standard_memberERK10tu_stringi");
DH2_ABORT_STUB("_ZN7gameswf20as_global_array_ctorERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf20as_global_color_ctorERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf20set_background_color13execute_stateEPNS_9characterE");
DH2_ABORT_STUB("_ZN7gameswf20set_background_color7executeEPNS_9characterE");
DH2_ABORT_STUB("_ZN7gameswf21as_color_gettransformERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf21as_color_settransformERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf21as_global_number_ctorERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf21as_global_object_ctorERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf21as_global_string_ctorERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf22as_global_boolean_ctorERKNS_7fn_callE");
DH2_ABORT_STUB("_ZN7gameswf22permanent_string_cache3getERK9tu_string");
DH2_ABORT_STUB("_ZN7gameswf6cxformC1Ev");
DH2_ABORT_STUB("_ZN7gameswf6stream12get_positionEv");
DH2_ABORT_STUB("_ZN7gameswf6stream20get_tag_end_positionEv");
DH2_ABORT_STUB("_ZN7gameswf6stream7read_u8Ev");
DH2_ABORT_STUB("_ZN7gameswf6stream8read_u16Ev");
DH2_ABORT_STUB("_ZN7gameswf8as_array10clear_refsEP4hashIPNS_9as_objectEb15fixed_size_hashIS3_EES3_");
DH2_ABORT_STUB("_ZN7gameswf8as_array9to_stringEv");
DH2_ABORT_STUB("_ZN7gameswf9as_matrixC1EPNS_6playerEPKNS_6matrixE");
DH2_ABORT_STUB("_ZN7gameswf14as_mouse_eventC1EPNS_6playerE");                  // mouse_event_init (fddef6-7)
DH2_ABORT_STUB("_ZN21render_handler_glitchC1EPN6glitch5video12IVideoDriverE");  // create_render_handler_irrlicht (fddef6-7)
DH2_ABORT_STUB("_ZN7gameswf9as_object10clear_refsEP4hashIPS0_b15fixed_size_hashIS2_EES2_");
DH2_ABORT_STUB("_ZN7gameswf9as_object10get_memberERK10tu_stringiPNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf9as_object10get_memberEiPNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf9as_object10set_memberERK10tu_stringiRKNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf9as_object10set_memberEiRKNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf9as_object10this_aliveEv");
DH2_ABORT_STUB("_ZN7gameswf9as_object14builtin_memberERK10tu_stringiRKNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf9as_object17notify_set_memberERK10tu_stringiRKNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf9as_object4dumpER9tu_string");
DH2_ABORT_STUB("_ZN7gameswf9as_object4dumpEv");
DH2_ABORT_STUB("_ZN7gameswf9as_object5watchERK9tu_stringPNS_11as_functionERKNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf9as_object7_typeofEv");
DH2_ABORT_STUB("_ZN7gameswf9as_object7advanceEf");
DH2_ABORT_STUB("_ZN7gameswf9as_object7copy_toEPS0_");
DH2_ABORT_STUB("_ZN7gameswf9as_object7unwatchERK9tu_string");
DH2_ABORT_STUB("_ZN7gameswf9as_object8on_eventERKNS_8event_idE");
DH2_ABORT_STUB("_ZN7gameswf9as_object8set_ctorERKNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf9as_object9enumerateEPNS_14as_environmentE");
DH2_ABORT_STUB("_ZN7gameswf9as_object9to_numberEv");
DH2_ABORT_STUB("_ZN7gameswf9as_objectC1EPNS_6playerE");
DH2_ABORT_STUB("_ZN7gameswf9as_objectC2EPNS_6playerE");
DH2_ABORT_STUB("_ZN7gameswf9as_objectD2Ev");
DH2_ABORT_STUB("_ZN7gameswf9character10set_cxformERKNS_6cxformE");
DH2_ABORT_STUB("_ZN7gameswf9character10set_matrixERKNS_6matrixE");
DH2_ABORT_STUB("_ZN7gameswf9character16get_world_cxformEv");
DH2_ABORT_STUB("_ZN7gameswf9character16get_world_matrixEv");
DH2_ABORT_STUB("_ZN7gameswf9log_errorEPKcz");
DH2_ABORT_STUB("_ZNK7gameswf11as_property3getEPNS_9as_objectEPNS_8as_valueE");
DH2_ABORT_STUB("_ZNK7gameswf11as_property3getERKNS_8as_valueEPS1_");
DH2_ABORT_STUB("_ZNK7gameswf11execute_tag13is_action_tagEv");
DH2_ABORT_STUB("_ZNK7gameswf11execute_tag13is_remove_tagEv");
DH2_ABORT_STUB("_ZNK7gameswf11execute_tag34get_depth_id_of_replace_or_add_tagEv");
DH2_ABORT_STUB("_ZNK7gameswf11ref_counted14get_weak_proxyEv");
DH2_ABORT_STUB("_ZNK7gameswf11ref_counted7add_refEv");
DH2_ABORT_STUB("_ZNK7gameswf13action_buffer7executeEPNS_14as_environmentEiiPNS_8as_valueERK5arrayINS_16with_stack_entryEEb");
DH2_ABORT_STUB("_ZNK7gameswf15remove_object_213is_remove_tagEv");
DH2_ABORT_STUB("_ZNK7gameswf7fn_call10get_playerEv");
DH2_ABORT_STUB("_ZNK7gameswf9as_object14is_instance_ofEPKNS_11as_functionE");
DH2_ABORT_STUB("_ZNK7gameswf9as_object8get_rootEv");
DH2_ABORT_STUB("_ZNK7gameswf9as_object9get_protoEv");

// Vtables whose key function is in a source the tests do not link; zero-filled, never read.
DH2_ZERO_DATA("_ZTVN7gameswf11as_functionE", 256);
DH2_ZERO_DATA("_ZTVN7gameswf18as_color_transformE", 256);
DH2_ZERO_DATA("_ZTVN7gameswf8as_arrayE", 256);
DH2_ZERO_DATA("_ZTVN7gameswf11as_listenerE", 256);
DH2_ZERO_DATA("_ZTVN7gameswf8as_colorE", 256);
DH2_ZERO_DATA("_ZTVN7gameswf12as_transformE", 256);

// The rest of gameswf::character that generic_character (pack1) names: its constructor and destructor and the virtuals of its vtable.
// A test that links pack1 only for bitmap_character (fddef6-1) never builds a generic_character, so these abort if they are reached.
DH2_ABORT_STUB("_ZN7gameswf9character10get_heightEv");
DH2_ABORT_STUB("_ZN7gameswf9character10get_memberERK10tu_stringiPNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf9character10goto_frameEi");
DH2_ABORT_STUB("_ZN7gameswf9character10set_memberERK10tu_stringiRKNS_8as_valueE");
DH2_ABORT_STUB("_ZN7gameswf9character14get_drag_stateEPNS0_10drag_stateE");
DH2_ABORT_STUB("_ZN7gameswf9character14get_root_movieEv");
DH2_ABORT_STUB("_ZN7gameswf9character14set_drag_stateERKNS0_10drag_stateE");
DH2_ABORT_STUB("_ZN7gameswf9character18set_display_boundsEiiii");
DH2_ABORT_STUB("_ZN7gameswf9character19do_display_callbackEv");
DH2_ABORT_STUB("_ZN7gameswf9character19move_display_objectEiPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft");
DH2_ABORT_STUB("_ZN7gameswf9character19update_world_cxformEv");
DH2_ABORT_STUB("_ZN7gameswf9character19update_world_matrixEv");
DH2_ABORT_STUB("_ZN7gameswf9character20set_display_callbackEPFvRNS_12render_stateEPvES3_");
DH2_ABORT_STUB("_ZN7gameswf9character22replace_display_objectEPS0_PKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft");
DH2_ABORT_STUB("_ZN7gameswf9character22replace_display_objectEtPKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft");
DH2_ABORT_STUB("_ZN7gameswf9character7advanceEf");
DH2_ABORT_STUB("_ZN7gameswf9character7recycleEPS0_i");
DH2_ABORT_STUB("_ZN7gameswf9character9constructEv");
DH2_ABORT_STUB("_ZN7gameswf9character9enumerateEPNS_14as_environmentE");
DH2_ABORT_STUB("_ZN7gameswf9character9get_boundEPNS_4rectE");
DH2_ABORT_STUB("_ZN7gameswf9character9get_widthEv");
DH2_ABORT_STUB("_ZN7gameswf9characterC2EPNS_6playerEPS0_ii");
DH2_ABORT_STUB("_ZN7gameswf9characterD2Ev");
