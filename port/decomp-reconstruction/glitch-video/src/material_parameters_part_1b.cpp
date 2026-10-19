// Wave 4 slice 1b: typed accessors of IMaterialParameters for owners G and M (see the header).
//
// Reconstruction notes (from the Hex-Rays pseudocode of each row, checked against the ARM listing):
//   - Entry lookup. G: id >= entry count, or an unset entry, gives failure (the original returns the shared
//     Invalid entry, which is unset). M: id >= block count gives failure.
//   - Gate. Convertions[code] & accessor bit, table read from ELF 0x8e2c58 (19 words). A code >= 19 fails
//     (the original reads past the table; not reproduced).
//   - Index forms of the non-Cvt setters and getters use element index * sizeof(T). The Cvt forms and the M
//     Cvt getters use element 0 (the index is only checked against the count). This is the original
//     behaviour, kept on purpose.
//   - Conversions use the original float words: byte -> float by 0x3B808081 (i2f then fmul); float -> byte by
//     0x437F0000 (255.0f), then __aeabi_f2uiz (saturating), low byte stored; float -> int by __aeabi_f2iz.
//   - M dirty marking: a setter that changes the stored value sets dirtyFirst = dirtyLast = -1. The Cvt
//     setters compare as the pseudocode does (float != on floats, bitwise on integers).
//   - Pointer elements (CLight, ITexture) are stored as raw pointers, sizeof(void*) bytes each (the original
//     stores 4-byte pointers). Refcounts follow the pseudocode: add before store, release of the old element
//     after the store. The last-reference path is the destroyLight / textureDrop hooks.
#include "glitch-video/material_parameters_part_1b.hpp"

#include <cstring>

#include "glitch-video/light.hpp"
#include "glitch-video/texture.hpp"

