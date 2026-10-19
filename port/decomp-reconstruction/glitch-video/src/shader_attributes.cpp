#include "glitch-video/shader_attributes.hpp"

#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-video/shader_manager.hpp"
#include "glitch-video/video_names.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

// 0x5e4a4c _ZN6glitch5video7IShaderC1EtPKcPNS0_12IVideoDriverE
// 0x5e4ae0 _ZN6glitch5video7IShaderC2EtPKcPNS0_12IVideoDriverE
IShader::IShader(uint16_t id, const char* name, IVideoDriver* driver)
    : m_driver(driver), m_name(name != nullptr ? name : "") {
    referenceCounter = 0;
    // Stage records, attribute list and mask start at zero.
    m_vertexAttributeDefs = nullptr;
    m_vertexAttributeMask = 0;
    m_vertexAttributeDefCount = 0;
    m_unknown3d = 0xff;
    m_unknown3e = 1;
    m_id = id;
}

// 0x5e49e8 _ZN6glitch5video7IShaderD1Ev / 0x5e4f04 D2 / 0x5e4c18 D0
// Tells the driver the shader is gone (IVideoDriver::onShaderDestroyed, vtable +0x214), then frees the name (the string
// member does that). The null test is a port guard: the original dereferences the driver.
IShader::~IShader() {
    if (m_driver != nullptr) {
        m_driver->onShaderDestroyed(this);
    }
}

// 0x5e4940 _ZNK6glitch5video7IShader26getVertexAttributeDefIndexENS0_18E_VERTEX_ATTRIBUTEE
uint32_t IShader::getVertexAttributeDefIndex(E_VERTEX_ATTRIBUTE attribute) const {
    for (uint32_t i = 0; i < m_vertexAttributeDefCount; ++i) {
        if (m_vertexAttributeDefs[i].attribute == attribute) {
            return i;
        }
    }
    return 0xff;
}

// 0x5e48e4 _ZNK6glitch5video7IShader14getParameterIDENS0_23E_SHADER_PARAMETER_TYPEENS0_14E_SHADER_STAGEEt
// Stage 2 and above have no record in the port (see the header).
uint32_t IShader::getParameterID(E_SHADER_PARAMETER_TYPE parameterType, uint32_t stage, uint16_t index) const {
    if (stage >= 2) {
        return 0xffff;
    }
    const SShaderStageParameters& list = m_stageParameters[stage];
    const uint32_t count = list.count;
    for (uint32_t i = index; i < count; ++i) {
        if (list.parameters[i].parameterType == parameterType) {
            return i;
        }
    }
    return 0xffff;
}

// 0x5e4b74 _ZNK6glitch5video7IShader14getParameterIDEPKcNS0_14E_SHADER_STAGEEt
// The index, from `index` on, of the first parameter of the stage whose name is that string: the name is looked up in the shared
// string heap without creating it (a name nobody holds is no parameter: 0xffff) and compared by identity with the parameters'
// shared names. A use is held on the looked-up record during the search and given back after (released if it was the last).
// Stages 2 and above have no record in the port (see the header) and give 0xffff. The original's not-found return is shown by the
// decompiler as a bogus address; it is 0xffff (the value of the index form above).
uint32_t IShader::getParameterID(const char* name, uint32_t stage, uint16_t index) const {
    using glitch::core::detail::SSharedStringData;
    SSharedStringData* data = glitch::core::detail::getSharedString(glitch::core::detail::sharedStringHeapTable(), name, true);
    if (data == nullptr || stage >= 2) return 0xffff;
    ++data->useCount;
    const SShaderStageParameters& list = m_stageParameters[stage];
    uint32_t found = index;
    if (found >= list.count) {
        found = 0xffff;
    } else {
        while (list.parameters[found].name != data) {
            ++found;
            if (found >= list.count) {
                found = 0xffff;
                break;
            }
        }
    }
    if (--data->useCount == 0) glitch::core::detail::releaseSharedString(glitch::core::detail::sharedStringHeapTable(), data);
    return found;
}

// 0x5e4998 _ZNK6glitch5video7IShader13getBatchBakerEv
// Forwards to the driver's shader manager (driver +0xd8) with this shader's id (+0x40).
boost::intrusive_ptr<IBatchBaker> IShader::getBatchBaker() const {
    return m_driver->m_shaderManager->getBatchBaker(m_id);
}

// 0x5e49b8 _ZNK6glitch5video7IShader16removeBatchBakerEv
void IShader::removeBatchBaker() const {
    m_driver->m_shaderManager->removeBatchBaker(m_id);
}

