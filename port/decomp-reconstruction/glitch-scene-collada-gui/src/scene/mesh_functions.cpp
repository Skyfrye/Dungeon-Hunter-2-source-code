// The glitch::scene mesh manipulation functions (declarations: scene/mesh_functions.hpp): flipSurfaces, createMeshCopy,
// createMeshWith2TCoords, setVertexColors, setVertexColorAlpha, makePlanarTextureMapping, createMeshWithTangents, scale,
// recalculateNormals and transform, with the helpers of the original's anonymous namespace (getTriangleIndices, swapIndices,
// getAngleWeight, calculateTangents and the buffer overload of transform). This file replaces the stand-ins of
// src/recon/slice_07.cpp (namespace recon_07).
//
// The functions work directly on the vertex stream table (video::CVertexStreams) and the index buffer of each CMeshBuffer: the
// streams are mapped for the duration of a function (IBuffer::map / unmap, access 1 read, 3 / 4 / 5 write) and addressed as
// data + offset + stride * vertex. The original keeps its streams in the order of the attribute numbers; a table holds one stream
// per bit of its attribute mask, so after position (0) and the texture coordinates (1 .. 16) comes the normal (17), the colour (18)
// and the tangent (20) and binormal (24) the tangent code adds.
#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"

#include <cmath>
#include <cstring>
#include <utility>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::scene {