namespace glitch::video::detail::part1b {

using glitch::core::vector2d;
using glitch::core::vector3d;
using glitch::core::vector4d;
using glitch::video::SColor;
using glitch::video::SColorf;

namespace {

// SShaderParameterTypeInspection::Convertions, 19 words (ELF 0x8e2c58).
constexpr std::uint32_t kConvertions[19] = {
    0x1,    0x22,    0x4,    0x8,    0x10,   0x22,   0x40,    0x80,    0x30100, 0x200,
    0x400,  0x800,   0x1000, 0x2000, 0x4000, 0x8000, 0x30100, 0x30100, 0x40000};

bool gatePasses(std::uint8_t code, std::uint32_t gate) {
    return code < 19 && (kConvertions[code] & gate) != 0;
}

// Stored element size of a value type code (the strides the pseudocode steps by inside the table).
std::uint32_t storedElementSize(std::uint8_t code) {
    switch (code) {
        case 1: case 5: case 16: return 4;
        case 2: case 6: return 8;
        case 3: case 7: return 12;
        case 4: case 8: case 17: return 16;
        default: return 0;
    }
}

float bitsToFloat(std::uint32_t bits) {
    float f;
    std::memcpy(&f, &bits, sizeof f);
    return f;
}

// (float)byte * (1/255 as stored by the original)
float byteToFloat(std::uint8_t b) { return static_cast<float>(b) * bitsToFloat(0x3B808081u); }

// __aeabi_f2uiz: NaN and negatives give 0, values of 2^32 and above give UINT32_MAX.
std::uint32_t f2uiz(float v) {
    if (!(v > 0.0f)) return 0;
    if (v >= 4294967296.0f) return 0xFFFFFFFFu;
    return static_cast<std::uint32_t>(v);
}

// __aeabi_f2iz: truncation toward zero with saturation; NaN gives 0.
std::int32_t f2iz(float v) {
    if (!(v == v)) return 0;
    if (v >= 2147483648.0f) return 0x7FFFFFFF;
    if (v <= -2147483648.0f) return static_cast<std::int32_t>(0x80000000u);
    return static_cast<std::int32_t>(v);
}

// float -> byte: (unsigned)(v * 255.0f), low byte.
std::uint8_t floatToByte(float v) {
    return static_cast<std::uint8_t>(f2uiz(v * bitsToFloat(0x437F0000u)));
}

template <class T>
T loadAs(const std::uint8_t* p) {
    T v;
    std::memcpy(&v, p, sizeof(T));
    return v;
}

template <class T>
void storeAs(std::uint8_t* p, const T& v) {
    std::memcpy(p, &v, sizeof(T));
}

bool inRange(const std::vector<std::uint8_t>& buf, std::uint64_t pos, std::uint64_t size) {
    return pos + size <= buf.size();
}

// Value equality of the setters: float compares with != (NaN never equal, -0 == +0), integers bitwise.
template <class T>
bool sameValue(const T& a, const T& b) {
    return std::memcmp(&a, &b, sizeof(T)) == 0;
}
bool sameValue(float a, float b) { return a == b; }
bool sameValue(const vector2d<float>& a, const vector2d<float>& b) { return a.X == b.X && a.Y == b.Y; }
bool sameValue(const vector3d<float>& a, const vector3d<float>& b) {
    return a.X == b.X && a.Y == b.Y && a.Z == b.Z;
}
bool sameValue(const vector4d<float>& a, const vector4d<float>& b) {
    return a.X == b.X && a.Y == b.Y && a.Z == b.Z && a.W == b.W;
}

// Entry lookup. G: the id must be inside the table and the entry defined (ref non-zero).
const part1a::SParamEntry* findGlobal(const GlobalParameterStore& s, std::uint16_t id) {
    if (id >= s.entries.size()) return nullptr;
    const part1a::SParamEntry& e = s.entries[id];
    return e.ref != 0 ? &e : nullptr;
}

// Entry lookup. M: the id must be below the block count (and inside the entry array).
const detail::SParameterEntry* findMaterial(const MaterialParameterStore& m, std::uint16_t id) {
    const MaterialParameterBlock* b = m.block;
    if (!b || id >= b->count || id >= b->entries.size()) return nullptr;
    return &b->entries[id];
}

void markDirty(MaterialParameterStore& m) {
    m.dirtyFirst = -1;  // +0x0c
    m.dirtyLast = -1;   // +0x10
}

// ---- Element conversions for the M getters (the stored element at p has type code `code`).
// Returns false when the code writes nothing. `floatToInt` is false for the pointer form of int (only
// code 1 is copied there), true for the index form (code 5 is converted with f2iz).
template <class T>
bool convertElement(const std::uint8_t* p, std::uint8_t code, T& out, bool floatToInt = true);

template <>
bool convertElement<int>(const std::uint8_t* p, std::uint8_t code, int& out, bool floatToInt) {
    if (code == 1) {
        out = loadAs<int>(p);
        return true;
    }
    if (code == 5 && floatToInt) {
        out = f2iz(loadAs<float>(p));
        return true;
    }
    return false;
}

template <>
bool convertElement<float>(const std::uint8_t* p, std::uint8_t code, float& out, bool) {
    if (code == 1) {
        out = static_cast<float>(loadAs<std::int32_t>(p));
        return true;
    }
    if (code == 5) {
        out = loadAs<float>(p);
        return true;
    }
    return false;
}

// Own-type only (the gate lets nothing else through).
template <class T>
bool convertOwn(const std::uint8_t* p, std::uint8_t code, T& out) {
    if (code != ParamCode<T>::kCode) return false;
    out = loadAs<T>(p);
    return true;
}
template <>
bool convertElement<vector2d<int>>(const std::uint8_t* p, std::uint8_t code, vector2d<int>& out, bool) {
    return convertOwn(p, code, out);
}
template <>
bool convertElement<vector3d<int>>(const std::uint8_t* p, std::uint8_t code, vector3d<int>& out, bool) {
    return convertOwn(p, code, out);
}
template <>
bool convertElement<vector4d<int>>(const std::uint8_t* p, std::uint8_t code, vector4d<int>& out, bool) {
    return convertOwn(p, code, out);
}
template <>
bool convertElement<vector2d<float>>(const std::uint8_t* p, std::uint8_t code, vector2d<float>& out, bool) {
    return convertOwn(p, code, out);
}
template <>
bool convertElement<vector3d<float>>(const std::uint8_t* p, std::uint8_t code, vector3d<float>& out, bool) {
    return convertOwn(p, code, out);
}

// vector4d<float>: code 16 unpacks four bytes, codes 8 and 17 copy the 16 bytes.
template <>
bool convertElement<vector4d<float>>(const std::uint8_t* p, std::uint8_t code, vector4d<float>& out, bool) {
    if (code == 16) {
        out.X = byteToFloat(p[0]);
        out.Y = byteToFloat(p[1]);
        out.Z = byteToFloat(p[2]);
        out.W = byteToFloat(p[3]);
        return true;
    }
    if (code == 8 || code == 17) {
        out = loadAs<vector4d<float>>(p);
        return true;
    }
    return false;
}

// SColor: code 16 copies the packed word, codes 8 and 17 pack four floats into bytes.
template <>
bool convertElement<SColor>(const std::uint8_t* p, std::uint8_t code, SColor& out, bool) {
    if (code == 16) {
        out = loadAs<SColor>(p);
        return true;
    }
    if (code == 8 || code == 17) {
        const float r = loadAs<float>(p);
        const float g = loadAs<float>(p + 4);
        const float b = loadAs<float>(p + 8);
        const float a = loadAs<float>(p + 12);
        std::uint8_t bytes[4] = {floatToByte(r), floatToByte(g), floatToByte(b), floatToByte(a)};
        std::memcpy(&out, bytes, sizeof bytes);
        return true;
    }
    return false;
}

// SColorf: code 16 unpacks four bytes, codes 8 and 17 copy the 16 bytes.
template <>
bool convertElement<SColorf>(const std::uint8_t* p, std::uint8_t code, SColorf& out, bool) {
    if (code == 16) {
        out.r = byteToFloat(p[0]);
        out.g = byteToFloat(p[1]);
        out.b = byteToFloat(p[2]);
        out.a = byteToFloat(p[3]);
        return true;
    }
    if (code == 8 || code == 17) {
        out = loadAs<SColorf>(p);
        return true;
    }
    return false;
}

// ---- Owner G families.

// Index setter, own type: element index * sizeof(T).
template <class T>
int globalSetIndexed(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const T& src) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || e->type != ParamCode<T>::kCode || index >= e->count) return 0;
    const std::uint64_t pos = std::uint64_t(e->offset) + std::uint64_t(index) * sizeof(T);
    if (!inRange(s.values, pos, sizeof(T))) return 0;
    storeAs(s.values.data() + pos, src);
    return 1;
}

