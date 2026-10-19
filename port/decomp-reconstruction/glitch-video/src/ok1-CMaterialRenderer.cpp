#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#include <dlfcn.h>
#include <unwind.h>
static _Unwind_Reason_Code dh2MrBt(struct _Unwind_Context* c, void*) { uintptr_t pc = _Unwind_GetIP(c); Dl_info i; if (dladdr((void*)pc, &i)) __android_log_print(ANDROID_LOG_INFO, "DH2MR", "  bt off 0x%lx", (unsigned long)(pc - (uintptr_t)i.dli_fbase)); return _URC_NO_REASON; }
#endif
// Owner K1: CMaterialRenderer construction and destruction (0x5d3124 / 0x5d36cc, allocate 0x5d4c48, ~CMaterialRenderer 0x5d4aa0) and
// getBindedLightCount 0x5d3f14. The original builds the renderer in one variable-size block; the port keeps the same arrays as
// members (material_renderer.hpp, "Port storage") and the same order of fill.
#include <algorithm>
#include <cstring>
#include <set>

#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace {

using glitch::core::detail::SSharedStringData;

void dropUse(SSharedStringData* data) {
    if (data != nullptr && data->useCount-- == 1) {
        glitch::core::detail::releaseSharedString(glitch::core::detail::sharedStringHeapTable(), data);
    }
}

// The number of 16-bit binding ids a pass of this shader carries: the parameters of both stages, (count - field04) each. The
// expression the constructor and the destructor write as `(v22[27] + v22[23] - v22[22] - v22[26])` (a 16-bit value).
uint16_t bindingCountOf(const IShader* shader) {
    return static_cast<uint16_t>(shader->m_stageParameters[1].count + shader->m_stageParameters[0].count -
                                 shader->m_stageParameters[0].field04 - shader->m_stageParameters[1].field04);
}

}  // namespace

