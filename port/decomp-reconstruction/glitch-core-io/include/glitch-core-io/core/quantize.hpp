// glitch::core quantization helpers: a 3x4 affine product of a 4x4 matrix and a float[16]
// (rowMatrixProduct34), and the scale/offset quantizers that pack float positions into
// signed 16-bit components. The original strides its arrays in bytes; so do these.
#pragma once

#include <cstddef>

#include "glitch-core-io/core/bounding_box.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::core {

// 0x66d0b8 rowMatrixProduct34<CMatrix4<float>, CMatrix4<float>, float[16]>.
// out[4j + i] = sum over k < 3 of a[4k + i] * b[4j + k], plus a[12 + i] for column 3.
// The last row is fixed: out[3], out[7], out[11] are zero and out[15] is one; the flag
// (+0x40) is cleared. Returns out[14] as the original does.
inline float rowMatrixProduct34(CMatrix4<float>& out, const CMatrix4<float>& a, const float (&b)[16]) {
    out.flag = false;
    for (int j = 0; j < 4; ++j) {
        for (int i = 0; i < 4; ++i) {
            if (i == 3) {
                out.M[4 * j + i] = (j == 3) ? 1.f : 0.f;
                continue;
            }
            float sum = a.M[i] * b[4 * j] + a.M[4 + i] * b[4 * j + 1] + a.M[8 + i] * b[4 * j + 2];
            if (j == 3) sum += a.M[12 + i];
            out.M[4 * j + i] = sum;
        }
    }
    return out.M[14];
}

// Byte-strided element access (the original advances its pointers by the stride arguments).
template <class T>
inline T* strided(void* base, std::ptrdiff_t stride, unsigned i) {
    return reinterpret_cast<T*>(static_cast<unsigned char*>(base) + static_cast<std::ptrdiff_t>(i) * stride);
}
template <class T>
inline const T* strided(const void* base, std::ptrdiff_t stride, unsigned i) {
    return reinterpret_cast<const T*>(static_cast<const unsigned char*>(base) + static_cast<std::ptrdiff_t>(i) * stride);
}

// 0x6a1300 quantizeScaleOffset<vector3d<short>, vector3d<float>>.
// The box of the input is taken (computeBoundingBox, 3 components). scale is the box size times
// the float nearest 1/65535 (the constant 0x37800080 in the listing, not a rounded decimal); offset
// is the box centre. Each output is the truncated (center-relative) value divided by scale.
// The float left in r0 at the return is not reproduced: both call sites in createQuantizedBuffer
// (0x6a2cdc) read nothing from r0 after the call, so the function returns nothing.
inline void quantizeScaleOffset(vector3d<std::int16_t>* out, unsigned outStride,
                                const vector3d<float>* in, unsigned inStride, unsigned count,
                                vector3d<float>& scale, vector3d<float>& offset) {
    aabbox3d<float> box{};
    computeBoundingBox<float>(&in->X, 3u, static_cast<int>(inStride), count, box);
    const float inv65535 = 1.0f / 65535.0f;  // 0x37800080
    scale.X = (box.MaxEdge.X - box.MinEdge.X) * inv65535;
    scale.Y = (box.MaxEdge.Y - box.MinEdge.Y) * inv65535;
    scale.Z = (box.MaxEdge.Z - box.MinEdge.Z) * inv65535;
    offset.X = (box.MinEdge.X + box.MaxEdge.X) * 0.5f;
    offset.Y = (box.MinEdge.Y + box.MaxEdge.Y) * 0.5f;
    offset.Z = (box.MinEdge.Z + box.MaxEdge.Z) * 0.5f;
    for (unsigned i = 0; i < count; ++i) {
        const auto* src = strided<vector3d<float>>(in, inStride, i);
        auto* dst = strided<vector3d<std::int16_t>>(out, outStride, i);
        const float x = (src->X - offset.X) / scale.X;
        const float y = (src->Y - offset.Y) / scale.Y;
        const float z = (src->Z - offset.Z) / scale.Z;
        dst->X = static_cast<std::int16_t>(static_cast<int>(x));
        dst->Y = static_cast<std::int16_t>(static_cast<int>(y));
        dst->Z = static_cast<std::int16_t>(static_cast<int>(z));
    }
}

// 0x6a14f0 quantizeScaleOffset<vector2d<short>, vector2d<float>>.
// Same scheme in two components: scale is the box size divided by 65535.
inline void quantizeScaleOffset(vector2d<std::int16_t>* out, unsigned outStride,
                                const vector2d<float>* in, unsigned inStride, unsigned count,
                                vector2d<float>& scale, vector2d<float>& offset) {
    aabbox3d<float> box{};
    computeBoundingBox<float>(&in->X, 2u, static_cast<int>(inStride), count, box);
    scale.X = (box.MaxEdge.X - box.MinEdge.X) / 65535.0f;
    scale.Y = (box.MaxEdge.Y - box.MinEdge.Y) / 65535.0f;
    offset.X = (box.MinEdge.X + box.MaxEdge.X) * 0.5f;
    offset.Y = (box.MinEdge.Y + box.MaxEdge.Y) * 0.5f;
    for (unsigned i = 0; i < count; ++i) {
        const auto* src = strided<vector2d<float>>(in, inStride, i);
        auto* dst = strided<vector2d<std::int16_t>>(out, outStride, i);
        const float x = (src->X - offset.X) / scale.X;
        const float y = (src->Y - offset.Y) / scale.Y;
        dst->X = static_cast<std::int16_t>(static_cast<int>(x));
        dst->Y = static_cast<std::int16_t>(static_cast<int>(y));
    }
}

}  // namespace glitch::core