// Cvt setter for the own-only accessors: the gate, then element 0 (no index multiply).
template <class T>
int globalSetCvtOwn(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const T& src) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || !gatePasses(e->type, ParamCode<T>::kGate) || index >= e->count) return 0;
    if (e->type == ParamCode<T>::kCode) {
        if (!inRange(s.values, e->offset, sizeof(T))) return 0;
        storeAs(s.values.data() + e->offset, src);
    }
    return 1;
}

// Cvt setter for int: code 1 stores the int, code 5 stores the int as float.
int globalSetCvtInt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, int src) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || !gatePasses(e->type, ParamCode<int>::kGate) || index >= e->count) return 0;
    if (!inRange(s.values, e->offset, 4)) return 0;
    std::uint8_t* p = s.values.data() + e->offset;
    if (e->type == 1) {
        storeAs<int>(p, src);
    } else {
        storeAs<float>(p, static_cast<float>(src));
    }
    return 1;
}

// Cvt setter for float: code 1 stores the float as int (f2iz), code 5 stores the float.
int globalSetCvtFloat(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, float src) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || !gatePasses(e->type, ParamCode<float>::kGate) || index >= e->count) return 0;
    if (!inRange(s.values, e->offset, 4)) return 0;
    std::uint8_t* p = s.values.data() + e->offset;
    if (e->type == 1) {
        storeAs<std::int32_t>(p, f2iz(src));
    } else {
        storeAs<float>(p, src);
    }
    return 1;
}

// Reference helpers for the element pointers of owner G (raw pointers in the value buffer).
CLight* loadLight(const std::uint8_t* p) { return loadAs<CLight*>(p); }
void addRefLight(CLight* light) {
    if (light) ++light->m_refCount;
}
void releaseLight(CLight* light) {
    if (light && light->m_refCount-- == 1) destroyLight(light);
}
// operator= of the intrusive pointer: add the new value, store it, release the old one.
void assignLight(CLight*& dst, CLight* src) {
    addRefLight(src);
    CLight* old = dst;
    dst = src;
    releaseLight(old);
}

ITexture* loadTexture(const std::uint8_t* p) { return loadAs<ITexture*>(p); }

}  // namespace

// ============================================================================================
// Owner G
// ============================================================================================

// 0x5c4754 setParameter<glitch::video::SColorf>(unsigned short, unsigned int, SColorf const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const SColorf& src) {
    return globalSetIndexed(s, id, index, src);
}
// 0x5c47fc setParameter<glitch::video::SColor>(unsigned short, unsigned int, SColor const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const SColor& src) {
    return globalSetIndexed(s, id, index, src);
}
// 0x5c4990 setParameter<glitch::core::vector4d<float>>(unsigned short, unsigned int, vector4d<float> const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const vector4d<float>& src) {
    return globalSetIndexed(s, id, index, src);
}
// 0x5c4a4c setParameter<glitch::core::vector3d<float>>(unsigned short, unsigned int, vector3d<float> const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const vector3d<float>& src) {
    return globalSetIndexed(s, id, index, src);
}
// 0x5c4b04 setParameter<glitch::core::vector2d<float>>(unsigned short, unsigned int, vector2d<float> const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const vector2d<float>& src) {
    return globalSetIndexed(s, id, index, src);
}
// 0x5c4bb0 setParameter<float>(unsigned short, unsigned int, float const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const float& src) {
    return globalSetIndexed(s, id, index, src);
}
// 0x5c4c50 setParameter<glitch::core::vector4d<int>>(unsigned short, unsigned int, vector4d<int> const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const vector4d<int>& src) {
    return globalSetIndexed(s, id, index, src);
}
// 0x5c4d0c setParameter<glitch::core::vector3d<int>>(unsigned short, unsigned int, vector3d<int> const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const vector3d<int>& src) {
    return globalSetIndexed(s, id, index, src);
}
// 0x5c4dc4 setParameter<glitch::core::vector2d<int>>(unsigned short, unsigned int, vector2d<int> const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const vector2d<int>& src) {
    return globalSetIndexed(s, id, index, src);
}
// 0x5c4e70 setParameter<int>(unsigned short, unsigned int, int const&)
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const int& src) {
    return globalSetIndexed(s, id, index, src);
}

// 0x5c4298 setParameterCvt<glitch::core::vector2d<float>>(unsigned short, unsigned int, vector2d<float> const&)
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const vector2d<float>& src) {
    return globalSetCvtOwn(s, id, index, src);
}
// 0x5c4358 setParameterCvt<float>(unsigned short, unsigned int, float const&)
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const float& src) {
    return globalSetCvtFloat(s, id, index, src);
}
// 0x5c442c setParameterCvt<glitch::core::vector4d<int>>(unsigned short, unsigned int, vector4d<int> const&)
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const vector4d<int>& src) {
    return globalSetCvtOwn(s, id, index, src);
}
// 0x5c4500 setParameterCvt<glitch::core::vector3d<int>>(unsigned short, unsigned int, vector3d<int> const&)
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const vector3d<int>& src) {
    return globalSetCvtOwn(s, id, index, src);
}
// 0x5c45c8 setParameterCvt<glitch::core::vector2d<int>>(unsigned short, unsigned int, vector2d<int> const&)
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const vector2d<int>& src) {
    return globalSetCvtOwn(s, id, index, src);
}
// 0x5c4688 setParameterCvt<int>(unsigned short, unsigned int, int const&)
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, const int& src) {
    return globalSetCvtInt(s, id, index, src);
}

