// Tests for the logic of glitch::scene::CTerrainSceneNode that needs no driver (scene/CTerrainSceneNode.hpp): the patch tables,
// getIndex stitching, the index generation, getIndicesForPatch, the thresholds, the normals, the smoothing, the LOD pass bookkeeping.
// The vertex buffers are CNullDriver::CBuffer objects filled by hand.
#include <cmath>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CTerrainSceneNode.hpp"
#include "glitch-video/null_driver.hpp"

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL: %s\n", what);
        ++failures;
    }
}

using namespace glitch;
using namespace glitch::scene;

constexpr int kSize = 9;       // vertices per side
constexpr int kPatch = 5;      // vertices per patch edge -> 4 cells, 2 x 2 patches

// A terrain with a flat 9 x 9 grid (height 1) in the mesh holder and in the render buffer, normals in both.
struct Fixture {
    boost::intrusive_ptr<CTerrainSceneNode> node;
    std::vector<float> vertices;      // x, y, z, nx, ny, nz per vertex (24-byte stride)
    std::vector<float> renderVertices;

    Fixture() {
        const core::vector3d<float> origin{0.0f, 0.0f, 0.0f};
        const core::quaternion identity{0.0f, 0.0f, 0.0f, 1.0f};
        const core::vector3d<float> unit{1.0f, 1.0f, 1.0f};
        const std::uint32_t mask = 1u | (1u << 17);
        node = boost::intrusive_ptr<CTerrainSceneNode>(
            new CTerrainSceneNode(boost::intrusive_ptr<io::IFileSystem>(), -1, mask, 4, kPatch, origin, identity, unit));
        node->terrain.size = kSize;
        vertices.assign(kSize * kSize * 6, 0.0f);
        renderVertices.assign(kSize * kSize * 6, 0.0f);
        for (int row = 0; row < kSize; ++row) {
            for (int column = 0; column < kSize; ++column) {
                float* v = &vertices[(row * kSize + column) * 6];
                v[0] = static_cast<float>(row);
                v[1] = 1.0f;
                v[2] = static_cast<float>(column);
                float* r = &renderVertices[(row * kSize + column) * 6];
                std::memcpy(r, v, 3 * sizeof(float));
            }
        }
        attach(node->mesh->getMeshBuffer(0), vertices);
        attach(node->renderBuffer, renderVertices);
    }

    static void attach(const boost::intrusive_ptr<CMeshBuffer>& buffer, std::vector<float>& data) {
        auto* gpu = new video::CNullDriver::CBuffer(0, 4, static_cast<std::uint32_t>(data.size() * sizeof(float)),
                                                    data.data(), 0);
        boost::intrusive_ptr<video::IBuffer> handle(gpu);
        video::CVertexStreams& streams = *buffer->vertexStreams;
        for (video::SVertexStream& stream : streams.m_streams) {
            stream.buffer = handle;
            stream.field0e = 24;
        }
        streams.m_streams[0].offset = 0;
        streams.m_streams[1].offset = 12;
        streams.m_field08 = kSize * kSize;
    }
};

void testPatches(Fixture& f) {
    CTerrainSceneNode& node = *f.node;
    check(node.terrain.patchSize == kPatch && node.terrain.calcPatchSize == kPatch - 1, "STerrainData patch sizes (+0x174/+0x178)");
    check(node.terrain.boundingBox.MinEdge.X > 99999.0f && node.terrain.boundingBox.MaxEdge.X < -99999.0f, "box starts inverted");
    node.createPatches();
    check(node.terrain.patchCount == 2, "patchCount = (size - 1) / calcPatchSize");
    check(node.terrain.patches[3].lod == -1 && node.terrain.patches[0].boundingBox.MaxEdge.Z == 1.0f, "patch records start culled, box -1..1");
    node.calculatePatchData();
    check(node.terrain.patches[0].lod == 0, "calculatePatchData resets the LODs");
    check(node.terrain.patches[0].boundingBox.MinEdge.X == 0.0f && node.terrain.patches[0].boundingBox.MaxEdge.X == 4.0f &&
              node.terrain.patches[0].boundingBox.MaxEdge.Z == 4.0f,
          "patch (0, 0) covers vertices 0..4");
    check(node.terrain.patches[3].boundingBox.MinEdge.X == 4.0f && node.terrain.patches[3].boundingBox.MaxEdge.X == 8.0f,
          "patch (1, 1) covers vertices 4..8");
    check(node.terrain.patches[0].center.X == 2.0f && node.terrain.patches[0].center.Y == 1.0f, "patch centre");
    check(node.terrain.boundingBox.MinEdge.X == 0.0f && node.terrain.boundingBox.MaxEdge.Z == 8.0f, "node box");
    check(node.terrain.center.X == 4.0f && node.terrain.center.Z == 4.0f, "node centre");
    check(node.terrain.rotationPivot.X == 4.0f, "default pivot follows the centre");
    check(node.terrain.patches[0].top == nullptr && node.terrain.patches[0].left == nullptr, "no neighbours at the corner");
    check(node.terrain.patches[0].bottom == &node.terrain.patches[2] && node.terrain.patches[0].right == &node.terrain.patches[1],
          "bottom is the next row, right the next column");
    check(node.terrain.patches[3].top == &node.terrain.patches[1] && node.terrain.patches[3].left == &node.terrain.patches[2],
          "top / left of the last patch");
    check(&node.getBoundingBox(1, 0) == &node.terrain.patches[2].boundingBox, "getBoundingBox(row, column)");
}

