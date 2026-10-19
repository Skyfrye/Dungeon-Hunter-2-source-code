// Wave 4 slice 1d: typed accessors of IMaterialParameters<CMaterialRenderer, ...> (57 rows).
// Each row is one of the families below, with the code, mask and element type taken from its
// pseudocode. Intrusive pointer rows are not here (blocked).
#include "glitch-video/material_parameters_part_d.hpp"

#include <cstddef>
#include <cstdint>
#include <cstring>

namespace glitch::video::detail::rparams {

namespace {

// SShaderParameterTypeInspection tables (ELF 0x8e2c58 Convertions, 0x8e2bf8 ValueTypeBaseType,
// 0x8e2bc4 ValueTypeArraySize). Read from the binary; indexed by stored type code 0..18.
constexpr uint32_t kConvertions[19] = {0x1,     0x22,    0x4,     0x8,     0x10,    0x22,    0x40,
                                       0x80,    0x30100, 0x200,   0x400,   0x800,   0x1000,  0x2000,
                                       0x4000,  0x8000,  0x30100, 0x30100, 0x40000};
constexpr uint8_t kValueTypeBaseType[19] = {0,    1,    1,    1,    1,    5,    5,    5,    5, 5,
                                            5,    5,    0xC,  0xD,  0xE,  0xF,  0,    5,    0x12};
constexpr uint8_t kValueTypeArraySize[19] = {1, 1, 2, 3, 4, 1, 2, 3, 4, 4, 9, 16, 1, 1, 1, 1, 4, 4, 1};

// Codes outside the table are refused (the original reads past the table; see NOTES).
bool gated(uint8_t code, uint32_t mask) { return code < 19 && (kConvertions[code] & mask) != 0; }
uint8_t baseType(uint8_t code) { return code < 19 ? kValueTypeBaseType[code] : 0xFF; }
uint32_t arraySize(uint8_t code) { return code < 19 ? kValueTypeArraySize[code] : 0; }

const SParameterEntry* entryOf(const SRendererValueTable& t, uint16_t id) {
    if (id >= t.count || t.entries == nullptr) return nullptr;
    return &t.entries[id];
}

float bitsToFloat(uint32_t bits) {
    float f;
    std::memcpy(&f, &bits, sizeof f);
    return f;
}
// Byte to float scale used by the colour conversions (bit pattern 0x3b808081, 1/255).
const float kByteScale = bitsToFloat(0x3B808081u);

template <class V>
V load(const uint8_t* p) {
    V v;
    std::memcpy(&v, p, sizeof v);
    return v;
}
template <class V>
void store(uint8_t* p, const V& v) {
    std::memcpy(p, &v, sizeof v);
}
void copyBytes(void* dst, const void* src, std::size_t n) { std::memcpy(dst, src, n); }

float fromByte(uint8_t b) { return static_cast<float>(b) * kByteScale; }

// (unsigned int)(float)(v * 255.0), truncated to the byte the original stores.
uint32_t f2uiz(float v) {
    if (!(v > 0.0f)) return 0u;
    if (v >= 4294967296.0f) return 0xFFFFFFFFu;
    return static_cast<uint32_t>(v);
}
uint8_t toByte(float v) {
    const float scaled = static_cast<float>(static_cast<double>(v) * 255.0);
    return static_cast<uint8_t>(f2uiz(scaled));
}

// __aeabi_f2iz: truncation toward zero with saturation; NaN gives 0.
int32_t f2iz(float v) {
    if (!(v == v)) return 0;
    if (v >= 2147483648.0f) return 0x7FFFFFFF;
    if (v <= -2147483648.0f) return static_cast<int32_t>(0x80000000u);
    return static_cast<int32_t>(v);
}

// Stride rule of the array forms: 0 means contiguous (the memcpy path), otherwise the caller side steps by stride.
ptrdiff_t stepOf(int stride, std::size_t elem) {
    return stride == 0 ? static_cast<ptrdiff_t>(elem) : static_cast<ptrdiff_t>(stride);
}

// Element k of src (stepping srcStep) goes to element k of dst (stepping dstStep).
void copyElements(uint8_t* dst, ptrdiff_t dstStep, const uint8_t* src, ptrdiff_t srcStep, uint32_t count,
                  std::size_t elem) {
    for (uint32_t k = 0; k < count; ++k) {
        std::memcpy(dst + static_cast<ptrdiff_t>(k) * dstStep, src + static_cast<ptrdiff_t>(k) * srcStep, elem);
    }
}

// Indexed read, same type. The entry type must equal kCode and index must be below the entry count.
template <class V, uint8_t kCode>
int getIndexPlain(const SRendererValueTable& t, uint16_t id, uint32_t index, V& out) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || e->type != kCode || index >= e->count) return 0;
    std::memcpy(&out, t.values + e->valueOffset + index * sizeof(V), sizeof(V));
    return 1;
}

