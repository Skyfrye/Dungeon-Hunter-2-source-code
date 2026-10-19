// The mesh records of a loaded COLLADA file: collada::SMesh (the mesh of a geometry, SGeometry +0x0c), its vertex data and its mesh
// buffer records. Canonical header, residue pass ob. Host-width records with the original offsets kept as comments; the loader that fills them
// (glitch::res::File::Init) is not reconstructed, so the records are built by tests and by future loaders.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; CMesh::CMesh 0x645588, scene::CMeshBuffer::CMeshBuffer 0x6bcf80, its anonymous addStream
// 0x6bccf0, CResFile::releaseObjects 0x658744 and releaseRemovableBuffer 0x657d58):
//   SMesh (the record SGeometry +0x0c points at):
//     +0x00 interleaved: non-zero when all the vertex streams share one interleaved vertex buffer
//     +0x04 interleaved: the vertex count; otherwise the number of stream descriptors
//     +0x08 the vertex data: an SInterleavedVertexData when interleaved, else an array of SVertexStreamDesc (stride 0x14)
//     +0x0c the number of mesh buffer records, +0x10 the records (SMeshBuffer, stride 0x38)
//     +0x14 .. +0x28 the bounding box (minimum xyz, maximum xyz)
//   SInterleavedVertexData: +0x00 stride (16 bits), +0x08 the byte offset of each stream, +0x10 its value type, +0x18 its component count,
//     +0x20 its range (a pointer to six floats: minimum and maximum), +0x24 the on-demand block of the vertex bytes, +0x28 the vertex IBuffer
//   SVertexStreamDesc (one per stream when not interleaved): +0x00 value type (index into SVertexAttributeTypeInspection::ValueTypeSize),
//     +0x04 components per vertex, +0x08 the value count of the stream (the position stream's divided by 3 is the vertex count), +0x0c the
//     loaded data, +0x10 the stream's IBuffer
//   SMeshBuffer (56 bytes): +0x00 primitive type index, +0x0c the position stream, +0x0d the normal stream, +0x0e / +0x0f two colour streams,
//     +0x10 four texture coordinate streams, +0x14 four binormal streams, +0x18 four tangent streams, +0x1c / +0x1d two more streams (a signed
//     byte each: the stream's index in the descriptors, -1 for none; the groups end at the first -1), +0x20 the first vertex, +0x24 the last
//     vertex index, +0x28 the index count, +0x2c the index data (an on-demand block, or the loaded array), +0x30 the index IBuffer, +0x34 the
//     scene::CMeshBuffer built from the record (kept when the mesh buffers are shared).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/res/onDemand.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/buffer.hpp"

namespace glitch::collada {

// The six floats a quantised stream is scaled by: its minimum and maximum corner.
struct SStreamRange {
    float minimum[3] = {};  // +0x00
    float maximum[3] = {};  // +0x0c
};

struct SVertexStreamDesc {
    std::int32_t valueType = 0;                 // +0x00
    std::int32_t componentCount = 0;            // +0x04
    std::int32_t valueCount = 0;                // +0x08
    void* data = nullptr;                       // +0x0c
    boost::intrusive_ptr<video::IBuffer> buffer;  // +0x10
};

struct SInterleavedVertexData {
    std::uint32_t stride = 0;                              // +0x00 (the low 16 bits are the stream stride the vertex streams take)
    const std::uint32_t* offsets = nullptr;                // +0x08
    const std::uint32_t* valueTypes = nullptr;             // +0x10
    const std::uint32_t* componentCounts = nullptr;        // +0x18
    const SStreamRange* const* ranges = nullptr;           // +0x20 one pointer per stream (null: none)
    res::SOnDemandBlock* dataBlock = nullptr;              // +0x24 the on-demand vertex bytes
    const void* data = nullptr;                            // +0x24 in the original (the same word) when the data is not on demand
    boost::intrusive_ptr<video::IBuffer> buffer;           // +0x28
};

struct SMeshBuffer {
    std::int32_t primitiveType = 0;                        // +0x00
    std::int8_t positionStream = -1;                       // +0x0c
    std::int8_t normalStream = -1;                         // +0x0d
    std::int8_t colorStream[2] = {-1, -1};                 // +0x0e, +0x0f
    std::int8_t texCoordStreams[4] = {-1, -1, -1, -1};     // +0x10
    std::int8_t binormalStreams[4] = {-1, -1, -1, -1};     // +0x14
    std::int8_t tangentStreams[4] = {-1, -1, -1, -1};     // +0x18
    std::int8_t extraStreams[2] = {-1, -1};                // +0x1c, +0x1d
    std::int32_t firstVertex = 0;                          // +0x20
    std::int32_t lastVertex = 0;                           // +0x24
    std::int32_t indexCount = 0;                           // +0x28
    res::SOnDemandBlock* indexBlock = nullptr;             // +0x2c the on-demand index bytes
    const void* indexData = nullptr;                       // +0x2c in the original (the same word) when the data is not on demand
    boost::intrusive_ptr<video::IBuffer> indexBuffer;      // +0x30
    boost::intrusive_ptr<scene::CMeshBuffer> meshBuffer;   // +0x34
};

struct SMesh {
    std::int32_t interleaved = 0;                          // +0x00
    std::int32_t count = 0;                                // +0x04 vertex count (interleaved) or stream count
    SInterleavedVertexData* interleavedData = nullptr;     // +0x08 (when interleaved)
    SVertexStreamDesc* streams = nullptr;                  // +0x08 (when not interleaved)
    std::int32_t bufferCount = 0;                          // +0x0c
    SMeshBuffer* buffers = nullptr;                        // +0x10
    float boundingBox[6] = {};                             // +0x14 minimum xyz, maximum xyz
};

}  // namespace glitch::collada