namespace {

using core::vector2d;
using core::vector3d;
using video::SVertexStream;

// E_INDEX_TYPE (CPrimitiveStream::m_indexType) and E_PRIMITIVE_TYPE (m_primitiveType).
constexpr std::uint32_t kIndex8 = 0;
constexpr std::uint32_t kIndex16 = 1;
constexpr std::uint32_t kIndex32 = 2;
constexpr std::uint32_t kPrimitiveTriangleStrip = 4;
constexpr std::uint32_t kPrimitiveTriangleFan = 5;
constexpr std::uint32_t kPrimitiveTriangles = 6;
constexpr std::uint32_t kPrimitiveQuadStrip = 7;
constexpr std::uint32_t kPrimitiveQuads = 8;

// Vertex attribute numbers (the order of a stream table; confirmed by the table of default value types and by the mask tests below).
constexpr std::uint32_t kAttributeTexCoord0 = 1;
constexpr std::uint32_t kAttributeNormal = 17;
constexpr std::uint32_t kAttributeColor = 18;
constexpr std::uint32_t kAttributeTangent = 20;
constexpr std::uint32_t kMaskTexCoord0 = 1u << kAttributeTexCoord0;
constexpr std::uint32_t kMaskNormal = 1u << kAttributeNormal;
constexpr std::uint32_t kMaskColor = 1u << kAttributeColor;
constexpr std::uint32_t kMaskTangent = 1u << kAttributeTangent;
constexpr std::uint32_t kMaskBinormal = 1u << 24;

// The value type code of a floating-point stream (index into SVertexAttributeTypeInspection::ValueTypeSize).
constexpr std::uint16_t kFloatType = 6;

float loadFloat(const std::uint8_t* p) {
    float value;
    std::memcpy(&value, p, sizeof(float));
    return value;
}

void storeFloat(std::uint8_t* p, float value) {
    std::memcpy(p, &value, sizeof(float));
}

vector3d<float> loadVec3(const std::uint8_t* p) {
    return vector3d<float>{loadFloat(p), loadFloat(p + 4), loadFloat(p + 8)};
}

void storeVec3(std::uint8_t* p, const vector3d<float>& v) {
    storeFloat(p, v.X);
    storeFloat(p + 4, v.Y);
    storeFloat(p + 8, v.Z);
}

vector2d<float> loadVec2(const std::uint8_t* p) {
    return vector2d<float>{loadFloat(p), loadFloat(p + 4)};
}

// IBuffer::map with the access numbers the original passes: 1 is the read form (the const overload), the others the write form.
std::uint8_t* mapBuffer(video::IBuffer& buffer, int access) {
    if (access == 1) {
        return std::as_const(buffer).map(static_cast<video::E_BUFFER_READ_MAP_ACCESS>(1));
    }
    return buffer.map(static_cast<video::E_BUFFER_MAP_ACCESS>(access));
}

// A buffer mapped for the duration of a function: `data` is the mapped pointer plus the byte offset (null when the buffer has no
// data); the destructor releases the map (IBuffer::unmap) when there was one. The original adds the offset to a null base as well
// and unmaps on the sum; a null base is treated as "not mapped" here.
class Mapped {
public:
    Mapped() = default;
    Mapped(video::IBuffer* buffer, std::uint32_t offset, int access) : buffer_(buffer) {
        if (buffer_ != nullptr) {
            std::uint8_t* base = mapBuffer(*buffer_, access);
            data = base != nullptr ? base + offset : nullptr;
        }
    }
    Mapped(SVertexStream& stream, int access) : Mapped(stream.buffer.get(), stream.offset, access) {}
    // Maps another buffer into an empty view.
    void assign(video::IBuffer* buffer, std::uint32_t offset, int access) {
        release();
        buffer_ = buffer;
        if (buffer_ != nullptr) {
            std::uint8_t* base = mapBuffer(*buffer_, access);
            data = base != nullptr ? base + offset : nullptr;
        }
    }
    Mapped(const Mapped&) = delete;
    Mapped& operator=(const Mapped&) = delete;
    ~Mapped() { release(); }
    void release() {
        if (data != nullptr) {
            buffer_->unmap();
            data = nullptr;
        }
    }
    std::uint8_t* data = nullptr;

private:
    video::IBuffer* buffer_ = nullptr;
};

// CVertexStreams::getStream over the entries after the texture coordinates (the original starts its search at index count0c + 1):
// the stream of the attribute, or null.
SVertexStream* findStream(video::CVertexStreams& streams, std::uint32_t attribute) {
    const std::size_t first = static_cast<std::size_t>(streams.m_count0c) + 1;
    if (first > streams.m_streams.size()) {
        return nullptr;
    }
    SVertexStream* begin = streams.m_streams.data() + first;
    SVertexStream* end = streams.m_streams.data() + streams.m_streams.size();
    SVertexStream* found = streams.getStream(attribute, begin, end);
    return found == end ? nullptr : found;
}

// ---- The helpers of the original's anonymous namespace -------------------------------------------------------------------------------

// 0x59a0a4 glitch::scene::(anonymous namespace)::getTriangleIndices(E_INDEX_TYPE, void const*, unsigned, unsigned&, unsigned&, unsigned&)
// The three indices that start at element `first` of an array of 8, 16 or 32-bit indices; an unknown type leaves them unchanged.
void getTriangleIndices(std::uint32_t indexType, const std::uint8_t* indices, std::uint32_t first, std::uint32_t& i0, std::uint32_t& i1,
                        std::uint32_t& i2) {
    switch (indexType) {
        case kIndex16: {
            std::uint16_t v[3];
            std::memcpy(v, indices + 2u * first, sizeof(v));
            i0 = v[0];
            i1 = v[1];
            i2 = v[2];
            break;
        }
        case kIndex32: {
            std::uint32_t v[3];
            std::memcpy(v, indices + 4u * first, sizeof(v));
            i0 = v[0];
            i1 = v[1];
            i2 = v[2];
            break;
        }
        case kIndex8:
            i0 = indices[first];
            i1 = indices[first + 1];
            i2 = indices[first + 2];
            break;
        default:
            break;
    }
}

// 0x59a130 glitch::scene::(anonymous namespace)::swapIndices(E_INDEX_TYPE, void*, unsigned, unsigned)
// Swaps the elements a and b of an array of 8, 16 or 32-bit indices.
void swapIndices(std::uint32_t indexType, std::uint8_t* indices, std::uint32_t a, std::uint32_t b) {
    switch (indexType) {
        case kIndex16: {
            std::uint16_t x, y;
            std::memcpy(&x, indices + 2u * a, 2);
            std::memcpy(&y, indices + 2u * b, 2);
            std::memcpy(indices + 2u * a, &y, 2);
            std::memcpy(indices + 2u * b, &x, 2);
            break;
        }
        case kIndex32: {
            std::uint32_t x, y;
            std::memcpy(&x, indices + 4u * a, 4);
            std::memcpy(&y, indices + 4u * b, 4);
            std::memcpy(indices + 4u * a, &y, 4);
            std::memcpy(indices + 4u * b, &x, 4);
            break;
        }
        case kIndex8:
            std::swap(indices[a], indices[b]);
            break;
        default:
            break;
    }
}

float squaredDistance(const vector3d<float>& a, const vector3d<float>& b) {
    const float dx = a.X - b.X;
    const float dy = a.Y - b.Y;
    const float dz = a.Z - b.Z;
    return (dx * dx + dy * dy) + dz * dz;
}

// 0x59aa28 glitch::scene::(anonymous namespace)::getAngleWeight(vector3d const&, vector3d const&, vector3d const&)
// The three angles of the triangle p0 p1 p2 (law of cosines on the squared edge lengths): out.X at p0, out.Y at p1, out.Z at p2.
vector3d<float> getAngleWeight(const vector3d<float>& p0, const vector3d<float>& p1, const vector3d<float>& p2) {
    const float q1r2 = squaredDistance(p1, p2);  // |p1 p2|^2
    const float lenP1P2 = std::sqrt(q1r2);
    const float p0r2 = squaredDistance(p0, p2);  // |p0 p2|^2
    const float lenP0P2 = std::sqrt(p0r2);
    const float p0q1 = squaredDistance(p0, p1);  // |p0 p1|^2
    const float lenP0P1 = std::sqrt(p0q1);
    const float twiceP0P2 = lenP0P2 + lenP0P2;
    vector3d<float> out;
    out.X = std::acos(((p0r2 + p0q1) - q1r2) / (lenP0P1 * twiceP0P2));
    out.Y = std::acos(((p0q1 - p0r2) + q1r2) / (lenP0P1 * (lenP1P2 + lenP1P2)));
    out.Z = std::acos(((p0r2 - p0q1) + q1r2) / (lenP1P2 * twiceP0P2));
    return out;
}

// 0x59a620 glitch::scene::(anonymous namespace)::calculateTangents(vector3d&, vector3d&, vector3d&, vector3d const& x3, vector2d const& x3)
// The normal, tangent and binormal of the triangle p0 p1 p2 with the texture coordinates uv0 uv1 uv2. The normal is the normalized
// cross product of (p0 - p1) and (p2 - p0); the binormal is built from the u differences and the tangent from the v differences
// (each normalized); when the frame is left-handed (the normal and the cross product of tangent and binormal agree in direction) the
// tangent and the binormal are negated. Returns whether they were.
bool calculateTangents(vector3d<float>& normal, vector3d<float>& tangent, vector3d<float>& binormal, const vector3d<float>& p0,
                       const vector3d<float>& p1, const vector3d<float>& p2, const vector2d<float>& uv0, const vector2d<float>& uv1,
                       const vector2d<float>& uv2) {
    const float e1x = p0.X - p1.X;
    const float e1y = p0.Y - p1.Y;
    const float e1z = p0.Z - p1.Z;
    const float e2x = p2.X - p0.X;
    const float e2y = p2.Y - p0.Y;
    const float e2z = p2.Z - p0.Z;
    normal.X = (e1z * -e2y) + (e1y * e2z);
    normal.Y = (e1x * -e2z) + (e1z * e2x);
    normal.Z = (e1y * -e2x) + (e1x * e2y);
    normal.normalize();
    const float u0 = uv0.X - uv1.X;
    const float u1 = uv2.X - uv0.X;
    binormal.X = (u1 * e1x) - (u0 * e2x);
    binormal.Y = (u1 * e1y) - (u0 * e2y);
    binormal.Z = (u1 * e1z) - (u0 * e2z);
    binormal.normalize();
    const float v0 = uv0.Y - uv1.Y;
    const float v1 = uv2.Y - uv0.Y;
    tangent.X = (v1 * e1x) - (v0 * e2x);
    tangent.Y = (v1 * e1y) - (v0 * e2y);
    tangent.Z = (v1 * e1z) - (v0 * e2z);
    tangent.normalize();
    const float tz = tangent.Z;
    const float by = binormal.Y;
    const float ty = tangent.Y;
    const float negTx = -tangent.X;
    const float term0 = (((-ty) * binormal.Z) + (tz * by)) * normal.X;
    const float term1 = ((-tz) * binormal.X) + (binormal.Z * tangent.X);
    const float sum = (term0 + (term1 * normal.Y)) + (((by * negTx) + (ty * binormal.X)) * normal.Z);
    const bool flip = sum < 0.0f;
    if (flip) {
        tangent.X = negTx;
        tangent.Y = -tangent.Y;
        tangent.Z = -tangent.Z;
        binormal.X = -binormal.X;
        binormal.Y = -binormal.Y;
        binormal.Z = -binormal.Z;
    }
    return flip;
}

// 0x59e728 glitch::scene::(anonymous namespace)::transform(intrusive_ptr<CMeshBuffer> const&, CMatrix4 const&, aabbox3d*)
void transformBuffer(const boost::intrusive_ptr<CMeshBuffer>& buffer, const core::CMatrix4<float>& matrix, core::aabbox3d<float>* box) {
    video::CVertexStreams& streams = *buffer->vertexStreams;
    const std::uint32_t vertexCount = streams.m_field08;
    if (vertexCount == 0) {
        return;
    }
    SVertexStream& positionStream = streams.m_streams[0];
    SVertexStream* normalStream = findStream(streams, kAttributeNormal);
    if (!(positionStream.field0a == kFloatType && positionStream.field0c == 3 && normalStream != nullptr &&
          normalStream->field0a == kFloatType && normalStream->field0c == 3)) {
        os::Printer::log("transform", "supports only floating-point streams of array size 3", ELL_INFORMATION);
        return;
    }
    Mapped positions(positionStream, 5);
    Mapped normals(*normalStream, 5);
    if (positions.data == nullptr) {
        return;
    }
    const float* m = matrix.M;
    for (std::uint32_t i = 0; i < vertexCount; ++i) {
        std::uint8_t* position = positions.data + static_cast<std::size_t>(positionStream.field0e) * i;
        const vector3d<float> p = loadVec3(position);
        vector3d<float> t;
        t.X = (((p.X * m[0]) + (p.Y * m[4])) + (p.Z * m[8])) + m[12];
        t.Y = (((p.X * m[1]) + (p.Y * m[5])) + (p.Z * m[9])) + m[13];
        t.Z = (((p.X * m[2]) + (p.Y * m[6])) + (p.Z * m[10])) + m[14];
        storeVec3(position, t);
        if (normals.data != nullptr) {
            std::uint8_t* normalPointer = normals.data + static_cast<std::size_t>(normalStream->field0e) * i;
            const vector3d<float> n = loadVec3(normalPointer);
            vector3d<float> r;
            r.X = ((n.X * m[0]) + (n.Y * m[4])) + (n.Z * m[8]);
            r.Y = ((n.X * m[1]) + (n.Y * m[5])) + (n.Z * m[9]);
            r.Z = ((n.X * m[2]) + (n.Y * m[6])) + (n.Z * m[10]);
            r.normalize();
            storeVec3(normalPointer, r);
        }
        if (box != nullptr) {
            // The binary resets the box to the vertex on every pass instead of growing it.
            box->MinEdge = t;
            box->MaxEdge = t;
        }
    }
}

// The colour stream of a buffer when the table has one (mask bit 18), else null.
SVertexStream* colorStream(video::CVertexStreams& streams) {
    if ((streams.m_attributeMask & kMaskColor) == 0) {
        return nullptr;
    }
    return findStream(streams, kAttributeColor);
}

}  // namespace

