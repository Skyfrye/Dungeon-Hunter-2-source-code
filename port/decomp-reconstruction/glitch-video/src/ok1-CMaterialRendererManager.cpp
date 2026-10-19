// Owner K1: CMaterialRendererManager and its creation state (technique, pass and parameter definitions, binding, the pink
// wireframe fallback). Transcribed from Hex-Rays (libDungeonHunter2.so, ARM 32-bit) with the host layout of
// material_renderer_manager.hpp: the std::list / std::map containers of the original are the port's std containers, the
// shared-string handles are SSharedStringData* with explicit use counts, and every word that is a pointer in the original is a
// host pointer. Offsets of the original are in the comments.
#include <array>
#include <new>
#include <cstdio>
#include <cstring>
#include <map>
#include <string>
#include <vector>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/batch_baker.hpp"
#include "glitch-video/gl_small.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/material_technique_maps_reader.hpp"
#include "glitch-video/null_shader_manager.hpp"
#include "glitch-video/render_state.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/shader_manager.hpp"
#include "glitch-video/video_driver.hpp"

// 0x9f6cc8 glitch::BakerMap: the global std::map<unsigned int, glitch::video::IBatchBaker*> of the batch bakers (its initializer is the
// static constructor of IBatchBaker.cpp, _GLOBAL__I_.._source_glitch_video_IBatchBaker.cpp 0x60ac2c).
namespace glitch {
std::map<unsigned int, glitch::video::IBatchBaker*> BakerMap;
}  // namespace glitch

