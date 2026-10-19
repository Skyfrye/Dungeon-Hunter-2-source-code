// Wave 4 part 1a: IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase> typed rows.
// See material_parameters_part_1a.hpp for the layout and the address list.
//
// Every listing has the same shape, read from the pseudocode of each row:
//   - entry lookup: id >= count gives the Invalid entry (ref 0), so the row returns 0;
//   - exact-type rows (get, set, index forms) require entry.type == the accessor's code;
//   - Cvt rows require the stored type's Convertions word to carry the accessor's gate bit (checked
//     here for codes below 19, the table size; the original reads past it, see glitch-core-io);
//   - array forms: a stride of 0 or the element size copies the array contiguously (memcpy path);
//     any other stride steps the caller's side by that many bytes, and the stored side steps by the
//     stored element size (storedBytes). A stride of 0 with a stored type other than the accessor's
//     returns 1 without writing;
//   - index forms of the Cvt family read or write the entry's first element, not element 'index'
//     (the listings add nothing to the offset; kept as they are).
// Binding: the numeric Cvt rows of this owner are emitted by material_parameters_bind_g.cpp, which instantiates
// IMaterialParametersTyped<SGlobalParameterOwner>::getParameterCvt / setParameterCvt for the ten value types and
// both forms; MixinBackend<SGlobalParameterOwner> forwards each to the row of that address below (the six index
// setter rows of the owner are in part 1b). The emitted instance names IMaterialParametersTyped<SGlobalParameterOwner>
// where the original names IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase>.
// Conversions of the Cvt rows, from the listings:
//   SColor code 16 (4 bytes), SColorf code 17 and vector4d<float> code 8 (16 bytes).
//   float <-> int (int code 1, float code 5). Colour bytes are scaled by 1/255 (constant 0.0039216 in
//   the listing) when read, and by 255 when written, truncated through unsigned int.
//
// Not written here (blocked): the intrusive_ptr rows and setParameterElement, listed in the header.
#include "glitch-video/material_parameters_part_1a.hpp"

#include <cstddef>
#include <cstdint>
#include <cstring>

