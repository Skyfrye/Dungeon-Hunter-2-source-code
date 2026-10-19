// Bodies of glitch::scene::CMeshBuffer (canonical class: scene/CMeshBuffer.hpp). This file replaces
// src/tb_scene-collada-gui-glitch_scene_CMeshBuffer-0.cpp, which wrote against the 32-bit layout struct of layouts/scene.hpp.
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"

#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/collada/SMesh.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

// glitch::scene::(anonymous namespace)::ColladaPrimitiveMap (ELF 0x8eb338): the primitive type of a mesh buffer record -> E_PRIMITIVE_TYPE.
constexpr std::uint16_t kColladaPrimitiveMap[6] = {6, 4, 3, 1, 2, 0};

// An IBuffer takes the usage of a configuration: a driver-mapped buffer is unbound first, and a buffer that has data and is not static is
// marked for upload.
void applyUsage(video::IBuffer& buffer, std::uint32_t usage) {
    if (usage != buffer.m_usage) {
        if ((buffer.m_flags12 & video::IBuffer::kFlagDriverMapped) != 0) {
            buffer.unbindImpl();  // vtable +0x10
        }
        buffer.m_usage = static_cast<std::uint8_t>(usage);
        if (static_cast<std::uint8_t>(usage) != 4 && buffer.m_data != nullptr) {
            buffer.m_flags12 = static_cast<std::uint8_t>(buffer.m_flags12 | video::IBuffer::kFlagHasData);
        }
    }
}

// The commit of a buffer the configuration asks to keep bound: a buffer that is not driver-mapped (or is mapped and marked) and is not
// static is bound with the configuration's second flag (vtable +0x0c).
void commitBuffer(video::IBuffer& buffer, const collada::SBufferConfig& config) {
    if ((((buffer.m_flags12 & video::IBuffer::kFlagDriverMapped) == 0) || (buffer.m_flags12 & video::IBuffer::kFlagHasData) != 0) &&
        buffer.m_usage != 4) {
        buffer.bindImpl(config.flagB != 0);
    }
}

// 0x6bccf0 glitch::scene::(anonymous namespace)::addStream(IVideoDriver*, collada::SMesh&, collada::SMeshBuffer&, char, SVertexStreamData*, unsigned char,
// collada::SBufferConfig const&)
// Entry `count` of `out` describes stream `stream` of the mesh. An interleaved mesh points every stream at the one vertex buffer, with the
// stream's offset, value type and component count from the vertex data and the common stride. Otherwise the stream's own buffer is made from the
// stream descriptor when it has none (value size * components * vertex count bytes, the vertex count being the position stream's value count / 3),
// brought to the configuration's usage and committed when asked, and the entry has offset 0 and the stride components * value size.
// Answers count + 1.
std::uint8_t addStream(video::IVideoDriver* driver, collada::SMesh& mesh, collada::SMeshBuffer& record, std::int8_t stream,
                       video::SVertexStreamData* out, std::uint8_t count, const collada::SBufferConfig& config) {
    video::SVertexStreamData& entry = out[count];
    if (mesh.interleaved != 0) {
        const collada::SInterleavedVertexData& data = *mesh.interleavedData;
        entry.buffer = data.buffer;
        entry.offset = data.offsets[stream];
        entry.field08 = static_cast<std::uint16_t>(data.valueTypes[stream]);
        entry.field0a = 0;
        entry.field0c = static_cast<std::uint16_t>(data.componentCounts[stream]);
        entry.field0e = static_cast<std::uint16_t>(data.stride);
        return static_cast<std::uint8_t>(count + 1);
    }
    collada::SVertexStreamDesc& desc = mesh.streams[stream];
    if (desc.buffer) {
        applyUsage(*desc.buffer, config.usage);
    } else {
        const std::uint32_t valueSize = video::detail::SVertexAttributeTypeInspection::ValueTypeSize[desc.valueType];
        const std::uint32_t vertexCount = static_cast<std::uint32_t>(mesh.streams[record.positionStream].valueCount) / 3u;
        desc.buffer = driver->createBuffer(0, static_cast<std::int32_t>(config.usage),
                                           valueSize * static_cast<std::uint32_t>(desc.componentCount) * vertexCount,
                                           const_cast<void*>(desc.data), false);
    }
    if (config.flagA != 0) {
        commitBuffer(*desc.buffer, config);
    }
    entry.buffer = desc.buffer;
    entry.offset = 0;
    entry.field08 = static_cast<std::uint16_t>(desc.valueType);
    entry.field0a = 0;
    entry.field0c = static_cast<std::uint16_t>(desc.componentCount);
    entry.field0e = static_cast<std::uint16_t>(static_cast<std::uint32_t>(desc.componentCount) *
                                               video::detail::SVertexAttributeTypeInspection::ValueTypeSize[desc.valueType]);
    return static_cast<std::uint8_t>(count + 1);
}

}  // namespace

