// The glitch::scene mesh generators (createTerrainMesh, createPlaneMesh, createSphereMesh, createHillPlaneMesh, createCubeMesh,
// createCylinderMesh, createConeMesh, createArrowMesh). Declarations: scene/mesh_functions.hpp. This file replaces the unattached
// recon_28 stubs of src/recon/slice_28.cpp (their symbols were in glitch::scene::recon_28, not the originals).
//
// The generators build a CMesh with one CMeshBuffer each. Verified against the listings: the buffer comes from the
// anonymous-namespace helper createMeshBuffer (0x6d6e2c: an operator new[](2 * indexCount), a driver buffer (vtable +0x78) with
// type 0/1, usage 4, a buffer-per-attribute table through CVertexStreams::allocate, CVertexStreams::setupStreams(streams,
// buffer, -1) and the stream stride written back into the table's word +0x08) and is filled through mapMeshBuffer (0x6d71d8:
// SVertexStream::SMapBuffer views of the position stream and, when the attribute mask carries the bit, the texture coordinate,
// normal and colour streams; access 4 for writing). Both helpers are reconstructed here.
//
// All the generators are transcribed from the listings (residue pass ob). The vertex data of the plane and the cube is tabulated (the
// guard-initialised static records `meshData` and `cubeData`, transcribed below); the sphere, the hill plane, the cylinder and the cone
// compute theirs per ring or segment, and the arrow is a cylinder plus a cone head moved up by the cylinder's length.
#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"

#include <cmath>
#include <cstring>
#include <utility>

#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

using core::vector2d;
using core::vector3d;
using video::SVertexStream;

// The one vertex layout every generator writes: position, then the texture coordinate, then the normal (the port's
// blend vertex; createPlaneMesh's 0x9f7ec8 records have the same order).
struct SGeneratorVertex {
    vector3d<float> position;
    vector2d<float> texCoord;
    vector3d<float> normal;
    video::SColor color;
};
static_assert(sizeof(SGeneratorVertex) == 36,
              "position 12 + texcoord 8 + normal 12 + colour 4. The assertion previously demanded 44, which matches "
              "neither this layout nor the listing: createPlaneMesh reads four 32-byte vertices from meshData "
              "0x9f7ec8 and createCubeMesh twenty-four 32-byte records from cubeData 0x9f7f4c, and the original is a "
              "32-bit ARM target where this same field list is 32 bytes with no padding. On this host the same list "
              "is 36 because vector3d<float> is 12 and SColor 4 with alignment 4. The record the generators "
              "transcribe is the 32-byte static one, so if a generator is written against the binary it must write "
              "those 32 bytes field by field rather than memcpy sizeof(SGeneratorVertex).");

// 0x6d6e2c glitch::scene::(anonymous namespace)::createMeshBuffer(unsigned int, IVideoDriver*, unsigned int, unsigned int)
// An index buffer (driver createBuffer type 1, usage 4, 2 * indexCount bytes over a fresh array that the buffer owns), a mesh buffer
// of 56 bytes made by hand (no owner, the flag byte clear, the index buffer in the primitive stream with offset 0, count = indexCount,
// first vertex 0, last vertex = vertexCount, 16-bit indices, triangles) over a stream table for `attributeMask`; then a vertex buffer
// (type 0, usage 4) laid out by CVertexStreams::setupStreams(buffer, -1), the vertex count in the table's word +0x08, and vertex storage
// of vertexCount * stride bytes owned by the buffer. The result carries one reference.
boost::intrusive_ptr<CMeshBuffer> createMeshBuffer(std::uint32_t attributeMask, video::IVideoDriver* driver,
                                                   std::uint32_t vertexCount, std::uint32_t indexCount) {
    boost::intrusive_ptr<video::IBuffer> indexBuffer =
        driver->createBuffer(1, 4, indexCount * 2u, new std::uint8_t[static_cast<std::size_t>(indexCount) * 2u], true);
    boost::intrusive_ptr<CMeshBuffer> buffer(new CMeshBuffer(), true);
    buffer->vertexStreams = video::CVertexStreams::allocate(attributeMask);
    buffer->primitiveStream.m_indexBuffer = indexBuffer;
    buffer->primitiveStream.m_offset = 0;
    buffer->primitiveStream.m_count = indexCount;
    buffer->primitiveStream.m_vertexStart = 0;
    buffer->primitiveStream.m_vertexEnd = vertexCount;
    buffer->primitiveStream.m_indexType = 1;      // 16-bit indices (E_INDEX_TYPE)
    buffer->primitiveStream.m_primitiveType = 6;  // E_PRIMITIVE_TYPE_TRIANGLES
    buffer->flag_34 = 0;
    boost::intrusive_ptr<video::IBuffer> vertexBuffer = driver->createBuffer(0, 4, 0, nullptr, true);
    const std::uint32_t stride = buffer->vertexStreams->setupStreams(vertexBuffer, 0xFFFFFFFFu);
    buffer->vertexStreams->m_field08 = vertexCount;
    const std::size_t bytes = static_cast<std::size_t>(vertexCount) * stride;
    // IBuffer::reset(size, data, true): the storage is the buffer's own (freed with delete[]).
    vertexBuffer->reset(static_cast<std::uint32_t>(bytes), new std::uint8_t[bytes], true);
    return buffer;
}

// 0x6d71d8 glitch::scene::(anonymous namespace)::mapMeshBuffer(intrusive_ptr<CMeshBuffer> const&,
//   SMapBuffer<vector3d<float>>*, SMapBuffer<vector2d<float>>*, SMapBuffer<vector3d<float>>*, SMapBuffer<SColor>*, E_BUFFER_MAP_ACCESS)
// Maps the position stream into `positions` and, when the table's attribute mask has the bit, the texture coordinate stream
// (attribute 1), the normal stream (attribute 17) and the colour stream (attribute 18) into their views. The stream for an
// optional attribute is looked up with CVertexStreams::getStream over the entries after the texture coordinate block (the same
// search mesh_functions.cpp's findStream performs). Passing a null view for an optional attribute skips it, as in the original.
void mapMeshBuffer(const boost::intrusive_ptr<CMeshBuffer>& buffer, SVertexStream::SMapBuffer<vector3d<float>>* positions,
                   SVertexStream::SMapBuffer<vector2d<float>>* texCoords, SVertexStream::SMapBuffer<vector3d<float>>* normals,
                   SVertexStream::SMapBuffer<video::SColor>* colors, std::int32_t access) {
    video::CVertexStreams& streams = *buffer->vertexStreams;
    if (positions != nullptr && !streams.m_streams.empty()) {
        positions->reset(streams.m_streams[0], access);
    }
    if (texCoords != nullptr && (streams.m_attributeMask & 0x2u) != 0) {
        SVertexStream* stream = streams.m_streams.size() > 1 ? &streams.m_streams[1] : nullptr;
        if (stream != nullptr) texCoords->reset(*stream, access);
    }
    if (normals != nullptr && (streams.m_attributeMask & 0x20000u) != 0) {
        for (SVertexStream& entry : streams.m_streams) {
            if (entry.attribute == 17) {
                normals->reset(entry, access);
                break;
            }
        }
    }
    if (colors != nullptr && (streams.m_attributeMask & 0x40000u) != 0) {
        for (SVertexStream& entry : streams.m_streams) {
            if (entry.attribute == 18) {
                colors->reset(entry, access);
                break;
            }
        }
    }
}

