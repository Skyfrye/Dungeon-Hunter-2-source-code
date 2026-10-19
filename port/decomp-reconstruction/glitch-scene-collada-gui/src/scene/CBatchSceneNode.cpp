// Bodies of glitch::scene::CBatchSceneNode (canonical class: scene/CBatchSceneNode.hpp). This file replaces the CBatchSceneNode
// bodies of src/scene_nodes.cpp and the recon free-function stand-ins in src/recon/slice_05.cpp (getMesh, the render
// registration helpers), slice_31.cpp (constructors, attribute slots, setup) and src/recon/v2/wave_02.cpp (getMesh).
//
// The visible-entry block (+0x158) is ONE allocation: 20 bytes of record per batch, then each batch's array of
// CBatchMesh::SSegment pointers. The record's word +0x10 (firstIndex) is the WORD offset of that batch's array inside this
// same block; computeMaxIndices 0x57e5b8 loads the block from +0x158 and forms the array address as `block + 4 * firstIndex`
// (0x57e5cc), and updateIndices 0x57f740/0x57f75c does the same. The 12-byte slot table at +0x154 is the OTHER block: the
// index-data cache (slot {count, capacity, base}); nothing in this file reads an SSegment* out of it.
//
// In the 32-bit original one SSegment* is exactly one word, so an array of `count` entries occupies `count` words and
// postCompile 0x57ef64 advances the next batch's firstIndex by that count (invalidateVisibleIndexCache 0x57eca8 does the
// same for the index-data base). On this 64-bit host an SSegment* is 8 bytes, so an array of `count` entries spans 2 * count
// words while the offsets still advance one word per entry: two batches whose arrays are both non-empty therefore overlap.
// DECISION (option (a) of TRACK-B-HANDOVER.md question 1): the offsets advance kEntryWords (== 2) words per entry. postCompile
// allocates recordWords + kEntryWords * segments words, hands batch i the word offset `firstIndex` and advances it by
// kEntryWords * its segment count, so the listing's `block + 4 * firstIndex` addressing is kept and the lists cannot overlap.
#include "glitch-scene-collada-gui/scene/CBatchSceneNode.hpp"

#include <cstring>
#include <vector>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"  // glitch::os::Timer::TickCount (updateInfo)
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"  // registerNodeForRendering (vptr+0x24, 0x58f348)
#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/video_driver.hpp"

// CMaterial comes from the core-io stub that io/interfaces.hpp (through ISceneNode.hpp) declares; glitch-video/material.hpp
// cannot be included here until that stub is replaced.

namespace glitch::scene {

namespace {

const core::vector3d<float> kOrigin{0.0f, 0.0f, 0.0f};
const core::quaternion kIdentityRotation{0.0f, 0.0f, 0.0f, 1.0f};
const core::vector3d<float> kUnitScale{1.0f, 1.0f, 1.0f};

// The index data of a visible segment: [indexBegin, indexEnd) of the segment record (SSegment +0x10 / +0x14).
std::int32_t segmentIndexCount(const CBatchMesh::SSegment* segment) {
    return static_cast<std::int32_t>(segment->indexEnd) - static_cast<std::int32_t>(segment->indexBegin);
}

// The number of 16-bit indices a batch contributes to the +0x154 cache block: the batch's mesh buffer (SBatch +0x00) and its
// primitive stream's element count (CMeshBuffer +0x20). invalidateVisibleIndexCache 0x57ec48 (the size sum) and 0x57ecc0..
// 0x57ecc8 (each slot's word 1) both read it; the previous body used the batch's segment-info range instead, which sizes the
// visible-entry block, not the index cache. The null guard is host necessitated: the original's invariant is that a batch
// always has a mesh buffer, while the port's tests build batches with addBatch() alone.
std::uint32_t batchIndexCount(const CBatchMesh::SBatch& batch) {
    return batch.meshBuffer ? batch.meshBuffer->primitiveStream.m_count : 0u;
}

}  // namespace

// 0x57f9c0 _ZN6glitch5scene15CBatchSceneNodeC2Ei (C1 0x57fc04)
// ISceneNode(id, position 0, rotation (0,0,0,1), scale 1); the mesh is a new CBatchMesh holding one use (the constructor increments
// its count after operator new(0x7c)); +0x134 is 0, +0x138 is 2; the cache flag (+0x150) and the register-once flag (+0x148) are 1,
// the batch count (+0x144) and the transparent base (+0x15c) are -1, the cache and the entry array are null; setAutomaticCulling(2).
CBatchSceneNode::CBatchSceneNode(int nodeId) : IMeshSceneNode(nodeId, kOrigin, kIdentityRotation, kUnitScale) {
    mesh = boost::intrusive_ptr<CBatchMesh>(new CBatchMesh(), true);
    unk_134 = 0;
    unk_138 = 2;
    setAutomaticCulling(2);
}

// 0x57f0d4 _ZN6glitch5scene15CBatchSceneNodeC2EiRKN5boost13intrusive_ptrINS0_10CBatchMeshEEE (C1 0x57faf8)
// The mesh handle is copied (a use is added); +0x134 and +0x138 are 2, the rest as the (id) constructor.
CBatchSceneNode::CBatchSceneNode(int nodeId, const boost::intrusive_ptr<CBatchMesh>& batchMesh)
    : IMeshSceneNode(nodeId, kOrigin, kIdentityRotation, kUnitScale) {
    mesh = batchMesh;
    unk_134 = 2;
    unk_138 = 2;
    setAutomaticCulling(2);
}

// 0x57f874 _ZN6glitch5scene15CBatchSceneNodeC2EiRN5boost13intrusive_ptrINS0_10CBatchMeshEEEb (C1 0x57fd74)
// As above, with the byte at +0x148 set to the flag argument.
CBatchSceneNode::CBatchSceneNode(int nodeId, boost::intrusive_ptr<CBatchMesh>& batchMesh, bool flag)
    : IMeshSceneNode(nodeId, kOrigin, kIdentityRotation, kUnitScale) {
    mesh = batchMesh;
    unk_134 = 2;
    unk_138 = 2;
    flag148 = flag;
    setAutomaticCulling(2);
}

// 0x57fe84 _ZN6glitch5scene15CBatchSceneNodeC2EiRKN5boost13intrusive_ptrINS0_10CBatchMeshEEEPNS0_13CSceneManagerE (C1 0x57ffd4)
// As the (id, mesh) constructor, with the scene manager word (+0x110) stored directly (no setSceneManager walk).
CBatchSceneNode::CBatchSceneNode(int nodeId, const boost::intrusive_ptr<CBatchMesh>& batchMesh, CSceneManager* manager)
    : IMeshSceneNode(nodeId, kOrigin, kIdentityRotation, kUnitScale) {
    mesh = batchMesh;
    unk_134 = 2;
    unk_138 = 2;
    sceneManager = manager;
    setAutomaticCulling(2);
}

// 0x57f344 _ZN6glitch5scene15CBatchSceneNodeD1Ev (0x57f3ec D2, 0x57f49c D0)
// In order: operator delete[] of the visible-entry array (+0x158), setVisibleIndexCache(false) (which frees the cache block at
// +0x154), drop of the index buffer at +0x14c, drop of the mesh handle, then ~ISceneNode. The cache must be freed before the
// entries, exactly as the listing does.
CBatchSceneNode::~CBatchSceneNode() {
    delete[] visibleEntries;
    visibleEntries = nullptr;
    setVisibleIndexCache(false);
    dirtyBuffer.reset();
}

// 0x57e6f8 _ZNK6glitch5scene15CBatchSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// With attributes: the ISceneNode attributes, then "SegmentAutomaticCulling" (addEnum with the choice table and the word at
// +0x13c... the word at +0x138, i.e. unk_138), "RegisterSolidBatchesOnce" (+0x148), "HasVisibleIndexCache" (+0x150),
// "Max index count (solid)" (+0x13c), "Max index count (transparent)" (+0x140) and "Solid batch count" (+0x144).
// The original writes the word at +0x138 for the culling choice (0x57e738 reads this+312); unk_138 holds the same 2 the
// AutomaticCulling serializer would write.
void CBatchSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    if (attributes == nullptr) {
        return;
    }
    IMeshSceneNode::serializeAttributes(attributes, options);
    attributes->addEnum("SegmentAutomaticCulling", static_cast<int>(unk_138), AutomaticCullingNames, false);
    attributes->addBool("RegisterSolidBatchesOnce", flag148, false);
    attributes->addBool("HasVisibleIndexCache", visibleIndexCacheOn, false);
    attributes->addInt("Max index count (solid)", maxSolidIndices, false);
    attributes->addInt("Max index count (transparent)", maxTransparentIndices, false);
    attributes->addInt("Solid batch count", unk_144, false);
}