// Array read, same type. Returns 0 when the id is out of range or the type differs.
template <class V, uint8_t kCode>
int getArrayPlain(const SRendererValueTable& t, uint16_t id, V* out, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || e->type != kCode) return 0;
    copyElements(reinterpret_cast<uint8_t*>(out), stepOf(stride, sizeof(V)), t.values + e->valueOffset, sizeof(V),
                 e->count, sizeof(V));
    return 1;
}

// Array write, same type.
template <class V, uint8_t kCode>
int setArrayPlain(const SRendererValueTable& t, uint16_t id, const V* src, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || e->type != kCode) return 0;
    copyElements(t.values + e->valueOffset, sizeof(V), reinterpret_cast<const uint8_t*>(src),
                 stepOf(stride, sizeof(V)), e->count, sizeof(V));
    return 1;
}

// Cvt forms of a vector type that converts nothing: the gate must pass, and only the own code is copied.
template <class V, uint32_t kMask, uint8_t kCode>
int getIndexCvtSame(const SRendererValueTable& t, uint16_t id, uint32_t index, V& out) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, kMask) || index >= e->count) return 0;
    // The original reads the first element here; the index is not added to the offset.
    if (e->type == kCode) std::memcpy(&out, t.values + e->valueOffset, sizeof(V));
    return 1;
}

template <class V, uint32_t kMask, uint8_t kCode>
int getArrayCvtSame(const SRendererValueTable& t, uint16_t id, V* out, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, kMask)) return 0;
    if (e->type == kCode) {
        copyElements(reinterpret_cast<uint8_t*>(out), stepOf(stride, sizeof(V)), t.values + e->valueOffset, sizeof(V),
                     e->count, sizeof(V));
    }
    return 1;
}

template <class V, uint32_t kMask, uint8_t kCode>
int setArrayCvtSame(const SRendererValueTable& t, uint16_t id, const V* src, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, kMask)) return 0;
    if (e->type == kCode) {
        copyElements(t.values + e->valueOffset, sizeof(V), reinterpret_cast<const uint8_t*>(src),
                     stepOf(stride, sizeof(V)), e->count, sizeof(V));
    }
    return 1;
}

}  // namespace

// 0x5cfed4 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
int getParameter(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector3d<float>& out) {
    return getIndexPlain<core::vector3d<float>, 7>(t, id, index, out);
}

// 0x5cff40 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
int getParameter(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector4d<float>& out) {
    return getIndexPlain<core::vector4d<float>, 8>(t, id, index, out);
}

// 0x5cffb0 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
int getParameter(const SRendererValueTable& t, uint16_t id, uint32_t index, SColor& out) {
    return getIndexPlain<SColor, 16>(t, id, index, out);
}

// 0x5d0010 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
int getParameter(const SRendererValueTable& t, uint16_t id, uint32_t index, SColorf& out) {
    return getIndexPlain<SColorf, 17>(t, id, index, out);
}

// 0x5d0110 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector2d<int>& out) {
    return getIndexCvtSame<core::vector2d<int>, 0x4, 2>(t, id, index, out);
}

// 0x5d0198 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector3d<int>& out) {
    return getIndexCvtSame<core::vector3d<int>, 0x8, 3>(t, id, index, out);
}

// 0x5d0228 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector4d<int>& out) {
    return getIndexCvtSame<core::vector4d<int>, 0x10, 4>(t, id, index, out);
}

// 0x5d0364 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector2d<float>& out) {
    return getIndexCvtSame<core::vector2d<float>, 0x40, 6>(t, id, index, out);
}

// 0x5d03ec _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector3d<float>& out) {
    return getIndexCvtSame<core::vector3d<float>, 0x80, 7>(t, id, index, out);
}

