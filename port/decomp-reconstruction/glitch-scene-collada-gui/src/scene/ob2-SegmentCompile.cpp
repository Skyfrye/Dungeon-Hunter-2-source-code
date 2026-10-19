// glitch::scene::SDefaultSegmentCompileCallback::operator() (0x58c118): the callback CSceneManager::compileInternal installs in the
// batch driver (CBatchDriver +0x238). Owner B2 (2026-10-16).
#include <cstdint>

#include "glitch-scene-collada-gui/scene/CBatchMesh.hpp"
#include "glitch-scene-collada-gui/scene/CBatchSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene_simple_accessors.hpp"

namespace glitch::scene {

// 0x58c118 _ZN6glitch5scene30SDefaultSegmentCompileCallbackclEPNS0_10CBatchMeshEPvRKNS0_12SCompileInfoE
// The first two arguments are not read. The batch node's mesh (node +0x130) gets a batch the first time (the batch index lives in the
// callback, +0x10), then one segment for the primitive stream just appended: its vertex span (vertex end - vertex start, 16 bits), three
// indices per primitive, and the rendering layer of the node being rendered as priority. A source buffer with its flag byte (+0x34) set
// is recorded in the new segment together with the node's bounding box. The user's callback then gets a copy of the compile info
// whose fourth word is this callback's scene manager.
void SDefaultSegmentCompileCallback::operator()(CBatchMesh* /*mesh*/, void* /*segment*/, const SCompileInfo& info) {
    CBatchMesh* batchMesh = node->mesh.get();  // node +0x130
    if (batchIndex == -1) {
        batchIndex = batchMesh->addBatch();
    }
    const video::CPrimitiveStream* primitives = info.primitives;
    const std::uint32_t vertexSpan = primitives->m_vertexEnd - primitives->m_vertexStart;  // +0x10 - +0x0c
    const std::uint32_t primitiveCount = primitives->getPrimitiveCount();
    ISceneNode* rendered = reinterpret_cast<ISceneNode*>(sceneManager->getCurrentRenderedNode(nullptr, nullptr));
    const std::int16_t layer = static_cast<std::int16_t>(rendered->getRenderingLayer());  // vptr+0xd8
    const std::uint32_t segmentInfoIndex =
        batchMesh->addSegment(static_cast<std::uint16_t>(vertexSpan), 3 * primitiveCount, layer);
    const CMeshBuffer* sourceBuffer = info.meshBuffer.get();
    if (sourceBuffer != nullptr && sourceBuffer->flag_34 != 0) {
        const CBatchMesh::SSegmentInfo& segmentInfo = batchMesh->segmentInfos[segmentInfoIndex];  // +0x14, 8 bytes each
        const CBatchMesh::SBatch& batch = batchMesh->batches[static_cast<std::size_t>(segmentInfo.batch)];  // +0x20
        CBatchMesh::SSegment* segmentRecord =
            batchMesh->segmentAt(static_cast<std::size_t>(batch.firstSegmentInfo) + static_cast<std::size_t>(segmentInfo.index));
        ISceneNode* current = reinterpret_cast<ISceneNode*>(sceneManager->getCurrentRenderedNode(nullptr, nullptr));
        segmentRecord->setSourceBuffer(sourceBuffer, &current->getBoundingBox());  // vptr+0x30
    }
    if (userCallback != nullptr) {
        SCompileInfo forwarded;
        forwarded.vertices = info.vertices;
        forwarded.primitives = info.primitives;
        forwarded.meshBuffer = info.meshBuffer;
        forwarded.sceneManager = sceneManager;
        (*userCallback)(batchMesh, reinterpret_cast<void*>(static_cast<std::uintptr_t>(segmentInfoIndex)), forwarded);
    }
}

}  // namespace glitch::scene
