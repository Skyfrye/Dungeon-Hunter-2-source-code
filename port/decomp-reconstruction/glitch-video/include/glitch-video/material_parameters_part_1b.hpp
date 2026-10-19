// Wave 4 slice 1b: 75 typed accessors of glitch::video::detail::IMaterialParameters, the rows that
// were moved from glitch-core-io to glitch-video. Two owners:
//   G = IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase>   (24 rows)
//   M = IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>> (51 rows)
// Every declaration below carries its ELF address. Bodies are in src/material_parameters_part_1b.cpp,
// reconstructed from the Hex-Rays pseudocode of each address (see the notes at the top of that file).
//
// Overload set: index forms are named getParameter / setParameter (and the Cvt variants), the array
// forms are getParameterArray / getParameterArrayCvt. The owner type selects the overload.
//
// Storage (offsets from the listings, kept as comments; no raw pointer arithmetic is used):
//   G: entry table at +0x18 (part1a::SParamEntry, 20-byte records, entry count = size of the table),
//      value buffer at +0x2c. Entry fields used: +0x00 ref (zero = unset), +0x06 value type code,
//      +0x08 element count, +0x0c offset of element 0 in the value buffer.
//   M: block pointer at +0x04, dirty markers at +0x0c (first) and +0x10 (last), inline values at +0x20.
//      Block: count (uint16) at +0x0e, entry array at +0x20 (detail::SParameterEntry, 16-byte records).
//      Entry fields used: +0x06 value type code, +0x08 element count, +0x0c offset of element 0.
//      There is no set flag: every entry of a block is present.
//
// Port deviations (see the notes in the cpp): a stored pointer element takes sizeof(void*) bytes
// instead of the original 4; the index and bounds checks read the entry count, and reads or writes
// past the value buffer fail with 0 instead of touching memory.
#pragma once

#include <cstddef>
#include <cstdint>
#include <vector>

#include "glitch-video/deps/glitch_core.hpp"
#include "glitch-video/material_parameters.hpp"
#include "glitch-video/material_parameters_part_1a.hpp"

namespace glitch::video {
class CLight;
class ITexture;
}  // namespace glitch::video

