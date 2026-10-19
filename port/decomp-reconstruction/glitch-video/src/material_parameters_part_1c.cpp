// Wave 4 part 1c: row bodies of IMaterialParameters for CMaterial (M) and CMaterialRenderer (R).
// Declarations and the address map are in include/glitch-video/material_parameters_part_1c.hpp.
//
// Each row is an explicit instance of one of the family templates below. The families were read
// from the pseudocode of every row: the entry lookup and type gate, the dirty mark (M only), the
// stride rule, and the stored-type switch of the Cvt forms. Per-row differences are the value type
// (PartTraits) and the rules of storeConverted.
#include "glitch-video/material_parameters_part_1c.hpp"

#include <cstring>
#include <type_traits>

#include "glitch-video/texture.hpp"

namespace glitch::video::detail::part1c {
namespace {

using glitch::core::vector2d;
using glitch::core::vector3d;
using glitch::core::vector4d;
using glitch::video::SColor;
using glitch::video::SColorf;

// SShaderParameterTypeInspection::Convertions (19 words, ELF 0x8e2c58): the gate bits per stored code.
// Taken from glitch-core-io's listing reading; the gate bit of each row is checked against the
// pseudocode gate (int 0x2, float 0x20, vector2d<int> 0x4, vector3d<int> 0x8, vector4d<int> 0x10,
// vector2d<float> 0x40, vector3d<float> 0x80, vector4d<float> 0x100, SColor 0x10000, SColorf 0x20000,
// CLight 0x40000).
constexpr std::uint32_t kConvertions[19] = {0x1,     0x22,    0x4,     0x8,     0x10,    0x22,    0x40,
                                            0x80,    0x30100, 0x200,   0x400,   0x800,   0x1000,  0x2000,
                                            0x4000,  0x8000,  0x30100, 0x30100, 0x40000};

// SShaderParameterTypeInspection::ValueTypeBaseType (19 words, ELF 0x8e2bf8): the base value type of
// each stored code, as the setParameterElement gates read it (0 = SColor, 1 = int, 5 = float, 0xc..0xf
// = the four pointer codes, 0x12 = CLight). Read from the binary; the symbol is
// _ZN6glitch5video6detail30SShaderParameterTypeInspection17ValueTypeBaseTypeE.
constexpr std::uint32_t kValueTypeBaseType[19] = {0, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5,
                                                 0xC, 0xD, 0xE, 0xF, 0, 5, 0x12};
// SShaderParameterTypeInspection::ValueTypeArraySize (19 bytes, ELF 0x8e2c44): the component count of
// each stored code (code 10 has 9, the matrix 11 has 16, SColor 16 has 4, SColorf 17 has 4). Read from
// the binary; the symbol is ...ValueTypeArraySizeE. Codes at or above 19 have no entry.
constexpr std::uint8_t kValueTypeArraySize[19] = {1, 1, 2, 3, 4, 1, 2, 3, 4, 4, 9, 0x10,
                                                  1, 1, 1, 1, 4, 4, 1};

// A pointer slot is 4 bytes in the original. Its key is valueOffset + 4 * element index.
constexpr std::uint32_t kPointerSlotBytes = 4;

// Bytes of one stored element of type code c (the element stride of the value area).
std::uint32_t storedBytes(std::uint8_t c) {
    switch (c) {
        case 1:
        case 5:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 18:
            return 4;
        case 2:
        case 6:
            return 8;
        case 3:
        case 7:
            return 12;
        case 4:
        case 8:
        case 17:
            return 16;
        default:
            return 0;
    }
}

float bitsToFloat(std::uint32_t bits) {
    float f;
    std::memcpy(&f, &bits, sizeof f);
    return f;
}

// Byte to float: the byte times 1/255 (constant 0x3B808081, the listing's 0.0039216).
float byteToFloat(std::uint8_t b) { return static_cast<float>(b) * bitsToFloat(0x3B808081u); }

// __aeabi_f2uiz: saturating float to unsigned (NaN and negatives give 0).
std::uint32_t f2uiz(float v) {
    if (!(v > 0.0f)) return 0;
    if (v >= 4294967296.0f) return 0xFFFFFFFFu;
    return static_cast<std::uint32_t>(v);
}

// Float to byte: value times 255, converted with f2uiz, low byte kept.
std::uint8_t floatToByte(float v) { return static_cast<std::uint8_t>(f2uiz(v * 255.0f)); }

// __aeabi_f2iz: saturating float to int32 (truncation toward zero; NaN gives 0).
std::int32_t f2iz(float v) {
    if (!(v == v)) return 0;
    if (v >= 2147483648.0f) return 0x7FFFFFFF;
    if (v <= -2147483648.0f) return static_cast<std::int32_t>(0x80000000u);
    return static_cast<std::int32_t>(v);
}

// SColorf::equals: one channel matches when the new value lies within 1e-6 of the stored one.
bool withinTolerance(float stored, float value) {
    const float tol = bitsToFloat(0x358637BDu);
    return value <= stored + tol && value >= stored - tol;
}

bool sameColorf(const SColorf& stored, const SColorf& value) {
    return withinTolerance(stored.r, value.r) && withinTolerance(stored.g, value.g) &&
           withinTolerance(stored.b, value.b) && withinTolerance(stored.a, value.a);
}

// Value types: code, gate bit and the pointer rule of each value type of the rows.
template <std::uint8_t Code, std::uint32_t Gate>
struct NumericTraitsBase {
    static constexpr bool kPointer = false;
    static constexpr std::uint8_t kCode = Code;
    static constexpr std::uint32_t kGate = Gate;
    static bool matches(std::uint8_t c) { return c == Code; }
};

template <class T>
struct PartTraits;
template <>
struct PartTraits<int> : NumericTraitsBase<1, 0x2> {};
template <>
struct PartTraits<vector2d<int>> : NumericTraitsBase<2, 0x4> {};
template <>
struct PartTraits<vector3d<int>> : NumericTraitsBase<3, 0x8> {};
template <>
struct PartTraits<vector4d<int>> : NumericTraitsBase<4, 0x10> {};
template <>
struct PartTraits<float> : NumericTraitsBase<5, 0x20> {};
template <>
struct PartTraits<vector2d<float>> : NumericTraitsBase<6, 0x40> {};
template <>
struct PartTraits<vector3d<float>> : NumericTraitsBase<7, 0x80> {};
template <>
struct PartTraits<vector4d<float>> : NumericTraitsBase<8, 0x100> {};
template <>
struct PartTraits<SColor> : NumericTraitsBase<16, 0x10000> {};
template <>
struct PartTraits<SColorf> : NumericTraitsBase<17, 0x20000> {};

// intrusive_ptr<ITexture>: stored codes 12..15, the low two bits of the texture's +0x38 word select
// the code of a non-null value.
template <>
struct PartTraits<boost::intrusive_ptr<ITexture>> {
    using Pointer = boost::intrusive_ptr<ITexture>;
    static constexpr bool kPointer = true;
    static bool matches(std::uint8_t c) { return c >= 12 && c <= 15; }
    static bool acceptsValue(std::uint8_t c, const Pointer& v) {
        if (!v) return matches(c);
        return c == 12 + (v->m_flags38 & 3);
    }
    static std::map<std::uint32_t, Pointer>& slots(SPointerSlots& s) { return s.textures; }
};

// intrusive_ptr<CLight>: stored code 18 only.
template <>
struct PartTraits<boost::intrusive_ptr<CLight>> {
    using Pointer = boost::intrusive_ptr<CLight>;
    static constexpr bool kPointer = true;
    static bool matches(std::uint8_t c) { return c == 18; }
    static bool acceptsValue(std::uint8_t c, const Pointer&) { return matches(c); }
    static std::map<std::uint32_t, Pointer>& slots(SPointerSlots& s) { return s.lights; }
};

// The entry of id, or null when id is out of range or the table has no entries.
const SParameterEntry* findEntry(const SParameterTable& t, std::uint16_t id) {
    if (t.header == nullptr || t.header->entries == nullptr || id >= t.header->count) return nullptr;
    return &t.header->entries[id];
}

// Start of an entry's value, plus a byte offset inside it.
std::uint8_t* valueAt(const SParameterTable& t, const SParameterEntry& e, std::uint32_t byteOffset) {
    return t.values + e.valueOffset + byteOffset;
}

// Dirty words of CMaterial: both set to -1 (CMaterialRenderer has none).
void markDirty(const SParameterTable& t) {
    if (t.dirtyFirst != nullptr) *t.dirtyFirst = -1;
    if (t.dirtyLast != nullptr) *t.dirtyLast = -1;
}

// Element k of a caller's array. Stride 0 or the element size is contiguous.
template <class T>
T* elementAt(T* base, std::uint32_t k, int stride) {
    if (stride == 0 || stride == static_cast<int>(sizeof(std::remove_const_t<T>))) return base + k;
    using Byte = std::conditional_t<std::is_const_v<T>, const std::uint8_t, std::uint8_t>;
    return reinterpret_cast<T*>(reinterpret_cast<Byte*>(base) + static_cast<std::ptrdiff_t>(k) * stride);
}

template <class P>
P slotValue(const std::map<std::uint32_t, P>& m, std::uint32_t key) {
    const auto it = m.find(key);
    return it == m.end() ? P() : it->second;
}

// Stores one element of the stored code `code` from a source value of type S, at dst (raw bytes).
// Returns false when the stored code takes nothing from this source: nothing is written then.
template <class S>
bool storeConverted(std::uint8_t code, const S& src, std::uint8_t* dst) {
    // Vector types: the gate passes only their own code.
    if (code != PartTraits<S>::kCode) return false;
    std::memcpy(dst, &src, sizeof(S));
    return true;
}

template <>
bool storeConverted<int>(std::uint8_t code, const int& src, std::uint8_t* dst) {
    if (code == 1) {
        std::memcpy(dst, &src, sizeof src);
        return true;
    }
    if (code == 5) {
        const float f = static_cast<float>(src);
        std::memcpy(dst, &f, sizeof f);
        return true;
    }
    return false;
}

template <>
bool storeConverted<float>(std::uint8_t code, const float& src, std::uint8_t* dst) {
    if (code == 1) {
        const std::int32_t i = f2iz(src);
        std::memcpy(dst, &i, sizeof i);
        return true;
    }
    if (code == 5) {
        std::memcpy(dst, &src, sizeof src);
        return true;
    }
    return false;
}

template <>
bool storeConverted<vector4d<float>>(std::uint8_t code, const vector4d<float>& v, std::uint8_t* dst) {
    if (code == 16) {
        dst[0] = floatToByte(v.X);
        dst[1] = floatToByte(v.Y);
        dst[2] = floatToByte(v.Z);
        dst[3] = floatToByte(v.W);
        return true;
    }
    if (code == 17 || code == 8) {
        std::memcpy(dst, &v, sizeof v);
        return true;
    }
    return false;
}

template <>
bool storeConverted<SColor>(std::uint8_t code, const SColor& c, std::uint8_t* dst) {
    if (code == 16) {
        std::memcpy(dst, &c.color, sizeof c.color);
        return true;
    }
    if (code == 17 || code == 8) {
        std::uint8_t b[4];
        std::memcpy(b, &c.color, sizeof b);
        float f[4];
        for (int i = 0; i < 4; ++i) f[i] = byteToFloat(b[i]);
        std::memcpy(dst, f, sizeof f);
        return true;
    }
    return false;
}

template <>
bool storeConverted<SColorf>(std::uint8_t code, const SColorf& c, std::uint8_t* dst) {
    if (code == 16) {
        dst[0] = floatToByte(c.r);
        dst[1] = floatToByte(c.g);
        dst[2] = floatToByte(c.b);
        dst[3] = floatToByte(c.a);
        return true;
    }
    if (code == 17 || code == 8) {
        std::memcpy(dst, &c, sizeof c);
        return true;
    }
    return false;
}

// Whether a stored element changed when the converted value was written over it. Colour (16) compares
// the packed word, SColorf (17) uses the SColorf tolerance, and vector4d<float> (8) compares each float.
bool elementChanged(std::uint8_t code, const std::uint8_t* before, const std::uint8_t* after) {
    if (code == 17) {
        SColorf a;
        SColorf b;
        std::memcpy(&a, before, sizeof a);
        std::memcpy(&b, after, sizeof b);
        return !sameColorf(a, b);
    }
    if (code == 8) {
        float a[4];
        float b[4];
        std::memcpy(a, before, sizeof a);
        std::memcpy(b, after, sizeof b);
        for (int i = 0; i < 4; ++i) {
            if (a[i] != b[i]) return true;
        }
        return false;
    }
    return std::memcmp(before, after, storedBytes(code)) != 0;
}

// Equality of the indexed setters: SColorf uses the tolerance, other values compare bitwise.
template <class T>
bool sameValue(const T& a, const T& b) {
    if constexpr (std::is_same_v<T, SColorf>) {
        return sameColorf(a, b);
    } else {
        return std::memcmp(&a, &b, sizeof(T)) == 0;
    }
}

}  // namespace

// ---------------------------------------------------------------------------------------------
// Array forms.

// Non-Cvt array read: the entry type must match, count elements are copied with the caller's stride.
// Pointer types read the slots through the counting boost::intrusive_ptr (0x5cc43c ITexture, 0x5cc50c
// CLight): each element is addref'd into the caller's slot and the caller's old value dropped, which is
// the listing's element-wise branch. The listing's other branch (stride 0 or 4) is a raw memcpy of
// 4*count bytes that touches NO reference count; the port has no contiguous 4-byte slot array to copy
// from (the slots are SPointerSlots entries) and reaches the same branch on a stride of 0 or sizeof(T),
// where it assigns through the pointer instead of memcpy'ing. That count difference is the one
// deviation of these two rows.
template <class T>
int getParameter(const SParameterTable& t, std::uint16_t id, T* out, int stride) {
    const SParameterEntry* e = findEntry(t, id);
    if (e == nullptr || !PartTraits<T>::matches(e->type)) return 0;
    if constexpr (PartTraits<T>::kPointer) {
        if (t.pointers == nullptr) return 0;
        const auto& slots = PartTraits<T>::slots(*t.pointers);
        for (std::uint32_t k = 0; k < e->count; ++k) {
            *elementAt(out, k, stride) = slotValue(slots, e->valueOffset + kPointerSlotBytes * k);
        }
    } else {
        constexpr std::uint32_t size = sizeof(T);
        for (std::uint32_t k = 0; k < e->count; ++k) {
            std::memcpy(elementAt(out, k, stride), valueAt(t, *e, k * size), size);
        }
    }
    return 1;
}

// Non-Cvt array write: the dirty mark is set after the gate, then count elements are stored.
// Pointer types store through the counting boost::intrusive_ptr, which is the listing's
// addref-before-store / drop-of-the-replaced-element-after-store (0x5cc2b8 CLight inlines that loop;
// 0x5cc8b4 ITexture instead calls detail::setArrayParameter 0x5bb7ec, whose per-element type gate and
// its error log are NOT reproduced here: the port stores every element once the entry type passed).
template <class T>
int setParameter(const SParameterTable& t, std::uint16_t id, const T* src, int stride) {
    const SParameterEntry* e = findEntry(t, id);
    if (e == nullptr || !PartTraits<T>::matches(e->type)) return 0;
    if constexpr (PartTraits<T>::kPointer) {
        if (t.pointers == nullptr) return 0;
        markDirty(t);
        // A zero stride means the pointer slot size in the original (4); the port uses the element size.
        const int step = stride == 0 ? static_cast<int>(sizeof(T)) : stride;
        auto& slots = PartTraits<T>::slots(*t.pointers);
        for (std::uint32_t k = 0; k < e->count; ++k) {
            slots[e->valueOffset + kPointerSlotBytes * k] = *elementAt(src, k, step);
        }
    } else {
        markDirty(t);
        constexpr std::uint32_t size = sizeof(T);
        for (std::uint32_t k = 0; k < e->count; ++k) {
            std::memcpy(valueAt(t, *e, k * size), elementAt(src, k, stride), size);
        }
    }
    return 1;
}

// Cvt array read (pointer types only in this slice). A zero stride copies nothing and reports success.
// The pointer slots are part1c::SPointerSlots entries keyed by the original 4-byte slot offset, because a
// 64-bit pointer does not fit the value area; a null slot map fails the row.
template <class T>
int getParameterCvt(const SParameterTable& t, std::uint16_t id, T* out, int stride) {
    static_assert(PartTraits<T>::kPointer, "numeric getParameterCvt rows are not in this slice");
    const SParameterEntry* e = findEntry(t, id);
    if (e == nullptr || !PartTraits<T>::matches(e->type)) return 0;
    if (stride == 0) return 1;
    if (t.pointers == nullptr) return 0;
    const auto& slots = PartTraits<T>::slots(*t.pointers);
    for (std::uint32_t k = 0; k < e->count; ++k) {
        *elementAt(out, k, stride) = slotValue(slots, e->valueOffset + kPointerSlotBytes * k);
    }
    return 1;
}

// Cvt array write. Numeric: the Convertions gate, the dirty mark after the gate, then either a copy
// (stored type = own type and stride 0 or the element size) or a per-element conversion. A stride of
// 0 with another stored type does nothing. Pointer types: the dirty mark, then the slots (stride 0
// does nothing). Those slots are part1c::SPointerSlots entries keyed by the original 4-byte slot offset, and
// their reference counts are the counting boost::intrusive_ptr of glitch-core-io (add before the store,
// release of the replaced element after it).
template <class T>
int setParameterCvt(const SParameterTable& t, std::uint16_t id, const T* src, int stride) {
    const SParameterEntry* e = findEntry(t, id);
    if (e == nullptr) return 0;
    if constexpr (PartTraits<T>::kPointer) {
        if (!PartTraits<T>::matches(e->type) || t.pointers == nullptr) return 0;
        markDirty(t);
        if (stride == 0) return 1;
        auto& slots = PartTraits<T>::slots(*t.pointers);
        for (std::uint32_t k = 0; k < e->count; ++k) {
            slots[e->valueOffset + kPointerSlotBytes * k] = *elementAt(src, k, stride);
        }
        return 1;
    } else {
        if (e->type >= 19 || (kConvertions[e->type] & PartTraits<T>::kGate) == 0) return 0;
        markDirty(t);
        constexpr std::uint32_t size = sizeof(T);
        if (e->type == PartTraits<T>::kCode && (stride == 0 || stride == static_cast<int>(size))) {
            std::memcpy(valueAt(t, *e, 0), src, e->count * size);
            return 1;
        }
        if (stride == 0) return 1;
        const std::uint32_t step = storedBytes(e->type);
        std::uint8_t* dst = valueAt(t, *e, 0);
        for (std::uint32_t k = 0; k < e->count; ++k) {
            const T value = *elementAt(src, k, stride);
            storeConverted<T>(e->type, value, dst + k * step);
        }
        return 1;
    }
}

// ---------------------------------------------------------------------------------------------
// Indexed forms.

// Indexed read: the entry type and index are checked, then one element is copied.
template <class T>
int getParameter(const SParameterTable& t, std::uint16_t id, std::uint32_t index, T& out) {
    const SParameterEntry* e = findEntry(t, id);
    if (e == nullptr || !PartTraits<T>::matches(e->type) || index >= e->count) return 0;
    if constexpr (PartTraits<T>::kPointer) {
        if (t.pointers == nullptr) return 0;
        out = slotValue(PartTraits<T>::slots(*t.pointers), e->valueOffset + kPointerSlotBytes * index);
    } else {
        std::memcpy(&out, valueAt(t, *e, static_cast<std::uint32_t>(sizeof(T)) * index), sizeof(T));
    }
    return 1;
}

// Indexed Cvt read (pointer types only in this slice): the index is checked, then the entry's first
// element is read (the index is not added to the offset, as in the listing). The slot comes from
// part1c::SPointerSlots, and its intrusive_ptr assignment addrefs the new value and releases the old one.
template <class T>
int getParameterCvt(const SParameterTable& t, std::uint16_t id, std::uint32_t index, T& out) {
    static_assert(PartTraits<T>::kPointer, "numeric indexed getParameterCvt rows are not in this slice");
    const SParameterEntry* e = findEntry(t, id);
    if (e == nullptr || !PartTraits<T>::matches(e->type) || index >= e->count || t.pointers == nullptr) return 0;
    out = slotValue(PartTraits<T>::slots(*t.pointers), e->valueOffset);
    return 1;
}

// Indexed write. Numeric (R, and the SColorf form of M): the value is stored at the element. The
// dirty mark is set only on a change, and only for an owner that tracks it (M).
// Pointer types: the texture code rule (a non-null texture must match the entry) and the mark on a
// changed pointer.
template <class T>
int setParameter(const SParameterTable& t, std::uint16_t id, std::uint32_t index, const T& value) {
    const SParameterEntry* e = findEntry(t, id);
    if (e == nullptr || index >= e->count) return 0;
    if constexpr (PartTraits<T>::kPointer) {
        if (!PartTraits<T>::acceptsValue(e->type, value) || t.pointers == nullptr) return 0;
        const std::uint32_t key = e->valueOffset + kPointerSlotBytes * index;
        auto& slots = PartTraits<T>::slots(*t.pointers);
        if (slotValue(slots, key) != value) markDirty(t);
        slots[key] = value;
    } else {
        if (!PartTraits<T>::matches(e->type)) return 0;
        std::uint8_t* dst = valueAt(t, *e, static_cast<std::uint32_t>(sizeof(T)) * index);
        if (t.dirtyFirst != nullptr) {
            T old;
            std::memcpy(&old, dst, sizeof old);
            if (!sameValue(old, value)) markDirty(t);
        }
        std::memcpy(dst, &value, sizeof(T));
    }
    return 1;
}

// Indexed Cvt write. Pointer types write the entry's first element (the index is checked but not
// added to the offset, as in the listing). Numeric types write the first element through the
// conversion table; the dirty mark is set when the stored element changed (M only). Pointer types set the
// dirty words only when the stored pointer changes, addref the new value before the store and release the old
// one after it, all through the counting boost::intrusive_ptr, with the slot in part1c::SPointerSlots.
template <class T>
int setParameterCvt(const SParameterTable& t, std::uint16_t id, std::uint32_t index, const T& value) {
    const SParameterEntry* e = findEntry(t, id);
    if (e == nullptr) return 0;
    if constexpr (PartTraits<T>::kPointer) {
        if (!PartTraits<T>::acceptsValue(e->type, value) || index >= e->count || t.pointers == nullptr) return 0;
        const std::uint32_t key = e->valueOffset;
        auto& slots = PartTraits<T>::slots(*t.pointers);
        if (slotValue(slots, key) != value) markDirty(t);
        slots[key] = value;
        return 1;
    } else {
        if (e->type >= 19 || (kConvertions[e->type] & PartTraits<T>::kGate) == 0 || index >= e->count) return 0;
        std::uint8_t* dst = valueAt(t, *e, 0);
        std::uint8_t before[16] = {};
        const std::uint32_t bytes = storedBytes(e->type);
        std::memcpy(before, dst, bytes);
        if (!storeConverted<T>(e->type, value, dst)) return 1;
        if (t.dirtyFirst != nullptr && elementChanged(e->type, before, dst)) markDirty(t);
        return 1;
    }
}

// ---------------------------------------------------------------------------------------------
// setParameterElement and setParameterAt.

// The gates of the three listings read the two inspection tables directly
// (0x5caf68 reads ValueTypeBaseType[v] and returns 0 unless it is 0, 0x5cb098 unless it is 1,
// 0x5cb1c4 unless it is 5; each then compares the component against ValueTypeArraySize[v] and the
// index against the entry count). The tables above are the binary's own bytes, so the accepted codes
// are exact: uchar accepts 0 and 16, int accepts 1..4, float accepts 5..8, 9, 10, 11 and 17. Codes at
// or above 19 are refused, where the original reads the 19-word table past its end.
// Stored code 11 (the 4x4 matrix) keeps its 0x44-byte CMatrix4 behind a pointer written into the
// value slot. decision 2 (host-width pointer): the matrix is held in SPointerSlots::matrices, created as a
// clone of the identity on first use (0x5cb1c4 GlitchAlloc + CMatrix4 copy from IdentityMatrix), and its flag
// is cleared before the element store, as the listing does.
template <class T>
int setParameterElement(const SParameterTable& t, std::uint16_t id, std::uint32_t index,
                        std::uint8_t component, T value) {
    const SParameterEntry* e = findEntry(t, id);
    if (e == nullptr || e->type >= 19) return 0;
    constexpr std::uint8_t kBase = std::is_same_v<T, std::uint8_t> ? 0 : (std::is_same_v<T, int> ? 1 : 5);
    if (kValueTypeBaseType[e->type] != kBase || component >= kValueTypeArraySize[e->type] ||
        index >= e->count) {
        return 0;
    }
    if (e->type == 11) {
        // 0x5cb1c4 code-11 branch (float only; the gate above admits no other base type here).
        if (t.pointers == nullptr) return 0;
        auto it = t.pointers->matrices.find(e->valueOffset);
        if (it == t.pointers->matrices.end()) {
            it = t.pointers->matrices.emplace(e->valueOffset, core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY)).first;
        }
        it->second.flag = false;  // the listing clears the matrix flag byte (+0x40) before the element store
        const std::uint32_t element = static_cast<std::uint32_t>(component) + index;
        const float old = it->second.M[element];
        if (!sameValue(old, static_cast<float>(value))) markDirty(t);
        it->second.M[element] = static_cast<float>(value);
        return 1;
    }
    std::uint32_t byteOffset;
    if constexpr (std::is_same_v<T, std::uint8_t>) {
        byteOffset = index + component;
    } else {
        byteOffset = 4u * (static_cast<std::uint32_t>(component) + index);
    }
    std::uint8_t* at = valueAt(t, *e, byteOffset);
    T old;
    std::memcpy(&old, at, sizeof old);
    if (!sameValue(old, value)) markDirty(t);
    std::memcpy(at, &value, sizeof value);
    return 1;
}