// Transcribed from the guard-initialized `meshData` of createPlaneMesh (0x9f7ec8, 4 records of 32 bytes) - the compiler-static
// array is a .bss symbol in the shipped .so (a raw get_bytes read returns zeroes), so the values live only in the explicit
// stores of the guard block at 0x6d770c..0x6d7788. All 32 words decoded by tracking the register constants across the block:
// the quad lies in the xz plane with the normal (0, 1, 0), and the loop writes the position from words 0..2 (scaled by the
// size argument), the normal from words 3..5 and the texture coordinate from words 6..7.
const float kPlaneMeshData[4][8] = {
    // position.x, position.y, position.z, normal.x, normal.y, normal.z, uv.x, uv.y
    {-0.5f, 0.0f, -0.5f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f},
    {0.5f, 0.0f, -0.5f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f},
    {0.5f, 0.0f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f},
    {-0.5f, 0.0f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f},
};

// Transcribed from the guard-initialized `cubeData` of createCubeMesh (0x9f7f4c, 24 records of 32 bytes). All 192 words are
// reproduced by the guard block at 0x6d90b4..0x6d93e4; they were extracted by tracking the register constants across the
// block, which gives a complete, self-consistent cube: six quads of four vertices, each with an axis-aligned normal and the
// four texture coordinates (1,1) (1,0) (0,0) (0,1). The loop writes the position from words 0..2, the normal from words
// 3..5 and the texture coordinate from words 6..7, and scales only the position by the size argument.
const float kCubeMeshData[24][8] = {
    // -z face (normal 0, 0, -1)
    {-0.5f, -0.5f, -0.5f, 0.0f, 0.0f, -1.0f, 1.0f, 1.0f},
    {-0.5f, 0.5f, -0.5f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f},
    {0.5f, 0.5f, -0.5f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f},
    {0.5f, -0.5f, -0.5f, 0.0f, 0.0f, -1.0f, 0.0f, 1.0f},
    // +x face (normal 1, 0, 0)
    {0.5f, -0.5f, -0.5f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f},
    {0.5f, 0.5f, -0.5f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f},
    {0.5f, 0.5f, 0.5f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f},
    {0.5f, -0.5f, 0.5f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f},
    // +z face (normal 0, 0, 1)
    {0.5f, -0.5f, 0.5f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f},
    {0.5f, 0.5f, 0.5f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f},
    {-0.5f, 0.5f, 0.5f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f},
    {-0.5f, -0.5f, 0.5f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f},
    // -x face (normal -1, 0, 0)
    {-0.5f, -0.5f, 0.5f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f},
    {-0.5f, 0.5f, 0.5f, -1.0f, 0.0f, 0.0f, 1.0f, 0.0f},
    {-0.5f, 0.5f, -0.5f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f},
    {-0.5f, -0.5f, -0.5f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f},
    // +y face (normal 0, 1, 0)
    {0.5f, 0.5f, 0.5f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f},
    {0.5f, 0.5f, -0.5f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f},
    {-0.5f, 0.5f, -0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f},
    {-0.5f, 0.5f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f},
    // -y face (normal 0, -1, 0)
    {-0.5f, -0.5f, -0.5f, 0.0f, -1.0f, 0.0f, 1.0f, 1.0f},
    {0.5f, -0.5f, -0.5f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f},
    {0.5f, -0.5f, 0.5f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f},
    {-0.5f, -0.5f, 0.5f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f},
};

// 0x8eb538 (12 bytes, the `C.1925` table createPlaneMesh memcpys from) are the six 16-bit indices {0, 2, 1, 0, 3, 2} and
// 0x8eb544 (36 bytes, file data, the `u` table createCubeMesh memcpys 0x48 bytes from) is the quad pattern 0 1 2 / 0 2 3
// repeated over the six quads of four vertices (indices 4q+0, 4q+1, 4q+2, 4q+0, 4q+2, 4q+3). Both index tables belong to the
// index-buffer path of createMeshBuffer above, which this port stores outside the buffer (see the helper's comment).

// The stride of the vertices a map view points into (the stream's word +0x0e).
std::size_t strideOf(const SVertexStream::SMapBuffer<vector3d<float>>& view) { return view.stream->field0e; }
std::size_t strideOf(const SVertexStream::SMapBuffer<vector2d<float>>& view) { return view.stream->field0e; }
std::size_t strideOf(const SVertexStream::SMapBuffer<video::SColor>& view) { return view.stream->field0e; }

// The element `index` of a map view.
template <typename T>
T* elementAt(const SVertexStream::SMapBuffer<T>& view, std::size_t index) {
    return reinterpret_cast<T*>(reinterpret_cast<std::uint8_t*>(view.data) + strideOf(view) * index);
}

// A float triple written to the position / normal view (the x, y, z order of the listing's stores).
void putVector(const SVertexStream::SMapBuffer<vector3d<float>>& view, std::size_t index, float x, float y, float z) {
    float* element = reinterpret_cast<float*>(elementAt(view, index));
    element[0] = x;
    element[1] = y;
    element[2] = z;
}

// The views of one buffer, mapped by mapMeshBuffer and released in the order the listings use (colours, normals, texture coordinates,
// positions).
struct SViews {
    SVertexStream::SMapBuffer<vector3d<float>> positions;
    SVertexStream::SMapBuffer<vector2d<float>> texCoords;
    SVertexStream::SMapBuffer<vector3d<float>> normals;
    SVertexStream::SMapBuffer<video::SColor> colors;
    void release() {
        colors.reset();
        normals.reset();
        texCoords.reset();
        positions.reset();
    }
};

// The index storage of a buffer: its index buffer mapped with `access`, moved by the primitive stream's byte offset.
std::uint16_t* mapIndices(CMeshBuffer& buffer, std::int32_t access) {
    std::uint8_t* base = buffer.primitiveStream.m_indexBuffer->map(access);
    return reinterpret_cast<std::uint16_t*>(base + buffer.primitiveStream.m_offset);
}