namespace glitch::video::detail::part1b {

// The entry records are the ones of the owners: part1a::SParamEntry for G, detail::SParameterEntry for M.
// G's record is a plain 20-byte value with no handle in it, so its size is still pinned. M's is NOT pinned
// any more: its +0x00 field is a shared-string handle (the parameter name), 8 bytes on this host where the
// original's was 4, so sizeof(detail::SParameterEntry) is 24 here. Its field OFFSETS are the original's and
// are documented in material_parameters.hpp; only the raw 16-byte stride is a 32-bit-layout fact, and no
// code in the port steps an entry array by that stride.
static_assert(sizeof(part1a::SParamEntry) == 20, "G entry record is 20 bytes");
static_assert(offsetof(detail::SParameterEntry, kind) >= sizeof(void*), "M entry kind follows the name handle");

// Owner G: IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase>.
struct GlobalParameterStore {
    std::vector<part1a::SParamEntry> entries;  // +0x18 entry table (size = entry count)
    std::vector<std::uint8_t> values;          // +0x2c value buffer
};

// Block header of owner M (ISharedMemoryBlockHeader<CMaterial>).
struct MaterialParameterBlock {
    std::uint16_t count = 0;                        // +0x0e
    std::vector<detail::SParameterEntry> entries;   // +0x20
};

// Owner M: IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>>.
struct MaterialParameterStore {
    MaterialParameterBlock* block = nullptr;  // +0x04, not owned
    std::int32_t dirtyFirst = -1;             // +0x0c
    std::int32_t dirtyLast = -1;              // +0x10
    std::vector<std::uint8_t> values;         // +0x20 inline values
};

// Value type codes (the codes tested by the pseudocode at entry+6) and the accessor gate bit of each
// value type (SShaderParameterTypeInspection::Convertions, bit per accessor type).
template <class T>
struct ParamCode;
template <>
struct ParamCode<int> {
    static constexpr std::uint8_t kCode = 1;
    static constexpr std::uint32_t kGate = 0x2;
};
template <>
struct ParamCode<glitch::core::vector2d<int>> {
    static constexpr std::uint8_t kCode = 2;
    static constexpr std::uint32_t kGate = 0x4;
};
template <>
struct ParamCode<glitch::core::vector3d<int>> {
    static constexpr std::uint8_t kCode = 3;
    static constexpr std::uint32_t kGate = 0x8;
};
template <>
struct ParamCode<glitch::core::vector4d<int>> {
    static constexpr std::uint8_t kCode = 4;
    static constexpr std::uint32_t kGate = 0x10;
};
template <>
struct ParamCode<float> {
    static constexpr std::uint8_t kCode = 5;
    static constexpr std::uint32_t kGate = 0x20;
};
template <>
struct ParamCode<glitch::core::vector2d<float>> {
    static constexpr std::uint8_t kCode = 6;
    static constexpr std::uint32_t kGate = 0x40;
};
template <>
struct ParamCode<glitch::core::vector3d<float>> {
    static constexpr std::uint8_t kCode = 7;
    static constexpr std::uint32_t kGate = 0x80;
};
template <>
struct ParamCode<glitch::core::vector4d<float>> {
    static constexpr std::uint8_t kCode = 8;
    static constexpr std::uint32_t kGate = 0x100;
};
template <>
struct ParamCode<glitch::video::SColor> {
    static constexpr std::uint8_t kCode = 16;
    static constexpr std::uint32_t kGate = 0x10000;
};
template <>
struct ParamCode<glitch::video::SColorf> {
    static constexpr std::uint8_t kCode = 17;
    static constexpr std::uint32_t kGate = 0x20000;
};

// Hooks that the owning categories provide. They are declared here and defined in material_parameters_part_1b.cpp:
//   destroyLight        last-reference release of CLight (the body of ~intrusive_ptr<CLight> at 0x5aa3c8). The
//                       port's body deletes the light; the original pushes the +0x50 node onto
//                       glitch::memory::Matrix4Pool only when the flag at +0x54 is clear, which a constructed
//                       light (+0x54 == 1) never is, and the port's pool does not take that node.
//   textureAddRef       ++ of the IReferenceCounted count at +0x04 of an ITexture.
//   textureDrop         IReferenceCounted::drop of an ITexture (0x31d584).
//   textureStateWord    the packed state word of an ITexture at +0x38 (type bits 0-1).
void destroyLight(glitch::video::CLight* light);
void textureAddRef(glitch::video::ITexture* texture);
void textureDrop(glitch::video::ITexture* texture);
std::uint32_t textureStateWord(const glitch::video::ITexture* texture);

// ---------------------------------------------------------------------------------------------
// Owner G (CGlobalMaterialParameterManager). Index forms.
// ---------------------------------------------------------------------------------------------
// setParameter(id, index, T const&): own type only, element index*size.
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::video::SColorf& src);  // 0x5c4754
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::video::SColor& src);   // 0x5c47fc
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::vector4d<float>& src);  // 0x5c4990
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::vector3d<float>& src);  // 0x5c4a4c
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::vector2d<float>& src);  // 0x5c4b04
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const float& src);                          // 0x5c4bb0
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::vector4d<int>& src);    // 0x5c4c50
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::vector3d<int>& src);    // 0x5c4d0c
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::vector2d<int>& src);    // 0x5c4dc4
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const int& src);                            // 0x5c4e70
// setParameterCvt(id, index, T const&): the gate, element 0 (the index only checks the bound).
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::vector2d<float>& src);  // 0x5c4298
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const float& src);                          // 0x5c4358
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::vector4d<int>& src);    // 0x5c442c
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::vector3d<int>& src);    // 0x5c4500
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::vector2d<int>& src);    // 0x5c45c8
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const int& src);                            // 0x5c4688
// ITexture and CLight element forms (the refcount hooks above; a stored pointer slot is sizeof(void*), not the
// original 4 bytes).
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, glitch::video::ITexture* const& src);  // 0x5c48a0
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, glitch::video::CLight* const& src);  // 0x5c5be0
int getParameter(const GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, glitch::video::CLight*& out);       // 0x5c5a40
int getParameterCvt(const GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, glitch::video::CLight*& out);    // 0x5c58ec
// 0x5be68c setParameter<intrusive_ptr<CLight>>: the entry must be the light type (18); a new use is taken on the light
// before it replaces the stored one, and the old light is released.
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, glitch::video::CLight* const& src);   // 0x5be68c
// 0x5c0d30 dropParameter(id): releases the pointers stored by a matrix (0x0b), texture (0x0c..0x0f) or light (0x12) entry
// and clears the slots; other value types are left alone.
void dropParameter(GlobalParameterStore& s, std::uint16_t id);                                                            // 0x5c0d30
// Array forms (pointer, stride in bytes).
int getParameterArrayCvt(const GlobalParameterStore& s, std::uint16_t id, glitch::video::ITexture** out, int stride);     // 0x5c4fa8
int getParameterArrayCvt(const GlobalParameterStore& s, std::uint16_t id, glitch::video::CLight** out, int stride);       // 0x5c518c
int setParameterArrayCvt(GlobalParameterStore& s, std::uint16_t id, glitch::video::CLight* const* src, int stride);      // 0x5c540c
int setParameterArray(GlobalParameterStore& s, std::uint16_t id, glitch::video::CLight* const* src, int stride);         // 0x5c568c