// 0x6bcf80 _ZN6glitch5scene11CMeshBufferC2EPNS_5video12IVideoDriverERNS_7collada5SMeshEjRKNS5_13SBufferConfigES9_b (base object)
// 0x6bd9f8 (C1: the same body)
// The primitive stream is built from the record (index buffer, index count, first and last vertex, 16-bit indices when the last vertex index is
// below 0x10000, the primitive type through ColladaPrimitiveMap). The record's index buffer is brought to the index configuration's usage; when the
// record has none it is created from the record's index data (the on-demand block, kept by this buffer in the 16-bit or the 32-bit holder by the
// byte size, or the loaded array) and stored in the record. An interleaved mesh does the same for its vertex buffer (the vertex bytes from the
// on-demand block, which this buffer keeps, or the loaded array). Then one stream entry per stream the record names is described by addStream, the
// stream table is made for the attribute mask they spell (position, the four texture coordinate sets, normal, two colours, the 0x100000 group,
// the 0x1000000 group, two more) and set up from the entries, and an interleaved mesh's quantisation ranges are copied into the table.
CMeshBuffer::CMeshBuffer(video::IVideoDriver* driver, collada::SMesh& mesh, std::uint32_t primitiveIndex,
                         const collada::SBufferConfig& vertexConfig, const collada::SBufferConfig& indexConfig, bool onDemand) {
    referenceCounter = 0;
    collada::SMeshBuffer& record = mesh.buffers[primitiveIndex];
    const std::uint32_t lastVertex = static_cast<std::uint32_t>(record.lastVertex);
    primitiveStream.m_indexBuffer = record.indexBuffer;
    primitiveStream.m_count = static_cast<std::uint32_t>(record.indexCount);
    primitiveStream.m_vertexStart = static_cast<std::uint32_t>(record.firstVertex);
    primitiveStream.m_vertexEnd = lastVertex + 1;
    primitiveStream.m_indexType = lastVertex < 0x10000u ? 1 : 2;
    primitiveStream.m_primitiveType = kColladaPrimitiveMap[record.primitiveType];
    flag_34 = 0;
    primitiveStream.m_offset = 0;
    owner = nullptr;

    if (record.indexBuffer) {
        applyUsage(*record.indexBuffer, indexConfig.usage);
    } else {
        const std::uint32_t bytes = static_cast<std::uint32_t>(record.indexCount) * (record.lastVertex < 0x10000 ? 2u : 4u);
        if (onDemand) {
            if (bytes < 0x10000u) {
                indexData16 = res::onDemandPointer<std::uint16_t>(record.indexBlock);
                record.indexBuffer = driver->createBuffer(1, static_cast<std::int32_t>(indexConfig.usage), bytes, indexData16.data(), false);
                indexData32 = res::onDemandPointer<std::uint32_t>();
            } else {
                indexData32 = res::onDemandPointer<std::uint32_t>(record.indexBlock);
                record.indexBuffer = driver->createBuffer(1, static_cast<std::int32_t>(indexConfig.usage), bytes, indexData32.data(), false);
                indexData16 = res::onDemandPointer<std::uint16_t>();
            }
        } else {
            record.indexBuffer = driver->createBuffer(1, static_cast<std::int32_t>(indexConfig.usage), bytes, const_cast<void*>(record.indexData), false);
        }
        primitiveStream.m_indexBuffer = record.indexBuffer;
    }
    if (indexConfig.flagA != 0) {
        commitBuffer(*record.indexBuffer, indexConfig);
    }

    if (mesh.interleaved != 0) {
        collada::SInterleavedVertexData& data = *mesh.interleavedData;
        if (data.buffer) {
            applyUsage(*data.buffer, vertexConfig.usage);
        } else if (onDemand) {
            vertexData = res::onDemandPointer<char>(data.dataBlock);
            data.buffer = driver->createBuffer(0, static_cast<std::int32_t>(vertexConfig.usage), static_cast<std::uint32_t>(mesh.count) * data.stride,
                                               vertexData.data(), false);
        } else {
            data.buffer = driver->createBuffer(0, static_cast<std::int32_t>(vertexConfig.usage), data.stride * static_cast<std::uint32_t>(mesh.count),
                                               const_cast<void*>(data.data), false);
        }
        if (vertexConfig.flagA != 0) {
            commitBuffer(*data.buffer, vertexConfig);
        }
    }

    video::SVertexStreamData entries[16];
    std::uint8_t count = addStream(driver, mesh, record, record.positionStream, entries, 0, vertexConfig);
    std::uint32_t mask = 1;
    for (int k = 0; k < 4 && record.texCoordStreams[k] >= 0; ++k) {
        mask |= 2u << k;
        count = addStream(driver, mesh, record, record.texCoordStreams[k], entries, count, vertexConfig);
    }
    if (record.normalStream >= 0) {
        mask |= 0x20000u;
        count = addStream(driver, mesh, record, record.normalStream, entries, count, vertexConfig);
    }
    if (record.colorStream[0] >= 0) {
        mask |= 0x40000u;
        count = addStream(driver, mesh, record, record.colorStream[0], entries, count, vertexConfig);
    }
    if (record.colorStream[1] >= 0) {
        mask |= 0x80000u;
        count = addStream(driver, mesh, record, record.colorStream[1], entries, count, vertexConfig);
    }
    for (int k = 0; k < 4 && record.tangentStreams[k] >= 0; ++k) {
        mask |= 0x100000u << k;
        count = addStream(driver, mesh, record, record.tangentStreams[k], entries, count, vertexConfig);
    }
    for (int k = 0; k < 4 && record.binormalStreams[k] >= 0; ++k) {
        mask |= 0x1000000u << k;
        count = addStream(driver, mesh, record, record.binormalStreams[k], entries, count, vertexConfig);
    }
    if (record.extraStreams[0] >= 0) {
        mask |= 0x10000000u;
        count = addStream(driver, mesh, record, record.extraStreams[0], entries, count, vertexConfig);
    }
    if (record.extraStreams[1] >= 0) {
        mask |= 0x20000000u;
        count = addStream(driver, mesh, record, record.extraStreams[1], entries, count, vertexConfig);
    }
    vertexStreams = video::CVertexStreams::allocate(mask);
    vertexStreams->setupStreams(entries, 0xFFFFFFFFu, false);
    vertexStreams->m_field08 = mesh.interleaved != 0 ? static_cast<std::uint32_t>(mesh.count) : 0u;

    if (mesh.interleaved != 0) {
        const collada::SInterleavedVertexData& data = *mesh.interleavedData;
        if (const collada::SStreamRange* range = data.ranges != nullptr ? data.ranges[record.positionStream] : nullptr) {
            vertexStreams->m_quantization[0] = core::vector3d<float>{range->minimum[0], range->minimum[1], range->minimum[2]};
            vertexStreams->m_quantization[1] = core::vector3d<float>{range->maximum[0], range->maximum[1], range->maximum[2]};
            vertexStreams->m_flags = static_cast<std::uint16_t>(vertexStreams->m_flags | 4u);
        }
        for (int k = 0; k < 4 && record.texCoordStreams[k] >= 0; ++k) {
            const collada::SStreamRange* range = data.ranges != nullptr ? data.ranges[record.texCoordStreams[k]] : nullptr;
            if (range != nullptr) {
                vertexStreams->m_quantization[2 + 2 * k] = core::vector3d<float>{range->minimum[0], range->minimum[1], range->minimum[2]};
                vertexStreams->m_quantization[3 + 2 * k] = core::vector3d<float>{range->maximum[0], range->maximum[1], range->maximum[2]};
                vertexStreams->m_flags = static_cast<std::uint16_t>(vertexStreams->m_flags | (8u << k));
            }
        }
    }
}