// 0x5c48a0 setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(unsigned short, unsigned int, ...)
// Reconstructed: the type gate is textureStateWord (the +0x38 low two bits), the addref is textureAddRef
// and the release of the replaced value is textureDrop (IReferenceCounted::drop, 0x31d584); all three are
// defined at the bottom of this file. A stored pointer slot takes sizeof(void*), not the original 4 bytes.
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, ITexture* const& src) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e) return 0;
    const bool typeOk = src ? (e->type == (textureStateWord(src) & 3u) + 12u)
                            : (static_cast<std::uint32_t>(e->type) - 12u) <= 3u;
    if (!typeOk || index >= e->count) return 0;
    const std::uint64_t pos = std::uint64_t(e->offset) + std::uint64_t(index) * sizeof(void*);
    if (!inRange(s.values, pos, sizeof(void*))) return 0;
    std::uint8_t* slot = s.values.data() + pos;
    ITexture* old = loadTexture(slot);
    if (src) textureAddRef(src);
    storeAs<ITexture*>(slot, src);
    if (old) textureDrop(old);
    return 1;
}

// 0x5c5be0 setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(unsigned short, unsigned int, ...)
// Reconstructed: the last-reference release is releaseLight -> destroyLight; element 0 (the index only checks the
// bound), and a stored pointer slot is sizeof(void*), not the original 4 bytes.
int setParameterCvt(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, CLight* const& src) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || !gatePasses(e->type, 0x40000) || index >= e->count) return 0;
    if (e->type == 18) {
        if (!inRange(s.values, e->offset, sizeof(void*))) return 0;
        std::uint8_t* slot = s.values.data() + e->offset;
        CLight* dst = loadLight(slot);
        assignLight(dst, src);
        storeAs<CLight*>(slot, dst);
    }
    return 1;
}

// 0x5c5a40 getParameter<boost::intrusive_ptr<glitch::video::CLight>>(unsigned short, unsigned int, ...) const
// Reconstructed: assignLight is the intrusive pointer assignment the listing inlines - addref of the new
// value into the caller's pointer, store, release of the caller's old value, last reference through
// releaseLight -> destroyLight (both defined above). The element step is sizeof(void*) where the original
// uses 4.
int getParameter(const GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, CLight*& out) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || e->type != 18 || index >= e->count) return 0;
    const std::uint64_t pos = std::uint64_t(e->offset) + std::uint64_t(index) * sizeof(void*);
    if (!inRange(s.values, pos, sizeof(void*))) return 0;
    assignLight(out, loadLight(s.values.data() + pos));
    return 1;
}

// 0x5c58ec getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(unsigned short, unsigned int, ...) const
// Reconstructed: the last-reference release is releaseLight -> destroyLight, element 0 (no index multiply), and a
// stored pointer slot is sizeof(void*), not the original 4 bytes.
int getParameterCvt(const GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, CLight*& out) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || !gatePasses(e->type, 0x40000) || index >= e->count) return 0;
    if (e->type == 18) {
        if (!inRange(s.values, e->offset, sizeof(void*))) return 0;
        assignLight(out, loadLight(s.values.data() + e->offset));
    }
    return 1;
}

// 0x5c4fa8 getParameterCvt<boost::intrusive_ptr<glitch::video::ITexture>>(unsigned short, ITexture**, int) const
// Reconstructed: the per-element addref is textureAddRef and the release of the replaced element textureDrop; the
// four texture codes 12..15 behave the same, and a stride of 0 writes nothing. The stored side steps by
// sizeof(void*) instead of the original 4.
int getParameterArrayCvt(const GlobalParameterStore& s, std::uint16_t id, ITexture** out, int stride) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || (static_cast<std::uint32_t>(e->type) - 12u) > 3u) return 0;
    if (stride != 0) {
        const std::uint8_t* base = s.values.data() + e->offset;
        std::uint8_t* dst = reinterpret_cast<std::uint8_t*>(out);
        for (std::uint32_t i = 0; i < e->count; ++i) {
            ITexture* elem = loadTexture(base + i * sizeof(void*));
            if (elem) textureAddRef(elem);
            ITexture** slot = reinterpret_cast<ITexture**>(dst);
            ITexture* old = *slot;
            *slot = elem;
            if (old) textureDrop(old);
            dst += stride;
        }
    }
    return 1;
}

// 0x5c518c getParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(unsigned short, CLight**, int) const
// Reconstructed: the last-reference release is releaseLight -> destroyLight, and a stride of 0 writes nothing. The
// stored side steps by sizeof(void*) instead of the original 4.
int getParameterArrayCvt(const GlobalParameterStore& s, std::uint16_t id, CLight** out, int stride) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || !gatePasses(e->type, 0x40000)) return 0;
    if (stride != 0 && e->type == 18) {
        const std::uint8_t* base = s.values.data() + e->offset;
        std::uint8_t* dst = reinterpret_cast<std::uint8_t*>(out);
        for (std::uint32_t i = 0; i < e->count; ++i) {
            CLight* elem = loadLight(base + i * sizeof(void*));
            assignLight(*reinterpret_cast<CLight**>(dst), elem);
            dst += stride;
        }
    }
    return 1;
}

