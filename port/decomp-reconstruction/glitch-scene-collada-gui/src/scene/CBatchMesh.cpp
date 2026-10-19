// Bodies of glitch::scene::CBatchMesh and CBatchMesh::SBatch (canonical class: scene/CBatchMesh.hpp). This file replaces the
// CBatchMesh bodies of src/scene_nodes.cpp and the recon free-function stand-ins in src/recon/v2/wave_00.cpp (setBoundingBox,
// getBoundingBox), wave_02.cpp (constructors, getMeshBuffer) and wave_13.cpp (loadSegmentExtraData).
#include "glitch-scene-collada-gui/scene/CBatchMesh.hpp"

#include <algorithm>
#include <cstring>
#include <limits>
#include <utility>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/byteswap.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/batch_baker.hpp"
#include "glitch-video/driver_binding.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/vertex_attribute_map.hpp"

namespace glitch::core {
// 0x6a2cdc: skipped in the glitch-core-io ledger (not reconstructed there); quantizeComponents calls it.
boost::intrusive_ptr<scene::CMeshBuffer> createQuantizedBuffer(const boost::intrusive_ptr<const scene::CMeshBuffer>& buffer,
                                                               bool flagA, bool flagB, video::IVideoDriver* driver);
}  // namespace glitch::core

namespace glitch::scene {

// ---------------------------------------------------------------------------------------------------------------------
// SBatch
// ---------------------------------------------------------------------------------------------------------------------

// 0x578d1c _ZN6glitch5scene10CBatchMesh6SBatchC2Ev
// 0x578d3c _ZN6glitch5scene10CBatchMesh6SBatchC1Ev
// Zeroes every field (the member initialisers).
CBatchMesh::SBatch::SBatch() = default;

// 0x578d5c _ZN6glitch5scene10CBatchMesh6SBatchC2Et
// 0x578d7c _ZN6glitch5scene10CBatchMesh6SBatchC1Et
// Both 16-bit range words (+0x0c, +0x0e) take the value; +0x10 is zeroed.
CBatchMesh::SBatch::SBatch(std::uint16_t value) : firstSegmentInfo(value), endSegmentInfo(value), field10(0) {}

CBatchMesh::SBatch::SBatch(const SBatch& other) = default;

// 0x57ba8c _ZN6glitch5scene10CBatchMesh6SBatchaSERKS2_
// Mesh buffer, material and vertex-attribute map are assigned in that order (each takes a use and drops the old handle), then the
// three 16-bit range words +0x0c, +0x0e, +0x10 are copied.
CBatchMesh::SBatch& CBatchMesh::SBatch::operator=(const SBatch& other) {
    meshBuffer = other.meshBuffer;
    material = other.material;
    vertexAttributeMap = other.vertexAttributeMap;
    firstSegmentInfo = other.firstSegmentInfo;
    endSegmentInfo = other.endSegmentInfo;
    field10 = other.field10;
    return *this;
}

// 0x57a368 (D1) / 0x57a688 (D2) _ZN6glitch5scene10CBatchMesh6SBatchD1Ev
// Drops the vertex-attribute map, the material and the mesh buffer, in reverse member order (the handles do it).
CBatchMesh::SBatch::~SBatch() = default;

// ---------------------------------------------------------------------------------------------------------------------
// CBatchMesh
// ---------------------------------------------------------------------------------------------------------------------

// 0x578924 _ZN6glitch5scene10CBatchMeshC2Ev
// 0x5789e4 _ZN6glitch5scene10CBatchMeshC1Ev
// The reference count starts at 0; the two boxes are the unit box; the stamp is -1, the stride 44, the dirty byte 1. Every other
// word is zero (the member initialisers).
CBatchMesh::CBatchMesh() {
    referenceCounter = 0;
}

// 0x578aa4 _ZN6glitch5scene10CBatchMeshC2Ej
// 0x578b60 _ZN6glitch5scene10CBatchMeshC1Ej
// Same as the default constructor with the stride (+0x70) set to the argument.
CBatchMesh::CBatchMesh(std::uint32_t stride) {
    referenceCounter = 0;
    segmentStride = stride;
}

// 0x57a59c _ZN6glitch5scene10CBatchMeshD1Ev (D2 0x57a620; D0 0x57a604 skipped)
// Frees the block at +0x2c, destroys the batch vector (each batch drops its three handles), frees the blocks at +0x14 and +0x08.
CBatchMesh::~CBatchMesh() = default;

// 0x578c1c _ZNK6glitch5scene10CBatchMesh5cloneEv
// Returns a null handle (the original stores 0 into the result slot).
boost::intrusive_ptr<IMesh> CBatchMesh::clone() const {
    return boost::intrusive_ptr<IMesh>();
}

// 0x578c28 _ZNK6glitch5scene10CBatchMesh18getMeshBufferCountEv
// (end - begin) / 20 in the original, the element count here.
std::uint32_t CBatchMesh::getMeshBufferCount() const {
    return static_cast<std::uint32_t>(batches.size());
}

// 0x578c50 _ZNK6glitch5scene10CBatchMesh13getMeshBufferEj
// The first word of the batch record, with a use added. The original does not test the index; out of range gives null here.
boost::intrusive_ptr<CMeshBuffer> CBatchMesh::getMeshBuffer(std::uint32_t index) const {
    if (index >= batches.size()) {
        return boost::intrusive_ptr<CMeshBuffer>();
    }
    return batches[index].meshBuffer;
}

// 0x578ccc _ZNK6glitch5scene10CBatchMesh11getMaterialEj
boost::intrusive_ptr<video::CMaterial> CBatchMesh::getMaterial(std::uint32_t index) const {
    if (index >= batches.size()) {
        return boost::intrusive_ptr<video::CMaterial>();
    }
    return batches[index].material;
}

// 0x578cf4 _ZNK6glitch5scene10CBatchMesh24getMaterialVertexAttributeMapEj
boost::intrusive_ptr<video::CMaterialVertexAttributeMap> CBatchMesh::getMaterialVertexAttributeMap(std::uint32_t index) const {
    if (index >= batches.size()) {
        return boost::intrusive_ptr<video::CMaterialVertexAttributeMap>();
    }
    return batches[index].vertexAttributeMap;
}

// 0x57a2ac _ZN6glitch5scene10CBatchMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS4_INS5_27CMaterialVertexAttributeMapEEE
// An index past the end is ignored. The material (+0x04) is stored first, then the map (+0x08); each takes a use and drops the
// old handle.
void CBatchMesh::setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                             const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) {
    if (index >= batches.size()) {
        return;
    }
    batches[index].material = material;
    batches[index].vertexAttributeMap = vertexAttributeMap;
}

