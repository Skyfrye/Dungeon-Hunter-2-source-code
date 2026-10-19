// Bodies of glitch::scene::CTriangleSelector (canonical class: scene/CTriangleSelector.hpp). This file replaces
// src/tb_scene-collada-gui-glitch_scene_CTriangleSelector-0.cpp and the CTriangleSelector stand-in bodies of recon/slice_05.cpp and
// recon/slice_06.cpp. The node matrix that every body needs is ISceneNode::getAbsoluteTransformation (vptr+0x38); the earlier batch
// left those steps out because ISceneNode had no vtable, so the rows that depended on it are reconstructed here.
#include "glitch-scene-collada-gui/scene/CTriangleSelector.hpp"

#include <algorithm>
#include <cmath>

#include "glitch-core-io/core/matrix4_base.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

namespace {

// Row-vector transform used by the original: out = p * M, with the translation in M[12..14]. Each component is
// ((x*M[a] + y*M[b]) + z*M[c]) + M[d], in the order the pseudocode computes it.
core::vector3d<float> transformPoint(const core::CMatrix4<float>& m, const core::vector3d<float>& p) {
    core::vector3d<float> r;
    r.X = p.X * m.M[0] + p.Y * m.M[4] + p.Z * m.M[8] + m.M[12];
    r.Y = p.X * m.M[1] + p.Y * m.M[5] + p.Z * m.M[9] + m.M[13];
    r.Z = p.X * m.M[2] + p.Y * m.M[6] + p.Z * m.M[10] + m.M[14];
    return r;
}

}  // namespace

// 0x5919a0 _ZN6glitch5scene17CTriangleSelectorC1ERKNS_4core8aabbox3dIfEEPKNS0_10ISceneNodeEb
// 0x591b24 _ZN6glitch5scene17CTriangleSelectorC2ERKNS_4core8aabbox3dIfEEPKNS0_10ISceneNodeEb
// The box argument is not used (the original never reads it); the node and the flag are stored, the rest takes the defaults.
CTriangleSelector::CTriangleSelector(const core::aabbox3d<float>& /*box*/, const ISceneNode* sceneNode, bool bake)
    : node(sceneNode), bakeNodeTransform(bake) {
    referenceCounter = 1;
}

// 0x591a60 _ZN6glitch5scene17CTriangleSelectorC1EPKNS0_10ISceneNodeEb
// 0x591be4 _ZN6glitch5scene17CTriangleSelectorC2EPKNS0_10ISceneNodeEb
CTriangleSelector::CTriangleSelector(const ISceneNode* sceneNode, bool bake) : node(sceneNode), bakeNodeTransform(bake) {
    referenceCounter = 1;
}

namespace {

// The createTriangles<T> family (0x592e58 signed char, 0x593808 unsigned char, 0x5941b8 short, 0x594b68 unsigned short, 0x595518 int,
// 0x5924a8 unsigned int, 0x591d38 float): the triangles of one mesh buffer from the position stream, converting the T components to
// float. A stream of two components has z = 0; three and four components use the first three; any other count adds nothing. With an index
// array every group of three indices gives the triangle (V[i2], V[i1], V[i0]); without one every three consecutive vertices give
// (V[i + 2], V[i + 1], V[i]). The vertex buffer is mapped for reading for the walk and released after it.
template <typename T>
void createTriangles(const std::uint16_t* indices, std::uint32_t count, const video::SVertexStream& stream,
                     core::svector<core::triangle3d<float>>& out) {
    const std::uint32_t components = stream.field0c;
    if (components < 2 || components > 4 || !stream.buffer) {
        return;
    }
    const std::uint8_t* base = stream.buffer->map(static_cast<video::E_BUFFER_READ_MAP_ACCESS>(1));
    if (base == nullptr) {
        return;
    }
    const std::uint8_t* data = base + stream.offset;
    const std::uint32_t stride = stream.field0e;
    const auto vertex = [&](std::uint32_t index) {
        const T* element = reinterpret_cast<const T*>(data + static_cast<std::size_t>(index) * stride);
        return core::vector3d<float>{static_cast<float>(element[0]), static_cast<float>(element[1]),
                                     components >= 3 ? static_cast<float>(element[2]) : 0.0f};
    };
    core::triangle3d<float> triangle;
    if (indices != nullptr) {
        for (const std::uint16_t* p = indices; static_cast<std::uint32_t>(indices + count - p) >= 3 && p < indices + count; p += 3) {
            triangle.A = vertex(p[2]);
            triangle.B = vertex(p[1]);
            triangle.C = vertex(p[0]);
            out.push_back(triangle);
        }
    } else {
        for (std::uint32_t i = 0; i + 3 <= count; i += 3) {
            triangle.A = vertex(i + 2);
            triangle.B = vertex(i + 1);
            triangle.C = vertex(i);
            out.push_back(triangle);
        }
    }
    stream.buffer->unmap();
}

}  // namespace

