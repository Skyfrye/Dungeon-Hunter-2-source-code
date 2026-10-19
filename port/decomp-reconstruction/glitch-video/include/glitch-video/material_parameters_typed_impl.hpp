// Generic member bodies of the typed mixin IMaterialParametersTyped<Derived> (declared in
// material_parameters_typed.hpp).
//
// Only the three owner files include this header: material_parameters_bind_g.cpp, _m.cpp and _r.cpp. Each one
// specializes MixinBackend for its own Derived, then instantiates the members it binds. The bodies are not
// visible anywhere else, so tests keep calling the explicit instances.
//
// Every pointer and indexed form forwards to MixinBackend<Derived>. The eight dispatchers map a shader value
// type code to a C++ type (typed_impl::withValueType) and call the form with that type.
//
// MixinBackend<Derived> is specialized by the owner file. It provides these static members, each returning 1
// when a value was read or written and 0 otherwise. T is the value type. The intrusive pointer rows may be
// non-template overloads with the same name.
//   arrayGet(const Derived&, uint16_t id, T* out, int stride)       arrayGetCvt: same signature
//   arraySet(Derived&, uint16_t id, const T* src, int stride)       arraySetCvt: same signature
//   indexGet(const Derived&, uint16_t id, uint32_t index, T& out)   indexGetCvt: same signature
//   indexSet(Derived&, uint16_t id, uint32_t index, const T& src)   indexSetCvt: same signature
// and these constants:
//   kPointerRows: codes 12..15 (intrusive_ptr<ITexture>) and 18 (intrusive_ptr<CLight>) are dispatched.
//                 When false, the dispatchers return 0 for them.
//   kMatrixPtrGet, kMatrixPtrSet, kMatrixPtrGetCvt, kMatrixPtrSetCvt, kMatrixIdxGet, kMatrixIdxSet,
//   kMatrixIdxGetCvt, kMatrixIdxSetCvt: code 11 (CMatrix4<float>) goes to the class matrix accessor in that
//                 dispatcher (the Cvt dispatchers of the binary call the plain matrix accessor too: the class has no
//                 matrix Cvt, Hex-Rays shows getParameter / setParameter in all eight). When false, that dispatcher returns 0
//                 for code 11. The class accessors are declared in material_parameters.hpp.
#pragma once

#include <cstdint>

#include "glitch-video/material_parameters_typed.hpp"

