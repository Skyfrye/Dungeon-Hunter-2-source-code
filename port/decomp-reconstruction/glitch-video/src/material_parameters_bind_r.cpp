// Owner R typed rows: IMaterialParametersTyped<IMaterialParameters<CMaterialRenderer, false>>.
//
// The member bodies and dispatchers of the mixin are generic and live in material_parameters_typed_impl.hpp.
// This file keeps the R backend (MixinBackend<IMaterialParameters<CMaterialRenderer, false>>) and the explicit
// instantiation for R at the end of the file. Each backend form forwards to a free function of part d
// (SRendererValueTable view) or part 1c (SParameterTable view):
//   pointer forms, indexed Cvt getter, all array and indexed Cvt setters  -> part d, see below
//   indexed setters                                                       -> part 1c (instances shared with M)
//   indexed getParameter: int, vector2/3/4 int, float, vector2 float       -> part 1c
//                         vector3/4 float, SColor, SColorf                -> part d
// The owner has no dirty words, so the part 1c views carry no dirty pointers.
//
// Stride of the pointer forms: bytes (0 means contiguous), as in parts d and 1c.
//
// Intrusive pointer rows (codes 12..15 and 18) are part 1c rows over R's table with its pointer slots (IMaterialParameters::table(),
// src/ok1b-MaterialParameters.cpp), and the matrix code 11 goes to the class matrix accessors, so the eight dispatchers handle every code.
#include <cstdint>
#include <type_traits>

#include "glitch-video/material_parameters.hpp"
#include "glitch-video/material_parameters_part_1c.hpp"
#include "glitch-video/material_parameters_part_d.hpp"
#include "glitch-video/material_parameters_typed.hpp"
#include "glitch-video/material_parameters_typed_impl.hpp"

namespace glitch::video::detail {
namespace {

using RParams = IMaterialParameters<CMaterialRenderer, false>;
using glitch::core::vector2d;
using glitch::core::vector3d;
using glitch::core::vector4d;
using glitch::video::SColor;
using glitch::video::SColorf;

// Table views of the CMaterialRenderer instance. The typed getters are const, but no part d or part 1c getter
// writes through the matrix map or the value buffer, so the map is taken through const_cast in one place.
rparams::SRendererValueTable rendererTable(const RParams& r) {
    rparams::SRendererValueTable t;
    t.count = r.parameterHeader().count;
    t.entries = r.parameterHeader().entries;
    t.values = r.valueBuffer();
    t.matrices = &const_cast<RParams&>(r).matrixSlots();
    return t;
}

part1c::SParameterTable paramTable(const RParams& r) {
    return r.table();  // header, value buffer and the pointer slots; R has no dirty words (dirtyFirst, dirtyLast stay null)
}

using V2i = vector2d<int>;
using V3i = vector3d<int>;
using V4i = vector4d<int>;
using V2f = vector2d<float>;
using V3f = vector3d<float>;
using V4f = vector4d<float>;

// The pointer value types (intrusive_ptr<ITexture>, intrusive_ptr<CLight>): their rows are part 1c's over R's table with its pointer
// slots (the rows of M without the dirty marks, as the listings show).
template <class T>
constexpr bool kIsPointer = std::is_same_v<T, boost::intrusive_ptr<ITexture>> || std::is_same_v<T, boost::intrusive_ptr<CLight>>;

// Indexed getParameter routes: part 1c instances for the first six types, part d for the rest.
template <class T>
constexpr bool kIndexedGetInPart1c = std::is_same_v<T, int> || std::is_same_v<T, V2i> || std::is_same_v<T, V3i> ||
                                     std::is_same_v<T, V4i> || std::is_same_v<T, float> || std::is_same_v<T, V2f>;

}  // namespace

// ---- R backend of the generic mixin bodies (material_parameters_typed_impl.hpp).

template <>
struct MixinBackend<IMaterialParameters<CMaterialRenderer, false>> {
    // Codes 12..15 and 18 are dispatched (the pointer rows go to part 1c over R's table with pointer slots), and code 11 goes to the
    // class matrix accessors in every dispatcher (the Cvt dispatchers call the plain accessor, see the typed_impl header).
    static constexpr bool kPointerRows = true;
    static constexpr bool kMatrixPtrGet = true;
    static constexpr bool kMatrixPtrSet = true;
    static constexpr bool kMatrixPtrGetCvt = true;
    static constexpr bool kMatrixPtrSetCvt = true;
    static constexpr bool kMatrixIdxGet = true;
    static constexpr bool kMatrixIdxSet = true;
    static constexpr bool kMatrixIdxGetCvt = true;
    static constexpr bool kMatrixIdxSetCvt = true;

    // ---- Pointer forms (stride in bytes). All ten numeric types are in part d.

    template <class T>
    static int arrayGet(const RParams& r, uint16_t id, T* out, int stride) {
        if constexpr (kIsPointer<T>) {
            return part1c::getParameter<T>(paramTable(r), id, out, stride);
        } else {
            return rparams::getParameter(rendererTable(r), id, out, stride);
        }
    }
    template <class T>
    static int arrayGetCvt(const RParams& r, uint16_t id, T* out, int stride) {
        if constexpr (kIsPointer<T>) {
            return part1c::getParameterCvt<T>(paramTable(r), id, out, stride);
        } else {
            return rparams::getParameterCvt(rendererTable(r), id, out, stride);
        }
    }
    template <class T>
    static int arraySet(const RParams& r, uint16_t id, const T* src, int stride) {
        if constexpr (kIsPointer<T>) {
            return part1c::setParameter<T>(paramTable(r), id, src, stride);
        } else {
            return rparams::setParameter(rendererTable(r), id, src, stride);
        }
    }
    template <class T>
    static int arraySetCvt(const RParams& r, uint16_t id, const T* src, int stride) {
        if constexpr (kIsPointer<T>) {
            return part1c::setParameterCvt<T>(paramTable(r), id, src, stride);
        } else {
            return rparams::setParameterCvt(rendererTable(r), id, src, stride);
        }
    }

