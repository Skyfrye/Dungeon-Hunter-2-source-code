// glitch::scene::CAppendMeshBuffer, SBatchConfig, IEndOfBatchCallback and SDefaultEndOfBatchCallback: the growable mesh buffer
// that the batch compiler (CSceneManager::compile) appends static geometry to, and the callback that turns a full buffer into
// one batch of a CBatchMesh. Canonical header of the engine unification wave (u1-scene). It replaces the CAppendMeshBuffer of
// scene_simple_accessors.hpp (two counters), of layouts/scene_members.hpp (a layout struct), of recon/slice_07.hpp (a layout
// struct) and the void* functions of recon/slice_25, and the SBatchConfig / SDefaultEndOfBatchCallback / AppendMeshBuffer
// stand-ins of recon/slice_06.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout):
//   CAppendMeshBuffer derives from CMeshBuffer (vtable 0x987880: D1 0x6b8c2c, D0 0x6b8c98, then CMeshBuffer::onDelete) and
//   is 0x70 bytes. Its constructor 0x6b8cb4 (C1) / 0x6b8fe0 (C2) runs CMeshBuffer(stride, stream, true) with a stream of
//   index type 0xff and primitive type 6 (triangles), then sets:
//     +0x38 vertexCapacityBytes (argument a2)   +0x3c vertexUsedBytes (0)   +0x40 indexCapacityBytes (argument a3)
//     +0x44 indexUsedBytes (0)   +0x48 vertexStride (1)   +0x4c indexStride (2)
//     +0x50 mapped vertex data (0)   +0x54 mapped index data (0)
//     +0x58 vertex IBuffer   +0x5c index IBuffer (both IVideoDriver::createBuffer, vtable +0x78: type 0 / 1, the usage argument,
//           the capacity, no data, flag true)   +0x60 byte: 1 once a buffer got a CPU copy
//     +0x64 .. +0x6c std::vector<uint8_t> of the stream indices configureStream configured (begin, end, capacity)
//   and the inherited primitive stream (+0x18 index buffer = the index IBuffer, +0x20 element count, +0x24 first vertex, +0x28
//   last vertex, +0x2c index type = 1 (16-bit), +0x2e primitive type 6).
//   SBatchConfig is 0x2c bytes (operator= 0x58f2a8); SDefaultEndOfBatchCallback derives from IEndOfBatchCallback (vtable
//   0x9762b8: D1 0x58fa04, D0 0x58fa64, operator() 0x59013c) and keeps a std::map<uint, SBatchConfig> at +0x14.
#pragma once

#include <cstdint>
#include <map>
#include <vector>

#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material.hpp"

namespace glitch::video {
class IVideoDriver;
}

namespace glitch::scene {

class CBatchSceneNode;
class SDefaultSegmentCompileCallback;

class CAppendMeshBuffer : public CMeshBuffer {
public:
    // Not part of the original (which has only the driver constructor): an unallocated buffer for tests.
    CAppendMeshBuffer();
    // 0x6b8cb4 (C1, complete object) and 0x6b8fe0 (C2, base object): one C++ constructor. `stride` is the attribute mask the
    // base class allocates its vertex stream table for. Both IBuffers are created through the driver; a buffer without a
    // driver-side mapping gets a CPU copy of its capacity (IBuffer::reset), and +0x60 records that.
    CAppendMeshBuffer(std::uint32_t vertexCapacityBytes, std::uint32_t indexCapacityBytes, video::IVideoDriver* driver,
                      video::E_BUFFER_USAGE usage, std::uint32_t stride);
    // 0x6b8c2c (D1), 0x6b8c98 (D0, skipped): ends an open append, then the vector and the two buffers go.
    ~CAppendMeshBuffer() override;

