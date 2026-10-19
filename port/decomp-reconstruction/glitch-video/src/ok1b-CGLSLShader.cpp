// CGLSLShader::linkProgram (0x6de9f8). Owner K1b. Hex-Rays cuts this function after the failure path, so the body is transcribed
// from the ARM listing: it links the GL program, reports a failed link, and on success reads the active vertex attributes and
// uniforms into the shader's definition lists.
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <cstring>
#include <new>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/gl_small.hpp"
#include "glitch-video/shader_manager.hpp"

namespace glitch::video {

namespace {

constexpr uint32_t kGlLinkStatus = 0x8b82;
constexpr uint32_t kGlInfoLogLength = 0x8b84;
constexpr uint32_t kGlActiveUniforms = 0x8b86;
constexpr uint32_t kGlActiveUniformMaxLength = 0x8b87;
constexpr uint32_t kGlActiveAttributes = 0x8b89;
constexpr uint32_t kGlActiveAttributeMaxLength = 0x8b8a;

// The shader value type code of a GL uniform type (the compare chain of the listing at 0x6ded10..): scalars and vectors of int / bool
// give the integer codes 1..4, float gives 5..8, the matrices 9..11 and the samplers 12..15; any other type gives 255.
uint32_t valueTypeOfGlType(uint32_t type) {
    switch (type) {
        case 0x1404: return 1;   // GL_INT
        case 0x1406: return 5;   // GL_FLOAT
        case 0x8b50: return 6;   // GL_FLOAT_VEC2
        case 0x8b51: return 7;   // GL_FLOAT_VEC3
        case 0x8b52: return 8;   // GL_FLOAT_VEC4
        case 0x8b53: return 2;   // GL_INT_VEC2
        case 0x8b54: return 3;   // GL_INT_VEC3
        case 0x8b55: return 4;   // GL_INT_VEC4
        case 0x8b56: return 1;   // GL_BOOL
        case 0x8b57: return 2;   // GL_BOOL_VEC2
        case 0x8b58: return 3;   // GL_BOOL_VEC3
        case 0x8b59: return 4;   // GL_BOOL_VEC4
        case 0x8b5a: return 9;   // GL_FLOAT_MAT2
        case 0x8b5b: return 10;  // GL_FLOAT_MAT3
        case 0x8b5c: return 11;  // GL_FLOAT_MAT4
        case 0x8b5e: return 12;  // GL_SAMPLER_2D
        case 0x8b5f: return 13;  // GL_SAMPLER_3D_OES
        case 0x8b60: return 14;  // GL_SAMPLER_CUBE
        case 0x8b63: return 15;  // GL_SAMPLER_EXTERNAL_OES
        default: return 0xff;
    }
}

}  // namespace

// 0x6de9f8 CGLSLShader::linkProgram()
// glLinkProgram. A failed link logs "%s : GLSL shader program failed to link" with the program's info log, clears the byte at +0x3e
// and returns false. A good link reads the log (and drops it), counts the active attributes and uniforms, and frees the previous
// definitions (deleteInfo). The attribute list needs a longest-name length when there are uniforms and the uniform list needs one
// always ("failed to find attribute information" / "failed to find uniform information", false). One block holds both lists, the
// attributes first. Each active attribute whose name maps to a known vertex attribute (guessShaderVertexAttribute <= 0x1d) gets its
// name, attribute and location, and its bit in the vertex attribute mask (+0x38); each active uniform gets its parameter type
// (guessShaderParameterType, else 2 for a sampler and 0 for anything else), the value type of its GL type, the sub id, the array
// size and its location; the lowest sub id among the light parameters (types 0x13..0x1b) is kept at +0x3d. The uniforms are sorted
// (sortParameters) and the number of automatic ones is stored at +0x2c; the byte at +0x50 is set. Returns true.
bool CGLSLShader::linkProgram() {
    auto& t = deps::activeGLFunctionTable();
    if (t.linkProgram) t.linkProgram(m_glProgram);
    int32_t status = 0;
    if (t.getProgramiv) t.getProgramiv(m_glProgram, kGlLinkStatus, &status);
    if (status == 0) {
        int32_t logLength = 0;
        if (t.getProgramiv) t.getProgramiv(m_glProgram, kGlInfoLogLength, &logLength);
        char* log = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(logLength));
        int32_t written = 0;
        if (t.getProgramInfoLog) t.getProgramInfoLog(m_glProgram, logLength, &written, log);
        os::Printer::logf(glitch::ELL_ERROR, "%s : GLSL shader program failed to link\n%s", m_name.c_str(), log);
        m_unknown3e = 0;
        if (log != nullptr) glitch::core::releaseProcessBuffer(log);
        return false;
    }