// ---- Simple handle functions ---------------------------------------------------------------------------------------------------------

// 0x59a188 _ZN6glitch5scene26createMeshUniquePrimitivesERKN5boost13intrusive_ptrINS0_5IMeshEEE
boost::intrusive_ptr<IMesh> createMeshUniquePrimitives(const boost::intrusive_ptr<IMesh>& mesh) {
    return mesh;
}

// 0x59a1a4 _ZN6glitch5scene16createMeshWeldedERKN5boost13intrusive_ptrINS0_5IMeshEEEf
boost::intrusive_ptr<IMesh> createMeshWelded(const boost::intrusive_ptr<IMesh>& mesh, float /*tolerance*/) {
    return mesh;
}

// ---- flipSurfaces --------------------------------------------------------------------------------------------------------------------

// 0x59b084 _ZN6glitch5scene12flipSurfacesERKN5boost13intrusive_ptrINS0_5IMeshEEE
void flipSurfaces(const boost::intrusive_ptr<IMesh>& mesh) {
    if (!mesh) {
        return;
    }
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    for (std::uint32_t pass = 0; pass < bufferCount; ++pass) {
        // The binary passes the constant 0 to getMeshBuffer on every pass.
        boost::intrusive_ptr<CMeshBuffer> buffer = mesh->getMeshBuffer(0);
        const video::CPrimitiveStream& primitives = buffer->primitiveStream;
        if (!primitives.m_indexBuffer) {
            os::Printer::log("flipSurfaces", "flipping unindexed surfaces not supported", ELL_INFORMATION);
            continue;
        }
        Mapped indices(primitives.m_indexBuffer.get(), primitives.m_offset, 3);
        const std::uint32_t count = primitives.m_count;
        const std::uint32_t indexType = primitives.m_indexType;
        if (indices.data == nullptr) {
            continue;
        }
        // The loops of the binary have no end test beyond the first index of a group; the groups that would run past the count are
        // left out here (a well-formed buffer has none).
        switch (primitives.m_primitiveType) {
            case kPrimitiveTriangleStrip:
            case kPrimitiveQuadStrip:
                for (std::uint32_t i = 0; i + 1 < count; i += 2) {
                    swapIndices(indexType, indices.data, i, i + 1);
                }
                break;
            case kPrimitiveTriangleFan:
                if ((count >> 1) > 1) {
                    for (std::uint32_t i = 1; i != (count >> 1); ++i) {
                        swapIndices(indexType, indices.data, i, count - i);
                    }
                }
                break;
            case kPrimitiveTriangles:
                for (std::uint32_t i = 0; i + 2 < count; i += 3) {
                    swapIndices(indexType, indices.data, i + 1, i + 2);
                }
                break;
            case kPrimitiveQuads:
                for (std::uint32_t i = 0; i + 3 < count; i += 4) {
                    swapIndices(indexType, indices.data, i + 1, i + 3);
                }
                break;
            default:
                break;
        }
    }
}

