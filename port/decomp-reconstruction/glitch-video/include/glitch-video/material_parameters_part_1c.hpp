// Wave 4 part 1c: typed accessors of IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>>
// (M) and IMaterialParameters<CMaterialRenderer, ISharedMemoryBlockHeader<CMaterialRenderer>> (R).
//
// The 75 rows of this slice are instances of the member templates declared in
// material_parameters_typed.hpp. They are written here as free function templates over a
// non-owning view of the owner's parameter table (SParameterTable), so that they do not depend on
// the class layout of IMaterialParameters. The integrator binds them to the member names.
//
// Original layout, from the pseudocode of every row (ARM, 32-bit):
//   M (CMaterial): block pointer at +0x04 (header: count uint16 at +0x0e, entries at +0x20), dirty
//                  words at +0x0c and +0x10 (set to -1 by a changing store), values inline at +0x20.
//   R (CMaterialRenderer): header inline (count at +0x0e, entries at +0x20), value buffer pointer at
//                  +0x24, no dirty words.
//   Entry (16 bytes): type byte +0x06, count +0x08, valueOffset +0x0c (byte offset in the values).
//
// Pointer slots (intrusive_ptr<ITexture>, intrusive_ptr<CLight>) are 4 bytes each in the original.
// The port keeps them in SPointerSlots, keyed by the original byte offset of the slot (valueOffset
// plus 4 per element), because a 64-bit pointer does not fit in the 4-byte slot.
//
// Stride rule of the array forms: a stride of 0 or the element size is contiguous; any other stride
// steps the caller's side by that many bytes. A stride of 0 with a stored type other than the
// accessor's own type does nothing and reports success (the Cvt forms).
//
// Original quirks kept as they are in the listing: the indexed Cvt forms check index < count and
// then read or write the entry's first element (the index is not added to the offset). The M
// Cvt indexed forms mark the dirty words only when the stored value changes; the array Cvt forms
// always mark them after the gate.
//
// Address map (name, owner, instance; the address is the comment of each definition in the .cpp):
//   M getParameter(id, T*, stride):      float 0x5c8ad4, v4i 0x5c8b74, v3i 0x5c8c28, v2i 0x5c8cdc, int 0x5c8d8c,
//                                        ITexture 0x5cc43c, CLight 0x5cc50c
//   M setParameterCvt(id, T const*, s):  SColorf 0x5c8e2c, SColor 0x5c9020, v4f 0x5c9258, v3f 0x5c9444,
//                                        v2f 0x5c954c, float 0x5c964c, v4i 0x5c9778, v3i 0x5c9880, v2i 0x5c9988,
//                                        int 0x5c9a88, ITexture 0x5cc820, CLight 0x5cce20
//   M setParameter(id, T const*, s):     SColorf 0x5c9bb4, SColor 0x5c9c78, v4f 0x5c9d3c, v3f 0x5c9dfc,
//                                        v2f 0x5c9ebc, float 0x5c9f78, v4i 0x5ca024, v3i 0x5ca0e4, v2i 0x5ca1a4,
//                                        int 0x5ca260, CLight 0x5cc2b8, ITexture 0x5cc8b4
//   M getParameterCvt(id, T*, s):        ITexture 0x5ccc7c, CLight 0x5cd0d8
//   M setParameter(id, index, T const&): SColorf 0x5cabf8, ITexture 0x5cd324, CLight 0x5ce95c
//   M setParameterCvt(id, index, T const&): SColor 0x5cad38, SColorf 0x5cb6e8, v4f 0x5ce768,
//                                        CLight 0x5cc1b8, ITexture 0x5cec4c
//   M getParameter(id, index, T&):       ITexture 0x5cdabc, CLight 0x5ceae0
//   M getParameterCvt(id, index, T&):    CLight 0x5cc3b4, ITexture 0x5cedd0
//   M setParameterElement(id, index, component, value): uchar 0x5caf68, int 0x5cb098, float 0x5cb1c4
//   M setParameterAt<SColorf>(SColorf*, SColor const&): 0x5cac8c
//   R setParameter(id, index, T const&): int 0x5cf05c, v2i 0x5cf0b8, v3i 0x5cf118, v4i 0x5cf18c,
//                                        float 0x5cf1fc, v2f 0x5cf250, v3f 0x5cf2b0, v4f 0x5cf324,
//                                        SColor 0x5cf394, SColorf 0x5cf3f4
//   R setParameterCvt(id, index, T const&): int 0x5cf458, v2i 0x5cf4ec, v3i 0x5cf574, v4i 0x5cf604,
//                                        float 0x5cf6a0, v2f 0x5cf73c, v3f 0x5cf7c4, v4f 0x5cf854,
//                                        SColor 0x5cf998, SColorf 0x5cfb44
//   R getParameter(id, index, T&):       int 0x5cfc88, v2i 0x5cfce4, v3i 0x5cfd44, v4i 0x5cfdb0,
//                                        float 0x5cfe20, v2f 0x5cfe74
#pragma once