// 0x5d0078 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, int& out) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x2) || index >= e->count) return 0;
    const uint8_t* p = t.values + e->valueOffset;
    if (e->type == 1) {
        out = load<int32_t>(p);
    } else if (e->type == 5) {
        out = f2iz(load<float>(p));
    }
    return 1;
}

// 0x5d02c4 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSB_
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, float& out) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x20) || index >= e->count) return 0;
    const uint8_t* p = t.values + e->valueOffset;
    if (e->type == 1) {
        out = static_cast<float>(load<int32_t>(p));
    } else if (e->type == 5) {
        out = load<float>(p);
    }
    return 1;
}

// 0x5d047c _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSE_
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector4d<float>& out) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x100) || index >= e->count) return 0;
    const uint8_t* p = t.values + e->valueOffset;
    if (e->type == 16) {
        out.X = fromByte(p[0]);
        out.Y = fromByte(p[1]);
        out.Z = fromByte(p[2]);
        out.W = fromByte(p[3]);
    } else if (e->type == 17 || e->type == 8) {
        copyBytes(&out, p, 16);
    }
    return 1;
}

// 0x5d05ac _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, SColor& out) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x10000) || index >= e->count) return 0;
    const uint8_t* p = t.values + e->valueOffset;
    if (e->type == 16) {
        copyBytes(&out, p, 4);
    } else if (e->type == 17 || e->type == 8) {
        const uint8_t channels[4] = {toByte(load<float>(p)), toByte(load<float>(p + 4)),
                                     toByte(load<float>(p + 8)), toByte(load<float>(p + 12))};
        copyBytes(&out, channels, 4);
    }
    return 1;
}

// 0x5d0734 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtjRSC_
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, SColorf& out) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x20000) || index >= e->count) return 0;
    const uint8_t* p = t.values + e->valueOffset;
    if (e->type == 16) {
        out.r = fromByte(p[0]);
        out.g = fromByte(p[1]);
        out.b = fromByte(p[2]);
        out.a = fromByte(p[3]);
    } else if (e->type == 17 || e->type == 8) {
        copyBytes(&out, p, 16);
    }
    return 1;
}

// 0x5d1428 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
int getParameterCvt(const SRendererValueTable& t, uint16_t id, int* out, int stride) {
    return getArrayCvtSame<int, 0x2, 1>(t, id, out, stride);
}

// 0x5d1340 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector2d<int>* out, int stride) {
    return getArrayCvtSame<core::vector2d<int>, 0x4, 2>(t, id, out, stride);
}

// 0x5d1250 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector3d<int>* out, int stride) {
    return getArrayCvtSame<core::vector3d<int>, 0x8, 3>(t, id, out, stride);
}

// 0x5d1160 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector4d<int>* out, int stride) {
    return getArrayCvtSame<core::vector4d<int>, 0x10, 4>(t, id, out, stride);
}

// 0x5d0f64 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector2d<float>* out, int stride) {
    return getArrayCvtSame<core::vector2d<float>, 0x40, 6>(t, id, out, stride);
}

// 0x5d0e74 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector3d<float>* out, int stride) {
    return getArrayCvtSame<core::vector3d<float>, 0x80, 7>(t, id, out, stride);
}

// 0x5d104c _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
int getParameterCvt(const SRendererValueTable& t, uint16_t id, float* out, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x20)) return 0;
    const uint8_t* src = t.values + e->valueOffset;
    if (e->type == 5) {
        copyElements(reinterpret_cast<uint8_t*>(out), stepOf(stride, 4), src, 4, e->count, 4);
    } else if (e->type == 1 && stride != 0) {
        for (uint32_t k = 0; k < e->count; ++k) {
            const float v = static_cast<float>(load<int32_t>(src + 4 * k));
            store(reinterpret_cast<uint8_t*>(out) + static_cast<ptrdiff_t>(k) * stride, v);
        }
    }
    return 1;
}