    int32_t logLength = 0;
    if (t.getProgramiv) t.getProgramiv(m_glProgram, kGlInfoLogLength, &logLength);
    if (logLength > 1) {
        char* log = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(logLength));
        int32_t written = 0;
        if (t.getProgramInfoLog) t.getProgramInfoLog(m_glProgram, logLength, &written, log);
        if (log != nullptr) glitch::core::releaseProcessBuffer(log);
    }

    int32_t attributeCount = 0;
    int32_t uniformCount = 0;
    if (t.getProgramiv) t.getProgramiv(m_glProgram, kGlActiveAttributes, &attributeCount);
    if (t.getProgramiv) t.getProgramiv(m_glProgram, kGlActiveUniforms, &uniformCount);
    deleteInfo();
    int32_t attributeNameLength = 0;
    if (t.getProgramiv) t.getProgramiv(m_glProgram, kGlActiveAttributeMaxLength, &attributeNameLength);
    if (uniformCount > 0 && attributeNameLength == 0) {
        os::Printer::log(m_name.c_str(), "failed to find attribute information", glitch::ELL_ERROR);
        return false;
    }
    int32_t uniformNameLength = 0;
    if (t.getProgramiv) t.getProgramiv(m_glProgram, kGlActiveUniformMaxLength, &uniformNameLength);
    if (uniformNameLength == 0) {
        os::Printer::log(m_name.c_str(), "failed to find uniform information", glitch::ELL_ERROR);
        return false;
    }

    // One block for both lists (the attributes first), as the original; the port's records are the host size, and the entries are
    // constructed empty where the original leaves them unwritten (an attribute the shader module cannot name).
    const size_t attributeBytes = static_cast<size_t>(attributeCount) * sizeof(SShaderVertexAttributeDef);
    uint8_t* block = new uint8_t[attributeBytes + static_cast<size_t>(uniformCount) * sizeof(SShaderParameterDef)];
    m_vertexAttributeDefCount = static_cast<uint8_t>(attributeCount);  // +0x3c
    m_vertexAttributeDefs = reinterpret_cast<SShaderVertexAttributeDef*>(block);  // +0x24
    for (int32_t i = 0; i < attributeCount; ++i) new (&m_vertexAttributeDefs[i]) SShaderVertexAttributeDef();

    char* name = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(attributeNameLength + 1));
    for (int32_t i = 0; i < attributeCount; ++i) {
        int32_t size = 0;
        uint32_t type = 0;
        if (t.getActiveAttrib) t.getActiveAttrib(m_glProgram, static_cast<uint32_t>(i), attributeNameLength, nullptr, &size, &type, name);
        const int32_t attribute = guessShaderVertexAttribute(name);
#ifdef DH2_HOST_RUNNER
        if (std::getenv("DH2_SHADER_LOG") != nullptr) std::fprintf(stdout, "SHADERLOG %s attr %s -> %d\n", m_name.c_str(), name, attribute);
#endif
        if (attribute <= 0x1d) {
            const uint16_t location = static_cast<uint16_t>(t.getAttribLocation ? t.getAttribLocation(m_glProgram, name) : 0);
            glitch::core::detail::SSharedStringData* data =
                glitch::core::detail::getSharedString(glitch::core::detail::sharedStringHeapTable(), name, false);
            SShaderVertexAttributeDef& def = m_vertexAttributeDefs[i];
            def.name = data;
            if (data != nullptr) ++data->useCount;
            def.attribute = static_cast<uint16_t>(attribute);  // +0x04
            def.index = location;                              // +0x06
        }
        // The shift is by a register: an attribute of 255 (not a vertex attribute) shifts the bit out.
        if (static_cast<uint32_t>(attribute) < 32) m_vertexAttributeMask |= 1u << attribute;
    }
    if (name != nullptr) glitch::core::releaseProcessBuffer(name);

    if (uniformCount == 0) return true;

    SShaderStageParameters& stage = m_stageParameters[0];
    SShaderParameterDef* uniforms = reinterpret_cast<SShaderParameterDef*>(block + attributeBytes);
    for (int32_t i = 0; i < uniformCount; ++i) new (&uniforms[i]) SShaderParameterDef();
    stage.count = static_cast<uint16_t>(uniformCount);  // +0x2e
    stage.parameters = uniforms;                         // +0x28
    name = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(uniformNameLength + 1));
    m_unknown3d = 0xff;
    for (int32_t i = 0; i < uniformCount; ++i) {
        int32_t size = 0;
        uint32_t glType = 0;
        if (t.getActiveUniform) t.getActiveUniform(m_glProgram, static_cast<uint32_t>(i), uniformNameLength, nullptr, &size, &glType, name);
        const uint32_t valueType = valueTypeOfGlType(glType);
        uint32_t parameterType = static_cast<uint32_t>(guessShaderParameterType(name));
        if (parameterType == 0xff) parameterType = (valueType - 0xc) <= 3u ? 2u : 0u;  // samplers are type 2
        const int32_t location = t.getUniformLocation ? t.getUniformLocation(m_glProgram, name) : 0;
#ifdef DH2_HOST_RUNNER
        if (std::getenv("DH2_SHADER_LOG") != nullptr) std::fprintf(stdout, "SHADERLOG %s uniform %s type %u\n", m_name.c_str(), name, parameterType);
#endif
        const uint8_t subId = static_cast<uint8_t>(guessSubIdFromName(name, static_cast<E_SHADER_PARAMETER_TYPE>(parameterType)));
        glitch::core::detail::SSharedStringData* data =
            glitch::core::detail::getSharedString(glitch::core::detail::sharedStringHeapTable(), name, false);
        SShaderParameterDef& def = uniforms[i];
        def.name = data;
        if (data != nullptr) ++data->useCount;
        def.parameterType = static_cast<uint16_t>(parameterType);  // +0x04
        def.valueType = static_cast<uint8_t>(valueType);           // +0x06
        def.arg = subId;                                           // +0x07
        def.count = static_cast<uint32_t>(size);                   // +0x08
        def.offset = static_cast<uint32_t>(location);              // +0x0c
        if (parameterType - 0x13u <= 8u && m_unknown3d > subId) m_unknown3d = subId;
    }
    m_unknown50 = 1;
    stage.field04 = sortParameters(uniforms, static_cast<uint16_t>(uniformCount));  // +0x2c
    if (name != nullptr) glitch::core::releaseProcessBuffer(name);
    return true;
}

}  // namespace glitch::video