void setParameterAt(const SParameterTable& t, SColorf* dst, const SColor& src) {
    std::uint8_t b[4];
    std::memcpy(b, &src.color, sizeof b);
    const SColorf v{byteToFloat(b[0]), byteToFloat(b[1]), byteToFloat(b[2]), byteToFloat(b[3])};
    if (!sameColorf(*dst, v)) markDirty(t);
    *dst = v;
}

}  // namespace glitch::video::detail::part1c

// ===========================================================================================
// Row instances. Each explicit instance is one row of the slice, named by its address.
namespace glitch::video::detail::part1c {

// ---- M (CMaterial) array reads.
// 0x5c8ad4 IMaterialParameters<CMaterial,...>::getParameter<float>(unsigned short, float*, int) const
template int getParameter<float>(const SParameterTable&, std::uint16_t, float*, int);
// 0x5c8b74 getParameter<vector4d<int>>(unsigned short, vector4d<int>*, int) const
template int getParameter<vector4d<int>>(const SParameterTable&, std::uint16_t, vector4d<int>*, int);
// 0x5c8c28 getParameter<vector3d<int>>(unsigned short, vector3d<int>*, int) const
template int getParameter<vector3d<int>>(const SParameterTable&, std::uint16_t, vector3d<int>*, int);
// 0x5c8cdc getParameter<vector2d<int>>(unsigned short, vector2d<int>*, int) const
template int getParameter<vector2d<int>>(const SParameterTable&, std::uint16_t, vector2d<int>*, int);
// 0x5c8d8c getParameter<int>(unsigned short, int*, int) const
template int getParameter<int>(const SParameterTable&, std::uint16_t, int*, int);

// ---- M (CMaterial) array Cvt writes.
// 0x5c8e2c setParameterCvt<SColorf>(unsigned short, SColorf const*, int)
template int setParameterCvt<SColorf>(const SParameterTable&, std::uint16_t, const SColorf*, int);
// 0x5c9020 setParameterCvt<SColor>(unsigned short, SColor const*, int)
template int setParameterCvt<SColor>(const SParameterTable&, std::uint16_t, const SColor*, int);
// 0x5c9258 setParameterCvt<vector4d<float>>(unsigned short, vector4d<float> const*, int)
template int setParameterCvt<vector4d<float>>(const SParameterTable&, std::uint16_t, const vector4d<float>*, int);
// 0x5c9444 setParameterCvt<vector3d<float>>(unsigned short, vector3d<float> const*, int)
template int setParameterCvt<vector3d<float>>(const SParameterTable&, std::uint16_t, const vector3d<float>*, int);
// 0x5c954c setParameterCvt<vector2d<float>>(unsigned short, vector2d<float> const*, int)
template int setParameterCvt<vector2d<float>>(const SParameterTable&, std::uint16_t, const vector2d<float>*, int);
// 0x5c964c setParameterCvt<float>(unsigned short, float const*, int)
template int setParameterCvt<float>(const SParameterTable&, std::uint16_t, const float*, int);
// 0x5c9778 setParameterCvt<vector4d<int>>(unsigned short, vector4d<int> const*, int)
template int setParameterCvt<vector4d<int>>(const SParameterTable&, std::uint16_t, const vector4d<int>*, int);
// 0x5c9880 setParameterCvt<vector3d<int>>(unsigned short, vector3d<int> const*, int)
template int setParameterCvt<vector3d<int>>(const SParameterTable&, std::uint16_t, const vector3d<int>*, int);
// 0x5c9988 setParameterCvt<vector2d<int>>(unsigned short, vector2d<int> const*, int)
template int setParameterCvt<vector2d<int>>(const SParameterTable&, std::uint16_t, const vector2d<int>*, int);
// 0x5c9a88 setParameterCvt<int>(unsigned short, int const*, int)
template int setParameterCvt<int>(const SParameterTable&, std::uint16_t, const int*, int);

// ---- M (CMaterial) array writes.
// 0x5c9bb4 setParameter<SColorf>(unsigned short, SColorf const*, int)
template int setParameter<SColorf>(const SParameterTable&, std::uint16_t, const SColorf*, int);
// 0x5c9c78 setParameter<SColor>(unsigned short, SColor const*, int)
template int setParameter<SColor>(const SParameterTable&, std::uint16_t, const SColor*, int);
// 0x5c9d3c setParameter<vector4d<float>>(unsigned short, vector4d<float> const*, int)
template int setParameter<vector4d<float>>(const SParameterTable&, std::uint16_t, const vector4d<float>*, int);
// 0x5c9dfc setParameter<vector3d<float>>(unsigned short, vector3d<float> const*, int)
template int setParameter<vector3d<float>>(const SParameterTable&, std::uint16_t, const vector3d<float>*, int);
// 0x5c9ebc setParameter<vector2d<float>>(unsigned short, vector2d<float> const*, int)
template int setParameter<vector2d<float>>(const SParameterTable&, std::uint16_t, const vector2d<float>*, int);
// 0x5c9f78 setParameter<float>(unsigned short, float const*, int)
template int setParameter<float>(const SParameterTable&, std::uint16_t, const float*, int);
// 0x5ca024 setParameter<vector4d<int>>(unsigned short, vector4d<int> const*, int)
template int setParameter<vector4d<int>>(const SParameterTable&, std::uint16_t, const vector4d<int>*, int);
// 0x5ca0e4 setParameter<vector3d<int>>(unsigned short, vector3d<int> const*, int)
template int setParameter<vector3d<int>>(const SParameterTable&, std::uint16_t, const vector3d<int>*, int);
// 0x5ca1a4 setParameter<vector2d<int>>(unsigned short, vector2d<int> const*, int)
template int setParameter<vector2d<int>>(const SParameterTable&, std::uint16_t, const vector2d<int>*, int);
// 0x5ca260 setParameter<int>(unsigned short, int const*, int)
template int setParameter<int>(const SParameterTable&, std::uint16_t, const int*, int);

// ---- M (CMaterial) indexed numeric and element rows.
// 0x5cabf8 (M) and 0x5cf3f4 (R) setParameter<SColorf>(unsigned short, unsigned int, SColorf const&)
template int setParameter<SColorf>(const SParameterTable&, std::uint16_t, std::uint32_t, const SColorf&);
// 0x5cac8c setParameterAt<SColorf>(SColorf*, SColor const&)
// (non-template helper; see setParameterAt above)
// 0x5cad38 (M) and 0x5cf998 (R) setParameterCvt<SColor>(unsigned short, unsigned int, SColor const&)
template int setParameterCvt<SColor>(const SParameterTable&, std::uint16_t, std::uint32_t, const SColor&);
// 0x5caf68 setParameterElement<unsigned char>(unsigned short, unsigned int, unsigned char, unsigned char)
template int setParameterElement<std::uint8_t>(const SParameterTable&, std::uint16_t, std::uint32_t, std::uint8_t, std::uint8_t);
// 0x5cb098 setParameterElement<int>(unsigned short, unsigned int, unsigned char, int)
template int setParameterElement<int>(const SParameterTable&, std::uint16_t, std::uint32_t, std::uint8_t, int);
// 0x5cb1c4 setParameterElement<float>(unsigned short, unsigned int, unsigned char, float)
template int setParameterElement<float>(const SParameterTable&, std::uint16_t, std::uint32_t, std::uint8_t, float);
// 0x5cb6e8 (M) and 0x5cfb44 (R) setParameterCvt<SColorf>(unsigned short, unsigned int, SColorf const&)
template int setParameterCvt<SColorf>(const SParameterTable&, std::uint16_t, std::uint32_t, const SColorf&);
// 0x5ce768 (M) and 0x5cf854 (R) setParameterCvt<vector4d<float>>(unsigned short, unsigned int, vector4d<float> const&)
template int setParameterCvt<vector4d<float>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector4d<float>&);