// 0x57ed98 _ZN6glitch5scene15CBatchSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// With attributes: the ISceneNode attributes, "SegmentAutomaticCulling" into +0x138 (getEnum with the choice table),
// "RegisterSolidBatchesOnce" into +0x148, and, when "HasVisibleIndexCache" differs from the current flag, setVisibleIndexCache
// with it. The max-index and batch-count attributes the serializer writes are not read back.
void CBatchSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    if (attributes == nullptr) {
        return;
    }
    IMeshSceneNode::deserializeAttributes(attributes, options);
    unk_138 = static_cast<std::uint32_t>(attributes->getEnum("SegmentAutomaticCulling", AutomaticCullingNames));
    flag148 = attributes->getBool("RegisterSolidBatchesOnce");
    const bool cache = attributes->getBool("HasVisibleIndexCache");
    if (visibleIndexCacheOn != cache) {
        setVisibleIndexCache(cache);
    }
}

// 0x57f4b8 _ZN6glitch5scene15CBatchSceneNode19onRegisterSceneNodeEv
// Does nothing unless the node is visible (flags bit 0). preRegisterSceneNode (vptr+0x104) runs, then clearVisibleSegments gives the
// batch count; a node the manager culls (isCulled) is not registered at all. Otherwise the manager's culling switch is saved and,
// when it was on, cleared for the duration (the segment test below does its own culling); the culling mode is then the node's
// segment mode (+0x138) and the camera the manager's active one, with the switch off both are zero. Per batch, by the mode:
//   0 / 4 (and any value not listed): with the visible-index cache off the batch's record count becomes its segment count (every
//     segment counts as visible, mode 0/4 only); with the cache on addVisibleSegments<SUniverseIntersector> collects the segments;
//   1: SBoxIntersector over the camera frustum's box; 2: SFrustumBoxIntersector over its planes; 8: SFrustumBoxIntersector3;
//   any other mode leaves the record alone.
// Then: with the register-once flag (+0x148) set, updateInfo(0, solid batch count) decides whether the node files itself once with
// the scene manager (no material, user data 0, pass 3 = ESNRP_AUTOMATIC, sort order 0x7FFFFFFF); with it clear registerSolidBatches
// does the filing per batch. registerTransparentBatches always runs. The manager's culling switch is restored. Returns 1.
int CBatchSceneNode::onRegisterSceneNode() {
    if ((flags & ESNF_VISIBLE) != 0) {
        preRegisterSceneNode();
        const std::int32_t batchCount = clearVisibleSegments();
        if (!sceneManager->isCulled(this)) {
            const bool cullingWasOn = sceneManager->cullingEnabled;
            std::uint32_t mode;
            ICameraSceneNode* camera = nullptr;
            if (cullingWasOn) {
                mode = unk_138;
                sceneManager->cullingEnabled = false;
                camera = sceneManager->activeCamera;
            } else {
                mode = 0;
            }
            for (std::int32_t batch = 0; batch < batchCount; ++batch) {
                switch (mode) {
                    case 0:
                    case 4:
                        if (!visibleIndexCacheOn) {
                            visibleEntry(static_cast<std::uint32_t>(batch))->count =
                                static_cast<std::uint16_t>(mesh->batches[batch].endSegmentInfo - mesh->batches[batch].firstSegmentInfo);
                        } else {
                            addVisibleSegments(static_cast<std::uint32_t>(batch), SUniverseIntersector{});
                        }
                        break;
                    case 1:
                        addVisibleSegments(static_cast<std::uint32_t>(batch), SBoxIntersector{&camera->getViewFrustum()->box});
                        break;
                    case 2:
                        addVisibleSegments(static_cast<std::uint32_t>(batch), SFrustumBoxIntersector{camera->getViewFrustum()});
                        break;
                    case 8:
                        addVisibleSegments(static_cast<std::uint32_t>(batch), SFrustumBoxIntersector3{camera->getViewFrustum()});
                        break;
                    default:
                        break;
                }
            }
            if (flag148) {
                const std::uint32_t solid = static_cast<std::uint32_t>(unk_144);
                if (solid != 0 && updateInfo(0, solid) != 0) {
                    const boost::intrusive_ptr<video::CMaterial> noMaterial;
                    sceneManager->registerNodeForRendering(this, noMaterial, nullptr, ESNRP_AUTOMATIC, nullptr, 0x7FFFFFFF);
                }
            } else {
                registerSolidBatches();
            }
            registerTransparentBatches();
            if (cullingWasOn) {
                sceneManager->cullingEnabled = true;
            }
        }
    }
    return 1;
}

// 0x5808ac _ZN6glitch5scene15CBatchSceneNode6renderEPv
// The argument is a packed dispatch word, not a context: the low 16 bits are (batch index + 1) for a solid batch / the batch index for
// a transparent segment, the high 16 bits are the segment's position inside the transparent batch plus one. With a driver
// (manager +0x14): setTransform(1, the absolute matrix); when the driver has option bit 8 (256) it is switched off for the draw
// (setOption(256, false)) and back on at the end. A word >= 0x10000 draws that one transparent segment (the segment record
// batches[word & 0xffff].firstSegmentInfo - 1 + (word >> 16)); any other non-zero word draws solid batch (word - 1); a zero word draws the
// solid batches [0, solid batch count).
void CBatchSceneNode::render(void* renderContext) {
    video::IVideoDriver* driver = sceneManager->driver;
    if (driver == nullptr) {
        return;
    }
    std::uint32_t word = static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(renderContext));
    driver->setTransform(1, absoluteTransform);
    const bool optionOn = ((driver->getOptionFlags() >> 8) & 1u) != 0;
    if (optionOn) {
        driver->setOption(256, false);
    }
    if (word != 0) {
        if (word >= 0x10000u) {
            const CBatchMesh::SBatch& batch = mesh->batches[static_cast<std::uint16_t>(word)];
            renderTransparentSegment(driver, *mesh->segmentAt(static_cast<std::size_t>(batch.firstSegmentInfo) - 1u + (word >> 16)));
        } else {
            renderSolidBatch(driver, word - 1u);
        }
    } else if (unk_144 != 0) {
        do {
            renderSolidBatch(driver, word++);
        } while (static_cast<std::uint32_t>(unk_144) > word);
    }
    if (optionOn) {
        driver->setOption(256, true);
    }
}

