// glitch::scene::CMesh::recalculateBoundingBox (0x6bc2cc), the body in glitch-scene-collada-gui/src/scene/CMesh.cpp.
//
// No test reached it before this file. nm shows _ZN6glitch5scene5CMesh22recalculateBoundingBoxEv present in many test
// executables (it is pulled in with the library objects), but a gdb breakpoint on it reports no hit in any
// glitch-scene, glitch-video, game-world or glitch-core-io test. The worker who wrote it verified it with a throwaway
// harness kept outside the tree, so there was no durable coverage.
//
// What the listing says, and what is checked here: with no entries the box at +0x14 is cleared to the origin
// (0x6bc3c8..0x6bc3dc); otherwise, per entry, the entry's mesh buffer provides the stream table
// (CMeshBuffer +0x14) and the range words +0x24 / +0x28 of the embedded primitive stream, the temporary starts at the
// inverted unit box (-1,-1,-1)..(1,1,1) (0x6bc37c), the FIRST result is copied into +0x14 and the later ones are
// merged with core::aabbox3d<float>::addInternalBox (0x6bc3ac). The first copy (not a merge) is the behaviour that
// distinguishes this body from "assemble a union of everything": with one entry whose box is inside the unit box the
// stored box must be exactly that entry's box.
#include <cstdint>
#include <cstdio>

#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"  // its intrusive_ptr_release, found by ADL only when complete
#include "glitch-video/vertex_streams.hpp"

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}

using glitch::core::aabbox3d;
using glitch::scene::CMesh;
using glitch::scene::CMeshBuffer;
using glitch::video::CVertexStreams;
using glitch::video::IBuffer;

// An IBuffer over caller-owned float positions. referenceCounter starts at 1, so a single-argument intrusive_ptr takes
// that use; flags 0 means the buffer owns nothing and nothing is freed.
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

// A mesh buffer whose position stream reads `vertices` (three floats each) over [first, last).
boost::intrusive_ptr<CMeshBuffer> makeBuffer(const float (*vertices)[3], std::uint32_t vertexCount, std::uint32_t first,
                                             std::uint32_t last) {
    auto* storage = new float[static_cast<std::size_t>(vertexCount) * 3u];
    for (std::uint32_t i = 0; i < vertexCount; ++i) {
        storage[3u * i + 0u] = vertices[i][0];
        storage[3u * i + 1u] = vertices[i][1];
        storage[3u * i + 2u] = vertices[i][2];
    }
    boost::intrusive_ptr<CVertexStreams> streams(new CVertexStreams(), true);
    streams->m_streams.resize(1);
    streams->m_streams[0].buffer = boost::intrusive_ptr<IBuffer>(new TestPosBuffer(storage, vertexCount * 12u));
    streams->m_streams[0].offset = 0;
    streams->m_streams[0].attribute = 0;
    streams->m_streams[0].field0a = 6;   // float
    streams->m_streams[0].field0c = 3;   // three components
    streams->m_streams[0].field0e = 12;  // 12 bytes per vertex

    boost::intrusive_ptr<CMeshBuffer> buffer(new CMeshBuffer(), true);
    buffer->vertexStreams = streams;
    buffer->primitiveStream.m_vertexStart = first;
    buffer->primitiveStream.m_vertexEnd = last;
    return buffer;
}

void add(CMesh& mesh, const boost::intrusive_ptr<CMeshBuffer>& buffer) {
    mesh.addMeshBuffer(buffer, boost::intrusive_ptr<glitch::video::CMaterial>(),
                       boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>());
}

}  // namespace