// ---- createMeshCopy ------------------------------------------------------------------------------------------------------------------

// 0x59b2a4 _ZN6glitch5scene14createMeshCopyERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS_5video12IVideoDriverEjj
boost::intrusive_ptr<IMesh> createMeshCopy(const boost::intrusive_ptr<IMesh>& mesh, video::IVideoDriver* driver, std::uint32_t mask,
                                           std::uint32_t extra) {
    if (!mesh) {
        return boost::intrusive_ptr<IMesh>();
    }
    boost::intrusive_ptr<CMesh> result(new CMesh(), true);
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    for (std::uint32_t index = 0; index < bufferCount; ++index) {
        boost::intrusive_ptr<CMeshBuffer> source = mesh->getMeshBuffer(index);
        video::CVertexStreams& sourceStreams = *source->vertexStreams;
        mask &= extra | sourceStreams.m_attributeMask;

        // The index buffer is cloned and given a private copy of its data; the new buffer renders the same range.
        const video::CPrimitiveStream& sourcePrimitives = source->primitiveStream;
        video::CPrimitiveStream primitives;
        if (sourcePrimitives.m_indexBuffer) {
            boost::intrusive_ptr<video::IBuffer> indexCopy = sourcePrimitives.m_indexBuffer->clone();
            if (indexCopy) {
                indexCopy->copy();
            }
            primitives.m_indexBuffer = indexCopy;
        }
        primitives.m_offset = sourcePrimitives.m_offset;
        primitives.m_count = sourcePrimitives.m_count;
        primitives.m_vertexStart = sourcePrimitives.m_vertexStart;
        primitives.m_vertexEnd = sourcePrimitives.m_vertexEnd;
        primitives.m_indexType = sourcePrimitives.m_indexType;
        primitives.m_primitiveType = sourcePrimitives.m_primitiveType;
        boost::intrusive_ptr<CMeshBuffer> copy(new CMeshBuffer(mask, primitives, false), true);

        // One new vertex buffer holds all streams, laid out one after the other in the order of the attributes.
        video::CVertexStreams& streams = *copy->vertexStreams;
        const std::uint32_t vertexCount = sourceStreams.m_field08;
        streams.m_field08 = vertexCount;
        boost::intrusive_ptr<video::IBuffer> vertexBuffer = driver->createBuffer(0, 4, 0, nullptr, true);
        std::uint16_t stride = 0;
        {
            std::size_t sourceIndex = 0;
            for (SVertexStream& entry : streams.m_streams) {
                while (sourceIndex < sourceStreams.m_streams.size() && sourceStreams.m_streams[sourceIndex].attribute < entry.attribute) {
                    ++sourceIndex;
                }
                entry.offset = stride;
                video::SVertexStreamData data;
                data.buffer = vertexBuffer;
                data.offset = stride;
                if (sourceIndex < sourceStreams.m_streams.size() && sourceStreams.m_streams[sourceIndex].attribute == entry.attribute) {
                    data.field08 = sourceStreams.m_streams[sourceIndex].field0a;
                    data.field0c = sourceStreams.m_streams[sourceIndex].field0c;
                } else {
                    // An attribute the source lacks: the default value type and component count.
                    const bool known = entry.attribute < 30;
                    data.field08 = known ? video::detail::SVertexAttributeTypeInspection::Defaults[entry.attribute].valueType : 0;
                    data.field0c = known ? video::detail::SVertexAttributeTypeInspection::Defaults[entry.attribute].componentCount : 0;
                }
                streams.setStream(&entry, data, false);
                stride = static_cast<std::uint16_t>(stride + entry.field0c * video::detail::SVertexAttributeTypeInspection::ValueTypeSize[entry.field0a]);
            }
        }
        const std::size_t bufferSize = static_cast<std::size_t>(vertexCount) * stride;
        auto* storage = new std::uint8_t[bufferSize > 0 ? bufferSize : 1];
        vertexBuffer->reset(static_cast<std::uint32_t>(bufferSize), storage, true);
        std::memset(storage, 0, bufferSize);

        // The data of the attributes both tables share is copied vertex by vertex.
        {
            std::size_t sourceIndex = 0;
            for (SVertexStream& entry : streams.m_streams) {
                entry.field0e = stride;
                while (sourceIndex < sourceStreams.m_streams.size() && sourceStreams.m_streams[sourceIndex].attribute < entry.attribute) {
                    ++sourceIndex;
                }
                if (sourceIndex >= sourceStreams.m_streams.size()) {
                    continue;
                }
                SVertexStream& from = sourceStreams.m_streams[sourceIndex];
                if (from.attribute != entry.attribute) {
                    continue;
                }
                Mapped sourceData(from, 1);
                Mapped destination(entry, 4);
                const std::size_t elementSize =
                    static_cast<std::size_t>(entry.field0c) * video::detail::SVertexAttributeTypeInspection::ValueTypeSize[entry.field0a];
                if (sourceData.data == nullptr || destination.data == nullptr) {
                    continue;
                }
                for (std::uint32_t vertex = 0; vertex < vertexCount; ++vertex) {
                    std::memcpy(destination.data + static_cast<std::size_t>(vertex) * stride,
                                sourceData.data + static_cast<std::size_t>(vertex) * from.field0e, elementSize);
                }
            }
        }
        result->addMeshBuffer(copy, mesh->getMaterial(index), mesh->getMaterialVertexAttributeMap(index));
    }
    result->setBoundingBox(mesh->getBoundingBox());
    // The listing's tail (0x59b7c8..0x59b814) is
    //   result->setBoundingBox(mesh->getBoundingBox());  *a1 = result.px; ++result->referenceCounter; drop(result.px);
    // i.e. it returns the local handle through the intrusive_ptr upcast, which adds a use, and only then drops the
    // local's reference. Building the returned handle from result.get() (the single-argument, taking constructor)
    // adds no use, so the local's destructor dropped the object's only reference and the caller held a freed CMesh.
    return result;
}

// 0x59ba3c _ZN6glitch5scene22createMeshWith2TCoordsERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS_5video12IVideoDriverE
boost::intrusive_ptr<IMesh> createMeshWith2TCoords(const boost::intrusive_ptr<IMesh>& mesh, video::IVideoDriver* driver) {
    return createMeshCopy(mesh, driver, 0xFFFFFFFFu, 6u);
}