// Not part of the original (see the header): the empty buffer.
CMeshBuffer::CMeshBuffer() {
    referenceCounter = 0;
}

// 0x6b88a8, 0x6d11d4 and 0x6d5ed4 _ZN6glitch5scene11CMeshBufferC1EjRKNS_5video16CPrimitiveStreamEb (three listings)
// Reconstructed: clears the count and the three blocks, allocates the vertex stream table for the mask, copies the primitive
// stream (taking a use of its index buffer), clears the owner and stores the bool argument in the flag byte at +0x34 (the
// listings at 0x6b88a8 and 0x6d11d4 are clones of it with the argument folded to 1 and to 0).
CMeshBuffer::CMeshBuffer(std::uint32_t attributeMask, const video::CPrimitiveStream& stream, bool flag)
    : vertexStreams(video::CVertexStreams::allocate(attributeMask)), primitiveStream(stream) {
    referenceCounter = 0;
    flag_34 = flag ? 1 : 0;
}

// 0x6bc8c4 _ZN6glitch5scene11CMeshBufferD1Ev
// 0x6bca38 _ZN6glitch5scene11CMeshBufferD2Ev
// 0x6bca1c _ZN6glitch5scene11CMeshBufferD0Ev (skipped)
// Verified against Hex-Rays 0x6bc8c4: the owner at +0x30 is called through its vtable +0x04 (the deleting destructor) and the
// word is cleared; the primitive stream's index buffer (+0x24) is dropped; the vertex stream table at +0x14 loses a use and is
// freed with its CVertexStreams destructor at zero; and each of the three blocks (+0x08, +0x0c, +0x10) loses a use and, at
// zero, operator delete[]s its element storage at +0x0c of the block. In the port the primitive stream, the vertex streams and the three
// on-demand pointers are members that release themselves in the original's order (the owner is a raw pointer deleted here).
CMeshBuffer::~CMeshBuffer() {
    if (owner != nullptr) {
        delete owner;  // vtable +0x04, the original's call through the owner's first slot
        owner = nullptr;
    }
}

