// CProgrammableGLDriver<CGLSLShaderHandler>: doVersionCheck, setupArrays (with the SDrawSetup constructor), and the three per-pass
// parameter commits (direct, indirect, automatic). Owner K1b. Transcribed from Hex-Rays and the ARM listings (the GL calls hide
// their arguments in the decompiler).
//
// Driver layout used here (original offsets): +0xe4 global parameter manager, +0xec current material, +0xf4 current shader,
// +0xf8 technique of the current material, +0x1c4 cached GL render state (the point size is its +0x58), +0x270 the enabled
// vertex attribute array mask (word 7 of the common shadow state), +0x288 transform states, +0x4a4 GL version number,
// +0x820 shader handler, +0x828 world / +0x86c view / +0x8b0 projection as the shaders see them, +0x8f4 the eighteen derived
// matrices, +0xdbc the dirty mask of the derived matrices.
#include <cstdint>
#include <cstring>

#include "glitch-core-io/core/matrix4_operators.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/programmable_gl_driver.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::video {

namespace {

deps::GLFunctionTable& gl() { return deps::activeGLFunctionTable(); }

// DefaultAttributeValue (ELF 0x8e018c): the constant value of a vertex attribute that has no stream, four floats per attribute.
const uint32_t kDefaultAttributeValue[30][4] = {
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 0
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 1
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 2
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 3
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 4
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 5
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 6
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 7
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 8
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 9
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 10
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 11
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 12
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 13
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 14
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 15
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 16
    {0x00000000u, 0x00000000u, 0x3f800000u, 0x3f800000u},  // 17
    {0x3f800000u, 0x3f800000u, 0x3f800000u, 0x3f800000u},  // 18
    {0x3f800000u, 0x3f800000u, 0x3f800000u, 0x3f800000u},  // 19
    {0x3f800000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 20
    {0x3f800000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 21
    {0x3f800000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 22
    {0x3f800000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 23
    {0x00000000u, 0x3f800000u, 0x00000000u, 0x3f800000u},  // 24
    {0x00000000u, 0x3f800000u, 0x00000000u, 0x3f800000u},  // 25
    {0x00000000u, 0x3f800000u, 0x00000000u, 0x3f800000u},  // 26
    {0x00000000u, 0x3f800000u, 0x00000000u, 0x3f800000u},  // 27
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 28
    {0x00000000u, 0x00000000u, 0x00000000u, 0x3f800000u},  // 29
};

// VertexAttributeTypeMap (0x8e036c): the GL type of a stream's value type (byte, unsigned byte, short, unsigned short, -, -, float).
constexpr uint32_t kVertexAttributeTypeMap[7] = {0x1400, 0x1401, 0x1402, 0x1403, 0, 0, 0x1406};

float bitsToFloat(uint32_t bits) {
    float f;
    std::memcpy(&f, &bits, sizeof f);
    return f;
}

}  // namespace

// 0x5b1870 CProgrammableGLDriver::doVersionCheck()
// CGLSLShaderHandler::doVersionCheck on the handler at +0x820, with the GL version number the common driver set up (+0x4a4).
bool CProgrammableGLDriver::doVersionCheck() { return m_handler.doVersionCheck(m_glVersion); }

// 0x5b6584 CProgrammableGLDriver::setupArrays(CGLSLShader const*, CVertexStreams const*, unsigned char const*)
// For every vertex attribute the shader declares (attribute and location), the attribute map names the stream that feeds it. A
// stream with a usable buffer (not a client-memory buffer without data) gets its buffer made current (once per run of equal buffers)
// and the attribute array pointed at it (normalised unless the attribute is bit 0 or bit 29, or the value type is 6); the attribute
// is added to the new enabled mask. Any other attribute takes its constant default value. Afterwards the arrays whose enabled state
// differs from the cached mask are enabled or disabled, and the mask is stored.
void CProgrammableGLDriver::setupArrays(const CGLSLShader* shaderArg, const CVertexStreams* streams, const uint8_t* attributeMap) {
    const IShader* shader = shaderArg;
    uint32_t newMask = 0;
    const IBuffer* lastBuffer = nullptr;
    const void* pointer = nullptr;
    for (uint32_t i = 0; i < shader->m_vertexAttributeDefCount; ++i) {
        const SShaderVertexAttributeDef& def = shader->m_vertexAttributeDefs[i];
        const uint32_t attribute = def.attribute;  // +0x04
        const uint32_t location = def.index;       // +0x06
        const uint32_t mapped = attributeMap[attribute];
        const SVertexStream* stream = nullptr;
        IBuffer* buffer = nullptr;
        if (mapped != 0xff && mapped < streams->m_streams.size()) {
            stream = &streams->m_streams[mapped];
            buffer = stream->buffer.get();
        }
        if (buffer != nullptr && (buffer->m_usage != 4 || buffer->m_data != nullptr)) {
            if (lastBuffer != buffer) {
                pointer = setBuffer(buffer);
            }
            const uint32_t type = stream->field0a;
            const bool normalized = type != 6 && ((1u << attribute) & ~0x20000001u) != 0;
            if (gl().vertexAttribPointer) {
                gl().vertexAttribPointer(location, stream->field0c, type < 7 ? kVertexAttributeTypeMap[type] : 0u,
                                         normalized ? 1 : 0, stream->field0e,
                                         static_cast<const uint8_t*>(pointer) + stream->offset);
            }
            newMask |= 1u << location;
            lastBuffer = buffer;
        } else {
            // glVertexAttrib4f(location, default[attribute]): the constant default value of the attribute
            if (attribute < 30 && gl().vertexAttrib4f) {
                gl().vertexAttrib4f(location, bitsToFloat(kDefaultAttributeValue[attribute][0]),
                                    bitsToFloat(kDefaultAttributeValue[attribute][1]),
                                    bitsToFloat(kDefaultAttributeValue[attribute][2]),
                                    bitsToFloat(kDefaultAttributeValue[attribute][3]));
            }
        }
    }
    uint32_t& enabled = m_common.m_words[7];  // +0x270
    uint32_t changed = newMask ^ enabled;
    if (changed != 0) {
        for (uint32_t bit = 0;; ++bit) {
            const uint32_t flag = 1u << bit;
            if ((flag & changed) != 0) {
                if ((flag & newMask) != 0) {
                    if (gl().enableVertexAttribArray) gl().enableVertexAttribArray(bit);
                } else {
                    if (gl().disableVertexAttribArray) gl().disableVertexAttribArray(bit);
                }
                changed &= ~flag;
            }
            if (changed == 0) break;
        }
    }
    enabled = newMask;
}

// 0x5b6768 (C1) / 0x5b678c (C2) CProgrammableGLDriver::SDrawSetup::SDrawSetup(driver, streams, primitives, attributeMap, unsigned)
// Keeps the driver and sets up the vertex arrays for its current shader. The primitive stream and the last argument are not used.
CProgrammableGLDriver::SDrawSetup::SDrawSetup(CProgrammableGLDriver* driver, const CVertexStreams* streams,
                                              const CPrimitiveStream&, const uint8_t* attributeMap, uint32_t)
    : m_driver(driver) {
    driver->setupArrays(static_cast<const CGLSLShader*>(driver->m_shaderF4), streams, attributeMap);
}

// 0x5b5340 CProgrammableGLDriver::commitCurrentMaterialDirectParameters(unsigned char)
// The material parameters of pass `pass` of the current technique that its binding table lists first (the pass's binding count).
void CProgrammableGLDriver::commitCurrentMaterialDirectParameters(uint8_t pass) {
    const SRenderPass& renderPass = m_materialEc->m_renderer->m_techniques[m_flagF8].passes[pass];
    commitCurrentMaterialParametersAux<CMaterial>(static_cast<const CGLSLShader*>(m_shaderF4), m_materialEc, renderPass.unknown28,
                                                  renderPass.unknown28 + renderPass.unknown2c);
}

// 0x5b8acc CProgrammableGLDriver::commitCurrentMaterialIndirectParameters(unsigned char, CVertexStreams const*, unsigned char const*)
// The pass's binding table holds three runs: the direct material bindings (committed by the direct commit), then `unknown2e`
// indirect material bindings, then the global parameter manager's bindings (as many as the shader's two stages have parameters beyond
// their automatic ones). The last two runs are committed here, and then the automatic parameters. Returns false.
void CProgrammableGLDriver::commitCurrentMaterialIndirectParameters(uint8_t pass, const CVertexStreams* streams,
                                                                    const uint8_t* attributeMap) {
    const CGLSLShader* shader = static_cast<const CGLSLShader*>(m_shaderF4);
    const SRenderPass& renderPass = m_materialEc->m_renderer->m_techniques[m_flagF8].passes[pass];
    const SShaderParameterBinding* first = renderPass.unknown28;
    const SShaderParameterBinding* indirectBegin = first + renderPass.unknown2c;
    const SShaderParameterBinding* globalBegin = indirectBegin + renderPass.unknown2e;
    commitCurrentMaterialParametersAux<CMaterial>(shader, m_materialEc, indirectBegin, globalBegin);
    const uint32_t globalCount = static_cast<uint16_t>(shader->m_stageParameters[1].count + shader->m_stageParameters[0].count -
                                                       shader->m_stageParameters[1].field04 - shader->m_stageParameters[0].field04);
    commitCurrentMaterialParametersAux<CGlobalMaterialParameterManager>(shader, m_globalParameters, globalBegin,
                                                                       first + globalCount);
    commitCurrentMaterialAutomaticParameters(shader, streams, attributeMap);
}

// 0x5b78b8 CProgrammableGLDriver::commitCurrentMaterialAutomaticParameters(CGLSLShader const*, CVertexStreams const*, unsigned char const*)
// The shader's automatic parameters: for every parameter of the first `field04` definitions of each stage, by its type (0x22..0x3e):
//   0x22 point size; 0x23 / 0x24 / 0x25 the view / world / projection matrix as the shaders see it; 0x26..0x38 the derived
//   matrices (each rebuilt from those three when its dirty bit is set, then sent): world-view, projection-world-view, inverse view,
//   inverse world, inverse of world-projection / world-view / world-world-view, the inverse transposes, the transposes, the inverse
//   and inverse transpose of the projection; 0x39 the projection's depth range terms; 0x3a the model-space camera position;
//   0x3b..0x3d the viewport rectangle, its size and the reciprocal of its size; 0x3e the time.
// When the position stream is quantised (its attribute's quantisation flag), the view matrix is changed for the call: the stream's
// offset is carried through it and it is scaled by the stream's scale. The original matrix is put back at the end.
// The matrix of type 0x38 is the 19th derived matrix, which the original's object does not have room for (it overwrites the dirty
// word at +0xdbc and what follows); here it lives in a local.
void CProgrammableGLDriver::commitCurrentMaterialAutomaticParameters(const CGLSLShader* shaderArg, const CVertexStreams* streams,
                                                                     const uint8_t* attributeMap) {
    using Matrix = core::CMatrix4<float>;
    const IShader* shader = shaderArg;
    Matrix& world = m_shaderMatrices[0];       // +0x828
    Matrix& view = m_shaderMatrices[1];        // +0x86c
    Matrix& projection = m_shaderMatrices[2];  // +0x8b0
    uint32_t& dirty = m_matrixDirtyMask;       // +0xdbc

    bool viewChanged = false;
    if (streams != nullptr && attributeMap != nullptr && attributeMap[0] < streams->m_streams.size()) {
        const int32_t attribute = static_cast<int32_t>(streams->m_streams[attributeMap[0]].attribute);
        if (attribute <= static_cast<int32_t>(streams->m_count0c) && (streams->m_flags & (4u << attribute)) != 0 &&
            static_cast<size_t>(2 * attribute + 1) < streams->m_quantization.size()) {
            const core::vector3d<float>& scale = streams->m_quantization[2 * attribute];
            const core::vector3d<float>& offset = streams->m_quantization[2 * attribute + 1];
            const float x = offset.X * view.M[0] + offset.Y * view.M[4] + offset.Z * view.M[8] + view.M[12];
            const float y = offset.X * view.M[1] + offset.Y * view.M[5] + offset.Z * view.M[9] + view.M[13];
            const float z = offset.X * view.M[2] + offset.Y * view.M[6] + offset.Z * view.M[10] + view.M[14];
            view.flag = false;
            view.M[14] = z;
            view.M[13] = y;
            view.M[12] = x;
            view.postScale(scale);
            viewChanged = true;
            dirty |= 0xdce7u;
        }
    }

    auto upload = [&](int32_t location, Matrix& matrix) {
        matrix.flag = false;
        if (gl().uniformMatrix4fv) gl().uniformMatrix4fv(location, 1, 0, matrix.M);
    };
    // A derived matrix: when its bit is set, `rebuild` makes it; then its bit is cleared and it is sent.
    auto derived = [&](uint32_t bit, int32_t location, Matrix& matrix, auto&& rebuild) {
        if ((dirty & (1u << bit)) != 0) {
            rebuild();
            dirty &= ~(1u << bit);
        }
        upload(location, matrix);
    };

    for (int stage = 0; stage < 2; ++stage) {
        const SShaderStageParameters& list = shader->m_stageParameters[stage];
        for (uint32_t index = 0; index < list.field04; ++index) {
            const SShaderParameterDef& def = list.parameters[index];
            const int32_t location = static_cast<int32_t>(def.offset);  // +0x0c
            Matrix temporary;
            switch (def.parameterType) {
                case 0x22:
                    if (gl().uniform1f) gl().uniform1f(location, m_shadow.m_pointSize);
                    break;
                case 0x23: upload(location, view); break;
                case 0x24: upload(location, world); break;
                case 0x25: upload(location, projection); break;
                case 0x26:
                    derived(0, location, m_derivedMatrices[0], [&] { m_derivedMatrices[0] = world * view; });
                    break;
                case 0x27:
                    derived(1, location, m_derivedMatrices[1], [&] {
                        const Matrix first = projection * world;
                        m_derivedMatrices[1] = first * view;
                    });
                    break;
                case 0x28:
                    derived(2, location, m_derivedMatrices[2], [&] { view.getInverse(m_derivedMatrices[2]); });
                    break;
                case 0x29:
                    derived(3, location, m_derivedMatrices[3], [&] { world.getInverse(m_derivedMatrices[3]); });
                    break;
                case 0x2a:
                    derived(4, location, m_derivedMatrices[4], [&] {
                        const Matrix product = world * projection;
                        product.getInverse(m_derivedMatrices[4]);
                    });
                    break;
                case 0x2b:
                    derived(5, location, m_derivedMatrices[5], [&] {
                        const Matrix product = world * view;
                        product.getInverse(m_derivedMatrices[5]);
                    });
                    break;
                case 0x2c:
                    derived(6, location, m_derivedMatrices[6], [&] {
                        const Matrix first = world * world;
                        const Matrix second = first * view;
                        second.getInverse(m_derivedMatrices[6]);
                    });
                    break;
                case 0x2d:
                    derived(7, location, m_derivedMatrices[7], [&] {
                        temporary.flag = false;
                        view.getInverse(temporary);
                        temporary.getTransposed(m_derivedMatrices[7]);
                    });
                    break;
                case 0x2e:
                    derived(8, location, m_derivedMatrices[8], [&] {
                        temporary.flag = false;
                        world.getInverse(temporary);
                        temporary.getTransposed(m_derivedMatrices[8]);
                    });
                    break;
                case 0x2f:
                    derived(9, location, m_derivedMatrices[9], [&] {
                        temporary.flag = false;
                        const Matrix product = world * projection;
                        product.getInverse(temporary);
                        temporary.getTransposed(m_derivedMatrices[9]);
                    });
                    break;
                case 0x30:
                    derived(10, location, m_derivedMatrices[10], [&] {
                        temporary.flag = false;
                        const Matrix product = world * view;
                        product.getInverse(temporary);
                        temporary.getTransposed(m_derivedMatrices[10]);
                    });
                    break;
                case 0x31:
                    derived(11, location, m_derivedMatrices[11], [&] {
                        temporary.flag = false;
                        const Matrix first = projection * world;
                        const Matrix second = first * view;
                        second.getInverse(temporary);
                        temporary.getTransposed(m_derivedMatrices[11]);
                    });
                    break;
                case 0x32:
                    derived(12, location, m_derivedMatrices[12], [&] { view.getTransposed(m_derivedMatrices[12]); });
                    break;
                case 0x33:
                    derived(13, location, m_derivedMatrices[13], [&] { world.getTransposed(m_derivedMatrices[13]); });
                    break;
                case 0x34:
                    derived(14, location, m_derivedMatrices[14], [&] {
                        const Matrix product = world * view;
                        product.getTransposed(m_derivedMatrices[14]);
                    });
                    break;
                case 0x35:
                    derived(15, location, m_derivedMatrices[15], [&] {
                        const Matrix first = projection * world;
                        const Matrix second = first * view;
                        second.getTransposed(m_derivedMatrices[15]);
                    });
                    break;
                case 0x36:
                    derived(16, location, m_derivedMatrices[16], [&] { projection.getInverse(m_derivedMatrices[16]); });
                    break;
                case 0x37:
                    derived(17, location, m_derivedMatrices[17], [&] { projection.getTransposed(m_derivedMatrices[17]); });
                    break;
                case 0x38:
                    derived(18, location, temporary, [&] {
                        Matrix inverse;
                        inverse.flag = false;
                        projection.getInverse(inverse);
                        inverse.getTransposed(temporary);
                    });
                    break;
                case 0x39: {
                    // The depth range terms of the transform-state projection: v39 = -M[14], v38 = M[10].
                    Matrix& raw = m_matrices[2];
                    const float m10 = raw.M[10];
                    const float m14 = -raw.M[14];
                    raw.flag = false;
                    const float values[2] = {m14 / m10, m14 / (m10 - 1.0f)};
                    if (def.valueType == 6) {
                        if (gl().uniform2fv) gl().uniform2fv(location, 1, values);
                    } else if (def.valueType == 2) {
                        const int32_t integers[2] = {static_cast<int32_t>(values[0]), static_cast<int32_t>(values[1])};
                        if (gl().uniform2iv) gl().uniform2iv(location, 1, integers);
                    }
                    break;
                }
                case 0x3a: {
                    if ((dirty & 8u) != 0) {
                        world.getInverse(m_derivedMatrices[3]);
                        dirty &= ~8u;
                    }
                    const Matrix& inverse = m_derivedMatrices[3];
                    if (def.valueType == 8) {
                        const float values[4] = {inverse.M[12], inverse.M[13], inverse.M[14], inverse.M[15]};
                        if (gl().uniform4fv) gl().uniform4fv(location, 1, values);
                    } else {
                        const float values[3] = {inverse.M[12], inverse.M[13], inverse.M[14]};
                        if (gl().uniform3fv) gl().uniform3fv(location, 1, values);
                    }
                    break;
                }
                case 0x3b:
                case 0x3c:
                case 0x3d: {
                    const IRenderTarget* target = m_renderTargets.back().get();
                    const int32_t left = target->m_viewport.UpperLeftCorner.X;
                    const int32_t top = target->m_viewport.UpperLeftCorner.Y;
                    const int32_t right = target->m_viewport.LowerRightCorner.X;
                    const int32_t bottom = target->m_viewport.LowerRightCorner.Y;
                    if (def.parameterType == 0x3b) {
                        if (def.valueType == 8) {
                            const float values[4] = {static_cast<float>(left), static_cast<float>(top),
                                                     static_cast<float>(right - left), static_cast<float>(bottom - top)};
                            if (gl().uniform4fv) gl().uniform4fv(location, 1, values);
                        } else if (def.valueType == 4) {
                            const int32_t values[4] = {left, top, right - left, bottom - top};
                            if (gl().uniform4iv) gl().uniform4iv(location, 1, values);
                        }
                    } else if (def.parameterType == 0x3c) {
                        if (def.valueType == 6) {
                            const float values[2] = {static_cast<float>(right - left), static_cast<float>(bottom - top)};
                            if (gl().uniform2fv) gl().uniform2fv(location, 1, values);
                        } else if (def.valueType == 2) {
                            const int32_t values[2] = {right - left, bottom - top};
                            if (gl().uniform2iv) gl().uniform2iv(location, 1, values);
                        }
                    } else if (def.valueType == 6) {
                        const float values[2] = {1.0f / static_cast<float>(right - left), 1.0f / static_cast<float>(bottom - top)};
                        if (gl().uniform2fv) gl().uniform2fv(location, 1, values);
                    }
                    break;
                }
                case 0x3e:
                    if (def.valueType == 5) {
                        const float seconds = static_cast<float>(glitch::os::Timer::getTime()) / bitsToFloat(0x447a0000u);
                        if (gl().uniform1f) gl().uniform1f(location, seconds);
                    } else if (def.valueType == 1) {
                        const int32_t time = static_cast<int32_t>(glitch::os::Timer::getTime());
                        if (gl().uniform1iv) gl().uniform1iv(location, 1, &time);
                    }
                    break;
                default:
                    break;
            }
        }
    }
    if (viewChanged) {
        view = m_matrices[1];
        dirty |= 0xdce7u;
    }
}

}  // namespace glitch::video
