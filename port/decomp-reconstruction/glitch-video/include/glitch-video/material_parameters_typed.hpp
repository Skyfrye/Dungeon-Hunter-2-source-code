// Typed accessors of glitch::video::detail::IMaterialParameters<Owner, Header>.
//
// This header holds declarations only. The bodies of the members are generic and are in
// material_parameters_typed_impl.hpp, which only the owner files include: the eight
// E_SHADER_PARAMETER_VALUE_TYPE dispatchers, and the template forms behind them
// (4 families x 12 value types x 2 argument forms per owner). Each owner supplies its
// backend (MixinBackend<Derived>) and the explicit instances.
//
// Owners (G, M, R in the address comments):
//   G = IMaterialParameters<CGlobalMaterialParameterManager, SEmptyBase>
//   M = IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>>
//   R = IMaterialParameters<CMaterialRenderer, ISharedMemoryBlockHeader<CMaterialRenderer>>
//
// Sources, all binary:
//   - Value-type switch: the pseudocode of the setParameter dispatcher at 0x5c57b0 (cases
//     1..8, 11..18), and the same case table in the other seven dispatchers of the three owners.
//     Case 11 is the matrix overload, which is not a template here. Cases 9, 10 and every
//     value outside 1..18 return 0. The ARM jump table at 0x5c57c0 indexes with (type - 1).
//   - Template instance addresses: queue.csv rows of the three owners, one row per address
//     and form. Every (owner, family, value type, form) has exactly one instance.
//
// Integration (not done in this file): the class template IMaterialParameters must derive
// from IMaterialParametersTyped<IMaterialParameters<...>> and carry
//   using Base::getParameter;  using Base::getParameterCvt;
//   using Base::setParameter;  using Base::setParameterCvt;
// so that the matrix overloads of material_parameters.hpp are not hidden.
#pragma once

#include <cstdint>
#include <type_traits>

#include "glitch-video/deps/glitch_core.hpp"
#include "glitch-video/deps/glitch_video_types.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"

namespace glitch::video {

class CLight;

// E_SHADER_PARAMETER_VALUE_TYPE is an enum parameter in the original; its one definition is the int32_t alias in
// video_types.hpp (reached through deps/glitch_video_types.hpp). The codes below are the case values of the dispatcher
// switch (0x5c57b0 and the seven others). The enumerator names are port names; the original names are not recovered.

namespace shader_value_type {
inline constexpr int32_t kInt = 1;          // case 1  -> int                       (0x5c57b0, 0x5c2d60)
inline constexpr int32_t kVector2dInt = 2;  // case 2  -> core::vector2d<int>
inline constexpr int32_t kVector3dInt = 3;  // case 3  -> core::vector3d<int>
inline constexpr int32_t kVector4dInt = 4;  // case 4  -> core::vector4d<int>
inline constexpr int32_t kFloat = 5;        // case 5  -> float
inline constexpr int32_t kVector2dFloat = 6;  // case 6 -> core::vector2d<float>
inline constexpr int32_t kVector3dFloat = 7;  // case 7 -> core::vector3d<float>
inline constexpr int32_t kVector4dFloat = 8;  // case 8 -> core::vector4d<float>
inline constexpr int32_t kMatrix4Float = 11;  // case 11 -> core::CMatrix4<float> (non-template overload, not here)
inline constexpr int32_t kTextureFirst = 12;  // cases 12..15 -> boost::intrusive_ptr<ITexture>
inline constexpr int32_t kTextureLast = 15;
inline constexpr int32_t kColor = 16;       // case 16 -> SColor
inline constexpr int32_t kColorf = 17;      // case 17 -> SColorf
inline constexpr int32_t kLight = 18;       // case 18 -> boost::intrusive_ptr<CLight>
}  // namespace shader_value_type

namespace detail {

// SIsValidSetMaterialParamaterOverload<T>: the enable_if guard on every typed template
// (both get and set; the mangled names show the same trait). Exactly the twelve value types
// of the dispatch switch are valid. Spelling kept from the mangled name.
template <typename T>
struct SIsValidSetMaterialParamaterOverload : std::false_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<int> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<core::vector2d<int>> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<core::vector3d<int>> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<core::vector4d<int>> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<float> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<core::vector2d<float>> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<core::vector3d<float>> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<core::vector4d<float>> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<SColor> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<SColorf> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<ITexture>> : std::true_type {};
template <>
struct SIsValidSetMaterialParamaterOverload<boost::intrusive_ptr<CLight>> : std::true_type {};

template <typename T>
using EnableIfValidMaterialParameter =
    typename std::enable_if<SIsValidSetMaterialParamaterOverload<T>::value, bool>::type;

// Mixin for IMaterialParameters<Owner, Header>. Derived is the IMaterialParameters
// instance. Nothing here is defined; the bodies are in material_parameters_typed_impl.hpp.
template <typename Derived>
class IMaterialParametersTyped {
public:
    // ---- E_SHADER_PARAMETER_VALUE_TYPE dispatchers. The signatures are the same for G, M and R.
    // Each returns int (the pseudocode's result). Value 0 is returned for an unmapped type.
    // Addresses in the order G / M / R:

    // getParameter(t, type, void* out, int count) const
    //   G 0x5c2d60  M 0x5cc628  R 0x5d5490
    int getParameter(uint16_t id, E_SHADER_PARAMETER_VALUE_TYPE type, void* out, int count) const;
    // getParameterCvt(t, type, void* out, int count) const
    //   G 0x5c52d0  M 0x5cd1e8  R 0x5d5f44
    int getParameterCvt(uint16_t id, E_SHADER_PARAMETER_VALUE_TYPE type, void* out, int count) const;
    // setParameter(t, type, const void* src, int count)
    //   G 0x5c57b0  M 0x5cc91c  R 0x5d59f4
    int setParameter(uint16_t id, E_SHADER_PARAMETER_VALUE_TYPE type, const void* src, int count);
    // setParameterCvt(t, type, const void* src, int count)
    //   G 0x5c5550  M 0x5ccf40  R 0x5d5860
    int setParameterCvt(uint16_t id, E_SHADER_PARAMETER_VALUE_TYPE type, const void* src, int count);
    // getParameter(t, index, type, void* out) const
    //   G 0x5c5b48  M 0x5cebb4  R 0x5d7648
    int getParameter(uint16_t id, uint32_t index, E_SHADER_PARAMETER_VALUE_TYPE type, void* out) const;
    // getParameterCvt(t, index, type, void* out) const
    //   G 0x5c59a8  M 0x5cee70  R 0x5d78e4
    int getParameterCvt(uint16_t id, uint32_t index, E_SHADER_PARAMETER_VALUE_TYPE type, void* out) const;
    // setParameter(t, index, type, const void* src)
    //   G 0x5c4f10  M 0x5cea48  R 0x5d69c8
    int setParameter(uint16_t id, uint32_t index, E_SHADER_PARAMETER_VALUE_TYPE type, const void* src);
    // setParameterCvt(t, index, type, const void* src)
    //   G 0x5c5c9c  M 0x5ced38  R 0x5d77b0
    int setParameterCvt(uint16_t id, uint32_t index, E_SHADER_PARAMETER_VALUE_TYPE type, const void* src);

    // ---- Typed template family, pointer form (the value-type dispatcher's pointer overloads).
    // getParameter<T>(uint16_t id, T* out, int stride) const  (stride in bytes)
    //   code  type                  G           M           R
    //   1     int                   0x5c2c80    0x5c8d8c    0x5d1b24
    //   2     vector2d<int>         0x5c2b8c    0x5c8cdc    0x5d1a74
    //   3     vector3d<int>         0x5c2a98    0x5c8c28    0x5d19c4
    //   4     vector4d<int>         0x5c29a4    0x5c8b74    0x5d1914
    //   5     float                 0x5c28c4    0x5c8ad4    0x5d1878
    //   6     vector2d<float>       0x5c27d0    0x5c8a24    0x5d17c8
    //   7     vector3d<float>       0x5c26dc    0x5c8970    0x5d1718
    //   8     vector4d<float>       0x5c25e8    0x5c88bc    0x5d1668
    //   16    SColor                0x5c23e0    0x5c8804    0x5d15b4
    //   17    SColorf               0x5c22e8    0x5c874c    0x5d1500
    //   12-15 intrusive_ptr<ITexture> 0x5c24d8 0x5cc43c    0x5d52ac
    //   18    intrusive_ptr<CLight> 0x5c2198    0x5cc50c    0x5d5378
    template <typename T>
    EnableIfValidMaterialParameter<T> getParameter(uint16_t id, T* out, int stride) const;