// 0x6bc6d8 _ZN6glitch5scene11CMeshBuffer8onDeleteEv
// Verified against Hex-Rays 0x6bc6d8: forwards to the owner's vtable +0x08 slot, nothing when +0x30 is null.
void CMeshBuffer::onDelete() {
    if (owner != nullptr) {
        owner->onDelete();
    }
}

// 0x6bcb90 _ZNK6glitch5scene11CMeshBuffer5cloneEv
// Verified against Hex-Rays 0x6bcb90: operator new(0x38); +0x04 count 0, +0x08/+0x0c/+0x10 blocks and +0x30 owner null, +0x14
// the CVertexStreams::clone (0x5a1310) of the source table (a use is taken as well, matching the original's temporary
// reference), the primitive stream copied from +0x18..+0x2f with a use of the index buffer at +0x24, and the flag byte at
// +0x34 copied. The returned handle holds the first use.
boost::intrusive_ptr<CMeshBuffer> CMeshBuffer::clone() const {
    auto* copy = new CMeshBuffer();
    if (vertexStreams) {
        copy->vertexStreams = vertexStreams->clone();
    }
    copy->primitiveStream = primitiveStream;
    copy->flag_34 = flag_34;
    return boost::intrusive_ptr<CMeshBuffer>(copy, true);
}

}  // namespace glitch::scene