// 0x5d3124 _ZN6glitch5video17CMaterialRendererC1EPNS0_12IVideoDriverEtPKcRKNS0_6detail25material_renderer_manager14STechniqueListEttPKPKNS0_19SShaderParameterDefEjtPKt
// 0x5d36cc C2: the same body.
// The block is laid out as: header, technique table (12 bytes each), parameter entries (16 bytes each), value buffer, passes (52
// bytes each), then per binding 6 bytes (the 16-bit id and the 4-byte record), then the name. Every technique's passes are copied
// from the creation state's pass arrays; a pass that has bindings gets its ids copied from `bindingIds` (consumed in pass order)
// and the 4-byte records (stage bit 15 and shader parameter index, material parameter id) built and sorted into three groups:
// the parameters that are not textures, automatic or lights first, then the textures / automatic / lights, then the globals.
CMaterialRenderer::CMaterialRenderer(IVideoDriver* driver, uint16_t id, const char* name,
                                     const detail::material_renderer_manager::STechniqueList& techniques, uint16_t passTotal,
                                     uint16_t parameterCount, const SShaderParameterDef* const* parameters_,
                                     uint32_t valueBufferSize, uint16_t bindingCount, const uint16_t* bindingIds) {
    m_constructed = true;
    m_refCount = 0;               // +0x00
    m_driver = driver;            // +0x04
    m_name = nullptr;             // +0x08, set at the end
    m_id = id;                    // +0x0c
    m_parameterCount = parameterCount;  // +0x0e
    uint8_t techniqueCount = 0;
    for (const detail::material_renderer_manager::STechniqueNode* node = techniques.begin(); node != techniques.end(); node = node->next) {
        ++techniqueCount;
    }
    m_flag11 = 1;                         // +0x11
    m_techniqueCount = techniqueCount;    // +0x10
    m_valueBufferSize = valueBufferSize;  // +0x14
    m_techniqueStorage.assign(techniqueCount, STechnique());
    m_passStorage.assign(passTotal, SRenderPass());
    m_entryStorage.assign(parameterCount, detail::SParameterEntry());
    m_valueStorage.assign(valueBufferSize, 0);
    m_bindingIdStorage.assign(bindingCount, 0);
    m_bindingRecords.assign(bindingCount, SShaderParameterBinding());
    m_techniques = m_techniqueStorage.data();  // +0x18
    m_passBase = m_passStorage.data();         // +0x1c
    this->parameters.headerForTest().count = parameterCount;                // +0x0e
    this->parameters.headerForTest().entries = m_entryStorage.data();       // +0x20
    this->parameters.setValueBuffer(m_valueStorage.data());                 // +0x24

    CGlobalMaterialParameterManager* globals = driver != nullptr ? driver->m_globalParameters : nullptr;  // driver +0xe4
    size_t techniqueIndex = 0;
    size_t passIndex = 0;
    size_t idCursor = 0;      // elements of m_bindingIdStorage / m_bindingRecords used so far
    const uint16_t* ids = bindingIds;  // a11
    for (const detail::material_renderer_manager::STechniqueNode* node = techniques.begin(); node != techniques.end(); node = node->next) {
        const STechnique& source = node->technique;
        STechnique& technique = m_techniqueStorage[techniqueIndex++];
        technique.name = source.name;  // +0x00, a use is taken
        if (technique.name != nullptr) ++static_cast<SSharedStringData*>(technique.name)->useCount;
        technique.passCount = source.passCount;
        technique.passes = &m_passStorage[passIndex];
        for (uint8_t p = 0; p < source.passCount; ++p) {
            const SRenderPass& from = source.passes[p];
            SRenderPass& pass = m_passStorage[passIndex++];
            std::memcpy(pass.stateWords, from.stateWords, sizeof pass.stateWords);  // +0x00..+0x1f
            pass.shader = from.shader;                                                // +0x20, a use is taken
            if (pass.shader != nullptr) ++pass.shader->referenceCounter;
            pass.flag30 = 1;                                                          // +0x30
            if (from.bindings == nullptr) {
                pass.bindings = nullptr;
                pass.unknown28 = nullptr;
                pass.unknown2e = 0;
                pass.unknown2c = 0;
                continue;
            }
            const IShader* shader = static_cast<const IShader*>(from.shader);
            const uint16_t n = bindingCountOf(shader);
            uint16_t* myIds = m_bindingIdStorage.data() + idCursor;
            SShaderParameterBinding* records = m_bindingRecords.data() + idCursor;
            std::memcpy(myIds, ids, 2u * n);
            // The records: stage in bit 15 and the shader parameter index, then the material parameter id; a global id (bit 15) takes a
            // use on the global parameter.
            {
                const uint16_t* idRead = myIds;
                SShaderParameterBinding* recordWrite = records;
                for (uint32_t stage = 0; stage < 2; ++stage) {
                    const SShaderStageParameters& list = shader->m_stageParameters[stage];
                    if (list.count > list.field04) {
                        for (uint32_t index = list.field04; index < list.count; ++index) {
                            const uint16_t materialId = *idRead++;
                            recordWrite->shaderParameter = static_cast<uint16_t>((stage << 15) | index);
                            recordWrite->materialParameter = materialId;
                            ++recordWrite;
                            if ((materialId & 0x8000) != 0 && globals != nullptr) globals->grabInternal(materialId & 0x7fff);
                        }
                    }
                }
            }
            // The three groups. `front` keeps the textures / automatic / lights (in order), `others` the rest (in order, in place) and
            // `back` the globals (in order, with the global bit removed).
            std::vector<SShaderParameterBinding> front;
            std::vector<SShaderParameterBinding> others;
            std::vector<SShaderParameterBinding> back;
            for (uint16_t i = 0; i < n; ++i) {
                const SShaderParameterBinding record = records[i];
                if ((record.materialParameter & 0x8000) != 0) {
                    SShaderParameterBinding global = record;
                    global.materialParameter = record.materialParameter & 0x7fff;
                    back.push_back(global);
                } else {
                    const uint32_t type = parameters_[record.materialParameter]->parameterType;  // *(u16*)(params[id] + 4)
                    if (type == 2 || type == 33 || type == 18) {
                        front.push_back(record);
                    } else {
                        others.push_back(record);
                    }
                }
            }
            size_t at = 0;
            for (const SShaderParameterBinding& record : others) records[at++] = record;
            for (const SShaderParameterBinding& record : front) records[at++] = record;
            for (const SShaderParameterBinding& record : back) records[at++] = record;
            pass.bindings = reinterpret_cast<int*>(myIds);                 // +0x24, the ids
            pass.unknown28 = records;                                      // +0x28, the records
            pass.unknown2e = static_cast<uint16_t>(front.size());          // +0x2e
            pass.unknown2c = static_cast<uint16_t>(others.size());         // +0x2c
            ids += n;
            idCursor += n;
        }
    }
    // The parameter entries: the 16 bytes of each definition, the name taking a use.
    for (uint16_t i = 0; i < parameterCount; ++i) {
        const SShaderParameterDef* definition = parameters_[i];
        detail::SParameterEntry& entry = m_entryStorage[i];
        entry.name = definition->name;
        if (definition->name != nullptr) ++definition->name->useCount;
        entry.kind = definition->parameterType;
        entry.type = definition->valueType;
        entry.unknown07 = definition->arg;
        entry.count = definition->count;
        entry.valueOffset = definition->offset;
    }
    // The value buffer is zero (m_valueStorage); the name text last.
    m_nameStorage = name != nullptr ? name : "";
    m_name = m_nameStorage.c_str();  // +0x08
}