// 0x595ec8 _ZN6glitch5scene17CTriangleSelectorC1ERKN5boost13intrusive_ptrIKNS0_5IMeshEEEPKNS0_10ISceneNodeEb (C2 0x596598: the same body)
// The triangle list is reserved for the index count of all buffers / 3; each triangle-list buffer (primitive type 6) is walked with the
// element type of its first position stream (codes 0..6: signed char, unsigned char, short, unsigned short, int, unsigned int, float; other
// codes add nothing); its index buffer, when it has one, is mapped for the walk and released after it. Then, when the node's transform
// is baked, every triangle goes through the node's absolute matrix.
CTriangleSelector::CTriangleSelector(const boost::intrusive_ptr<const IMesh>& mesh, const ISceneNode* sceneNode, bool bake)
    : node(sceneNode), bakeNodeTransform(bake) {
    referenceCounter = 1;
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    std::uint32_t total = 0;
    for (std::uint32_t i = 0; i < bufferCount; ++i) {
        total += mesh->getMeshBuffer(i)->primitiveStream.m_count;
    }
    triangles.reserve(total / 3);
    for (std::uint32_t i = 0; i < bufferCount; ++i) {
        const boost::intrusive_ptr<CMeshBuffer> buffer = mesh->getMeshBuffer(i);
        const boost::intrusive_ptr<const video::CVertexStreams> streams = buffer->vertexStreams;
        if (buffer->primitiveStream.m_primitiveType != 6) {
            continue;
        }
        video::CPrimitiveStream::SMapBuffer<const std::uint16_t> mapped;
        const std::uint16_t* indices = nullptr;
        if (buffer->primitiveStream.m_indexBuffer) {
            mapped.reset(buffer->primitiveStream, static_cast<video::E_BUFFER_READ_MAP_ACCESS>(1));
            indices = mapped.data;
        }
        const std::uint32_t count = buffer->primitiveStream.m_count;
        const video::SVertexStream& stream = streams->m_streams[0];
        switch (stream.field0a) {
            case 0: createTriangles<signed char>(indices, count, stream, triangles); break;
            case 1: createTriangles<unsigned char>(indices, count, stream, triangles); break;
            case 2: createTriangles<short>(indices, count, stream, triangles); break;
            case 3: createTriangles<unsigned short>(indices, count, stream, triangles); break;
            case 4: createTriangles<int>(indices, count, stream, triangles); break;
            case 5: createTriangles<unsigned int>(indices, count, stream, triangles); break;
            case 6: createTriangles<float>(indices, count, stream, triangles); break;
            default: break;
        }
        if (mapped.data != nullptr) {
            buffer->primitiveStream.m_indexBuffer->unmap();
            mapped.data = nullptr;
        }
    }
    if (node != nullptr && bakeNodeTransform) {
        const core::CMatrix4<float> local = node->getAbsoluteTransformation();
        for (core::triangle3d<float>& t : triangles) {
            t.A = transformPoint(local, t.A);
            t.B = transformPoint(local, t.B);
            t.C = transformPoint(local, t.C);
        }
    }
}

// 0x590f70 _ZN6glitch5scene17CTriangleSelectorD1Ev (and the D0 at 0x5913fc, skipped)
// Frees the triangle vector (the member does it).
CTriangleSelector::~CTriangleSelector() = default;

// 0x590f20 _ZNK6glitch5scene17CTriangleSelector16getTriangleCountEv
// (end - begin) bytes / 36, which is the element count of the triangle vector.
int CTriangleSelector::getTriangleCount() const {
    return static_cast<int>(triangles.size());
}

