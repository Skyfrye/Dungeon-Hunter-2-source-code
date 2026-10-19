// glitch::collada free functions of the material creation path (canonical header collada/CColladaMaterial.hpp), reconstructed by residue
// pass ob. This file replaces the partial row of src/tb_scene-collada-gui-glitch_collada-0.cpp for createMaterial 0x631ce8.
//
// A comment `// 0xADDR symbol` precedes each function.
#include "glitch-scene-collada-gui/collada/CColladaMaterial.hpp"

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/ResString.hpp"
#include "glitch-scene-collada-gui/collada/SEffectList.hpp"
#include "glitch-shared/shared_string_heap.hpp"
#include "glitch-shared/shared_string.hpp"
#include "glitch-video/gl_small.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/null_shader_manager.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/texture.hpp"

namespace glitch::collada {

namespace {

// glitch::video::detail::SShaderParameterTypeInspection tables (ELF 0x8e2c44 / 0x8e2ca4 / 0x8e2bf8), read from the binary. They are
// indexed by the renderer-side value type code (0 .. 18); the listing indexes them with the SParam type plus one.
constexpr std::uint8_t kValueTypeArraySize[19] = {1, 1, 2, 3, 4, 1, 2, 3, 4, 4, 9, 16, 1, 1, 1, 1, 4, 4, 1};
constexpr std::uint8_t kValueTypeSize[19] = {1, 4, 8, 12, 16, 4, 8, 12, 16, 16, 36, 4, 4, 4, 4, 4, 4, 16, 4};
constexpr std::uint32_t kValueTypeBaseType[19] = {0, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5, 12, 13, 14, 15, 0, 5, 18};

// isParameterTypeValidSourceFor(SParam::E_TYPE, E_SHADER_PARAMETER_VALUE_TYPE)::cvt (ELF 0x8e4e54): for each renderer value type, the bit set
// of the SParam types that may fill it.
constexpr std::uint32_t kCvt[19] = {0x0,   0x1f,   0xe,    0xc,    0x8,    0xf1,   0xe0,    0xc0,    0x18080, 0x100,
                                    0x200, 0x400,  0x800,  0x1000, 0x2000, 0x4000, 0x180cc, 0x180cc, 0xa0000};

// ShaderParameterValueTypeMap (ELF 0x8e4ea0): the renderer value type an SParam type is stored as (255: none). The entry for int4 is 3,
// as in the binary.
constexpr std::int32_t kValueTypeMap[21] = {1, 2, 3, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 255, 255, 255};

// getParameterString(int)::C (ELF 0x957570): the names of the SParam types.
const char* const kParameterStrings[22] = {"int",      "int2",       "int3",        "int4",   "float",     "float2",  "float3",
                                           "float4",   "float2x2",   "float3x3",    "float4x4", "sampler2D", "sampler3D", "samplerCube",
                                           "samplerRect", "color",   "colorf",      "light",  "surface",   "url",     "technique",
                                           nullptr};

// video::getStringsInternal(E_SHADER_PARAMETER_VALUE_TYPE*) (ELF 0x99b738): the names of the renderer value types.
const char* const kValueTypeStrings[19] = {"ubyte",  "int",    "int2",      "int3",        "int4",   "float",      "float2",
                                           "float3", "float4", "float2x2",  "float3x3",    "float4x4", "sampler2D", "sampler3D",
                                           "samplerCUBE", "samplerRECT", "color", "colorf", "light"};

// The bytes one element of an SParam type takes in the file: ValueTypeArraySize[t + 1] * ValueTypeSize[ValueTypeBaseType[t + 1]].
std::uint32_t elementBytes(std::int32_t paramType) {
    const std::int32_t index = paramType + 1;
    if (index < 0 || index >= 19) {
        return 0;
    }
    return static_cast<std::uint32_t>(kValueTypeArraySize[index]) * kValueTypeSize[kValueTypeBaseType[index]];
}

const char* orNull(const char* text) { return text != nullptr ? text : "(null)"; }

// The shared body of createMaterial's parameter switch (0x631f54) and of setMaterialParameter<intrusive_ptr<CMaterialRenderer>, SNewParam>
// (0x6324c4), which differ only in where the parameter record keeps its type, the owner they write into and the name they log. `values` is the
// parameter's value array and `elementCount` the number of elements it holds. Returns false after logging a mismatch.
template <typename Owner>
bool setParameterValues(Owner& owner, const boost::intrusive_ptr<Owner>& handle, std::uint16_t id, std::int32_t paramType,
                        const std::uint32_t* elementCount, const void* values, const char* ownerName, CRootSceneNode* root) {
    const video::detail::SParameterEntry* def = owner.parameters.getParameterDef(id);
    if (def == nullptr) {
        // The original reads through a null entry here. The ids come from the renderer's own lookup, so this cannot happen for a valid pair.
        return false;
    }
    const std::uint32_t rendererCount = def->count;
    const std::uint32_t rendererType = def->type;
    const char* parameterName = core::detail::sharedStringText(static_cast<const core::detail::SSharedStringData*>(def->name));
    if (rendererCount > *elementCount) {
        os::Printer::logf(ELL_ERROR, "Not enough elements in parameter array \"%s/%s\"", orNull(ownerName), orNull(parameterName));
        return false;
    }
    // A renderer type past the table reads past it in the original; the port treats it as accepting nothing.
    const std::uint32_t allowed = rendererType < 19 ? kCvt[rendererType] : 0;
    if ((allowed & (1u << paramType)) == 0) {
        const char* want = rendererType < 19 ? kValueTypeStrings[rendererType] : "unknown";
        os::Printer::logf(ELL_ERROR, "parameter type mismatch when setting \"%s/%s\": want %s, got %s", orNull(ownerName),
                          orNull(parameterName), want, orNull(paramType >= 0 && paramType < 22 ? kParameterStrings[paramType] : nullptr));
        return false;
    }
    switch (rendererType) {
        case 9:
        case 10:
            return true;
        case 11: {
            // One matrix per element; an identity matrix is not written (the slot already holds the identity).
            const std::uint32_t stride = elementBytes(paramType);
            const std::uint8_t* source = static_cast<const std::uint8_t*>(values);
            core::CMatrix4<float> matrix(core::CMatrix4<float>::EM4CONST_IDENTITY);
            for (std::uint32_t index = 0; index != rendererCount; ++index) {
                std::memcpy(matrix.M, source + static_cast<std::size_t>(index) * stride, sizeof(matrix.M));
                matrix.flag = false;
                if (!matrix.isIdentity()) {
                    owner.parameters.setParameter(id, index, matrix);
                }
            }
            return true;
        }
        case 12:
        case 13:
        case 14:
        case 15: {
            // One texture per element; an element without an image record keeps the parameter's own texture.
            const SParamSampler* const* samplers = static_cast<const SParamSampler* const*>(values);
            for (std::uint32_t index = 0; index != rendererCount; ++index) {
                const SImage* image = samplers[index]->image;
                if (image != nullptr) {
                    boost::intrusive_ptr<video::ITexture> texture(static_cast<video::ITexture*>(image->imageData), true);
                    owner.parameters.template setParameter<boost::intrusive_ptr<video::ITexture>>(id, index, texture);
                }
            }
            return true;
        }
        case 18: {
            // A light is named by a URL, resolved after the whole file is built; the walk stops at an empty text or at "#" alone.
            if (rendererCount == 0) {
                return true;
            }
            const char* const* urls = static_cast<const char* const*>(values);
            for (std::uint32_t index = 0; index != rendererCount; ++index) {
                const char* text = urls[index];
                // The original reads the length word before the text; the port tests the text itself for empty (a null text counts as empty).
                if (text == nullptr || text[0] == '\0') {
                    break;
                }
                if (text[0] == '#' && text[1] == '\0') {
                    break;
                }
                if (root != nullptr) {
                    const res::String url(text);
                    root->addURLToResolve(handle, id, index, url);
                }
            }
            return true;
        }
        default:
            owner.parameters.setParameterCvt(id, kValueTypeMap[paramType], values, static_cast<int>(elementBytes(paramType)));
            return true;
    }
}

// 0x6324c4 _ZN6glitch7collada12_GLOBAL__N_120setMaterialParameterIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEENS0_9SNewParamEEEbRKT_tRT0_PNS0_14CRootSceneNodeE
// The value of an effect's new-param written into the renderer's default parameter `id` (the checks, conversions and diagnostics are the ones
// of createMaterial's parameter switch, with the renderer's name in the messages). Returns false after a logged mismatch.
[[maybe_unused]] bool setMaterialParameter(const boost::intrusive_ptr<video::CMaterialRenderer>& renderer, std::uint16_t id,
                                           const SNewParam& parameter, CRootSceneNode* root) {
    return setParameterValues<video::CMaterialRenderer>(*renderer, renderer, id, parameter.type, parameter.elementCount, parameter.values,
                                                         renderer->m_name, root);
}


// ---------------------------------------------------------------------------------------------------------------------------------------
// The effect-to-renderer template: createMaterialRendererForProfile<Traits>. The two instances of the binary (0x6357a0 for the fixed-function
// profile the null driver uses, 0x6361e8 for the GLES2 profile) are one template over a traits class; the traits give the effect's section
// (its techniques and new-params), the shader of a pass and the lookup of a binding's shader parameter.
// ---------------------------------------------------------------------------------------------------------------------------------------

// glitch::video::getStringsInternal(E_SHADER_PARAMETER_TYPE*)::strings (ELF 0x99b638): the names of the fixed-function symbols.
const char* const kShaderParameterTypeNames[63] = {
    "Constant", "Color", "Texture", "Texture Matrix", "Texture Env Color", "Ambient Color", "Diffuse Color", "Specular Color", "Emsission Color",
    "Shininess", "Alpha Ref", "Bone Matrices", "Bone Texture", "Bone Texture Params", "Bone Quaternions", "Weight Mask", "ColorGen Constant Color",
    "Position for the fairy", "Light", "Light Position", "Light Direction", "Light Attenuation", "Light Ambient Color", "Light Diffuse Color",
    "Light Specular Color", "Light Spot Exponent", "Light Spot Cutoff", "Light Cone Angles", "Scene Ambient Light", "Fog Density", "Fog Start End",
    "Fog Color", "Clip Plane", "Point Size", "Model Matrix", "View Matrix", "Projection Matrix", "Model View Matrix", "Model View Projection Matrix",
    "Model Matrix Inverse", "View Matrix Inverse", "View Projection Matrix Inverse", "Model View Inverse", "Model View Projection Inverse",
    "Model Matrix Inverse Transpose", "View Matrix Inverse Transpose", "View Projection Matrix Inverse Transpose",
    "Model View Matrix Inverse Transpose", "Model View Projection Inverse Transpose", "Model Matrix Transpose", "View Matrix Transpose",
    "Model View Matrix Transpose", "Model View Projection Matrix Transpose", "Projection Matrix Inverse", "Projection Matrix Transpose",
    "Projection Matrix Inverse Transpose", "Texture Bias", "Camera Near and Far", "Eye Position", "Viewport", "Viewport Dimensions",
    "Viewport Dimensions Inverse", "Time"};

// The name of a text for a log line: a null name prints as "(null)".
const char* shown(const char* text) { return text != nullptr ? text : "(null)"; }

// The text of a shared-string name entry: null for a missing name.
const char* entryName(const video::detail::SParameterEntry* entry) {
    return entry != nullptr ? core::detail::sharedStringText(static_cast<const core::detail::SSharedStringData*>(entry->name)) : nullptr;
}

// 0x631c50 _ZN6glitch5video24CMaterialRendererManager20addParameterInternalEPKcNS0_23E_SHADER_PARAMETER_TYPEENS0_29E_SHADER_PARAMETER_VALUE_TYPEEjb.clone.3
// The compiler's clone of addParameterInternal(name, type, valueType, count, report) with the value type 255 (open) and the report flag set: null
// without an open renderer; otherwise the name is interned (a use is taken for the call and given back after it).
video::CMaterialRendererManager::SCreationState::SParameterDef* addParameterByName(video::CMaterialRendererManager& manager, const char* name,
                                                                                    std::int32_t type, std::uint32_t count) {
    if (manager.m_creationState == nullptr) {
        return nullptr;
    }
    core::SSharedString handle;
    handle = name;  // interns the text and takes a use
    auto* definition = manager.addParameterInternal(handle, type, 255, count, true);
    core::detail::SSharedStringData* record = handle.data();
    if (record != nullptr && record->useCount-- == 1) {
        core::detail::releaseSharedString(core::detail::sharedStringHeapTable(), record);
    }
    return definition;
}

}  // namespace

// 0x631ce8 _ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE
// The material is allocated over the renderer (technique 0, the record's name) and every parameter of the record is applied: a parameter
// the renderer does not know is skipped, except a technique parameter, which selects the material's technique when the renderer has one
// of that name; for a known one the value is checked and converted as setParameterValues does. A mismatch is logged and the parameter
// skipped (the next one is still applied).
boost::intrusive_ptr<video::CMaterial> createMaterial(const CColladaDatabase&, video::IVideoDriver*,
                                                      const boost::intrusive_ptr<video::CMaterialRenderer>& renderer, SMaterial& record,
                                                      CRootSceneNode* root) {
    boost::intrusive_ptr<video::CMaterial> result;
    if (!renderer) {
        return result;
    }
    result = video::CMaterial::allocate(renderer, record.name, 0);
    for (std::int32_t i = 0; i < record.paramCount; ++i) {
        const SParam& param = record.params[i];
        const std::uint16_t id = renderer->getParameterID(param.name, 0);
        if (id == 0xFFFF) {
            if (param.type == SParam::ET_TECHNIQUE) {
                const std::uint8_t technique = renderer->getTechniqueID(static_cast<const SParamTechnique*>(param.values)->name);
                if (technique != 0xFF) {
                    result->m_technique = technique;
                }
            }
            continue;
        }
        const char* materialName = result->m_hasName ? result->m_nameText.c_str() : nullptr;
        setParameterValues<video::CMaterial>(*result, result, id, param.type, param.elementCount, param.values, materialName, root);
    }
    return result;
}

// The fixed-function profile (the null driver): section 0 of the effect, passes of SPass<SRenderStatesGLES>.
struct SProfileNullTraits {
    using PassT = SPass<SRenderStatesGLES>;
    static std::int32_t techniqueCount(const SEffect& effect) { return effect.techniqueCount[0]; }
    static const STechnique<PassT>* techniques(const SEffect& effect) { return effect.nullTechniques; }
    static std::int32_t paramCount(const SEffect& effect) { return effect.paramCount[0]; }
    static const SNewParam* params(const SEffect& effect) { return effect.params[0]; }
    static const glitch::video::SRenderState& renderState(const PassT& pass) { return pass.states.renderState; }