// A one-buffer mesh around `buffer` with the given material and attribute map; the bounding box is recalculated when asked.
boost::intrusive_ptr<IMesh> makeMesh(const boost::intrusive_ptr<CMeshBuffer>& buffer, const boost::intrusive_ptr<video::CMaterial>& material,
                                     const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& attributeMap, bool recalculate) {
    boost::intrusive_ptr<CMesh> mesh(new CMesh(), true);
    mesh->addMeshBuffer(buffer, material, attributeMap);
    if (recalculate) {
        mesh->recalculateBoundingBox();
    }
    // The listings return the local handle with a new use (the intrusive_ptr upcast), see createPlaneMesh.
    return mesh;
}

}  // namespace

// 0x6d6e00 _ZN6glitch5scene17createTerrainMeshERKN5boost13intrusive_ptrINS_5video6CImageEEES7_RKNS_4core11dimension2dIfEEfPNS3_12IVideoDriverERKNS9_IiEEb
// The whole body is the store of a null handle into the result.
boost::intrusive_ptr<IMesh> createTerrainMesh(const boost::intrusive_ptr<video::CImage>& /*texture*/,
                                              const boost::intrusive_ptr<video::CImage>& /*heightMap*/,
                                              const core::dimension2d<float>& /*stretchSize*/, float /*maxHeight*/,
                                              video::IVideoDriver* /*driver*/,
                                              const core::dimension2d<std::int32_t>& /*defaultVertexBlockSize*/, bool /*debugBorders*/) {
    return boost::intrusive_ptr<IMesh>();
}

// 0x6d72d0 _ZN6glitch5scene15createPlaneMeshEjPNS_5video12IVideoDriverEfRKNS1_6SColorE
// A stream table for `mask` with 4 vertices and 6 indices; the six indices of 0x8eb538 go to the index storage, then one pass over the
// four 32-byte records of meshData: the position is scaled by `size`, the texture coordinate and the normal are copied (when the table has
// them) and the colour argument goes to every colour (when the table has them). One CMesh with that buffer, its box recalculated.
boost::intrusive_ptr<IMesh> createPlaneMesh(std::uint32_t mask, video::IVideoDriver* driver, float size, const video::SColor& color) {
    const boost::intrusive_ptr<CMeshBuffer> buffer = createMeshBuffer(mask, driver, 4u, 6u);
    static const std::uint16_t kIndices[6] = {0, 2, 1, 0, 3, 2};
    std::uint16_t* indices = mapIndices(*buffer, 4);
    std::memcpy(indices, kIndices, sizeof(kIndices));
    if (indices != nullptr) {
        buffer->primitiveStream.m_indexBuffer->unmap();
    }
    SViews views;
    mapMeshBuffer(buffer, &views.positions, &views.texCoords, &views.normals, &views.colors, 4);
    for (std::size_t i = 0; i < 4; ++i) {
        const float* record = kPlaneMeshData[i];
        putVector(views.positions, i, size * record[0], size * record[1], size * record[2]);
        if (views.texCoords.data != nullptr) {
            float* uv = reinterpret_cast<float*>(elementAt(views.texCoords, i));
            uv[0] = record[6];
            uv[1] = record[7];
        }
        if (views.normals.data != nullptr) {
            putVector(views.normals, i, record[3], record[4], record[5]);
        }
        if (views.colors.data != nullptr) {
            std::memcpy(elementAt(views.colors, i), &color, 4);
        }
    }
    views.release();
    return makeMesh(buffer, boost::intrusive_ptr<video::CMaterial>(), boost::intrusive_ptr<video::CMaterialVertexAttributeMap>(), true);
}