// 0x5d0c64 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector4d<float>* out, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x100)) return 0;
    const uint8_t* src = t.values + e->valueOffset;
    uint8_t* dst = reinterpret_cast<uint8_t*>(out);
    if (e->type == 8) {
        copyElements(dst, stepOf(stride, 16), src, 16, e->count, 16);
        return 1;
    }
    if (stride == 0) return 1;
    for (uint32_t k = 0; k < e->count; ++k) {
        uint8_t* d = dst + static_cast<ptrdiff_t>(k) * stride;
        const uint8_t* s = src + 16 * k;
        if (e->type == 16) {
            store(d, fromByte(s[0]));
            store(d + 4, fromByte(s[1]));
            store(d + 8, fromByte(s[2]));
            store(d + 12, fromByte(s[3]));
        } else if (e->type == 17) {
            copyBytes(d, s, 16);
        }
    }
    return 1;
}

// 0x5d0a3c _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
int getParameterCvt(const SRendererValueTable& t, uint16_t id, SColor* out, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x10000)) return 0;
    const uint8_t* src = t.values + e->valueOffset;
    uint8_t* dst = reinterpret_cast<uint8_t*>(out);
    if (e->type == 16) {
        copyElements(dst, stepOf(stride, 4), src, 4, e->count, 4);
        return 1;
    }
    if (stride == 0) return 1;
    for (uint32_t k = 0; k < e->count; ++k) {
        uint8_t* d = dst + static_cast<ptrdiff_t>(k) * stride;
        if (e->type == 17 || e->type == 8) {
            const uint8_t* s = src + 16 * k;
            const uint8_t channels[4] = {toByte(load<float>(s)), toByte(load<float>(s + 4)),
                                         toByte(load<float>(s + 8)), toByte(load<float>(s + 12))};
            copyBytes(d, channels, 4);
        }
    }
    return 1;
}

// 0x5d086c _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15getParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
int getParameterCvt(const SRendererValueTable& t, uint16_t id, SColorf* out, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x20000)) return 0;
    const uint8_t* src = t.values + e->valueOffset;
    uint8_t* dst = reinterpret_cast<uint8_t*>(out);
    if (e->type == 17) {
        copyElements(dst, stepOf(stride, 16), src, 16, e->count, 16);
        return 1;
    }
    if (stride == 0) return 1;
    for (uint32_t k = 0; k < e->count; ++k) {
        uint8_t* d = dst + static_cast<ptrdiff_t>(k) * stride;
        const uint8_t* s = src + 16 * k;
        if (e->type == 16) {
            store(d, fromByte(s[0]));
            store(d + 4, fromByte(s[1]));
            store(d + 8, fromByte(s[2]));
            store(d + 12, fromByte(s[3]));
        } else if (e->type == 8) {
            copyBytes(d, s, 16);
        }
    }
    return 1;
}

// 0x5d1b24 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
int getParameter(const SRendererValueTable& t, uint16_t id, int* out, int stride) {
    return getArrayPlain<int, 1>(t, id, out, stride);
}

// 0x5d1a74 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector2d<int>* out, int stride) {
    return getArrayPlain<core::vector2d<int>, 2>(t, id, out, stride);
}

// 0x5d19c4 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector3d<int>* out, int stride) {
    return getArrayPlain<core::vector3d<int>, 3>(t, id, out, stride);
}

// 0x5d1914 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector4d<int>* out, int stride) {
    return getArrayPlain<core::vector4d<int>, 4>(t, id, out, stride);
}

// 0x5d1878 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSB_i
int getParameter(const SRendererValueTable& t, uint16_t id, float* out, int stride) {
    return getArrayPlain<float, 5>(t, id, out, stride);
}

// 0x5d17c8 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector2d<float>* out, int stride) {
    return getArrayPlain<core::vector2d<float>, 6>(t, id, out, stride);
}

// 0x5d1718 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector3d<float>* out, int stride) {
    return getArrayPlain<core::vector3d<float>, 7>(t, id, out, stride);
}

// 0x5d1668 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSE_i
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector4d<float>* out, int stride) {
    return getArrayPlain<core::vector4d<float>, 8>(t, id, out, stride);
}

// 0x5d15b4 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
int getParameter(const SRendererValueTable& t, uint16_t id, SColor* out, int stride) {
    return getArrayPlain<SColor, 16>(t, id, out, stride);
}

// 0x5d1500 _ZNK6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12getParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPSC_i
int getParameter(const SRendererValueTable& t, uint16_t id, SColorf* out, int stride) {
    return getArrayPlain<SColorf, 17>(t, id, out, stride);
}