namespace glitch::video {

namespace {

using glitch::core::detail::SSharedStringData;
using SCreationState = CMaterialRendererManager::SCreationState;
using SParameterDef = SCreationState::SParameterDef;
using SPassBinding = SCreationState::SPassBinding;
using detail::material_renderer_manager::STechniqueNode;

constexpr glitch::ELOG_LEVEL kError = glitch::ELL_ERROR;      // 3
constexpr glitch::ELOG_LEVEL kWarning = glitch::ELL_WARNING;  // 2

// SSharedStringHeapEntry::SData::get(text, lookup only): the interned record of the text, null when it is not interned (or null/empty).
SSharedStringData* lookupName(const char* text) {
    return glitch::core::detail::getSharedString(glitch::core::detail::sharedStringHeapTable(), text, true);
}

// A use dropped by the pattern `if ((*data)-- == 1) SData::release(data)`.
void dropUse(SSharedStringData* data) {
    if (data != nullptr && data->useCount-- == 1) {
        glitch::core::detail::releaseSharedString(glitch::core::detail::sharedStringHeapTable(), data);
    }
}

// The text of a record: the original passes `record + 4` (the committed text) and null for a null record.
const char* nameText(const SSharedStringData* data) { return glitch::core::detail::sharedStringText(data); }

IShader* shaderOf(const SRenderPass& pass) { return static_cast<IShader*>(pass.shader); }

// The "increment the name" step both beginMaterialRenderer (0x5ddaec) and beginTechnique (0x5dd80c) write out by hand: the text of
// `buffer` from index `length` on is a counter of letters 'A'..'Z' whose last digit is at `last`; it is incremented, a carry turns
// the 'Z's into 'A's and, when every digit overflowed, one more 'A' digit is appended. False when the counter would pass index
// 0x3f6 (the buffer holds 0x3f8 bytes).
bool incrementSuffix(char* buffer, size_t length, size_t& last) {
    const unsigned char current = static_cast<unsigned char>(buffer[last]);
    if (current != 'Z') {
        buffer[last] = static_cast<char>(current + 1);
        return true;
    }
    const size_t grown = last + 1;
    if (grown > 0x3f6) return false;
    buffer[grown] = 'A';
    size_t index = last;
    for (;;) {
        buffer[index] = 'A';
        if (length >= index) break;  // the first digit of the counter has been reset
        --index;
        const unsigned char digit = static_cast<unsigned char>(buffer[index]);
        if (digit != 'Z') {
            buffer[index] = static_cast<char>(digit + 1);
            break;
        }
    }
    last = grown;
    return true;
}

// SShaderParameterTypeInspection::Convertions (19 words, ELF 0x8e2c58): the value types a stored value type converts from, one bit
// per source type. bindParameter 0x5da160 tests `Convertions[shaderValueType] & (1 << definitionValueType)`.
bool convertible(uint32_t shaderValueType, uint32_t valueType) {
    static const uint32_t kConvertions[19] = {0x1,   0x22,  0x4,    0x8,    0x10,   0x22,    0x40,    0x80,    0x30100, 0x200,
                                              0x400, 0x800, 0x1000, 0x2000, 0x4000, 0x8000, 0x30100, 0x30100, 0x40000};
    return shaderValueType < 19 && valueType < 32 && (kConvertions[shaderValueType] & (1u << valueType)) != 0;
}

constexpr size_t kNameBufferSize = 0x3f8;  // allocProcessBuffer(1016) of the two begin functions

// SShaderParameterTypeInspection::ValueTypeSize (ELF 0x8e2ca4, 19 bytes), with the original's 4-byte pointer-valued types: the
// offsets endMaterialRenderer assigns are the original's value-buffer offsets.
uint32_t valueTypeSize(uint32_t valueType) {
    static const uint8_t kSizes[19] = {1, 4, 8, 12, 16, 4, 8, 12, 16, 16, 0x24, 4, 4, 4, 4, 4, 4, 16, 4};
    return valueType < 19 ? kSizes[valueType] : 0;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------------
// SCreationState

// 0x5dbac0 _ZN6glitch5video24CMaterialRendererManager14SCreationState13findTechniqueEPKc
// Looks the name up in the shared-string heap without creating it, takes a use for the walk, and compares each technique's name
// record with it. The use is dropped again afterwards, which frees a record nobody else holds.
STechnique* CMaterialRendererManager::SCreationState::findTechnique(const char* name) {
    SSharedStringData* record = lookupName(name);
    if (record == nullptr) return nullptr;
    ++record->useCount;
    STechnique* result = nullptr;
    for (STechniqueNode* node = m_techniques.begin(); node != &m_techniques.head; node = node->next) {  // list node +0x08..: the payload
        if (node->technique.name == record) {
            result = &node->technique;
            break;
        }
    }
    dropUse(record);
    return result;
}

// 0x5dc824 _ZN6glitch5video24CMaterialRendererManager14SCreationState13makeTechniqueEv
STechnique* CMaterialRendererManager::SCreationState::makeTechnique() {
    SSharedStringData* name = m_techniqueName.data();  // +0x04
    if (name == nullptr) {
        os::Printer::log("Ending an inexisting technique definition", kError);
        return nullptr;
    }
    STechnique* result = nullptr;
    const uint8_t passCount = m_pinkCounter24;  // +0x24, the passes added since the technique began
    if (passCount != 0) {
        // The pass array (52 bytes per pass in the original) and its holder node (+0x1c list), then the passes copied from the pending
        // list (+0x10), each taking a use on its shader.
        m_passArrays.emplace_back(passCount);
        std::vector<glitch::video::SRenderPass>& array = m_passArrays.back();
        const SPassNode* source = m_passSentinel.next;
        for (uint8_t i = 0; i < passCount; ++i) {
            glitch::video::SRenderPass& pass = array[i];
            std::memcpy(pass.stateWords, source->pass.stateWords, sizeof pass.stateWords);  // +0x00..+0x1f
            pass.shader = source->pass.shader;                                                // +0x20, counted
            if (pass.shader != nullptr) ++pass.shader->referenceCounter;
            pass.bindings = source->pass.bindings;                                            // +0x24
            pass.unknown28 = source->pass.unknown28;                                          // +0x28
            pass.unknown2c = source->pass.unknown2c;                                          // +0x2c
            pass.unknown2e = source->pass.unknown2e;                                          // +0x2e
            pass.flag30 = source->pass.flag30;                                                // +0x30
            source = source->next;
        }
        // The technique node (0x14 bytes): name (a use is taken for the node), pass count, 0, pass array; appended at the tail.
        STechniqueNode* node = new STechniqueNode();
        ++name->useCount;
        node->technique.name = name;
        node->technique.passCount = passCount;
        node->technique.flag05 = 0;
        node->technique.passes = array.data();
        node->next = &m_techniques.head;
        node->prev = m_techniques.head.prev;
        m_techniques.head.prev->next = node;
        m_techniques.head.prev = node;
        m_passCursor = nullptr;  // +0x18
        ++m_flag25;              // +0x25, techniques made
        m_pinkCounter24 = 0;     // +0x24
        m_techniqueName = nullptr;  // SSharedString::operator=: the state's own use is dropped
        result = &node->technique;
    } else {
        m_techniqueName = nullptr;
    }
    return result;
}

// 0x5dca40 _ZN6glitch5video24CMaterialRendererManager14SCreationState12addParameterERKNS_4core13SSharedStringENS0_23E_SHADER_PARAMETER_TYPEENS0_29E_SHADER_PARAMETER_VALUE_TYPEEjb
CMaterialRendererManager::SCreationState::SParameterDef* CMaterialRendererManager::SCreationState::addParameter(
    const glitch::core::SSharedString& nameHandle, E_SHADER_PARAMETER_TYPE type, E_SHADER_PARAMETER_VALUE_TYPE valueType,
    uint32_t count, bool report) {
    if (type != 18 && type != 255 && type > 18 && type <= 27) {
        os::Printer::log("Light parameter subtypes not allowed in materials, only in shaders.", kError);
        return nullptr;
    }
    if (static_cast<uint32_t>(type - 34) <= 0x1c) {
        os::Printer::log("Can not add automatic parameters to materials.", kError);
        return nullptr;
    }
    if (type == 33) {
        os::Printer::log("Can not add automatically bound parameters to materials.", kError);
        return nullptr;
    }
    glitch::core::SScopedEnableProcessBufferHeapExcess excess(true);
    SSharedStringData* name = nameHandle.data();
    if (name != nullptr) ++name->useCount;  // the temporary's use
    // The pair (key, definition) is built on the stack with a use for the key and one for the definition's name, then inserted;
    // when the name exists already the temporaries are dropped again.
    auto inserted = m_parameters.try_emplace(name);
    SParameterDef* def = &inserted.first->second;
    if (inserted.second) {
        if (name != nullptr) name->useCount += 2;  // the key, and the definition's name
        def->name = name;
        def->parameterType = static_cast<uint16_t>(type);   // +0x04
        def->valueType = static_cast<uint8_t>(valueType);   // +0x06
        def->arg = 0xff;                                    // +0x07
        def->count = count;                                 // +0x08
        def->offset = 0xffffffffu;                          // +0x0c
        def->next = nullptr;                                // +0x10
        def->id = 0xffffu;                                  // +0x14
        def->useCount = 0;                                  // +0x18
        def->typeOpen = (type == 255);                      // +0x1c
        def->valueTypeOpen = (valueType == 255);            // +0x1d
        def->countOpen = (count == 0xffffffffu);            // +0x1e
    }
    dropUse(name);  // the temporary's use
    if (inserted.second) {
        // Append to the creation-order list (+0x4c first, +0x50 last).
        if (m_lastParameter == nullptr) {
            m_firstParameter = def;
        } else {
            m_lastParameter->next = def;
        }
        m_lastParameter = def;
        glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
        return def;
    }
    if (report) {
        const char* text = nameText(name);
        std::string message = "Duplicate parameter name : ";
        if (text != nullptr) message += text;
        os::Printer::log(message.c_str(), kError);
        glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
        return nullptr;
    }
    glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
    return def;
}

// ---------------------------------------------------------------------------------------------------------------------------
// CMaterialRendererManager: lookups

// 0x5dbb48 _ZNK6glitch5video24CMaterialRendererManager14getTechniqueIDEPKc
STechnique* CMaterialRendererManager::getTechniqueID(const char* name) const {
    return m_creationState != nullptr ? m_creationState->findTechnique(name) : nullptr;
}

// 0x5dbb60 _ZNK6glitch5video24CMaterialRendererManager9getNameIDEPKci
int32_t CMaterialRendererManager::getNameID(const char* name, int group) const {
    SSharedStringData* record = lookupName(name);
    if (record == nullptr) return -1;
    ++record->useCount;
    const auto& map = m_nameMaps[group];  // the original indexes this + 0x50 + 0x18 * group
    const auto found = map.find(record);
    const int32_t result = found == map.end() ? -1 : static_cast<int32_t>(found->second);
    dropUse(record);
    return result;
}

// 0x5dbc04 _ZNK6glitch5video24CMaterialRendererManager22getParameterIDInternalERKNS_4core13SSharedStringE
// Port guard: with no creation state the original reads through a null state; here the answer is null.
CMaterialRendererManager::SCreationState::SParameterDef* CMaterialRendererManager::getParameterIDInternal(
    const glitch::core::SSharedString& name) const {
    if (name.data() == nullptr || m_creationState == nullptr) return nullptr;
    const auto found = m_creationState->m_parameters.find(name.data());
    return found == m_creationState->m_parameters.end() ? nullptr : &found->second;
}

// 0x631b58 _ZNK6glitch5video24CMaterialRendererManager14getParameterIDEPKc
CMaterialRendererManager::SCreationState::SParameterDef* CMaterialRendererManager::getParameterID(const char* name) const {
    SSharedStringData* record = lookupName(name);
    if (record != nullptr) ++record->useCount;
    SParameterDef* result = getParameterIDInternal(glitch::core::SSharedString(record));
    dropUse(record);
    return result;
}

// 0x5dcd64 _ZN6glitch5video24CMaterialRendererManager20addParameterInternalERKNS_4core13SSharedStringENS0_23E_SHADER_PARAMETER_TYPEENS0_29E_SHADER_PARAMETER_VALUE_TYPEEjb
CMaterialRendererManager::SCreationState::SParameterDef* CMaterialRendererManager::addParameterInternal(
    const glitch::core::SSharedString& name, E_SHADER_PARAMETER_TYPE type, E_SHADER_PARAMETER_VALUE_TYPE valueType, uint32_t count,
    bool report) {
    if (m_creationState == nullptr) return nullptr;
    if (valueType != 255) {
        // A texture value type (12..15) needs the texture parameter type 2, and the texture type 2 needs a texture value type.
        const bool textureValue = static_cast<uint32_t>(valueType - 12) <= 3;
        if (textureValue ? (type != 2) : (type == 2)) {
            os::Printer::log("texture parameter type and value type mismatch", kError);
            return nullptr;
        }
    }
    return m_creationState->addParameter(name, type, valueType, count, report);
}

// ---------------------------------------------------------------------------------------------------------------------------
// CMaterialRendererManager: techniques and passes

// 0x5dd80c _ZN6glitch5video24CMaterialRendererManager14beginTechniqueEPKcb
int CMaterialRendererManager::beginTechnique(const char* name, bool exact) {
    SCreationState* state = m_creationState;  // +0x90
    if (state == nullptr) {
        os::Printer::log("Trying to create a technique with no renderer in construction", kError);
        return 0;
    }
    if (state->m_techniqueName.data() != nullptr) {
        os::Printer::log("Trying to create a technique while already creating one", kError);
        return 0;
    }
    if (state->m_flag25 > 0x1f) {
        os::Printer::logf(static_cast<glitch::ELOG_LEVEL>(5),
                          "creating material renderer %s: can not add technique %s, maximum number of techniques reached (%d)",
                          state->m_name, name, static_cast<int>(state->m_flag25));
        return 0;
    }
    if (name != nullptr && *name == '\0') {
        os::Printer::log("Empty technique name", kError);
        return 0;
    }
    if (exact) {
        if (getTechniqueID(name) != nullptr) {
            os::Printer::log("Technique name exists already in material renderer under construction", kError);
            return 0;
        }
        m_creationState->m_techniqueName = name;
        return 1;
    }
    if (name == nullptr) name = "Technique";
    glitch::core::SScopedEnableProcessBufferHeapExcess excess(true);
    char* buffer = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(static_cast<int>(kNameBufferSize)));
    std::strcpy(buffer, name);
    if (getTechniqueID(buffer) != nullptr) {
        const size_t length = std::strlen(name);
        std::memset(&buffer[length + 1], 0, 1015 - length);
        buffer[length] = 'A';
        size_t last = length;
        while (getTechniqueID(buffer) != nullptr) {
            if (!incrementSuffix(buffer, length, last)) {
                glitch::core::releaseProcessBuffer(buffer);
                buffer = nullptr;
                break;
            }
        }
    }
    m_creationState->m_techniqueName = buffer;
    glitch::core::releaseProcessBuffer(buffer);
    if (m_creationState->m_techniqueName.data() != nullptr) {
        glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
        return 1;
    }
    os::Printer::log("Could not generate a unique technique name within material renderer under construction", kError);
    glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
    return 0;
}

// 0x5dd664 _ZN6glitch5video24CMaterialRendererManager12endTechniqueEbt
STechnique* CMaterialRendererManager::endTechnique(bool autoBind, uint16_t lightBase) {
    if (!isCreatingTechnique("Ending a technique when none is begun")) return nullptr;
    STechnique* technique = m_creationState->makeTechnique();
    if (technique == nullptr) return nullptr;
    if (autoBind && technique->passCount != 0) {
        uint16_t lightId = 0;
        for (uint8_t p = 0; p < technique->passCount; ++p) {
            SRenderPass& pass = const_cast<SRenderPass&>(technique->passes[p]);
            IShader* shader = shaderOf(pass);
            if (shader == nullptr) continue;
            for (E_SHADER_STAGE stage = 0; stage < 2; ++stage) {
                const SShaderStageParameters& list = shader->m_stageParameters[stage];  // +0x28 + 8 * stage
                for (uint16_t index = 0; index < list.count; ++index) {
                    const uint32_t type = list.parameters[index].parameterType;
                    if (static_cast<uint32_t>(type - 34) > 0x1c && type != 33) {
                        lightId = autoAddAndBindParameter(pass, index, stage, lightId, lightBase);
                    }
                }
            }
        }
    }
    // The pink binds recorded since the technique began (addPinkBind), then the cursor goes back to the first node for reuse.
    SCreationState* state = m_creationState;
    SCreationState::SPinkBindNode* const end = state->m_pinkCursor;
    SCreationState::SPinkBindNode* node = state->m_pinkSentinel.next;
    if (node == end) return technique;
    for (; node != end; node = node->next) {
        const STemporaryID parameter = node->data.id;                 // node +0x08
        const uint8_t pass = node->data.flag;                         // node +0x0c
        const uint16_t shaderParameter = node->data.value;            // node +0x0e
        if (const uintptr_t def = getParameterDef(parameter)) {
            bindParameter(parameter, static_cast<E_SHADER_PARAMETER_TYPE>(reinterpret_cast<SParameterDef*>(def)->parameterType),
                          STemporaryID{reinterpret_cast<uintptr_t>(technique)}, pass, shaderParameter, 0);
        }
    }
    m_creationState->m_pinkCursor = m_creationState->m_pinkSentinel.next;
    return technique;
}

// 0x5dcf2c _ZN6glitch5video24CMaterialRendererManager13addRenderPassERKN5boost13intrusive_ptrIKNS0_7IShaderEEERKNS0_6detail10renderpass12SRenderStateERKNS9_8material12SRenderStateE
int CMaterialRendererManager::addRenderPass(const boost::intrusive_ptr<const IShader>& shader,
                                            const detail::renderpass::SRenderState& state,
                                            const detail::material::SRenderState& materialState) {
    if (!isCreatingTechnique("Adding a renderpass outside of technique definition")) return 0;
    if (shader) {
        m_creationState->addRenderPass(const_cast<IShader*>(shader.get()), state, materialState);
        return 1;
    }
    createPinkWireFrameRenderPass();
    return 0;
}

// 0x5dcf90 _ZN6glitch5video24CMaterialRendererManager13addRenderPassEtRKNS0_6detail10renderpass12SRenderStateERKNS2_8material12SRenderStateE
int CMaterialRendererManager::addRenderPass(uint16_t shaderId, const detail::renderpass::SRenderState& state,
                                            const detail::material::SRenderState& materialState) {
    if (!isCreatingTechnique("Adding a renderpass outside of technique definition")) return 0;
    boost::intrusive_ptr<IShader> shader = m_driver->m_shaderManager->m_shaders.get(shaderId)->value;  // driver +0xd8, entry id
    if (!shader) os::Printer::log("could not find shader", kError);
    boost::intrusive_ptr<const IShader> constShader(shader.get(), true);
    return addRenderPass(constShader, state, materialState);
}

// 0x5dd088 _ZN6glitch5video24CMaterialRendererManager13addRenderPassEPKcRKNS0_6detail10renderpass12SRenderStateERKNS4_8material12SRenderStateE
int CMaterialRendererManager::addRenderPass(const char* shaderName, const detail::renderpass::SRenderState& state,
                                            const detail::material::SRenderState& materialState) {
    if (!isCreatingTechnique("Adding a renderpass outside of technique definition")) return 0;
    const uint16_t id = m_driver->m_shaderManager->m_shaders.getId(shaderName);
    return addRenderPass(id, state, materialState);
}

// ---------------------------------------------------------------------------------------------------------------------------
// CMaterialRendererManager: binding

// 0x5da160 _ZN6glitch5video24CMaterialRendererManager13bindParameterEPKNS0_19SShaderParameterDefEtNS0_23E_SHADER_PARAMETER_TYPEERNS0_11SRenderPassEtNS0_14E_SHADER_STAGEE
// `definition` is the creation state's SParameterDef when globalId is 0xffff and the global manager's SShaderParameterDef otherwise.
int CMaterialRendererManager::bindParameter(const SShaderParameterDef* definition, uint16_t globalId, E_SHADER_PARAMETER_TYPE type,
                                            SRenderPass& pass, uint16_t shaderParameter, E_SHADER_STAGE stage) {
    IShader* shader = shaderOf(pass);
    SShaderStageParameters& list = shader->m_stageParameters[stage];  // +0x28 + 8 * stage
    if (list.count <= shaderParameter) {
        os::Printer::log("invalid shader parameter id", kError);
        return 0;
    }
    SShaderParameterDef& shaderParameterDef = list.parameters[shaderParameter];
    const uint32_t shaderType = shaderParameterDef.parameterType;
    uint32_t definitionType;
    if (shaderType == 2) {
        definitionType = definition->parameterType;
        if (definitionType != 2 && definitionType != 255) {
            os::Printer::log("texture parameter type mismatch", kError);
            return 0;
        }
    } else {
        definitionType = definition->parameterType;
        if (definitionType == 18 && type > 18 && type <= 27) {
            definitionType = 18;  // a light subtype bound to a light parameter: the type check below is skipped
            goto typeChecked;
        }
    }
    if (static_cast<uint32_t>(type) != definitionType) {
        os::Printer::log("invalid subtype", kError);
        return 0;
    }
typeChecked:
    if (static_cast<uint32_t>(type - 34) <= 0x1c || type == 33 ||
        (definitionType == 255 && (static_cast<uint32_t>(shaderType - 34) <= 0x1c || shaderType == 33))) {
        os::Printer::log("parameter type is not bindable", kError);
        return 0;
    }
    if (type != 255 && static_cast<uint32_t>(type) != shaderType) {
        // The shader's own parameter takes the bound type, once the definition's name says the shader type fits it.
        if (static_cast<uint32_t>(guessShaderParameterType(nameText(definition->name))) != shaderParameterDef.parameterType) {
            os::Printer::log("subtype mismatch with shader parameter type", kError);
            return 0;
        }
        boost::intrusive_ptr<IShader> registered = m_driver->m_shaderManager->m_shaders.get(shader->m_id)->value;  // driver +0xd8
        SShaderParameterDef& registeredDef = registered->m_stageParameters[stage].parameters[shaderParameter];
        SShaderParameterDef replacement(registeredDef);  // the copy takes a use on the name, the assignment swaps it, the copy drops it
        replacement.parameterType = static_cast<uint16_t>(type);
        registeredDef = replacement;
    }
    const uint32_t valueType = definition->valueType;
    if (valueType == 255 ||
        (((shaderType > 18 && shaderType <= 27) || shaderType == 18) && valueType == 18) ||
        convertible(shaderParameterDef.valueType, valueType)) {
        if (definition->count == 0xffffffffu || definition->count == shaderParameterDef.count) {
            // The index of the binding in the pass: the shader parameters of the earlier stages first, then this stage's.
            uint16_t index = 0;
            for (E_SHADER_STAGE s = 0; s < stage; ++s) {
                index = static_cast<uint16_t>(index + shader->m_stageParameters[s].count - shader->m_stageParameters[s].field04);
            }
            index = static_cast<uint16_t>(index + shaderParameter - list.field04);
            SPassBinding& binding = reinterpret_cast<SPassBinding*>(pass.bindings)[index];
            if (binding.global == 0) {
                if (SParameterDef* old = binding.definition) {
                    if (old->useCount-- == 1) old->arg = 0xff;
                    binding.definition = nullptr;
                }
            }
            binding.global = globalId != 0xffff;
            if (globalId == 0xffff) {
                SParameterDef* local = const_cast<SParameterDef*>(static_cast<const SParameterDef*>(definition));
                binding.definition = local;
                ++local->useCount;
                local->arg = shaderParameterDef.arg;
            } else {
                binding.globalId = globalId;
            }
            return 1;
        }
        os::Printer::log("parameter array size mismatch", kError);
        return 0;
    }
    os::Printer::log("parameter value type mismatch", kError);
    return 0;
}

// 0x5da5a0 _ZN6glitch5video24CMaterialRendererManager19bindGlobalParameterEtNS0_23E_SHADER_PARAMETER_TYPEENS1_12STemporaryIDEhtNS0_14E_SHADER_STAGEE
int CMaterialRendererManager::bindGlobalParameter(uint16_t globalId, E_SHADER_PARAMETER_TYPE type, STemporaryID technique,
                                                  uint8_t pass, uint16_t shaderParameter, E_SHADER_STAGE stage) {
    CGlobalMaterialParameterManager* globals = m_driver->m_globalParameters;  // driver +0xe4
    const auto* entry = globals->m_defs.get(globalId);
    if (entry->value.name == nullptr) {
        os::Printer::log("invalid global parameter", kError);
        return 0;
    }
    STechnique* tech = reinterpret_cast<STechnique*>(technique.value);
    if (tech == nullptr) {
        os::Printer::log("invalid technique", kError);
        return 0;
    }
    if (tech->passCount <= pass) {
        os::Printer::log("invalid pass", kError);
        return 0;
    }
    SRenderPass& renderPass = const_cast<SRenderPass&>(tech->passes[pass]);  // +0x08 array, 52 bytes per pass
    if (renderPass.shader == nullptr) {
        os::Printer::log("no shader in render pass", kError);
        return 0;
    }
    return bindParameter(&entry->value, globalId, type, renderPass, shaderParameter, stage);
}

// 0x5da6f0 _ZN6glitch5video24CMaterialRendererManager19bindGlobalParameterEtNS1_12STemporaryIDEhtNS0_14E_SHADER_STAGEE
int CMaterialRendererManager::bindGlobalParameter(uint16_t globalId, STemporaryID technique, uint8_t pass, uint16_t shaderParameter,
                                                  E_SHADER_STAGE stage) {
    CGlobalMaterialParameterManager* globals = m_driver->m_globalParameters;
    const auto* entry = globals->m_defs.get(globalId);
    if (entry->value.name == nullptr) {
        os::Printer::log("invalid global parameter", kError);
        return 0;
    }
    const E_SHADER_PARAMETER_TYPE globalType = entry->value.parameterType;
    if (globalType != 18) return bindGlobalParameter(globalId, globalType, technique, pass, shaderParameter, stage);
    STechnique* tech = reinterpret_cast<STechnique*>(technique.value);
    if (tech == nullptr) {
        os::Printer::log("invalid technique", kError);
        return 0;
    }
    if (tech->passCount > pass) {
        if (IShader* shader = shaderOf(tech->passes[pass])) {
            if (shader->m_stageParameters[stage].count > shaderParameter) {
                const E_SHADER_PARAMETER_TYPE shaderType = shader->m_stageParameters[stage].parameters[shaderParameter].parameterType;
                return bindGlobalParameter(globalId, shaderType, technique, pass, shaderParameter, stage);
            }
        }
    }
    os::Printer::log("invalib global bind parameters", kError);
    return 0;
}

// 0x5da83c _ZN6glitch5video24CMaterialRendererManager13bindParameterENS1_12STemporaryIDENS0_23E_SHADER_PARAMETER_TYPEES2_htNS0_14E_SHADER_STAGEE
int CMaterialRendererManager::bindParameter(STemporaryID parameter, E_SHADER_PARAMETER_TYPE type, STemporaryID technique,
                                            uint8_t pass, uint16_t shaderParameter, E_SHADER_STAGE stage) {
    if (m_creationState == nullptr || parameter.value == 0 || technique.value == 0) return 0;
    STechnique* tech = reinterpret_cast<STechnique*>(technique.value);
    if (tech->passCount <= pass) {
        os::Printer::log("invalid pass", kError);
        return 0;
    }
    return bindParameter(reinterpret_cast<SParameterDef*>(parameter.value), 0xffff, type, const_cast<SRenderPass&>(tech->passes[pass]),
                         shaderParameter, stage);
}

// 0x631bc4 _ZN6glitch5video24CMaterialRendererManager13bindParameterENS1_12STemporaryIDES2_htNS0_14E_SHADER_STAGEE
int CMaterialRendererManager::bindParameter(STemporaryID parameter, STemporaryID technique, uint8_t pass, uint16_t shaderParameter,
                                            E_SHADER_STAGE stage) {
    const uintptr_t definition = getParameterDef(parameter);
    if (definition == 0) return 0;
    return bindParameter(parameter, static_cast<E_SHADER_PARAMETER_TYPE>(reinterpret_cast<SParameterDef*>(definition)->parameterType),
                         technique, pass, shaderParameter, stage);
}

// 0x5dd250 _ZN6glitch5video24CMaterialRendererManager23autoAddAndBindParameterERNS0_11SRenderPassEtNS0_14E_SHADER_STAGEEtt
uint16_t CMaterialRendererManager::autoAddAndBindParameter(SRenderPass& pass, uint16_t shaderParameter, E_SHADER_STAGE stage,
                                                           uint16_t lightId, uint16_t lightBase) {
    IShader* shader = shaderOf(pass);
    SShaderParameterDef& shaderDef = shader->m_stageParameters[stage].parameters[shaderParameter];
    uint16_t result = lightId;  // v41, the next light id
    uint32_t type = shaderDef.parameterType;
    uint32_t globalId;
    const SShaderParameterDef* bound = nullptr;  // v22
    CGlobalMaterialParameterManager* globals = m_driver->m_globalParameters;  // driver +0xe4

    if ((type > 18 && type <= 27) || type == 18) {
        // A light parameter: a dynamic light of the driver (the global DynamicLight<n>) or a light of the material.
        if (lightId >= lightBase) {
            const uint8_t offset = static_cast<uint8_t>(shaderDef.arg - shader->m_unknown3d);
            uint8_t light;
            if (lightBase > offset) {
                os::Printer::log(nameText(shaderDef.name), "binding dynamic light with ID value less than IDs of lights in material instance",
                                 kWarning);
                light = 0;
            } else {
                light = static_cast<uint8_t>(offset - lightBase);
                if (m_driver->m_dynamicLightLimit < light) {  // driver +0x3c
                    os::Printer::log(nameText(shaderDef.name), "light ID exceeds max dynamic light count", kWarning);
                    light = static_cast<uint8_t>(m_driver->m_dynamicLightLimit - 1);
                }
            }
            char text[32];
            std::snprintf(text, sizeof text, "%s%u", "DynamicLight", static_cast<unsigned>(light));
            globalId = globals->m_defs.getId(text);
            const auto* entry = globals->m_defs.get(static_cast<uint16_t>(globalId));
            bound = entry->value.name != nullptr ? &entry->value : nullptr;
        } else {
            glitch::core::SSharedString lightName(nullptr);
            // getLightParameterName returns the interned "light<digits>" name with a use, or null.
            lightName = getLightParameterName(nameText(shaderDef.name));
            if (lightName.data() == nullptr) {
                SSharedStringData* own = shaderDef.name;
                if (own != nullptr) {
                    ++own->useCount;
                    lightName = glitch::core::SSharedString(own);
                }
            }
            SParameterDef* existing = getParameterIDInternal(lightName);
            if (existing != nullptr) {
                bound = existing;
            } else {
                result = static_cast<uint16_t>(lightId + 1);
                bound = addParameterInternal(lightName, 18, 18, 0xffffffffu, false);
            }
            dropUse(lightName.data());
            globalId = 0xffff;
        }
    } else if (type > 28 && type <= 31) {
        // driver +0xfa + 2 * arg; the original does not bound arg, the port reads 0xffff (no id) past the four ids
        const uint16_t base = shaderDef.arg < 4 ? m_driver->m_fogColorIds[shaderDef.arg] : static_cast<uint16_t>(0xffff);
        globalId = type == 30 ? static_cast<uint16_t>(base + 2) : (type == 31 ? base : static_cast<uint16_t>(base + 1));
        const auto* entry = globals->m_defs.get(static_cast<uint16_t>(globalId));
        bound = entry->value.name != nullptr ? &entry->value : nullptr;
        type = entry->value.parameterType;
    } else if (type == 28) {
        globalId = m_driver->m_ambientLightId;  // driver +0x136
        const auto* entry = globals->m_defs.get(static_cast<uint16_t>(globalId));
        bound = entry->value.name != nullptr ? &entry->value : nullptr;
        type = entry->value.parameterType;
    } else {
        if (type - 18 <= 0xe) return result;
        glitch::core::SSharedString nameHandle(shaderDef.name);
        SParameterDef* added = addParameterInternal(nameHandle, 255, 255, 0xffffffffu, false);
        globalId = 0xffff;
        bound = added;
        type = added != nullptr ? added->parameterType : type;
    }
    if (bound != nullptr) {
        bindParameter(bound, static_cast<uint16_t>(globalId), static_cast<E_SHADER_PARAMETER_TYPE>(type), pass, shaderParameter, stage);
    }
    return result;
}

// ---------------------------------------------------------------------------------------------------------------------------
// CMaterialRendererManager: instances and bakers

// 0x5d9db8 _ZN6glitch5video24CMaterialRendererManager19clearUnusedInstanceEt
// A renderer that only the collection and its own cached material instance hold (count 2) loses that material when nobody else
// holds the material either (count 1).
void CMaterialRendererManager::clearUnusedInstance(uint16_t id) {
    CMaterialRenderer* renderer = get(id)->value.get();
    if (renderer == nullptr) return;
    if (renderer->m_refCount == 2) {
        detail::materialrenderermanager::SProperties* props = getProperties(id);  // the entry's name-map node, record at node +0x18
        if (props->material && props->material->m_refCount == 1) {
            props->material = nullptr;
        }
    }
}

// 0x5d9e94 _ZN6glitch5video24CMaterialRendererManager20clearUnusedInstancesEv
void CMaterialRendererManager::clearUnusedInstances() {
    for (auto it = ids.begin(); it != ids.end(); ++it) {
        clearUnusedInstance(it->second.id);  // node +0x22
    }
}

// 0x5dad20 _ZN6glitch5video24CMaterialRendererManager17removeAllBatchBakerEv
void CMaterialRendererManager::removeAllBatchBaker() {
    for (auto& baker : glitch::BakerMap) baker.second->drop();
    if (!glitch::BakerMap.empty()) glitch::BakerMap.clear();
    for (auto it = ids.begin(); it != ids.end(); ++it) {
        boost::intrusive_ptr<CMaterialRenderer> renderer = get(it->second.id)->value;
        if (!renderer) continue;
        for (uint8_t t = 0; t < renderer->m_techniqueCount; ++t) {
            const STechnique& technique = renderer->m_techniques[t];  // +0x18, 12 bytes each
            for (uint8_t p = 0; p < technique.passCount; ++p) {
                shaderOf(technique.passes[p])->removeBatchBaker();
            }
        }
    }
    m_driver->removeBatchBaker();
}

// ---------------------------------------------------------------------------------------------------------------------------
// CMaterialRendererManager: renderer creation

// 0x5ddaec _ZN6glitch5video24CMaterialRendererManager21beginMaterialRendererEPKcb
int CMaterialRendererManager::beginMaterialRenderer(const char* name, bool exact) {
    m_buildingId = 0xffff;  // +0x94
    if (m_creationState != nullptr) {
        os::Printer::log("Trying to create a newly material renderer while already creating one", kError);
        return 0;
    }
    char* buffer;
    if (exact) {
        m_buildingId = getId(name);
        if (m_buildingId != 0xffff) {
            os::Printer::log("Material renderer name exists already", name, glitch::ELL_INFORMATION);
            return 0;
        }
        glitch::core::SScopedEnableProcessBufferHeapExcess excess(true);
        buffer = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(static_cast<int>(std::strlen(name) + 1)));
        std::strcpy(buffer, name);
        glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
    } else {
        if (name == nullptr) name = "MaterialRenderer";
        glitch::core::SScopedEnableProcessBufferHeapExcess excess(true);
        buffer = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(static_cast<int>(kNameBufferSize)));
        std::strcpy(buffer, name);
        if (getId(buffer) != 0xffff) {
            // The name is taken: "A", "B" ... "Z", "AA" ... are appended until a free one is found.
            const size_t length = std::strlen(name);
            std::memset(&buffer[length + 1], 0, 1015 - length);
            buffer[length] = 'A';
            size_t last = length;
            while (getId(buffer) != 0xffff) {
                if (!incrementSuffix(buffer, length, last)) {
                    glitch::core::releaseProcessBuffer(buffer);
                    buffer = nullptr;
                    break;
                }
            }
        }
        if (buffer == nullptr) {
            os::Printer::log("Could not generate a unique material name", kError);
            glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
            return 0;
        }
        glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
    }
    // The listing allocates the state as a process-buffer block (allocProcessBuffer(0x58)) and builds it in place with the
    // constructor 0x5d7c5c. The block is the port's sizeof(SCreationState) (host width).
    int* block = glitch::core::allocProcessBuffer(static_cast<int>(sizeof(SCreationState)));
    if (block == nullptr) {
        // Deviation (named): the listing does not check the block; the port logs and refuses instead of building in null.
        os::Printer::log("Could not allocate the material renderer creation state", kError);
        return 0;
    }
    m_creationState = new (block) SCreationState(buffer);
    m_creationState->m_nameOwned = true;
    return 1;
}