// 0x6d7808 _ZN6glitch5scene16createSphereMeshEjPNS_5video12IVideoDriverEfjj
// A UV sphere of `polyCountX` segments around and `polyCountY` rings (each at least 2, reduced until the ring count times the vertices per ring
// stays below 0x8000): per ring the vertices are r * (cos(phi) sin(theta), cos(theta), sin(phi) sin(theta)) with theta stepping by pi / rings
// (the first ring is at one step) and phi by 2 pi / segments, plus a seam vertex that copies the ring's first and takes u = 1; then the north
// and south pole vertices. The first ring's u comes from the normal (acos(x / sin(theta)) / 2 pi, mirrored for negative z), the others copy the
// u of the vertex a ring above; v = theta / pi. Every colour is (255, 255, 255, 100). The indices are the quad strips of the rings, then two
// fans to the poles. The arithmetic keeps the listing's mix of float and double steps.
boost::intrusive_ptr<IMesh> createSphereMesh(std::uint32_t mask, video::IVideoDriver* driver, float radius, std::uint32_t polyCountX,
                                             std::uint32_t polyCountY) {
    std::uint32_t segments = polyCountX <= 1 ? 2u : polyCountX;  // v7
    std::uint32_t rings = polyCountY <= 1 ? 2u : polyCountY;     // v8
    std::uint32_t cells = segments * rings;                     // v9
    std::uint32_t ringCount = rings;                            // v121
    std::uint32_t segmentCount = segments;                      // v120
    std::uint32_t ringVertices;                                 // v97
    if (cells <= 0x7FFFu) {
        ringVertices = segments + 1;
    } else if (segments <= rings) {
        ringVertices = segments + 1;
        ringCount = 0x7FFFu / (segments + 1);
        cells = segments * ringCount;
    } else {
        segmentCount = 0x7FFFu / rings - 1;
        cells = rings * segmentCount;
        ringVertices = 0x7FFFu / rings;
    }
    const std::uint16_t northIndex = static_cast<std::uint16_t>(ringCount * ringVertices);  // v98
    const boost::intrusive_ptr<CMeshBuffer> buffer = createMeshBuffer(mask, driver, ringCount * ringVertices + 2, 6 * cells);
    const video::CVertexStreams& streams = *buffer->vertexStreams;
    std::uint16_t* const indices = mapIndices(*buffer, 2);
    const std::uint16_t lastRingStep = static_cast<std::uint16_t>(ringCount - 1);  // v104
    std::uint32_t pairCount;                                                       // v94
    std::uint16_t wrapIndex;                                                       // v96
    std::uint16_t lastColumn;                                                      // v99
    std::int32_t cursor = 0;                                                       // v12
    if (ringCount == 1) {
        pairCount = segmentCount - 1;
        wrapIndex = static_cast<std::uint16_t>(segmentCount);
        lastColumn = static_cast<std::uint16_t>(segmentCount - 1);
    } else {
        wrapIndex = static_cast<std::uint16_t>(segmentCount);
        std::uint16_t upperStart = 0;                                                              // v89
        lastColumn = static_cast<std::uint16_t>(segmentCount - 1);
        std::uint16_t wrapLower = static_cast<std::uint16_t>(segmentCount + ringVertices - 1);    // v13
        pairCount = segmentCount - 1;
        std::uint16_t wrapUpper = static_cast<std::uint16_t>(segmentCount - 1);                    // v14
        std::uint32_t ringNumber = 1;                                                              // v15
        std::uint16_t lowerStart = static_cast<std::uint16_t>(ringVertices);                       // v87
        while (true) {
            if (segmentCount != 1) {
                std::uint16_t lower = lowerStart;
                std::uint16_t upper = upperStart;
                std::uint32_t column = 1;
                std::uint16_t* quad = indices + cursor;
                do {
                    ++column;
                    quad[0] = lower;
                    quad[1] = upper;
                    quad[3] = lower;
                    ++upper;
                    ++lower;
                    quad[5] = lower;
                    quad[2] = upper;
                    quad[4] = upper;
                    quad += 6;
                } while (column != segmentCount);
                cursor += static_cast<std::int32_t>(6 * segmentCount - 6);
            }
            ++ringNumber;
            indices[cursor] = wrapLower;
            indices[cursor + 1] = wrapUpper;
            indices[cursor + 2] = static_cast<std::uint16_t>(wrapUpper + 1);
            indices[cursor + 3] = wrapLower;
            indices[cursor + 4] = static_cast<std::uint16_t>(wrapUpper + 1);
            indices[cursor + 5] = static_cast<std::uint16_t>(wrapLower + 1);
            cursor += 6;
            lowerStart = static_cast<std::uint16_t>(lowerStart + ringVertices);
            wrapLower = static_cast<std::uint16_t>(wrapLower + ringVertices);
            wrapUpper = static_cast<std::uint16_t>(wrapUpper + ringVertices);
            if (ringNumber == ringCount) {
                break;
            }
            upperStart = static_cast<std::uint16_t>(upperStart + ringVertices);
        }
    }
    const std::uint16_t lastRingStart = static_cast<std::uint16_t>(ringVertices * lastRingStep);  // v23
    const std::uint16_t southIndex = static_cast<std::uint16_t>(northIndex + 1);                    // v24
    std::uint16_t northShort;                                                                      // v25
    if (pairCount != 0) {
        std::uint32_t k = 0;                                                                       // v29
        std::uint16_t lastRing = lastRingStart;                                                    // v27
        std::uint16_t next = 1;                                                                    // v28
        std::uint16_t* fan = indices + cursor;
        northShort = static_cast<std::uint16_t>(ringCount * ringVertices);
        do {
            fan[0] = northIndex;
            fan[2] = static_cast<std::uint16_t>(k++);
            fan[3] = lastRing++;
            fan[1] = next;
            fan[5] = southIndex;
            fan[4] = lastRing;
            ++next;
            fan += 6;
        } while (k != pairCount);
        cursor += static_cast<std::int32_t>(6 * k);
    } else {
        northShort = static_cast<std::uint16_t>(ringCount * ringVertices);
    }
    indices[cursor] = northShort;
    indices[cursor + 1] = wrapIndex;
    indices[cursor + 2] = lastColumn;
    indices[cursor + 3] = static_cast<std::uint16_t>(lastRingStart + lastColumn);
    indices[cursor + 4] = lastRingStart;
    indices[cursor + 5] = southIndex;

    SViews views;
    mapMeshBuffer(buffer, &views.positions, &views.texCoords, &views.normals, &views.colors, 5);
    const auto putColor = [&](std::size_t index) {
        if (views.colors.data != nullptr) {
            std::uint8_t* c = reinterpret_cast<std::uint8_t*>(elementAt(views.colors, index));
            c[1] = 0xFF;
            c[3] = 100;
            c[2] = 0xFF;
            c[0] = 0xFF;
        }
    };
    std::int32_t vertex = 0;  // v33
    if (ringCount != 0) {
        double theta = 0.0;  // v93
        for (std::uint32_t ring = 0; ring != ringCount; ++ring) {
            theta = theta + static_cast<float>(3.1416 / static_cast<float>(ringCount));
            const double sinTheta = std::sin(theta);  // v90
            if (segmentCount != 0) {
                const double radiusD = radius;  // v91
                double sinPhi = 0.0;            // v34
                const std::int32_t ringEnd = vertex + static_cast<std::int32_t>(segmentCount);  // v95
                std::int32_t above = vertex - static_cast<std::int32_t>(ringVertices);           // v35
                double phi = 0.0;                                                               // v88
                const float y = static_cast<float>(radius * std::cos(theta));                   // v38
                double cosPhi = 1.0;                                                            // v37
                while (true) {
                    const float x = static_cast<float>(radiusD * cosPhi * sinTheta);  // v55
                    const float z = static_cast<float>(radiusD * sinPhi * sinTheta);  // v57
                    vector3d<float> normal{x, y, z};
                    normal.normalize();
                    float u;  // v41
                    if (ring == 0) {
                        if (normal.Y == -1.0 || normal.Y == 1.0) {
                            u = 0.5f;
                        } else {
                            double cosine = normal.X / sinTheta;
                            if (cosine >= -1.0) {
                                if (cosine >= 1.0) {
                                    cosine = 1.0;
                                }
                            } else {
                                cosine = -1.0;
                            }
                            u = static_cast<float>(std::acos(cosine) * 0.5 * 0.318309886);
                        }
                        if (normal.Z < 0.0) {
                            u = static_cast<float>(1.0 - u);
                        }
                    } else if (views.texCoords.data != nullptr) {
                        u = *reinterpret_cast<const float*>(reinterpret_cast<const std::uint8_t*>(views.texCoords.data) +
                                                            strideOf(views.texCoords) * static_cast<std::size_t>(above));
                    } else {
                        u = 0.5f;
                    }
                    putVector(views.positions, static_cast<std::size_t>(vertex), x, y, z);
                    if (views.texCoords.data != nullptr) {
                        float* uv = reinterpret_cast<float*>(elementAt(views.texCoords, static_cast<std::size_t>(vertex)));
                        uv[0] = u;
                        uv[1] = static_cast<float>(theta * 0.318309886);
                    }
                    if (views.normals.data != nullptr) {
                        putVector(views.normals, static_cast<std::size_t>(vertex), normal.X, normal.Y, normal.Z);
                    }
                    putColor(static_cast<std::size_t>(vertex));
                    ++vertex;
                    ++above;
                    if (vertex == ringEnd) {
                        break;
                    }
                    phi = phi + static_cast<float>(6.2832 / static_cast<float>(segmentCount));
                    cosPhi = std::cos(phi);
                    sinPhi = std::sin(phi);
                }
            }
            // The seam vertex: a copy of the ring's first vertex (all its streams share one buffer), with u = 1.
            std::memcpy(elementAt(views.positions, static_cast<std::size_t>(vertex)),
                        elementAt(views.positions, static_cast<std::size_t>(vertex) - segmentCount), streams.m_streams[0].field0e);
            const std::int32_t seam = vertex;
            ++vertex;
            if (views.texCoords.data != nullptr) {
                *reinterpret_cast<float*>(elementAt(views.texCoords, static_cast<std::size_t>(seam))) = 1.0f;
            }
        }
    }
    // The north pole, then the south pole.
    putVector(views.positions, static_cast<std::size_t>(vertex), 0.0f, radius, 0.0f);
    if (views.texCoords.data != nullptr) {
        float* uv = reinterpret_cast<float*>(elementAt(views.texCoords, static_cast<std::size_t>(vertex)));
        uv[0] = 0.5f;
        uv[1] = 0.0f;
    }
    if (views.normals.data != nullptr) {
        putVector(views.normals, static_cast<std::size_t>(vertex), 0.0f, 1.0f, 0.0f);
    }
    putColor(static_cast<std::size_t>(vertex));
    const std::int32_t south = vertex + 1;
    putVector(views.positions, static_cast<std::size_t>(south), 0.0f, -radius, 0.0f);
    if (views.texCoords.data != nullptr) {
        float* uv = reinterpret_cast<float*>(elementAt(views.texCoords, static_cast<std::size_t>(south)));
        uv[0] = 0.5f;
        uv[1] = 1.0f;
    }
    if (views.normals.data != nullptr) {
        putVector(views.normals, static_cast<std::size_t>(south), 0.0f, -1.0f, 0.0f);
    }
    putColor(static_cast<std::size_t>(south));
    boost::intrusive_ptr<IMesh> mesh =
        makeMesh(buffer, boost::intrusive_ptr<video::CMaterial>(), boost::intrusive_ptr<video::CMaterialVertexAttributeMap>(), true);
    views.release();
    buffer->primitiveStream.m_indexBuffer->unmap();
    return mesh;
}