// 0x5d265c _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector2d<int>* src, int stride) {
    return setArrayCvtSame<core::vector2d<int>, 0x4, 2>(t, id, src, stride);
}

// 0x5d256c _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector3d<int>* src, int stride) {
    return setArrayCvtSame<core::vector3d<int>, 0x8, 3>(t, id, src, stride);
}

// 0x5d247c _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector4d<int>* src, int stride) {
    return setArrayCvtSame<core::vector4d<int>, 0x10, 4>(t, id, src, stride);
}

// 0x5d2280 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector2d<float>* src, int stride) {
    return setArrayCvtSame<core::vector2d<float>, 0x40, 6>(t, id, src, stride);
}

// 0x5d2190 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector3d<float>* src, int stride) {
    return setArrayCvtSame<core::vector3d<float>, 0x80, 7>(t, id, src, stride);
}

// 0x5d2744 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const int* src, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x2)) return 0;
    uint8_t* dst = t.values + e->valueOffset;
    const uint8_t* s = reinterpret_cast<const uint8_t*>(src);
    if (e->type == 1) {
        copyElements(dst, 4, s, stepOf(stride, 4), e->count, 4);
    } else if (e->type == 5 && stride != 0) {
        for (uint32_t k = 0; k < e->count; ++k) {
            const float v = static_cast<float>(load<int32_t>(s + static_cast<ptrdiff_t>(k) * stride));
            store(dst + 4 * k, v);
        }
    }
    return 1;
}

// 0x5d2368 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const float* src, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x20)) return 0;
    uint8_t* dst = t.values + e->valueOffset;
    const uint8_t* s = reinterpret_cast<const uint8_t*>(src);
    if (e->type == 5) {
        copyElements(dst, 4, s, stepOf(stride, 4), e->count, 4);
    } else if (e->type == 1 && stride != 0) {
        for (uint32_t k = 0; k < e->count; ++k) {
            const int32_t v = f2iz(load<float>(s + static_cast<ptrdiff_t>(k) * stride));
            store(dst + 4 * k, v);
        }
    }
    return 1;
}

// 0x5d1fbc _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector4d<float>* src, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x100)) return 0;
    uint8_t* dst = t.values + e->valueOffset;
    const uint8_t* s = reinterpret_cast<const uint8_t*>(src);
    if (e->type == 8) {
        copyElements(dst, 16, s, stepOf(stride, 16), e->count, 16);
        return 1;
    }
    if (stride == 0) return 1;
    for (uint32_t k = 0; k < e->count; ++k) {
        const uint8_t* sk = s + static_cast<ptrdiff_t>(k) * stride;
        uint8_t* d = dst + 16 * k;
        if (e->type == 16) {
            const uint8_t channels[4] = {toByte(load<float>(sk)), toByte(load<float>(sk + 4)),
                                         toByte(load<float>(sk + 8)), toByte(load<float>(sk + 12))};
            copyBytes(d, channels, 4);
        } else if (e->type == 17) {
            copyBytes(d, sk, 16);
        }
    }
    return 1;
}

// 0x5d1d9c _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const SColor* src, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x10000)) return 0;
    uint8_t* dst = t.values + e->valueOffset;
    const uint8_t* s = reinterpret_cast<const uint8_t*>(src);
    if (e->type == 16) {
        copyElements(dst, 4, s, stepOf(stride, 4), e->count, 4);
        return 1;
    }
    if (stride == 0) return 1;
    for (uint32_t k = 0; k < e->count; ++k) {
        const uint8_t* sk = s + static_cast<ptrdiff_t>(k) * stride;
        if (e->type == 17 || e->type == 8) {
            uint8_t* d = dst + 16 * k;
            store(d, fromByte(sk[0]));
            store(d + 4, fromByte(sk[1]));
            store(d + 8, fromByte(sk[2]));
            store(d + 12, fromByte(sk[3]));
        }
    }
    return 1;
}

