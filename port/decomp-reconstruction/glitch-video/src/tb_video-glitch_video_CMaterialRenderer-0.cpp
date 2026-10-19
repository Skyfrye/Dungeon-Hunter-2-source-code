// Batch e1-glitch-video-glitch_video_CMaterialRenderer-0 (owner glitch::video::CMaterialRenderer).
// Layout used here (material_renderer.hpp, material_renderer_manager_layout.hpp):
//   +0x0e u16 parameter count, +0x20 parameter entries (16-byte entries, stride 16 in the original),
//   +0x10 u8 technique count, +0x18 technique table (12-byte entries, stride 12 in the original),
//   entry +0x08 pass array (52-byte elements), element +0x00..+0x1f render state, +0x30 u8 dirty flag.

#include <cstddef>
#include <cstdint>
#include <cstring>

#include "glitch-shared/shared_string_heap.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/tb/renderpass_srenderstate.hpp"

namespace glitch::video {

// The copied block is the first 32 bytes of SRenderState. The layout check keeps the memcpy honest.
static_assert(sizeof(detail::renderpass::SRenderState) == 32, "SRenderState is the 32-byte state block");

namespace {
constexpr std::size_t kPassStateBytes = 32;  // memcmp and copy length (0x20 in the original)

// The text of a shared-string name handle (SSharedStringHeapEntry::SData, held as an opaque word in
// STechnique::name and in SParameterEntry::name). The heap interns every name, so two entries hold the
// same interned name exactly when their texts are equal; the original's lookups below compare the address
// of the committed text (SData + 4) on both sides. The port's SSharedStringData
// (glitch-shared/shared_string_heap.hpp) reports the text the way SData::release (0x6a4d9c) selects it, so
// the same question is asked with strcmp. Null when the handle is null.
const char* sharedStringText(const void* data) {
    return core::detail::sharedStringText(static_cast<const core::detail::SSharedStringData*>(data));
}
}  // namespace

// 0x5d3034 _ZN6glitch5video17CMaterialRenderer14setRenderStateEhhRKNS0_6detail10renderpass12SRenderStateE
// Returns the bit pattern of the state's word at +0x10 when the pass changed, and 0 when it did not.
// The original's return value is that word (its result is overwritten after the copy); kept as is.
int32_t CMaterialRenderer::setRenderState(uint8_t technique, uint8_t pass,
                                          const detail::renderpass::SRenderState& state) {
    // table[technique].blocks is the pass array of that technique (the original reads +0x18, *12 + 8).
    // The stand-in declares the array const; the original owns it and writes into it, so it is cast here.
    const STechniqueEntry& entry = m_techniques[technique];
    SRenderPass& element = const_cast<SRenderPass&>(entry.passes[pass]);  // element = passes + 52 * pass

    if (std::memcmp(element.stateWords, &state, kPassStateBytes) != 0) {
        std::memcpy(element.stateWords, &state, kPassStateBytes);  // eight words, in order
        element.flag30 = 1;                                         // *((_BYTE *)v5 + 48) = 1

        int32_t word10 = 0;  // the original reads the word at argument +0x10 as an int
        std::memcpy(&word10, &state.m_float10, sizeof(word10));
        return word10;
    }
    return 0;
}

// 0x5cef08 _ZNK6glitch5video17CMaterialRenderer14getParameterIDENS0_23E_SHADER_PARAMETER_TYPEEt
// The id of the first parameter entry at or after `index` whose type word is `type`; 0xffff when none.
// Verified in the listing (22 instructions): LDRH R3,[R0,#0xE] is the entry count (the port's
// SParameterBlockHeader::count, reached through the IMaterialParameters mixin's inline header) and
// LDRHI R2,[R12,#0x20] with ADDHI R2,R2,R0,LSL#4 is entry `id` of the 16-byte array; LDRH R2,[R2,#4]
// is the entry's type word, the field the port calls SParameterEntry::kind, compared with the first
// argument; the two CMP/BCS pairs bound the walk and MOVW R0,#0xFFFF answers not found.
// The emitted symbol is ...getParameterIDEit, not the original's ...getParameterIDENS0_23E_SHADER_PARAMETER_TYPEEt:
// E_SHADER_PARAMETER_TYPE is the int32_t alias of video_types.hpp, the same param_drift armdiff records for
// IShader::getParameterID (0x5e48e4). The body is the original's.
uint16_t CMaterialRenderer::getParameterID(E_SHADER_PARAMETER_TYPE type, uint16_t index) const {
    const detail::SParameterBlockHeader& header = parameters.parameterHeader();
    for (uint16_t id = index; id < header.count; ++id) {
        if (header.entries[id].kind == static_cast<uint16_t>(type)) {
            return id;
        }
    }
    return 0xFFFF;
}

// 0x5d308c _ZNK6glitch5video17CMaterialRenderer14getParameterIDEPKct
// The id of the first parameter entry at or after `index` whose NAME is `name`; 0xffff when none.
// Verified in the listing (152 bytes): the name is interned with SData::get(name, false) (BL to
// 0x6a5074 with R1 = 0, the pure-lookup form that never creates a record), and a null result answers
// 0xffff at once (CMP R0,#0 / MOVWEQ R5,#0xFFFF). The temporary is then used once: LDR R6,[R0] /
// ADD R6,R6,#1 / STR R6,[R1],#4 is the use count at SData + 0x00 being raised, and R1 walks on to
// SData + 4, the text address the comparison uses. The walk bound is CMP R5,R12 with R12 =
// LDRH [R4,#0xE] (the entry count) and the entry is LDR R3,[R4,R5,LSL#4] (16-byte stride); the name
// field is `LDR R3,[entry+0x00] / CMP R3,#0 / ADDNE R3,R3,#4 / CMP R1,R3`, so an entry with no name
// never matches and a match is the interned text ADDRESS (the heap interns, so an existing record's
// text address is the address get returned). Not found: MOV R5,#0xFFFF. The temporary's use count is
// dropped again before every exit (SUB R6,R6,#1 / STR R6,[R0] / BEQ SData::release). The port has that
// count now (SSharedStringData::useCount) but this body does not take the temporary use the original
// takes, so the record it reads the text of is not kept alive for the walk: if another owner drops the
// last use on that record during the loop, this read reaches freed memory. The original cannot: its
// temporary use held it. Writing the take-and-drop here is the fix and is deliberately left to a caller
// pass (no reconstructed caller drives a name this way yet).
// Deviation, the same one getTechniqueID (0x5d4714) records: the comparison is by TEXT
// (sharedStringText + strcmp) rather than by the interned text address, because the port's heap
// records are distinct objects with equal text. The engine's interning makes the two the same
// question, and the parameter entries hold the name handle exactly as technique entries do (see
// SParameterEntry::name).
uint16_t CMaterialRenderer::getParameterID(const char* name, uint16_t index) const {
    if (name == nullptr || *name == '\0') {
        return 0xFFFF;  // SData::get returns 0 for both, and the original answers with its 0xFFFF sentinel
    }
    const detail::SParameterBlockHeader& header = parameters.parameterHeader();
    for (uint16_t id = index; id < header.count; ++id) {
        const char* entryName = sharedStringText(header.entries[id].name);
        if (entryName != nullptr && std::strcmp(entryName, name) == 0) {
            return id;
        }
    }
    return 0xFFFF;
}

// 0x5d4714 _ZNK6glitch5video17CMaterialRenderer14getTechniqueIDEPKc
// The ordinal of the first technique whose name is `name`; 0xff when the renderer has no such technique.
// Verified in the listing (52 instructions): LDRB R5,[R4,#0x10] is the technique count, LDR R6,[R4,#0x18]
// the table and ADD R3,R3,#0xC its 12-byte stride; each entry's +0x00 word is a shared-string name
// (LDR R2,[R6,R3]; CMP R2,#0; ADDNE R2,R2,#4, so a null name never matches) compared with the text of the
// name looked up in the heap (CMP R12,R2, R12 = the returned SData + 4); the walk stops at "ordinal ==
// count" and MOV R4,#0xFF answers not found. The name is interned once with SData::get(name, false), whose
// own listing (0x6a5074) returns 0 for a null pointer and for the empty text (CMP R0,#0 / LDRSB R3,[R0];
// CMP R3,#0; both BEQ the "MOV R0,#0" exit), which is the null-or-empty guard here.
// Deviations, both named: the walk compares the name TEXTS instead of the interned text addresses, because
// the port's heap keeps each interned name as its own SSharedStringData record (getSharedString,
// glitch-core-io/src/shared_string_heap.cpp, written in this pass) rather than comparing record addresses.
// The engine's interning makes the two the same question, and they differ only for a table that holds two
// distinct shared-string records with equal text, a state the original's heap cannot produce. The
// original's temporary use of the key (++*(int*)data, then --*data and SData::release at zero) is not
// reproduced here either: the count is SSharedStringData::useCount and the release is the last-use free in
// glitch-core-io/src/shared_string_heap.cpp, but this body only reads the text and takes no use to drop
// (see the same note on getParameterID above).
uint8_t CMaterialRenderer::getTechniqueID(const char* name) const {
    if (name == nullptr || *name == '\0') {
        return 0xFF;  // SData::get returns 0 for both, and the original answers with its 0xFF sentinel
    }
    const uint8_t count = m_techniqueCount;
    for (uint8_t id = 0; id < count; ++id) {
        const char* entryName = sharedStringText(m_techniques[id].name);
        if (entryName != nullptr && std::strcmp(entryName, name) == 0) {
            return id;
        }
    }
    return 0xFF;
}

}  // namespace glitch::video