// 0x6d841c _ZN6glitch5scene19createHillPlaneMeshEjPNS_5video12IVideoDriverERKNS_4core11dimension2dIfEERKNS5_IjEERKN5boost13intrusive_ptrINS1_9CMaterialEEERKNSD_INS1_27CMaterialVertexAttributeMapEEEfS8_S8_
// A grid of tileCount tiles of tileSize centred on the origin in x and z, (tx + 1) * (ty + 1) vertices column by column: y is
// hillHeight * sin((x * hillsX * pi) / halfWidth) * cos((z * hillsY * pi) / halfDepth) (0 without a height; a hill count under 0.01 counts
// as 1), the texture coordinate is (column * repeatX / tx, 1 - row * repeatY / ty) and the colour white. Two triangles per tile. When the
// stream table has normals each triangle's plane normal is written to its three vertices. The material and the attribute map go to the mesh.
boost::intrusive_ptr<IMesh> createHillPlaneMesh(std::uint32_t mask, video::IVideoDriver* driver, const core::dimension2d<float>& tileSize,
                                                const core::dimension2d<std::uint32_t>& tileCount,
                                                const boost::intrusive_ptr<video::CMaterial>& material,
                                                const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& attributeMap,
                                                float hillHeight, const core::dimension2d<float>& countHills,
                                                const core::dimension2d<float>& textureRepeatCount) {
    float hillsX = countHills.Width;   // v73
    const std::uint32_t tilesX = tileCount.Width;   // v76
    const std::uint32_t tilesY = tileCount.Height;  // v11
    float hillsY = countHills.Height;  // v74
    if (countHills.Width < 0.01) {
        hillsX = 1.0f;
    }
    if (hillsY < 0.01f) {
        hillsY = 1.0f;
    }
    const float halfWidth = static_cast<float>((static_cast<float>(tilesX) * tileSize.Width) * 0.5);   // v67
    const float halfDepth = static_cast<float>((static_cast<float>(tilesY) * tileSize.Height) * 0.5);  // v65
    const float uStep = textureRepeatCount.Width / static_cast<float>(tilesX);                          // v78
    const std::uint32_t columnVertices = tilesY + 1;                                                    // v77
    const std::uint32_t indexCount = tilesY * (6 * (tilesX + 1) - 6);                                   // v79
    const boost::intrusive_ptr<CMeshBuffer> buffer = createMeshBuffer(mask, driver, (tilesY + 1) * (tilesX + 1), indexCount);
    const float vStep = textureRepeatCount.Height / static_cast<float>(tilesY);  // v72
    SViews views;
    mapMeshBuffer(buffer, &views.positions, &views.texCoords, nullptr, &views.colors, 4);
    if (tilesX != 0xFFFFFFFFu) {
        float u = 0.0f;       // v71
        float x = 0.0f;       // v69
        std::int32_t base = 0;  // v68
        std::uint32_t column = 0;  // v75
        while (true) {
            if (tilesY != 0xFFFFFFFFu) {
                float v = 0.0f;  // v14
                float z = 0.0f;  // v16
                std::int32_t row = 0;  // v15
                while (true) {
                    const float zCentred = z - halfDepth;  // v17
                    float height = 0.0f;                    // v13
                    if (hillHeight != 0.0f) {
                        const float sine = sinf(static_cast<float>(static_cast<float>(static_cast<float>(x - halfWidth) * hillsX) * 3.1416) / halfWidth);  // v64
                        height = static_cast<float>(sine * cosf(static_cast<float>(static_cast<float>(zCentred * hillsY) * 3.1416) / halfDepth)) *
                                 hillHeight;
                    }
                    const std::size_t vertex = static_cast<std::size_t>(row + base);
                    putVector(views.positions, vertex, x - halfWidth, height, zCentred);
                    if (views.texCoords.data != nullptr) {
                        float* uv = reinterpret_cast<float*>(elementAt(views.texCoords, vertex));
                        uv[0] = u;
                        uv[1] = 1.0f - v;
                    }
                    if (views.colors.data != nullptr) {
                        std::uint8_t* c = reinterpret_cast<std::uint8_t*>(elementAt(views.colors, vertex));
                        c[3] = 0xFF;
                        c[0] = 0xFF;
                        c[2] = 0xFF;
                        c[1] = 0xFF;
                    }
                    if (static_cast<std::uint32_t>(row) == tilesY) {
                        break;
                    }
                    z = z + tileSize.Height;
                    ++row;
                    v = v + vStep;
                }
                base += static_cast<std::int32_t>(columnVertices);
            }
            if (column == tilesX) {
                break;
            }
            x = x + tileSize.Width;
            ++column;
            u = u + uStep;
        }
    }
    views.release();
    std::uint16_t* const indices = mapIndices(*buffer, 2);
    if (tilesX != 0) {
        std::uint16_t first = 0;  // v32
        std::int32_t cursor = 0;  // v34
        for (std::uint32_t column = 0; column != tilesX; ++column) {
            std::uint16_t next;  // v35
            if (tilesY != 0) {
                next = static_cast<std::uint16_t>(columnVertices + first);
                std::uint16_t partner = static_cast<std::uint16_t>(columnVertices + first);  // v37
                std::uint16_t* cell = indices + cursor;
                std::uint32_t row = 0;
                do {
                    ++row;
                    cell[0] = first++;
                    cell[5] = partner;
                    cell[2] = partner;
                    cell[1] = first;
                    cell[3] = first;
                    cell[4] = static_cast<std::uint16_t>(partner + 1);
                    cell += 6;
                    ++partner;
                } while (row != tilesY);
                cursor += static_cast<std::int32_t>(6 * tilesY);
            } else {
                next = static_cast<std::uint16_t>(first + columnVertices);
            }
            first = next;
        }
    }
    if (indices != nullptr) {
        buffer->primitiveStream.m_indexBuffer->unmap();
    }
    if ((buffer->vertexStreams->m_attributeMask & 0x20000u) != 0) {
        SViews normalViews;
        mapMeshBuffer(buffer, &normalViews.positions, nullptr, &normalViews.normals, nullptr, 3);
        const std::uint16_t* triangles =
            reinterpret_cast<const std::uint16_t*>(buffer->primitiveStream.m_indexBuffer->m_data + buffer->primitiveStream.m_offset);
        for (std::uint32_t t = 0; t < indexCount; t += 3) {
            const std::uint16_t i0 = triangles[t];
            const std::uint16_t i1 = triangles[t + 1];
            const std::uint16_t i2 = triangles[t + 2];
            core::plane3d<float> plane;
            plane.setPlane(*elementAt(normalViews.positions, i0), *elementAt(normalViews.positions, i1), *elementAt(normalViews.positions, i2));
            putVector(normalViews.normals, i0, plane.Normal.X, plane.Normal.Y, plane.Normal.Z);
            putVector(normalViews.normals, i1, plane.Normal.X, plane.Normal.Y, plane.Normal.Z);
            putVector(normalViews.normals, i2, plane.Normal.X, plane.Normal.Y, plane.Normal.Z);
        }
        normalViews.normals.reset();
        normalViews.positions.reset();
    }
    return makeMesh(buffer, material, attributeMap, true);
}