namespace glitch::video::detail::part1a {
namespace {

// Accessor codes and gate bits, from the typed dispatch of the listings.
template <class T>
struct Acc;
template <>
struct Acc<int> {
    static constexpr std::uint8_t code = 1;
    static constexpr std::uint32_t gate = 0x2;
};
template <>
struct Acc<core::vector2d<int>> {
    static constexpr std::uint8_t code = 2;
    static constexpr std::uint32_t gate = 0x4;
};
template <>
struct Acc<core::vector3d<int>> {
    static constexpr std::uint8_t code = 3;
    static constexpr std::uint32_t gate = 0x8;
};
template <>
struct Acc<core::vector4d<int>> {
    static constexpr std::uint8_t code = 4;
    static constexpr std::uint32_t gate = 0x10;
};
template <>
struct Acc<float> {
    static constexpr std::uint8_t code = 5;
    static constexpr std::uint32_t gate = 0x20;
};
template <>
struct Acc<core::vector2d<float>> {
    static constexpr std::uint8_t code = 6;
    static constexpr std::uint32_t gate = 0x40;
};
template <>
struct Acc<core::vector3d<float>> {
    static constexpr std::uint8_t code = 7;
    static constexpr std::uint32_t gate = 0x80;
};
template <>
struct Acc<core::vector4d<float>> {
    static constexpr std::uint8_t code = 8;
    static constexpr std::uint32_t gate = 0x100;
};
template <>
struct Acc<video::SColor> {
    static constexpr std::uint8_t code = 16;
    static constexpr std::uint32_t gate = 0x10000;
};
template <>
struct Acc<video::SColorf> {
    static constexpr std::uint8_t code = 17;
    static constexpr std::uint32_t gate = 0x20000;
};

// Element size of a stored value (SShaderParameterTypeInspection::ValueTypeSize) for the codes used
// by these rows. Other codes return 0 and are never reached through the gate.
std::size_t storedBytes(std::uint8_t code) {
    switch (code) {
        case 1:
        case 5:
        case 16:
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

template <class T>
bool gateOk(std::uint8_t code) {
    return code < 19 && (kConvertions[code] & Acc<T>::gate) != 0;
}

const SParamEntry kInvalidEntry{};

// The collection's lookup: an id past the table gives the Invalid entry, whose ref is 0.
const SParamEntry* entryOf(const GlobalParamTable& t, std::uint16_t id) {
    if (id >= t.entryCount) return &kInvalidEntry;
    return &t.entries[id];
}

// Float to unsigned int as the listing does it (saturating; NaN gives 0), then the low byte.
std::uint8_t colourByte(float v) {
    const double scaled = static_cast<double>(v) * 255.0;
    std::uint32_t u = 0;
    if (scaled >= 4294967295.0) {
        u = 0xffffffffu;
    } else if (scaled > 0.0) {
        u = static_cast<std::uint32_t>(static_cast<float>(scaled));
    }
    return static_cast<std::uint8_t>(u);
}

// Stored byte to float as the listing does it (constant 0.0039216, double).
float byteToUnit(std::uint8_t b) { return static_cast<float>(static_cast<double>(b) * 0.0039216); }

// Float to int32 (saturating, NaN gives 0), as the listing's float-to-int conversion does.
std::int32_t floatToInt(float v) {
    if (v != v) return 0;
    if (v >= 2147483647.0f) return 2147483647;
    if (v <= -2147483648.0f) return static_cast<std::int32_t>(-2147483647 - 1);
    return static_cast<std::int32_t>(v);
}

// ---- Conversions of one stored element to the accessor type T (load) and back (store).
// load returns false when the stored code gives nothing to write (the listing returns 1 and skips).

// Exact type only.
template <class T>
struct GetExact {
    static bool load(std::uint8_t code, const std::uint8_t* s, T& o) {
        if (code != Acc<T>::code) return false;
        std::memcpy(&o, s, sizeof(T));
        return true;
    }
};
template <class T>
struct SetExact {
    static bool store(std::uint8_t code, const T& in, std::uint8_t* d) {
        if (code != Acc<T>::code) return false;
        std::memcpy(d, &in, sizeof(T));
        return true;
    }
};

// int accessor from a stored float (index form only, getParameterCvt<int>(id, index, int&)).
struct GetIntFromFloat {
    static bool load(std::uint8_t code, const std::uint8_t* s, int& o) {
        if (code == 1) {
            std::memcpy(&o, s, 4);
            return true;
        }
        if (code == 5) {
            float f;
            std::memcpy(&f, s, 4);
            o = floatToInt(f);
            return true;
        }
        return false;
    }
};

// float accessor from a stored int (both forms): code 1 converts, code 5 copies.
struct GetFloatFromInt {
    static bool load(std::uint8_t code, const std::uint8_t* s, float& o) {
        if (code == 1) {
            std::int32_t i;
            std::memcpy(&i, s, 4);
            o = static_cast<float>(i);
            return true;
        }
        if (code == 5) {
            std::memcpy(&o, s, 4);
            return true;
        }
        return false;
    }
};

// setParameterCvt<int>: code 1 copies, code 5 stores the int as a float.
struct SetIntToFloat {
    static bool store(std::uint8_t code, const std::int32_t& in, std::uint8_t* d) {
        if (code == 1) {
            std::memcpy(d, &in, 4);
            return true;
        }
        if (code == 5) {
            const float f = static_cast<float>(in);
            std::memcpy(d, &f, 4);
            return true;
        }
        return false;
    }
};

// setParameterCvt<float>: code 5 copies, code 1 stores the float as an int.
struct SetFloatToInt {
    static bool store(std::uint8_t code, const float& in, std::uint8_t* d) {
        if (code == 1) {
            const std::int32_t i = floatToInt(in);
            std::memcpy(d, &i, 4);
            return true;
        }
        if (code == 5) {
            std::memcpy(d, &in, 4);
            return true;
        }
        return false;
    }
};

// SColorf and vector4d<float> accessors: code 16 is four bytes scaled to [0, 1]; codes 17 and 8 are
// four floats copied as they are.
template <class T>
struct GetColor4 {
    static bool load(std::uint8_t code, const std::uint8_t* s, T& o) {
        static_assert(sizeof(T) == 16, "four floats");
        if (code == 16) {
            float f[4];
            for (int k = 0; k < 4; ++k) f[k] = byteToUnit(s[k]);
            std::memcpy(&o, f, sizeof f);
            return true;
        }
        if (code == 17 || code == 8) {
            std::memcpy(&o, s, sizeof(T));
            return true;
        }
        return false;
    }
};
template <class T>
struct SetColor4 {
    static bool store(std::uint8_t code, const T& in, std::uint8_t* d) {
        static_assert(sizeof(T) == 16, "four floats");
        if (code == 16) {
            float f[4];
            std::memcpy(f, &in, sizeof f);
            for (int k = 0; k < 4; ++k) d[k] = colourByte(f[k]);
            return true;
        }
        if (code == 17 || code == 8) {
            std::memcpy(d, &in, sizeof(T));
            return true;
        }
        return false;
    }
};

// SColor accessor: code 16 is the packed bytes; codes 17 and 8 are four floats written as bytes.
struct GetColorBytes {
    static bool load(std::uint8_t code, const std::uint8_t* s, video::SColor& o) {
        if (code == 16) {
            std::memcpy(&o, s, 4);
            return true;
        }
        if (code == 17 || code == 8) {
            std::uint8_t b[4];
            for (int k = 0; k < 4; ++k) {
                float f;
                std::memcpy(&f, s + 4 * k, 4);
                b[k] = colourByte(f);
            }
            std::memcpy(&o, b, 4);
            return true;
        }
        return false;
    }
};
// SColor accessor written into the stored value: code 16 copies the bytes; codes 17 and 8 store four
// floats, each byte scaled by 0.0039216.
struct SetColorBytes {
    static bool store(std::uint8_t code, const video::SColor& in, std::uint8_t* d) {
        std::uint8_t b[4];
        std::memcpy(b, &in, 4);
        if (code == 16) {
            std::memcpy(d, b, 4);
            return true;
        }
        if (code == 17 || code == 8) {
            for (int k = 0; k < 4; ++k) {
                const float f = byteToUnit(b[k]);
                std::memcpy(d + 4 * k, &f, 4);
            }
            return true;
        }
        return false;
    }
};

// ---- Generic bodies of the four shapes (see the header for the rule of each).

// Index form, exact type: getParameter(id, index, T&).
template <class T>
int indexGetExact(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, T& out) {
    const SParamEntry* e = entryOf(t, id);
    if (!e->ref || e->type != Acc<T>::code || index >= e->count) return 0;
    std::memcpy(&out, t.values + e->offset + index * sizeof(T), sizeof(T));
    return 1;
}

// Index form, Cvt family: getParameterCvt(id, index, T&). Reads the first element at the entry offset.
template <class T, class Conv>
int indexGetCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, T& out) {
    const SParamEntry* e = entryOf(t, id);
    if (!e->ref || !gateOk<T>(e->type) || index >= e->count) return 0;
    Conv::load(e->type, t.values + e->offset, out);
    return 1;
}

// Index form, Cvt family: setParameterCvt(id, index, const T&). Writes the first element.
template <class T, class Conv>
int indexSetCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, const T& in) {
    const SParamEntry* e = entryOf(t, id);
    if (!e->ref || !gateOk<T>(e->type) || index >= e->count) return 0;
    Conv::store(e->type, in, t.values + e->offset);
    return 1;
}

// Array form, exact type: getParameter(id, T* out, stride). Returns 0 on a type mismatch.
template <class T>
int arrayGetExact(const GlobalParamTable& t, std::uint16_t id, T* out, int stride) {
    const SParamEntry* e = entryOf(t, id);
    if (!e->ref || e->type != Acc<T>::code) return 0;
    const std::uint32_t n = e->count;
    const std::uint8_t* src = t.values + e->offset;
    if (stride == 0 || stride == static_cast<int>(sizeof(T))) {
        std::memcpy(out, src, n * sizeof(T));
        return 1;
    }
    auto* dst = reinterpret_cast<std::uint8_t*>(out);
    for (std::uint32_t i = 0; i < n; ++i, dst += stride) std::memcpy(dst, src + i * sizeof(T), sizeof(T));
    return 1;
}

// Array form, exact type: setParameter(id, const T* src, stride). Returns 0 on a type mismatch.
template <class T>
int arraySetExact(const GlobalParamTable& t, std::uint16_t id, const T* src, int stride) {
    const SParamEntry* e = entryOf(t, id);
    if (!e->ref || e->type != Acc<T>::code) return 0;
    const std::uint32_t n = e->count;
    std::uint8_t* dst = t.values + e->offset;
    if (stride == 0 || stride == static_cast<int>(sizeof(T))) {
        std::memcpy(dst, src, n * sizeof(T));
        return 1;
    }
    const auto* s = reinterpret_cast<const std::uint8_t*>(src);
    for (std::uint32_t i = 0; i < n; ++i, s += stride) std::memcpy(dst + i * sizeof(T), s, sizeof(T));
    return 1;
}

// Array form, Cvt family: getParameterCvt(id, T* out, stride).
template <class T, class Conv>
int arrayGetCvt(const GlobalParamTable& t, std::uint16_t id, T* out, int stride) {
    const SParamEntry* e = entryOf(t, id);
    if (!e->ref || !gateOk<T>(e->type)) return 0;
    const std::uint8_t code = e->type;
    const std::uint32_t n = e->count;
    const std::uint8_t* src = t.values + e->offset;
    if (stride == 0 || stride == static_cast<int>(sizeof(T))) {
        if (code == Acc<T>::code) {
            std::memcpy(out, src, n * sizeof(T));
            return 1;
        }
        if (stride == 0) return 1;
    }
    auto* dst = reinterpret_cast<std::uint8_t*>(out);
    const std::size_t step = storedBytes(code);
    for (std::uint32_t i = 0; i < n; ++i, src += step, dst += stride) {
        T v{};
        if (Conv::load(code, src, v)) std::memcpy(dst, &v, sizeof(T));
    }
    return 1;
}

// Array form, Cvt family: setParameterCvt(id, const T* src, stride).
template <class T, class Conv>
int arraySetCvt(const GlobalParamTable& t, std::uint16_t id, const T* src, int stride) {
    const SParamEntry* e = entryOf(t, id);
    if (!e->ref || !gateOk<T>(e->type)) return 0;
    const std::uint8_t code = e->type;
    const std::uint32_t n = e->count;
    std::uint8_t* dst = t.values + e->offset;
    if (stride == 0 || stride == static_cast<int>(sizeof(T))) {
        if (code == Acc<T>::code) {
            std::memcpy(dst, src, n * sizeof(T));
            return 1;
        }
        if (stride == 0) return 1;
    }
    const auto* s = reinterpret_cast<const std::uint8_t*>(src);
    const std::size_t step = storedBytes(code);
    for (std::uint32_t i = 0; i < n; ++i, s += stride, dst += step) {
        T v{};
        std::memcpy(&v, s, sizeof(T));
        Conv::store(code, v, dst);
    }
    return 1;
}

}  // namespace

// ---- Index forms, getParameter (exact).
// 0x5bf68c getParameter<SColorf>(ushort, uint, SColorf&) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, video::SColorf& out) {
    return indexGetExact(t, id, index, out);
}
// 0x5bf738 getParameter<SColor>(ushort, uint, SColor&) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, video::SColor& out) {
    return indexGetExact(t, id, index, out);
}
// 0x5bf89c getParameter<vector4d<float>>(ushort, uint, vector4d<float>&) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector4d<float>& out) {
    return indexGetExact(t, id, index, out);
}
// 0x5bf958 getParameter<vector3d<float>>(ushort, uint, vector3d<float>&) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector3d<float>& out) {
    return indexGetExact(t, id, index, out);
}
// 0x5bfa10 getParameter<vector2d<float>>(ushort, uint, vector2d<float>&) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector2d<float>& out) {
    return indexGetExact(t, id, index, out);
}
// 0x5bfabc getParameter<float>(ushort, uint, float&) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, float& out) {
    return indexGetExact(t, id, index, out);
}
// 0x5bfb5c getParameter<vector4d<int>>(ushort, uint, vector4d<int>&) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector4d<int>& out) {
    return indexGetExact(t, id, index, out);
}
// 0x5c39dc getParameter<vector3d<int>>(ushort, uint, vector3d<int>&) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector3d<int>& out) {
    return indexGetExact(t, id, index, out);
}
// 0x5c3a94 getParameter<vector2d<int>>(ushort, uint, vector2d<int>&) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector2d<int>& out) {
    return indexGetExact(t, id, index, out);
}
// 0x5c3b40 getParameter<int>(ushort, uint, int&) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, int& out) {
    return indexGetExact(t, id, index, out);
}