    // setParameter<T>(uint16_t id, const T* src, int stride)  (stride in bytes)
    //   1     int                   0x5c083c    0x5ca260    0x5d2e7c
    //   2     vector2d<int>         0x5c0748    0x5ca1a4    0x5d2dcc
    //   3     vector3d<int>         0x5c0654    0x5ca0e4    0x5d2d1c
    //   4     vector4d<int>         0x5c0560    0x5ca024    0x5d2c6c
    //   5     float                 0x5c0480    0x5c9f78    0x5d2bd0
    //   6     vector2d<float>       0x5c038c    0x5c9ebc    0x5d2b20
    //   7     vector3d<float>       0x5c0298    0x5c9dfc    0x5d2a70
    //   8     vector4d<float>       0x5c01a4    0x5c9d3c    0x5d29c0
    //   16    SColor                0x5c00ac    0x5c9c78    0x5d290c
    //   17    SColorf               0x5bffb4    0x5c9bb4    0x5d2858
    //   12-15 intrusive_ptr<ITexture> 0x5c0c94 0x5cc8b4    0x5d599c
    //   18    intrusive_ptr<CLight> 0x5c568c    0x5cc2b8    0x5d5004
    template <typename T>
    EnableIfValidMaterialParameter<T> setParameter(uint16_t id, const T* src, int stride);

    // getParameterCvt<T>(uint16_t id, T* out, int stride) const
    //   1     int                   0x5c2084    0x5c8670    0x5d1428
    //   2     vector2d<int>         0x5c1f60    0x5c8584    0x5d1340
    //   3     vector3d<int>         0x5c1e34    0x5c8490    0x5d1250
    //   4     vector4d<int>         0x5c1d08    0x5c839c    0x5d1160
    //   5     float                 0x5c1bbc    0x5c8284    0x5d104c
    //   6     vector2d<float>       0x5c1a98    0x5c8198    0x5d0f64
    //   7     vector3d<float>       0x5c196c    0x5c80a4    0x5d0e74
    //   8     vector4d<float>       0x5c1718    0x5c7e90    0x5d0c64
    //   16    SColor                0x5c14b8    0x5c7c64    0x5d0a3c
    //   17    SColorf               0x5c12b0    0x5c7a90    0x5d086c
    //   12-15 intrusive_ptr<ITexture> 0x5c4fa8 0x5ccc7c   0x5d5da4
    //   18    intrusive_ptr<CLight> 0x5c518c    0x5cd0d8    0x5d55cc
    template <typename T>
    EnableIfValidMaterialParameter<T> getParameterCvt(uint16_t id, T* out, int stride) const;

    // setParameterCvt<T>(uint16_t id, const T* src, int stride)
    //   1     int                   0x5bfe68    0x5c9a88    0x5d2744
    //   2     vector2d<int>         0x5bfd44    0x5c9988    0x5d265c
    //   3     vector3d<int>         0x5bfc18    0x5c9880    0x5d256c
    //   4     vector4d<int>         0x5c38b0    0x5c9778    0x5d247c
    //   5     float                 0x5c3764    0x5c964c    0x5d2368
    //   6     vector2d<float>       0x5c3640    0x5c954c    0x5d2280
    //   7     vector3d<float>       0x5c3514    0x5c9444    0x5d2190
    //   8     vector4d<float>       0x5c3308    0x5c9258    0x5d1fbc
    //   16    SColor                0x5c30b0    0x5c9020    0x5d1d9c
    //   17    SColorf               0x5c2e9c    0x5c8e2c    0x5d1bc0
    //   12-15 intrusive_ptr<ITexture> 0x5c0bd4 0x5cc820   0x5d57e4
    //   18    intrusive_ptr<CLight> 0x5c540c    0x5cce20    0x5d56d8
    template <typename T>
    EnableIfValidMaterialParameter<T> setParameterCvt(uint16_t id, const T* src, int stride);

    // ---- Typed template family, index form (the dispatcher's (t, index, ...) overloads).
    // getParameter<T>(uint16_t id, uint32_t index, T& out) const
    //   1     int                   0x5c3b40    0x5c6e24    0x5cfc88
    //   2     vector2d<int>         0x5c3a94    0x5c6e84    0x5cfce4
    //   3     vector3d<int>         0x5c39dc    0x5c6ef0    0x5cfd44
    //   4     vector4d<int>         0x5bfb5c    0x5c6f68    0x5cfdb0
    //   5     float                 0x5bfabc    0x5c6fe4    0x5cfe20
    //   6     vector2d<float>       0x5bfa10    0x5c7044    0x5cfe74
    //   7     vector3d<float>       0x5bf958    0x5c70b0    0x5cfed4
    //   8     vector4d<float>       0x5bf89c    0x5c7128    0x5cff40
    //   16    SColor                0x5bf738    0x5c71a4    0x5cffb0
    //   17    SColorf               0x5bf68c    0x5c7208    0x5d0010
    //   12-15 intrusive_ptr<ITexture> 0x5bf7dc 0x5cdabc   0x5d68a0
    //   18    intrusive_ptr<CLight> 0x5c5a40    0x5ceae0    0x5d7578
    template <typename T>
    EnableIfValidMaterialParameter<T> getParameter(uint16_t id, uint32_t index, T& out) const;