// 0x6d8cb4 _ZN6glitch5scene14createCubeMeshEjPNS_5video12IVideoDriverEf
// A stream table for `mask` with 24 vertices and 36 indices, the 0x48 bytes of the static `u` table at 0x8eb544 as the indices (the quad
// pattern 0 1 2 / 0 2 3 over the six quads), then one pass over the 24 32-byte records of cubeData: the position scaled by `size`, the texture
// coordinate and the normal copied, white colours. One CMesh with that buffer, its box recalculated.
boost::intrusive_ptr<IMesh> createCubeMesh(std::uint32_t mask, video::IVideoDriver* driver, float size) {
    const boost::intrusive_ptr<CMeshBuffer> buffer = createMeshBuffer(mask, driver, 24u, 36u);
    std::uint16_t* indices = mapIndices(*buffer, 4);
    for (std::uint16_t quad = 0; quad < 6; ++quad) {
        const std::uint16_t first = static_cast<std::uint16_t>(4 * quad);
        indices[6 * quad + 0] = first;
        indices[6 * quad + 1] = static_cast<std::uint16_t>(first + 1);
        indices[6 * quad + 2] = static_cast<std::uint16_t>(first + 2);
        indices[6 * quad + 3] = first;
        indices[6 * quad + 4] = static_cast<std::uint16_t>(first + 2);
        indices[6 * quad + 5] = static_cast<std::uint16_t>(first + 3);
    }
    if (indices != nullptr) {
        buffer->primitiveStream.m_indexBuffer->unmap();
    }
    SViews views;
    mapMeshBuffer(buffer, &views.positions, &views.texCoords, &views.normals, &views.colors, 4);
    for (std::size_t i = 0; i < 24; ++i) {
        const float* record = kCubeMeshData[i];
        putVector(views.positions, i, size * record[0], size * record[1], size * record[2]);
        if (views.texCoords.data != nullptr) {
            float* uv = reinterpret_cast<float*>(elementAt(views.texCoords, i));
            uv[0] = record[6];
            uv[1] = record[7];
        }
        if (views.normals.data != nullptr) {
            putVector(views.normals, i, record[3], record[4], record[5]);
        }
        if (views.colors.data != nullptr) {
            std::uint8_t* c = reinterpret_cast<std::uint8_t*>(elementAt(views.colors, i));
            c[3] = 0xFF;
            c[1] = 0xFF;
            c[2] = 0xFF;
            c[0] = 0xFF;
        }
    }
    views.release();
    return makeMesh(buffer, boost::intrusive_ptr<video::CMaterial>(), boost::intrusive_ptr<video::CMaterialVertexAttributeMap>(), true);
}