// 0x57aa8c _ZNK6glitch5scene10CBatchMesh14getBoundingBoxEv
// Refreshes the box when the dirty byte is set, or when the source is set and the stamp differs from the current tick.
const core::aabbox3d<float>& CBatchMesh::getBoundingBox() const {
    if (boundingBoxDirty || (boundingBoxSource != 0 && boundingBoxStamp != os::Timer::TickCount)) {
        updateBoundingBox();
    }
    return boundingBox;
}

// 0x578c78 _ZN6glitch5scene10CBatchMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
// Stamps the box with os::Timer::TickCount and copies the six words into +0x50 .. +0x67.
void CBatchMesh::setBoundingBox(const core::aabbox3d<float>& box) {
    boundingBoxStamp = os::Timer::TickCount;
    boundingBox = box;
}

// 0x57db94 CBatchMesh::load and 0x57cd48 CBatchMesh::save: src/scene/ob2-BatchMeshIO.cpp.

// 0x50cd10 _ZNK6glitch5scene10CBatchMesh13getIndexRangeERjS2_PKNS1_8SSegmentE
void CBatchMesh::getIndexRange(std::uint32_t& first, std::uint32_t& last, const SSegment* segment) const {
    first = segment->indexBegin;  // +0x10
    last = segment->indexEnd;     // +0x14
}

// 0x50cd24 _ZN6glitch5scene10CBatchMesh4initEv (empty)
void CBatchMesh::init() {}

// 0x50cd28 _ZNK6glitch5scene10CBatchMesh20saveSegmentExtraDataEPKvPNS_2io10IWriteFileEb (empty)
void CBatchMesh::saveSegmentExtraData(const void* /*data*/, io::IWriteFile* /*file*/, bool /*flag*/) const {}

// 0x578920 _ZN6glitch5scene10CBatchMesh20loadSegmentExtraDataEPvPNS_2io9IReadFileEb (empty)
void CBatchMesh::loadSegmentExtraData(void* /*data*/, io::IReadFile* /*file*/, bool /*flag*/) {}

// 0x57a4a8 _ZN6glitch5scene10CBatchMesh5stripEv
// Shrinks the batch vector, the segment-info vector and the segment byte vector to their sizes.
void CBatchMesh::strip() {
    batches.shrink_to_fit();
    segmentInfos.shrink_to_fit();
    segmentData.shrink_to_fit();
}


namespace {

// The original takes the segment bounding boxes from the pool glitch::memory::Aabbox3dfPool (boost::pool over SAllocator, free
// list kept ordered by address). The port has no pool; the heap gives the same ownership (a record that owns a box gives it
// back).
core::aabbox3d<float>* newBox(const core::aabbox3d<float>& value) { return new core::aabbox3d<float>(value); }
void freeBox(const core::aabbox3d<float>* box) { delete box; }

const core::aabbox3d<float> kUnitBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};

// The transparent bit of a material's first pass of the selected technique (state word 1, bit 16): sortBatches 0x57bc78.
bool isTransparentMaterial(const boost::intrusive_ptr<video::CMaterial>& material) {
    if (!material || !material->m_renderer) {
        return false;
    }
    const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
    return (technique.passes[0].stateWords[1] & 0x10000u) != 0;
}

// The 16-bit and 32-bit swaps of the segment file format (load/save with the swap flag).
std::uint16_t swap16(std::uint16_t v) { return static_cast<std::uint16_t>((v >> 8) | (v << 8)); }
std::uint32_t swap32(std::uint32_t v) {
    return (v >> 24) | ((v >> 8) & 0x0000FF00u) | ((v << 8) & 0x00FF0000u) | (v << 24);
}

// The vertex stream table of the batch a segment belongs to: `batches[infos[segment.infoIndex].batch].meshBuffer->vertexStreams`
// (the expression 0x57a6d4, 0x57b174 and 0x57e90c all form).
const video::CVertexStreams* segmentVertexStreams(const CBatchMesh& mesh, const CBatchMesh::SSegment& segment) {
    const CBatchMesh::SSegmentInfo& info = (*segment.infos)[segment.infoIndex];
    return mesh.batches[static_cast<std::size_t>(info.batch)].meshBuffer->vertexStreams.get();
}

// One map reference of a buffer given back (the original inlines it: the count byte at +0x13, the unmap callback when the last
// counted map goes and flag 0x20 is set).
void releaseMap(const video::IBuffer* buffer) { buffer->unmap(); }

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// SSegment
// ---------------------------------------------------------------------------------------------------------------------