// 0x5d1bc0 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE15setParameterCvtINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const SColorf* src, int stride) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || !gated(e->type, 0x20000)) return 0;
    uint8_t* dst = t.values + e->valueOffset;
    const uint8_t* s = reinterpret_cast<const uint8_t*>(src);
    if (e->type == 17) {
        copyElements(dst, 16, s, stepOf(stride, 16), e->count, 16);
        return 1;
    }
    if (stride == 0) return 1;
    for (uint32_t k = 0; k < e->count; ++k) {
        const uint8_t* sk = s + static_cast<ptrdiff_t>(k) * stride;
        uint8_t* d = dst + 16 * k;
        if (e->type == 16) {
            const uint8_t channels[4] = {toByte(load<float>(sk)), toByte(load<float>(sk + 4)),
                                         toByte(load<float>(sk + 8)), toByte(load<float>(sk + 12))};
            copyBytes(d, channels, 4);
        } else if (e->type == 8) {
            copyBytes(d, sk, 16);
        }
    }
    return 1;
}

// 0x5d2e7c _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIiEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
int setParameter(const SRendererValueTable& t, uint16_t id, const int* src, int stride) {
    return setArrayPlain<int, 1>(t, id, src, stride);
}

// 0x5d2dcc _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector2dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector2d<int>* src, int stride) {
    return setArrayPlain<core::vector2d<int>, 2>(t, id, src, stride);
}

// 0x5d2d1c _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector3dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector3d<int>* src, int stride) {
    return setArrayPlain<core::vector3d<int>, 3>(t, id, src, stride);
}

// 0x5d2c6c _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector4dIiEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector4d<int>* src, int stride) {
    return setArrayPlain<core::vector4d<int>, 4>(t, id, src, stride);
}

// 0x5d2bd0 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterIfEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSB_i
int setParameter(const SRendererValueTable& t, uint16_t id, const float* src, int stride) {
    return setArrayPlain<float, 5>(t, id, src, stride);
}

// 0x5d2b20 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector2dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector2d<float>* src, int stride) {
    return setArrayPlain<core::vector2d<float>, 6>(t, id, src, stride);
}

// 0x5d2a70 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector3dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector3d<float>* src, int stride) {
    return setArrayPlain<core::vector3d<float>, 7>(t, id, src, stride);
}

// 0x5d29c0 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS_4core8vector4dIfEEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSE_i
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector4d<float>* src, int stride) {
    return setArrayPlain<core::vector4d<float>, 8>(t, id, src, stride);
}

// 0x5d290c _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS0_6SColorEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
int setParameter(const SRendererValueTable& t, uint16_t id, const SColor* src, int stride) {
    return setArrayPlain<SColor, 16>(t, id, src, stride);
}

// 0x5d2858 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE12setParameterINS0_7SColorfEEEN5boost9enable_ifINS1_36SIsValidSetMaterialParamaterOverloadIT_EEbE4typeEtPKSC_i
int setParameter(const SRendererValueTable& t, uint16_t id, const SColorf* src, int stride) {
    return setArrayPlain<SColorf, 17>(t, id, src, stride);
}

// 0x5d404c _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE19setParameterElementIhEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
int setParameterElement(const SRendererValueTable& t, uint16_t id, uint32_t index, uint32_t element, uint8_t value) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || baseType(e->type) != 0 || element >= arraySize(e->type) || index >= e->count) return 0;
    t.values[e->valueOffset + index + element] = value;
    return 1;
}

// 0x5d4154 _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE19setParameterElementIiEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
int setParameterElement(const SRendererValueTable& t, uint16_t id, uint32_t index, uint32_t element, int32_t value) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || baseType(e->type) != 1 || element >= arraySize(e->type) || index >= e->count) return 0;
    store(t.values + e->valueOffset + 4 * (static_cast<size_t>(element) + index), value);
    return 1;
}

// 0x5d425c _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE19setParameterElementIfEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
int setParameterElement(const SRendererValueTable& t, uint16_t id, uint32_t index, uint32_t element, float value) {
    const SParameterEntry* e = entryOf(t, id);
    if (!e || baseType(e->type) != 5 || element >= arraySize(e->type) || index >= e->count) return 0;
    if (e->type == 11) {
        // Matrix slot: the original keeps a CMatrix4 pointer in the value buffer; here the slot map is used.
        if (t.matrices == nullptr) return 0;
        core::CMatrix4<float>*& slot = (*t.matrices)[e->valueOffset];
        if (slot == nullptr) slot = new core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
        slot->flag = false;
        slot->M[element] = value;
        return 1;
    }
    store(t.values + e->valueOffset + 4 * (static_cast<size_t>(element) + index), value);
    return 1;
}

}  // namespace glitch::video::detail::rparams
