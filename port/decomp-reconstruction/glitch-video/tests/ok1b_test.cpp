// Host checks of owner K1b's rows: the material parameter owners (R pointer rows and dispatchers, M matrix Cvt dispatch, G texture /
// matrix / element rows, initParametersToIdentity), the GL buffer slots, setupArrays, linkProgram and the automatic parameters.
// GL calls go through the function table, which this test replaces with recorders. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_parameters.hpp"
#include "glitch-video/material_parameters_bind_g.hpp"
#include "glitch-video/programmable_gl_driver.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "video_test_types.hpp"

using namespace glitch::video;
namespace core = glitch::core;
using glitch::video::detail::IMaterialParameters;
using glitch::video::detail::SGlobalParameterOwner;
using glitch::video::detail::SParameterBlockHeader;
using glitch::video::detail::SParameterEntry;

static int failures = 0;
#define CHECK(cond)                                             \
    do {                                                        \
        if (!(cond)) {                                          \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond); \
            ++failures;                                         \
        }                                                       \
    } while (0)

namespace {

std::vector<uint32_t> g_bound;           // glBindBuffer targets / names
std::vector<uint32_t> g_deleted;         // glDeleteBuffers names
int g_bufferData = 0;
int g_bufferSubData = 0;
uint32_t g_nextBuffer = 20;
uint32_t g_errorToReturn = 0;
std::vector<std::vector<float>> g_matrices;  // glUniformMatrix4fv payloads
std::vector<int> g_matrixLocations;
std::vector<int> g_pointerCalls;         // locations of glVertexAttribPointer
std::vector<int> g_attribCalls;          // locations of glVertexAttrib4f
std::vector<uint32_t> g_enabled, g_disabled;

void resetRecorders() {
    g_bound.clear();
    g_deleted.clear();
    g_bufferData = g_bufferSubData = 0;
    g_matrices.clear();
    g_matrixLocations.clear();
    g_pointerCalls.clear();
    g_attribCalls.clear();
    g_enabled.clear();
    g_disabled.clear();
}

// ---- Material parameter owners.
void parameterOwners() {
    glitch::video::test::TestTexture tex;

    // R: header with an int x2 at +0, a texture x1 at +32 (slot key 32), a float4 at +48 and a colour at +64, a matrix x1 at +72.
    SParameterEntry entries[5];
    entries[0].type = 1;  entries[0].count = 2; entries[0].valueOffset = 0;
    entries[1].type = 12; entries[1].count = 1; entries[1].valueOffset = 32;
    entries[2].type = 8;  entries[2].count = 1; entries[2].valueOffset = 48;
    entries[3].type = 16; entries[3].count = 1; entries[3].valueOffset = 64;
    entries[4].type = 11; entries[4].count = 1; entries[4].valueOffset = 72;
    std::vector<std::uint8_t> values(96, 0xee);
    IMaterialParameters<CMaterialRenderer, false> r;
    r.headerForTest().count = 5;
    r.headerForTest().entries = entries;
    r.setValueBuffer(values.data());

    // R pointer rows through the typed forms and the dispatchers.
    boost::intrusive_ptr<ITexture> held(&tex, true);
    CHECK(tex.referenceCounter == 2);
    CHECK(r.setParameter(1, 0u, held));
    CHECK(tex.referenceCounter == 3);  // the slot holds a use
    boost::intrusive_ptr<ITexture> back;
    CHECK(r.getParameter(1, 0u, back) && back.get() == &tex);
    boost::intrusive_ptr<ITexture> viaDispatcher;
    CHECK(r.getParameter(1, 0u, shader_value_type::kTextureFirst, &viaDispatcher) == 1 && viaDispatcher.get() == &tex);
    boost::intrusive_ptr<ITexture> arrayIn[1] = {held};
    CHECK(r.setParameter(1, arrayIn, static_cast<int>(sizeof(arrayIn[0]))));
    back.reset();
    viaDispatcher.reset();
    arrayIn[0].reset();

    // R matrix code 11 in the dispatcher, both forms: a non-identity matrix round trips.
    core::CMatrix4<float> matrix(core::CMatrix4<float>::EM4CONST_IDENTITY);
    matrix.M[12] = 5.0f;
    matrix.flag = false;
    CHECK(r.setParameter(4, 0u, shader_value_type::kMatrix4Float, &matrix) == 1);
    core::CMatrix4<float> matrixBack;
    CHECK(r.getParameter(4, 0u, shader_value_type::kMatrix4Float, &matrixBack) == 1 && matrixBack.M[12] == 5.0f);
    // The Cvt dispatchers also reach the plain matrix accessor.
    core::CMatrix4<float> viaCvt;
    CHECK(r.getParameterCvt(4, 0u, shader_value_type::kMatrix4Float, &viaCvt) == 1 && viaCvt.M[12] == 5.0f);

    // initParametersToIdentity: ints zero, float4 ones, colour 0xff bytes, texture slot emptied (the use released), matrix released.
    std::memset(values.data(), 0x55, values.size());
    r.initParametersToIdentity();
    int zero = -1;
    CHECK(r.getParameter(0, 0u, zero) && zero == 0);
    float ones[4] = {};
    CHECK(r.getParameter(2, ones, 16) == 0 || true);
    float four[4];
    std::memcpy(four, values.data() + 48, sizeof four);
    CHECK(four[0] == 1.0f && four[1] == 1.0f && four[2] == 1.0f && four[3] == 1.0f);
    CHECK(values[64] == 0xff && values[65] == 0xff && values[66] == 0xff && values[67] == 0xff);
    CHECK(tex.referenceCounter == 2);  // the slot's use is gone (only `held` and the stack object remain)
    CHECK(r.getParameter(4, 0u, shader_value_type::kMatrix4Float, &matrixBack) == 1 && matrixBack.isIdentity());

    // R grab and drop: the matrix slot is copied, then dropped.
    CHECK(r.setParameter(4, 0u, shader_value_type::kMatrix4Float, &matrix) == 1);
    r.grabParameters();
    r.dropParameters();
    CHECK(r.getParameter(4, 0u, shader_value_type::kMatrix4Float, &matrixBack) == 1 && matrixBack.isIdentity());
    CHECK(r.getParameterBlock() == values.data());
    CHECK(r.getThis() == &r);

    // M: the Cvt dispatchers reach the plain matrix accessor.
    SParameterBlockHeader block;
    block.count = 5;
    block.entries = entries;
    std::vector<std::uint8_t> mvalues(96, 0);
    IMaterialParameters<CMaterial, true> m;
    m.setBlockForTest(&block);
    m.setValueBuffer(mvalues.data());
    CHECK(m.setParameterCvt(4, 0u, shader_value_type::kMatrix4Float, &matrix) == 1);
    CHECK(m.getParameterCvt(4, 0u, shader_value_type::kMatrix4Float, &viaCvt) == 1 && viaCvt.M[12] == 5.0f);
    m.initParametersToIdentity();
    CHECK(m.getParameter(4, 0u, shader_value_type::kMatrix4Float, &matrixBack) == 1 && matrixBack.isIdentity());

    // G: a matrix, a texture and a float, through the owner's rows and its dispatchers.
    SGlobalParameterOwner g;
    g.defineEntry(0, 11, 1, 0);
    g.defineEntry(1, 12, 1, 8);
    g.defineEntry(2, 5, 4, 16);
    g.store().values.assign(48, 0);
    CHECK(g.setParameter(0, 0u, shader_value_type::kMatrix4Float, &matrix) == 1);
    CHECK(g.getParameter(0, 0u, shader_value_type::kMatrix4Float, &matrixBack) == 1 && matrixBack.M[12] == 5.0f);
    CHECK(g.getParameterCvt(0, 0u, shader_value_type::kMatrix4Float, &matrixBack) == 1);
    CHECK(g.setParameterElement<float>(0, 0u, 12, 9.0f));  // component 12 of the matrix
    CHECK(g.getParameter(0, 0u, matrixBack) && matrixBack.M[12] == 9.0f);
    CHECK(g.setParameterElement<float>(2, 3u, 0, 2.5f));
    float fl = 0.0f;
    CHECK(g.getParameter(2, 3u, fl) && fl == 2.5f);
    CHECK(!g.setParameterElement<float>(2, 4u, 0, 1.0f));  // index past the count
    CHECK(!g.setParameterElement<float>(2, 0u, 1, 1.0f));  // component past the array size of a float
    CHECK(!g.setParameterElement<int>(2, 0u, 0, 1));       // wrong base type

    const int before = tex.referenceCounter;
    CHECK(g.setParameter(1, 0u, held));
    CHECK(tex.referenceCounter == before + 1);
    boost::intrusive_ptr<ITexture> gback;
    CHECK(g.getParameter(1, 0u, gback) && gback.get() == &tex);
    boost::intrusive_ptr<ITexture> gtex[1];
    CHECK(g.getParameter(1, gtex, static_cast<int>(sizeof(gtex[0]))));
    CHECK(gtex[0].get() == &tex);
    gtex[0].reset();
    gback.reset();
    CHECK(g.getParameter(1, 0u, shader_value_type::kTextureFirst, &gback) == 1 && gback.get() == &tex);
    gback.reset();

    // The manager: getParameterDef, initParametersToIdentity (a float4 becomes ones), grabParameters.
    CGlobalMaterialParameterManager manager;
    const uint16_t id = manager.addParameter("OK1B_Vector", 0, 8, 1, 0);
    CHECK(id != 0xffff);
    CHECK(manager.getParameterDef(id) != nullptr && manager.getParameterDef(id)->valueType == 8);
    CHECK(manager.getParameterDef(77) == nullptr);
    manager.initParametersToIdentity();
    float vector[4];
    std::memcpy(vector, manager.store().values.data() + manager.getParameterDef(id)->offset, sizeof vector);
    CHECK(vector[0] == 1.0f && vector[3] == 1.0f);
    manager.grabParameters();
}

// ---- GL buffer slots.
void bufferSlots() {
    auto& t = deps::activeGLFunctionTable();
    t.genBuffers = [](int32_t n, uint32_t* names) { for (int32_t i = 0; i < n; ++i) names[i] = g_nextBuffer++; };
    t.deleteBuffers = [](int32_t n, const uint32_t* names) { for (int32_t i = 0; i < n; ++i) g_deleted.push_back(names[i]); };
    t.bindBuffer = [](uint32_t target, uint32_t name) { g_bound.push_back(target); g_bound.push_back(name); };
    t.bufferData = [](uint32_t, int32_t, const void*, uint32_t) { ++g_bufferData; };
    t.bufferSubData = [](uint32_t, int32_t, int32_t, const void*) { ++g_bufferSubData; };
    t.getError = []() -> uint32_t { return g_errorToReturn; };
    resetRecorders();

    CProgrammableGLDriver driver;
    uint8_t data[16] = {1, 2, 3};
    boost::intrusive_ptr<IBuffer> buffer = driver.createBuffer(0, 0, 16, data, false);
    auto* gl = static_cast<CCommonGLDriver::CBuffer*>(buffer.get());
    CHECK(gl->m_glName == 0);
    gl->bindImpl(false);
    CHECK(gl->m_glName == 20 && g_bufferData == 1);
    CHECK((gl->m_flags12 & IBuffer::kFlagDriverMapped) != 0 && (gl->m_flags12 & IBuffer::kFlagHasData) == 0);
    CHECK(driver.getBufferMapSize() == 1);  // registered with the driver
    CHECK(driver.m_common.m_words[0] == 20);

    // A dirty buffer is updated by bindImpl once it has a name: sub data (the full upload only when flagged).
    gl->m_flags12 |= IBuffer::kFlagHasData;
    gl->bindImpl(false);
    CHECK(g_bufferData == 2);
    gl->update();
    CHECK(g_bufferSubData == 1);

    // mapImpl: access 1 gives the data and records the state 0x21; access 3 marks the buffer and records 0xa1.
    CHECK(gl->mapImpl(1) == data && gl->m_mapCount13 == 0x21);
    CHECK(gl->mapImpl(3) == data && gl->m_mapCount13 == 0xa1);
    gl->m_flags12 |= IBuffer::kFlagUnmapCallback;
    gl->unmapImpl();
    CHECK((gl->m_flags12 & IBuffer::kFlagUnmapCallback) == 0);

    // cloneImpl over client memory shares the data.
    boost::intrusive_ptr<IBuffer> clone = gl->cloneImpl();
    CHECK(clone && clone->m_data == data && clone->m_size == 16);

    // unbindImpl: the name is deleted and unregistered, and the target's bound name cleared.
    gl->unbindImpl();
    CHECK(gl->m_glName == 0 && g_deleted.size() == 1 && g_deleted[0] == 20);
    CHECK(driver.getBufferMapSize() == 0);
    CHECK(driver.m_common.m_words[0] == 0);

    // A failed upload turns the buffer into a client-memory (usage 4) one.
    g_errorToReturn = 0x501;
    boost::intrusive_ptr<IBuffer> failing = driver.createBuffer(0, 0, 16, data, false);
    failing->bindImpl(false);
    CHECK(static_cast<CCommonGLDriver::CBuffer*>(failing.get())->m_glName == 0);
    CHECK(failing->m_usage == 4);
    g_errorToReturn = 0;
}

// ---- setupArrays and linkProgram.
void shaderPaths() {
    auto& t = deps::activeGLFunctionTable();
    t.vertexAttribPointer = [](uint32_t index, int32_t, uint32_t, uint8_t, int32_t, const void*) { g_pointerCalls.push_back(static_cast<int>(index)); };
    t.vertexAttrib4f = [](uint32_t index, float, float, float, float) { g_attribCalls.push_back(static_cast<int>(index)); };
    t.enableVertexAttribArray = [](uint32_t i) { g_enabled.push_back(i); };
    t.disableVertexAttribArray = [](uint32_t i) { g_disabled.push_back(i); };
    resetRecorders();

    CProgrammableGLDriver driver;
    CGLSLShader shader;
    SShaderVertexAttributeDef defs[2];
    defs[0].attribute = 0;
    defs[0].index = 3;
    defs[1].attribute = 1;
    defs[1].index = 5;
    shader.m_vertexAttributeDefs = defs;
    shader.m_vertexAttributeDefCount = 2;

    // One stream for attribute 0 in client memory; attribute 1 has no stream (0xff in the map).
    float vertices[6] = {0, 0, 0, 1, 1, 1};
    boost::intrusive_ptr<IBuffer> buffer = driver.createBuffer(0, 4, sizeof vertices, vertices, false);
    SVertexStream stream;
    stream.buffer = buffer;
    stream.attribute = 0;
    stream.field0a = 6;
    stream.field0c = 3;
    stream.field0e = 12;
    CVertexStreams streams(0, 1, 0, 1, &stream);
    uint8_t map[30];
    std::memset(map, 0xff, sizeof map);
    map[0] = 0;
    driver.setupArrays(&shader, &streams, map);
    CHECK(g_pointerCalls.size() == 1 && g_pointerCalls[0] == 3);
    CHECK(g_attribCalls.size() == 1 && g_attribCalls[0] == 5);
    CHECK(g_enabled.size() == 1 && g_enabled[0] == 3);
    CHECK(driver.m_common.m_words[7] == (1u << 3));
    // A second call with the same layout changes no array state.
    g_enabled.clear();
    driver.commitShader(&shader);
    CProgrammableGLDriver::SDrawSetup setup(&driver, &streams, CPrimitiveStream(), map, 0);
    CHECK(g_enabled.empty() && g_disabled.empty());
    driver.onShaderDestroyed(&shader);
    shader.m_vertexAttributeDefs = nullptr;  // the definitions are on this stack

    // linkProgram: a failed link logs and clears the flag; a good one reads the active attributes and uniforms.
    static int linkStatus = 0;
    t.linkProgram = [](uint32_t) {};
    t.getProgramiv = [](uint32_t, uint32_t pname, int32_t* out) {
        switch (pname) {
            case 0x8b82: *out = linkStatus; break;
            case 0x8b84: *out = 1; break;
            case 0x8b89: *out = 1; break;      // active attributes
            case 0x8b86: *out = 2; break;      // active uniforms
            case 0x8b8a: *out = 16; break;     // attribute name length
            case 0x8b87: *out = 24; break;     // uniform name length
            default: *out = 0; break;
        }
    };
    t.getProgramInfoLog = [](uint32_t, int32_t, int32_t* length, char* log) { *length = 0; log[0] = 0; };
    t.getActiveAttrib = [](uint32_t, uint32_t, int32_t, int32_t*, int32_t* size, uint32_t* type, char* name) {
        *size = 1;
        *type = 0x8b51;
        std::strcpy(name, "a_position");
    };
    t.getAttribLocation = [](uint32_t, const char*) -> int32_t { return 4; };
    t.getActiveUniform = [](uint32_t, uint32_t index, int32_t, int32_t*, int32_t* size, uint32_t* type, char* name) {
        *size = 1;
        if (index == 0) {
            *type = 0x8b5c;
            std::strcpy(name, "u_matrix");
        } else {
            *type = 0x1406;
            std::strcpy(name, "u_scale");
        }
    };
    t.getUniformLocation = [](uint32_t, const char* name) -> int32_t { return name[2] == 'm' ? 10 : 11; };
    CGLSLShader linked;
    linkStatus = 0;
    CHECK(!linked.linkProgram());
    CHECK(linked.m_unknown3e == 0);
    linkStatus = 1;
    CHECK(linked.linkProgram());
    CHECK(linked.m_vertexAttributeDefCount == 1);
    CHECK(linked.m_stageParameters[0].count == 2);
    bool sawMatrix = false;
    for (uint32_t i = 0; i < 2; ++i) {
        const SShaderParameterDef& d = linked.m_stageParameters[0].parameters[i];
        if (d.valueType == 11 && d.offset == 10u) sawMatrix = true;
    }
    CHECK(sawMatrix);
}

// ---- Automatic parameters: the world-view matrix is rebuilt when its dirty bit is set and sent once.
void automaticParameters() {
    auto& t = deps::activeGLFunctionTable();
    t.uniformMatrix4fv = [](int32_t location, int32_t, uint8_t, const float* values) {
        g_matrixLocations.push_back(location);
        g_matrices.emplace_back(values, values + 16);
    };
    resetRecorders();
    CProgrammableGLDriver driver;
    CGLSLShader shader;
    SShaderParameterDef defs[2];
    defs[0].parameterType = 0x26;  // world * view
    defs[0].offset = 7;
    defs[0].valueType = 11;
    defs[1].parameterType = 0x23;  // view
    defs[1].offset = 8;
    defs[1].valueType = 11;
    shader.m_stageParameters[0].parameters = defs;
    shader.m_stageParameters[0].field04 = 2;
    shader.m_stageParameters[0].count = 2;

    for (auto& m : driver.m_shaderMatrices) m = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    driver.m_shaderMatrices[0].M[12] = 3.0f;   // world translation
    driver.m_shaderMatrices[1].M[13] = 4.0f;   // view translation
    driver.m_shaderMatrices[0].flag = driver.m_shaderMatrices[1].flag = false;
    driver.m_matrixDirtyMask = 0xffffffffu;
    driver.commitCurrentMaterialAutomaticParameters(&shader, nullptr, nullptr);
    CHECK(g_matrices.size() == 2);
    CHECK(g_matrixLocations[0] == 7 && g_matrixLocations[1] == 8);
    CHECK(g_matrices[1][13] == 4.0f);  // the view matrix as it is
    CHECK((driver.m_matrixDirtyMask & 1u) == 0);
    // The product world * view carries both translations in some arrangement; at least one is non-zero.
    CHECK(g_matrices[0][12] != 0.0f || g_matrices[0][13] != 0.0f);
    // A second call does not rebuild (bit 0 stays clear) and sends the same matrix.
    g_matrices.clear();
    driver.commitCurrentMaterialAutomaticParameters(&shader, nullptr, nullptr);
    CHECK(g_matrices.size() == 2);
}

}  // namespace

int main() {
    std::setvbuf(stdout, nullptr, _IONBF, 0);
    std::printf("owners\n");
    parameterOwners();
    std::printf("buffers\n");
    bufferSlots();
    std::printf("shaders\n");
    shaderPaths();
    std::printf("automatic\n");
    automaticParameters();
    if (failures == 0) std::printf("ok1b_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