// 0x57e538 _ZNK6glitch5scene15CBatchSceneNode14getBoundingBoxEv
// The mesh's box (vtable +0x24 of the mesh at +0x130).
const core::aabbox3d<float>& CBatchSceneNode::getBoundingBox() const {
    return mesh->getBoundingBox();
}

// 0x57e524 _ZNK6glitch5scene15CBatchSceneNode25getTransformedBoundingBoxEv
// Calls getBoundingBox() (vtable +0x30 of this): the box is not transformed.
const core::aabbox3d<float>& CBatchSceneNode::getTransformedBoundingBox() const {
    return getBoundingBox();
}

// 0x57e570 _ZNK6glitch5scene15CBatchSceneNode11getMaterialEj
// The mesh's material at the index (vtable +0x18 of the mesh).
boost::intrusive_ptr<video::CMaterial> CBatchSceneNode::getMaterial(std::uint32_t index) const {
    return mesh->getMaterial(index);
}

// 0x57e554 _ZNK6glitch5scene15CBatchSceneNode16getMaterialCountEv
// The mesh's buffer count (vtable +0x10 of the mesh).
std::uint32_t CBatchSceneNode::getMaterialCount() const {
    return mesh->getMeshBufferCount();
}

// 0x50cd2c _ZNK6glitch5scene15CBatchSceneNode7getTypeEv
E_SCENE_NODE_TYPE CBatchSceneNode::getType() const {
    return ESNT_BATCH;  // 'basn'
}

// 0x57e5b0 _ZN6glitch5scene15CBatchSceneNode7setMeshERKN5boost13intrusive_ptrINS0_5IMeshEEE
// The original body is empty: the mesh handle is not stored.
void CBatchSceneNode::setMesh(const boost::intrusive_ptr<IMesh>& /*newMesh*/) {}

// 0x57e594 _ZNK6glitch5scene15CBatchSceneNode7getMeshEv
// The handle at +0x130 with a use added.
boost::intrusive_ptr<IMesh> CBatchSceneNode::getMesh() const {
    return boost::intrusive_ptr<IMesh>(mesh.get(), true);
}

// 0x57f074 _ZN6glitch5scene15CBatchSceneNode5setupEbPNS_5video12IVideoDriverE
// CBatchMesh::sort(driver) is stored into both +0x15c and +0x144, then CBatchMesh::updateBoundingBox(),
// CBatchMesh::initStaticSegmentBoundingBoxes() and the mesh's vtable +0x3c (CBatchMesh::init) run; with `flag` false the
// vtable +0x100 slot (CBatchSceneNode::postCompile) is dispatched, which is the cache set-up.
void CBatchSceneNode::setup(bool flag, video::IVideoDriver* driver) {
    const std::uint32_t solid = mesh->sort(driver);
    unk_15c = static_cast<std::int32_t>(solid);
    unk_144 = static_cast<std::int32_t>(solid);
    mesh->updateBoundingBox();
    mesh->initStaticSegmentBoundingBoxes();
    mesh->init();
    if (!flag) {
        postCompile();
    }
}

// 0x57ee34 _ZN6glitch5scene15CBatchSceneNode11postCompileEv
// The mesh buffer count drives everything. When the solid batch count (+0x144) is -1 it is recomputed (loc_57EFCC): it
// starts at the batch count and every batch whose material's first render pass has bit 16 of the second state word set
// lowers it by one (the transparent batches sort to the end), leaving the first transparent batch index; the same value is
// stored into the transparent base (+0x15c, 0x57f06c). The entry array (+0x158) is operator delete[]d and rebuilt as a block
// of 4 * (totalSegmentCount + 20 * batchCount) bytes, where totalSegmentCount is the sum over the batches of
// (batch.endSegmentInfo - batch.firstSegmentInfo) - the count of segment infos, which is what the batch-node index counts are
// expressed in. +0x13c and +0x140 are cleared. Each of the `batchCount` 20-byte records gets
// {count = 0, indexBase = 0, tick = 1, flags = 1, firstIndex = running}, with `running` starting at 20 * batchCount / 4 words
// (= the size of the record array) and advanced by that batch's segment-info count; each batch's material decides whether its
// (buffer's vertex attribute map) size raises +0x13c (solid) or +0x140 (transparent). The body ends with
// invalidateVisibleIndexCache(0xFFFFFFFF).
// Deviation: the original writes no tick here (the 20-byte record's word +0x08 stays as the allocation left it); the port
// writes 1, which is what the record holds on the first pass and what updateInfo then overwrites.
void CBatchSceneNode::postCompile() {
    if (!mesh) {
        return;
    }
    const std::uint32_t batchCount = mesh->getMeshBufferCount();
    if (unk_144 == -1) {
        std::uint32_t firstTransparent = batchCount;
        for (std::uint32_t index = 0; index < firstTransparent;) {
            const boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(index);
            bool transparent = false;
            if (material && material->m_renderer) {
                const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
                transparent = (technique.passes[0].stateWords[1] & 0x10000u) != 0;
            }
            if (transparent) {
                --firstTransparent;
            } else {
                ++index;
            }
        }
        unk_144 = static_cast<std::int32_t>(firstTransparent);  // 0x57f000
        unk_15c = static_cast<std::int32_t>(firstTransparent);  // 0x57f06c
    }

    std::uint32_t totalSegments = 0;
    for (std::uint32_t index = 0; index < batchCount; ++index) {
        const CBatchMesh::SBatch& batch = mesh->batches[index];
        totalSegments += static_cast<std::uint32_t>(batch.endSegmentInfo) - batch.firstSegmentInfo;
    }

    delete[] visibleEntries;
    visibleEntries = nullptr;
    maxSolidIndices = 0;
    maxTransparentIndices = 0;

    // The record array is padded to an even word count so that the host-width pointer lists that follow it are 8-byte aligned.
    const std::uint32_t recordWords = (5u * batchCount + 1u) & ~1u;
    visibleEntries = reinterpret_cast<SVisibleEntry*>(
        new std::uint32_t[recordWords + static_cast<std::size_t>(kEntryWords) * totalSegments]());
    std::uint32_t running = recordWords;
    for (std::uint32_t index = 0; index < batchCount; ++index) {
        SVisibleEntry& entry = visibleEntries[index];
        entry.count = 0;
        entry.indexBase = 0;
        entry.tick = 1;
        entry.flags = 1;
        entry.firstIndex = running;
        const CBatchMesh::SBatch& batch = mesh->batches[index];
        running += kEntryWords * (static_cast<std::uint32_t>(batch.endSegmentInfo) - batch.firstSegmentInfo);

        // 0x57ef64 (W2 finding, found by a seeded play session: updateIndices overran the process buffer in renderSolidBatch): the listing
        // calls mesh vtable +0x14 (getMeshBuffer) and reads the word at +0x20 of the buffer, the element count of its primitive stream, which
        // is the most indices one batch can draw. The earlier port called the attribute-map getter and took the map count, a number of a few
        // entries, so the index buffer of the uncached path was far too small for the segments copied into it.
        const boost::intrusive_ptr<CMeshBuffer> sizingBuffer = mesh->getMeshBuffer(index);
        const std::uint32_t size = sizingBuffer ? static_cast<std::uint32_t>(sizingBuffer->primitiveStream.m_count) : 0;
        if (index < static_cast<std::uint32_t>(unk_15c)) {
            if (maxSolidIndices < static_cast<std::int32_t>(size)) {
                maxSolidIndices = static_cast<std::int32_t>(size);
            }
        } else if (maxTransparentIndices < static_cast<std::int32_t>(size)) {
            maxTransparentIndices = static_cast<std::int32_t>(size);
        }
    }
    invalidateVisibleIndexCache(0xFFFFFFFFu);
}