// ---- Index forms, getParameterCvt.
// 0x5be794 getParameterCvt<SColorf>(ushort, uint, SColorf&) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, video::SColorf& out) {
    return indexGetCvt<video::SColorf, GetColor4<video::SColorf>>(t, id, index, out);
}
// 0x5be8e4 getParameterCvt<SColor>(ushort, uint, SColor&) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, video::SColor& out) {
    return indexGetCvt<video::SColor, GetColorBytes>(t, id, index, out);
}
// 0x5bef98 getParameterCvt<vector4d<float>>(ushort, uint, vector4d<float>&) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector4d<float>& out) {
    return indexGetCvt<core::vector4d<float>, GetColor4<core::vector4d<float>>>(t, id, index, out);
}
// 0x5bf100 getParameterCvt<vector3d<float>>(ushort, uint, vector3d<float>&) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector3d<float>& out) {
    return indexGetCvt<core::vector3d<float>, GetExact<core::vector3d<float>>>(t, id, index, out);
}
// 0x5bf1c8 getParameterCvt<vector2d<float>>(ushort, uint, vector2d<float>&) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector2d<float>& out) {
    return indexGetCvt<core::vector2d<float>, GetExact<core::vector2d<float>>>(t, id, index, out);
}
// 0x5bf288 getParameterCvt<float>(ushort, uint, float&) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, float& out) {
    return indexGetCvt<float, GetFloatFromInt>(t, id, index, out);
}
// 0x5bf360 getParameterCvt<vector4d<int>>(ushort, uint, vector4d<int>&) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector4d<int>& out) {
    return indexGetCvt<core::vector4d<int>, GetExact<core::vector4d<int>>>(t, id, index, out);
}
// 0x5bf434 getParameterCvt<vector3d<int>>(ushort, uint, vector3d<int>&) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector3d<int>& out) {
    return indexGetCvt<core::vector3d<int>, GetExact<core::vector3d<int>>>(t, id, index, out);
}
// 0x5bf4fc getParameterCvt<vector2d<int>>(ushort, uint, vector2d<int>&) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, core::vector2d<int>& out) {
    return indexGetCvt<core::vector2d<int>, GetExact<core::vector2d<int>>>(t, id, index, out);
}
// 0x5bf5bc getParameterCvt<int>(ushort, uint, int&) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, int& out) {
    return indexGetCvt<int, GetIntFromFloat>(t, id, index, out);
}

