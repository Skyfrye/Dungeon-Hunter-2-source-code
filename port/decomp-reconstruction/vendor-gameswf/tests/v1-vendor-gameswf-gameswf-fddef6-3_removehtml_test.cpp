// Test for gameswf::removeHTML in batch v1-vendor-gameswf-gameswf-fddef6-3 (0x78b4d8).
// The tu_string methods used by removeHTML are defined in base/container.cpp, base/utf8.cpp and the
// tu_string batch source (v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp), all under vendor-gameswf.
// test-support/dh2_test_support.cpp supplies operator new(size, swf::MemHint) (weak, the C heap).
// The rest of the batch source (the tesselation entry that builds final_shape objects, the sound, key and text glue) is not
// run: the names it reaches in other units are bound below to one aborting routine.
//
// Cases follow the binary's control flow (see the comment on removeHTML in the batch source): the text
// between the nearest '>' before the first "</" and that "</" is kept. The case with no '>' before "</"
// is undefined in the binary and is not tested.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-3.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp

#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "base/container.h"
#include "vendor-gameswf/gameswf_alloc.hpp"

// The gameswf heap, which tu_string uses for text longer than 14 characters.
namespace gameswf {
void free_internal(void* p, unsigned int) {
    std::free(p);
}
void* malloc_internal(unsigned int size, swf::MemHint) {
    return std::malloc(size);
}
void* realloc_internal(void* p, unsigned int new_size, unsigned int, swf::MemHint) {
    return std::realloc(p, new_size);
}
}  // namespace gameswf

namespace gameswf {
void removeHTML(tu_string& text);
}

