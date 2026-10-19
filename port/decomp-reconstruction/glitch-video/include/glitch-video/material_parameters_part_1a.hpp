// Wave 4 part 1a: IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase> typed rows.
//
// These are the instances of the member templates whose addresses lie in 0x5be68c..0x5c41d0. They
// read and write the global manager's parameter table through a non-owning view (GlobalParamTable),
// so that they do not depend on the class layout of glitch-video's IMaterialParameters. The member
// binding is not done here: the integrator's IMaterialParameters (or the typed mixin of
// material_parameters_typed.hpp) forwards to these functions.
//
// Original layout, from the pseudocode of every row (ARM, 32-bit):
//   a1[6]  (+0x18) begin of the entry table, 20-byte SParamEntry records
//   a1[7]  (+0x1c) end of the entry table; entry count = (end - begin) / 20
//   a1[11] (+0x2c) base of the value buffer; an entry's value starts at base + entry.offset
//   entry +0x00 non-zero when defined (zero is the collection's Invalid entry)
//   entry +0x06 value type code, +0x08 element count, +0x0c value offset
//
// Return value: 1 on success, 0 when the id is undefined, the stored type fails the accessor's check,
// or the index is out of range. Stride arguments are byte strides (see the .cpp for the rule).
#pragma once

#include <cstddef>
#include <cstdint>

#include "glitch-video/deps/glitch_core.hpp"

namespace glitch::video::detail::part1a {

// One record of the global manager's parameter table (20 bytes in the original).
struct SParamEntry {
    std::uint32_t ref = 0;      // +0x00: non-zero when the parameter is defined
    std::uint16_t unk04 = 0;    // +0x04: not read by these rows
    std::uint8_t type = 0;      // +0x06: value type code
    std::uint8_t unk07 = 0;     // +0x07: not read by these rows
    std::uint32_t count = 0;    // +0x08: number of elements
    std::uint32_t offset = 0;   // +0x0c: byte offset of the first element in the value buffer
    std::uint32_t unk10 = 0;    // +0x10: not read by these rows
};
static_assert(sizeof(SParamEntry) == 20, "SParamEntry is the 20-byte table record");

// Non-owning view of the global manager's tables: a1[6], a1[7] and a1[11].
struct GlobalParamTable {
    const SParamEntry* entries = nullptr;  // +0x18
    std::uint32_t entryCount = 0;          // (+0x1c - +0x18) / 20
    std::uint8_t* values = nullptr;        // +0x2c
};

// SShaderParameterTypeInspection::Convertions (19 words, ELF 0x8e2c58), as read in glitch-core-io.
// Bit 0x2 is the int accessor gate, 0x20 float, 0x10000 SColor, 0x20000 SColorf, 0x100 vector4d<float>.
inline constexpr std::uint32_t kConvertions[19] = {
    0x1,    0x22,    0x4,    0x8,    0x10,   0x22,   0x40,    0x80,    0x30100, 0x200,
    0x400,  0x800,   0x1000, 0x2000, 0x4000, 0x8000, 0x30100, 0x30100, 0x40000};

// ---- Index forms: getParameter(id, index, T&) / getParameterCvt(id, index, T&). Element 'index' is
// checked against the count; the value read is the element at the entry offset (see .cpp).
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::video::SColorf& out);  // 0x5bf68c
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::video::SColor& out);   // 0x5bf738
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector4d<float>& out);  // 0x5bf89c
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector3d<float>& out);  // 0x5bf958
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector2d<float>& out);  // 0x5bfa10
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, float& out);                          // 0x5bfabc
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector4d<int>& out);    // 0x5bfb5c
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector3d<int>& out);    // 0x5c39dc
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector2d<int>& out);    // 0x5c3a94
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, int& out);                            // 0x5c3b40

int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::video::SColorf& out);  // 0x5be794
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::video::SColor& out);   // 0x5be8e4
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector4d<float>& out);  // 0x5bef98
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector3d<float>& out);  // 0x5bf100
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector2d<float>& out);  // 0x5bf1c8
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, float& out);                        // 0x5bf288
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector4d<int>& out);  // 0x5bf360
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector3d<int>& out);  // 0x5bf434
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, glitch::core::vector2d<int>& out);  // 0x5bf4fc
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, int& out);                         // 0x5bf5bc