void testIndices(Fixture& f) {
    CTerrainSceneNode& node = *f.node;
    // LOD 0 everywhere: the grid index of a vertex is column + size * row.
    node.setCurrentLODOfPatches(0);
    check(node.getIndex(0, 0, 0, 1, 2) == 0u * 4 + 9u * 2 + 1u, "getIndex(patch 0, vx 1, vz 2)");
    check(node.getIndex(1, 0, 1, 0, 0) == 4u, "getIndex(patch 1) starts four columns on");
    check(node.getIndex(0, 1, 2, 0, 0) == 9u * 4, "getIndex(patch 2) starts four rows on");
    // Stitching: patch 0 at LOD 0 next to a LOD 2 neighbour below (row calc): the column snaps to a multiple of 4.
    node.terrain.patches[2].lod = 2;
    check(node.getIndex(0, 0, 0, 3, 4) == 9u * 4 + 0u, "bottom edge snaps to the coarser neighbour");
    check(node.getIndex(0, 0, 0, 3, 3) == 9u * 3 + 3u, "inner rows are untouched");
    node.terrain.patches[2].lod = 0;
    // The index pass: 16 cells of 6 indices per patch at LOD 0, 4 patches.
    std::vector<std::uint16_t> indices16(4 * 16 * 6, 0xFFFF);
    node.preRenderIndicesCalculationsDirect<std::uint16_t>(indices16.data());
    check(node.indexCount == 4 * 16 * 6, "index count at LOD 0 (+0x1b8)");
    check(indices16[0] == 9 && indices16[1] == 0 && indices16[2] == 10 && indices16[3] == 10 && indices16[4] == 0 && indices16[5] == 1,
          "first cell: bottom left, top left, bottom right, bottom right, top left, top right");
    glitch::core::svector<std::uint32_t> indices32(4 * 16 * 6, 0xFFFFFFFFu);
    node.preRenderIndicesCalculationsDirect<std::uint32_t>(indices32.data());
    check(indices32[0] == 9 && indices32[5] == 1 && node.indexCount == 4 * 16 * 6, "uint32 form matches");
    // LOD 1 halves the grid in each direction: 4 cells per patch.
    node.setCurrentLODOfPatches(1);
    node.preRenderIndicesCalculationsDirect<std::uint32_t>(indices32.data());
    check(node.indexCount == 4 * 4 * 6, "index count at LOD 1");
    // A culled patch contributes nothing.
    node.setLODOfPatch(0, 0, -1);
    node.preRenderIndicesCalculationsDirect<std::uint32_t>(indices32.data());
    check(node.indexCount == 3 * 4 * 6, "culled patch skipped");
    node.setCurrentLODOfPatches(0);

    glitch::core::svector<std::uint32_t> patchIndices;
    check(node.getIndicesForPatch(patchIndices, 2, 0, 0) == -1, "patch row out of range");
    check(node.getIndicesForPatch(patchIndices, 0, 0, 7) == -1, "LOD out of range");
    check(node.getIndicesForPatch(patchIndices, 0, 0, 0) == 16 * 6, "indices of one patch at LOD 0");
    check(patchIndices.size() == 6 * 25, "the list has 6 * patchSize^2 slots");
    check(patchIndices[0] == 9 && patchIndices[5] == 1, "same first cell as the index pass");
    node.setLODOfPatch(1, 1, 1);
    check(node.getIndicesForPatch(patchIndices, 1, 1, -1) == 4 * 6, "-1 uses the patch's own LOD");
    check(node.terrain.patches[0].lod == 0 && node.terrain.patches[3].lod == 1, "LODs untouched without an explicit LOD");
    check(node.getIndicesForPatch(patchIndices, 1, 1, 0) == 16 * 6, "an explicit LOD overrides all patches");
    check(node.terrain.patches[3].lod == 1 && node.terrain.patches[0].lod == 0, "and the LODs are restored");
    node.setLODOfPatch(1, 1, -1);
    check(node.getIndicesForPatch(patchIndices, 1, 1, -1) == -2, "a culled patch answers -2");

    glitch::core::svector<std::int32_t> lods;
    node.getCurrentLODOfPatches(lods);
    check(lods.size() == 4 && lods[3] == -1, "getCurrentLODOfPatches");
    lods = {3, 2, 1, 0};
    node.setCurrentLODOfPatches(lods);
    check(node.terrain.patches[1].lod == 2, "setCurrentLODOfPatches(vector)");
    node.setCurrentLODOfPatches(0);
}