    // The shader of a pass: the null shader manager's shader under a number from a counter ("0", "1", ..., at most six characters).
    static boost::intrusive_ptr<video::IShader> createShader(video::IShaderManager* manager, PassT&) {
        static int shaderName = 0;
        char name[8];
        std::snprintf(name, 7, "%d", shaderName++);
        return static_cast<video::CNullShaderManager*>(manager)->createShader(name);
    }
    // The shader's parameter a binding's symbol names.
    static std::uint32_t shaderParameter(const video::IShader& shader, const SPassBinding& binding) {
        return shader.getParameterID(static_cast<video::E_SHADER_PARAMETER_TYPE>(binding.symbol), binding.stage, 0);
    }
    static void logInvalidBind(const char* renderer, const char* technique, const SPassBinding& binding) {
        const char* symbol = binding.symbol == 255 || binding.symbol >= 63 ? "unknown" : kShaderParameterTypeNames[binding.symbol];
        os::Printer::logf(ELL_ERROR, "%s/%s: invalid bind symbol: %s", renderer, shown(technique), symbol);
    }
};

// The programmable profile (GLES2): section 1 of the effect, passes of SPass<SRenderStatesProgrammable>.
struct SProfileGLES2Traits {
    using PassT = SPass<SRenderStatesProgrammable>;
    static std::int32_t techniqueCount(const SEffect& effect) { return effect.techniqueCount[1]; }
    static const STechnique<PassT>* techniques(const SEffect& effect) { return effect.gles2Techniques; }
    static std::int32_t paramCount(const SEffect& effect) { return effect.paramCount[1]; }
    static const SNewParam* params(const SEffect& effect) { return effect.params[1]; }
    static const glitch::video::SRenderState& renderState(const PassT& pass) { return pass.states.renderState; }

