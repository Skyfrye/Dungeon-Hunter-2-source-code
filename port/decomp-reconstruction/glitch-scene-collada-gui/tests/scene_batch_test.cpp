// Tests for the canonical glitch::scene::CBatchMesh, CBatchMesh::SBatch and CBatchSceneNode (scene/CBatchMesh.hpp,
// scene/CBatchSceneNode.hpp). They replace the checks the recon_v2 wave 00 / 02 / 13 tests made on the layout-struct stand-ins
// (constructor words, bounding box stamping, getMeshBuffer, getMesh).
#include <cstdio>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/CBatchSceneNode.hpp"

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL: %s\n", what);
        ++failures;
    }
}

using glitch::scene::CBatchMesh;
using glitch::scene::CBatchSceneNode;

void testBatchMeshConstructors() {
    CBatchMesh mesh;
    check(mesh.referenceCounter == 0, "CBatchMesh starts with reference count 0 (0x578924)");
    check(mesh.segmentStride == 44, "default segment stride is 44 (+0x70)");
    check(mesh.boundingBoxDirty, "dirty byte is 1 (+0x74)");
    check(mesh.boundingBoxStamp == 0xFFFFFFFFu, "stamp is -1 (+0x6c)");
    check(mesh.boundingBoxSource == 0, "bounding-box source is 0 (+0x68)");
    check(mesh.boundingBox.MinEdge.X == -1.0f && mesh.boundingBox.MaxEdge.Z == 1.0f, "box (+0x50) is the unit box");
    check(mesh.localBox.MinEdge.Y == -1.0f && mesh.localBox.MaxEdge.X == 1.0f, "local box (+0x38) is the unit box");
    check(mesh.getMeshBufferCount() == 0, "no batches yet");

    CBatchMesh strided(0x1234u);
    check(strided.segmentStride == 0x1234u && strided.referenceCounter == 0, "CBatchMesh(unsigned) stores the stride (0x578aa4)");
}

void testBatchRecords() {
    CBatchMesh::SBatch empty;
    check(empty.firstSegmentInfo == 0 && empty.endSegmentInfo == 0 && empty.field10 == 0, "SBatch() zeroes the words (0x578d1c)");
    CBatchMesh::SBatch ranged(7);
    check(ranged.firstSegmentInfo == 7 && ranged.endSegmentInfo == 7 && ranged.field10 == 0, "SBatch(7) sets both range words (0x578d5c)");
    check(ranged.meshBuffer.get() == nullptr && ranged.material.get() == nullptr, "SBatch handles start null");

    CBatchMesh mesh;
    check(mesh.addBatch() == 0, "addBatch returns index 0 for the first batch (0x57b900)");
    mesh.segmentInfos.push_back({0, 0});
    mesh.segmentInfos.push_back({0, 1});
    check(mesh.addBatch() == 1, "addBatch returns index 1 for the second batch");
    check(mesh.batches[1].firstSegmentInfo == 2 && mesh.batches[1].endSegmentInfo == 2,
          "a new batch starts at the current segment-info count");
    check(mesh.getMeshBufferCount() == 2, "getMeshBufferCount is the batch count (0x578c28)");
    check(mesh.getMeshBuffer(0).get() == nullptr, "an empty slot gives a null buffer (0x578c50)");
    check(mesh.getMeshBuffer(5).get() == nullptr, "an index past the end gives a null buffer");
    check(mesh.getMaterial(0).get() == nullptr && mesh.getMaterial(9).get() == nullptr, "getMaterial of empty / missing slots is null");
    check(mesh.clone().get() == nullptr, "clone returns a null handle (0x578c1c)");

    mesh.clear();
    check(mesh.batches.empty() && mesh.segmentInfos.empty() && mesh.segmentData.empty(), "clear empties the three vectors (0x57bd44)");
}