// 0x57b67c _ZN6glitch5scene10CBatchMesh8SSegment5cloneERKS2_
// Copies +0x00, +0x04, +0x08. When the source owns its box the box is duplicated (a new pool box holding the six floats) and the new
// pointer stored; otherwise the box pointer is shared. Then +0x10..+0x1c, the two bytes +0x20/+0x21 and the four halfwords
// +0x22..+0x28.
void CBatchMesh::SSegment::clone(const SSegment& other) {
    infos = other.infos;
    infoIndex = other.infoIndex;
    sourceBuffer = other.sourceBuffer;
    if (other.ownsBox) {
        box = newBox(*other.box);
    } else {
        box = other.box;
    }
    indexBegin = other.indexBegin;
    indexEnd = other.indexEnd;
    indexEndCopy = other.indexEndCopy;
    lastVisibleTick = other.lastVisibleTick;
    visible = other.visible;
    ownsBox = other.ownsBox;
    priority = other.priority;
    vertexBegin = other.vertexBegin;
    vertexEnd = other.vertexEnd;
    vertexEndCopy = other.vertexEndCopy;
}

// 0x588e80 _ZN6glitch5scene10CBatchMesh8SSegment15setSourceBufferEPKNS0_11CMeshBufferEPKNS_4core8aabbox3dIfEE
// With a buffer: when the box differs from the current one, an owned current box is given back (flag cleared) and the new pointer
// stored. Without a buffer: any current box is given back (when owned) and cleared. The buffer pointer is stored last.
void CBatchMesh::SSegment::setSourceBuffer(const CMeshBuffer* buffer, const core::aabbox3d<float>* newBoxPtr) {
    if (buffer != nullptr) {
        if (newBoxPtr != box) {
            if (ownsBox) {
                freeBox(box);
                ownsBox = 0;
            }
            box = newBoxPtr;
        }
    } else if (box != nullptr) {
        if (ownsBox) {
            freeBox(box);
            ownsBox = 0;
        }
        box = nullptr;
    }
    sourceBuffer = buffer;
}

// 0x578ee0 _ZNK6glitch5scene10CBatchMesh8SSegment4saveEPNS_2io10IWriteFileEb
// The file record: +0x04 (4), the box (24 bytes), +0x10, +0x14, +0x18 (4 each), the visible byte +0x20 (1), then the halfwords
// +0x22, +0x24, +0x26, +0x28 (2 each). With `swap` every multi-byte value goes out byte-swapped (the box through
// os::byteswap<float>). The original returns the last write's result.
bool CBatchMesh::SSegment::save(io::IWriteFile* file, bool swap) const {
    const core::aabbox3d<float>& boxRef = *box;
    if (swap) {
        std::uint32_t word = swap32(infoIndex);
        file->write(&word, 4);
        const core::aabbox3d<float> swappedBox = os::byteswap(boxRef);
        file->write(&swappedBox, 24);
        word = swap32(indexBegin);
        file->write(&word, 4);
        word = swap32(indexEnd);
        file->write(&word, 4);
        word = swap32(indexEndCopy);
        file->write(&word, 4);
        file->write(&visible, 1);
        std::uint16_t half = swap16(static_cast<std::uint16_t>(priority));
        file->write(&half, 2);
        half = swap16(vertexBegin);
        file->write(&half, 2);
        half = swap16(vertexEnd);
        file->write(&half, 2);
        half = swap16(vertexEndCopy);
        return file->write(&half, 2) != 0;
    }
    file->write(&infoIndex, 4);
    file->write(&boxRef, 24);
    file->write(&indexBegin, 4);
    file->write(&indexEnd, 4);
    file->write(&indexEndCopy, 4);
    file->write(&visible, 1);
    file->write(&priority, 2);
    file->write(&vertexBegin, 2);
    file->write(&vertexEnd, 2);
    return file->write(&vertexEndCopy, 2) != 0;
}

// 0x57b3d8 _ZN6glitch5scene10CBatchMesh8SSegment4loadEPNS_2io9IReadFileEb
// The mirror of save: +0x04, a new pool box (flag +0x21 set, pointer stored after the box is read), the three index words, the
// visible byte and the four halfwords; with `swap` every multi-byte value is swapped in place afterwards (the box through
// os::byteswap<float>). The original returns the last halfword.
bool CBatchMesh::SSegment::load(io::IReadFile* file, bool swap) {
    file->read(&infoIndex, 4);
    core::aabbox3d<float>* newBoxPtr = newBox(kUnitBox);
    ownsBox = 1;
    file->read(newBoxPtr, 24);
    box = newBoxPtr;
    file->read(&indexBegin, 4);
    file->read(&indexEnd, 4);
    file->read(&indexEndCopy, 4);
    file->read(&visible, 1);
    file->read(&priority, 2);
    file->read(&vertexBegin, 2);
    file->read(&vertexEnd, 2);
    file->read(&vertexEndCopy, 2);
    if (swap) {
        infoIndex = swap32(infoIndex);
        *newBoxPtr = os::byteswap(*newBoxPtr);
        indexBegin = swap32(indexBegin);
        indexEnd = swap32(indexEnd);
        indexEndCopy = swap32(indexEndCopy);
        priority = static_cast<std::int16_t>(swap16(static_cast<std::uint16_t>(priority)));
        vertexBegin = swap16(vertexBegin);
        vertexEnd = swap16(vertexEnd);
        vertexEndCopy = swap16(vertexEndCopy);
    }
    return true;
}

// ---------------------------------------------------------------------------------------------------------------------
// CBatchMesh: boxes
// ---------------------------------------------------------------------------------------------------------------------