// ---- Index forms, setParameterCvt.
// 0x5c3be0 setParameterCvt<SColorf>(ushort, uint, SColorf const&)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, const video::SColorf& src) {
    return indexSetCvt<video::SColorf, SetColor4<video::SColorf>>(t, id, index, src);
}
// 0x5c3d5c setParameterCvt<SColor>(ushort, uint, SColor const&)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index, const video::SColor& src) {
    return indexSetCvt<video::SColor, SetColorBytes>(t, id, index, src);
}
// 0x5c4054 setParameterCvt<vector4d<float>>(ushort, uint, vector4d<float> const&)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index,
                    const core::vector4d<float>& src) {
    return indexSetCvt<core::vector4d<float>, SetColor4<core::vector4d<float>>>(t, id, index, src);
}
// 0x5c41d0 setParameterCvt<vector3d<float>>(ushort, uint, vector3d<float> const&)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, std::uint32_t index,
                    const core::vector3d<float>& src) {
    return indexSetCvt<core::vector3d<float>, SetExact<core::vector3d<float>>>(t, id, index, src);
}

// ---- Array forms, getParameter (exact).
// 0x5c22e8 getParameter<SColorf>(ushort, SColorf*, int) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, video::SColorf* out, int stride) {
    return arrayGetExact(t, id, out, stride);
}
// 0x5c23e0 getParameter<SColor>(ushort, SColor*, int) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, video::SColor* out, int stride) {
    return arrayGetExact(t, id, out, stride);
}
// 0x5c25e8 getParameter<vector4d<float>>(ushort, vector4d<float>*, int) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, core::vector4d<float>* out, int stride) {
    return arrayGetExact(t, id, out, stride);
}
// 0x5c26dc getParameter<vector3d<float>>(ushort, vector3d<float>*, int) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, core::vector3d<float>* out, int stride) {
    return arrayGetExact(t, id, out, stride);
}
// 0x5c27d0 getParameter<vector2d<float>>(ushort, vector2d<float>*, int) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, core::vector2d<float>* out, int stride) {
    return arrayGetExact(t, id, out, stride);
}
// 0x5c28c4 getParameter<float>(ushort, float*, int) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, float* out, int stride) {
    return arrayGetExact(t, id, out, stride);
}
// 0x5c29a4 getParameter<vector4d<int>>(ushort, vector4d<int>*, int) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, core::vector4d<int>* out, int stride) {
    return arrayGetExact(t, id, out, stride);
}
// 0x5c2a98 getParameter<vector3d<int>>(ushort, vector3d<int>*, int) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, core::vector3d<int>* out, int stride) {
    return arrayGetExact(t, id, out, stride);
}
// 0x5c2b8c getParameter<vector2d<int>>(ushort, vector2d<int>*, int) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, core::vector2d<int>* out, int stride) {
    return arrayGetExact(t, id, out, stride);
}
// 0x5c2c80 getParameter<int>(ushort, int*, int) const
int getParameter(const GlobalParamTable& t, std::uint16_t id, int* out, int stride) {
    return arrayGetExact(t, id, out, stride);
}