// setParameterCvt(id, index, const T&): writes the first element of the entry (no index added).
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, const glitch::video::SColorf& src);  // 0x5c3be0
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, const glitch::video::SColor& src);   // 0x5c3d5c
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, const glitch::core::vector4d<float>& src);  // 0x5c4054
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, const glitch::core::vector3d<float>& src);  // 0x5c41d0

// ---- Array forms: getParameter(id, T* out, stride) / setParameter(id, const T* src, stride).
int getParameter(const GlobalParamTable& t, std::uint16_t id, glitch::video::SColorf* out, int stride);  // 0x5c22e8
int getParameter(const GlobalParamTable& t, std::uint16_t id, glitch::video::SColor* out, int stride);   // 0x5c23e0
int getParameter(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector4d<float>* out, int stride);  // 0x5c25e8
int getParameter(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector3d<float>* out, int stride);  // 0x5c26dc
int getParameter(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector2d<float>* out, int stride);  // 0x5c27d0
int getParameter(const GlobalParamTable& t, std::uint16_t id, float* out, int stride);                          // 0x5c28c4
int getParameter(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector4d<int>* out, int stride);    // 0x5c29a4
int getParameter(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector3d<int>* out, int stride);    // 0x5c2a98
int getParameter(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector2d<int>* out, int stride);    // 0x5c2b8c
int getParameter(const GlobalParamTable& t, std::uint16_t id, int* out, int stride);                            // 0x5c2c80

int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, glitch::video::SColorf* out, int stride);  // 0x5c12b0
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, glitch::video::SColor* out, int stride);   // 0x5c14b8
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector4d<float>* out, int stride);  // 0x5c1718
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector3d<float>* out, int stride);  // 0x5c196c
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector2d<float>* out, int stride);  // 0x5c1a98
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, float* out, int stride);                        // 0x5c1bbc
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector4d<int>* out, int stride);  // 0x5c1d08
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector3d<int>* out, int stride);  // 0x5c1e34
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, glitch::core::vector2d<int>* out, int stride);  // 0x5c1f60
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, int* out, int stride);                          // 0x5c2084

int setParameter(const GlobalParamTable& t, std::uint16_t id, const glitch::video::SColorf* src, int stride);  // 0x5bffb4
int setParameter(const GlobalParamTable& t, std::uint16_t id, const glitch::video::SColor* src, int stride);   // 0x5c00ac
int setParameter(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector4d<float>* src, int stride);  // 0x5c01a4
int setParameter(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector3d<float>* src, int stride);  // 0x5c0298
int setParameter(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector2d<float>* src, int stride);  // 0x5c038c
int setParameter(const GlobalParamTable& t, std::uint16_t id, const float* src, int stride);                        // 0x5c0480
int setParameter(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector4d<int>* src, int stride);   // 0x5c0560
int setParameter(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector3d<int>* src, int stride);   // 0x5c0654
int setParameter(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector2d<int>* src, int stride);   // 0x5c0748
int setParameter(const GlobalParamTable& t, std::uint16_t id, const int* src, int stride);                         // 0x5c083c

int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const glitch::video::SColorf* src, int stride);  // 0x5c2e9c
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const glitch::video::SColor* src, int stride);   // 0x5c30b0
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector4d<float>* src, int stride);  // 0x5c3308
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector3d<float>* src, int stride);  // 0x5c3514
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector2d<float>* src, int stride);  // 0x5c3640
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const float* src, int stride);                        // 0x5c3764
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector4d<int>* src, int stride);   // 0x5c38b0
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector3d<int>* src, int stride);   // 0x5bfc18
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const glitch::core::vector2d<int>* src, int stride);   // 0x5bfd44
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const int* src, int stride);                          // 0x5bfe68

// Not in this file (blocked, see NOTES.md): the intrusive_ptr rows 0x5bf7dc, 0x5beaa4, 0x5c2198, 0x5c24d8,
// 0x5be68c, 0x5c3f40, 0x5c0c94, 0x5c0bd4, and setParameterElement 0x5beb84, 0x5becc4, 0x5c0aa8.

}  // namespace glitch::video::detail::part1a