// 0x57a6d4 _ZNK6glitch5scene10CBatchMesh17updateBoundingBoxEv
// With the dirty byte set: per batch, the box of its first field10 segments (the segments baked into the batch) is computed from
// the vertex data (CVertexStreams::computeBoundingBox over the segment's vertex range) and merged; the first batch replaces the
// local box (+0x38), the others extend it; the result is copied to +0x50, the dirty byte cleared and the tick stored. Then, when
// the source count (+0x68) is non-zero, the boxes of the remaining segments (index field10 and up) of the first +0x68 batches are
// merged into one accumulator that starts as the inverted extreme box and is NOT reset between batches; it replaces the box
// (+0x50) when +0x68 is not below the batch count (first merge) and extends it otherwise. The tick is stored again.
void CBatchMesh::updateBoundingBox() const {
    CBatchMesh* self = const_cast<CBatchMesh*>(this);
    const std::uint32_t batchCount = static_cast<std::uint32_t>(batches.size());
    if (boundingBoxDirty) {
        for (std::uint32_t b = 0; b < batchCount; ++b) {
            const SBatch& batch = batches[b];
            core::aabbox3d<float> accumulated = kUnitBox;
            bool first = true;
            for (std::uint32_t k = 0; k < batch.field10; ++k) {
                const SSegment& segment = *segmentAt(static_cast<std::size_t>(batch.firstSegmentInfo) + k);
                core::aabbox3d<float> segmentBox = kUnitBox;
                segmentVertexStreams(*this, segment)->computeBoundingBox(segment.vertexBegin, segment.vertexEnd, segmentBox);
                if (first) {
                    accumulated = segmentBox;
                    first = false;
                } else {
                    accumulated.addInternalBox(segmentBox);
                }
            }
            if (b == 0) {
                self->localBox = accumulated;
            } else {
                self->localBox.addInternalBox(accumulated);
            }
        }
        boundingBox = localBox;
        boundingBoxDirty = false;
        boundingBoxStamp = os::Timer::TickCount;
    }
    std::uint32_t remaining = boundingBoxSource;
    if (remaining == 0) {
        return;
    }
    bool firstMerge;
    if (remaining < batchCount) {
        boundingBox = localBox;
        firstMerge = false;
    } else {
        firstMerge = true;
    }
    const float big = std::numeric_limits<float>::max();
    core::aabbox3d<float> accumulated{{big, big, big}, {-big, -big, -big}};
    for (std::uint32_t b = 0; remaining != 0; ++b, --remaining) {
        const SBatch& batch = batches[b];
        const std::uint32_t begin = batch.field10;
        const std::uint32_t count = static_cast<std::uint16_t>(batch.endSegmentInfo - batch.firstSegmentInfo);
        if (begin >= count) {
            continue;
        }
        for (std::uint32_t k = begin; k < count; ++k) {
            const SSegment& segment = *segmentAt(static_cast<std::size_t>(batch.firstSegmentInfo) + k);
            if (segment.box != nullptr) {
                accumulated.addInternalBox(*segment.box);
            }
        }
        if (firstMerge) {
            boundingBox = accumulated;
            firstMerge = false;
        } else {
            boundingBox.addInternalBox(accumulated);
        }
    }
    boundingBoxStamp = os::Timer::TickCount;
}

// 0x57b174 _ZN6glitch5scene10CBatchMesh30initStaticSegmentBoundingBoxesEv
// For every batch's first field10 segments (the baked ones): the box of the vertex range is computed from the vertex data and
// written into the segment's box; a segment without a box gets a new pool box holding it (flag +0x21 set).
void CBatchMesh::initStaticSegmentBoundingBoxes() {
    const std::uint32_t batchCount = static_cast<std::uint32_t>(batches.size());
    for (std::uint32_t b = 0; b < batchCount; ++b) {
        const SBatch& batch = batches[b];
        for (std::uint32_t k = 0; k < batch.field10; ++k) {
            core::aabbox3d<float> computed = kUnitBox;
            SSegment& segment = *segmentAt(static_cast<std::size_t>(batch.firstSegmentInfo) + k);
            segmentVertexStreams(*this, segment)->computeBoundingBox(segment.vertexBegin, segment.vertexEnd, computed);
            if (segment.box != nullptr) {
                *const_cast<core::aabbox3d<float>*>(segment.box) = computed;
            } else {
                segment.box = newBox(computed);
                segment.ownsBox = 1;
            }
        }
    }
}

// 0x57e90c _ZNK6glitch5scene10CBatchMesh16getSegmentCenterEPv
// The argument is a segment-info index: batches[info.batch].firstSegmentInfo + info.index addresses the segment record. The result is
// the centre of its box; a segment without a box gets the box computed from its vertex range (CVertexStreams::computeBoundingBox)
// into a unit-box temporary.
core::vector3d<float> CBatchMesh::getSegmentCenter(void* segment) const {
    const SSegmentInfo& info = segmentInfos[reinterpret_cast<std::uintptr_t>(segment)];
    const SSegment& record = *segmentAt(static_cast<std::size_t>(batches[static_cast<std::size_t>(info.batch)].firstSegmentInfo) +
                                        static_cast<std::size_t>(info.index));
    core::aabbox3d<float> computed = kUnitBox;
    const core::aabbox3d<float>* source = record.box;
    if (source == nullptr) {
        segmentVertexStreams(*this, record)->computeBoundingBox(record.vertexBegin, record.vertexEnd, computed);
        source = &computed;
    }
    return core::vector3d<float>{(source->MinEdge.X + source->MaxEdge.X) * 0.5f, (source->MinEdge.Y + source->MaxEdge.Y) * 0.5f,
                                 (source->MinEdge.Z + source->MaxEdge.Z) * 0.5f};
}

// ---------------------------------------------------------------------------------------------------------------------
// CBatchMesh: building
// ---------------------------------------------------------------------------------------------------------------------

