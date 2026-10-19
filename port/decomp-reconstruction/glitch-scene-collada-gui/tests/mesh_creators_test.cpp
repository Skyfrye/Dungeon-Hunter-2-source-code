// Checks for the glitch::scene mesh generators (src/scene/mesh_creators.cpp): createPlaneMesh, createCubeMesh, createSphereMesh,
// createHillPlaneMesh, createCylinderMesh, createConeMesh and createArrowMesh over the null driver: the vertex and index counts, the index
// ranges, the generated positions, normals, texture coordinates and colours. Exit status is non-zero when a check fails.
#include <cmath>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/vertex_streams.hpp"

using namespace glitch::scene;
namespace video = glitch::video;
namespace core = glitch::core;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

class TestDriver : public video::CNullDriver {
public:
    TestDriver() : CNullDriver(static_cast<glitch::IDevice*>(nullptr)) {}
};

bool near(float a, float b, float eps = 1e-4f) { return std::fabs(a - b) <= eps; }

constexpr std::uint32_t kMask = 0x60003u;  // position, texture coordinate 0, normal, colour

struct SVertexRead {
    float position[3];
    float uv[2];
    float normal[3];
    std::uint8_t color[4];
};

// The vertex `index` of a buffer whose streams share one interleaved vertex buffer.
SVertexRead readVertex(const boost::intrusive_ptr<CMeshBuffer>& buffer, std::uint32_t index) {
    SVertexRead out{};
    const video::CVertexStreams& streams = *buffer->vertexStreams;
    for (const video::SVertexStream& stream : streams.m_streams) {
        if (!stream.buffer) {
            continue;
        }
        const std::uint8_t* base = stream.buffer->m_data + stream.offset + static_cast<std::size_t>(stream.field0e) * index;
        if (stream.attribute == 0) {
            std::memcpy(out.position, base, 12);
        } else if (stream.attribute == 1) {
            std::memcpy(out.uv, base, 8);
        } else if (stream.attribute == 17) {
            std::memcpy(out.normal, base, 12);
        } else if (stream.attribute == 18) {
            std::memcpy(out.color, base, 4);
        }
    }
    return out;
}

std::vector<std::uint16_t> readIndices(const boost::intrusive_ptr<CMeshBuffer>& buffer) {
    const video::CPrimitiveStream& stream = buffer->primitiveStream;
    const std::uint16_t* data = reinterpret_cast<const std::uint16_t*>(stream.m_indexBuffer->m_data + stream.m_offset);
    return std::vector<std::uint16_t>(data, data + stream.m_count);
}

bool allBelow(const std::vector<std::uint16_t>& indices, std::uint32_t limit) {
    for (std::uint16_t i : indices) {
        if (i >= limit) {
            return false;
        }
    }
    return true;
}

void testPlaneAndCube(TestDriver& driver) {
    boost::intrusive_ptr<IMesh> plane = createPlaneMesh(kMask, &driver, 4.0f, video::SColor{0x11223344u});
    CHECK(plane && plane->getMeshBufferCount() == 1);
    boost::intrusive_ptr<CMeshBuffer> buffer = plane->getMeshBuffer(0);
    CHECK(buffer->vertexStreams->m_field08 == 4);
    CHECK(buffer->primitiveStream.m_count == 6 && buffer->primitiveStream.m_vertexEnd == 4);
    const std::vector<std::uint16_t> indices = readIndices(buffer);
    const std::uint16_t expected[6] = {0, 2, 1, 0, 3, 2};
    CHECK(std::memcmp(indices.data(), expected, sizeof expected) == 0);
    const SVertexRead v0 = readVertex(buffer, 0);
    CHECK(near(v0.position[0], -2.0f) && near(v0.position[1], 0.0f) && near(v0.position[2], -2.0f));
    CHECK(near(v0.normal[1], 1.0f) && near(v0.uv[0], 1.0f) && near(v0.uv[1], 1.0f));
    std::uint32_t color;
    std::memcpy(&color, v0.color, 4);
    CHECK(color == 0x11223344u);

    boost::intrusive_ptr<IMesh> cube = createCubeMesh(kMask, &driver, 2.0f);
    boost::intrusive_ptr<CMeshBuffer> cubeBuffer = cube->getMeshBuffer(0);
    CHECK(cubeBuffer->primitiveStream.m_count == 36 && cubeBuffer->vertexStreams->m_field08 == 24);
    const std::vector<std::uint16_t> cubeIndices = readIndices(cubeBuffer);
    CHECK(cubeIndices[6] == 4 && cubeIndices[7] == 5 && cubeIndices[8] == 6 && cubeIndices[11] == 7);
    CHECK(allBelow(cubeIndices, 24));
    const SVertexRead c0 = readVertex(cubeBuffer, 0);
    CHECK(near(c0.position[0], -1.0f) && near(c0.normal[2], -1.0f));
    std::uint32_t white;
    std::memcpy(&white, c0.color, 4);
    CHECK(white == 0xFFFFFFFFu);
}