// ---- M (CMaterial) pointer rows.
// 0x5cc1b8 setParameterCvt<intrusive_ptr<CLight>>(unsigned short, unsigned int, intrusive_ptr<CLight> const&)
template int setParameterCvt<boost::intrusive_ptr<CLight>>(const SParameterTable&, std::uint16_t, std::uint32_t, const boost::intrusive_ptr<CLight>&);
// 0x5cc2b8 setParameter<intrusive_ptr<CLight>>(unsigned short, intrusive_ptr<CLight> const*, int)
template int setParameter<boost::intrusive_ptr<CLight>>(const SParameterTable&, std::uint16_t, const boost::intrusive_ptr<CLight>*, int);
// 0x5cc3b4 getParameterCvt<intrusive_ptr<CLight>>(unsigned short, unsigned int, intrusive_ptr<CLight>&) const
template int getParameterCvt<boost::intrusive_ptr<CLight>>(const SParameterTable&, std::uint16_t, std::uint32_t, boost::intrusive_ptr<CLight>&);
// 0x5cc43c getParameter<intrusive_ptr<ITexture>>(unsigned short, intrusive_ptr<ITexture>*, int) const
template int getParameter<boost::intrusive_ptr<ITexture>>(const SParameterTable&, std::uint16_t, boost::intrusive_ptr<ITexture>*, int);
// 0x5cc50c getParameter<intrusive_ptr<CLight>>(unsigned short, intrusive_ptr<CLight>*, int) const
template int getParameter<boost::intrusive_ptr<CLight>>(const SParameterTable&, std::uint16_t, boost::intrusive_ptr<CLight>*, int);
// 0x5cc820 setParameterCvt<intrusive_ptr<ITexture>>(unsigned short, intrusive_ptr<ITexture> const*, int)
template int setParameterCvt<boost::intrusive_ptr<ITexture>>(const SParameterTable&, std::uint16_t, const boost::intrusive_ptr<ITexture>*, int);
// 0x5cc8b4 setParameter<intrusive_ptr<ITexture>>(unsigned short, intrusive_ptr<ITexture> const*, int)
template int setParameter<boost::intrusive_ptr<ITexture>>(const SParameterTable&, std::uint16_t, const boost::intrusive_ptr<ITexture>*, int);
// 0x5ccc7c getParameterCvt<intrusive_ptr<ITexture>>(unsigned short, intrusive_ptr<ITexture>*, int) const
template int getParameterCvt<boost::intrusive_ptr<ITexture>>(const SParameterTable&, std::uint16_t, boost::intrusive_ptr<ITexture>*, int);
// 0x5cce20 setParameterCvt<intrusive_ptr<CLight>>(unsigned short, intrusive_ptr<CLight> const*, int)
template int setParameterCvt<boost::intrusive_ptr<CLight>>(const SParameterTable&, std::uint16_t, const boost::intrusive_ptr<CLight>*, int);
// 0x5cd0d8 getParameterCvt<intrusive_ptr<CLight>>(unsigned short, intrusive_ptr<CLight>*, int) const
template int getParameterCvt<boost::intrusive_ptr<CLight>>(const SParameterTable&, std::uint16_t, boost::intrusive_ptr<CLight>*, int);
// 0x5cd324 setParameter<intrusive_ptr<ITexture>>(unsigned short, unsigned int, intrusive_ptr<ITexture> const&)
template int setParameter<boost::intrusive_ptr<ITexture>>(const SParameterTable&, std::uint16_t, std::uint32_t, const boost::intrusive_ptr<ITexture>&);
// 0x5cdabc getParameter<intrusive_ptr<ITexture>>(unsigned short, unsigned int, intrusive_ptr<ITexture>&) const
template int getParameter<boost::intrusive_ptr<ITexture>>(const SParameterTable&, std::uint16_t, std::uint32_t, boost::intrusive_ptr<ITexture>&);
// 0x5ce95c setParameter<intrusive_ptr<CLight>>(unsigned short, unsigned int, intrusive_ptr<CLight> const&)
template int setParameter<boost::intrusive_ptr<CLight>>(const SParameterTable&, std::uint16_t, std::uint32_t, const boost::intrusive_ptr<CLight>&);
// 0x5ceae0 getParameter<intrusive_ptr<CLight>>(unsigned short, unsigned int, intrusive_ptr<CLight>&) const
template int getParameter<boost::intrusive_ptr<CLight>>(const SParameterTable&, std::uint16_t, std::uint32_t, boost::intrusive_ptr<CLight>&);
// 0x5cec4c setParameterCvt<intrusive_ptr<ITexture>>(unsigned short, unsigned int, intrusive_ptr<ITexture> const&)
template int setParameterCvt<boost::intrusive_ptr<ITexture>>(const SParameterTable&, std::uint16_t, std::uint32_t, const boost::intrusive_ptr<ITexture>&);
// 0x5cedd0 getParameterCvt<intrusive_ptr<ITexture>>(unsigned short, unsigned int, intrusive_ptr<ITexture>&) const
template int getParameterCvt<boost::intrusive_ptr<ITexture>>(const SParameterTable&, std::uint16_t, std::uint32_t, boost::intrusive_ptr<ITexture>&);