void testBatchBoundingBox() {
    CBatchMesh mesh;
    glitch::core::aabbox3d<float> box{{1.0f, 2.0f, 3.0f}, {4.0f, 5.0f, 6.0f}};
    glitch::os::Timer::TickCount = 77u;
    mesh.setBoundingBox(box);
    check(mesh.boundingBoxStamp == 77u, "setBoundingBox stamps the tick (0x578c78)");
    check(mesh.boundingBox.MinEdge.X == 1.0f && mesh.boundingBox.MaxEdge.Z == 6.0f, "setBoundingBox stores the six words");

    mesh.boundingBoxDirty = false;
    mesh.boundingBoxSource = 0;
    const auto& stored = mesh.getBoundingBox();
    check(&stored == &mesh.boundingBox, "getBoundingBox returns the box member (0x57aa8c)");
    check(stored.MaxEdge.Y == 5.0f, "the stored box is returned unchanged");
}

void testIndexRange() {
    CBatchMesh mesh;
    CBatchMesh::SSegment segment;
    segment.indexBegin = 12;
    segment.indexEnd = 90;
    std::uint32_t first = 0;
    std::uint32_t last = 0;
    mesh.getIndexRange(first, last, &segment);
    check(first == 12 && last == 90, "getIndexRange copies +0x10 and +0x14 (0x50cd10)");
}

void testBatchSceneNode() {
    CBatchSceneNode node(5);
    check(node.getType() == glitch::scene::ESNT_BATCH, "getType is 'basn' (0x50cd2c)");
    check(node.getID() == 5, "the id reaches ISceneNode");
    check(node.mesh.get() != nullptr, "the one-argument constructor creates a CBatchMesh (0x57f9c0)");
    check(node.mesh->referenceCounter == 1, "the node holds the only use of its new CBatchMesh");
    check(node.unk_134 == 0 && node.unk_138 == 2 && node.unk_144 == -1 && node.unk_15c == -1, "member words of the (id) constructor");
    check(node.visibleIndexCacheOn, "the visible-index cache is on (+0x150)");
    check(node.automaticCulling == 2, "setAutomaticCulling(2)");

    check(node.getMaterialCount() == 0, "getMaterialCount forwards to the mesh buffer count (0x57e554)");
    check(&node.getBoundingBox() == &node.mesh->boundingBox, "getBoundingBox forwards to the mesh (0x57e538)");
    check(&node.getTransformedBoundingBox() == &node.getBoundingBox(), "getTransformedBoundingBox calls getBoundingBox (0x57e524)");

    auto handle = node.getMesh();
    check(handle.get() == node.mesh.get(), "getMesh returns the mesh (0x57e594)");
    check(node.mesh->referenceCounter == 2, "getMesh adds a use");
    handle.reset();
    check(node.mesh->referenceCounter == 1, "dropping the handle gives the use back");

    node.setMesh(boost::intrusive_ptr<glitch::scene::IMesh>());
    check(node.mesh.get() != nullptr, "setMesh is an empty body: the mesh is kept (0x57e5b0)");

    CBatchMesh::SSegment hidden;
    CBatchMesh::SSegment shown;
    shown.visible = 1;
    check(!node.isSegmentVisible(hidden) && node.isSegmentVisible(shown), "isSegmentVisible tests byte +0x20 (0x50cd3c)");
}

void testBatchSceneNodeSharedMesh() {
    boost::intrusive_ptr<CBatchMesh> shared(new CBatchMesh(), true);
    check(shared->referenceCounter == 1, "a counted handle owns the new mesh");
    {
        CBatchSceneNode a(1, shared);
        check(shared->referenceCounter == 2, "the (id, mesh) constructor takes a use (0x57f0d4)");
        check(a.unk_134 == 2 && a.unk_138 == 2, "member words of the (id, mesh) constructor");
        CBatchSceneNode b(2, shared, true);
        check(shared->referenceCounter == 3 && b.flag148, "the flag constructor stores the flag at +0x148 (0x57f874)");
    }
    check(shared->referenceCounter == 1, "destroying the nodes drops their uses");
}

}  // namespace

int main() {
    testBatchMeshConstructors();
    testBatchRecords();
    testBatchBoundingBox();
    testIndexRange();
    testBatchSceneNode();
    testBatchSceneNodeSharedMesh();
    if (failures == 0) {
        std::printf("scene_batch_test: all checks passed\n");
        return 0;
    }
    return 1;
}