// 0x57d98c _ZN6glitch5scene10CBatchMesh10addSegmentEtjs
// Appends a segment to the LAST batch. Its first index / vertex are the end of the batch's previous segment (looked up through the
// info vector: the segment at infos[end - 1]), or 0 for the batch's first segment; the batch's end counter (+0x0e) advances. The new
// segment gets info {batch, position in the batch}; the record is visible, owns no box, has no source buffer, covers
// [begin, begin + b) indices and [vbegin, vbegin + a) vertices and carries `c` as its priority. Returns the new segment's index.
std::uint32_t CBatchMesh::addSegment(std::uint16_t a, std::uint32_t b, std::int16_t c) {
    const std::int32_t batchIndex = static_cast<std::int32_t>(batches.size()) - 1;
    SBatch& batch = batches[static_cast<std::size_t>(batchIndex)];
    const std::uint32_t inBatch = static_cast<std::uint16_t>(batch.endSegmentInfo - batch.firstSegmentInfo);
    std::uint32_t indexStart = 0;
    std::uint16_t vertexStart = 0;
    if (inBatch != 0) {
        const SSegmentInfo& lastInfo = segmentInfos[static_cast<std::size_t>(batch.endSegmentInfo) - 1];
        const SSegment& last = *segmentAt(static_cast<std::size_t>(batches[static_cast<std::size_t>(lastInfo.batch)].firstSegmentInfo) +
                                          static_cast<std::size_t>(lastInfo.index));
        indexStart = last.indexEnd;
        vertexStart = last.vertexEnd;
    }
    batch.endSegmentInfo = static_cast<std::uint16_t>(batch.endSegmentInfo + 1);
    const std::uint32_t newIndex = static_cast<std::uint32_t>(segmentCount());

    SSegmentInfo info;
    info.batch = batchIndex;
    info.index = static_cast<std::int32_t>(inBatch);
    segmentInfos.push_back(info);

    SSegment record;
    record.infos = &segmentInfos;
    record.infoIndex = newIndex;
    record.sourceBuffer = nullptr;
    record.box = nullptr;
    record.indexBegin = indexStart;
    record.indexEnd = indexStart + b;
    record.indexEndCopy = indexStart + b;
    record.lastVisibleTick = 0;
    record.visible = 1;
    record.ownsBox = 0;
    record.priority = c;
    record.vertexBegin = vertexStart;
    record.vertexEnd = static_cast<std::uint16_t>(vertexStart + a);
    record.vertexEndCopy = static_cast<std::uint16_t>(vertexStart + a);

    const std::size_t offset = segmentData.size();
    segmentData.resize(offset + recordSize(), 0);
    std::memcpy(segmentData.data() + offset, &record, sizeof(SSegment));
    return newIndex;
}

// 0x57b900 _ZN6glitch5scene10CBatchMesh8addBatchEv
// Appends a batch whose range words start at the current segment-info count and returns the index of the new batch.
std::int32_t CBatchMesh::addBatch() {
    const std::int32_t index = static_cast<std::int32_t>(batches.size());
    batches.push_back(SBatch(static_cast<std::uint16_t>(segmentInfos.size())));
    return index;
}

// 0x57bd44 _ZN6glitch5scene10CBatchMesh5clearEv
// For every segment of every batch that has a source buffer, the buffer's driver binding forgets this mesh (its words +0x18 and
// +0x1c are zeroed). Then the batch vector is erased and the segment byte vector and the segment-info vector are emptied.
void CBatchMesh::clear() {
    for (const SBatch& batch : batches) {
        const std::uint32_t count = static_cast<std::uint16_t>(batch.endSegmentInfo - batch.firstSegmentInfo);
        for (std::uint32_t k = 0; k < count; ++k) {
            const SSegment& segment = *segmentAt(static_cast<std::size_t>(batch.firstSegmentInfo) + k);
            if (segment.sourceBuffer != nullptr && segment.sourceBuffer->owner != nullptr) {
                segment.sourceBuffer->owner->unk_1c = 0;
                segment.sourceBuffer->owner->unk_18 = nullptr;
            }
        }
    }
    batches.clear();
    segmentData.clear();
    segmentInfos.clear();
}

// 0x57be34 _ZN6glitch5scene10CBatchMesh9setBufferEjRKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS3_INS_5video9CMaterialEEE
// The batch takes the buffer; its material becomes a clone of `material` named by 14 random characters of [0-9A-Za-z] (the original
// draws them with lrand48 % 62 inline); its vertex-attribute map is allocated for the material's renderer over the buffer's vertex
// streams. The index is not checked.
void CBatchMesh::setBuffer(std::uint32_t index, const boost::intrusive_ptr<CMeshBuffer>& buffer,
                           const boost::intrusive_ptr<video::CMaterial>& material) {
    SBatch& batch = batches[index];
    batch.meshBuffer = buffer;
    const std::string name = core::randomString(14);
    batch.material = material->clone(name.c_str());
    batch.vertexAttributeMap = video::CMaterialVertexAttributeMap::allocate(
        material->m_renderer, boost::intrusive_ptr<const video::CVertexStreams>(buffer->vertexStreams.get(), true));
}

// 0x57bc78 _ZN6glitch5scene10CBatchMesh11sortBatchesEPKNS_5video12IVideoDriverEPj
// `order` receives the identity permutation; then every batch whose material is transparent (state word 1 bit 16 of the first pass of
// its technique) is swapped with the last batch not yet moved, in both the batch vector and `order`, so the transparent batches end up
// at the tail. Returns the number of leading (solid) batches.
std::uint32_t CBatchMesh::sortBatches(const video::IVideoDriver* /*driver*/, std::uint32_t* order) {
    std::uint32_t count = static_cast<std::uint32_t>(batches.size());
    if (count == 0) {
        return count;
    }
    for (std::uint32_t i = 0; i != count; ++i) {
        order[i] = i;
    }
    for (std::uint32_t j = 0; j < count; ++j) {
        while (isTransparentMaterial(batches[j].material)) {
            --count;
            std::swap(batches[count], batches[j]);
            std::swap(order[count], order[j]);
            if (count <= j) {
                return count;
            }
        }
    }
    return count;
}