// ---- R (CMaterialRenderer) indexed writes (no dirty words).
// 0x5cf05c setParameter<int>(unsigned short, unsigned int, int const&)
template int setParameter<int>(const SParameterTable&, std::uint16_t, std::uint32_t, const int&);
// 0x5cf0b8 setParameter<vector2d<int>>(unsigned short, unsigned int, vector2d<int> const&)
template int setParameter<vector2d<int>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector2d<int>&);
// 0x5cf118 setParameter<vector3d<int>>(unsigned short, unsigned int, vector3d<int> const&)
template int setParameter<vector3d<int>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector3d<int>&);
// 0x5cf18c setParameter<vector4d<int>>(unsigned short, unsigned int, vector4d<int> const&)
template int setParameter<vector4d<int>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector4d<int>&);
// 0x5cf1fc setParameter<float>(unsigned short, unsigned int, float const&)
template int setParameter<float>(const SParameterTable&, std::uint16_t, std::uint32_t, const float&);
// 0x5cf250 setParameter<vector2d<float>>(unsigned short, unsigned int, vector2d<float> const&)
template int setParameter<vector2d<float>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector2d<float>&);
// 0x5cf2b0 setParameter<vector3d<float>>(unsigned short, unsigned int, vector3d<float> const&)
template int setParameter<vector3d<float>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector3d<float>&);
// 0x5cf324 setParameter<vector4d<float>>(unsigned short, unsigned int, vector4d<float> const&)
template int setParameter<vector4d<float>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector4d<float>&);
// 0x5cf394 setParameter<SColor>(unsigned short, unsigned int, SColor const&)
template int setParameter<SColor>(const SParameterTable&, std::uint16_t, std::uint32_t, const SColor&);