// 0x6d945c _ZN6glitch5scene18createCylinderMeshEjPNS_5video12IVideoDriverEffjRKNS1_6SColorEbf
// `tesselation` segments of four vertices each: the bottom and the top (shifted by `oblique` in x) at the segment's angle, then the same two
// half a segment on; position (cos, 0 / length, sin) * radius, u = segment / tesselation (half a step on for the second pair), v = 0 / 1, the
// normal normalise(x, 0 / length, z) (the top vertices include the oblique shift and the length, as listed), the colour argument. Then the
// bottom centre (index 4 * tesselation: the origin, texture (1, 1), normal down) and, with `closeTop`, the top centre (the oblique shift and
// the length, texture (0, 0), normal up). The indices are the side strip over the vertex pairs (wrapping at the end), then a fan over the even
// vertices and, with `closeTop`, a fan over the odd ones - both around the vertex numbered last, as in the listing (the branch of the
// listing for 4 * tesselation == 2 cannot be reached and is not written).
boost::intrusive_ptr<IMesh> createCylinderMesh(std::uint32_t mask, video::IVideoDriver* driver, float radius, float length,
                                               std::uint32_t tesselation, const video::SColor& color, bool closeTop, float oblique) {
    const std::uint32_t sideVertices = 4 * tesselation;  // v117
    std::uint32_t vertexCount;                            // v118
    std::uint32_t indexFactor;                            // v9
    if (closeTop) {
        vertexCount = sideVertices + 2;
        indexFactor = 12;
    } else {
        indexFactor = 9;
        vertexCount = sideVertices + 1;
    }
    const boost::intrusive_ptr<CMeshBuffer> buffer = createMeshBuffer(mask, driver, vertexCount, indexFactor * 2 * tesselation);
    SViews views;
    mapMeshBuffer(buffer, &views.positions, &views.texCoords, &views.normals, &views.colors, 5);
    const float step = static_cast<float>(1.0 / static_cast<float>(tesselation));  // v115
    const float halfStep = static_cast<float>(step * 0.5);                          // v114
    const float halfAngle = static_cast<float>(static_cast<float>(step * 6.2832) * 0.5);  // v116
    const auto putNormal = [&](std::size_t index, float x, float y, float z) {
        if (views.normals.data != nullptr) {
            vector3d<float> normal{x, y, z};
            normal.normalize();
            putVector(views.normals, index, normal.X, normal.Y, normal.Z);
        }
    };
    const auto putColor = [&](std::size_t index) {
        if (views.colors.data != nullptr) {
            std::memcpy(elementAt(views.colors, index), &color, 4);
        }
    };
    const auto putUV = [&](std::size_t index, float u, float v) {
        if (views.texCoords.data != nullptr) {
            float* uv = reinterpret_cast<float*>(elementAt(views.texCoords, index));
            uv[0] = u;
            uv[1] = v;
        }
    };
    std::size_t vertex = 0;       // v10
    std::size_t bottomCentre = 0;  // v13
    std::size_t topCentre = 1;     // v12
    if (tesselation != 0) {
        float u = 0.0f;  // v14
        for (std::uint32_t segment = 0; segment != tesselation; ++segment) {
            const float angle = static_cast<float>(segment) * static_cast<float>(step * 6.2832);  // v16
            const float x0 = cosf(angle) * radius;                                                  // v17
            const float z0 = sinf(angle) * radius;                                                  // v18
            putVector(views.positions, vertex, x0, 0.0f, z0);
            putUV(vertex, u, 0.0f);
            putNormal(vertex, x0, 0.0f, z0);
            putColor(vertex);
            const float x1 = x0 + oblique;  // v25
            putVector(views.positions, vertex + 1, x1, length, z0);
            putUV(vertex + 1, u, 1.0f);
            putNormal(vertex + 1, x1, length, z0);
            putColor(vertex + 1);
            const float angle2 = angle + halfAngle;  // v33
            const float x2 = cosf(angle2) * radius;  // v34
            const float z2 = sinf(angle2) * radius;  // v36
            putVector(views.positions, vertex + 2, x2, 0.0f, z2);
            putUV(vertex + 2, u + halfStep, 0.0f);
            putNormal(vertex + 2, x2, 0.0f, z2);
            putColor(vertex + 2);
            putVector(views.positions, vertex + 3, oblique + x2, length, z2);
            putUV(vertex + 3, u + halfStep, 1.0f);
            putNormal(vertex + 3, oblique + x2, length, z2);
            putColor(vertex + 3);
            vertex += 4;
            if (tesselation == segment + 1) {
                break;
            }
            u = u + step;
        }
        topCentre = sideVertices + 1;
        bottomCentre = sideVertices;
    }
    putVector(views.positions, bottomCentre, 0.0f, 0.0f, 0.0f);
    putUV(bottomCentre, 1.0f, 1.0f);
    if (views.normals.data != nullptr) {
        putVector(views.normals, bottomCentre, 0.0f, -1.0f, 0.0f);
    }
    putColor(bottomCentre);
    if (closeTop) {
        putVector(views.positions, topCentre, oblique, length, 0.0f);
        putUV(topCentre, 0.0f, 0.0f);
        if (views.normals.data != nullptr) {
            putVector(views.normals, topCentre, 0.0f, 1.0f, 0.0f);
        }
        putColor(topCentre);
    }
    std::uint16_t* const indices = mapIndices(*buffer, 5);
    const std::uint32_t last = sideVertices - 2;  // v61
    // The side strip over the vertex pairs.
    std::uint16_t odd = 1;   // v64
    std::uint16_t next = 2;  // v65
    std::uint32_t even = 0;  // v66
    std::int32_t cursor = 0;
    do {
        indices[cursor + 0] = next;
        indices[cursor + 1] = static_cast<std::uint16_t>(even);
        even += 2;
        indices[cursor + 2] = odd;
        indices[cursor + 4] = odd;
        odd = static_cast<std::uint16_t>(odd + 2);
        indices[cursor + 3] = next;
        indices[cursor + 5] = odd;
        next = static_cast<std::uint16_t>(next + 2);
        cursor += 6;
    } while (last != even);
    // The closing pair of triangles of the strip.
    const std::uint16_t lastEven = static_cast<std::uint16_t>(sideVertices - 2);   // v73
    const std::uint16_t lastOdd = static_cast<std::uint16_t>(sideVertices - 1);    // v76
    indices[cursor + 0] = 0;
    indices[cursor + 1] = lastEven;
    indices[cursor + 2] = lastOdd;
    indices[cursor + 3] = 0;
    indices[cursor + 4] = lastOdd;
    indices[cursor + 5] = 1;
    cursor += 6;
    const std::uint16_t fanCentre = static_cast<std::uint16_t>(vertexCount - 1);  // v84
    // The fan over the even vertices.
    {
        std::uint16_t rim = 2;  // v88
        std::uint32_t k = 0;    // v89
        do {
            indices[cursor + 0] = fanCentre;
            indices[cursor + 1] = static_cast<std::uint16_t>(k);
            k += 2;
            indices[cursor + 2] = rim;
            cursor += 3;
            rim = static_cast<std::uint16_t>(rim + 2);
        } while (last != k);
    }
    indices[cursor + 0] = fanCentre;
    indices[cursor + 1] = lastEven;
    indices[cursor + 2] = 0;
    cursor += 3;
    if (closeTop) {
        std::uint16_t rim = 1;  // v95
        std::uint32_t k = 0;    // v96
        do {
            k += 2;
            indices[cursor + 0] = rim;
            rim = static_cast<std::uint16_t>(rim + 2);
            indices[cursor + 1] = fanCentre;
            indices[cursor + 2] = rim;
            cursor += 3;
        } while (last != k);
        indices[cursor + 0] = lastOdd;
        indices[cursor + 1] = fanCentre;
        indices[cursor + 2] = 1;
    }
    boost::intrusive_ptr<IMesh> mesh =
        makeMesh(buffer, boost::intrusive_ptr<video::CMaterial>(), boost::intrusive_ptr<video::CMaterialVertexAttributeMap>(), true);
    buffer->primitiveStream.m_indexBuffer->unmap();
    views.release();
    return mesh;
}