// ---- Array forms, getParameterCvt.
// 0x5c12b0 getParameterCvt<SColorf>(ushort, SColorf*, int) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, video::SColorf* out, int stride) {
    return arrayGetCvt<video::SColorf, GetColor4<video::SColorf>>(t, id, out, stride);
}
// 0x5c14b8 getParameterCvt<SColor>(ushort, SColor*, int) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, video::SColor* out, int stride) {
    return arrayGetCvt<video::SColor, GetColorBytes>(t, id, out, stride);
}
// 0x5c1718 getParameterCvt<vector4d<float>>(ushort, vector4d<float>*, int) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, core::vector4d<float>* out, int stride) {
    return arrayGetCvt<core::vector4d<float>, GetColor4<core::vector4d<float>>>(t, id, out, stride);
}
// 0x5c196c getParameterCvt<vector3d<float>>(ushort, vector3d<float>*, int) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, core::vector3d<float>* out, int stride) {
    return arrayGetCvt<core::vector3d<float>, GetExact<core::vector3d<float>>>(t, id, out, stride);
}
// 0x5c1a98 getParameterCvt<vector2d<float>>(ushort, vector2d<float>*, int) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, core::vector2d<float>* out, int stride) {
    return arrayGetCvt<core::vector2d<float>, GetExact<core::vector2d<float>>>(t, id, out, stride);
}
// 0x5c1bbc getParameterCvt<float>(ushort, float*, int) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, float* out, int stride) {
    return arrayGetCvt<float, GetFloatFromInt>(t, id, out, stride);
}
// 0x5c1d08 getParameterCvt<vector4d<int>>(ushort, vector4d<int>*, int) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, core::vector4d<int>* out, int stride) {
    return arrayGetCvt<core::vector4d<int>, GetExact<core::vector4d<int>>>(t, id, out, stride);
}
// 0x5c1e34 getParameterCvt<vector3d<int>>(ushort, vector3d<int>*, int) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, core::vector3d<int>* out, int stride) {
    return arrayGetCvt<core::vector3d<int>, GetExact<core::vector3d<int>>>(t, id, out, stride);
}
// 0x5c1f60 getParameterCvt<vector2d<int>>(ushort, vector2d<int>*, int) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, core::vector2d<int>* out, int stride) {
    return arrayGetCvt<core::vector2d<int>, GetExact<core::vector2d<int>>>(t, id, out, stride);
}
// 0x5c2084 getParameterCvt<int>(ushort, int*, int) const
int getParameterCvt(const GlobalParamTable& t, std::uint16_t id, int* out, int stride) {
    return arrayGetCvt<int, GetExact<int>>(t, id, out, stride);
}