// 0x57b96c _ZN6glitch5scene10CBatchMesh18quantizeComponentsEbbPNS_5video12IVideoDriverE
// Every batch whose field10 equals its segment count (all of its segments are baked) has its mesh buffer replaced by
// core::createQuantizedBuffer(buffer, flagA, flagB, driver).
void CBatchMesh::quantizeComponents(bool flagA, bool flagB, video::IVideoDriver* driver) {
    for (SBatch& batch : batches) {
        if (batch.field10 != static_cast<std::uint16_t>(batch.endSegmentInfo - batch.firstSegmentInfo)) {
            continue;
        }
        const boost::intrusive_ptr<const CMeshBuffer> source(batch.meshBuffer.get(), true);
        batch.meshBuffer = core::createQuantizedBuffer(source, flagA, flagB, driver);
    }
}

// 0x57aae4 _ZN6glitch5scene10CBatchMesh20updateSegmentContentEPvPKNS0_11CMeshBufferEjbRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS7_INS8_19CVertexAttributeMapEEEPKNS8_12IVideoDriverE
// `segment` is a segment-info index. With a non-zero `index` (a4) the buffer's content is baked into the segment's batch: the
// batching shader's baker (the shader of the first pass of `material`'s technique) is asked to bake the buffer (its streams,
// primitive stream, material, technique and `attributeMap`'s map bytes) into the batch's mesh buffer, material and the slot of the
// batch's vertex-attribute map that the batch material's technique selects (pass pointer minus the renderer's pass base, in passes),
// with the buffer's vertex range, its primitive count, the segment's vertex start, the segment's index start / 3 and `index`.
// Afterwards the segment's vertex end is vertexBegin + (buffer vertexEnd - buffer vertexStart) and its index end is indexBegin + 3 * the
// buffer's primitive count. In every case the observer at +0x78, when set, is told (virtual +0x08) with the mesh, the info index,
// `index != 0` and `flag`.
// Deviation: a null baker (IShader::getBatchBaker is partial in glitch-video) skips the bake call.
void CBatchMesh::updateSegmentContent(void* segmentIndex, const CMeshBuffer* buffer, std::uint32_t index, bool flag,
                                      const boost::intrusive_ptr<video::CMaterial>& material,
                                      const boost::intrusive_ptr<video::CVertexAttributeMap>& attributeMap,
                                      const video::IVideoDriver* driver) {
    const SSegmentInfo& info = segmentInfos[reinterpret_cast<std::uintptr_t>(segmentIndex)];
    SSegment& record = *segmentAt(static_cast<std::size_t>(batches[static_cast<std::size_t>(info.batch)].firstSegmentInfo) +
                                  static_cast<std::size_t>(info.index));
    SBatch& batch = batches[static_cast<std::size_t>((*record.infos)[record.infoIndex].batch)];
    CMeshBuffer* batchBuffer = batch.meshBuffer.get();
    if (index != 0) {
        const std::uint16_t bufferVertexStart = static_cast<std::uint16_t>(buffer->primitiveStream.m_vertexStart);
        const std::uint16_t bufferVertexEnd = static_cast<std::uint16_t>(buffer->primitiveStream.m_vertexEnd);
        const int technique = material->getTechnique();
        const video::SRenderPass& pass = material->m_renderer->m_techniques[technique].passes[0];
        const video::IShader* shader = static_cast<const video::IShader*>(pass.shader);
        boost::intrusive_ptr<video::IBatchBaker> baker = shader->getBatchBaker();
        if (baker) {
            const video::CMaterialRenderer& batchRenderer = *batch.vertexAttributeMap->m_renderer;
            const int batchTechnique = batch.material->getTechnique();
            const std::ptrdiff_t slot = batchRenderer.m_techniques[batchTechnique].passes - batchRenderer.m_passBase;
            const boost::intrusive_ptr<video::CVertexAttributeMap>& outMap =
                batch.vertexAttributeMap->m_maps[static_cast<std::size_t>(slot)];
            const boost::intrusive_ptr<const video::CVertexStreams> streams(buffer->vertexStreams.get(), true);
            baker->bake(streams, buffer->primitiveStream, material.get(), static_cast<std::uint8_t>(technique), attributeMap->m_map,
                        batchBuffer->vertexStreams, batchBuffer->primitiveStream, batch.material.get(), outMap->m_map, driver,
                        bufferVertexStart, bufferVertexEnd, 0u, buffer->primitiveStream.getPrimitiveCount(), record.vertexBegin,
                        record.indexBegin / 3u, index);
        }
        record.vertexEnd = static_cast<std::uint16_t>(record.vertexBegin + bufferVertexEnd - bufferVertexStart);
        record.indexEnd = 3u * buffer->primitiveStream.getPrimitiveCount() + record.indexBegin;
    }
    if (contentObserver != nullptr) {
        contentObserver->segmentContentUpdated(this, segmentIndex, index != 0, flag);
    }
}