// 0x50cd38 _ZN6glitch5scene15CBatchSceneNode20preRegisterSceneNodeEv (empty)
void CBatchSceneNode::preRegisterSceneNode() {}

// 0x50cd3c _ZNK6glitch5scene15CBatchSceneNode16isSegmentVisibleERKNS0_10CBatchMesh8SSegmentE
bool CBatchSceneNode::isSegmentVisible(const CBatchMesh::SSegment& segment) {
    return segment.visible != 0;  // byte +0x20
}

// 0x57f704 _ZN6glitch5scene15CBatchSceneNode13updateIndicesEjRKN5boost13intrusive_ptrINS_5video7IBufferEEERKNS3_IKS5_EE
// Maps the destination buffer for writing (access 2) and the source for reading (access 1), then walks the batch's visible
// entries: for every SSegment* it copies the segment's index range (2 * (indexEnd - indexBegin) bytes at the mapped source
// pointer + 2 * indexBegin) to the write cursor and sums the copied index count. After the copy both buffers lose one map
// reference (the map count byte at +0x13 of the buffer; the last reference runs the driver's unmap callback when flag 0x20 is
// set) and the batch's own 20-byte record (+0x158 + 20 * batch) has its flags word (+0x0C) zeroed, as 0x57f7f4..0x57f800 does;
// the function never writes the +0x154 cache block. Returns the index count.
std::int32_t CBatchSceneNode::updateIndices(std::uint32_t batch, const boost::intrusive_ptr<video::IBuffer>& buffer,
                                            const boost::intrusive_ptr<const video::IBuffer>& source) {
    struct MapRelease {
        const video::IBuffer* buffer;
        ~MapRelease() {
            if (buffer == nullptr) {
                return;
            }
            const std::uint8_t count = buffer->m_mapCount13;
            if ((count & 0x1Fu) > 1) {
                buffer->m_mapCount13 = static_cast<std::uint8_t>(((count & 0x1Fu) - 1) | (count & 0xE0u));
                return;
            }
            if ((buffer->m_flags12 & video::IBuffer::kFlagUnmapCallback) != 0) {
                buffer->unmapImpl();
            }
            buffer->m_mapCount13 = 0;
        }
    };

    std::uint8_t* out = buffer->map(2);
    const std::uint8_t* in = source->map(1);
    std::int32_t copied = 0;
    const SVisibleEntry* entry = visibleEntry(batch);
    if (entry != nullptr) {
        const std::uint32_t count = static_cast<std::uint32_t>(entry->count);
        for (std::uint32_t index = 0; index < count; ++index) {
            const CBatchMesh::SSegment* segment = visibleSegment(batch, index);
            const std::uint32_t begin = segment->indexBegin;
            const std::int32_t length = segmentIndexCount(segment);
            std::memcpy(out, in + 2 * begin, static_cast<std::size_t>(2 * length));
            out += 2 * length;
            copied += length;
        }
    }
    {
        // The original decrements both map counts inline (the buffer's byte at +0x13; the last reference of a counted map
        // runs IBuffer::unmapImpl when flag 0x20 is set).
        const MapRelease releaseOut{buffer.get()};
        const MapRelease releaseIn{source.get()};
    }
    // 0x57f7f4..0x57f800: the batch's own 20-byte record is reloaded and its flags word (+0x0C) is zeroed; the slot table at
    // +0x154 is NOT written by this function (that was a misreading in the previous body, which cleared the slot's head).
    if (SVisibleEntry* record = visibleEntry(batch)) {
        record->flags = 0;
    }
    return copied;
}

// 0x57ed0c _ZN6glitch5scene15CBatchSceneNode20setVisibleIndexCacheEb
// Stores the switch (+0x150). Turning the cache on, from off, invalidates every batch when the mesh has batches (its batch
// vector at +0x20 .. +0x24 of CBatchMesh, 20-byte records). Turning it off, from on, frees the cache array (+0x154).
void CBatchSceneNode::setVisibleIndexCache(bool enabled) {
    const bool was = visibleIndexCacheOn;
    visibleIndexCacheOn = enabled;
    if (enabled) {
        if (!was && mesh && !mesh->batches.empty()) {
            invalidateVisibleIndexCache(0xFFFFFFFFu);
        }
    } else if (was) {
        delete[] visibleIndexCache;
        visibleIndexCache = nullptr;
    }
}

// Not in the original: the named views of the word arithmetic of the visible-entry block. visibleEntry / cacheSlot return
// null when the block is absent (the original dereferences unconditionally); visibleSegment returns null for a missing entry.
CBatchSceneNode::SVisibleEntry* CBatchSceneNode::visibleEntry(std::uint32_t batch) const {
    if (visibleEntries == nullptr) {
        return nullptr;
    }
    return visibleEntries + batch;
}

CBatchSceneNode::SCacheSlot* CBatchSceneNode::cacheSlot(std::uint32_t batch) const {
    if (visibleIndexCache == nullptr) {
        return nullptr;
    }
    return reinterpret_cast<SCacheSlot*>(visibleIndexCache) + batch;
}

// The batch's SSegment* array. 0x57e5cc (computeMaxIndices) and 0x57f75c (updateIndices) both form the address as
// `block + (firstIndex << 2)` with the block loaded from +0x158, i.e. the array is at the byte offset 4 * firstIndex of the
// visible-entry block the record lives in; the element is a host SSegment* (see the file comment for what that costs).
CBatchMesh::SSegment* CBatchSceneNode::visibleSegment(std::uint32_t batch, std::uint32_t position) const {
    const SVisibleEntry* entry = visibleEntry(batch);
    if (entry == nullptr) {
        return nullptr;
    }
    auto* block = reinterpret_cast<std::uint8_t*>(visibleEntries);
    return reinterpret_cast<CBatchMesh::SSegment**>(block + 4u * entry->firstIndex)[position];
}