// ---------------------------------------------------------------------------------------------
// Owner M (CMaterial). Index forms (set), element index*size; the Cvt setters store element 0.
// ---------------------------------------------------------------------------------------------
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const int& src);                            // 0x5c623c
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector2d<int>& src);    // 0x5c62b4
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector3d<int>& src);    // 0x5c6350
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector4d<int>& src);    // 0x5c6408
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const float& src);                          // 0x5c64d4
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector2d<float>& src);  // 0x5c6564
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector3d<float>& src);  // 0x5c660c
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector4d<float>& src);  // 0x5c66d4
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::video::SColor& src);          // 0x5c67b4
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const int& src);                          // 0x5c6834
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector2d<int>& src);  // 0x5c6904
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector3d<int>& src);  // 0x5c69c4
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector4d<int>& src);  // 0x5c6a9c
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const float& src);                        // 0x5c6b8c
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector2d<float>& src);  // 0x5c6c60
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const glitch::core::vector3d<float>& src);  // 0x5c6d34

// Owner M. Index forms (get). getParameter reads element index; getParameterCvt reads element 0.
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, int& out);                             // 0x5c6e24
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector2d<int>& out);     // 0x5c6e84
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector3d<int>& out);     // 0x5c6ef0
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector4d<int>& out);     // 0x5c6f68
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, float& out);                          // 0x5c6fe4
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector2d<float>& out);  // 0x5c7044
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector3d<float>& out);  // 0x5c70b0
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector4d<float>& out);  // 0x5c7128
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::video::SColor& out);          // 0x5c71a4
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::video::SColorf& out);         // 0x5c7208
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, int& out);                         // 0x5c7274
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector2d<int>& out);   // 0x5c7310
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector3d<int>& out);   // 0x5c739c
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector4d<int>& out);   // 0x5c7430
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, float& out);                       // 0x5c74d0
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector2d<float>& out);  // 0x5c7574
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector3d<float>& out);  // 0x5c7600
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::core::vector4d<float>& out);  // 0x5c7694
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::video::SColor& out);       // 0x5c77c8
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, glitch::video::SColorf& out);      // 0x5c7954