// ---- R (CMaterialRenderer) indexed Cvt writes (first element, no dirty words).
// 0x5cf458 setParameterCvt<int>(unsigned short, unsigned int, int const&)
template int setParameterCvt<int>(const SParameterTable&, std::uint16_t, std::uint32_t, const int&);
// 0x5cf4ec setParameterCvt<vector2d<int>>(unsigned short, unsigned int, vector2d<int> const&)
template int setParameterCvt<vector2d<int>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector2d<int>&);
// 0x5cf574 setParameterCvt<vector3d<int>>(unsigned short, unsigned int, vector3d<int> const&)
template int setParameterCvt<vector3d<int>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector3d<int>&);
// 0x5cf604 setParameterCvt<vector4d<int>>(unsigned short, unsigned int, vector4d<int> const&)
template int setParameterCvt<vector4d<int>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector4d<int>&);
// 0x5cf6a0 setParameterCvt<float>(unsigned short, unsigned int, float const&)
template int setParameterCvt<float>(const SParameterTable&, std::uint16_t, std::uint32_t, const float&);
// 0x5cf73c setParameterCvt<vector2d<float>>(unsigned short, unsigned int, vector2d<float> const&)
template int setParameterCvt<vector2d<float>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector2d<float>&);
// 0x5cf7c4 setParameterCvt<vector3d<float>>(unsigned short, unsigned int, vector3d<float> const&)
template int setParameterCvt<vector3d<float>>(const SParameterTable&, std::uint16_t, std::uint32_t, const vector3d<float>&);