// 0x57e5b4 _ZN6glitch5scene15CBatchSceneNode17computeMaxIndicesEj
// The word at +0x158 + 20 * batch, read as a word offset into the cache block, addresses the batch's list of visible SSegment*
// entries; the batch's entry count (record word 0) is the number of them. The result is the sum of
// (*(int*)(segment + 20) - *(int*)(segment + 16)), i.e. SSegment::indexEnd - SSegment::indexBegin, over that list; 0 for an
// empty list. Verified against Hex-Rays 0x57e5b4 and the listing. Deviation: the original dereferences the entry array and the
// segment pointer list unconditionally; the port's visibleEntry()/visibleSegment() return null for a missing block.
std::int32_t CBatchSceneNode::computeMaxIndices(std::uint32_t batch) {
    const SVisibleEntry* entry = visibleEntry(batch);
    if (entry == nullptr) {
        return 0;
    }
    std::int32_t total = 0;
    const std::uint32_t count = static_cast<std::uint32_t>(entry->count);
    for (std::uint32_t index = 0; index < count; ++index) {
        total += segmentIndexCount(visibleSegment(batch, index));
    }
    return total;
}

// 0x57e604 _ZN6glitch5scene15CBatchSceneNode19clearVisibleSegmentsEv
// Reads the mesh's batch count (vtable +0x10) and zeroes word 0 of every one of that many 20-byte visible-entry records: the
// batch's list of visible segments becomes empty. Returns the batch count (0 when the mesh has none). Verified against
// Hex-Rays 0x57e604: the loop index runs to the mesh's virtual +0x10, not to a per-batch segment count, and the stride is 20.
std::int32_t CBatchSceneNode::clearVisibleSegments() {
    const std::uint32_t batchCount = mesh ? mesh->getMeshBufferCount() : 0;
    for (std::uint32_t index = 0; index < batchCount; ++index) {
        SVisibleEntry* entry = visibleEntry(index);
        if (entry != nullptr) {
            entry->count = 0;
        }
    }
    return static_cast<std::int32_t>(batchCount);
}

// 0x57e650 _ZN6glitch5scene15CBatchSceneNode10updateInfoEjj
// For the visible-entry records [batch, segment) (20 bytes each: count, indexBase, tick, flags, firstIndex): sums `count` and,
// for each non-empty record, stamps the tick with glitch::os::Timer::TickCount and sets flags bit 0 unless indexBase equals
// count. Returns the summed count. Verified against Hex-Rays 0x57e650: the count is at this+0x158 + 20i, the tick is the
// TickCount static at 0x9f6cfc (os::Timer::TickCount, declared in glitch-core-io/os/logging.hpp), and the flag word becomes
// record[3] | 1 only when record[1] != record[0]. Only deviation: the port keeps its null-array guard, which is host
// necessitated (the original dereferences unconditionally).
std::int32_t CBatchSceneNode::updateInfo(std::uint32_t batch, std::uint32_t segment) {
    std::int32_t total = 0;
    if (batch >= segment || visibleEntries == nullptr) {
        return 0;
    }
    for (std::uint32_t i = batch; i < segment; ++i) {
        SVisibleEntry* entry = visibleEntry(i);
        const std::int32_t count = entry->count;
        total += count;
        if (count) {
            entry->flags = (entry->indexBase == count) ? entry->flags : (entry->flags | 1u);
            entry->tick = os::Timer::TickCount;
        }
    }
    return total;
}

// 0x57e800 _ZN6glitch5scene15CBatchSceneNode20registerSolidBatchesEv
// Reconstructed against the listing 0x57e800 and Hex-Rays 0x57e800. The gate is +0x144 (the solid batch count) being zero:
// asm 0x57e804 `LDR R3,[R0,#0x144]; CMP R3,#0; BEQ` (the port keeps `> 0`, which also covers the -1 the member holds before
// postCompile computes it, where the original's unsigned compare would read the whole batch list). For every batch
// [0, +0x144) the batch's 20-byte visible-entry record is loaded from +0x158 (asm 0x57e87c), and when its count word is
// non-zero (asm 0x57e88c) the batch's material is taken from the mesh's vtable +0x18 and the batch is filed with the scene
// manager: the manager is the word at +0x110 (`LDR R9,[R7,#0x110]`, 0x57e894), which is ISceneNode::sceneManager, and the
// call is that object's vtable slot +0x24 (`LDR R6,[LR,#0x24]` with LR = [R9]; `BLX R6`, 0x57e8ac / 0x57e8e4), i.e.
// CSceneManager::registerNodeForRendering 0x58f348. The arguments are R0 = the manager (asm 0x57e8e0), R1 = this node
// (0x57e8d4), R2 = the material handle (0x57e8dc), R3 = `batch + 1` (asm 0x57e8d8 MOV R3,R8, where R8 = batch + 1 and the
// getMaterial index is R8 - 1 from asm 0x57e880 SUB R2,R8,#1), then the stack words 4 (asm 0x57e8bc), 0 (0x57e8c4) and
// 0x7fffffff (0x57e8cc): pass 4 is ESNRP_SOLID, no position and the sort order. The userData word is 1-BASED, and render
// 0x5808ac confirms it: it draws the solid batch of the packed word as `renderSolidBatch(this, driver, word - 1)`. The
// material, by contrast, is the batch's own index (`getMaterial(v3 - 1)` with the loop counter v3 = batch + 1, Hex-Rays
// 0x57e800). This is NOT a CBatchDriver compile call: the object the slot is read from is node+0x110 (the manager) and 0x24
// of the manager's vtable word 0x9766f4 is registerNodeForRendering. The entry bookkeeping is the tail of the same loop (asm
// 0x57e8f8 -> loc_57E840, 0x57e840-0x57e870): the record's count is reloaded, `flags` becomes flags|1 unless
// indexBase == count, and the tick is os::Timer::TickCount - set for every batch, because the original's `if (v7)` guards
// only the updates that need the count, not the tick store.
// Deviation, named: the original dereferences the +0x158 block and the material unconditionally; the port tests both
// (visibleEntry returns null for a missing block, and a batch index out of the mesh's range yields a null material), because
// the port's tests build batches with addBatch() alone.
void CBatchSceneNode::registerSolidBatches() {
    if (unk_144 <= 0) {
        return;
    }
    const std::uint32_t solidCount = static_cast<std::uint32_t>(unk_144);
    for (std::uint32_t batch = 0; batch < solidCount; ++batch) {
        SVisibleEntry* entry = visibleEntry(batch);
        if (entry == nullptr) {
            continue;
        }
        if (entry->count != 0) {
            const boost::intrusive_ptr<video::CMaterial> material =
                mesh ? mesh->getMaterial(batch) : boost::intrusive_ptr<video::CMaterial>();
            if (sceneManager != nullptr) {
                // R3 = batch + 1: the registration word is 1-based (render 0x5808ac subtracts one), while the material
                // above is the batch's own index - exactly what the listing passes (asm 0x57e880 vs 0x57e8d8).
                sceneManager->registerNodeForRendering(
                    this, material, reinterpret_cast<void*>(static_cast<std::uintptr_t>(batch) + 1u), ESNRP_SOLID, nullptr,
                    0x7FFFFFFF);
            }
        }
        if (entry->count) {
            entry->flags = (entry->indexBase == entry->count) ? entry->flags : (entry->flags | 1u);
        }
        entry->tick = os::Timer::TickCount;
    }
}