// Owner M. Array forms (get, element stride in bytes; 0 means the element size).
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, glitch::video::SColorf* out, int stride);       // 0x5c7a90
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, glitch::video::SColor* out, int stride);        // 0x5c7c64
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, glitch::core::vector4d<float>* out, int stride); // 0x5c7e90
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, glitch::core::vector3d<float>* out, int stride); // 0x5c80a4
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, glitch::core::vector2d<float>* out, int stride); // 0x5c8198
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, float* out, int stride);                         // 0x5c8284
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, glitch::core::vector4d<int>* out, int stride);   // 0x5c839c
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, glitch::core::vector3d<int>* out, int stride);   // 0x5c8490
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, glitch::core::vector2d<int>* out, int stride);   // 0x5c8584
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, int* out, int stride);                            // 0x5c8670
int getParameterArray(const MaterialParameterStore& m, std::uint16_t id, glitch::video::SColorf* out, int stride);           // 0x5c874c
int getParameterArray(const MaterialParameterStore& m, std::uint16_t id, glitch::video::SColor* out, int stride);            // 0x5c8804
int getParameterArray(const MaterialParameterStore& m, std::uint16_t id, glitch::core::vector4d<float>* out, int stride);    // 0x5c88bc
int getParameterArray(const MaterialParameterStore& m, std::uint16_t id, glitch::core::vector3d<float>* out, int stride);    // 0x5c8970
int getParameterArray(const MaterialParameterStore& m, std::uint16_t id, glitch::core::vector2d<float>* out, int stride);    // 0x5c8a24

// ---------------------------------------------------------------------------------------------
// Owner G rows added by owner K1b (src/ok1b-GlobalMaterialParameters.cpp). Stored pointers are sizeof(void*) slots, as above.
// ---------------------------------------------------------------------------------------------
// Texture and light pointer rows. A stride of 0 steps by sizeof(void*) (the original's 4); every element goes through the counted
// assign (the original's contiguous branch is a raw memcpy that takes no use).
int getParameterArray(const GlobalParameterStore& s, std::uint16_t id, glitch::video::ITexture** out, int stride);   // 0x5c24d8
int getParameterArray(const GlobalParameterStore& s, std::uint16_t id, glitch::video::CLight** out, int stride);     // 0x5c2198
int setParameterArray(GlobalParameterStore& s, std::uint16_t id, glitch::video::ITexture* const* src, int stride);   // 0x5c0c94
int setParameterArrayCvt(GlobalParameterStore& s, std::uint16_t id, glitch::video::ITexture* const* src, int stride);  // 0x5c0bd4
int getParameter(const GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, glitch::video::ITexture*& out);     // 0x5bf7dc
int getParameterCvt(const GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, glitch::video::ITexture*& out);  // 0x5beaa4
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, glitch::video::ITexture* const& src);  // 0x5c3f40
// Matrix rows: the value slot holds a pointer to a heap matrix (null = identity), written through detail::setMatrixParameter.
int getParameterArray(const GlobalParameterStore& s, std::uint16_t id, glitch::core::CMatrix4<float>* out, int stride);       // 0x5c091c
int getParameter(const GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, glitch::core::CMatrix4<float>& out);   // 0x5c09ec
int setParameterArray(GlobalParameterStore& s, std::uint16_t id, const glitch::core::CMatrix4<float>* src, int stride);       // 0x5bee04
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const glitch::core::CMatrix4<float>& src);   // 0x5beed8
// setParameterElement(id, index, component, value): one component of an element; a matrix entry takes the component into its matrix.
int setParameterElement(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, std::uint32_t component, std::uint8_t value);  // 0x5becc4
int setParameterElement(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, std::uint32_t component, int value);          // 0x5beb84
int setParameterElement(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, std::uint32_t component, float value);        // 0x5c0aa8

}  // namespace glitch::video::detail::part1b

namespace glitch::video::detail {

// 0x5bb280 grabParameter<boost::intrusive_ptr<ITexture>>(intrusive_ptr<ITexture>*, unsigned int) and 0x5bb5b0
// grabParameter<boost::intrusive_ptr<CLight>>(...): takes a use on each of the `count` stored pointers (the in-place copy of a pointer
// slot after its bytes were copied). Defined in src/ok1b-GlobalMaterialParameters.cpp.
template <class P>
void grabParameter(P* slots, unsigned int count);

}  // namespace glitch::video::detail