// DH2-test-unreachable-begin
// The batch source also holds functions that need the gameswf core (define_sound_loader, the glyph preloading, the
// TextFormat builder, key_init ...). This test does not run any of them, so the callees they reach are not linked:
// each of the names below is bound to one routine that aborts.
extern "C" void dh2_test_unreachable()
{
	std::abort();
}
__asm__(
"\t.globl _ZN4hashI10tu_stringiN7gameswf8as_valueE20stringi_hash_functorIS0_EE16set_raw_capacityEi\n\t.set _ZN4hashI10tu_stringiN7gameswf8as_valueE20stringi_hash_functorIS0_EE16set_raw_capacityEi, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf11key_is_downERKNS_7fn_callE\n\t.set _ZN7gameswf11key_is_downERKNS_7fn_callE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf11final_shape5flushEPNS_8mesh_setERNS_19tesselator_accepterE\n\t.set _ZN7gameswf11final_shape5flushEPNS_8mesh_setERNS_19tesselator_accepterE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf11final_shape8end_pathEv\n\t.set _ZN7gameswf11final_shape8end_pathEv, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf11final_shape9add_curveEffffff\n\t.set _ZN7gameswf11final_shape9add_curveEffffff, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf11final_shapeD1Ev\n\t.set _ZN7gameswf11final_shapeD1Ev, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf11ref_counted8drop_refEv\n\t.set _ZN7gameswf11ref_counted8drop_refEv, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf11ref_countedC2Ev\n\t.set _ZN7gameswf11ref_countedC2Ev, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf11ref_countedD2Ev\n\t.set _ZN7gameswf11ref_countedD2Ev, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf12key_get_codeERKNS_7fn_callE\n\t.set _ZN7gameswf12key_get_codeERKNS_7fn_callE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf13as_c_functionC1EPNS_6playerEPFvRKNS_7fn_callEE\n\t.set _ZN7gameswf13as_c_functionC1EPNS_6playerEPFvRKNS_7fn_callEE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf13key_get_asciiERKNS_7fn_callE\n\t.set _ZN7gameswf13key_get_asciiERKNS_7fn_callE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf14key_is_toggledERKNS_7fn_callE\n\t.set _ZN7gameswf14key_is_toggledERKNS_7fn_callE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf15get_sample_rateEi\n\t.set _ZN7gameswf15get_sample_rateEi, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf15s_sound_handlerE\n\t.set _ZN7gameswf15s_sound_handlerE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf16key_add_listenerERKNS_7fn_callE\n\t.set _ZN7gameswf16key_add_listenerERKNS_7fn_callE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf19glyph_texture_cache16get_glyph_regionEtPviRKNS0_11filter_infoERNS_4rectE\n\t.set _ZN7gameswf19glyph_texture_cache16get_glyph_regionEtPviRKNS0_11filter_infoERNS_4rectE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf19key_remove_listenerERKNS_7fn_callE\n\t.set _ZN7gameswf19key_remove_listenerERKNS_7fn_callE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf19tesselator_accepterC1Ebbb\n\t.set _ZN7gameswf19tesselator_accepterC1Ebbb, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf19tesselator_accepterD1Ev\n\t.set _ZN7gameswf19tesselator_accepterD1Ev, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf20as_global_array_ctorERKNS_7fn_callE\n\t.set _ZN7gameswf20as_global_array_ctorERKNS_7fn_callE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf22permanent_string_cache3getERK9tu_string\n\t.set _ZN7gameswf22permanent_string_cache3getERK9tu_string, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf25as_global_textformat_ctorERKNS_7fn_callE\n\t.set _ZN7gameswf25as_global_textformat_ctorERKNS_7fn_callE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf26bitmap_glyph_texture_cache16get_glyph_regionEtPviRNS_4rectE\n\t.set _ZN7gameswf26bitmap_glyph_texture_cache16get_glyph_regionEtPviRNS_4rectE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf6as_keyC1EPNS_6playerE\n\t.set _ZN7gameswf6as_keyC1EPNS_6playerE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf6player8get_rootEv\n\t.set _ZN7gameswf6player8get_rootEv, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf6stream12get_positionEv\n\t.set _ZN7gameswf6stream12get_positionEv, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf6stream20get_tag_end_positionEv\n\t.set _ZN7gameswf6stream20get_tag_end_positionEv, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf6stream7read_u8Ev\n\t.set _ZN7gameswf6stream7read_u8Ev, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf6stream8read_u16Ev\n\t.set _ZN7gameswf6stream8read_u16Ev, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf6stream8read_u32Ev\n\t.set _ZN7gameswf6stream8read_u32Ev, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf6stream9read_sintEi\n\t.set _ZN7gameswf6stream9read_sintEi, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf6stream9read_uintEi\n\t.set _ZN7gameswf6stream9read_uintEi, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf8as_value10set_doubleEd\n\t.set _ZN7gameswf8as_value10set_doubleEd, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf8as_value13set_tu_stringERK9tu_string\n\t.set _ZN7gameswf8as_value13set_tu_stringERK9tu_string, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf8as_value17set_as_c_functionEPFvRKNS_7fn_callEE\n\t.set _ZN7gameswf8as_value17set_as_c_functionEPFvRKNS_7fn_callEE, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf8as_value8set_boolEb\n\t.set _ZN7gameswf8as_value8set_boolEb, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf8as_value9drop_refsEv\n\t.set _ZN7gameswf8as_value9drop_refsEv, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf8as_valueaSERKS0_\n\t.set _ZN7gameswf8as_valueaSERKS0_, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf8mesh_set9new_layerEv\n\t.set _ZN7gameswf8mesh_set9new_layerEv, dh2_test_unreachable\n"
"\t.globl _ZN7gameswf9as_object14builtin_memberERK10tu_stringiRKNS_8as_valueE\n\t.set _ZN7gameswf9as_object14builtin_memberERK10tu_stringiRKNS_8as_valueE, dh2_test_unreachable\n"
"\t.globl _ZNK7gameswf11ref_counted14get_weak_proxyEv\n\t.set _ZNK7gameswf11ref_counted14get_weak_proxyEv, dh2_test_unreachable\n"
"\t.globl _ZNK7gameswf14as_environment10get_playerEv\n\t.set _ZNK7gameswf14as_environment10get_playerEv, dh2_test_unreachable\n"
"\t.globl _ZNK7gameswf4font9get_glyphEPNS_5glyphEti\n\t.set _ZNK7gameswf4font9get_glyphEPNS_5glyphEti, dh2_test_unreachable\n"
"\t.globl _ZNK7gameswf7fn_call10get_playerEv\n\t.set _ZNK7gameswf7fn_call10get_playerEv, dh2_test_unreachable\n"
"\t.globl _ZNK7gameswf8as_value9to_numberEv\n\t.set _ZNK7gameswf8as_value9to_numberEv, dh2_test_unreachable\n"
"\t.globl _ZTVN7gameswf12sound_sampleE\n\t.set _ZTVN7gameswf12sound_sampleE, dh2_test_unreachable\n"
"\t.globl _ZTVN7gameswf13character_defE\n\t.set _ZTVN7gameswf13character_defE, dh2_test_unreachable\n"
);
// DH2-test-unreachable-end

namespace {

int g_failures = 0;

void expect_text(const char* input, const char* expected) {
    tu_string s(input);
    gameswf::removeHTML(s);
    if (std::strcmp(s.c_str(), expected) != 0) {
        std::printf("FAIL removeHTML(\"%s\") = \"%s\", expected \"%s\"\n", input, s.c_str(), expected);
        ++g_failures;
    }
}

}  // namespace

int main() {
    expect_text("<b>bold</b>", "bold");
    expect_text("<font face=\"x\">text</font>", "text");
    expect_text("a<p>one</p>", "one");
    expect_text("<br></b>", "");          // nothing between '>' and "</"
    expect_text("plain text", "plain text");  // no "</": unchanged
    expect_text("", "");                  // empty: unchanged
    expect_text("<i>x</i> tail</i>", "x");     // only the first "</" is used

    if (g_failures == 0) {
        std::printf("removeHTML tests passed\n");
        return 0;
    }
    std::printf("%d failure(s)\n", g_failures);
    return 1;
}
