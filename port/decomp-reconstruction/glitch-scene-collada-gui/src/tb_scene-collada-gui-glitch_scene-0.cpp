// Track B batch e1-glitch-scene-collada-gui-glitch_scene-0: glitch::scene anonymous-namespace helpers.
// The vertex-stream and buffer layouts are in glitch-scene-collada-gui/tb/glitch_scene.hpp.

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/tb/glitch_scene.hpp"

namespace glitch::scene {

namespace {

using glitch::core::triangle3d;
using glitch::core::vector3d;
using glitch::video::IBuffer;
using glitch::video::SVertexStream;

using TriangleVector = core::svector<triangle3d<float>>;

// Reads component k of one vertex and converts it to float. The original converts integer components
// with the ARM helpers (__aeabi_ui2f for unsigned, the signed variant otherwise) and copies float
// components unchanged; a static_cast covers all seven element types.
template <typename T>
float readComponent(const std::uint8_t* vertex, std::size_t k) {
    T value;
    std::memcpy(&value, vertex + k * sizeof(T), sizeof(T));  // vertex data is not aligned to T
    return static_cast<float>(value);
}

// Position of the vertex at base + stride * index. Components 0 and 1 are always read. Component 2 is
// read only when the stream has three or four components; with two components z is 0.
template <typename T>
vector3d<float> readVertex(const std::uint8_t* base, std::size_t stride, std::uint32_t index, bool hasZ) {
    const std::uint8_t* vertex = base + stride * index;
    vector3d<float> position;
    position.X = readComponent<T>(vertex, 0);
    position.Y = readComponent<T>(vertex, 1);
    position.Z = hasZ ? readComponent<T>(vertex, 2) : 0.0f;
    return position;
}

// Appends the triangle (a, b, c). The original stores the three positions in this order (A, B, C) and
// grows the vector with push_back semantics (the overflow path is the vector's own insert).
template <typename T>
void emitTriangle(TriangleVector& out, const std::uint8_t* base, std::size_t stride, bool hasZ,
                  std::uint32_t a, std::uint32_t b, std::uint32_t c) {
    triangle3d<float> triangle;
    triangle.A = readVertex<T>(base, stride, a, hasZ);
    triangle.B = readVertex<T>(base, stride, b, hasZ);
    triangle.C = readVertex<T>(base, stride, c, hasZ);
    out.push_back(triangle);
}

// Shared body of the seven createTriangles instances. indices == nullptr means the vertices are used in
// order: triangles (i + 2, i + 1, i) for i = 0, 3, ... below count. Otherwise count is the number of
// indices and each triangle is (indices[2], indices[1], indices[0]) in steps of three.
//
// The stream's component count selects the layout: 2 gives (x, y, 0), 3 and 4 give (x, y, z). Any
// other count returns before the buffer is mapped. For the layouts that map the buffer, the mapping is
// released after the loops, but only when the mapped pointer (plus the stream offset) is not null.
template <typename T>
void createTriangles(const std::uint16_t* indices, std::uint32_t count, const SVertexStream& stream,
                         TriangleVector& out) {
    bool hasZ = false;
    switch (stream.field0c) {
        case 2:
            hasZ = false;
            break;
        case 3:
        case 4:
            hasZ = true;
            break;
        default:
            return;
    }

    const IBuffer* buffer = stream.buffer.get();
    std::uint8_t* mapped = buffer->map(1);  // E_BUFFER_READ_MAP_ACCESS value 1 (const overload)
    std::uint8_t* base = mapped + stream.offset;
    const std::size_t stride = stream.field0e;

    if (indices == nullptr) {
        for (std::uint32_t i = 0; i < count; i += 3) {
            emitTriangle<T>(out, base, stride, hasZ, i + 2, i + 1, i);
        }
    } else {
        const std::uint16_t* end = indices + count;
        for (const std::uint16_t* p = indices; p != end; p += 3) {
            emitTriangle<T>(out, base, stride, hasZ, p[2], p[1], p[0]);
        }
    }

    if (base != nullptr) {
        buffer->unmap();
    }
}

}  // namespace

// The explicit instantiations of an anonymous-namespace template belong in that namespace (clang requires it).
namespace {

// 0x591d38 _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIfSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
// T = float: the vertex components are already float, so the reads are plain copies.
template void createTriangles<float>(const std::uint16_t*, std::uint32_t, const SVertexStream&,
                                         TriangleVector&);

// 0x5924a8 _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIjSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
// T = unsigned int.
template void createTriangles<std::uint32_t>(const std::uint16_t*, std::uint32_t, const SVertexStream&,
                                                 TriangleVector&);

// 0x592e58 _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIaSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
// T = signed char.
template void createTriangles<std::int8_t>(const std::uint16_t*, std::uint32_t, const SVertexStream&,
                                               TriangleVector&);

// 0x593808 _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIhSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
// T = unsigned char.
template void createTriangles<std::uint8_t>(const std::uint16_t*, std::uint32_t, const SVertexStream&,
                                                TriangleVector&);

// 0x5941b8 _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIsSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
// T = short.
template void createTriangles<std::int16_t>(const std::uint16_t*, std::uint32_t, const SVertexStream&,
                                                TriangleVector&);

// 0x594b68 _ZN6glitch5scene12_GLOBAL__N_115createTrianglesItSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
// T = unsigned short.
template void createTriangles<std::uint16_t>(const std::uint16_t*, std::uint32_t, const SVertexStream&,
                                                 TriangleVector&);

// 0x595518 _ZN6glitch5scene12_GLOBAL__N_115createTrianglesIiSt6vectorINS_4core10triangle3dIfEENS4_10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEEEvPKtjRKNS_5video13SVertexStreamERT0_
// T = int.
template void createTriangles<std::int32_t>(const std::uint16_t*, std::uint32_t, const SVertexStream&,
                                                TriangleVector&);

}  // namespace

// 0x6bccf0 _ZN6glitch5scene12_GLOBAL__N_19addStreamEPNS_5video12IVideoDriverERNS_7collada5SMeshERNS5_11SMeshBufferEcPNS2_17SVertexStreamDataEhRKNS5_13SBufferConfigE
// addStream is not reconstructed in this batch: partial. The body fills a SVertexStreamData entry (16
// bytes, buffer at +0, offset at +4, value type at +8, count at +12, stride at +14) from a SMesh and a
// SMeshBuffer table of 20-byte entries (value type at +0, count at +4, offset word at +8, buffer
// reference at +16). When the entry has no buffer it creates one through IVideoDriver's vertex-buffer
// slot (vtable +0x78), takes the reference, and sets the buffer's flags (+0x11 usage, +0x12 bits). The
// SMesh, SMeshBuffer, SBufferConfig and SVertexStreamData layouts and the SVertexAttributeTypeInspection
// value-size table are not declared in this category, so no body is written here (layout requests).

}  // namespace glitch::scene
