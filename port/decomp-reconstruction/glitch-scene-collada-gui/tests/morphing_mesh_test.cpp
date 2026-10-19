// glitch::collada::CMorphingMesh::morph (0x64a6e4), setWeightedVertex (0x649b3c) and the dirty-mask flow of onPrepareBufferForRendering
// (0x64afec). The targets are CMeshes whose single buffer holds three positions; the morph buffer is a fourth such buffer.
#include <cmath>
#include <cstdint>
#include <cstdio>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}

bool near(float a, float b) { return std::fabs(a - b) <= 1e-5f; }

using glitch::collada::CMesh;
using glitch::collada::CMorphingMesh;
using glitch::collada::SMorph;
using glitch::scene::CMeshBuffer;
using glitch::video::CVertexStreams;
using glitch::video::IBuffer;

// An IBuffer over caller-owned float positions; referenceCounter starts at 1 so a single-argument intrusive_ptr takes that use.
class TestPosBuffer : public IBuffer {
public:
    TestPosBuffer(void* data, std::uint32_t size) : IBuffer(0, 0, size, data, 0) { referenceCounter = 1; }
    void bindImpl(bool) override {}
    void unbindImpl() override {}
    std::uint8_t* mapImpl(std::uint32_t) const override { return m_data; }
    void unmapImpl() const override {}
    std::uint8_t* getMappedPtr() const override { return m_data; }
    boost::intrusive_ptr<IBuffer> cloneImpl() const override { return boost::intrusive_ptr<IBuffer>(); }
};

// A mesh buffer whose position stream reads `storage` (three floats each, 12 bytes apart) over [0, 3).
boost::intrusive_ptr<CMeshBuffer> makeBuffer(float* storage) {
    boost::intrusive_ptr<CVertexStreams> streams(new CVertexStreams(), true);
    streams->m_streams.resize(1);
    streams->m_streams[0].buffer = boost::intrusive_ptr<IBuffer>(new TestPosBuffer(storage, 36u));
    streams->m_streams[0].offset = 0;
    streams->m_streams[0].attribute = 0;
    streams->m_streams[0].field0a = 6;
    streams->m_streams[0].field0c = 3;
    streams->m_streams[0].field0e = 12;
    boost::intrusive_ptr<CMeshBuffer> buffer(new CMeshBuffer(), true);
    buffer->vertexStreams = streams;
    buffer->primitiveStream.m_vertexStart = 0;
    buffer->primitiveStream.m_vertexEnd = 3;
    return buffer;
}

boost::intrusive_ptr<glitch::collada::IMesh> makeMesh(float* storage) {
    boost::intrusive_ptr<CMesh> mesh(new CMesh(), true);
    CMesh::SBuffer entry;
    entry.buffer = makeBuffer(storage);
    mesh->buffers.push_back(entry);
    return boost::intrusive_ptr<glitch::collada::IMesh>(mesh);
}

}  // namespace

int main() {
    // setWeightedVertex: a zero weight writes nothing, 1.0 copies (packed and strided), other weights scale.
    {
        float source[6] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f};
        float destination[6] = {9.0f, 9.0f, 9.0f, 9.0f, 9.0f, 9.0f};
        glitch::collada::setWeightedVertex<glitch::core::vector3d<float>>(
            reinterpret_cast<glitch::core::vector3d<float>*>(destination), 12, reinterpret_cast<const glitch::core::vector3d<float>*>(source), 12,
            0.0f, 2);
        check(destination[0] == 9.0f, "a zero weight writes nothing");
        glitch::collada::setWeightedVertex<glitch::core::vector3d<float>>(
            reinterpret_cast<glitch::core::vector3d<float>*>(destination), 12, reinterpret_cast<const glitch::core::vector3d<float>*>(source), 12,
            1.0f, 2);
        check(destination[0] == 1.0f && destination[5] == 6.0f, "weight 1 copies");
        glitch::collada::setWeightedVertex<glitch::core::vector3d<float>>(
            reinterpret_cast<glitch::core::vector3d<float>*>(destination), 12, reinterpret_cast<const glitch::core::vector3d<float>*>(source), 12,
            0.5f, 2);
        check(near(destination[0], 0.5f) && near(destination[4], 2.5f), "other weights scale");
    }

    // morph: base weight 1 - 0.25, one extra target at 0.25.
    {
        float basePositions[9] = {0, 0, 0, 4, 0, 0, 0, 4, 0};
        float otherPositions[9] = {8, 8, 8, 0, 8, 0, 0, 0, 8};
        float morphPositions[9] = {};
        CMorphingMesh morph;
        SMorph record;
        record.relative = 0;
        morph.morphData = &record;
        CMorphingMesh::STarget baseTarget;
        baseTarget.mesh = makeMesh(basePositions);
        baseTarget.weight = 1.0f;
        CMorphingMesh::STarget otherTarget;
        otherTarget.mesh = makeMesh(otherPositions);
        otherTarget.weight = 0.25f;
        morph.targets.push_back(baseTarget);
        morph.targets.push_back(otherTarget);
        CMorphingMesh::SBuffer entry;
        entry.buffer = makeBuffer(morphPositions);
        morph.buffers.push_back(entry);

        morph.morph(0);
        check(near(morph.targets[0].weight, 0.75f), "the first weight becomes 1 minus the others'");
        check(near(morphPositions[0], 2.0f) && near(morphPositions[1], 2.0f) && near(morphPositions[2], 2.0f), "vertex 0 is 0.75 * 0 + 0.25 * 8");
        check(near(morphPositions[3], 3.0f) && near(morphPositions[4], 2.0f), "vertex 1 is 0.75 * 4 + 0.25 * 0 and 0.75 * 0 + 0.25 * 8");
        check(near(morphPositions[8], 2.0f), "vertex 2 z is 0.75 * 0 + 0.25 * 8");

        // A relative record keeps the weights as they are.
        record.relative = 1;
        morph.targets[0].weight = 0.5f;
        morph.targets[1].weight = 0.5f;
        morph.morph(0);
        check(near(morph.targets[0].weight, 1.0f), "the first weight is reset to 1.0 before the blend");
        check(near(morphPositions[0], 4.0f), "relative: base + 0.5 * other");

        // onPrepareBufferForRendering with step 0 on a marked and dirty buffer morphs and clears the dirty bit.
        morph.bufferFlags = 1;
        morph.dirtyBuffers = 1;
        morphPositions[0] = -1.0f;
        morph.targets[0].mesh.reset();  // the answer comes from the first target, so keep a mesh there
        morph.targets[0].mesh = makeMesh(basePositions);
        const std::int32_t answer = morph.onPrepareBufferForRendering(0, nullptr, 0);
        check(answer == 16, "the answer is the first target's (16)");
        check(morph.dirtyBuffers == 0, "the dirty bit is cleared");
        check(near(morphPositions[0], 4.0f), "and the buffer was morphed");
    }

    if (failures == 0) {
        std::printf("morphing_mesh_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