// 0x5d4c48 _ZN6glitch5video17CMaterialRenderer8allocateEPNS0_12IVideoDriverEtPKcRKNS0_6detail25material_renderer_manager14STechniqueListEtPKPKNS0_19SShaderParameterDefEjtPKt
// Sizes the block (value buffer + 16 * parameters + 41 + 4 * ((3 * bindings + 1) / 2) + strlen(name) + 12 * techniques + 52 *
// passes), constructs the renderer in it and returns it with its first use. The port allocates the object and lets the constructor
// size its arrays.
boost::intrusive_ptr<CMaterialRenderer> CMaterialRenderer::allocate(
    IVideoDriver* driver, uint16_t id, const char* name, const detail::material_renderer_manager::STechniqueList& techniques,
    uint16_t parameterCount, const SShaderParameterDef* const* parameters_, uint32_t valueBufferSize, uint16_t bindingCount,
    const uint16_t* bindingIds) {
    uint16_t passTotal = 0;
    for (const detail::material_renderer_manager::STechniqueNode* node = techniques.begin(); node != techniques.end(); node = node->next) {
        passTotal = static_cast<uint16_t>(passTotal + node->technique.passCount);
    }
    CMaterialRenderer* renderer = new CMaterialRenderer(driver, id, name, techniques, passTotal, parameterCount, parameters_,
                                                        valueBufferSize, bindingCount, bindingIds);
    return boost::intrusive_ptr<CMaterialRenderer>(renderer, true);  // the first use (the count is 0 after construction; (p) alone would take over a use that is not there)
}

// 0x5d4aa0 _ZN6glitch5video17CMaterialRendererD1Ev
// (The parameters' pointer slots are released with the `parameters` member: IMaterialParameters::dropParameters 0x5d4a68 is the
// member destructors here.)
CMaterialRenderer::~CMaterialRenderer() {
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
    __android_log_print(ANDROID_LOG_INFO, "DH2MR", "~CMaterialRenderer %p constructed=%d refs=%d", (void*)this, (int)m_constructed, (int)m_refCount);
    _Unwind_Backtrace(dh2MrBt, nullptr);
#endif
    if (!m_constructed) return;
    if (m_techniqueCount != 0) {
        for (uint8_t t = 0; t < m_techniqueCount; ++t) {
            const STechnique& technique = m_techniques[t];
            for (uint8_t p = 0; p < technique.passCount; ++p) {
                SRenderPass& pass = const_cast<SRenderPass&>(technique.passes[p]);
                if (m_driver != nullptr && pass.shader != nullptr) {
                    // The global parameters the pass bound: ids with bit 15 set, over the binding count of its shader.
                    const uint16_t* ids = reinterpret_cast<const uint16_t*>(pass.bindings);
                    const uint16_t n = bindingCountOf(static_cast<const IShader*>(pass.shader));
                    if (ids != nullptr) {
                        for (uint16_t i = 0; i < n; ++i) {
                            if ((ids[i] & 0x8000) != 0 && m_driver->m_globalParameters != nullptr) {
                                m_driver->m_globalParameters->dropInternal(ids[i] & 0x7fff);
                            }
                        }
                    }
                }
                if (pass.shader != nullptr) pass.shader->drop();
            }
        }
        for (uint8_t t = 0; t < m_techniqueCount; ++t) dropUse(static_cast<SSharedStringData*>(m_techniques[t].name));
    }
    for (uint16_t i = 0; i < m_parameterCount; ++i) dropUse(const_cast<SSharedStringData*>(static_cast<const SSharedStringData*>(m_entryStorage[i].name)));
}

// 0x5d3f14 _ZNK6glitch5video17CMaterialRenderer19getBindedLightCountEhh
// The number of distinct light parameters (type 18) the pass binds. The loop walks the first (count - field04) ids of the pass once
// per stage, as the original does (it restarts at the first id for the second stage).
uint32_t CMaterialRenderer::getBindedLightCount(uint8_t technique, uint8_t passIndex) const {
    const SRenderPass& pass = m_techniques[technique].passes[passIndex];  // technique table +0x18, 12 bytes each; passes 52 bytes each
    const uint16_t* ids = reinterpret_cast<const uint16_t*>(pass.bindings);
    if (ids == nullptr) return 0;
    const IShader* shader = static_cast<const IShader*>(pass.shader);
    std::set<uint16_t> lights;
    for (uint32_t stage = 0; stage < 2; ++stage) {
        const SShaderStageParameters& list = shader->m_stageParameters[stage];
        const uint16_t n = static_cast<uint16_t>(list.count - list.field04);
        for (uint16_t i = 0; i < n; ++i) {
            const uint16_t id = ids[i];
            if (m_parameterCount > id) {
                const detail::SParameterEntry& entry = parameters.parameterHeader().entries[id];
                if (entry.kind == 18) lights.insert(id);
            }
        }
    }
    return static_cast<uint16_t>(lights.size());
}

}  // namespace glitch::video
