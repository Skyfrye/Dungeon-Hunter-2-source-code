// glitch::core::computeBoundingBox: the box of a strided array of components. The first
// element starts the box, the rest widen it. Instantiated for float (0x6a11bc) and the integer
// component types (signed and unsigned char, short, unsigned short, int and unsigned int). Each
// instance writes an aabbox3d of its own component type and compares with that type, as the
// Hex-Rays bodies show (aabbox3d<int>&, aabbox3d<signed char>&, ...); each is ledgered against
// this template.
// The value-type dispatch (0x6a48cc) that picks one of those instances at run time and converts
// its box to float is at the bottom of this file.
#pragma once

#include <cstddef>
#include <cstdint>
#include <cstring>

#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::core {

// dim: components per element (more than three is read as three); stride: bytes between
// elements; count: number of elements. With count zero the box is all zero, and components
// past dim are zero. The loop compares each component with the box's current minimum and
// maximum (strict compares, so NaN never widens a float box).
template <class T>
void computeBoundingBox(const T* data, unsigned dim, int stride, unsigned count, aabbox3d<T>& box) {
    T lo[3] = {T{}, T{}, T{}};
    T hi[3] = {T{}, T{}, T{}};
    if (count != 0) {
        const unsigned dims = dim < 3 ? dim : 3u;
        const auto* bytes = reinterpret_cast<const unsigned char*>(data);
        for (unsigned c = 0; c < dims; ++c) {
            lo[c] = data[c];
            hi[c] = data[c];
        }
        for (unsigned i = 1; i < count; ++i) {
            const unsigned char* element = bytes + static_cast<std::ptrdiff_t>(i) * stride;
            for (unsigned c = 0; c < dims; ++c) {
                T v;
                std::memcpy(&v, element + c * sizeof(T), sizeof(T));
                if (v < lo[c]) lo[c] = v;
                if (hi[c] < v) hi[c] = v;
            }
        }
    }
    box.MinEdge.X = lo[0];
    box.MinEdge.Y = lo[1];
    box.MinEdge.Z = lo[2];
    box.MaxEdge.X = hi[0];
    box.MaxEdge.Y = hi[1];
    box.MaxEdge.Z = hi[2];
}

// 0x6a48cc _ZN6glitch4core18computeBoundingBoxEPKvNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEjjjRNS0_8aabbox3dIfEE
// The value-type dispatch: when the component type of the elements is only known at run time, the box is
// built in that type by the template above and every component is then converted to float. `valueType` is a
// glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE, an index into
// video::detail::SVertexAttributeTypeInspection::ValueTypeSize: 0 signed char, 1 unsigned char, 2 short,
// 3 unsigned short, 4 int, 5 unsigned int, 6 float (the listing's cases 0..6, in that order). That enum is an
// int32_t alias in this port (video_types.hpp's enum policy), so the parameter is declared int32_t and the
// symbol mangles as `i` where the original mangles the enum name; any other value leaves the box untouched
// (the listing's default case). The listing initialises each temporary box to an inverted unit box before the
// call; that store is dead because the template writes all six components, so it is not reproduced.
namespace detail {

template <class T>
inline void computeBoundingBoxAs(const void* data, unsigned dim, unsigned stride, unsigned count,
                                 aabbox3d<float>& box) {
    aabbox3d<T> typed;
    computeBoundingBox<T>(static_cast<const T*>(data), dim, static_cast<int>(stride), count, typed);
    box.MinEdge.X = static_cast<float>(typed.MinEdge.X);
    box.MinEdge.Y = static_cast<float>(typed.MinEdge.Y);
    box.MinEdge.Z = static_cast<float>(typed.MinEdge.Z);
    box.MaxEdge.X = static_cast<float>(typed.MaxEdge.X);
    box.MaxEdge.Y = static_cast<float>(typed.MaxEdge.Y);
    box.MaxEdge.Z = static_cast<float>(typed.MaxEdge.Z);
}

}  // namespace detail

inline void computeBoundingBox(const void* data, int32_t valueType, unsigned dim, unsigned stride,
                               unsigned count, aabbox3d<float>& box) {
    switch (valueType) {
        case 0:
            detail::computeBoundingBoxAs<signed char>(data, dim, stride, count, box);
            break;
        case 1:
            detail::computeBoundingBoxAs<unsigned char>(data, dim, stride, count, box);
            break;
        case 2:
            detail::computeBoundingBoxAs<short>(data, dim, stride, count, box);
            break;
        case 3:
            detail::computeBoundingBoxAs<unsigned short>(data, dim, stride, count, box);
            break;
        case 4:
            detail::computeBoundingBoxAs<int>(data, dim, stride, count, box);
            break;
        case 5:
            detail::computeBoundingBoxAs<unsigned int>(data, dim, stride, count, box);
            break;
        case 6:
            computeBoundingBox<float>(static_cast<const float*>(data), dim, static_cast<int>(stride), count,
                                      box);
            break;
        default:
            break;
    }
}

}  // namespace glitch::core