// 0x6d9fc4 _ZN6glitch5scene14createConeMeshEjPNS_5video12IVideoDriverEffjRKNS1_6SColorES6_f
// `tesselation` segments of two vertices at the base (the angle and half a step on), position (cos, 0, sin) * radius, normal normalise(x, 0, z),
// colour colorTop; then the apex (index 2 * tesselation: x = oblique, y = length, normal up, colour colorTop) and the base centre (the
// origin, normal down, colour colorBottom). The indices are the side fan around the apex and the base fan around the centre (a tesselation of
// 0 writes none: the listing would loop without end).
boost::intrusive_ptr<IMesh> createConeMesh(std::uint32_t mask, video::IVideoDriver* driver, float radius, float length,
                                           std::uint32_t tesselation, const video::SColor& colorTop, const video::SColor& colorBottom,
                                           float oblique) {
    const boost::intrusive_ptr<CMeshBuffer> buffer = createMeshBuffer(mask, driver, 2 * (tesselation + 1), 12 * tesselation);
    const float halfAngle = static_cast<float>(static_cast<float>(6.2832 / static_cast<float>(tesselation)) * 0.5);  // v68
    SViews views;
    mapMeshBuffer(buffer, &views.positions, nullptr, &views.normals, &views.colors, 5);
    std::size_t vertex = 0;  // v10
    std::size_t apex = 0;    // v29
    std::size_t centre = 1;  // v30
    if (tesselation != 0) {
        std::uint32_t segment = 0;  // v12
        while (true) {
            const float angle = static_cast<float>(segment) * static_cast<float>(6.2832 / static_cast<float>(tesselation));  // v13
            const float x0 = cosf(angle) * radius;  // v14
            const float z0 = sinf(angle) * radius;  // v15
            putVector(views.positions, vertex, x0, 0.0f, z0);
            ++segment;
            if (views.normals.data != nullptr) {
                vector3d<float> normal{x0, 0.0f, z0};
                normal.normalize();
                putVector(views.normals, vertex, normal.X, normal.Y, normal.Z);
            }
            if (views.colors.data != nullptr) {
                std::memcpy(elementAt(views.colors, vertex), &colorTop, 4);
            }
            const float angle2 = angle + halfAngle;  // v21
            const float x1 = cosf(angle2) * radius;  // v22
            const float z1 = sinf(angle2) * radius;  // v23
            putVector(views.positions, vertex + 1, x1, 0.0f, z1);
            if (views.normals.data != nullptr) {
                vector3d<float> normal{x1, 0.0f, z1};
                normal.normalize();
                putVector(views.normals, vertex + 1, normal.X, normal.Y, normal.Z);
            }
            if (views.colors.data != nullptr) {
                std::memcpy(elementAt(views.colors, vertex + 1), &colorTop, 4);
            }
            vertex += 2;
            if (segment == tesselation) {
                break;
            }
        }
        apex = 2 * static_cast<std::size_t>(segment);
        centre = apex + 1;
    }
    putVector(views.positions, apex, oblique, length, 0.0f);
    if (views.normals.data != nullptr) {
        putVector(views.normals, apex, 0.0f, 1.0f, 0.0f);
    }
    if (views.colors.data != nullptr) {
        std::memcpy(elementAt(views.colors, apex), &colorTop, 4);
    }
    putVector(views.positions, centre, 0.0f, 0.0f, 0.0f);
    if (views.normals.data != nullptr) {
        putVector(views.normals, centre, 0.0f, -1.0f, 0.0f);
    }
    if (views.colors.data != nullptr) {
        std::memcpy(elementAt(views.colors, centre), &colorBottom, 4);
    }
    std::uint16_t* const indices = mapIndices(*buffer, 5);
    if (tesselation != 0) {
        const std::uint32_t rim = 2 * tesselation;  // v28
        std::uint16_t* triangle = indices;
        std::uint32_t next = 1;   // v40
        std::uint16_t first = 0;  // v41
        do {
            triangle[0] = first;
            triangle[1] = static_cast<std::uint16_t>(rim);
            triangle[2] = static_cast<std::uint16_t>(next++);
            ++first;
            triangle += 3;
        } while (next != rim);
        std::int32_t cursor = static_cast<std::int32_t>(3 * rim);  // v43
        indices[cursor - 3] = static_cast<std::uint16_t>(rim - 1);
        indices[cursor - 2] = static_cast<std::uint16_t>(rim);
        indices[cursor - 1] = 0;
        const std::uint16_t centreIndex = static_cast<std::uint16_t>(rim + 1);  // v51
        std::uint16_t* fan = indices + cursor;
        std::uint32_t upper = 1;  // v55
        std::uint16_t lower = 0;  // v56
        do {
            fan[0] = centreIndex;
            fan[1] = lower;
            fan[2] = static_cast<std::uint16_t>(upper++);
            ++lower;
            fan += 3;
        } while (upper != rim);
        cursor = static_cast<std::int32_t>(6 * rim - 3);
        indices[cursor] = centreIndex;
        indices[cursor + 1] = static_cast<std::uint16_t>(rim - 1);
        indices[cursor + 2] = 0;
    }
    boost::intrusive_ptr<IMesh> mesh =
        makeMesh(buffer, boost::intrusive_ptr<video::CMaterial>(), boost::intrusive_ptr<video::CMaterialVertexAttributeMap>(), true);
    buffer->primitiveStream.m_indexBuffer->unmap();
    views.release();
    return mesh;
}

// 0x6da6d8 _ZN6glitch5scene15createArrowMeshEjPNS_5video12IVideoDriverEjjffffNS1_6SColorES4_
// The shaft is an open cylinder (radius width0, length cylinderHeight, colour colorCylinder); the head is a cone (radius width1, length
// height - cylinderHeight, side colour colorCone, base colour colorCylinder). Every vertex of the head's buffers is moved up by cylinderHeight
// and the buffers are added to the shaft's mesh (whose box is not recalculated).
boost::intrusive_ptr<IMesh> createArrowMesh(std::uint32_t mask, video::IVideoDriver* driver, std::uint32_t tesselationCylinder,
                                            std::uint32_t tesselationCone, float height, float cylinderHeight, float width0, float width1,
                                            video::SColor colorCylinder, video::SColor colorCone) {
    boost::intrusive_ptr<IMesh> cylinder = createCylinderMesh(mask, driver, width0, cylinderHeight, tesselationCylinder, colorCylinder, false, 0.0f);
    boost::intrusive_ptr<IMesh> cone =
        createConeMesh(mask, driver, width1, height - cylinderHeight, tesselationCone, colorCone, colorCylinder, 0.0f);
    CMesh* shaft = static_cast<CMesh*>(cylinder.get());
    for (std::uint32_t i = 0; i < cone->getMeshBufferCount(); ++i) {
        boost::intrusive_ptr<CMeshBuffer> coneBuffer = cone->getMeshBuffer(i);
        video::CVertexStreams& streams = *coneBuffer->vertexStreams;
        SVertexStream& position = streams.m_streams[0];
        std::uint8_t* base = position.buffer->map(3) + position.offset;
        for (std::uint32_t vertex = 0; vertex < streams.m_field08; ++vertex) {
            float* element = reinterpret_cast<float*>(base + static_cast<std::size_t>(position.field0e) * vertex);
            element[1] = element[1] + cylinderHeight;
        }
        shaft->addMeshBuffer(coneBuffer, boost::intrusive_ptr<video::CMaterial>(), boost::intrusive_ptr<video::CMaterialVertexAttributeMap>());
        if (base != nullptr) {
            position.buffer->unmap();
        }
    }
    return cylinder;
}

}  // namespace glitch::scene