// 0x5c540c setParameterCvt<boost::intrusive_ptr<glitch::video::CLight>>(unsigned short, CLight const*, int)
// Reconstructed: the last-reference release is releaseLight -> destroyLight, and a stride of 0 writes nothing. The
// stored side steps by sizeof(void*) instead of the original 4.
int setParameterArrayCvt(GlobalParameterStore& s, std::uint16_t id, CLight* const* src, int stride) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || !gatePasses(e->type, 0x40000)) return 0;
    if (stride != 0 && e->type == 18) {
        std::uint8_t* base = s.values.data() + e->offset;
        const std::uint8_t* from = reinterpret_cast<const std::uint8_t*>(src);
        for (std::uint32_t i = 0; i < e->count; ++i) {
            CLight* value = *reinterpret_cast<CLight* const*>(from);
            from += stride;
            assignLight(*reinterpret_cast<CLight**>(base + i * sizeof(void*)), value);
        }
    }
    return 1;
}

// 0x5c568c setParameter<boost::intrusive_ptr<glitch::video::CLight>>(unsigned short, CLight const*, int)
// Reconstructed: the listing's addref-before-store / release-of-the-replaced-element-after-store loop is
// assignLight, whose last-reference path is releaseLight -> destroyLight (both defined above). A stride of
// 0 means the original's 4-byte element size; the port uses sizeof(void*) because a host pointer does not
// fit that slot.
int setParameterArray(GlobalParameterStore& s, std::uint16_t id, CLight* const* src, int stride) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || e->type != 18) return 0;
    const int step = stride != 0 ? stride : static_cast<int>(sizeof(void*));
    std::uint8_t* base = s.values.data() + e->offset;
    const std::uint8_t* from = reinterpret_cast<const std::uint8_t*>(src);
    for (std::uint32_t i = 0; i < e->count; ++i) {
        CLight* value = *reinterpret_cast<CLight* const*>(from);
        from += step;
        assignLight(*reinterpret_cast<CLight**>(base + i * sizeof(void*)), value);
    }
    return 1;
}

// ============================================================================================
// Owner M
// ============================================================================================

// 0x5c623c setParameter<int>
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const int& src) {
    const detail::SParameterEntry* e = findMaterial(m, id);
    if (!e || e->type != ParamCode<int>::kCode || index >= e->count) return 0;
    const std::uint64_t pos = std::uint64_t(e->valueOffset) + std::uint64_t(index) * sizeof(int);
    if (!inRange(m.values, pos, sizeof(int))) return 0;
    if (!sameValue(loadAs<int>(m.values.data() + pos), src)) markDirty(m);
    storeAs(m.values.data() + pos, src);
    return 1;
}

// Index setter, own type, for the M setters (compare, mark dirty, store).
template <class T>
int materialSetIndexed(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const T& src) {
    const detail::SParameterEntry* e = findMaterial(m, id);
    if (!e || e->type != ParamCode<T>::kCode || index >= e->count) return 0;
    const std::uint64_t pos = std::uint64_t(e->valueOffset) + std::uint64_t(index) * sizeof(T);
    if (!inRange(m.values, pos, sizeof(T))) return 0;
    if (!sameValue(loadAs<T>(m.values.data() + pos), src)) markDirty(m);
    storeAs(m.values.data() + pos, src);
    return 1;
}

// 0x5c62b4 setParameter<vector2d<int>>
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector2d<int>& src) {
    return materialSetIndexed(m, id, index, src);
}
// 0x5c6350 setParameter<vector3d<int>>
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector3d<int>& src) {
    return materialSetIndexed(m, id, index, src);
}
// 0x5c6408 setParameter<vector4d<int>>
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector4d<int>& src) {
    return materialSetIndexed(m, id, index, src);
}
// 0x5c64d4 setParameter<float>
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const float& src) {
    return materialSetIndexed(m, id, index, src);
}
// 0x5c6564 setParameter<vector2d<float>>
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector2d<float>& src) {
    return materialSetIndexed(m, id, index, src);
}
// 0x5c660c setParameter<vector3d<float>>
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector3d<float>& src) {
    return materialSetIndexed(m, id, index, src);
}
// 0x5c66d4 setParameter<vector4d<float>>
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector4d<float>& src) {
    return materialSetIndexed(m, id, index, src);
}
// 0x5c67b4 setParameter<SColor>
int setParameter(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const SColor& src) {
    return materialSetIndexed(m, id, index, src);
}

// Cvt setter for the own-only M accessors: the gate, then element 0; only the own type is stored.
template <class T>
int materialSetCvtOwn(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const T& src) {
    const detail::SParameterEntry* e = findMaterial(m, id);
    if (!e || !gatePasses(e->type, ParamCode<T>::kGate) || index >= e->count) return 0;
    if (e->type != ParamCode<T>::kCode) return 1;
    if (!inRange(m.values, e->valueOffset, sizeof(T))) return 0;
    if (!sameValue(loadAs<T>(m.values.data() + e->valueOffset), src)) markDirty(m);
    storeAs(m.values.data() + e->valueOffset, src);
    return 1;
}