// ---- Vertex colours ------------------------------------------------------------------------------------------------------------------

// 0x59ba90 _ZN6glitch5scene15setVertexColorsERKN5boost13intrusive_ptrINS0_5IMeshEEENS_5video6SColorE
void setVertexColors(const boost::intrusive_ptr<IMesh>& mesh, video::SColor color) {
    if (!mesh) {
        return;
    }
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    for (std::uint32_t index = 0; index < bufferCount; ++index) {
        boost::intrusive_ptr<CMeshBuffer> buffer = mesh->getMeshBuffer(index);
        video::CVertexStreams& streams = *buffer->vertexStreams;
        SVertexStream* stream = colorStream(streams);
        if (stream == nullptr) {
            continue;
        }
        if (!(stream->field0a == 1 && stream->field0c == 4)) {
            os::Printer::log("setVertexColors", "unsupported color conversion for stream", ELL_INFORMATION);
            continue;
        }
        Mapped colors(*stream, 5);
        if (colors.data == nullptr) {
            continue;
        }
        for (std::uint32_t vertex = 0; vertex < streams.m_field08; ++vertex) {
            std::uint8_t* p = colors.data + static_cast<std::size_t>(stream->field0e) * vertex;
            p[0] = color.component(0);
            p[1] = color.component(1);
            p[2] = color.component(2);
            p[3] = color.component(3);
        }
    }
}

// 0x59bc60 _ZN6glitch5scene19setVertexColorAlphaERKN5boost13intrusive_ptrINS0_5IMeshEEEi
void setVertexColorAlpha(const boost::intrusive_ptr<IMesh>& mesh, int alpha) {
    if (!mesh) {
        return;
    }
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    for (std::uint32_t index = 0; index < bufferCount; ++index) {
        boost::intrusive_ptr<CMeshBuffer> buffer = mesh->getMeshBuffer(index);
        video::CVertexStreams& streams = *buffer->vertexStreams;
        SVertexStream* stream = colorStream(streams);
        if (stream == nullptr || stream->field0c != 4 || stream->field0a > kFloatType) {
            continue;
        }
        Mapped colors(*stream, 3);
        if (colors.data == nullptr) {
            continue;
        }
        for (std::uint32_t vertex = 0; vertex < streams.m_field08; ++vertex) {
            std::uint8_t* p = colors.data + static_cast<std::size_t>(stream->field0e) * vertex;
            switch (stream->field0a) {
                case 0:
                case 1:
                    p[3] = static_cast<std::uint8_t>(alpha);
                    break;
                case 2:
                case 3: {
                    const std::uint16_t value = static_cast<std::uint16_t>(alpha);
                    std::memcpy(p + 6, &value, 2);
                    break;
                }
                case 4:
                case 5: {
                    const std::uint32_t value = static_cast<std::uint32_t>(alpha);
                    std::memcpy(p + 12, &value, 4);
                    break;
                }
                default:  // 6, float
                    storeFloat(p + 12, static_cast<float>(alpha) / 255.0f);
                    break;
            }
        }
    }
}

// ---- Planar texture mapping ----------------------------------------------------------------------------------------------------------

// 0x59c198 _ZN6glitch5scene24makePlanarTextureMappingERKN5boost13intrusive_ptrINS0_5IMeshEEEf
void makePlanarTextureMapping(const boost::intrusive_ptr<IMesh>& mesh, float scale) {
    if (!mesh) {
        return;
    }
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    for (std::uint32_t index = 0; index < bufferCount; ++index) {
        boost::intrusive_ptr<CMeshBuffer> buffer = mesh->getMeshBuffer(index);
        const video::CPrimitiveStream& primitives = buffer->primitiveStream;
        if (!primitives.m_indexBuffer) {
            os::Printer::log("makePlanarTextureMapping", "planar texture mapping not supported for unindexed meshes", ELL_INFORMATION);
            continue;
        }
        if (primitives.m_primitiveType != kPrimitiveTriangles) {
            os::Printer::log("makePlanarTextureMapping", "planar texture mapping only supported for triangles", ELL_INFORMATION);
            continue;
        }
        video::CVertexStreams& streams = *buffer->vertexStreams;
        if ((streams.m_attributeMask & kMaskTexCoord0) == 0 || streams.m_streams.size() < 2) {
            continue;
        }
        SVertexStream& positionStream = streams.m_streams[0];
        SVertexStream& texCoordStream = streams.m_streams[1];
        if (!(positionStream.field0a == kFloatType && positionStream.field0c > 2 && texCoordStream.field0a == kFloatType &&
              texCoordStream.field0c == 2)) {
            os::Printer::log("makePlanarTextureMapping",
                             "supports only floating-point streams of array size >=3 (pos) and =2 (texcoord)", ELL_INFORMATION);
            continue;
        }
        Mapped texCoords(texCoordStream, 5);
        const bool shared = positionStream.buffer == texCoordStream.buffer;
        Mapped positions(positionStream, shared ? 5 : 1);
        Mapped indices(primitives.m_indexBuffer.get(), primitives.m_offset, 1);
        if (texCoords.data == nullptr || positions.data == nullptr || indices.data == nullptr) {
            continue;
        }
        const std::uint32_t count = primitives.m_count;
        // The binary steps the first element by one, so every window of three consecutive indices is mapped; the last two windows
        // would read past the index count and are left out.
        for (std::uint32_t first = 0; first + 2 < count; ++first) {
            std::uint32_t triangle[3] = {0, 0, 0};
            getTriangleIndices(primitives.m_indexType, indices.data, first, triangle[0], triangle[1], triangle[2]);
            vector3d<float> corner[3];
            for (int k = 0; k < 3; ++k) {
                corner[k] = loadVec3(positions.data + static_cast<std::size_t>(positionStream.field0e) * triangle[k]);
            }
            core::plane3d<float> plane;
            plane.setPlane(corner[0], corner[1], corner[2]);
            const float ax = std::fabs(plane.Normal.X);
            const float ay = std::fabs(plane.Normal.Y);
            const float az = std::fabs(plane.Normal.Z);
            for (int k = 0; k < 3; ++k) {
                float u;
                float v;
                if (!(ax <= ay || ax <= az)) {
                    u = corner[k].Y;  // x dominant: (y, z)
                    v = corner[k].Z;
                } else if (!(ax >= ay || ay <= az)) {
                    u = corner[k].X;  // y dominant: (x, z)
                    v = corner[k].Z;
                } else {
                    u = corner[k].X;  // z dominant: (x, y)
                    v = corner[k].Y;
                }
                std::uint8_t* target = texCoords.data + static_cast<std::size_t>(texCoordStream.field0e) * triangle[k];
                storeFloat(target, u * scale);
                storeFloat(target + 4, v * scale);
            }
        }
    }
}

