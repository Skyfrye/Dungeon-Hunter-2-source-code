#include <cstdlib>
#include "glitch-video/programmable_gl_driver.hpp"

#include <cstring>

#include "glitch-core-io/core/process_buffer.hpp"

#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/gl_small.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/light.hpp"
#include "glitch-video/material_parameters_part_1c.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/texture_manager.hpp"

namespace glitch::video {

// 0x5b5c40 _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEC1EPNS_7IDeviceE / 0x5b5e34 C2
// A CGLSLShaderManager (0x84 bytes) is made and given to CCommonGLDriverBase with the device; the common driver's members, the
// shader handler (its attribute count cleared), the 21 matrices as identities and the dirty mask -1 follow (the initialisers).
CProgrammableGLDriver::CProgrammableGLDriver(glitch::IDevice* device)
    : CCommonGLDriver(device, new CGLSLShaderManager()) {
    for (core::CMatrix4<float>& matrix : m_shaderMatrices) {
        matrix = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
    for (core::CMatrix4<float>& matrix : m_derivedMatrices) {
        matrix = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
}

// 0x5b36f0 _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEED1Ev / 0x5b3724 D0 / 0x5b3740 D2: the common driver's
// destructor follows.
CProgrammableGLDriver::~CProgrammableGLDriver() = default;

// 0x5af04c _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE13getDriverTypeEv
E_DRIVER_TYPE CProgrammableGLDriver::getDriverType() const { return 0x78; }

// 0x5af03c _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE20getMaxUserClipPlanesEv
uint32_t CProgrammableGLDriver::getMaxUserClipPlanes() const { return 6; }

// 0x5af030 _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE11onSet3DModeEv
void CProgrammableGLDriver::onSet3DMode() {}

// 0x5af034 _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE18queryMaxLightCountEv
uint32_t CProgrammableGLDriver::queryMaxLightCount() const { return 8; }

// 0x5af044 _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE16getShaderManagerEv
IShaderManager* CProgrammableGLDriver::getShaderManager() const { return m_shaderManager; }

// 0x5af054 _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE20getTransformForShaderENS0_22E_TRANSFORMATION_STATEE
const core::CMatrix4<float>& CProgrammableGLDriver::getTransformForShader(E_TRANSFORMATION_STATE state) const {
    return m_shaderMatrices[state];
}

// 0x5af08c _ZNK6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE24getShaderLanguageVersionEv
uint32_t CProgrammableGLDriver::getShaderLanguageVersion() const { return m_handler.m_shaderLanguageVersion; }

// 0x5af094 _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE23setTextureLODBiasTexEnvEPKNS0_8ITextureE
void CProgrammableGLDriver::setTextureLODBiasTexEnv(const ITexture*) {}

// 0x5b1a84 _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE12commitShaderEPKNS0_7IShaderE
void CProgrammableGLDriver::commitShader(const IShader* shader) {
    auto& t = deps::activeGLFunctionTable();
    if (t.useProgram) t.useProgram(static_cast<const CGLSLShader*>(shader)->m_glProgram);
    m_shaderF4 = const_cast<IShader*>(shader);
}

// 0x5b1aa0 _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE17onMaterialDestroyedEPNS0_9CMaterialE: a thunk
// to IVideoDriver::onMaterialDestroyed.
void CProgrammableGLDriver::onMaterialDestroyed(CMaterial* material) { IVideoDriver::onMaterialDestroyed(material); }

// 0x5b1aa4 _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE17onShaderDestroyedEPNS0_7IShaderE
// The original tail-calls IVideoDriver::onShaderDestroyed, which clears the same slot.
void CProgrammableGLDriver::onShaderDestroyed(IShader* shader) { IVideoDriver::onShaderDestroyed(shader); }

// 0x5b1ab4 _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE10driverInitERKNS_4core11dimension2dIiEE
bool CProgrammableGLDriver::driverInit(const core::dimension2d<int32_t>&) {
    m_handler.initShaderHandler(m_shaderManager);
    auto& t = deps::activeGLFunctionTable();
    int32_t attributes = 0;
    if (t.getIntegerv) t.getIntegerv(0x8869, &attributes);  // GL_MAX_VERTEX_ATTRIBS
    unk_a0 = 2;
    m_vertexAttribCount = static_cast<uint32_t>(attributes);
    if (t.enable) t.enable(0x809d);
    if (t.hint) t.hint(0xc52, 0x1102);
    if (t.enable) t.enable(0xb20);
    return true;
}

// 0x5b1e14 _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE12setTransformENS0_22E_TRANSFORMATION_STATEERKNS_4core8CMatrix4IfEE
// The matrix is stored in the common driver's table; the shader-side copy and its dirty bits follow: transform 1 is copied as
// it is (dirty mask |= 0xdce7); transform 0 and 2 flush the pending work first, transform 0 is copied (|= 0xef7b) and transform
// 2, the projection, is fixed up for the render target and orientation before it is copied (|= 0x78a52).
void CProgrammableGLDriver::setTransform(E_TRANSFORMATION_STATE state, const core::CMatrix4<float>& matrix) {
    std::memcpy(static_cast<void*>(&m_matrices[state]), &matrix, 0x41);
    switch (state) {
        case 1:
            std::memcpy(static_cast<void*>(&m_shaderMatrices[1]), &matrix, 0x41);
            m_matrixDirtyMask |= 0xdce7u;
            break;
        case 2: {
            flush();
            core::CMatrix4<float> projection;
            projection.flag = false;
            std::memcpy(static_cast<void*>(&projection), &matrix, 0x41);
            fixUpProjectionMatrix(projection);
            std::memcpy(static_cast<void*>(&m_shaderMatrices[2]), &projection, 0x41);
            m_matrixDirtyMask |= 0x78a52u;
            break;
        }
        case 0:
            flush();
            std::memcpy(static_cast<void*>(&m_shaderMatrices[0]), &matrix, 0x41);
            m_matrixDirtyMask |= 0xef7bu;
            break;
        default:
            break;
    }
}

// 0x5b6ccc _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE17restoreShadowStateEv
// The render state is restored. With a current program: it is made current again, the vertex attribute arrays are enabled or
// disabled as the enabled-attribute bit mask of the common shadow state says (the first 32 or the attribute count of them), and
// the rest of the attributes are disabled. Every texture unit of the four texture types is unbound, and the current material's
// parameters are committed again.
void CProgrammableGLDriver::restoreShadowState() {
    restoreRenderState();
    auto& t = deps::activeGLFunctionTable();
    if (m_shaderF4 != nullptr) {
        if (t.useProgram) t.useProgram(static_cast<const CGLSLShader*>(m_shaderF4)->m_glProgram);
        const uint32_t count = m_vertexAttribCount;
        const uint32_t first = count > 31 ? 32u : static_cast<uint32_t>(static_cast<uint16_t>(count));
        for (uint32_t attribute = 0; attribute < first; ++attribute) {
            if ((m_common.m_words[7] & (1u << attribute)) != 0) {
                if (t.enableVertexAttribArray) t.enableVertexAttribArray(attribute);
            } else {
                if (t.disableVertexAttribArray) t.disableVertexAttribArray(attribute);
            }
        }
        for (uint32_t attribute = first; attribute < m_vertexAttribCount; ++attribute) {
            if (t.disableVertexAttribArray) t.disableVertexAttribArray(attribute);
        }
    }
    for (E_TEXTURE_TYPE type = 0; type != 4; ++type) {
        for (uint32_t unit = 0; unit != m_textureUnitCount; ++unit) {
            setTexture(unit, nullptr, type);
        }
    }
    if (m_materialEc != nullptr) {
        const SRenderPass& pass = m_materialEc->m_renderer->m_techniques[m_flagF8].passes[0];
        commitCurrentMaterialParametersAux<CMaterial>(static_cast<const CGLSLShader*>(m_shaderF4), m_materialEc, pass.unknown28,
                                                      pass.unknown28 + pass.unknown2c);
    }
}

// 0x5af06c _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE15swapBuffersImplEi
// A non-zero mask clears those buffers (driver slot +0xa8); the swap itself is the platform's. Returns true.
bool CProgrammableGLDriver::swapBuffersImpl(int32_t mask) {
    if (mask != 0) {
        clearBuffers(mask);
    }
    return true;
}

// ---------------------------------------------------------------------------------------------------------------------------
// Shader uniform commit: detail::getTextureParameter, commitLightParameter and commitCurrentMaterialParametersAux
// ---------------------------------------------------------------------------------------------------------------------------

namespace detail {

// The shared body of getTextureParameter (the stored texture may come from the value bytes of an owner or from its pointer slots):
// the texture itself while it is usable, else the placeholder of the kind of failure (never set: "not found"; set but the bind
// failed) for the texture type the parameter's value type stands for (value types 12..15 are the four texture types).
boost::intrusive_ptr<ITexture> resolveTextureParameter(ITexture* stored, uint8_t valueType, const IVideoDriver* driver) {
    boost::intrusive_ptr<ITexture> result(stored, true);
    if (stored != nullptr && (stored->m_flags3f & ITexture::kFlagBindFailed) == 0) return result;
    const CTextureManager::E_PLACE_HOLDER kind =
        stored != nullptr ? CTextureManager::EPH_TEXTURE_BIND_FAILED : CTextureManager::EPH_TEXTURE_NOT_FOUND;
    ITexture* placeHolder = driver->m_textureManager->getPlaceHolder(kind, static_cast<E_TEXTURE_TYPE>(valueType - 12));
    result = boost::intrusive_ptr<ITexture>(placeHolder, true);
    return result;
}

// 0x5b2558 _ZN6glitch5video6detail19getTextureParameterEPKhRKNS0_19SShaderParameterDefEPKNS0_12IVideoDriverE
// The texture a parameter holds, read from the value bytes at the definition's offset (a raw pointer in the port: owner G keeps
// them there), or its placeholder.
boost::intrusive_ptr<ITexture> getTextureParameter(const uint8_t* data, const SShaderParameterDef& def,
                                                   const IVideoDriver* driver) {
    ITexture* stored = nullptr;
    std::memcpy(&stored, data + def.offset, sizeof stored);
    return resolveTextureParameter(stored, def.valueType, driver);
}

}  // namespace detail

namespace {

deps::GLFunctionTable& gl() { return deps::activeGLFunctionTable(); }

// A parameter's definition as the commit loop needs it: value type, element count, byte offset of element 0 in the owner's values.
struct SParamView {
    uint8_t type = 0;
    uint32_t count = 0;
    uint32_t offset = 0;
};

// Owner M: a CMaterial, through the view of its parameter block (the renderer's table), its value area and its pointer slots.
struct MaterialSource {
    explicit MaterialSource(const CMaterial* material)
        : m_material(material), m_table(material->parameters.table()) {}
    bool find(uint16_t id, SParamView& view) const {
        if (m_table.header == nullptr || id >= m_table.header->count) return false;
        const detail::SParameterEntry& entry = m_table.header->entries[id];
        view = {entry.type, entry.count, entry.valueOffset};
        return true;
    }
    const uint8_t* values() const { return m_table.values; }
    void matrix(const SParamView& view, uint32_t index, core::CMatrix4<float>& out) const {
        const auto& slots = const_cast<CMaterial*>(m_material)->parameters.matrixSlots();
        const auto it = slots.find(view.offset + 4u * index);
        if (it != slots.end() && it->second != nullptr) {
            out = *it->second;
        } else {
            out = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
        }
    }
    ITexture* texture(const SParamView& view) const {
        if (m_table.pointers == nullptr) return nullptr;
        const auto it = m_table.pointers->textures.find(view.offset);
        return it == m_table.pointers->textures.end() ? nullptr : it->second.get();
    }
    CLight* light(const SParamView& view) const {
        if (m_table.pointers == nullptr) return nullptr;
        const auto it = m_table.pointers->lights.find(view.offset);
        return it == m_table.pointers->lights.end() ? nullptr : it->second.get();
    }

    const CMaterial* m_material;
    detail::part1c::SParameterTable m_table;
};

// Owner G: the global parameter manager; its pointer elements are raw pointers in the value buffer.
struct GlobalSource {
    explicit GlobalSource(const CGlobalMaterialParameterManager* manager) : m_store(manager->store()) {}
    bool find(uint16_t id, SParamView& view) const {
        if (id >= m_store.entries.size() || m_store.entries[id].ref == 0) return false;
        const detail::part1a::SParamEntry& entry = m_store.entries[id];
        view = {entry.type, entry.count, entry.offset};
        return true;
    }
    const uint8_t* values() const { return m_store.values.data(); }
    void matrix(const SParamView& view, uint32_t index, core::CMatrix4<float>& out) const {
        const core::CMatrix4<float>* slot = nullptr;
        std::memcpy(&slot, values() + view.offset + index * sizeof(void*), sizeof slot);
        out = slot != nullptr ? *slot : core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
    ITexture* texture(const SParamView& view) const {
        ITexture* stored = nullptr;
        std::memcpy(&stored, values() + view.offset, sizeof stored);
        return stored;
    }
    CLight* light(const SParamView& view) const {
        CLight* stored = nullptr;
        std::memcpy(&stored, values() + view.offset, sizeof stored);
        return stored;
    }

    const detail::part1b::GlobalParameterStore& m_store;
};

// 1/255 as the binary writes it (0x3b808081).
constexpr float kByteToUnit = 0.0039215689f;

}  // namespace

}  // namespace glitch::video

// The fairy position the game keeps for the shaders (game-app Globals, 0x9f69b4): sent for the parameters of kind 17.
extern float m_fairyPos_new[4];

namespace glitch::video {

// 0x5b187c _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE20commitLightParameterEPKNS0_11CGLSLShaderEPKNS0_6CLightERKNS0_19SShaderParameterDefE
// Sends one light property to the uniform the definition names (location = its offset field). The kind picks the property:
// 0x13 position (w 1; a directional light, type 2, sends its direction with w 0), 0x14 direction (w 0), 0x15 attenuation, 0x16
// ambient, 0x17 diffuse, 0x18 specular colour (three or four floats by the value type 7 / 8), 0x19 falloff and 0x1a outer cone
// angle (one float). The position and direction come from the matrix of the light's transformation source (translation
// row 12..14, direction row 8..10); a light without one sends nothing for those.
void CProgrammableGLDriver::commitLightParameter(const CGLSLShader*, const CLight* light, const SShaderParameterDef& def) {
    if (light == nullptr) return;
    const int32_t location = static_cast<int32_t>(def.offset);
    auto sendVector = [&](const float* vector) {
        if (def.valueType == 7) {
            if (gl().uniform3fv) gl().uniform3fv(location, 1, vector);
        } else if (def.valueType == 8) {
            if (gl().uniform4fv) gl().uniform4fv(location, 1, vector);
        }
    };
    switch (def.parameterType) {
        case 0x13:
        case 0x14: {
            const core::CMatrix4<float>* matrix = light->m_transformationSource.matrix;
            if (matrix == nullptr) return;
            float vector[4];
            if (def.parameterType == 0x14 || light->m_type == 2) {
                vector[0] = matrix->M[8];
                vector[1] = matrix->M[9];
                vector[2] = matrix->M[10];
                vector[3] = 0.0f;
            } else {
                vector[0] = matrix->M[12];
                vector[1] = matrix->M[13];
                vector[2] = matrix->M[14];
                vector[3] = 1.0f;
            }
            sendVector(vector);
            break;
        }
        case 0x15:
            if (gl().uniform3fv) gl().uniform3fv(location, 1, &light->m_attenuation.X);
            break;
        case 0x16:
            sendVector(&light->m_ambientColor.r);
            break;
        case 0x17:
            sendVector(&light->m_diffuseColor.r);
            break;
        case 0x18:
            sendVector(&light->m_specularColor.r);
            break;
        case 0x19:
            if (gl().uniform1f) gl().uniform1f(location, light->m_falloff);
            break;
        case 0x1a:
            if (gl().uniform1f) gl().uniform1f(location, light->m_outerConeAngle);
            break;
        default:
            break;
    }
}

namespace {

// The loop of both commitCurrentMaterialParametersAux instances (0x5b4da0 / 0x5b2fac): they differ only in where the owner keeps
// its definitions and values. Each binding names a uniform (stage bit 15, index in the low 15 bits of the shader parameter) and
// an owner parameter; the owner parameter's value type decides how the value goes to GL:
//   1..4  int vectors of 1..4 (glUniform1iv .. 4iv), 5..7 float vectors of 1..3,
//   8     float4 array (glUniform4fv) - for uniforms of kind 17 the fairy position instead,
//   11    matrices: a single one directly, several gathered into one buffer (an unset slot is the identity),
//   12..15 textures: kind 33 sends the texture's LOD bias; otherwise each element is made current on the next texture unit and
//         its unit number sent (the binary resolves the texture once per element, from the first element's slot each time),
//   16    colours (bytes, scaled by 1/255), all elements taking the first colour's bytes, as in the binary,
//   17    float4 array, 18 light parameters (commitLightParameter); anything else is skipped.
template <class Source>
void commitBindings(CProgrammableGLDriver* driver, const CGLSLShader* shader, const Source& source,
                    const SShaderParameterBinding* begin, const SShaderParameterBinding* end) {
    uint32_t unit = 0;  // v56: the next texture unit, kept as 16 bits
    for (const SShaderParameterBinding* binding = begin; binding != end; ++binding) {
        const SShaderStageParameters& stage = shader->m_stageParameters[(binding->shaderParameter >> 15) & 1u];
        const SShaderParameterDef& uniform = stage.parameters[binding->shaderParameter & 0x7fffu];
        SParamView view;
        if (!source.find(binding->materialParameter, view)) continue;
        const int32_t location = static_cast<int32_t>(uniform.offset);
        const int32_t count = static_cast<int32_t>(uniform.count);
        const uint8_t* data = source.values() + view.offset;
        switch (view.type) {
            case 1:
                if (gl().uniform1iv) gl().uniform1iv(location, count, reinterpret_cast<const int32_t*>(data));
                break;
            case 2:
                if (gl().uniform2iv) gl().uniform2iv(location, count, reinterpret_cast<const int32_t*>(data));
                break;
            case 3:
                if (gl().uniform3iv) gl().uniform3iv(location, count, reinterpret_cast<const int32_t*>(data));
                break;
            case 4:
                if (gl().uniform4iv) gl().uniform4iv(location, count, reinterpret_cast<const int32_t*>(data));
                break;
            case 5:
                if (gl().uniform1fv) gl().uniform1fv(location, count, reinterpret_cast<const float*>(data));
                break;
            case 6:
                if (gl().uniform2fv) gl().uniform2fv(location, count, reinterpret_cast<const float*>(data));
                break;
            case 7:
                if (gl().uniform3fv) gl().uniform3fv(location, count, reinterpret_cast<const float*>(data));
                break;
            case 8:
                if (uniform.parameterType == 17) {
                    if (gl().uniform4fv) gl().uniform4fv(location, 1, m_fairyPos_new);
                } else if (gl().uniform4fv) {
                    gl().uniform4fv(location, count, reinterpret_cast<const float*>(data));
                }
                break;
            case 11: {
                if (count == 1) {
                    core::CMatrix4<float> matrix;
                    source.matrix(view, 0, matrix);
                    if (gl().uniformMatrix4fv) gl().uniformMatrix4fv(location, 1, 0, matrix.M);
                } else {
                    float* buffer = reinterpret_cast<float*>(glitch::core::allocProcessBuffer(count << 6));
                    for (int32_t i = 0; i < count; ++i) {
                        core::CMatrix4<float> matrix;
                        source.matrix(view, static_cast<uint32_t>(i), matrix);
                        std::memcpy(buffer + 16 * i, matrix.M, 64);
                    }
                    if (gl().uniformMatrix4fv) gl().uniformMatrix4fv(location, count, 0, buffer);
                    if (buffer != nullptr) glitch::core::releaseProcessBuffer(buffer);
                }
                break;
            }
            case 12:
            case 13:
            case 14:
            case 15: {
                if (uniform.parameterType == 33) {
                    boost::intrusive_ptr<ITexture> texture =
                        detail::resolveTextureParameter(source.texture(view), view.type, driver);
                    if (gl().uniform1f) gl().uniform1f(location, texture ? texture->m_lodBias : 0.0f);
                    break;
                }
                if (count == 0) break;
                uint32_t sent = 0;
                for (int32_t i = 0; i < count; ++i) {
                    boost::intrusive_ptr<ITexture> texture = detail::resolveTextureParameter(source.texture(view), view.type, driver);
                    ++sent;
                    driver->setTexture(unit, texture.get(), texture ? (texture->m_flags38 & 3u) : 0u);
                    if (gl().uniform1i) gl().uniform1i(location, static_cast<int32_t>(unit));
                    unit = static_cast<uint16_t>(unit + 1);
                }
                break;
            }
            case 16: {
                float* buffer = reinterpret_cast<float*>(glitch::core::allocProcessBuffer(16 * count));
                const uint8_t* color = data;
                for (int32_t i = 0; i < count; ++i) {
                    float* out = buffer + 4 * i;
                    out[0] = static_cast<float>(color[0]) * kByteToUnit;
                    out[1] = static_cast<float>(color[1]) * kByteToUnit;
                    out[2] = static_cast<float>(color[2]) * kByteToUnit;
                    out[3] = static_cast<float>(color[3]) * kByteToUnit;
                }
                if (gl().uniform4fv) gl().uniform4fv(location, count, buffer);
                if (buffer != nullptr) glitch::core::releaseProcessBuffer(buffer);
                break;
            }
            case 17:
                if (gl().uniform4fv) gl().uniform4fv(location, count, reinterpret_cast<const float*>(data));
                break;
            case 18:
                driver->commitLightParameter(shader, source.light(view), uniform);
                break;
            default:
                break;
        }
    }
}

}  // namespace

namespace {
MaterialSource makeSource(const CMaterial* material) { return MaterialSource(material); }
GlobalSource makeSource(const CGlobalMaterialParameterManager* manager) { return GlobalSource(manager); }
}  // namespace

// 0x5b4da0 _ZN6glitch5video21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEE34commitCurrentMaterialParametersAuxINS0_9CMaterialEEEvPKNS0_11CGLSLShaderEPKT_PKNS0_23SShaderParameterBindingESE_
// 0x5b2fac ...AuxINS0_31CGlobalMaterialParameterManagerEEEvPKNS0_11CGLSLShaderEPKT_PKNS0_23SShaderParameterBindingESE_
template <class Parameters>
void CProgrammableGLDriver::commitCurrentMaterialParametersAux(const CGLSLShader* shader, const Parameters* parameters,
                                                               const SShaderParameterBinding* begin,
                                                               const SShaderParameterBinding* end) {
    if (begin == end) return;
    commitBindings(this, shader, makeSource(parameters), begin, end);
}

template void CProgrammableGLDriver::commitCurrentMaterialParametersAux<CMaterial>(const CGLSLShader*, const CMaterial*,
                                                                                   const SShaderParameterBinding*,
                                                                                   const SShaderParameterBinding*);
template void CProgrammableGLDriver::commitCurrentMaterialParametersAux<CGlobalMaterialParameterManager>(
    const CGLSLShader*, const CGlobalMaterialParameterManager*, const SShaderParameterBinding*, const SShaderParameterBinding*);

}  // namespace glitch::video
