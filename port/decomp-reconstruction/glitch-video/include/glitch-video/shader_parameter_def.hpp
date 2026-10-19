// glitch::video::SShaderParameterDef: one shader parameter definition, 16 bytes in the original and the value type of the
// global parameter manager's name collection (SIDedCollection<SShaderParameterDef, ushort, false, SPropeties, SValueTraits>,
// whose 20-byte entry is this record plus the name-map iterator at +0x10). It is also the element of the per-stage
// parameter lists of IShader.
//
//   +0x00  SSharedStringHeapEntry::SData* the parameter name (a use is held on it; null in the invalid entry)
//   +0x04  uint16 E_SHADER_PARAMETER_TYPE  +0x06  uint8 E_SHADER_PARAMETER_VALUE_TYPE  +0x07  uint8 (the 'size' argument of
//          CGlobalMaterialParameterManager::addParameter)
//   +0x08  uint32 element count            +0x0c  uint32 byte offset of element 0 in the value buffer
//
// Counting (SEntry copy 0x5ba064, SEntry::set 0x5bc620, ~SShaderParameterDef 0x5ba5f8): a copy takes a use on the name; the
// destructor drops one and runs SSharedStringHeapEntry::SData::release (the last-use free) when the count read zero.
#pragma once

#include <cstdint>

#include "glitch-shared/shared_string_heap.hpp"

namespace glitch::io {
class IAttributes;
}  // namespace glitch::io

namespace glitch::video {

struct SShaderParameterDef {
    SShaderParameterDef() = default;
    SShaderParameterDef(const SShaderParameterDef& other);
    SShaderParameterDef& operator=(const SShaderParameterDef& other);
    ~SShaderParameterDef();  // 0x5ba5f8 (D1)

    glitch::core::detail::SSharedStringData* name = nullptr;  // +0x00
    uint16_t parameterType = 255;                             // +0x04  (the default-constructed entry 0x5b9fb8: 255, 0xff, 0xff, -1, -1)
    uint8_t valueType = 0xff;                                 // +0x06
    uint8_t arg = 0xff;                                       // +0x07
    uint32_t count = 0xffffffffu;                             // +0x08
    uint32_t offset = 0xffffffffu;                            // +0x0c

    // 0x5e4cbc: a group named after the parameter with its Type and ValueType (as choice names), SubID, ArraySize and Index.
    void serializeAttributes(io::IAttributes* attributes) const;
    // 0x5e4ddc: reads back the Type and the SubID of the parameter's group (the group is named after the parameter).
    void deserializeAttributes(io::IAttributes* attributes);
};

// One binding of a shader parameter to a material (or global) parameter, 4 bytes: bit 15 of the first halfword selects the shader
// stage (0 = vertex, 1 = fragment), its low 15 bits are the index of the shader's parameter definition in that stage's list, and
// the second halfword is the parameter id in the material. The render passes keep an array of them (SRenderPass +0x28, count at
// +0x2c); CProgrammableGLDriver::commitCurrentMaterialParametersAux walks it.
struct SShaderParameterBinding {
    uint16_t shaderParameter = 0;
    uint16_t materialParameter = 0;
};
static_assert(sizeof(SShaderParameterBinding) == 4, "a binding is two halfwords");

namespace detail::globalmaterialparametermanager {

// The record of the global manager's collection entries (SIdValue derives from it; node +0x18). unk00 is 1 after construction and
// counts the users of the parameter (CGlobalMaterialParameterManager::grabInternal / dropInternal).
struct SPropeties {
    int32_t unk00 = 1;  // +0x00
    // 0x5c0f64 _ZN6glitch5video6detail30globalmaterialparametermanager10SPropeties8onRemoveEPvt
    // The hook the collection's remove runs before it erases the entry: `owner` is the collection, which is the global manager's
    // name collection, and the parameter's stored pointers are dropped (IMaterialParameters::dropParameter 0x5c0d30). The
    // original hands the collection itself on as the manager (its collection is the manager's first member).
    void onRemove(void* owner, uint16_t id);
};

// Value traits of the global manager's collection (the SValueTraits the shared template calls): a definition is set when
// it holds a name; the count remove() tests is the record's user count (node +0x18, the SPropeties word), not the name's.
struct SValueTraits {
    static bool isSet(const SShaderParameterDef& def) { return def.name != nullptr; }
    static int useCount(const SShaderParameterDef& def) { return static_cast<int>(def.name->useCount); }
    static int useCount(const SShaderParameterDef&, const SPropeties& props) { return props.unk00; }
};

}  // namespace detail::globalmaterialparametermanager

}  // namespace glitch::video
