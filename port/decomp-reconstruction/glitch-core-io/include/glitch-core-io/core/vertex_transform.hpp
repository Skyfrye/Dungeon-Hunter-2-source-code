// glitch::core vertex component transforms: the STransform*Component records and the copyComponent family that converts a vertex
// attribute of one stored type (quantized short or byte, or float) into float, applying the component's matrix or its quantization
// scale and offset. Used by overrideVertexStreams (0x60a384) when it copies one vertex stream into another.
//
// Layout of the three components (32-bit offsets, evidence: setConvertType 0x608874 / 0x608960 and the copyComponent bodies):
//   +0x00 .. +0x3f  a glitch::core::CMatrix4<float> (the components derive from it; the elements are read as M[0..15])
//   +0x40           the identity flag byte of the matrix. SET means "no matrix": the copies then use the plain conversion (for the
//                   short and byte forms the quantization scale and offset, or the fixed normalisation constant).
//   +0x44, +0x48    position and texture coordinate components only: the quantization scale (+0x44) and offset (+0x48) of the stream,
//                   pointers to vector3d<float> (the texture coordinate form reads two floats). A component built by
//                   overrideVertexStreams gets both from the stream's quantization block.
#pragma once

#include <cstdint>

#include "glitch-shared/glitch_core.hpp"

namespace glitch::video {
// glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE: the stored type of one vertex attribute (the index into
// SVertexAttributeTypeInspection::ValueTypeSize). The copyComponentSF symbols carry the enum type, so it is a real enum here.
enum E_VERTEX_ATTRIBUTE_VALUE_TYPE : std::int32_t {
    EVAVT_BYTE = 0,
    EVAVT_UBYTE = 1,
    EVAVT_SHORT = 2,
    EVAVT_USHORT = 3,
    EVAVT_INT = 4,
    EVAVT_UINT = 5,
    EVAVT_FLOAT = 6,
};
}  // namespace glitch::video

namespace glitch::core {

struct STransformPositionComponent : CMatrix4<float> {
    STransformPositionComponent() = default;
    STransformPositionComponent(const CMatrix4<float>& matrix, const vector3d<float>* scaleValue, const vector3d<float>* offsetValue)
        : CMatrix4<float>(matrix), scale(scaleValue), offset(offsetValue) {}
    // 0x608960: when the matrix is not the identity, folds the quantization into it (the offset goes through the matrix into the
    // translation, then the columns are scaled by the scale). The argument is unused.
    void setConvertType(void* unused);

    const vector3d<float>* scale = nullptr;   // +0x44
    const vector3d<float>* offset = nullptr;  // +0x48
};

struct STransformTexCoordComponent : CMatrix4<float> {
    STransformTexCoordComponent() = default;
    STransformTexCoordComponent(const CMatrix4<float>& matrix, const vector3d<float>* scaleValue, const vector3d<float>* offsetValue)
        : CMatrix4<float>(matrix), scale(scaleValue), offset(offsetValue) {}
    // 0x608874: the two-dimensional form of the same fold (the translation is M[8], M[9]).
    void setConvertType(void* unused);

    const vector3d<float>* scale = nullptr;   // +0x44 (two floats are read)
    const vector3d<float>* offset = nullptr;  // +0x48
};

struct STransformNormalComponent : CMatrix4<float> {
    STransformNormalComponent() = default;
    explicit STransformNormalComponent(const CMatrix4<float>& matrix) : CMatrix4<float>(matrix) {}
};

// The copies. Strides are in bytes; the result is the destination position after the last element written (the destination itself
// for a count of zero). T is the float vector type of the destination, S the stored one.
// 0x608a94, 0x608fdc, 0x6092e8, 0x609530: stored short or byte components converted to float.
template <class T, class S, class C>
T* copyComponent(T* destination, unsigned destinationStride, const S* source, unsigned sourceStride, unsigned short count,
                 const C& component);
// 0x608dbc, 0x609778: float components, copied or run through the matrix.
template <class T, class C>
T* copyComponent(T* destination, unsigned destinationStride, const T* source, unsigned sourceStride, unsigned short count,
                 const C& component);
// 0x608f6c, 0x60917c: the run-time dispatch on the stored type (short: fold the quantization into the component and convert;
// float: copy). Other stored types leave the destination untouched.
template <class T, class C>
T* copyComponentSF(T* destination, unsigned destinationStride, const unsigned char* source, unsigned sourceStride,
                   glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE type, unsigned short count, C& component);
// 0x609910: the normal form (byte, short or float), the matrix scaled by the normalisation constant first.
template <class T, class C>
T* copyComponentBSF(T* destination, unsigned destinationStride, const unsigned char* source, unsigned sourceStride,
                    glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE type, unsigned short count, C& component);

// The instances the binary emits, as explicit specializations (defined in src/vertex_transform.cpp).
template <>
vector3d<float>* copyComponent<vector3d<float>, vector3d<short>, STransformPositionComponent>(
    vector3d<float>*, unsigned, const vector3d<short>*, unsigned, unsigned short, const STransformPositionComponent&);
template <>
vector3d<float>* copyComponent<vector3d<float>, STransformPositionComponent>(
    vector3d<float>*, unsigned, const vector3d<float>*, unsigned, unsigned short, const STransformPositionComponent&);
template <>
vector3d<float>* copyComponentSF<vector3d<float>, STransformPositionComponent>(
    vector3d<float>*, unsigned, const unsigned char*, unsigned, glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE, unsigned short,
    STransformPositionComponent&);
template <>
vector2d<float>* copyComponent<vector2d<float>, vector2d<short>, STransformTexCoordComponent>(
    vector2d<float>*, unsigned, const vector2d<short>*, unsigned, unsigned short, const STransformTexCoordComponent&);
template <>
vector2d<float>* copyComponentSF<vector2d<float>, STransformTexCoordComponent>(
    vector2d<float>*, unsigned, const unsigned char*, unsigned, glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE, unsigned short,
    STransformTexCoordComponent&);
template <>
vector3d<float>* copyComponent<vector3d<float>, vector3d<char>, STransformNormalComponent>(
    vector3d<float>*, unsigned, const vector3d<char>*, unsigned, unsigned short, const STransformNormalComponent&);
template <>
vector3d<float>* copyComponent<vector3d<float>, vector3d<short>, STransformNormalComponent>(
    vector3d<float>*, unsigned, const vector3d<short>*, unsigned, unsigned short, const STransformNormalComponent&);
template <>
vector3d<float>* copyComponent<vector3d<float>, STransformNormalComponent>(
    vector3d<float>*, unsigned, const vector3d<float>*, unsigned, unsigned short, const STransformNormalComponent&);
template <>
vector3d<float>* copyComponentBSF<vector3d<float>, STransformNormalComponent>(
    vector3d<float>*, unsigned, const unsigned char*, unsigned, glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE, unsigned short,
    STransformNormalComponent&);

}  // namespace glitch::core