// ---- Array forms, setParameter (exact).
// 0x5bffb4 setParameter<SColorf>(ushort, SColorf const*, int)
int setParameter(const GlobalParamTable& t, std::uint16_t id, const video::SColorf* src, int stride) {
    return arraySetExact(t, id, src, stride);
}
// 0x5c00ac setParameter<SColor>(ushort, SColor const*, int)
int setParameter(const GlobalParamTable& t, std::uint16_t id, const video::SColor* src, int stride) {
    return arraySetExact(t, id, src, stride);
}
// 0x5c01a4 setParameter<vector4d<float>>(ushort, vector4d<float> const*, int)
int setParameter(const GlobalParamTable& t, std::uint16_t id, const core::vector4d<float>* src, int stride) {
    return arraySetExact(t, id, src, stride);
}
// 0x5c0298 setParameter<vector3d<float>>(ushort, vector3d<float> const*, int)
int setParameter(const GlobalParamTable& t, std::uint16_t id, const core::vector3d<float>* src, int stride) {
    return arraySetExact(t, id, src, stride);
}
// 0x5c038c setParameter<vector2d<float>>(ushort, vector2d<float> const*, int)
int setParameter(const GlobalParamTable& t, std::uint16_t id, const core::vector2d<float>* src, int stride) {
    return arraySetExact(t, id, src, stride);
}
// 0x5c0480 setParameter<float>(ushort, float const*, int)
int setParameter(const GlobalParamTable& t, std::uint16_t id, const float* src, int stride) {
    return arraySetExact(t, id, src, stride);
}
// 0x5c0560 setParameter<vector4d<int>>(ushort, vector4d<int> const*, int)
int setParameter(const GlobalParamTable& t, std::uint16_t id, const core::vector4d<int>* src, int stride) {
    return arraySetExact(t, id, src, stride);
}
// 0x5c0654 setParameter<vector3d<int>>(ushort, vector3d<int> const*, int)
int setParameter(const GlobalParamTable& t, std::uint16_t id, const core::vector3d<int>* src, int stride) {
    return arraySetExact(t, id, src, stride);
}
// 0x5c0748 setParameter<vector2d<int>>(ushort, vector2d<int> const*, int)
int setParameter(const GlobalParamTable& t, std::uint16_t id, const core::vector2d<int>* src, int stride) {
    return arraySetExact(t, id, src, stride);
}
// 0x5c083c setParameter<int>(ushort, int const*, int)
int setParameter(const GlobalParamTable& t, std::uint16_t id, const int* src, int stride) {
    return arraySetExact(t, id, src, stride);
}