// 0x5d9bd8 _ZN6glitch5video24CMaterialRendererManager23createPinkWireFrameShaderEv
// The shader of the fallback pink wireframe: GLSL sources for the GLSL drivers, a null shader for the null driver, none otherwise.
boost::intrusive_ptr<IShader> CMaterialRendererManager::createPinkWireFrameShader() {
    boost::intrusive_ptr<IShader> result;
    const E_DRIVER_TYPE type = m_driver->getDriverType();  // vtable +0x5c
    if ((type & 7) == 0) {
        if ((type & 0x18) != 0) {
            static char vertexText[] =
                "attribute highp   vec4 Vertex;\n"
                "uniform   mediump mat4 WorldViewProjectionMatrix;\n"
                "void main(void)\n"
                "{\n"
                "    gl_Position = WorldViewProjectionMatrix * Vertex;\n"
                "}\n";
            static char fragmentText[] =
                "void main(void)\n"
                "{\n"
                "    gl_FragColor = vec4(0.8, 0.3, 0.5, 1.0);\n"
                "}\n";
            glitch::io::CMemoryReadFile vertexFile(vertexText, 155, "PinkBadShaderVS.glsl", false);
            glitch::io::CMemoryReadFile fragmentFile(fragmentText, 65, "PinkBadShaderFS.glsl", false);
            CGLSLShaderManager* manager = static_cast<CGLSLShaderManager*>(m_driver->m_shaderManager);  // driver +0xd8
            result = manager->createShader("Pink Bad Shader", "PinkBadShaderVS.glsl", "", "PinkBadShaderFS.glsl", "", &vertexFile,
                                           &fragmentFile);
        } else if ((type & 0x360) == 0 && type == 0) {
            CNullShaderManager* manager = static_cast<CNullShaderManager*>(m_driver->m_shaderManager);
            result = manager->createShader("Pink Bad Shader");
        }
    }
    return result;
}