    // 0x6b8878: forgets the appended data.
    void clear();
    // 0x5a2040: true when `vertexCount` more vertices and `indexCount` more indices fit and the vertex numbers stay
    // below 0x10000.
    bool hasEnoughSpace(std::uint32_t vertexCount, std::uint32_t indexCount) const;
    // 0x5a26bc: maps both buffers for writing (access 4) unless they are mapped already.
    void beginAppend();
    // 0x6b8aa0: releases the two mappings taken by beginAppend.
    void endAppend();
    // 0x5a8a88: publishes the appended counts to the mesh buffer base: index count (+0x20), first vertex (+0x24 = 0),
    // index type 1 (+0x2c), vertex count (+0x28) and the vertex stream table's count word (+0x08).
    void setup();
    // 0x6b8b74: ends an open append and resets both buffers to new capacities (no data).
    void resize(std::uint32_t vertexCapacityBytes, std::uint32_t indexCapacityBytes);
    // 0x6b8bb4: ends an open append, clears, and drops the buffers of the configured streams.
    void reset();
    // 0x6b8950: points stream `streamIndex` of the vertex stream table at the vertex buffer (stride 0) and remembers it.
    // `valueType` is a glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE (an index into SVertexAttributeTypeInspection::ValueTypeSize).
    void configureStream(std::uint8_t streamIndex, std::int32_t offset, std::int32_t valueType, std::uint16_t componentCount);
    // 0x6b8834: sets the stride of every configured stream and the vertex stride.
    void adjustStride(std::uint16_t stride);
    // 0x58c2c4 / 0x58c348: copies the used vertex / index bytes into `destination` (read-maps the buffer, then releases).
    void copyVertexData(void* destination) const;
    void copyIndexData(void* destination) const;
    // 0x58cc74: a vertex stream table over the configured streams, all reading from `buffer` with the offsets, types and
    // strides configured here; its count word (+0x08) is the number of vertices.
    boost::intrusive_ptr<video::CVertexStreams> allocateConfiguredVertexStreams(
        const boost::intrusive_ptr<video::IBuffer>& buffer) const;

    std::uint32_t vertexCapacityBytes = 0;                  // +0x38
    std::uint32_t vertexUsedBytes = 0;                      // +0x3c
    std::uint32_t indexCapacityBytes = 0;                   // +0x40
    std::uint32_t indexUsedBytes = 0;                       // +0x44
    std::uint32_t vertexStride = 1;                         // +0x48
    std::uint32_t indexStride = 2;                          // +0x4c
    std::uint8_t* mappedVertices = nullptr;                 // +0x50
    std::uint8_t* mappedIndices = nullptr;                  // +0x54
    boost::intrusive_ptr<video::IBuffer> vertexBuffer;      // +0x58
    boost::intrusive_ptr<video::IBuffer> indexBuffer;       // +0x5c
    std::uint8_t cpuCopy = 0;                               // +0x60
    std::vector<std::uint8_t> streamIndices;                // +0x64
};

// 0x58f2a8: the settings of one batch: its material, the render state of the batch's pass and the mesh buffer.
struct SBatchConfig {
    // 0x58f2a8: takes a use of the new material, releases the old one, copies the first eight render-state words, then
    // takes a use of the new mesh buffer and releases the old one. The ninth word is not copied.
    SBatchConfig& operator=(const SBatchConfig& other);

    boost::intrusive_ptr<video::CMaterial> material;        // +0x00 (the count is at CMaterial + 0x00)
    std::uint32_t renderState[9] = {};                      // +0x04 .. +0x27 (detail::renderpass::SRenderState, built on the stack)
    boost::intrusive_ptr<CMeshBuffer> meshBuffer;           // +0x28
};

// The end-of-batch hook of the batch compiler: called with the buffer that filled up and the material it was filled for.
class IEndOfBatchCallback {
public:
    // 0x588f80 (D1, empty), 0x5899a0 (D0, skipped).
    virtual ~IEndOfBatchCallback() = default;
    // vtable +0x08 (pure).
    virtual void operator()(const CAppendMeshBuffer& buffer, const boost::intrusive_ptr<video::CMaterial>& material) = 0;
};

// Copies each finished buffer into a pair of new driver buffers, wraps them in a mesh buffer and records a batch
// configuration under the key the compiler prepared.
class SDefaultEndOfBatchCallback : public IEndOfBatchCallback {
public:
    // 0x58fa04 (D1), 0x58fa64 (D0, skipped): clears the map.
    ~SDefaultEndOfBatchCallback() override;
    // 0x59013c (7208 bytes, not reconstructed): clones the material under a random name, copies the vertex and index bytes into
    // new buffers, builds the mesh buffer with allocateConfiguredVertexStreams and stores the configuration. It also prints
    // the largest vertex and index counts seen to stdout (g_bigV, g_bigI).
    void operator()(const CAppendMeshBuffer& buffer, const boost::intrusive_ptr<video::CMaterial>& material) override;
    // 0x58d3d4 (5560 bytes, not reconstructed): registers a material renderer for every configuration and hands the finished
    // buffers to the batch mesh (CBatchMesh::setBuffer).
    void finalize();

    CBatchSceneNode* node = nullptr;                        // +0x04 the batch node whose mesh receives the buffers
    SDefaultSegmentCompileCallback* compileState = nullptr; // +0x08 the compiler's state (compileInternal's stack callback); its word at +0x10 is the key of the next batch
    video::IVideoDriver* driver = nullptr;                  // +0x0c
    video::E_BUFFER_USAGE usage = 0;                        // +0x10 the usage of the copies
    std::map<std::uint32_t, SBatchConfig> configs;          // +0x14 (STLport _Rb_tree: header at +0x14, node count at +0x24)
};

}  // namespace glitch::scene