// 0x591464 _ZNK6glitch5scene17CTriangleSelector12getTrianglesEPNS_4core10triangle3dIfEEiRiPKNS2_8CMatrix4IfEE
// The count is clamped to the triangle count; the working matrix is the identity, replaced by `source`, then multiplied by the
// node's matrix unless the node transform is baked. With the identity flag set the triangles are copied, otherwise transformed.
void CTriangleSelector::getTriangles(core::triangle3d<float>* out, int arraySize, int& outTriangleCount,
                                     const core::CMatrix4<float>* source) const {
    const int total = getTriangleCount();
    int count = arraySize;
    if (count >= total) count = total;

    core::CMatrix4<float> m(core::CMatrix4<float>::EM4CONST_IDENTITY);
    if (source != nullptr) m = *source;
    if (node != nullptr && !bakeNodeTransform) {
        core::detail::multEq(m, node->getAbsoluteTransformation());
    }
    if (m.flag) {
        for (int i = 0; i < count; ++i) out[i] = triangles[static_cast<std::size_t>(i)];
    } else {
        for (int i = 0; i < count; ++i) {
            const core::triangle3d<float>& src = triangles[static_cast<std::size_t>(i)];
            out[i].A = transformPoint(m, src.A);
            out[i].B = transformPoint(m, src.B);
            out[i].C = transformPoint(m, src.C);
        }
    }
    outTriangleCount = count;
}

// 0x591ca8 _ZNK6glitch5scene17CTriangleSelector12getTrianglesEPNS_4core10triangle3dIfEEiRiRKNS2_8aabbox3dIfEEPKNS2_8CMatrix4IfEE
void CTriangleSelector::getTriangles(core::triangle3d<float>* out, int arraySize, int& outTriangleCount,
                                     const core::aabbox3d<float>& box, const core::CMatrix4<float>* transformArg) const {
    resultCapacity = static_cast<std::uint32_t>(arraySize);
    resultCount = 0;
    resultTriangles = out;
    Setup(transformArg);
    Setup(box);
    TestWithBox(const_cast<core::svector<core::triangle3d<float>>&>(triangles));
    outTriangleCount = static_cast<int>(resultCount);
}

// 0x591cf0 _ZNK6glitch5scene17CTriangleSelector12getTrianglesEPNS_4core10triangle3dIfEEiRiRKNS2_6line3dIfEEPKNS2_8CMatrix4IfEE
void CTriangleSelector::getTriangles(core::triangle3d<float>* out, int arraySize, int& outTriangleCount,
                                     const core::line3d<float>& line, const core::CMatrix4<float>* transformArg) const {
    resultCapacity = static_cast<std::uint32_t>(arraySize);
    resultCount = 0;
    resultTriangles = out;
    Setup(transformArg);
    Setup(line);
    TestWithLine(const_cast<core::svector<core::triangle3d<float>>&>(triangles));
    outTriangleCount = static_cast<int>(resultCount);
}

// 0x586a34 _ZNK6glitch5scene17CTriangleSelector5SetupEPKNS_4core8CMatrix4IfEE
// Resets the stored matrix to the identity (flag set), copies `source` over it, and multiplies by the node matrix unless baked.
void CTriangleSelector::Setup(const core::CMatrix4<float>* source) const {
    transform = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    if (source != nullptr) transform = *source;
    if (node != nullptr && !bakeNodeTransform) {
        core::detail::multEq(transform, node->getAbsoluteTransformation());
    }
}

// 0x587604 _ZNK6glitch5scene17CTriangleSelector5SetupERKNS_4core8aabbox3dIfEE
// Stores the box; unless baked, transforms it by the inverse of the node's absolute matrix.
void CTriangleSelector::Setup(const core::aabbox3d<float>& box) const {
    boundingBox = box;
    if (node != nullptr && !bakeNodeTransform) {
        core::CMatrix4<float> inverse = node->getAbsoluteTransformation();
        inverse.makeInverse();
        inverse.transformBox(boundingBox);
    }
}