// ---- R (CMaterialRenderer) indexed reads.
// 0x5cfc88 getParameter<int>(unsigned short, unsigned int, int&) const
template int getParameter<int>(const SParameterTable&, std::uint16_t, std::uint32_t, int&);
// 0x5cfce4 getParameter<vector2d<int>>(unsigned short, unsigned int, vector2d<int>&) const
template int getParameter<vector2d<int>>(const SParameterTable&, std::uint16_t, std::uint32_t, vector2d<int>&);
// 0x5cfd44 getParameter<vector3d<int>>(unsigned short, unsigned int, vector3d<int>&) const
template int getParameter<vector3d<int>>(const SParameterTable&, std::uint16_t, std::uint32_t, vector3d<int>&);
// 0x5cfdb0 getParameter<vector4d<int>>(unsigned short, unsigned int, vector4d<int>&) const
template int getParameter<vector4d<int>>(const SParameterTable&, std::uint16_t, std::uint32_t, vector4d<int>&);
// 0x5cfe20 getParameter<float>(unsigned short, unsigned int, float&) const
template int getParameter<float>(const SParameterTable&, std::uint16_t, std::uint32_t, float&);
// 0x5cfe74 getParameter<vector2d<float>>(unsigned short, unsigned int, vector2d<float>&) const
template int getParameter<vector2d<float>>(const SParameterTable&, std::uint16_t, std::uint32_t, vector2d<float>&);

}  // namespace glitch::video::detail::part1c