void testThresholds(Fixture& f) {
    CTerrainSceneNode& node = *f.node;
    node.calculateDistanceThresholds(true);
    // unit = 5 * 5 * 1 * 1; k = 1, 2, 4, 5 for i = 0..3.
    check(node.terrain.lodDistanceSquared.size() == 4, "one threshold per LOD");
    check(node.terrain.lodDistanceSquared[0] == 25.0 && node.terrain.lodDistanceSquared[1] == 100.0 &&
              node.terrain.lodDistanceSquared[2] == 400.0 && node.terrain.lodDistanceSquared[3] == 625.0,
          "thresholds (k * k) * unit");
    check(node.overrideLODDistance(1, 3.0) == 1 && node.terrain.lodDistanceSquared[1] == 9.0, "override stores the square");
    check(node.overrideLODDistance(4, 3.0) == 0, "override outside the table");
    node.calculateDistanceThresholds(true);
    check(node.terrain.lodDistanceSquared[1] == 9.0, "overridden thresholds are kept");
}

void testNormalsAndSmoothing(Fixture& f) {
    CTerrainSceneNode& node = *f.node;
    node.calculateNormals(node.mesh->getMeshBuffer(0));
    // Inner vertices have all eight triangles around them: a flat grid gives the downward unit normal (the face normal is the negated
    // cross product in the listing's winding).
    bool innerVertical = true;
    for (int row = 1; row < kSize - 1; ++row) {
        for (int column = 1; column < kSize - 1; ++column) {
            const float* n = &f.vertices[(row * kSize + column) * 6 + 3];
            if (std::fabs(n[0]) > 1e-5f || std::fabs(n[1] + 1.0f) > 1e-5f || std::fabs(n[2]) > 1e-5f) {
                innerVertical = false;
            }
        }
    }
    check(innerVertical, "normals of the inner vertices of a flat grid are vertical");
    // The corner (0, 0) has only the cell to its lower right; the listing's two triangles there wind opposite ways, so they cancel.
    const float* corner = &f.vertices[3];
    check(corner[0] == 0.0f && corner[1] == 0.0f && corner[2] == 0.0f, "corner normal (two cancelling faces)");
    const float* edge = &f.vertices[4 * 6 + 3];
    check(std::fabs(edge[1] + 1.0f) < 1e-5f, "edge normal");
    // One bump; the pass runs rows 1..size-2 and columns 1..size-2 in place, each vertex taking (up + ((left + right) + up)) * 0.25
    // (the row above twice, never the row below).
    f.vertices[(4 * kSize + 4) * 6 + 1] = 5.0f;
    std::vector<float> expected(kSize * kSize);
    for (int i = 0; i < kSize * kSize; ++i) expected[i] = f.vertices[i * 6 + 1];
    for (int row = 1; row < kSize - 1; ++row) {
        for (int column = 1; column < kSize - 1; ++column) {
            const float up = expected[(row - 1) * kSize + column];
            expected[row * kSize + column] = (up + ((expected[row * kSize + column - 1] + expected[row * kSize + column + 1]) + up)) * 0.25f;
        }
    }
    node.smoothTerrain(node.mesh->getMeshBuffer(0), 1);
    bool same = true;
    for (int i = 0; i < kSize * kSize; ++i) {
        if (std::fabs(f.vertices[i * 6 + 1] - expected[i]) > 1e-6f) same = false;
    }
    check(same, "smoothing matches the in-place pass");
    check(f.vertices[(5 * kSize + 4) * 6 + 1] != 1.0f || f.vertices[(4 * kSize + 5) * 6 + 1] != 1.0f, "the bump spread");
    check(f.vertices[0 * 6 + 1] == 1.0f, "the border is not smoothed");
}

void testHeightAndTransform(Fixture& f) {
    CTerrainSceneNode& node = *f.node;
    for (int i = 0; i < kSize * kSize; ++i) {
        f.vertices[i * 6 + 1] = static_cast<float>(i / kSize);  // height = row
    }
    node.terrain.scale = core::vector3d<float>{1.0f, 2.0f, 1.0f};
    node.terrain.position = core::vector3d<float>{0.0f, 10.0f, 0.0f};
    check(std::fabs(node.getHeight(2.5f, 3.5f) - (10.0f + 2.0f * 2.5f)) < 1e-4f, "interpolated height, scaled and offset");
    check(node.getHeight(-1.0f, 2.0f) == -1000000.0f, "outside the grid");
    check(node.getHeight(2.0f, 100.0f) == -1000000.0f, "outside the grid in z");
    node.setPosition(core::vector3d<float>{1.0f, 0.0f, 2.0f});
    check(node.forceRecalculation == 1, "the setters force a recalculation");
    check(f.renderVertices[0] == 1.0f && f.renderVertices[2] == 2.0f, "applyTransformation writes the render buffer");
    check(f.renderVertices[1] == 0.0f, "height 0 scaled by 2 plus the position");
}

}  // namespace

int main() {
    Fixture fixture;
    testPatches(fixture);
    testIndices(fixture);
    testThresholds(fixture);
    testNormalsAndSmoothing(fixture);
    testHeightAndTransform(fixture);
    if (failures == 0) {
        std::printf("terrain_scene_node: ok\n");
    }
    return failures == 0 ? 0 : 1;
}