void testSphere(TestDriver& driver) {
    boost::intrusive_ptr<IMesh> sphere = createSphereMesh(kMask, &driver, 2.0f, 8, 6);
    boost::intrusive_ptr<CMeshBuffer> buffer = sphere->getMeshBuffer(0);
    CHECK(buffer->vertexStreams->m_field08 == 6 * 9 + 2);
    CHECK(buffer->primitiveStream.m_count == 6 * 8 * 6);
    CHECK(allBelow(readIndices(buffer), 56));
    for (std::uint32_t i = 0; i < 54; ++i) {
        const SVertexRead v = readVertex(buffer, i);
        const float length = std::sqrt(v.position[0] * v.position[0] + v.position[1] * v.position[1] + v.position[2] * v.position[2]);
        CHECK(near(length, 2.0f, 1e-3f));
    }
    const SVertexRead north = readVertex(buffer, 54);
    const SVertexRead south = readVertex(buffer, 55);
    CHECK(near(north.position[1], 2.0f) && near(south.position[1], -2.0f));
    CHECK(near(north.uv[0], 0.5f) && near(north.uv[1], 0.0f) && near(south.uv[1], 1.0f));
    CHECK(near(north.normal[1], 1.0f) && near(south.normal[1], -1.0f));
    CHECK(near(readVertex(buffer, 8).uv[0], 1.0f));  // the seam of the first ring
    CHECK(readVertex(buffer, 0).color[3] == 100 && readVertex(buffer, 0).color[0] == 255);
    // The segment count is clamped to at least 2.
    boost::intrusive_ptr<IMesh> tiny = createSphereMesh(kMask, &driver, 1.0f, 0, 1);
    CHECK(tiny->getMeshBuffer(0)->vertexStreams->m_field08 == 2 * 3 + 2);
}

void testHillPlane(TestDriver& driver) {
    const core::dimension2d<float> tileSize{1.0f, 2.0f};
    const core::dimension2d<std::uint32_t> tileCount{3, 2};
    const core::dimension2d<float> hills{1.0f, 1.0f};
    const core::dimension2d<float> repeat{3.0f, 2.0f};
    boost::intrusive_ptr<IMesh> flat = createHillPlaneMesh(kMask & ~0x20000u, &driver, tileSize, tileCount, boost::intrusive_ptr<video::CMaterial>(),
                                                          boost::intrusive_ptr<video::CMaterialVertexAttributeMap>(), 0.0f, hills, repeat);
    boost::intrusive_ptr<CMeshBuffer> buffer = flat->getMeshBuffer(0);
    CHECK(buffer->vertexStreams->m_field08 == 12 && buffer->primitiveStream.m_count == 36);
    const std::vector<std::uint16_t> indices = readIndices(buffer);
    CHECK(allBelow(indices, 12));
    CHECK(indices[0] == 0 && indices[1] == 1 && indices[2] == 3 && indices[3] == 1 && indices[4] == 4 && indices[5] == 3);
    const SVertexRead first = readVertex(buffer, 0);
    CHECK(near(first.position[0], -1.5f) && near(first.position[1], 0.0f) && near(first.position[2], -2.0f));
    CHECK(near(first.uv[0], 0.0f) && near(first.uv[1], 1.0f));
    const SVertexRead last = readVertex(buffer, 11);
    CHECK(near(last.position[0], 1.5f) && near(last.position[2], 2.0f) && near(last.uv[0], 3.0f) && near(last.uv[1], -1.0f));
    // With a height and normals every normal is a unit vector.
    boost::intrusive_ptr<IMesh> hilly = createHillPlaneMesh(kMask, &driver, tileSize, tileCount, boost::intrusive_ptr<video::CMaterial>(),
                                                           boost::intrusive_ptr<video::CMaterialVertexAttributeMap>(), 1.0f, hills, repeat);
    boost::intrusive_ptr<CMeshBuffer> hillyBuffer = hilly->getMeshBuffer(0);
    bool raised = false;
    for (std::uint32_t i = 0; i < 12; ++i) {
        const SVertexRead v = readVertex(hillyBuffer, i);
        raised = raised || std::fabs(v.position[1]) > 0.01f;
        const float length = std::sqrt(v.normal[0] * v.normal[0] + v.normal[1] * v.normal[1] + v.normal[2] * v.normal[2]);
        CHECK(near(length, 1.0f, 1e-3f));
    }
    CHECK(raised);
}