// 0x57ea70 _ZN6glitch5scene15CBatchSceneNode25registerTransparentBatchesEv
// For every transparent batch [the solid batch count at +0x144 (the transparent base), the mesh's buffer count): each visible
// SSegment* of the batch's list is filed with the scene manager (vptr+0x24, registerNodeForRendering 0x58f348) as a transparent-pass
// entry: node = this, material = the batch's material, user data = `batch | ((info.index + 1) << 16)` (info = the segment's
// SSegmentInfo; render 0x5808ac unpacks it), pass 8 = ESNRP_TRANSPARENT, position = CBatchMesh::getSegmentCenter(segment.infoIndex)
// and sort order = the segment's priority (signed halfword +0x22). Afterwards the batch's visible count is cleared and its tick
// stamped with os::Timer::TickCount.
void CBatchSceneNode::registerTransparentBatches() {
    const std::uint32_t batchCount = mesh->getMeshBufferCount();
    for (std::uint32_t batch = static_cast<std::uint32_t>(unk_144); batch < batchCount; ++batch) {
        SVisibleEntry* entry = visibleEntry(batch);
        const std::uint32_t count = static_cast<std::uint32_t>(entry->count);
        for (std::uint32_t k = 0; k < count; ++k) {
            CBatchMesh::SSegment* segment = visibleSegment(batch, k);
            const core::vector3d<float> centre = mesh->getSegmentCenter(reinterpret_cast<void*>(static_cast<std::uintptr_t>(segment->infoIndex)));
            const boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(batch);
            const std::uint32_t packed = batch | (static_cast<std::uint32_t>((*segment->infos)[segment->infoIndex].index + 1) << 16);
            sceneManager->registerNodeForRendering(this, material, reinterpret_cast<void*>(static_cast<std::uintptr_t>(packed)),
                                                   ESNRP_TRANSPARENT, &centre, static_cast<std::int32_t>(segment->priority));
        }
        entry->count = 0;
        entry->tick = os::Timer::TickCount;
    }
}

// 0x57ebec _ZN6glitch5scene15CBatchSceneNode26invalidateVisibleIndexCacheEj
// With the cache off (+0x150 byte) nothing happens. With batch == -1: takes the batch count, sums every batch's INDEX count
// (the batch's mesh buffer at SBatch +0x00, its primitive stream's element count at CMeshBuffer +0x20: 0x57ec48) into `total`,
// and operator delete[]s the old cache block (+0x154). A new block of 2 * (total + (12 * batchCount) / 2) bytes is allocated:
// `total` 16-bit indices followed by the batchCount 12-byte slots, in one block. For each batch the slot gets
// {word 0 = 0, word 1 = that batch's own index count (0x57ecd4), word 2 = running}, running starts at 12 * batchCount / 4
// words (= the slot area's size) and grows by that same index count (0x57eca8), and the batch's visible-entry flags
// (+0x158 + 20 * batch + 12) get bit 0 set. With a batch index: only that batch's flags get bit 0.
// Verified against the listing 0x57ebec. Deviations: the batch count is the mesh's (the original reads +0x144, which
// postCompile sets and which is -1 until it runs); the port's block holds one 32-bit word per index where the original packs
// two 16-bit indices per word, so `running` is a word offset (the same byte offset: 3 * batchCount words = 12 * batchCount
// bytes) and it advances one word per index.
void CBatchSceneNode::invalidateVisibleIndexCache(std::uint32_t batch) {
    if (!visibleIndexCacheOn) {
        return;
    }
    if (batch == 0xFFFFFFFFu) {
        const std::uint32_t batchCount = mesh ? mesh->getMeshBufferCount() : 0;
        if (batchCount == 0) {
            return;
        }
        std::uint32_t totalIndices = 0;
        for (std::uint32_t index = 0; index < batchCount; ++index) {
            totalIndices += batchIndexCount(mesh->batches[index]);
        }
        const std::uint32_t slotWords = (12u * batchCount) >> 2;  // the slot area in 32-bit words
        delete[] visibleIndexCache;
        visibleIndexCache = new std::uint32_t[totalIndices + slotWords];

        // `base` is in 16-bit index units (renderSolidBatch forms cache + 2 * base and updateIndices writes 2 bytes per index), so the
        // index area starts after the slot area measured in those units: 12 * batchCount bytes = 6 * batchCount units. Starting at
        // slotWords (3 * batchCount) put the first indices at byte 6 * batchCount, inside the 12 * batchCount byte slot table: the
        // copied indices overwrote the count/capacity/base of the later slots, and a garbage base became a wild index-buffer pointer
        // (SIGSEGV in updateIndices' memcpy on the second level load, found by owner AB; the block itself is large enough).
        std::uint32_t running = (12u * batchCount) >> 1;
        for (std::uint32_t index = 0; index < batchCount; ++index) {
            SCacheSlot* slot = cacheSlot(index);
            const std::uint32_t count = batchIndexCount(mesh->batches[index]);
            slot->count = 0;
            slot->capacity = static_cast<std::int32_t>(count);  // 0x57ecd4: word 1 is THIS batch's index count
            slot->base = running;                               // word 2 (+0x08) takes the running offset
            visibleEntry(index)->flags |= 1u;
            running += count;  // one index per 32-bit word in the port's block (the original advances a 16-bit unit per index)
        }
        return;
    }
    visibleEntry(batch)->flags |= 1u;
}

// 0x57f21c _ZN6glitch5scene15CBatchSceneNode16renderBatchBBoxesEPNS_5video12IVideoDriverEj
// The debug material of the driver: the renderer id of material type 0 (created when the manager has none: id 0xffff), its cached
// instance (getMaterialInstance(id, false)); the material goes to the driver with its technique (255 for a null material) and
// no attribute map. Then every visible SSegment* of the batch has its box drawn (draw3DBox) in green, 0xFF00FF00.
void CBatchSceneNode::renderBatchBBoxes(video::IVideoDriver* driver, std::uint32_t batch) {
    video::CMaterialRendererManager* manager = driver->m_materialRendererManager;
    std::uint16_t rendererId = manager->m_materialTypeIds[0];
    if (rendererId == 0xFFFFu) {
        rendererId = manager->createMaterialRenderer(static_cast<video::E_MATERIAL_TYPE>(0));
    }
    const boost::intrusive_ptr<video::CMaterial> material = manager->getMaterialInstance(rendererId, false);
    const std::uint8_t technique = material ? static_cast<std::uint8_t>(material->getTechnique()) : 255u;
    driver->setMaterial(material, technique, nullptr);
    const SVisibleEntry* entry = visibleEntry(batch);
    for (std::int32_t k = 0; k < entry->count; ++k) {
        driver->draw3DBox(*visibleSegment(batch, static_cast<std::uint32_t>(k))->box, video::SColor{0xFF00FF00u});
    }
}