// ---- Tangents ------------------------------------------------------------------------------------------------------------------------

// 0x59c970 _ZN6glitch5scene22createMeshWithTangentsERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS_5video12IVideoDriverEbbb
boost::intrusive_ptr<IMesh> createMeshWithTangents(const boost::intrusive_ptr<IMesh>& mesh, video::IVideoDriver* driver,
                                                   bool recalculateNormals, bool smooth, bool angleWeighted) {
    boost::intrusive_ptr<IMesh> result = createMeshCopy(mesh, driver, 0xFFFFFFFFu, 0x1100000u);
    if (!mesh) {
        return result;
    }
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    for (std::uint32_t index = 0; index < bufferCount; ++index) {
        boost::intrusive_ptr<CMeshBuffer> buffer = mesh->getMeshBuffer(index);
        const video::CPrimitiveStream& primitives = buffer->primitiveStream;
        if (primitives.m_primitiveType != kPrimitiveTriangles) {
            os::Printer::log("createMeshWithTangents", "computing tangents only supported for triangles", ELL_INFORMATION);
            continue;
        }
        video::CVertexStreams& streams = *buffer->vertexStreams;
        const std::uint32_t requiredMask = kMaskTexCoord0 | kMaskTangent | kMaskBinormal;
        if ((streams.m_attributeMask & requiredMask) != requiredMask) {
            os::Printer::log("createMeshWithTangents", "to compute tangents, we need texcoord0, tangent and binormal vertex attributes",
                             ELL_INFORMATION);
            continue;
        }
        SVertexStream* normalStream =
            (recalculateNormals && (streams.m_attributeMask & kMaskNormal) != 0) ? findStream(streams, kAttributeNormal) : nullptr;
        SVertexStream* tangentStream = findStream(streams, kAttributeTangent);
        // The stream after the tangent one is the binormal.
        SVertexStream* binormalStream = nullptr;
        if (tangentStream != nullptr && tangentStream + 1 != streams.m_streams.data() + streams.m_streams.size()) {
            binormalStream = tangentStream + 1;
        }
        if (streams.m_streams.size() < 2 || tangentStream == nullptr || binormalStream == nullptr) {
            os::Printer::log("createMeshWithTangents",
                             "computing tangets only supported for floating-point streams of dimension 3 (2 for texcoord)",
                             ELL_INFORMATION);
            continue;
        }
        SVertexStream& positionStream = streams.m_streams[0];
        SVertexStream& texCoordStream = streams.m_streams[1];
        if (!(positionStream.field0a == kFloatType && positionStream.field0c == 3 && texCoordStream.field0a == kFloatType &&
              texCoordStream.field0c == 2 && tangentStream->field0a == kFloatType && tangentStream->field0c == 3 &&
              binormalStream->field0a == kFloatType && binormalStream->field0c == 3 &&
              (normalStream == nullptr || (normalStream->field0a == kFloatType && normalStream->field0c == 3)))) {
            os::Printer::log("createMeshWithTangents",
                             "computing tangets only supported for floating-point streams of dimension 3 (2 for texcoord)",
                             ELL_INFORMATION);
            continue;
        }
        Mapped positions(positionStream, 5);
        Mapped texCoords(texCoordStream, 5);
        Mapped normals;
        if (normalStream != nullptr) {
            normals.assign(normalStream->buffer.get(), normalStream->offset, 5);
        }
        Mapped tangents(*tangentStream, 5);
        Mapped binormals(*binormalStream, 5);
        Mapped indices(primitives.m_indexBuffer.get(), primitives.m_offset, 1);
        if (positions.data == nullptr || texCoords.data == nullptr || tangents.data == nullptr || binormals.data == nullptr ||
            indices.data == nullptr || (normalStream != nullptr && normals.data == nullptr)) {
            continue;
        }
        const std::uint32_t vertexCount = streams.m_field08;
        const std::uint32_t count = primitives.m_count;
        auto positionAt = [&](std::uint32_t i) { return loadVec3(positions.data + static_cast<std::size_t>(positionStream.field0e) * i); };
        auto texCoordAt = [&](std::uint32_t i) { return loadVec2(texCoords.data + static_cast<std::size_t>(texCoordStream.field0e) * i); };
        auto tangentAt = [&](std::uint32_t i) { return tangents.data + static_cast<std::size_t>(tangentStream->field0e) * i; };
        auto binormalAt = [&](std::uint32_t i) { return binormals.data + static_cast<std::size_t>(binormalStream->field0e) * i; };
        auto normalAt = [&](std::uint32_t i) { return normals.data + static_cast<std::size_t>(normalStream->field0e) * i; };
        auto equalPosition = [](const vector3d<float>& a, const vector3d<float>& b) { return a.X == b.X && a.Y == b.Y && a.Z == b.Z; };

        if (smooth) {
            for (std::uint32_t vertex = 0; vertex < vertexCount; ++vertex) {
                if (normalStream != nullptr) {
                    storeVec3(normalAt(vertex), vector3d<float>{});
                }
                storeVec3(tangentAt(vertex), vector3d<float>{});
                storeVec3(binormalAt(vertex), vector3d<float>{});
            }
        }
        // As in makePlanarTextureMapping the binary steps the first element of a window by one; the windows past the index count are
        // left out here.
        for (std::uint32_t first = 0; first + 2 < count; ++first) {
            std::uint32_t corner[3] = {0xFFFFFFFFu, 0xFFFFFFFFu, 0xFFFFFFFFu};
            getTriangleIndices(primitives.m_indexType, indices.data, first, corner[0], corner[1], corner[2]);
            if (corner[0] >= vertexCount || corner[1] >= vertexCount || corner[2] >= vertexCount) {
                continue;
            }
            const vector3d<float> position[3] = {positionAt(corner[0]), positionAt(corner[1]), positionAt(corner[2])};
            // Triangles with two corners at one position have no frame.
            if (equalPosition(position[0], position[1]) || equalPosition(position[0], position[2]) ||
                equalPosition(position[1], position[2])) {
                continue;
            }
            const vector2d<float> texCoord[3] = {texCoordAt(corner[0]), texCoordAt(corner[1]), texCoordAt(corner[2])};
            // The frame of each corner is computed with the triangle rotated so that the corner comes first.
            float weight = 1.0f;
            if (smooth && angleWeighted) {
                weight = getAngleWeight(position[0], position[1], position[2]).X;
            }
            for (int c = 0; c < 3; ++c) {
                const int a = c;
                const int b = (c + 1) % 3;
                const int d = (c + 2) % 3;
                vector3d<float> normal;
                vector3d<float> tangent;
                vector3d<float> binormal;
                calculateTangents(normal, tangent, binormal, position[a], position[b], position[d], texCoord[a], texCoord[b], texCoord[d]);
                if (!smooth) {
                    if (normalStream != nullptr) {
                        storeVec3(normalAt(corner[c]), normal);
                    }
                    storeVec3(tangentAt(corner[c]), tangent);
                    storeVec3(binormalAt(corner[c]), binormal);
                } else {
                    if (normalStream != nullptr) {
                        std::uint8_t* target = normalAt(corner[c]);
                        const vector3d<float> old = loadVec3(target);
                        storeVec3(target, vector3d<float>{old.X + weight * normal.X, old.Y + weight * normal.Y, old.Z + weight * normal.Z});
                    }
                    std::uint8_t* tangentTarget = tangentAt(corner[c]);
                    const vector3d<float> oldTangent = loadVec3(tangentTarget);
                    storeVec3(tangentTarget, vector3d<float>{oldTangent.X + weight * tangent.X, oldTangent.Y + weight * tangent.Y,
                                                             oldTangent.Z + weight * tangent.Z});
                    std::uint8_t* binormalTarget = binormalAt(corner[c]);
                    const vector3d<float> oldBinormal = loadVec3(binormalTarget);
                    storeVec3(binormalTarget, vector3d<float>{oldBinormal.X + weight * binormal.X, oldBinormal.Y + weight * binormal.Y,
                                                              oldBinormal.Z + weight * binormal.Z});
                }
            }
        }
        if (smooth) {
            for (std::uint32_t vertex = 0; vertex < vertexCount; ++vertex) {
                if (normalStream != nullptr) {
                    vector3d<float> n = loadVec3(normalAt(vertex));
                    n.normalize();
                    storeVec3(normalAt(vertex), n);
                }
                vector3d<float> t = loadVec3(tangentAt(vertex));
                t.normalize();
                storeVec3(tangentAt(vertex), t);
                vector3d<float> b = loadVec3(binormalAt(vertex));
                b.normalize();
                storeVec3(binormalAt(vertex), b);
            }
        }
    }
    return result;
}