// 0x5dcdd4 _ZN6glitch5video24CMaterialRendererManager29createPinkWireFrameRenderPassEv
// A render pass with the pink shader and a wireframe-ish state, and a pink bind of the shader's colour parameter (type 6) to the
// parameter "invalid pink stuff", which endMaterialRenderer later fills with the pink colour.
void CMaterialRendererManager::createPinkWireFrameRenderPass() {
    boost::intrusive_ptr<IShader> shader = createPinkWireFrameShader();
    SRenderState state;
    state.m_word0c = (state.m_word0c & 0xfff87fffu) | 0x28000u;
    boost::intrusive_ptr<const IShader> held(shader.get(), true);
    const detail::renderpass::SRenderState passState(state);
    const detail::material::SRenderState materialState;
    addRenderPass(held, passState, materialState);
    held = nullptr;
    const uint32_t parameterId = shader ? shader->getParameterID(6, 0, 0) : 0xffffu;
    if (parameterId != 0xffff) {
        SParameterDef* definition = nullptr;
        if (m_creationState != nullptr) {
            SSharedStringData* name =
                glitch::core::detail::getSharedString(glitch::core::detail::sharedStringHeapTable(), "invalid pink stuff", false);
            if (name != nullptr) ++name->useCount;
            definition = addParameterInternal(glitch::core::SSharedString(name), 255, 255, 0xffffffffu, true);
            dropUse(name);
        }
        m_creationState->addPinkBind(STemporaryID{reinterpret_cast<uintptr_t>(definition)}, static_cast<uint16_t>(parameterId));
    }
}