    // 0x634b30 _ZN6glitch7collada19SProfileGLES2Traits12createShaderEPNS_5video14IShaderManagerERNS0_5SPassINS0_25SRenderStatesProgrammableEEE
    // The shader of a pass: the GLSL manager's shader named by the four strings of the pass joined (vertex file, vertex defines, fragment file,
    // fragment defines), made from the vertex and fragment sources of the pass (no source files given). A null string would crash the original's
    // length count; here it counts as empty.
    static boost::intrusive_ptr<video::IShader> createShader(video::IShaderManager* manager, PassT& pass);

    static std::uint32_t shaderParameter(const video::IShader& shader, const SPassBinding& binding) {
        return shader.getParameterID(binding.name, binding.stage, 0);
    }
    static void logInvalidBind(const char* renderer, const char* technique, const SPassBinding& binding) {
        os::Printer::logf(ELL_ERROR, "%s/%s: invalid bind symbol: %s", renderer, shown(technique), shown(binding.name));
    }
};

// 0x634b30 SProfileGLES2Traits::createShader
boost::intrusive_ptr<video::IShader> SProfileGLES2Traits::createShader(video::IShaderManager* manager, PassT& pass) {
    const SRenderStatesProgrammable& s = pass.states;
    auto text = [](const char* t) { return t != nullptr ? t : ""; };
    std::string name = text(s.vertexFile);
    name += text(s.vertexDefines);
    name += text(s.fragmentFile);
    name += text(s.fragmentDefines);
    return static_cast<video::CGLSLShaderManager*>(manager)->createShader(name.c_str(), s.vertexFile, s.vertexDefines, s.fragmentFile,
                                                                           s.fragmentDefines, nullptr, nullptr);
}

// 0x6357a0 (SProfileNullTraits) and 0x6361e8 (SProfileGLES2Traits)
// _ZN6glitch7collada32createMaterialRendererForProfileINS0_18SProfileNullTraitsEEEN5boost13intrusive_ptrINS_5video17CMaterialRendererEEERKNS0_16CColladaDatabaseEPNS5_12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE
// The renderer `name` for the effects of the list. With an empty list: null. Otherwise (the process buffer's heap-excess mode is on meanwhile):
// a definition is opened under the name (it may be refused when the name exists; the existing renderer is then returned at the end), and
// every effect of the list adds its techniques to it, one pass per pass record (the shader of the pass and its render state): a technique of
// the same name that an earlier effect made is not made again. When the effect has new-params or its passes have bindings, the new-params
// become the definition's parameters (found by name, else added, a dimension above one is logged) and every binding of every pass is bound,
// to a global parameter (found by name, else added with the shader's own type) or to the effect's parameter it names; a binding the shader has
// no parameter for is logged. The definition is closed and the renderer looked up; none gives a log line. A new renderer gets the values of
// the effects' new-params that have the name of its default parameters, in the order of the effects.
template <typename Traits>
boost::intrusive_ptr<video::CMaterialRenderer> createMaterialRendererForProfile(const CColladaDatabase&, video::IVideoDriver* driver,
                                                                                const char* name, const SEffectList& effects,
                                                                                CRootSceneNode* root) {
    using video::CMaterialRendererManager;
    using Temporary = CMaterialRendererManager::STemporaryID;
    boost::intrusive_ptr<video::CMaterialRenderer> result;
    if (effects.entries.empty()) {
        return result;
    }
    CMaterialRendererManager& manager = *driver->m_materialRendererManager;  // driver +0xdc
    video::CGlobalMaterialParameterManager& globals = *driver->m_globalParameters;  // driver +0xe4
    const bool heapExcess = core::isProcessBufferHeapExcessEnabled();
    core::setProcessBufferHeapExcessEnabled(true);
    // The longest technique list and parameter list of the effects size the two id arrays (process buffers in the original).
    std::int32_t techniqueMax = 0;
    std::int32_t parameterMax = 0;
    for (const SEffectList::SEntry& entry : effects.entries) {
        techniqueMax = std::max(techniqueMax, Traits::techniqueCount(*entry.effect));
        parameterMax = std::max(parameterMax, Traits::paramCount(*entry.effect));
    }
    std::vector<std::uintptr_t> techniqueIds(static_cast<std::size_t>(techniqueMax), 0);
    std::vector<std::uintptr_t> parameterIds(static_cast<std::size_t>(parameterMax), 0);

    const bool opened = manager.beginMaterialRenderer(name, true) != 0;
    if (opened) {
        bool first = true;
        for (const SEffectList::SEntry& entry : effects.entries) {
            const SEffect& effect = *entry.effect;
            const std::int32_t techniqueCount = Traits::techniqueCount(effect);
            const std::int32_t paramCount = Traits::paramCount(effect);
            const bool hasParams = paramCount > 0;
            const STechnique<typename Traits::PassT>* techniques = Traits::techniques(effect);
            const SNewParam* params = Traits::params(effect);
            std::fill(techniqueIds.begin(), techniqueIds.begin() + techniqueCount, std::uintptr_t(0));
            bool bindings = false;
            // The techniques: one that an earlier effect made is not made again.
            for (std::int32_t t = 0; t < techniqueCount; ++t) {
                const STechnique<typename Traits::PassT>& technique = techniques[t];
                if (!first) {
                    techniqueIds[static_cast<std::size_t>(t)] = reinterpret_cast<std::uintptr_t>(manager.getTechniqueID(technique.name));
                }
                if (techniqueIds[static_cast<std::size_t>(t)] != 0) {
                    continue;
                }
                if (manager.beginTechnique(technique.name, true)) {
                    for (std::int32_t p = 0; p < technique.passCount; ++p) {
                        typename Traits::PassT& pass = technique.passes[p];
                        boost::intrusive_ptr<video::IShader> shader = Traits::createShader(driver->m_shaderManager, pass);
                        const video::detail::renderpass::SRenderState state(Traits::renderState(pass));
                        const boost::intrusive_ptr<const video::IShader> constShader(shader.get(), true);
                        manager.addRenderPass(constShader, state, video::detail::material::SRenderState());
                        if (pass.bindingCount > 0) {
                            bindings = true;
                        }
                    }
                    techniqueIds[static_cast<std::size_t>(t)] = reinterpret_cast<std::uintptr_t>(manager.endTechnique(!hasParams, 0));
                }
            }
            if (hasParams || bindings) {
                // The parameters of the definition.
                std::fill(parameterIds.begin(), parameterIds.begin() + paramCount, std::uintptr_t(0));
                for (std::int32_t k = 0; k < paramCount; ++k) {
                    const SNewParam& param = params[k];
                    if (param.dimensions > 1) {
                        os::Printer::logf(ELL_WARNING, "%s/%s: multidimensional parameters not supported yet", name, shown(param.name));
                    }
                    std::uintptr_t& slot = parameterIds[static_cast<std::size_t>(k)];
                    if (!first) {
                        slot = reinterpret_cast<std::uintptr_t>(manager.getParameterID(param.name));
                    }
                    if (slot == 0) {
                        slot = reinterpret_cast<std::uintptr_t>(addParameterByName(manager, param.name, param.semantic, *param.elementCount));
                    }
                }
                // The bindings of the passes.
                for (std::int32_t t = 0; t < techniqueCount; ++t) {
                    const std::uintptr_t id = techniqueIds[static_cast<std::size_t>(t)];
                    if (id == 0) {
                        continue;
                    }
                    const video::STechnique* made = reinterpret_cast<const video::STechnique*>(manager.getTechnique(Temporary{id}));
                    if (made == nullptr) {
                        continue;  // no definition open (the original reads through it)
                    }
                    const STechnique<typename Traits::PassT>& technique = techniques[t];
                    for (std::int32_t p = 0; p < technique.passCount; ++p) {
                        const typename Traits::PassT& pass = technique.passes[p];
                        const video::IShader& shader = *static_cast<const video::IShader*>(made->passes[p].shader);
                        for (std::int32_t b = 0; b < pass.bindingCount; ++b) {
                            const SPassBinding& binding = pass.bindings[b];
                            const std::uint32_t shaderParameter = Traits::shaderParameter(shader, binding);
                            if (shaderParameter == 0xFFFFu) {
                                Traits::logInvalidBind(name, technique.name, binding);
                            } else if (binding.global == 1) {
                                // A global parameter: found by name, else added with the shader parameter's own type (a light or url type
                                // is added as a light).
                                std::uint16_t globalId = globals.getId(binding.globalName);
                                if (globalId == 0xFFFFu) {
                                    const video::SShaderParameterDef& definition = shader.m_stageParameters[binding.stage].parameters[shaderParameter];
                                    const std::uint32_t type = definition.parameterType;
                                    if ((type > 0x12 && type <= 0x1B) || type == 18) {
                                        globalId = globals.addParameter(binding.globalName, 18, 18, definition.count, definition.arg);
                                    } else {
                                        globalId = globals.addParameter(binding.globalName, static_cast<std::int32_t>(type), definition.valueType,
                                                                        definition.count, definition.arg);
                                    }
                                }
                                manager.bindGlobalParameter(globalId, Temporary{id}, static_cast<std::uint8_t>(p),
                                                            static_cast<std::uint16_t>(shaderParameter), binding.stage);
                            } else if (params[binding.index].type == SParam::ET_LIGHT) {
                                const std::uint16_t shaderType = shader.m_stageParameters[binding.stage].parameters[shaderParameter].parameterType;
                                manager.bindParameter(Temporary{parameterIds[binding.index]}, shaderType, Temporary{id}, static_cast<std::uint8_t>(p),
                                                      static_cast<std::uint16_t>(shaderParameter), binding.stage);
                            } else {
                                manager.bindParameter(Temporary{parameterIds[binding.index]}, Temporary{id}, static_cast<std::uint8_t>(p),
                                                      static_cast<std::uint16_t>(shaderParameter), binding.stage);
                            }
                        }
                    }
                }
            }
            first = false;
        }
    }
    const std::uint16_t rendererId = manager.endMaterialRenderer();
    boost::intrusive_ptr<video::CMaterialRenderer> renderer = manager.getMaterialRenderer(rendererId);
    if (!renderer) {
        os::Printer::logf(ELL_ERROR, "failed to create material renderer %s", name);
    } else if (opened) {
        // The values of the effects' new-params go to the default values of the renderer's parameters of the same name: the parameters are
        // taken in order, and the search for the next one goes on from where the last was found.
        const std::uint32_t parameterCount = renderer->m_parameterCount;
        std::uint32_t slot = 0;
        for (const SEffectList::SEntry& entry : effects.entries) {
            const SEffect& effect = *entry.effect;
            const std::int32_t paramCount = Traits::paramCount(effect);
            const SNewParam* params = Traits::params(effect);
            if (slot >= parameterCount) {
                continue;
            }
            std::int32_t index = 0;
            for (;;) {
                const video::detail::SParameterEntry* definition = renderer->parameters.getParameterDef(static_cast<std::uint16_t>(slot));
                if (index >= paramCount) {
                    break;
                }
                const char* wanted = entryName(definition);
                bool found = true;
                while (wanted == nullptr || params[index].name == nullptr || std::strcmp(params[index].name, wanted) != 0) {
                    ++index;
                    if (index == paramCount) {
                        found = false;
                        break;
                    }
                }
                if (!found) {
                    break;
                }
                setMaterialParameter(renderer, static_cast<std::uint16_t>(slot), params[index], root);
                slot = static_cast<std::uint16_t>(slot + 1);
                if (slot >= parameterCount) {
                    break;
                }
            }
        }
    }
    core::setProcessBufferHeapExcessEnabled(heapExcess);
    result = renderer;
    return result;
}

template boost::intrusive_ptr<video::CMaterialRenderer> createMaterialRendererForProfile<SProfileNullTraits>(
    const CColladaDatabase&, video::IVideoDriver*, const char*, const SEffectList&, CRootSceneNode*);
template boost::intrusive_ptr<video::CMaterialRenderer> createMaterialRendererForProfile<SProfileGLES2Traits>(
    const CColladaDatabase&, video::IVideoDriver*, const char*, const SEffectList&, CRootSceneNode*);

// 0x636b6c _ZN6glitch7collada22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE
// The driver (vtable +0x5c) tells its family: no GLES (bits 7) and some GLES2 bits (0x18) give the GLES2 profile; a driver of type 0
// (no bit of 7, 0x18 or 0x360) gives the null profile; every other family leaves the result null.
boost::intrusive_ptr<video::CMaterialRenderer> createMaterialRenderer(const CColladaDatabase& db, video::IVideoDriver* driver,
                                                                      const char* name, const SEffectList& effects, CRootSceneNode* root) {
    boost::intrusive_ptr<video::CMaterialRenderer> result;
    const std::uint32_t family = static_cast<std::uint32_t>(driver->getDriverType());
    if ((family & 7u) == 0) {
        if ((family & 0x18u) != 0) {
            result = createMaterialRendererForProfile<SProfileGLES2Traits>(db, driver, name, effects, root);
        } else if ((family & 0x360u) == 0 && family == 0) {
            result = createMaterialRendererForProfile<SProfileNullTraits>(db, driver, name, effects, root);
        }
    }
    return result;
}

}  // namespace glitch::collada