void testCylinderConeArrow(TestDriver& driver) {
    boost::intrusive_ptr<IMesh> cylinder = createCylinderMesh(kMask, &driver, 1.0f, 3.0f, 6, video::SColor{0xFF0000FFu}, true, 0.5f);
    boost::intrusive_ptr<CMeshBuffer> buffer = cylinder->getMeshBuffer(0);
    CHECK(buffer->vertexStreams->m_field08 == 26 && buffer->primitiveStream.m_count == 144);
    const std::vector<std::uint16_t> indices = readIndices(buffer);
    CHECK(allBelow(indices, 26));
    CHECK(indices[0] == 2 && indices[1] == 0 && indices[2] == 1 && indices[3] == 2 && indices[4] == 1 && indices[5] == 3);
    const SVertexRead bottom = readVertex(buffer, 0);
    CHECK(near(bottom.position[0], 1.0f) && near(bottom.position[1], 0.0f) && near(bottom.position[2], 0.0f));
    const SVertexRead top = readVertex(buffer, 1);
    CHECK(near(top.position[0], 1.5f) && near(top.position[1], 3.0f));
    const SVertexRead bottomCentre = readVertex(buffer, 24);
    const SVertexRead topCentre = readVertex(buffer, 25);
    CHECK(near(bottomCentre.position[1], 0.0f) && near(bottomCentre.normal[1], -1.0f) && near(bottomCentre.uv[0], 1.0f));
    CHECK(near(topCentre.position[0], 0.5f) && near(topCentre.position[1], 3.0f) && near(topCentre.normal[1], 1.0f));
    // Without a top cap: 4 * tesselation + 1 vertices and 18 * tesselation indices.
    boost::intrusive_ptr<IMesh> open = createCylinderMesh(kMask, &driver, 1.0f, 3.0f, 6, video::SColor{0xFF0000FFu}, false, 0.0f);
    CHECK(open->getMeshBuffer(0)->vertexStreams->m_field08 == 25 && open->getMeshBuffer(0)->primitiveStream.m_count == 108);

    boost::intrusive_ptr<IMesh> cone = createConeMesh(kMask, &driver, 1.0f, 2.0f, 5, video::SColor{0xFF00FF00u}, video::SColor{0xFFFF0000u}, 0.25f);
    boost::intrusive_ptr<CMeshBuffer> coneBuffer = cone->getMeshBuffer(0);
    CHECK(coneBuffer->vertexStreams->m_field08 == 12 && coneBuffer->primitiveStream.m_count == 60);
    const std::vector<std::uint16_t> coneIndices = readIndices(coneBuffer);
    CHECK(allBelow(coneIndices, 12));
    CHECK(coneIndices[0] == 0 && coneIndices[1] == 10 && coneIndices[2] == 1);
    const SVertexRead apex = readVertex(coneBuffer, 10);
    const SVertexRead centre = readVertex(coneBuffer, 11);
    CHECK(near(apex.position[0], 0.25f) && near(apex.position[1], 2.0f) && near(apex.normal[1], 1.0f));
    CHECK(near(centre.position[1], 0.0f) && near(centre.normal[1], -1.0f));
    std::uint32_t apexColor, centreColor;
    std::memcpy(&apexColor, apex.color, 4);
    std::memcpy(&centreColor, centre.color, 4);
    CHECK(apexColor == 0xFF00FF00u && centreColor == 0xFFFF0000u);

    boost::intrusive_ptr<IMesh> arrow = createArrowMesh(kMask, &driver, 6, 5, 5.0f, 3.0f, 0.5f, 1.0f, video::SColor{1u}, video::SColor{2u});
    CHECK(arrow->getMeshBufferCount() == 2);
    boost::intrusive_ptr<CMeshBuffer> head = arrow->getMeshBuffer(1);
    CHECK(near(readVertex(head, 10).position[1], 5.0f));  // the apex: (height - cylinderHeight) + cylinderHeight
    CHECK(near(readVertex(head, 0).position[1], 3.0f));   // the head's base sits on top of the shaft
}

}  // namespace

int main() {
    TestDriver driver;
    testPlaneAndCube(driver);
    testSphere(driver);
    testHillPlane(driver);
    testCylinderConeArrow(driver);
    if (failures == 0) {
        std::printf("mesh_creators_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