// 0x57c19c _ZN6glitch5scene10CBatchMesh4sortEPKNS_5video12IVideoDriverE
// Sets the dirty byte, clears the source count (+0x68) and puts the solid batches first (sortBatches; the permutation it fills is
// scratch). Then, per batch, with n = its segment count:
//  - field10 := the number of segments WITHOUT a source buffer ("baked"); the sum goes into the total (it sizes block2c at the end).
//  - n == 0, or every segment has a source buffer: the batch is counted into +0x68 and its mesh buffer flagged (+0x34).
//  - every segment baked: nothing is repacked and nothing is counted.
//  - a mix: the segments that have a source buffer are rotated behind the baked ones (the record's first 0x2a bytes only; an owned
//    box of a rotated record is given back), the baked ones keep their order; then, through the batch buffers' maps, the vertex data
//    and the 16-bit indices of the rotated segments are copied out (indices rebased to the vertex run that follows the baked
//    vertices), the baked segments' data is compacted to the front (vertex and index ranges rewritten, indices rebased by the vertex
//    shift) and the copied-out data is appended behind it. The batch is then counted and flagged.
//  - for all but an empty batch the info entry of the segment in position i becomes {batch, i}, and a segment with a source buffer
//    tells its buffer's driver binding where it lives (words +0x18 = this mesh, +0x1c = info index).
// Finally block2c is resized to the total baked count (unit boxes) and each baked segment's box points at its own entry.
// Returns sortBatches' solid batch count.
// Deviations: the temporary process buffers (allocProcessBuffer / releaseProcessBuffer) are std::vector storage; the binding word +0x18
// is a host pointer; the segment pointer list `p` of the original is taken before the rotation and stays valid because the record vector
// is not resized.
std::uint32_t CBatchMesh::sort(const video::IVideoDriver* driver) {
    boundingBoxDirty = true;
    boundingBoxSource = 0;
    const std::uint32_t batchCount = static_cast<std::uint32_t>(batches.size());
    std::vector<std::uint32_t> order(batchCount, 0u);
    const std::uint32_t solidCount = sortBatches(driver, order.data());
    std::uint32_t totalBaked = 0;

    for (std::uint32_t b = 0; b < batchCount; ++b) {
        const std::uint32_t first = batches[b].firstSegmentInfo;
        const std::uint32_t n = static_cast<std::uint16_t>(batches[b].endSegmentInfo - first);
        batches[b].field10 = 0;
        std::vector<SSegment*> slots;
        std::vector<std::uint32_t> remap;
        slots.reserve(n);
        remap.reserve(n);

        bool repack = false;
        bool rewriteInfos = true;
        if (n == 0) {
            batches[b].field10 = 0;
            ++boundingBoxSource;
            batches[b].meshBuffer->flag_34 = 1;
            rewriteInfos = false;
        } else {
            for (std::uint32_t i = 0; i < n; ++i) {
                slots.push_back(segmentAt(first + i));
                remap.push_back(i);
            }
            std::uint32_t baked = n;
            for (std::uint32_t i = 0; i < n; ++i) {
                if (segmentAt(first + i)->sourceBuffer != nullptr) {
                    --baked;
                }
            }
            batches[b].field10 = static_cast<std::uint16_t>(baked);
            totalBaked += baked;
            if (baked == 0) {
                ++boundingBoxSource;
                batches[b].meshBuffer->flag_34 = 1;
            } else if (baked < n) {
                repack = true;
            }
        }

        if (repack) {
            std::uint32_t front = n;           // segments not (yet) rotated to the back
            std::uint32_t movedVertices = 0;   // vertices of the rotated segments
            std::uint32_t movedIndices = 0;    // indices of the rotated segments
            std::uint32_t keptIndices = 0;     // indices of the baked segments
            std::uint16_t keptVertices = 0;    // vertices of the baked segments
            const std::uint32_t last = n - 1;
            std::uint32_t position = 0;
            while (front > position) {
                SSegment* current = segmentAt(first + position);
                if (current->sourceBuffer != nullptr) {
                    SSegment moved = *current;
                    movedVertices += static_cast<std::uint32_t>(moved.vertexEnd) - moved.vertexBegin;
                    movedIndices += moved.indexEnd - moved.indexBegin;
                    --front;
                    const std::uint32_t movedRemap = remap[position];
                    if (last > position) {
                        for (std::uint32_t k = position; k < last; ++k) {
                            std::memcpy(static_cast<void*>(segmentAt(first + k)), segmentAt(first + k + 1), sizeof(SSegment));
                            remap[k] = remap[k + 1];
                        }
                    }
                    std::memcpy(static_cast<void*>(segmentAt(first + last)), &moved, sizeof(SSegment));
                    remap[last] = movedRemap;
                    if (moved.ownsBox) {
                        freeBox(moved.box);
                    }
                    continue;
                }
                keptIndices += current->indexEnd - current->indexBegin;
                keptVertices = static_cast<std::uint16_t>(keptVertices + current->vertexEnd - current->vertexBegin);
                ++position;
            }
            ++boundingBoxSource;
            batches[b].meshBuffer->flag_34 = 1;

            CMeshBuffer* meshBuffer = batches[b].meshBuffer.get();
            const std::uint32_t stride = meshBuffer->vertexStreams->getVertexStride();
            std::vector<std::uint8_t> movedVertexData(static_cast<std::size_t>(stride) * movedVertices);
            std::vector<std::uint16_t> movedIndexData(movedIndices);
            boost::intrusive_ptr<video::IBuffer> vertexBuffer = meshBuffer->vertexStreams->m_streams[0].buffer;
            video::IBuffer* indexBuffer = meshBuffer->primitiveStream.m_indexBuffer.get();
            std::uint8_t* vertexBase = vertexBuffer->map(5);
            std::uint8_t* indexMap = indexBuffer->map(5);
            std::uint8_t* indexBase = indexMap + meshBuffer->primitiveStream.m_offset;
            auto* indices = reinterpret_cast<std::uint16_t*>(indexBase);

            // The rotated segments: their vertices and rebased indices go to the temporary blocks.
            if (n > front) {
                std::uint16_t vertexStart = keptVertices;
                std::uint32_t indexStart = keptIndices;
                std::uint32_t vertexBytes = 0;
                std::uint32_t indexUsed = 0;
                for (std::uint32_t k = front; k < n; ++k) {
                    SSegment* seg = segmentAt(first + k);
                    const std::uint32_t vertexCount = static_cast<std::uint16_t>(seg->vertexEnd - seg->vertexBegin);
                    std::memcpy(movedVertexData.data() + vertexBytes, vertexBase + static_cast<std::size_t>(stride) * seg->vertexBegin,
                                static_cast<std::size_t>(stride) * vertexCount);
                    vertexBytes += stride * vertexCount;
                    const std::uint32_t oldIndexBegin = seg->indexBegin;
                    const std::uint32_t indexCount = seg->indexEnd - oldIndexBegin;
                    const std::uint16_t oldVertexBegin = seg->vertexBegin;
                    const std::uint16_t delta = static_cast<std::uint16_t>(vertexStart - oldVertexBegin);
                    const std::uint16_t newVertexEnd = static_cast<std::uint16_t>(vertexStart + seg->vertexEnd - oldVertexBegin);
                    const std::uint16_t newVertexEndCopy = static_cast<std::uint16_t>(vertexStart + seg->vertexEndCopy - oldVertexBegin);
                    seg->vertexEnd = newVertexEnd;
                    seg->vertexBegin = vertexStart;
                    seg->vertexEndCopy = newVertexEndCopy;
                    for (std::uint32_t j = 0; j < indexCount; ++j) {
                        movedIndexData[indexUsed + j] = static_cast<std::uint16_t>(delta + indices[oldIndexBegin + j]);
                    }
                    const std::uint32_t newIndexEndCopy = seg->indexEndCopy - oldIndexBegin + indexStart;
                    seg->indexEnd = indexCount + indexStart;
                    seg->indexEndCopy = newIndexEndCopy;
                    seg->indexBegin = indexStart;
                    indexStart += indexCount;
                    indexUsed += indexCount;
                    vertexStart = static_cast<std::uint16_t>(vertexStart + vertexCount);
                }
            }

            // The baked segments move to the front of the batch's buffers.
            std::uint32_t indexRun = 0;
            std::uint16_t vertexRun = 0;
            for (std::uint32_t k = 0; k < front; ++k) {
                SSegment* seg = segmentAt(first + k);
                const std::uint16_t oldVertexBegin = seg->vertexBegin;
                const std::uint32_t vertexCount = static_cast<std::uint16_t>(seg->vertexEnd - oldVertexBegin);
                std::memmove(vertexBase + static_cast<std::size_t>(stride) * vertexRun,
                             vertexBase + static_cast<std::size_t>(stride) * oldVertexBegin, static_cast<std::size_t>(stride) * vertexCount);
                const std::uint32_t oldIndexBegin = seg->indexBegin;
                const std::uint32_t indexCount = seg->indexEnd - oldIndexBegin;
                const std::uint16_t delta = static_cast<std::uint16_t>(vertexRun - oldVertexBegin);
                seg->vertexEndCopy = static_cast<std::uint16_t>(vertexRun + seg->vertexEndCopy - oldVertexBegin);
                seg->vertexEnd = static_cast<std::uint16_t>(vertexRun + seg->vertexEnd - oldVertexBegin);
                seg->vertexBegin = vertexRun;
                for (std::uint32_t j = 0; j < indexCount; ++j) {
                    indices[indexRun + j] = static_cast<std::uint16_t>(delta + indices[oldIndexBegin + j]);
                }
                const std::uint32_t newIndexEndCopy = seg->indexEndCopy - oldIndexBegin + indexRun;
                seg->indexBegin = indexRun;
                seg->indexEnd = indexCount + indexRun;
                seg->indexEndCopy = newIndexEndCopy;
                indexRun += indexCount;
                vertexRun = static_cast<std::uint16_t>(vertexRun + vertexCount);
            }
            // The rotated segments' data goes behind the baked data.
            std::memcpy(vertexBase + static_cast<std::size_t>(stride) * vertexRun, movedVertexData.data(), movedVertexData.size());
            std::memcpy(indices + indexRun, movedIndexData.data(), 2u * movedIndices);

            indexBuffer->unmap();
            vertexBuffer->unmap();
        }

        if (rewriteInfos) {
            for (std::uint32_t i = 0; i < n; ++i) {
                SSegment* seg = slots[i];
                SSegmentInfo& info = (*seg->infos)[seg->infoIndex];
                info.batch = static_cast<std::int32_t>(b);
                info.index = static_cast<std::int32_t>(i);
                if (seg->sourceBuffer != nullptr && seg->sourceBuffer->owner != nullptr) {
                    seg->sourceBuffer->owner->unk_18 = this;
                    seg->sourceBuffer->owner->unk_1c = seg->infoIndex;
                }
            }
        }
    }

    // The boxes of the baked segments live in block2c, one entry each, in segment order.
    block2c.resize(totalBaked, kUnitBox);
    const std::size_t records = segmentCount();
    std::size_t cursor = 0;
    for (std::size_t r = 0; r < records; ++r) {
        SSegment* seg = segmentAt(r);
        if (seg->sourceBuffer != nullptr) {
            continue;
        }
        const core::aabbox3d<float>* slot = &block2c[cursor];
        if (seg->box != slot) {
            if (seg->ownsBox) {
                freeBox(seg->box);
                seg->ownsBox = 0;
            }
            seg->box = slot;
        }
        ++cursor;
    }
    return solidCount;
}

}  // namespace glitch::scene