// 0x5c6834 setParameterCvt<int>
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const int& src) {
    const detail::SParameterEntry* e = findMaterial(m, id);
    if (!e || !gatePasses(e->type, ParamCode<int>::kGate) || index >= e->count) return 0;
    if (!inRange(m.values, e->valueOffset, 4)) return 0;
    std::uint8_t* p = m.values.data() + e->valueOffset;
    if (e->type == 1) {
        if (!sameValue(loadAs<int>(p), src)) markDirty(m);
        storeAs<int>(p, src);
    } else {
        const float f = static_cast<float>(src);
        if (!sameValue(loadAs<float>(p), f)) markDirty(m);
        storeAs<float>(p, f);
    }
    return 1;
}
// 0x5c6904 setParameterCvt<vector2d<int>>
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector2d<int>& src) {
    return materialSetCvtOwn(m, id, index, src);
}
// 0x5c69c4 setParameterCvt<vector3d<int>>
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector3d<int>& src) {
    return materialSetCvtOwn(m, id, index, src);
}
// 0x5c6a9c setParameterCvt<vector4d<int>>
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector4d<int>& src) {
    return materialSetCvtOwn(m, id, index, src);
}
// 0x5c6b8c setParameterCvt<float>: code 1 stores f2iz as int, code 5 stores the float
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const float& src) {
    const detail::SParameterEntry* e = findMaterial(m, id);
    if (!e || !gatePasses(e->type, ParamCode<float>::kGate) || index >= e->count) return 0;
    if (!inRange(m.values, e->valueOffset, 4)) return 0;
    std::uint8_t* p = m.values.data() + e->valueOffset;
    if (e->type == 1) {
        const std::int32_t i = f2iz(src);
        if (!sameValue(loadAs<std::int32_t>(p), i)) markDirty(m);
        storeAs<std::int32_t>(p, i);
    } else {
        if (!sameValue(loadAs<float>(p), src)) markDirty(m);
        storeAs<float>(p, src);
    }
    return 1;
}
// 0x5c6c60 setParameterCvt<vector2d<float>>
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector2d<float>& src) {
    return materialSetCvtOwn(m, id, index, src);
}
// 0x5c6d34 setParameterCvt<vector3d<float>>
int setParameterCvt(MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, const vector3d<float>& src) {
    return materialSetCvtOwn(m, id, index, src);
}

// Index getter: own type, element index * sizeof(T).
template <class T>
int materialGetIndexed(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, T& out) {
    const detail::SParameterEntry* e = findMaterial(m, id);
    if (!e || e->type != ParamCode<T>::kCode || index >= e->count) return 0;
    const std::uint64_t pos = std::uint64_t(e->valueOffset) + std::uint64_t(index) * sizeof(T);
    if (!inRange(m.values, pos, sizeof(T))) return 0;
    out = loadAs<T>(m.values.data() + pos);
    return 1;
}

// Cvt getter, element 0: gate, then the per-code conversion of the stored element.
template <class T>
int materialGetCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, T& out, bool floatToInt = true) {
    const detail::SParameterEntry* e = findMaterial(m, id);
    if (!e || !gatePasses(e->type, ParamCode<T>::kGate) || index >= e->count) return 0;
    if (!inRange(m.values, e->valueOffset, storedElementSize(e->type))) return 0;
    convertElement<T>(m.values.data() + e->valueOffset, e->type, out, floatToInt);
    return 1;
}

// 0x5c6e24 getParameter<int>
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, int& out) {
    return materialGetIndexed(m, id, index, out);
}
// 0x5c6e84 getParameter<vector2d<int>>
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector2d<int>& out) {
    return materialGetIndexed(m, id, index, out);
}
// 0x5c6ef0 getParameter<vector3d<int>>
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector3d<int>& out) {
    return materialGetIndexed(m, id, index, out);
}
// 0x5c6f68 getParameter<vector4d<int>>
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector4d<int>& out) {
    return materialGetIndexed(m, id, index, out);
}
// 0x5c6fe4 getParameter<float>
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, float& out) {
    return materialGetIndexed(m, id, index, out);
}
// 0x5c7044 getParameter<vector2d<float>>
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector2d<float>& out) {
    return materialGetIndexed(m, id, index, out);
}
// 0x5c70b0 getParameter<vector3d<float>>
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector3d<float>& out) {
    return materialGetIndexed(m, id, index, out);
}
// 0x5c7128 getParameter<vector4d<float>>
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector4d<float>& out) {
    return materialGetIndexed(m, id, index, out);
}
// 0x5c71a4 getParameter<SColor>
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, SColor& out) {
    return materialGetIndexed(m, id, index, out);
}
// 0x5c7208 getParameter<SColorf>
int getParameter(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, SColorf& out) {
    return materialGetIndexed(m, id, index, out);
}

// 0x5c7274 getParameterCvt<int>
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, int& out) {
    return materialGetCvt(m, id, index, out, true);
}
// 0x5c7310 getParameterCvt<vector2d<int>>
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector2d<int>& out) {
    return materialGetCvt(m, id, index, out);
}
// 0x5c739c getParameterCvt<vector3d<int>>
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector3d<int>& out) {
    return materialGetCvt(m, id, index, out);
}
// 0x5c7430 getParameterCvt<vector4d<int>>
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector4d<int>& out) {
    return materialGetCvt(m, id, index, out);
}
// 0x5c74d0 getParameterCvt<float>
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, float& out) {
    return materialGetCvt(m, id, index, out);
}
// 0x5c7574 getParameterCvt<vector2d<float>>
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector2d<float>& out) {
    return materialGetCvt(m, id, index, out);
}
// 0x5c7600 getParameterCvt<vector3d<float>>
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector3d<float>& out) {
    return materialGetCvt(m, id, index, out);
}
// 0x5c7694 getParameterCvt<vector4d<float>>
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, vector4d<float>& out) {
    return materialGetCvt(m, id, index, out);
}
// 0x5c77c8 getParameterCvt<SColor>
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, SColor& out) {
    return materialGetCvt(m, id, index, out);
}
// 0x5c7954 getParameterCvt<SColorf>
int getParameterCvt(const MaterialParameterStore& m, std::uint16_t id, std::uint32_t index, SColorf& out) {
    return materialGetCvt(m, id, index, out);
}