    // ---- Indexed forms.

    template <class T>
    static int indexGet(const RParams& r, uint16_t id, uint32_t index, T& out) {
        if constexpr (kIndexedGetInPart1c<T> || kIsPointer<T>) {
            return part1c::getParameter<T>(paramTable(r), id, index, out);
        } else {
            return rparams::getParameter(rendererTable(r), id, index, out);
        }
    }
    template <class T>
    static int indexSet(const RParams& r, uint16_t id, uint32_t index, const T& src) {
        return part1c::setParameter<T>(paramTable(r), id, index, src);
    }
    template <class T>
    static int indexGetCvt(const RParams& r, uint16_t id, uint32_t index, T& out) {
        if constexpr (kIsPointer<T>) {
            return part1c::getParameterCvt<T>(paramTable(r), id, index, out);
        } else {
            return rparams::getParameterCvt(rendererTable(r), id, index, out);
        }
    }
    template <class T>
    static int indexSetCvt(const RParams& r, uint16_t id, uint32_t index, const T& src) {
        return part1c::setParameterCvt<T>(paramTable(r), id, index, src);
    }
};

// ---- Explicit instantiation for R. Each line is one row of the typed table (addresses in
// material_parameters_typed.hpp). The explicit instantiation of the class adds the eight dispatchers.

#define GLITCH_BIND_R_MIXIN IMaterialParametersTyped<RParams>

#define GLITCH_BIND_R_INSTANTIATE_VALUE(T)                                                     \
    template bool GLITCH_BIND_R_MIXIN::getParameter<T>(uint16_t, T*, int) const;               \
    template bool GLITCH_BIND_R_MIXIN::getParameterCvt<T>(uint16_t, T*, int) const;            \
    template bool GLITCH_BIND_R_MIXIN::setParameter<T>(uint16_t, const T*, int);               \
    template bool GLITCH_BIND_R_MIXIN::setParameterCvt<T>(uint16_t, const T*, int);            \
    template bool GLITCH_BIND_R_MIXIN::getParameter<T>(uint16_t, uint32_t, T&) const;          \
    template bool GLITCH_BIND_R_MIXIN::getParameterCvt<T>(uint16_t, uint32_t, T&) const;       \
    template bool GLITCH_BIND_R_MIXIN::setParameter<T>(uint16_t, uint32_t, const T&);          \
    template bool GLITCH_BIND_R_MIXIN::setParameterCvt<T>(uint16_t, uint32_t, const T&);

GLITCH_BIND_R_INSTANTIATE_VALUE(int)
GLITCH_BIND_R_INSTANTIATE_VALUE(V2i)
GLITCH_BIND_R_INSTANTIATE_VALUE(V3i)
GLITCH_BIND_R_INSTANTIATE_VALUE(V4i)
GLITCH_BIND_R_INSTANTIATE_VALUE(float)
GLITCH_BIND_R_INSTANTIATE_VALUE(V2f)
GLITCH_BIND_R_INSTANTIATE_VALUE(V3f)
GLITCH_BIND_R_INSTANTIATE_VALUE(V4f)
GLITCH_BIND_R_INSTANTIATE_VALUE(SColor)
GLITCH_BIND_R_INSTANTIATE_VALUE(SColorf)

// The pointer rows (intrusive_ptr<ITexture>, intrusive_ptr<CLight>): the sixteen forms of the typed table for R.
#define GLITCH_BIND_R_INSTANTIATE_POINTER(P)                                                       template bool GLITCH_BIND_R_MIXIN::getParameter<P>(uint16_t, P*, int) const;                   template bool GLITCH_BIND_R_MIXIN::getParameterCvt<P>(uint16_t, P*, int) const;                template bool GLITCH_BIND_R_MIXIN::setParameter<P>(uint16_t, const P*, int);                   template bool GLITCH_BIND_R_MIXIN::setParameterCvt<P>(uint16_t, const P*, int);                template bool GLITCH_BIND_R_MIXIN::getParameter<P>(uint16_t, uint32_t, P&) const;              template bool GLITCH_BIND_R_MIXIN::getParameterCvt<P>(uint16_t, uint32_t, P&) const;           template bool GLITCH_BIND_R_MIXIN::setParameter<P>(uint16_t, uint32_t, const P&);              template bool GLITCH_BIND_R_MIXIN::setParameterCvt<P>(uint16_t, uint32_t, const P&);

GLITCH_BIND_R_INSTANTIATE_POINTER(boost::intrusive_ptr<ITexture>)
GLITCH_BIND_R_INSTANTIATE_POINTER(boost::intrusive_ptr<CLight>)

template class GLITCH_BIND_R_MIXIN;

#undef GLITCH_BIND_R_INSTANTIATE_VALUE
#undef GLITCH_BIND_R_INSTANTIATE_POINTER
#undef GLITCH_BIND_R_MIXIN

}  // namespace glitch::video::detail