#include <cstddef>
#include <cstdint>
#include <map>

#include "glitch-video/deps/glitch_core.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/light.hpp"
#include "glitch-video/material_parameters.hpp"
#include "glitch-video/texture.hpp"

namespace glitch::video::detail::part1c {

// Pointer slots of an owner, keyed by the original byte offset of the slot.
// decision 2 (host-width pointer): the 4x4 matrix stored behind a code-11 value slot (0x44-byte CMatrix4 in the original,
// created by 0x5cb1c4 as a clone of the identity) is held here by value, keyed by the same original slot offset.
struct SPointerSlots {
    std::map<std::uint32_t, boost::intrusive_ptr<ITexture>> textures;
    std::map<std::uint32_t, boost::intrusive_ptr<CLight>> lights;
    std::map<std::uint32_t, core::CMatrix4<float>> matrices;
};

// Non-owning view of one owner's parameter table.
//   header    : count and entries (CMaterial: the block its +0x04 points to; R: its own header)
//   values    : base of the value area (CMaterial: the object +0x20; R: the buffer at +0x24)
//   dirtyFirst, dirtyLast : the dirty words of CMaterial (+0x0c, +0x10); null for CMaterialRenderer
//   pointers  : pointer slots; required by the pointer rows only
struct SParameterTable {
    const SParameterBlockHeader* header = nullptr;
    std::uint8_t* values = nullptr;
    std::int32_t* dirtyFirst = nullptr;
    std::int32_t* dirtyLast = nullptr;
    SPointerSlots* pointers = nullptr;
};

// ---- Array forms: id, pointer to the caller's array, byte stride between its elements.
template <class T>
int getParameter(const SParameterTable& t, std::uint16_t id, T* out, int stride);
template <class T>
int setParameter(const SParameterTable& t, std::uint16_t id, const T* src, int stride);
template <class T>
int getParameterCvt(const SParameterTable& t, std::uint16_t id, T* out, int stride);
template <class T>
int setParameterCvt(const SParameterTable& t, std::uint16_t id, const T* src, int stride);

// ---- Indexed forms: id, element index, one value.
template <class T>
int getParameter(const SParameterTable& t, std::uint16_t id, std::uint32_t index, T& out);
template <class T>
int setParameter(const SParameterTable& t, std::uint16_t id, std::uint32_t index, const T& value);
template <class T>
int getParameterCvt(const SParameterTable& t, std::uint16_t id, std::uint32_t index, T& out);
template <class T>
int setParameterCvt(const SParameterTable& t, std::uint16_t id, std::uint32_t index, const T& value);

// setParameterElement(id, index, component, value): one component of an element.
// Partial: see the .cpp for the offset rule and the tables it depends on.
template <class T>
int setParameterElement(const SParameterTable& t, std::uint16_t id, std::uint32_t index,
                        std::uint8_t component, T value);

// setParameterAt<SColorf>(SColorf* dst, SColor const& src): normalised store with the dirty mark.
void setParameterAt(const SParameterTable& t, glitch::video::SColorf* dst, const glitch::video::SColor& src);

}  // namespace glitch::video::detail::part1c