int main() {
    // The constructor's box is the inverted unit box: (-1,-1,-1)..(1,1,1).
    {
        CMesh mesh;
        check(mesh.boundingBox.MinEdge.X == -1.0f && mesh.boundingBox.MaxEdge.X == 1.0f,
              "a fresh CMesh carries the inverted unit box");
    }

    // No entries: the box is cleared to the origin (0x6bc3c8..0x6bc3dc).
    {
        CMesh mesh;
        mesh.recalculateBoundingBox();
        check(mesh.boundingBox.MinEdge.X == 0.0f && mesh.boundingBox.MinEdge.Y == 0.0f &&
                  mesh.boundingBox.MinEdge.Z == 0.0f && mesh.boundingBox.MaxEdge.X == 0.0f &&
                  mesh.boundingBox.MaxEdge.Y == 0.0f && mesh.boundingBox.MaxEdge.Z == 0.0f,
              "no buffers clears the box to the origin");
    }

    // One entry whose box lies strictly inside the unit box: the first result is COPIED, not merged with the -1..1
    // temporary, so the stored box is the entry's own point.
    {
        const float point[1][3] = {{0.5f, 0.25f, -0.75f}};
        CMesh mesh;
        add(mesh, makeBuffer(point, 1u, 0u, 1u));
        mesh.recalculateBoundingBox();
        const aabbox3d<float>& box = mesh.getBoundingBox();
        check(box.MinEdge.X == 0.5f && box.MinEdge.Y == 0.25f && box.MinEdge.Z == -0.75f,
              "one entry: min is the entry's own corner, not the -1..1 temporary");
        check(box.MaxEdge.X == 0.5f && box.MaxEdge.Y == 0.25f && box.MaxEdge.Z == -0.75f,
              "one entry: max is the entry's own corner");
        check(&box == &mesh.boundingBox, "getBoundingBox returns the +0x14 box the body wrote");
    }

    // The entry's primitive-stream range words drive the vertex range: [1,3) must exclude vertex 0 (the origin) and
    // vertex 3 (which would widen the box).
    {
        const float vertices[4][3] = {{0.0f, 0.0f, 0.0f}, {1.0f, 2.0f, 3.0f}, {-5.0f, 2.0f, 3.0f}, {9.0f, 9.0f, 9.0f}};
        CMesh mesh;
        add(mesh, makeBuffer(vertices, 4u, 1u, 3u));
        mesh.recalculateBoundingBox();
        const aabbox3d<float>& box = mesh.getBoundingBox();
        check(box.MinEdge.X == -5.0f && box.MinEdge.Y == 2.0f && box.MinEdge.Z == 3.0f,
              "the range [1,3) is read from the embedded primitive stream (min)");
        check(box.MaxEdge.X == 1.0f && box.MaxEdge.Y == 2.0f && box.MaxEdge.Z == 3.0f,
              "the range [1,3) is read from the embedded primitive stream (max): vertex 3 (9,9,9) is excluded");
    }

    // Two entries: the first replaces the box, the second widens it with addInternalBox (0x6bc3ac).
    {
        const float first[4][3] = {{0.0f, 0.0f, 0.0f}, {1.0f, 2.0f, 3.0f}, {-5.0f, 2.0f, 3.0f}, {9.0f, 9.0f, 9.0f}};
        const float second[3][3] = {{0.0f, 0.0f, 0.0f}, {2.0f, 2.0f, 2.0f}, {1.0f, 1.0f, 1.0f}};
        CMesh mesh;
        add(mesh, makeBuffer(first, 4u, 1u, 3u));
        add(mesh, makeBuffer(second, 3u, 0u, 3u));
        mesh.recalculateBoundingBox();
        const aabbox3d<float>& box = mesh.getBoundingBox();
        check(box.MinEdge.X == -5.0f && box.MinEdge.Y == 0.0f && box.MinEdge.Z == 0.0f,
              "two entries: the second entry's lower Y and Z join the box");
        check(box.MaxEdge.X == 2.0f && box.MaxEdge.Y == 2.0f && box.MaxEdge.Z == 3.0f,
              "two entries: the box is the union, not just the last entry");
    }

    // The merge really is a union per axis: an entry entirely below and left of the first must move all three minima.
    {
        const float high[2][3] = {{4.0f, 5.0f, 6.0f}, {5.0f, 6.0f, 7.0f}};
        const float low[2][3] = {{-3.0f, -4.0f, -5.0f}, {-2.0f, -3.0f, -4.0f}};
        CMesh mesh;
        add(mesh, makeBuffer(high, 2u, 0u, 2u));
        add(mesh, makeBuffer(low, 2u, 0u, 2u));
        mesh.recalculateBoundingBox();
        const aabbox3d<float>& box = mesh.getBoundingBox();
        check(box.MinEdge.X == -3.0f && box.MinEdge.Y == -4.0f && box.MinEdge.Z == -5.0f,
              "the second entry moves all three minima");
        check(box.MaxEdge.X == 5.0f && box.MaxEdge.Y == 6.0f && box.MaxEdge.Z == 7.0f,
              "the second entry does not move the maxima");
    }

    std::printf("%s\n", failures == 0 ? "mesh_recalculate_bbox: ok" : "mesh_recalculate_bbox: FAILED");
    return failures == 0 ? 0 : 1;
}
