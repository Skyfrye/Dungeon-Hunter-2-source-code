// glitch::collada::createMaterial (0x631ce8): the material of an SMaterial record over a renderer whose parameter table is built by hand:
// a float x3, an int x2 and a matrix. Checks the value conversion (float), the type check (a mismatch is skipped), the matrix write and the
// skip of an unknown parameter, and the technique parameter. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CColladaMaterial.hpp"
#include "glitch-shared/shared_string_heap.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/shader_attributes.hpp"

using namespace glitch::video;
using glitch::collada::SMaterial;
using glitch::collada::SParam;
using glitch::collada::SParamTechnique;
using glitch::core::detail::SSharedStringData;
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

class TestShader : public IShader {
public:
    explicit TestShader(uint16_t id) : IShader(id, "test", nullptr) {}
    void releaseDriverSpecificResources() override {}
};

SSharedStringData* makeName(const char* text) {
    SSharedStringData* data = new SSharedStringData();
    data->committed = true;
    data->inlineText = text;
    return data;
}

}  // namespace

int main() {
    TestShader shader(0x10);
    shader.referenceCounter = 1000;
    shader.m_stageParameters[0].count = 3;
    shader.m_stageParameters[1].count = 0;
    SParameterEntry entries[3];
    entries[0].name = makeName("uFloat");
    entries[0].type = 5;  // float x3 at +0
    entries[0].count = 3;
    entries[0].valueOffset = 0;
    entries[1].name = makeName("uInt");
    entries[1].type = 1;  // int x2 at +12
    entries[1].count = 2;
    entries[1].valueOffset = 12;
    entries[2].name = makeName("uMat");
    entries[2].type = 11;  // matrix x1 with its slot at +20
    entries[2].count = 1;
    entries[2].valueOffset = 20;
    uint16_t ids[3] = {0, 1, 2};
    SRenderPass pass;
    std::memset(&pass, 0, sizeof pass);
    pass.shader = &shader;
    pass.bindings = reinterpret_cast<int*>(ids);
    pass.flag30 = 1;
    STechniqueEntry technique;
    technique.name = makeName("main");
    technique.passCount = 1;
    technique.passes = &pass;
    std::vector<uint8_t> defaults(32, 0);
    boost::intrusive_ptr<CMaterialRenderer> renderer(new CMaterialRenderer, true);
    renderer->m_techniques = &technique;
    renderer->m_techniqueCount = 1;
    renderer->m_parameterCount = 3;
    renderer->m_valueBufferSize = 32;
    renderer->parameters.headerForTest().count = 3;
    renderer->parameters.headerForTest().entries = entries;
    renderer->parameters.setValueBuffer(defaults.data());

    // The record: uFloat as float x3, uInt as a colour (a type the int parameter does not accept), uMat as float4x4, an unknown parameter,
    // and the technique "main".
    const float floats[3] = {1.5f, 2.5f, 3.5f};
    const std::uint32_t floatCount = 3;
    const std::int32_t ints[2] = {7, 8};
    const std::uint32_t intCount = 2;
    float matrix[16] = {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 5, 6, 7, 1};
    const std::uint32_t matrixCount = 1;
    const std::uint32_t unknownCount = 1;
    const float unknownValue = 0.0f;
    SParamTechnique techniqueRecord;
    techniqueRecord.name = "main";
    const std::uint32_t techniqueCount = 1;

    SParam params[5];
    params[0].name = "uFloat";
    params[0].type = SParam::ET_FLOAT;
    params[0].elementCount = &floatCount;
    params[0].values = floats;
    params[1].name = "uInt";
    params[1].type = SParam::ET_COLOR;
    params[1].elementCount = &intCount;
    params[1].values = ints;
    params[2].name = "uMat";
    params[2].type = SParam::ET_FLOAT4X4;
    params[2].elementCount = &matrixCount;
    params[2].values = matrix;
    params[3].name = "uMissing";
    params[3].type = SParam::ET_FLOAT;
    params[3].elementCount = &unknownCount;
    params[3].values = &unknownValue;
    params[4].name = "technique";
    params[4].type = SParam::ET_TECHNIQUE;
    params[4].elementCount = &techniqueCount;
    params[4].values = &techniqueRecord;

    SMaterial record;
    record.name = "matA";
    record.paramCount = 5;
    record.params = params;

    glitch::collada::CColladaDatabase db;
    boost::intrusive_ptr<CMaterial> material = glitch::collada::createMaterial(db, nullptr, renderer, record, nullptr);
    CHECK(material);
    CHECK(material->m_hasName && material->m_nameText == "matA");
    float read[3] = {};
    CHECK(material->parameters.getParameter(0, read, 4));
    CHECK(read[0] == 1.5f && read[1] == 2.5f && read[2] == 3.5f);
    int readInts[2] = {-1, -1};
    CHECK(material->parameters.getParameter(1, readInts, 4));
    CHECK(readInts[0] == 0 && readInts[1] == 0);  // the colour was refused: the defaults stay
    glitch::core::CMatrix4<float> readMatrix;
    CHECK(material->parameters.getParameter(2, 0u, readMatrix));
    CHECK(readMatrix.M[12] == 5.0f && readMatrix.M[13] == 6.0f && readMatrix.M[14] == 7.0f);
    CHECK(material->m_technique == 0);

    // A null renderer gives a null material.
    CHECK(!glitch::collada::createMaterial(db, nullptr, boost::intrusive_ptr<CMaterialRenderer>(), record, nullptr));

    if (failures == 0) {
        std::printf("collada_material_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