// 0x5ddac0 _ZN6glitch5video24CMaterialRendererManager28createPinkWireFrameTechniqueEPKc
STechnique* CMaterialRendererManager::createPinkWireFrameTechnique(const char* name) {
    beginTechnique(name, true);
    createPinkWireFrameRenderPass();
    return endTechnique(false, 0);
}

// 0x5ddd28 _ZN6glitch5video24CMaterialRendererManager35createPinkWireFrameMaterialRendererEPKc
boost::intrusive_ptr<CMaterialRenderer> CMaterialRendererManager::createPinkWireFrameMaterialRenderer(const char* name) {
    if (beginMaterialRenderer(name, true)) createPinkWireFrameTechnique("invalid");
    const uint16_t id = endMaterialRenderer();
    return get(id)->value;
}

// 0x5dddb4 _ZN6glitch5video24CMaterialRendererManager19endMaterialRendererEv
// Closes the renderer definition: deduces the open types of the parameters from their bindings, numbers the used parameters and
// lays them out in the value buffer, rewrites every pass's binding table into the final 16-bit ids, builds the renderer and
// inserts it. A renderer without a valid technique is replaced by the pink wireframe one.
uint16_t CMaterialRendererManager::endMaterialRenderer() {
    if (get(m_buildingId)->value) {  // the renderer exists already (the name was taken at begin)
        const uint16_t id = m_buildingId;
        m_buildingId = 0xffff;
        return id;
    }
    SCreationState* state = m_creationState;
    if (state == nullptr) return 0xffff;  // port guard: the original reads through the null state
    if (state->m_techniques.empty()) createPinkWireFrameTechnique("**invalid**");
    glitch::core::SScopedEnableProcessBufferHeapExcess excess(true);

    // 1. Deduce the open type / value type / count of every definition from the shader parameters its bindings reach.
    for (STechniqueNode* node = state->m_techniques.begin(); node != &state->m_techniques.head; node = node->next) {
        for (uint8_t p = 0; p < node->technique.passCount; ++p) {
            SRenderPass& pass = const_cast<SRenderPass&>(node->technique.passes[p]);
            IShader* shader = shaderOf(pass);
            if (shader == nullptr) continue;
            SPassBinding* bindings = reinterpret_cast<SPassBinding*>(pass.bindings);
            uint16_t lights = 0;
            for (E_SHADER_STAGE stage = 0; stage < 2; ++stage) {
                const SShaderStageParameters& list = shader->m_stageParameters[stage];
                if (list.count <= list.field04) continue;
                for (uint16_t k = list.field04; k < list.count; ++k, ++bindings) {
                    const SShaderParameterDef& shaderParameter = list.parameters[k];
                    if (shaderParameter.parameterType == 33 || bindings->global != 0) continue;
                    SParameterDef* definition = bindings->definition;
                    if (definition == nullptr) {
                        if (static_cast<uint32_t>(shaderParameter.parameterType) - 18 > 0xe) {
                            std::string message = "unbound parameter ";
                            if (const char* text = nameText(shaderParameter.name)) message += text;
                            message += " for shader ";
                            message += shader->m_name;
                            os::Printer::log(message.c_str(), kWarning);
                        }
                        autoAddAndBindParameter(pass, k, stage, lights, 0);
                        if (bindings->global != 0) continue;
                        definition = bindings->definition;
                        if (definition == nullptr) continue;  // port guard: the original dereferences the definition
                    }
                    uint32_t type;
                    if (definition->typeOpen) {
                        if (definition->parameterType == 255) {
                            definition->parameterType = shaderParameter.parameterType;
                        } else if (shaderParameter.parameterType != definition->parameterType) {
                            os::Printer::log("parameter type deduction ambiguous", kWarning);
                        }
                        type = definition->parameterType;
                    } else {
                        type = definition->parameterType;
                    }
                    if (type == 18) ++lights;
                    if (definition->valueTypeOpen) {
                        if (type == 18) {
                            definition->valueType = 18;
                        } else if (definition->valueType == 255) {
                            definition->valueType = shaderParameter.valueType;
                        } else if (shaderParameter.valueType != definition->valueType) {
                            os::Printer::log("parameter value type deduction ambiguous", kWarning);
                        }
                    }
                    if (definition->countOpen) {
                        if (definition->count == 0xffffffffu) {
                            definition->count = shaderParameter.count;
                        } else if (shaderParameter.count != definition->count) {
                            os::Printer::logf(kWarning, "finalizing renderer %s: parameter %s array size deduction ambiguous", state->m_name,
                                              nameText(definition->name));
                        }
                    }
                }
            }
        }
    }

    // 2. Number the used parameters (a definition no pass binds is reported and dropped) and give each its value-buffer offset.
    uint16_t parameterCount = 0;
    for (SParameterDef* def = state->m_firstParameter; def != nullptr; def = def->next) {
        if (def->useCount != 0) {
            def->id = parameterCount;  // +0x14
            ++parameterCount;
        } else {
            os::Printer::logf(kWarning, "finalizing renderer %s: unused parameter: %s", state->m_name, nameText(def->name));
        }
    }
    std::vector<const SShaderParameterDef*> definitions;
    uint32_t valueBufferSize = 0;
    if (parameterCount != 0) {
        for (SParameterDef* def = state->m_firstParameter; def != nullptr; def = def->next) {
            if (def->useCount != 0) {
                definitions.push_back(def);
                def->offset = valueBufferSize;  // +0x0c
                valueBufferSize += def->count * valueTypeSize(def->valueType);
            }
        }
    }

    // 3. Rewrite every pass's binding table (8 bytes per entry) into the 16-bit ids: the numbered parameter for a local binding,
    //    the global id with bit 15 for a global one. Texture parameters (type 2) are remembered by (technique, pass, sub id), and the
    //    automatic parameters (type 33) of a pass take the id of the texture parameter with the same sub id.
    struct SAutomatic {
        uint8_t technique, pass, sub;
        uint16_t* slot;
    };
    std::map<std::array<uint8_t, 4>, uint16_t> textureIds;  // SPassIdentifier, compared with memcmp
    std::vector<SAutomatic> automatic;
    std::vector<uint16_t> ids;
    if (state->m_bindingTotal != 0) {
        ids.assign(state->m_bindingTotal, 0);
        uint16_t* cursor = ids.data();
        uint8_t techniqueIndex = 0;
        for (STechniqueNode* node = state->m_techniques.begin(); node != &state->m_techniques.head; node = node->next, ++techniqueIndex) {
            for (uint8_t p = 0; p < node->technique.passCount; ++p) {
                SRenderPass& pass = const_cast<SRenderPass&>(node->technique.passes[p]);
                SPassBinding* old = reinterpret_cast<SPassBinding*>(pass.bindings);
                if (old == nullptr) continue;
                IShader* shader = shaderOf(pass);
                pass.bindings = reinterpret_cast<int*>(cursor);
                SPassBinding* read = old;
                for (E_SHADER_STAGE stage = 0; stage < 2; ++stage) {
                    const SShaderStageParameters& list = shader->m_stageParameters[stage];
                    if (list.count <= list.field04) continue;
                    uint16_t* write = cursor;
                    for (uint16_t k = list.field04; k < list.count; ++k, ++read, ++write) {
                        if (read->global == 0) {
                            if (read->definition != nullptr) *write = static_cast<uint16_t>(read->definition->id);
                        } else {
                            *write = static_cast<uint16_t>(read->globalId | 0x8000u);
                        }
                        const SShaderParameterDef& shaderParameter = list.parameters[k];
                        if (shaderParameter.parameterType == 2) {
                            const std::array<uint8_t, 4> key = {techniqueIndex, p, shaderParameter.arg, 0};
                            textureIds[key] = *write;
                        } else if (shaderParameter.parameterType == 33) {
                            automatic.push_back({techniqueIndex, p, shaderParameter.arg, write});
                        }
                    }
                    cursor += list.count - list.field04;
                }
                glitch::core::releaseProcessBuffer(old);
            }
        }
    }
    for (const SAutomatic& entry : automatic) {
        const std::array<uint8_t, 4> key = {entry.technique, entry.pass, entry.sub, 0};
        const auto found = textureIds.find(key);
        if (found != textureIds.end()) *entry.slot = found->second;  // the original reads an unset node's value when it is not there
    }

    // 4. Build the renderer, insert it under its name and close the definition.
    boost::intrusive_ptr<CMaterialRenderer> renderer = CMaterialRenderer::allocate(
        m_driver, nextId, state->m_name, state->m_techniques, parameterCount,
        definitions.empty() ? nullptr : definitions.data(), valueBufferSize, static_cast<uint16_t>(state->m_bindingTotal),
        ids.empty() ? nullptr : ids.data());
    uint16_t id = insert(renderer->m_name, renderer, false);
    clearCreationState();
    const uint32_t pinkParameter = renderer->getParameterID("invalid pink stuff", 0);
    if (pinkParameter != 0xffff) {
        SColor pink;
        pink.color = 0xff7f4cccu;  // bytes cc 4c 7f ff
        renderer->parameters.setParameterCvt(static_cast<uint16_t>(pinkParameter), 0u, pink);
    }
    if (renderer->m_techniqueCount == 0) {
        os::Printer::logf(kError, "MaterialRenderer is not valid, using pink wireframe.");
        // Port guard: the original reads the name through a pointer it has just cleared; the name is taken before the renderer goes.
        const std::string name = renderer->m_name != nullptr ? renderer->m_name : "";
        renderer = nullptr;
        clearUnusedInstance(id);
        remove(id, false);
        const boost::intrusive_ptr<CMaterialRenderer> pinkRenderer = createPinkWireFrameMaterialRenderer(name.c_str());
        id = pinkRenderer ? pinkRenderer->m_id : id;
    }
    glitch::core::setProcessBufferHeapExcessEnabled(excess.previous);
    return id;
}

// 0x5db180 _ZN6glitch5video24CMaterialRendererManagerD1Ev
CMaterialRendererManager::~CMaterialRendererManager() {
    if (m_creationState != nullptr) {
        // The binding tables of the passes made so far (the tables are process-buffer blocks the state does not release).
        for (const STechniqueNode* node = m_creationState->m_techniques.begin(); node != &m_creationState->m_techniques.head;
             node = node->next) {
            for (uint8_t p = 0; p < node->technique.passCount; ++p) {
                if (node->technique.passes[p].bindings != nullptr) glitch::core::releaseProcessBuffer(node->technique.passes[p].bindings);
            }
        }
        clearCreationState();
    }
    for (auto it = ids.begin(); it != ids.end(); ++it) {  // every renderer forgets the driver (its +0x04)
        CMaterialRenderer* renderer = get(it->second.id)->value.get();
        if (renderer != nullptr) renderer->m_driver = nullptr;
    }
    m_techniqueMapTable.clear();  // delete[] of the +0x8c block
    m_techniqueMapBytes.clear();
    clearNameMap(m_nameMaps[1]);
    clearNameMap(m_nameMaps[0]);
}

}  // namespace glitch::video