namespace {

// The primitive stream the batch draws build on the stack: the given index buffer at offset 0 with `count` indices, and the vertex
// range and the two type halfwords of the batch mesh buffer's own primitive stream.
video::CPrimitiveStream batchPrimitives(const CMeshBuffer& meshBuffer, const boost::intrusive_ptr<video::IBuffer>& indices,
                                        std::uint32_t count) {
    video::CPrimitiveStream primitives;
    primitives.m_indexBuffer = indices;
    primitives.m_offset = 0;
    primitives.m_count = count;
    primitives.m_vertexStart = meshBuffer.primitiveStream.m_vertexStart;
    primitives.m_vertexEnd = meshBuffer.primitiveStream.m_vertexEnd;
    primitives.m_indexType = meshBuffer.primitiveStream.m_indexType;
    primitives.m_primitiveType = meshBuffer.primitiveStream.m_primitiveType;
    return primitives;
}

}  // namespace

// 0x5800e8 _ZN6glitch5scene15CBatchSceneNode15renderSolidBatchEPNS_5video12IVideoDriverEj
// Nothing is drawn for a batch whose visible count is zero. Otherwise, with the batch's mesh buffer and vertex-attribute map:
//  - cache on (+0x150): the batch's cache slot {count, capacity, base} gives an index buffer over `cache + 2 * base` of
//    2 * capacity bytes (createBuffer(type 1, usage 4, size, data, false)); when the record's flags are set updateIndices(batch,
//    buffer, the mesh buffer's index buffer) refills it and its result is stored in slot.count; the draw count is slot.count;
//  - cache off: the index count is maxSolidIndices (+0x13c), or computeMaxIndices(the transparent base +0x15c) when that is zero (the
//    listing passes +0x15c, not the batch - kept); with a non-zero count a process buffer of 2 * count bytes backs a new index buffer
//    that updateIndices fills, and its result is the draw count.
// The material of the batch and the attribute map go to the driver (setMaterial), a primitive stream over that buffer with the
// mesh buffer's vertex range and type halfwords is drawn with the mesh buffer's vertex streams (draw, no binding), the buffers
// and the process buffer are released, and in every case the record's indexBase word is set to its count word.
void CBatchSceneNode::renderSolidBatch(video::IVideoDriver* driver, std::uint32_t batch) {
    SVisibleEntry* entry = visibleEntry(batch);
    if (entry->count != 0) {
        CMeshBuffer* meshBuffer = mesh->batches[batch].meshBuffer.get();
        boost::intrusive_ptr<video::CMaterialVertexAttributeMap> attributeMap = mesh->getMaterialVertexAttributeMap(batch);
        boost::intrusive_ptr<video::IBuffer> indexBuffer;
        int* processBuffer = nullptr;
        std::uint32_t drawCount = 0;
        if (visibleIndexCacheOn) {
            SCacheSlot* slot = cacheSlot(batch);
            if (slot->capacity != 0) {
                indexBuffer = driver->createBuffer(1, 4, 2u * static_cast<std::uint32_t>(slot->capacity),
                                                   reinterpret_cast<std::uint8_t*>(visibleIndexCache) + 2u * slot->base, false);
                if (entry->flags != 0) {
                    slot->count = updateIndices(batch, indexBuffer, boost::intrusive_ptr<const video::IBuffer>(meshBuffer->primitiveStream.m_indexBuffer.get(), true));
                }
                drawCount = static_cast<std::uint32_t>(slot->count);
            }
        } else {
            std::int32_t maxIndices = maxSolidIndices;
            if (maxIndices == 0) {
                maxIndices = computeMaxIndices(static_cast<std::uint32_t>(unk_15c));
            }
            if (maxIndices != 0) {
                processBuffer = core::allocProcessBuffer(2 * maxIndices);
                indexBuffer = driver->createBuffer(1, 4, 2u * static_cast<std::uint32_t>(maxIndices), processBuffer, false);
                drawCount = static_cast<std::uint32_t>(
                    updateIndices(batch, indexBuffer, boost::intrusive_ptr<const video::IBuffer>(meshBuffer->primitiveStream.m_indexBuffer.get(), true)));
            }
        }
        const video::CPrimitiveStream primitives = batchPrimitives(*meshBuffer, indexBuffer, drawCount);
        driver->setMaterial(mesh->getMaterial(batch), boost::intrusive_ptr<const video::CMaterialVertexAttributeMap>(attributeMap.get(), true));
        driver->draw(boost::intrusive_ptr<const video::CVertexStreams>(meshBuffer->vertexStreams.get(), true), primitives, nullptr);
        if (processBuffer != nullptr) {
            core::releaseProcessBuffer(processBuffer);
        }
    }
    entry->indexBase = entry->count;
}

// 0x5804f0 _ZN6glitch5scene15CBatchSceneNode21flushTransparentBatchEPNS_5video12IVideoDriverE
// The transparent batch is the one at +0x15c. Nothing happens when its visible count is zero. Otherwise, with the batch's mesh buffer
// and attribute map: the index count is maxTransparentIndices (+0x140), or computeMaxIndices(+0x15c) when that is zero; with a count
// of zero the record's count is cleared and the call ends. A process buffer of 2 * count bytes refills the node's index buffer
// (+0x14c: IBuffer::reset over it when the node already has one, else createBuffer(1, 4, size, data, false)); updateIndices(+0x15c,
// that buffer, the mesh buffer's index buffer) fills it and its result is the draw count; the material and attribute map go to the
// driver, a primitive stream over the buffer is drawn with the mesh buffer's vertex streams, the record's count is cleared and the
// process buffer is released.
void CBatchSceneNode::flushTransparentBatch(video::IVideoDriver* driver) {
    const std::uint32_t batch = static_cast<std::uint32_t>(unk_15c);
    SVisibleEntry* entry = visibleEntry(batch);
    if (entry->count == 0) {
        return;
    }
    CMeshBuffer* meshBuffer = mesh->batches[batch].meshBuffer.get();
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> attributeMap = mesh->getMaterialVertexAttributeMap(batch);
    std::int32_t maxIndices = maxTransparentIndices;
    if (maxIndices == 0) {
        maxIndices = computeMaxIndices(static_cast<std::uint32_t>(unk_15c));
    }
    if (maxIndices == 0) {
        entry->count = 0;
        return;
    }
    const std::uint32_t bytes = 2u * static_cast<std::uint32_t>(maxIndices);
    int* processBuffer = core::allocProcessBuffer(static_cast<int>(bytes));
    if (dirtyBuffer) {
        dirtyBuffer->reset(bytes, processBuffer, false);
    } else {
        dirtyBuffer = driver->createBuffer(1, 4, bytes, processBuffer, false);
    }
    const std::int32_t drawCount =
        updateIndices(static_cast<std::uint32_t>(unk_15c), dirtyBuffer, boost::intrusive_ptr<const video::IBuffer>(meshBuffer->primitiveStream.m_indexBuffer.get(), true));
    const video::CPrimitiveStream primitives = batchPrimitives(*meshBuffer, dirtyBuffer, static_cast<std::uint32_t>(drawCount));
    driver->setMaterial(mesh->getMaterial(static_cast<std::uint32_t>(unk_15c)),
                        boost::intrusive_ptr<const video::CMaterialVertexAttributeMap>(attributeMap.get(), true));
    driver->draw(boost::intrusive_ptr<const video::CVertexStreams>(meshBuffer->vertexStreams.get(), true), primitives, nullptr);
    entry->count = 0;
    core::releaseProcessBuffer(processBuffer);
}