// Array getter with conversion (pointer form). The stride is in bytes of the caller's array.
// A stride of 0 or the element size copies the own type in one block; any other stride steps by it;
// a stride of 0 with another stored type writes nothing.
template <class T>
int materialGetArrayCvt(const MaterialParameterStore& m, std::uint16_t id, T* out, int stride, bool floatToInt = true) {
    const detail::SParameterEntry* e = findMaterial(m, id);
    if (!e || !gatePasses(e->type, ParamCode<T>::kGate)) return 0;
    const std::uint8_t* base = m.values.data() + e->valueOffset;
    const bool ownCopy = e->type == ParamCode<T>::kCode &&
                         (stride == 0 || static_cast<std::size_t>(stride) == sizeof(T));
    if (ownCopy) {
        if (!inRange(m.values, e->valueOffset, std::uint64_t(e->count) * sizeof(T))) return 0;
        std::memcpy(out, base, std::size_t(e->count) * sizeof(T));
        return 1;
    }
    if (stride == 0) return 1;
    const std::uint32_t step = storedElementSize(e->type);
    if (!inRange(m.values, e->valueOffset, std::uint64_t(e->count) * step)) return 0;
    std::uint8_t* dst = reinterpret_cast<std::uint8_t*>(out);
    for (std::uint32_t i = 0; i < e->count; ++i) {
        T value{};
        if (convertElement<T>(base + std::size_t(i) * step, e->type, value, floatToInt)) {
            std::memcpy(dst, &value, sizeof(T));
        }
        dst += stride;
    }
    return 1;
}

// Array getter, exact type (pointer form): own type only; stride 0 or the element size copies in one block.
template <class T>
int materialGetArray(const MaterialParameterStore& m, std::uint16_t id, T* out, int stride) {
    const detail::SParameterEntry* e = findMaterial(m, id);
    if (!e || e->type != ParamCode<T>::kCode) return 0;
    const std::uint64_t bytes = std::uint64_t(e->count) * sizeof(T);
    if (!inRange(m.values, e->valueOffset, bytes)) return 0;
    const std::uint8_t* base = m.values.data() + e->valueOffset;
    if (stride == 0 || static_cast<std::size_t>(stride) == sizeof(T)) {
        std::memcpy(out, base, std::size_t(bytes));
        return 1;
    }
    std::uint8_t* dst = reinterpret_cast<std::uint8_t*>(out);
    for (std::uint32_t i = 0; i < e->count; ++i) {
        std::memcpy(dst, base + std::size_t(i) * sizeof(T), sizeof(T));
        dst += stride;
    }
    return 1;
}

// 0x5c7a90 getParameterCvt<SColorf>(unsigned short, SColorf*, int) const
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, SColorf* out, int stride) {
    return materialGetArrayCvt(m, id, out, stride);
}
// 0x5c7c64 getParameterCvt<SColor>(unsigned short, SColor*, int) const
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, SColor* out, int stride) {
    return materialGetArrayCvt(m, id, out, stride);
}
// 0x5c7e90 getParameterCvt<vector4d<float>>(unsigned short, vector4d<float>*, int) const
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, vector4d<float>* out, int stride) {
    return materialGetArrayCvt(m, id, out, stride);
}
// 0x5c80a4 getParameterCvt<vector3d<float>>(unsigned short, vector3d<float>*, int) const
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, vector3d<float>* out, int stride) {
    return materialGetArrayCvt(m, id, out, stride);
}
// 0x5c8198 getParameterCvt<vector2d<float>>(unsigned short, vector2d<float>*, int) const
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, vector2d<float>* out, int stride) {
    return materialGetArrayCvt(m, id, out, stride);
}
// 0x5c8284 getParameterCvt<float>(unsigned short, float*, int) const
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, float* out, int stride) {
    return materialGetArrayCvt(m, id, out, stride);
}
// 0x5c839c getParameterCvt<vector4d<int>>(unsigned short, vector4d<int>*, int) const
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, vector4d<int>* out, int stride) {
    return materialGetArrayCvt(m, id, out, stride);
}
// 0x5c8490 getParameterCvt<vector3d<int>>(unsigned short, vector3d<int>*, int) const
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, vector3d<int>* out, int stride) {
    return materialGetArrayCvt(m, id, out, stride);
}
// 0x5c8584 getParameterCvt<vector2d<int>>(unsigned short, vector2d<int>*, int) const
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, vector2d<int>* out, int stride) {
    return materialGetArrayCvt(m, id, out, stride);
}
// 0x5c8670 getParameterCvt<int>(unsigned short, int*, int) const: the pointer form copies code 1 only
int getParameterArrayCvt(const MaterialParameterStore& m, std::uint16_t id, int* out, int stride) {
    return materialGetArrayCvt(m, id, out, stride, /*floatToInt=*/false);
}
// 0x5c874c getParameter<SColorf>(unsigned short, SColorf*, int) const
int getParameterArray(const MaterialParameterStore& m, std::uint16_t id, SColorf* out, int stride) {
    return materialGetArray(m, id, out, stride);
}
// 0x5c8804 getParameter<SColor>(unsigned short, SColor*, int) const
int getParameterArray(const MaterialParameterStore& m, std::uint16_t id, SColor* out, int stride) {
    return materialGetArray(m, id, out, stride);
}
// 0x5c88bc getParameter<vector4d<float>>(unsigned short, vector4d<float>*, int) const
int getParameterArray(const MaterialParameterStore& m, std::uint16_t id, vector4d<float>* out, int stride) {
    return materialGetArray(m, id, out, stride);
}
// 0x5c8970 getParameter<vector3d<float>>(unsigned short, vector3d<float>*, int) const
int getParameterArray(const MaterialParameterStore& m, std::uint16_t id, vector3d<float>* out, int stride) {
    return materialGetArray(m, id, out, stride);
}
// 0x5c8a24 getParameter<vector2d<float>>(unsigned short, vector2d<float>*, int) const
int getParameterArray(const MaterialParameterStore& m, std::uint16_t id, vector2d<float>* out, int stride) {
    return materialGetArray(m, id, out, stride);
}