// 0x588984 _ZNK6glitch5scene17CTriangleSelector5SetupERKNS_4core6line3dIfEE
// Stores the segment; unless baked, moves both end points by the inverse of the node's matrix. Then the squared length, the
// normalized direction, and the box of the two end points.
void CTriangleSelector::Setup(const core::line3d<float>& line) const {
    segment = line;
    if (node != nullptr && !bakeNodeTransform) {
        core::CMatrix4<float> inverse = node->getAbsoluteTransformation();
        inverse.makeInverse();
        segment.start = transformPoint(inverse, segment.start);
        segment.end = transformPoint(inverse, segment.end);
    }
    const core::vector3d<float>& s = segment.start;
    const core::vector3d<float>& e = segment.end;
    segmentLengthSquared = (((s.X - e.X) * (s.X - e.X)) + ((s.Y - e.Y) * (s.Y - e.Y))) + ((s.Z - e.Z) * (s.Z - e.Z));
    core::vector3d<float> direction{e.X - s.X, e.Y - s.Y, e.Z - s.Z};
    direction.normalize();
    segmentDirection = direction;
    boundingBox.MinEdge = s;
    boundingBox.MaxEdge = s;
    if (s.X < e.X) boundingBox.MaxEdge.X = e.X;
    if (s.Y < e.Y) boundingBox.MaxEdge.Y = e.Y;
    if (e.Z > boundingBox.MaxEdge.Z) boundingBox.MaxEdge.Z = e.Z;
    if (e.X < boundingBox.MinEdge.X) boundingBox.MinEdge.X = e.X;
    if (e.Y < boundingBox.MinEdge.Y) boundingBox.MinEdge.Y = e.Y;
    if (e.Z < boundingBox.MinEdge.Z) boundingBox.MinEdge.Z = e.Z;
}

// 0x586acc _ZNK6glitch5scene17CTriangleSelector9AddResultERKNS_4core10triangle3dIfEE
// Appends the triangle to the result buffer, transforms the appended copy by the stored matrix when its identity flag is clear,
// bumps the count, and returns count == capacity.
bool CTriangleSelector::AddResult(const core::triangle3d<float>& triangle) const {
    core::triangle3d<float>& slot = resultTriangles[resultCount];
    slot = triangle;
    if (!transform.flag) {
        slot.A = transformPoint(transform, slot.A);
        slot.B = transformPoint(transform, slot.B);
        slot.C = transformPoint(transform, slot.C);
    }
    const std::uint32_t count = resultCount + 1;
    resultCount = count;
    return count == resultCapacity;
}

// 0x586ec8 _ZNK6glitch5scene17CTriangleSelector11TestWithBoxERSt6vectorINS_4core10triangle3dIfEENS3_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEE
// A candidate is kept when it overlaps the box on each axis: on an axis, not all three corners are below the min, and not all
// three are above the max. Kept candidates go to AddResult; the loop stops when AddResult reports the buffer full.
void CTriangleSelector::TestWithBox(core::svector<core::triangle3d<float>>& candidates) const {
    const float minX = boundingBox.MinEdge.X;
    const float minY = boundingBox.MinEdge.Y;
    const float minZ = boundingBox.MinEdge.Z;
    const float maxX = boundingBox.MaxEdge.X;
    const float maxY = boundingBox.MaxEdge.Y;
    const float maxZ = boundingBox.MaxEdge.Z;
    for (const core::triangle3d<float>& t : candidates) {
        const bool overlapX = (t.A.X >= minX || t.B.X >= minX || t.C.X >= minX) && (t.A.X <= maxX || t.B.X <= maxX || t.C.X <= maxX);
        if (!overlapX) continue;
        const bool overlapY = (t.A.Y >= minY || t.B.Y >= minY || t.C.Y >= minY) && (t.A.Y <= maxY || t.B.Y <= maxY || t.C.Y <= maxY);
        if (!overlapY) continue;
        const bool overlapZ = (t.A.Z >= minZ || t.B.Z >= minZ || t.C.Z >= minZ) && (t.A.Z <= maxZ || t.B.Z <= maxZ || t.C.Z <= maxZ);
        if (!overlapZ) continue;
        if (AddResult(t)) break;
    }
}

// 0x5871c8 _ZNK6glitch5scene17CTriangleSelector12TestWithLineERSt6vectorINS_4core10triangle3dIfEENS3_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEE
// Every candidate that the stored segment hits (getIntersectionWithLineSegment against the segment box) goes to AddResult;
// the loop stops when the buffer is full.
void CTriangleSelector::TestWithLine(core::svector<core::triangle3d<float>>& candidates) const {
    for (const core::triangle3d<float>& t : candidates) {
        core::vector3d<float> hit{0.0f, 0.0f, 0.0f};
        if (t.getIntersectionWithLineSegment(segment, segmentLengthSquared, segmentDirection, boundingBox, hit)) {
            if (AddResult(t)) break;
        }
    }
}

}  // namespace glitch::scene