// 0x5807a0 _ZN6glitch5scene15CBatchSceneNode24renderTransparentSegmentEPNS_5video12IVideoDriverERNS0_10CBatchMesh8SSegmentE
// The segment's batch is the one its info entry names. When that batch's list is empty the pending batch is flushed first and
// becomes the pending one (+0x15c := the batch). The record's flags get bit 0 when its tick differs from the segment's; the
// segment is stamped with the current tick and appended to the batch's list. The pending batch is flushed again unless this node is
// also the next node the manager renders (the following entry is a segment of the same node and will extend the list).
void CBatchSceneNode::renderTransparentSegment(video::IVideoDriver* driver, CBatchMesh::SSegment& segment) {
    const std::int32_t segmentBatch = (*segment.infos)[segment.infoIndex].batch;
    SVisibleEntry* entry = visibleEntry(static_cast<std::uint32_t>(segmentBatch));
    if (entry->count == 0) {
        flushTransparentBatch(driver);
        unk_15c = segmentBatch;
        entry = visibleEntry(static_cast<std::uint32_t>(segmentBatch));
    }
    appendVisibleSegment(&segment);
    if (reinterpret_cast<std::uintptr_t>(this) != sceneManager->getNextRenderedNode(nullptr, nullptr)) {
        flushTransparentBatch(driver);
    }
}

// Not in the original (the tail the four addVisibleSegments instances and renderTransparentSegment share, 0x50d198 and others):
// the record's flags get bit 0 when its tick differs from the segment's, the segment's tick becomes the current one and the pointer
// is appended at `block + 4 * firstIndex + sizeof(SSegment*) * count`.
void CBatchSceneNode::appendVisibleSegment(CBatchMesh::SSegment* segment) {
    SVisibleEntry* entry = visibleEntry(static_cast<std::uint32_t>((*segment->infos)[segment->infoIndex].batch));
    if (entry->tick != segment->lastVisibleTick) {
        entry->flags |= 1u;
    }
    segment->lastVisibleTick = os::Timer::TickCount;
    auto* block = reinterpret_cast<std::uint8_t*>(visibleEntries);
    reinterpret_cast<CBatchMesh::SSegment**>(block + 4u * entry->firstIndex)[entry->count] = segment;
    ++entry->count;
}

namespace {

bool acceptsSegment(CBatchSceneNode::SUniverseIntersector, const CBatchMesh::SSegment&) { return true; }

// SBoxIntersector 0x50d2c0: the intersector box and the segment box overlap on all three axes.
bool acceptsSegment(CBatchSceneNode::SBoxIntersector intersector, const CBatchMesh::SSegment& segment) {
    const core::aabbox3d<float>& a = *intersector.box;
    const core::aabbox3d<float>& b = *segment.box;
    return a.MinEdge.X <= b.MaxEdge.X && a.MinEdge.Y <= b.MaxEdge.Y && a.MinEdge.Z <= b.MaxEdge.Z && a.MaxEdge.X >= b.MinEdge.X &&
           a.MaxEdge.Y >= b.MinEdge.Y && a.MaxEdge.Z >= b.MinEdge.Z;
}

// SFrustumBoxIntersector 0x50d49c: the six planes in order; for each, the box vertex reached by taking the maximum on an axis whose
// normal component is negative and the minimum otherwise; the segment is rejected as soon as n . v + d > 0.
bool acceptsSegment(CBatchSceneNode::SFrustumBoxIntersector intersector, const CBatchMesh::SSegment& segment) {
    const core::aabbox3d<float>& box = *segment.box;
    for (int i = 0; i < 6; ++i) {
        const auto& plane = intersector.frustum->planes[i];
        const float x = plane.Normal.X < 0.0f ? box.MaxEdge.X : box.MinEdge.X;
        const float y = plane.Normal.Y < 0.0f ? box.MaxEdge.Y : box.MinEdge.Y;
        const float z = plane.Normal.Z < 0.0f ? box.MaxEdge.Z : box.MinEdge.Z;
        if ((plane.Normal.X * x + plane.Normal.Y * y) + plane.Normal.Z * z + plane.D > 0.0f) {
            return false;
        }
    }
    return true;
}

// SFrustumBoxIntersector3 0x50cdb0.
bool acceptsSegment(CBatchSceneNode::SFrustumBoxIntersector3 intersector, const CBatchMesh::SSegment& segment) {
    return intersector.frustum->intersectsWithoutBoxTest3(*segment.box);
}

}  // namespace

// 0x50d198 (SUniverseIntersector), 0x50d2c0 (SBoxIntersector), 0x50d49c (SFrustumBoxIntersector), 0x50cdb0 (SFrustumBoxIntersector3)
// _ZN6glitch5scene15CBatchSceneNode18addVisibleSegmentsINS0_..IntersectorEEEvjT_
// Every segment of the batch (the mesh's batch record range) whose tick is not the current one, that isSegmentVisible (vptr+0x108)
// accepts and that the intersector accepts is appended to the batch's visible list. SUniverseIntersector accepts everything;
// SBoxIntersector tests the overlap of the intersector box with the segment's box on all three axes; SFrustumBoxIntersector rejects
// the segment when, for one of the six planes (normal n, constant d at floats 3..6 of each four-float plane), the box vertex that is
// farthest against n satisfies n . v + d > 0; SFrustumBoxIntersector3 calls SViewFrustum::intersectsWithoutBoxTest3 on the box.
template <typename Intersector>
void CBatchSceneNode::addVisibleSegments(std::uint32_t batch, Intersector intersector) {
    const CBatchMesh::SBatch& record = mesh->batches[batch];
    const std::uint32_t count = static_cast<std::uint16_t>(record.endSegmentInfo - record.firstSegmentInfo);
    for (std::uint32_t k = 0; k < count; ++k) {
        CBatchMesh::SSegment* segment = mesh->segmentAt(static_cast<std::size_t>(mesh->batches[batch].firstSegmentInfo) + k);
        if (segment->lastVisibleTick == os::Timer::TickCount || !isSegmentVisible(*segment)) {
            continue;
        }
        if (acceptsSegment(intersector, *segment)) {
            appendVisibleSegment(segment);
        }
    }
}

template void CBatchSceneNode::addVisibleSegments<CBatchSceneNode::SUniverseIntersector>(std::uint32_t, CBatchSceneNode::SUniverseIntersector);
template void CBatchSceneNode::addVisibleSegments<CBatchSceneNode::SBoxIntersector>(std::uint32_t, CBatchSceneNode::SBoxIntersector);
template void CBatchSceneNode::addVisibleSegments<CBatchSceneNode::SFrustumBoxIntersector>(std::uint32_t, CBatchSceneNode::SFrustumBoxIntersector);
template void CBatchSceneNode::addVisibleSegments<CBatchSceneNode::SFrustumBoxIntersector3>(std::uint32_t, CBatchSceneNode::SFrustumBoxIntersector3);

}  // namespace glitch::scene