// 0x5e5188 _ZNK6glitch5video7IShader19serializeAttributesEPNS_2io11IAttributesE
// The name (read-only), a "Vertex Attributes" group of the vertex attribute definitions, the vertex attribute mask (read-only), then
// a group "Stage 0" and "Stage 1": the parameter count (read-only) and a "Parameters" group of the parameter definitions.
void IShader::serializeAttributes(io::IAttributes* attributes) const {
    attributes->addString("Name", m_name.c_str(), true);
    attributes->push("Vertex Attributes");
    for (uint32_t i = 0; i < m_vertexAttributeDefCount; ++i) m_vertexAttributeDefs[i].serializeAttributes(attributes);
    attributes->pop();
    attributes->addInt("VertexAttributeMask", static_cast<int>(m_vertexAttributeMask), true);
    char stageName[] = "Stage 0";
    for (int stage = 0; stage < 2; ++stage) {
        stageName[6] = static_cast<char>('0' + stage);
        attributes->push(stageName);
        const SShaderStageParameters& list = m_stageParameters[stage];
        attributes->addInt("ParameterCount", list.count, true);
        attributes->push("Parameters");
        for (uint32_t i = 0; i < list.count; ++i) list.parameters[i].serializeAttributes(attributes);
        attributes->pop();
        attributes->pop();
    }
}

// 0x5e4f68 _ZN6glitch5video7IShader21deserializeAttributesEPNS_2io11IAttributesE
// Reads the name, then the vertex attribute definitions that exist (rebuilding the mask from their attributes) and the stage
// parameters. The binary tests the first stage's parameter array for both stages, and reads the parameter groups under the name
// "Parameter" where serialize wrote "Parameters"; both are kept. The vertex attribute mask attribute, read last, replaces the
// rebuilt mask.
void IShader::deserializeAttributes(io::IAttributes* attributes) {
    const SShaderParameterDef* firstStage = m_stageParameters[0].parameters;
    m_name = attributes->getString("Name");
    attributes->push("Vertex Attributes");
    m_vertexAttributeMask = 0;
    for (uint32_t i = 0; i < m_vertexAttributeDefCount; ++i) {
        m_vertexAttributeDefs[i].deserializeAttributes(attributes);
        m_vertexAttributeMask |= 1u << m_vertexAttributeDefs[i].attribute;
    }
    attributes->pop();
    char stageName[] = "Stage 0";
    for (int stage = 0; stage < 2; ++stage) {
        stageName[6] = static_cast<char>('0' + stage);
        attributes->push(stageName);
        if (firstStage != nullptr) {
            attributes->push("Parameter");
            SShaderStageParameters& list = m_stageParameters[stage];
            for (uint32_t i = 0; i < list.count; ++i) list.parameters[i].deserializeAttributes(attributes);
            attributes->pop();
        }
        attributes->pop();
    }
    m_vertexAttributeMask = static_cast<uint32_t>(attributes->getInt("VertexAttributeMask"));
}

// 0x5e4e64 _ZNK6glitch5video25SShaderVertexAttributeDef19serializeAttributesEPNS_2io11IAttributesE
void SShaderVertexAttributeDef::serializeAttributes(io::IAttributes* attributes) const {
    attributes->push(name != nullptr ? glitch::core::detail::sharedStringText(name) : "");
    attributes->addEnum("Type", static_cast<int>(attribute), vertexAttributeNames(), false);
    attributes->addInt("Index", index, false);
    attributes->pop();
}

// 0x5e4c34 _ZN6glitch5video25SShaderVertexAttributeDef21deserializeAttributesEPNS_2io11IAttributesE
void SShaderVertexAttributeDef::deserializeAttributes(io::IAttributes* attributes) {
    attributes->push(name != nullptr ? glitch::core::detail::sharedStringText(name) : "");
    attribute = static_cast<uint16_t>(attributes->getEnum("Type", vertexAttributeNames()));
    index = static_cast<uint16_t>(attributes->getInt("Index"));
    attributes->pop();
}

// 0x5e4cbc _ZNK6glitch5video19SShaderParameterDef19serializeAttributesEPNS_2io11IAttributesE
void SShaderParameterDef::serializeAttributes(io::IAttributes* attributes) const {
    attributes->push(name != nullptr ? glitch::core::detail::sharedStringText(name) : "");
    attributes->addEnum("Type", parameterType, shaderParameterTypeNames(), false);
    attributes->addEnum("ValueType", valueType, shaderParameterValueTypeNames(), true);
    attributes->addInt("SubID", arg, false);
    attributes->addInt("ArraySize", static_cast<int>(count), true);
    attributes->addInt("Index", static_cast<int>(offset), true);
    attributes->pop();
}

// 0x5e4ddc _ZN6glitch5video19SShaderParameterDef21deserializeAttributesEPNS_2io11IAttributesE
void SShaderParameterDef::deserializeAttributes(io::IAttributes* attributes) {
    attributes->push(name != nullptr ? glitch::core::detail::sharedStringText(name) : "");
    parameterType = static_cast<uint16_t>(attributes->getEnum("Type", shaderParameterTypeNames()));
    arg = static_cast<uint8_t>(attributes->getInt("SubID"));
    attributes->pop();
}

}  // namespace glitch::video
