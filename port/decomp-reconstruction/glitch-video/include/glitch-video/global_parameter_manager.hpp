// glitch::video::CGlobalMaterialParameterManager: the driver's table of global shader parameters (DynamicLight<n>,
// FogColor<n>, SceneAmbientLight, ...). Canonical definition (engine unification wave u1-video); the forward
// declarations elsewhere are replaced by this header.
//
// The original derives from IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase>, which derives from the
// name collection SIDedCollection<SShaderParameterDef, ushort, false, SPropeties, SValueTraits> (the object at
// +0x00..+0x27). The port keeps the typed accessors of that mixin in detail::SGlobalParameterOwner
// (material_parameters_bind_g.hpp), whose store holds the part1a entry records (value type, element count and byte offset
// per id; the records ARE the SShaderParameterDef fields +0x06, +0x08 and +0x0c) and the value buffer. The manager is
// therefore SGlobalParameterOwner plus the name collection m_defs, which supplies the names, ids and use counts; addParameter
// defines the matching store entry and the removal functions clear it.
//
// Layout of the original object (32-bit, 0x3c bytes; constructors 0x5b9e50 C2 / 0x5b9e8c C1 with an IVideoDriver*,
// IVideoDriver::IVideoDriver creates one when none is passed):
//   +0x00..+0x27  the name collection: entries (20 bytes: the SShaderParameterDef and the name-map iterator) at +0x18 .. +0x1c,
//                 next free id at +0x24, entry count at +0x26. The node's property word (SPropeties, 1 after construction) counts the
//                 users of the parameter (grabInternal / dropInternal).
//   +0x28  IVideoDriver*        +0x2c  value buffer start   +0x30  value buffer end (used bytes)   +0x34  value buffer capacity
//   +0x38  byte (1; cleared by the removal functions)   +0x39  byte: the buffer is packed (1)   +0x3a  byte: auto-packing (1)
#pragma once

#include <cstdint>

#include "glitch-video/material_parameters_bind_g.hpp"
#include "glitch-video/shader_parameter_def.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

// The name collection of the manager (the original's SIDedCollection<SShaderParameterDef, unsigned short, false,
// globalmaterialparametermanager::SPropeties, globalmaterialparametermanager::SValueTraits>).
using GlobalParameterDefCollection = glitch::core::detail::SIDedCollection<
    SShaderParameterDef, uint16_t, false, detail::globalmaterialparametermanager::SPropeties,
    detail::globalmaterialparametermanager::SValueTraits>;

class CGlobalMaterialParameterManager : public detail::SGlobalParameterOwner {
public:
    // 0x5b9e50 (C2) / 0x5b9e8c (C1): the empty collection, the driver, an empty value buffer and the three flag bytes (1).
    explicit CGlobalMaterialParameterManager(IVideoDriver* driver = nullptr);

    // 0x5bb560 (D1) / 0x5bb588 (D2): the value buffer is freed, then the collection.
    ~CGlobalMaterialParameterManager();

    // 0x5bb378: the id of a parameter name, 0xffff when it is not defined.
    uint16_t getId(const char* name) const;

    // 0x5b9d2c / 0x5b9d4c: add or remove a user of parameter `id` (the property word of its name node).
    void grabInternal(uint16_t id);
    void dropInternal(uint16_t id);
    // 0x5bc374: defines a parameter (name, type, value type, element count, size argument) and returns its id; 0xffff with a
    // log line when the name is empty or already defined, the type or value type is 255, or the count is 0.
    uint16_t addParameter(const char* name, E_SHADER_PARAMETER_TYPE type, E_SHADER_PARAMETER_VALUE_TYPE valueType,
                          uint32_t count, uint8_t size)
        asm("_ZN6glitch5video31CGlobalMaterialParameterManager12addParameterEPKcNS0_23E_SHADER_PARAMETER_TYPEENS0_29E_SHADER_PARAMETER_VALUE_TYPEEjh");
    // 0x5ba820 / 0x5ba8a0: packing of the value buffer.
    void pack();
    void setAutoPacking(bool enable);
    // 0x5c0f60 (a thunk to IMaterialParameters::dropParameters 0x5c0edc): drops the pointers held by every parameter, in name order.
    void clearParameters();
    // 0x5bafec: the definition of parameter `id`, null when the id is past the collection or unset.
    const SShaderParameterDef* getParameterDef(uint16_t id) const;
    // 0x5bd8d4 / 0x5be3ec: take a use on every stored matrix / texture / light after the value bytes were copied from another manager,
    // and set the first element of every parameter to its identity value (src/ok1b-GlobalMaterialParameters.cpp).
    void grabParameters();
    void initParametersToIdentity();
    // 0x5c11dc / 0x5c1220 / 0x5c126c: remove the unused / all / one parameter(s); when something was removed the buffer is marked
    // unpacked-checked and packed again if auto-packing is on. Return the number removed (1 or 0 for remove).
    int removeUnused();
    int removeAll();
    int remove(uint16_t id);

    // 0x5bd608 / 0x5be198: the definitions (name, type, value type, array size) in a "Definitions" group and the values in a "Content" group;
    // with bit 1 of the options set only the values.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options);
    // 0x5bcc80 / 0x5bda94 (IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase>::{serialize,deserialize}Attributes): every
    // parameter, in name order, as a group with its definition and its elements.
    void serializeParameters(io::IAttributes* attributes) const;
    void deserializeParameters(io::IAttributes* attributes);

    GlobalParameterDefCollection m_defs;  // +0x00
    IVideoDriver* m_driver = nullptr;     // +0x28
    uint32_t m_valueCapacity = 0;         // +0x34 - +0x2c: the allocation size of the value buffer (the buffer's used size is store().values.size())
    uint8_t m_flag38 = 1;                 // +0x38
    uint8_t m_packed = 1;                 // +0x39
    uint8_t m_autoPacking = 1;            // +0x3a

private:
    // Port bookkeeping: clears the store entries whose definition the collection no longer holds.
    void syncEntries();
};

}  // namespace glitch::video