// ---- Array forms, setParameterCvt.
// 0x5c2e9c setParameterCvt<SColorf>(ushort, SColorf const*, int)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const video::SColorf* src, int stride) {
    return arraySetCvt<video::SColorf, SetColor4<video::SColorf>>(t, id, src, stride);
}
// 0x5c30b0 setParameterCvt<SColor>(ushort, SColor const*, int)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const video::SColor* src, int stride) {
    return arraySetCvt<video::SColor, SetColorBytes>(t, id, src, stride);
}
// 0x5c3308 setParameterCvt<vector4d<float>>(ushort, vector4d<float> const*, int)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const core::vector4d<float>* src, int stride) {
    return arraySetCvt<core::vector4d<float>, SetColor4<core::vector4d<float>>>(t, id, src, stride);
}
// 0x5c3514 setParameterCvt<vector3d<float>>(ushort, vector3d<float> const*, int)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const core::vector3d<float>* src, int stride) {
    return arraySetCvt<core::vector3d<float>, SetExact<core::vector3d<float>>>(t, id, src, stride);
}
// 0x5c3640 setParameterCvt<vector2d<float>>(ushort, vector2d<float> const*, int)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const core::vector2d<float>* src, int stride) {
    return arraySetCvt<core::vector2d<float>, SetExact<core::vector2d<float>>>(t, id, src, stride);
}
// 0x5c3764 setParameterCvt<float>(ushort, float const*, int)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const float* src, int stride) {
    return arraySetCvt<float, SetFloatToInt>(t, id, src, stride);
}
// 0x5c38b0 setParameterCvt<vector4d<int>>(ushort, vector4d<int> const*, int)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const core::vector4d<int>* src, int stride) {
    return arraySetCvt<core::vector4d<int>, SetExact<core::vector4d<int>>>(t, id, src, stride);
}
// 0x5bfc18 setParameterCvt<vector3d<int>>(ushort, vector3d<int> const*, int)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const core::vector3d<int>* src, int stride) {
    return arraySetCvt<core::vector3d<int>, SetExact<core::vector3d<int>>>(t, id, src, stride);
}
// 0x5bfd44 setParameterCvt<vector2d<int>>(ushort, vector2d<int> const*, int)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const core::vector2d<int>* src, int stride) {
    return arraySetCvt<core::vector2d<int>, SetExact<core::vector2d<int>>>(t, id, src, stride);
}
// 0x5bfe68 setParameterCvt<int>(ushort, int const*, int)
int setParameterCvt(const GlobalParamTable& t, std::uint16_t id, const int* src, int stride) {
    return arraySetCvt<int, SetIntToFloat>(t, id, src, stride);
}

}  // namespace glitch::video::detail::part1a