    // setParameter<T>(uint16_t id, uint32_t index, const T& src)
    //   1     int                   0x5c4e70    0x5c623c    0x5cf05c
    //   2     vector2d<int>         0x5c4dc4    0x5c62b4    0x5cf0b8
    //   3     vector3d<int>         0x5c4d0c    0x5c6350    0x5cf118
    //   4     vector4d<int>         0x5c4c50    0x5c6408    0x5cf18c
    //   5     float                 0x5c4bb0    0x5c64d4    0x5cf1fc
    //   6     vector2d<float>       0x5c4b04    0x5c6564    0x5cf250
    //   7     vector3d<float>       0x5c4a4c    0x5c660c    0x5cf2b0
    //   8     vector4d<float>       0x5c4990    0x5c66d4    0x5cf324
    //   16    SColor                0x5c47fc    0x5c67b4    0x5cf394
    //   17    SColorf               0x5c4754    0x5cabf8    0x5cf3f4
    //   12-15 intrusive_ptr<ITexture> 0x5c48a0 0x5cd324   0x5d691c
    //   18    intrusive_ptr<CLight> 0x5be68c    0x5ce95c    0x5d4f34
    template <typename T>
    EnableIfValidMaterialParameter<T> setParameter(uint16_t id, uint32_t index, const T& src);

    // getParameterCvt<T>(uint16_t id, uint32_t index, T& out) const
    //   1     int                   0x5bf5bc    0x5c7274    0x5d0078
    //   2     vector2d<int>         0x5bf4fc    0x5c7310    0x5d0110
    //   3     vector3d<int>         0x5bf434    0x5c739c    0x5d0198
    //   4     vector4d<int>         0x5bf360    0x5c7430    0x5d0228
    //   5     float                 0x5bf288    0x5c74d0    0x5d02c4
    //   6     vector2d<float>       0x5bf1c8    0x5c7574    0x5d0364
    //   7     vector3d<float>       0x5bf100    0x5c7600    0x5d03ec
    //   8     vector4d<float>       0x5bef98    0x5c7694    0x5d047c
    //   16    SColor                0x5be8e4    0x5c77c8    0x5d05ac
    //   17    SColorf               0x5be794    0x5c7954    0x5d0734
    //   12-15 intrusive_ptr<ITexture> 0x5beaa4 0x5cedd0   0x5d7848
    //   18    intrusive_ptr<CLight> 0x5c58ec    0x5cc3b4    0x5d50f0
    template <typename T>
    EnableIfValidMaterialParameter<T> getParameterCvt(uint16_t id, uint32_t index, T& out) const;

    // setParameterCvt<T>(uint16_t id, uint32_t index, const T& src)
    //   1     int                   0x5c4688    0x5c6834    0x5cf458
    //   2     vector2d<int>         0x5c45c8    0x5c6904    0x5cf4ec
    //   3     vector3d<int>         0x5c4500    0x5c69c4    0x5cf574
    //   4     vector4d<int>         0x5c442c    0x5c6a9c    0x5cf604
    //   5     float                 0x5c4358    0x5c6b8c    0x5cf6a0
    //   6     vector2d<float>       0x5c4298    0x5c6c60    0x5cf73c
    //   7     vector3d<float>       0x5c41d0    0x5c6d34    0x5cf7c4
    //   8     vector4d<float>       0x5c4054    0x5ce768    0x5cf854
    //   16    SColor                0x5c3d5c    0x5cad38    0x5cf998
    //   17    SColorf               0x5c3be0    0x5cb6e8    0x5cfb44
    //   12-15 intrusive_ptr<ITexture> 0x5c3f40 0x5cec4c   0x5d76e0
    //   18    intrusive_ptr<CLight> 0x5c5be0    0x5cc1b8    0x5d5174
    template <typename T>
    EnableIfValidMaterialParameter<T> setParameterCvt(uint16_t id, uint32_t index, const T& src);
};

}  // namespace detail

}  // namespace glitch::video