// ---- Scaling and transforming --------------------------------------------------------------------------------------------------------

// 0x59dc1c _ZN6glitch5scene5scaleERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS_4core8vector3dIfEE
void scale(const boost::intrusive_ptr<CMeshBuffer>& buffer, const core::vector3d<float>& scale) {
    if (!buffer) {
        return;
    }
    video::CVertexStreams& streams = *buffer->vertexStreams;
    SVertexStream& positionStream = streams.m_streams[0];
    SVertexStream* normalStream = findStream(streams, kAttributeNormal);
    if (!(positionStream.field0a == kFloatType && positionStream.field0c == 3 && normalStream != nullptr &&
          normalStream->field0a == kFloatType && normalStream->field0c == 3)) {
        os::Printer::log("scale", "supports only floating-point streams of array size 3", ELL_INFORMATION);
        return;
    }
    Mapped positions(positionStream, 5);
    const vector3d<float> inverse = vector3d<float>{1.0f, 1.0f, 1.0f} / scale;
    Mapped normals(*normalStream, 5);
    if (positions.data == nullptr) {
        return;
    }
    for (std::uint32_t vertex = 0; vertex < streams.m_field08; ++vertex) {
        std::uint8_t* position = positions.data + static_cast<std::size_t>(positionStream.field0e) * vertex;
        const vector3d<float> p = loadVec3(position);
        storeVec3(position, vector3d<float>{p.X * scale.X, p.Y * scale.Y, p.Z * scale.Z});
        if (normals.data != nullptr) {
            std::uint8_t* normalPointer = normals.data + static_cast<std::size_t>(normalStream->field0e) * vertex;
            const vector3d<float> n = loadVec3(normalPointer);
            vector3d<float> scaled{n.X * inverse.X, n.Y * inverse.Y, n.Z * inverse.Z};
            scaled.normalize();
            storeVec3(normalPointer, scaled);
        }
    }
}

// 0x59dea4 _ZN6glitch5scene5scaleERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS_4core8vector3dIfEE
void scale(const boost::intrusive_ptr<IMesh>& mesh, const core::vector3d<float>& scale) {
    if (!mesh) {
        return;
    }
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    for (std::uint32_t index = 0; index < bufferCount; ++index) {
        glitch::scene::scale(mesh->getMeshBuffer(index), scale);
    }
    core::aabbox3d<float> box = mesh->getBoundingBox();
    box.MinEdge.X *= scale.X;
    box.MinEdge.Y *= scale.Y;
    box.MinEdge.Z *= scale.Z;
    box.MaxEdge.X *= scale.X;
    box.MaxEdge.Y *= scale.Y;
    box.MaxEdge.Z *= scale.Z;
    mesh->setBoundingBox(box);
}

// ---- Normals -------------------------------------------------------------------------------------------------------------------------