// 0x5be68c setParameter<boost::intrusive_ptr<glitch::video::CLight>>(unsigned short, unsigned int, ...)
// Reconstructed: the entry must be defined, of value type 18 and the index inside the count. The new light gets a use,
// replaces the stored pointer, and the old pointer is released (last reference through releaseLight -> destroyLight).
// A stored pointer slot is sizeof(void*), not the original 4 bytes.
int setParameter(GlobalParameterStore& s, std::uint16_t id, std::uint32_t index, CLight* const& src) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e || e->type != 18 || index >= e->count) return 0;
    const std::uint64_t pos = std::uint64_t(e->offset) + std::uint64_t(index) * sizeof(void*);
    if (!inRange(s.values, pos, sizeof(void*))) return 0;
    std::uint8_t* slot = s.values.data() + pos;
    CLight* old = loadLight(slot);
    addRefLight(src);
    storeAs<CLight*>(slot, src);
    releaseLight(old);
    return 1;
}

// 0x5c0d30 IMaterialParameters<G>::dropParameter(unsigned short)
// Matrix entries (0x0b): every non-null pointer goes back to the matrix pool and the slot is cleared (the port's pool does
// not take the pointer, so the slot is only cleared). Texture entries (0x0c..0x0f): each pointer is cleared and then
// dropped. Light entries (0x12): each pointer is cleared and released (last reference through destroyLight).
void dropParameter(GlobalParameterStore& s, std::uint16_t id) {
    const part1a::SParamEntry* e = findGlobal(s, id);
    if (!e) return;
    const std::uint8_t code = e->type;
    if (code != 0x0b && (code < 0x0c || code > 0x0f) && code != 0x12) return;
    if (!inRange(s.values, e->offset, std::uint64_t(e->count) * sizeof(void*))) return;
    std::uint8_t* slot = s.values.data() + e->offset;
    for (std::uint32_t i = 0; i < e->count; ++i, slot += sizeof(void*)) {
        if (code == 0x0b) {
            storeAs<void*>(slot, nullptr);
        } else if (code == 0x12) {
            CLight* light = loadLight(slot);
            storeAs<CLight*>(slot, nullptr);
            releaseLight(light);
        } else {
            ITexture* texture = loadTexture(slot);
            storeAs<ITexture*>(slot, nullptr);
            if (texture) textureDrop(texture);
        }
    }
}

// ---- Reference and release hooks used by the intrusive rows above. Declared in the header.

// CLight last-reference release (the body of boost::intrusive_ptr<CLight>::~intrusive_ptr at 0x5aa3c8,
// after the count reaches zero). The original pushes the node at +0x50 onto glitch::memory::Matrix4Pool
// when the flag at +0x54 is clear, then clears +0x50 and frees the object (LC_API_FREE_0). The constructors
// set +0x54 to 1, so the push is not reached from a constructed light. The pool push is partial: the port's
// Matrix4Pool (material_parameters.cpp) holds Matrix* nodes and does not take the +0x50 handle.
void destroyLight(glitch::video::CLight* light) {
    if (light == nullptr) return;
    delete light;  // ~CLight returns an owned matrix; the original pushes the node onto the Matrix4Pool
}

// ITexture count add (++ at +0x04). Reconstructed; the count is IReferenceCounted::referenceCounter.
void textureAddRef(glitch::video::ITexture* texture) {
    if (texture) ++texture->referenceCounter;
}

// IReferenceCounted::drop (0x31d584) for an ITexture: decrement the count at +0x04, and on zero call onDelete
// (vtable +0x08) and the deleting destructor (+0x04). ITexture derives from IReferenceCounted now, so this is drop().
void textureDrop(glitch::video::ITexture* texture) {
    if (texture == nullptr) return;
    texture->drop();
}

// Packed state word of an ITexture at +0x38 (format, cube and wrap fields). The caller reads bits 0-1 as the
// texture type. Reconstructed: the word is returned as stored.
std::uint32_t textureStateWord(const glitch::video::ITexture* texture) {
    return texture ? texture->m_flags38 : 0u;
}

}  // namespace glitch::video::detail::part1b