namespace glitch::video::detail {

// Specialized in each owner file (see the header comment).
template <typename Derived>
struct MixinBackend;

namespace typed_impl {

template <class T>
struct TypeTag {
    using type = T;
};

using CMatrix = core::CMatrix4<float>;
using V2i = core::vector2d<int>;
using V3i = core::vector3d<int>;
using V4i = core::vector4d<int>;
using V2f = core::vector2d<float>;
using V3f = core::vector3d<float>;
using V4f = core::vector4d<float>;
using TexturePtr = boost::intrusive_ptr<ITexture>;
using LightPtr = boost::intrusive_ptr<CLight>;

// Calls fn(TypeTag<T>{}) for the value type of a shader_value_type code. Codes 1..8, 16 and 17 are always
// dispatched. Codes 12..15 and 18 only when B::kPointerRows. Every other code returns 0 (including 9, 10, and
// 11, which the dispatchers handle before this switch).
template <class B, class Fn>
int withValueType(int32_t code, Fn&& fn) {
    using namespace shader_value_type;
    switch (code) {
        case kInt: return fn(TypeTag<int>{});
        case kVector2dInt: return fn(TypeTag<V2i>{});
        case kVector3dInt: return fn(TypeTag<V3i>{});
        case kVector4dInt: return fn(TypeTag<V4i>{});
        case kFloat: return fn(TypeTag<float>{});
        case kVector2dFloat: return fn(TypeTag<V2f>{});
        case kVector3dFloat: return fn(TypeTag<V3f>{});
        case kVector4dFloat: return fn(TypeTag<V4f>{});
        case kColor: return fn(TypeTag<SColor>{});
        case kColorf: return fn(TypeTag<SColorf>{});
        default: break;
    }
    if constexpr (B::kPointerRows) {
        switch (code) {
            case kTextureFirst:
            case kTextureFirst + 1:
            case kTextureFirst + 2:
            case kTextureLast: return fn(TypeTag<TexturePtr>{});
            case kLight: return fn(TypeTag<LightPtr>{});
            default: break;
        }
    }
    return 0;
}

}  // namespace typed_impl

// ---- Pointer forms (stride in bytes; 0 means contiguous, as in the backends).

template <typename Derived>
template <typename T>
EnableIfValidMaterialParameter<T> IMaterialParametersTyped<Derived>::getParameter(uint16_t id, T* out, int stride) const {
    return MixinBackend<Derived>::arrayGet(static_cast<const Derived&>(*this), id, out, stride) != 0;
}

template <typename Derived>
template <typename T>
EnableIfValidMaterialParameter<T> IMaterialParametersTyped<Derived>::setParameter(uint16_t id, const T* src, int stride) {
    return MixinBackend<Derived>::arraySet(static_cast<Derived&>(*this), id, src, stride) != 0;
}

template <typename Derived>
template <typename T>
EnableIfValidMaterialParameter<T> IMaterialParametersTyped<Derived>::getParameterCvt(uint16_t id, T* out, int stride) const {
    return MixinBackend<Derived>::arrayGetCvt(static_cast<const Derived&>(*this), id, out, stride) != 0;
}

template <typename Derived>
template <typename T>
EnableIfValidMaterialParameter<T> IMaterialParametersTyped<Derived>::setParameterCvt(uint16_t id, const T* src, int stride) {
    return MixinBackend<Derived>::arraySetCvt(static_cast<Derived&>(*this), id, src, stride) != 0;
}

// ---- Indexed forms (one element).

template <typename Derived>
template <typename T>
EnableIfValidMaterialParameter<T> IMaterialParametersTyped<Derived>::getParameter(uint16_t id, uint32_t index, T& out) const {
    return MixinBackend<Derived>::indexGet(static_cast<const Derived&>(*this), id, index, out) != 0;
}

template <typename Derived>
template <typename T>
EnableIfValidMaterialParameter<T> IMaterialParametersTyped<Derived>::setParameter(uint16_t id, uint32_t index, const T& src) {
    return MixinBackend<Derived>::indexSet(static_cast<Derived&>(*this), id, index, src) != 0;
}

template <typename Derived>
template <typename T>
EnableIfValidMaterialParameter<T> IMaterialParametersTyped<Derived>::getParameterCvt(uint16_t id, uint32_t index, T& out) const {
    return MixinBackend<Derived>::indexGetCvt(static_cast<const Derived&>(*this), id, index, out) != 0;
}

template <typename Derived>
template <typename T>
EnableIfValidMaterialParameter<T> IMaterialParametersTyped<Derived>::setParameterCvt(uint16_t id, uint32_t index, const T& src) {
    return MixinBackend<Derived>::indexSetCvt(static_cast<Derived&>(*this), id, index, src) != 0;
}

// ---- Dispatchers. Each returns 1 when a value was read or written, 0 for an unmapped code or a failed row.
// The count (or stride) argument is passed on unchanged to the form.

// getParameter(t, type, void* out, int count) const
template <typename Derived>
int IMaterialParametersTyped<Derived>::getParameter(uint16_t id, E_SHADER_PARAMETER_VALUE_TYPE type, void* out, int count) const {
    using B = MixinBackend<Derived>;
    const Derived& m = static_cast<const Derived&>(*this);
    if constexpr (B::kMatrixPtrGet) {
        if (type == shader_value_type::kMatrix4Float) return m.getParameter(id, static_cast<typed_impl::CMatrix*>(out), count) ? 1 : 0;
    }
    return typed_impl::withValueType<B>(type, [&](auto tag) -> int {
        using T = typename decltype(tag)::type;
        return m.getParameter(id, static_cast<T*>(out), count) ? 1 : 0;
    });
}

// getParameterCvt(t, type, void* out, int count) const
template <typename Derived>
int IMaterialParametersTyped<Derived>::getParameterCvt(uint16_t id, E_SHADER_PARAMETER_VALUE_TYPE type, void* out, int count) const {
    using B = MixinBackend<Derived>;
    const Derived& m = static_cast<const Derived&>(*this);
    if constexpr (B::kMatrixPtrGetCvt) {
        if (type == shader_value_type::kMatrix4Float) return m.getParameter(id, static_cast<typed_impl::CMatrix*>(out), count) ? 1 : 0;  // the class has no matrix Cvt: the dispatcher calls the plain accessor
    }
    return typed_impl::withValueType<B>(type, [&](auto tag) -> int {
        using T = typename decltype(tag)::type;
        return m.getParameterCvt(id, static_cast<T*>(out), count) ? 1 : 0;
    });
}

// setParameter(t, type, const void* src, int count)
template <typename Derived>
int IMaterialParametersTyped<Derived>::setParameter(uint16_t id, E_SHADER_PARAMETER_VALUE_TYPE type, const void* src, int count) {
    using B = MixinBackend<Derived>;
    Derived& m = static_cast<Derived&>(*this);
    if constexpr (B::kMatrixPtrSet) {
        if (type == shader_value_type::kMatrix4Float) return m.setParameter(id, static_cast<const typed_impl::CMatrix*>(src), count) ? 1 : 0;
    }
    return typed_impl::withValueType<B>(type, [&](auto tag) -> int {
        using T = typename decltype(tag)::type;
        return m.setParameter(id, static_cast<const T*>(src), count) ? 1 : 0;
    });
}

// setParameterCvt(t, type, const void* src, int count)
template <typename Derived>
int IMaterialParametersTyped<Derived>::setParameterCvt(uint16_t id, E_SHADER_PARAMETER_VALUE_TYPE type, const void* src, int count) {
    using B = MixinBackend<Derived>;
    Derived& m = static_cast<Derived&>(*this);
    if constexpr (B::kMatrixPtrSetCvt) {
        if (type == shader_value_type::kMatrix4Float) return m.setParameter(id, static_cast<const typed_impl::CMatrix*>(src), count) ? 1 : 0;  // plain accessor, as above
    }
    return typed_impl::withValueType<B>(type, [&](auto tag) -> int {
        using T = typename decltype(tag)::type;
        return m.setParameterCvt(id, static_cast<const T*>(src), count) ? 1 : 0;
    });
}

// getParameter(t, index, type, void* out) const
template <typename Derived>
int IMaterialParametersTyped<Derived>::getParameter(uint16_t id, uint32_t index, E_SHADER_PARAMETER_VALUE_TYPE type, void* out) const {
    using B = MixinBackend<Derived>;
    const Derived& m = static_cast<const Derived&>(*this);
    if constexpr (B::kMatrixIdxGet) {
        if (type == shader_value_type::kMatrix4Float) return m.getParameter(id, index, *static_cast<typed_impl::CMatrix*>(out)) ? 1 : 0;
    }
    return typed_impl::withValueType<B>(type, [&](auto tag) -> int {
        using T = typename decltype(tag)::type;
        return m.getParameter(id, index, *static_cast<T*>(out)) ? 1 : 0;
    });
}

// getParameterCvt(t, index, type, void* out) const
template <typename Derived>
int IMaterialParametersTyped<Derived>::getParameterCvt(uint16_t id, uint32_t index, E_SHADER_PARAMETER_VALUE_TYPE type, void* out) const {
    using B = MixinBackend<Derived>;
    const Derived& m = static_cast<const Derived&>(*this);
    if constexpr (B::kMatrixIdxGetCvt) {
        if (type == shader_value_type::kMatrix4Float) return m.getParameter(id, index, *static_cast<typed_impl::CMatrix*>(out)) ? 1 : 0;  // plain accessor, as above
    }
    return typed_impl::withValueType<B>(type, [&](auto tag) -> int {
        using T = typename decltype(tag)::type;
        return m.getParameterCvt(id, index, *static_cast<T*>(out)) ? 1 : 0;
    });
}

// setParameter(t, index, type, const void* src)
template <typename Derived>
int IMaterialParametersTyped<Derived>::setParameter(uint16_t id, uint32_t index, E_SHADER_PARAMETER_VALUE_TYPE type, const void* src) {
    using B = MixinBackend<Derived>;
    Derived& m = static_cast<Derived&>(*this);
    if constexpr (B::kMatrixIdxSet) {
        if (type == shader_value_type::kMatrix4Float) return m.setParameter(id, index, *static_cast<const typed_impl::CMatrix*>(src)) ? 1 : 0;
    }
    return typed_impl::withValueType<B>(type, [&](auto tag) -> int {
        using T = typename decltype(tag)::type;
        return m.setParameter(id, index, *static_cast<const T*>(src)) ? 1 : 0;
    });
}

// setParameterCvt(t, index, type, const void* src)
template <typename Derived>
int IMaterialParametersTyped<Derived>::setParameterCvt(uint16_t id, uint32_t index, E_SHADER_PARAMETER_VALUE_TYPE type, const void* src) {
    using B = MixinBackend<Derived>;
    Derived& m = static_cast<Derived&>(*this);
    if constexpr (B::kMatrixIdxSetCvt) {
        if (type == shader_value_type::kMatrix4Float) return m.setParameter(id, index, *static_cast<const typed_impl::CMatrix*>(src)) ? 1 : 0;  // plain accessor, as above
    }
    return typed_impl::withValueType<B>(type, [&](auto tag) -> int {
        using T = typename decltype(tag)::type;
        return m.setParameterCvt(id, index, *static_cast<const T*>(src)) ? 1 : 0;
    });
}

}  // namespace glitch::video::detail