// 0x59dfe4 _ZN6glitch5scene18recalculateNormalsERKN5boost13intrusive_ptrINS0_11CMeshBufferEEEbb
void recalculateNormals(const boost::intrusive_ptr<CMeshBuffer>& buffer, bool smooth, bool angleWeighted) {
    if (!buffer) {
        return;
    }
    const video::CPrimitiveStream& primitives = buffer->primitiveStream;
    if (!primitives.m_indexBuffer) {
        os::Printer::log("recalculateNormals", "computing normals for unindexed surfaces not supported", ELL_INFORMATION);
        return;
    }
    if (primitives.m_primitiveType != kPrimitiveTriangles) {
        os::Printer::log("recalculateNormals", "computing normals for primitive types other than triangles is not supported",
                         ELL_INFORMATION);
        return;
    }
    video::CVertexStreams& streams = *buffer->vertexStreams;
    if ((streams.m_attributeMask & kMaskNormal) == 0) {
        return;
    }
    const std::size_t normalIndex = static_cast<std::size_t>(streams.m_count0c) + 1;
    SVertexStream& positionStream = streams.m_streams[0];
    if (!(positionStream.field0a == kFloatType && positionStream.field0c > 2 && normalIndex < streams.m_streams.size() &&
          streams.m_streams[normalIndex].field0a == kFloatType && streams.m_streams[normalIndex].field0c == 3)) {
        os::Printer::log("recalculateNormals", "stream format not supported for normal computation", ELL_INFORMATION);
        return;
    }
    SVertexStream& normalStream = streams.m_streams[normalIndex];
    Mapped normals(normalStream, 5);
    // When the positions live in the normal buffer the view is the writable one, else the read-only one.
    const bool shared = positionStream.buffer == normalStream.buffer;
    Mapped positions(positionStream, shared ? 5 : 1);
    const std::uint32_t vertexCount = streams.m_field08;
    const std::uint32_t count = primitives.m_count;
    Mapped indices(primitives.m_indexBuffer.get(), primitives.m_offset, 1);
    if (normals.data == nullptr || positions.data == nullptr || indices.data == nullptr) {
        return;
    }
    auto positionAt = [&](std::uint32_t i) { return loadVec3(positions.data + static_cast<std::size_t>(positionStream.field0e) * i); };
    auto normalAt = [&](std::uint32_t i) { return normals.data + static_cast<std::size_t>(normalStream.field0e) * i; };
    if (!smooth) {
        for (std::uint32_t first = 0; first < count; first += 3) {
            std::uint32_t corner[3] = {0xFFFFFFFFu, 0xFFFFFFFFu, 0xFFFFFFFFu};
            getTriangleIndices(primitives.m_indexType, indices.data, first, corner[0], corner[1], corner[2]);
            if (corner[0] >= vertexCount || corner[1] >= vertexCount || corner[2] >= vertexCount) {
                continue;
            }
            core::plane3d<float> plane;
            plane.setPlane(positionAt(corner[0]), positionAt(corner[1]), positionAt(corner[2]));
            for (int c = 0; c < 3; ++c) {
                storeVec3(normalAt(corner[c]), plane.Normal);
            }
        }
        return;
    }
    for (std::uint32_t vertex = 0; vertex < vertexCount; ++vertex) {
        storeVec3(normalAt(vertex), vector3d<float>{});
    }
    for (std::uint32_t first = 0; first < count; first += 3) {
        std::uint32_t corner[3] = {0xFFFFFFFFu, 0xFFFFFFFFu, 0xFFFFFFFFu};
        getTriangleIndices(primitives.m_indexType, indices.data, first, corner[0], corner[1], corner[2]);
        if (corner[0] >= vertexCount || corner[1] >= vertexCount || corner[2] >= vertexCount) {
            continue;
        }
        const vector3d<float> p0 = positionAt(corner[0]);
        const vector3d<float> p1 = positionAt(corner[1]);
        const vector3d<float> p2 = positionAt(corner[2]);
        core::plane3d<float> plane;
        plane.setPlane(p0, p1, p2);
        vector3d<float> n = plane.Normal;
        if (angleWeighted) {
            // The three angles multiply the three components of the normal (not one angle per corner); reproduced.
            const vector3d<float> angles = getAngleWeight(p0, p1, p2);
            n.X = n.X * angles.X;
            n.Y = n.Y * angles.Y;
            n.Z = n.Z * angles.Z;
        }
        for (int c = 0; c < 3; ++c) {
            std::uint8_t* target = normalAt(corner[c]);
            const vector3d<float> old = loadVec3(target);
            storeVec3(target, vector3d<float>{old.X + n.X, old.Y + n.Y, old.Z + n.Z});
        }
    }
    for (std::uint32_t vertex = 0; vertex < vertexCount; ++vertex) {
        vector3d<float> n = loadVec3(normalAt(vertex));
        n.normalize();
        storeVec3(normalAt(vertex), n);
    }
}

// 0x59e698 _ZN6glitch5scene18recalculateNormalsERKN5boost13intrusive_ptrINS0_5IMeshEEEbb
void recalculateNormals(const boost::intrusive_ptr<IMesh>& mesh, bool smooth, bool angleWeighted) {
    if (!mesh) {
        return;
    }
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    for (std::uint32_t index = 0; index < bufferCount; ++index) {
        recalculateNormals(mesh->getMeshBuffer(index), smooth, angleWeighted);
    }
}

// 0x59ee60 _ZN6glitch5scene9transformERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS_4core8CMatrix4IfEERNS7_8aabbox3dIfEE (thunk)
void transform(const boost::intrusive_ptr<CMeshBuffer>& buffer, const core::CMatrix4<float>& matrix, core::aabbox3d<float>& box) {
    transformBuffer(buffer, matrix, &box);
}

// 0x59efac _ZN6glitch5scene9transformERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS_4core8CMatrix4IfEE (thunk)
void transform(const boost::intrusive_ptr<CMeshBuffer>& buffer, const core::CMatrix4<float>& matrix) {
    transformBuffer(buffer, matrix, nullptr);
}

// 0x59ee64 _ZN6glitch5scene9transformERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS_4core8CMatrix4IfEE
void transform(const boost::intrusive_ptr<IMesh>& mesh, const core::CMatrix4<float>& matrix) {
    if (!mesh) {
        return;
    }
    const core::aabbox3d<float> unitBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
    core::aabbox3d<float> total = unitBox;
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    for (std::uint32_t index = 0; index < bufferCount; ++index) {
        core::aabbox3d<float> box = unitBox;
        transformBuffer(mesh->getMeshBuffer(index), matrix, &box);
        if (index == 0) {
            total = box;
        } else {
            total.addInternalBox(box);
        }
    }
    mesh->setBoundingBox(total);
}

}  // namespace glitch::scene
