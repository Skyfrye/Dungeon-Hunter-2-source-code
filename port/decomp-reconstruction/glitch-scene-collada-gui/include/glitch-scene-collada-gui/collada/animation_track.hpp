// glitch::collada::animation_track: the animation track templates (CVirtualEx<CApplyValueEx<Value, Mixin>> and the interpreters,
// blenders, input readers and mixins they are built from). Canonical header of the scene-owner wave (animation track family). It
// replaces the address-named stand-ins of animation_track_virtual_ex.hpp, track_defaults.hpp, tb/glitch_collada_animation_track_*.hpp
// and the recon_07 .. recon_16, recon_28, recon_v2 wave 05 .. 12 track stand-ins (guest-word structs, free functions, explicit
// specializations without a base class).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py on the 48 CVirtualEx instantiations, 0x60ed10 ..
// 0x62dxxx; the pseudocode of every instantiation was clustered by shape, see the ledger part scene-animation-track.csv):
//   * CVirtualEx<TApply> derives from CAnimationTrackEx (collada/IAnimationTrackEx.hpp) and has no data: one static object per
//     instantiation, getInstance() (function-local static s_Instance, vptr only). It overrides getValueSize (+0x08), getIdentityValue
//     (+0x0c), getBlendedValue / getAddedValue (+0x10 / +0x14), applyBlendedValue / applyAddedValue (+0x18 / +0x1c), the four
//     getKeyBasedValue (+0x20 .. +0x2c), two of the applyKeyBasedValue (+0x40 with a fraction, +0x48 single key), applyValue (+0x70)
//     and retrieveValue (+0x8c). The `target` of the apply slots is the ISceneNode (scene node tracks), the video::CLight (light colour)
//     or the video::CMaterial (material parameter tracks); `source` of retrieveValue is the same object.
//   * CApplyValueEx<Value, Mixin> only has static members (applyKeyBasedValueEx x2, applyBlendedValueEx, applyAddedValueEx); they
//     compute the value (the interpreter / blender functions) and hand it to the mixin's apply.
//   * CInterpreter<Mixin, Out, N, Policy> (static getKeyBasedValueEx x4), CInterpreterQuaternion<Mixin, Key> (x2),
//     CInterpreterQuaternionAngle<Mixin, Key> (x4), CInputReader<Key, float, N> (scales / offsets of quantised keys), CBlender<quaternion,
//     1, quaternion>, CApplicator<SLightColor>.
//   Key types: float (as is), unsigned char (colours), char / short (quantised: value = key * scale + offset from the accessor).
//   Policies: SUseDefaultLerp<Key> animates the whole value; SUseDefaultValues<Component, Key> animates one component and takes the
//   others from the accessor's default value (when there is none only element 0 is written; that is the original's behaviour for every
//   component).
//   The (accessor, key, nextKey, fraction, out) interpolation of the whole-value float / colour / quaternion records reads the record
//   `key` and the record AFTER it (key + 1, weights {1 - f, f}), not `nextKey`; the quantised forms read both `key` and `nextKey`.
//
// Port notes: pointers are host width; the values are accessed through float / byte pointers. The statics return void (the original
// returns the last register, which no caller reads); the virtual overrides return 0 where the original returns the register of
// the last call. Material tracks call IMaterialParameters<CMaterial, ...>::setParameterCvt<T> in the original, the base class of the
// CMaterial target; the port's CMaterial carries that base as its `parameters` member (glitch-video/material.hpp), and
// detail::setMaterialParameterCvt writes through it.
#pragma once

#include <cstdint>
#include <cstring>
#include <type_traits>

#include "glitch-scene-collada-gui/collada/CApplicatorInfo.hpp"
#include "glitch-video/material.hpp"
#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"
#include "glitch-scene-collada-gui/collada/SAnimationAccessor.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-shared/glitch_core.hpp"

namespace glitch::video {
class CLight;
}

namespace glitch::collada::animation_track {

// ---------------------------------------------------------------------------------------------------------------------------------
// Tags (class templates whose names appear in the symbols).
// ---------------------------------------------------------------------------------------------------------------------------------
template <class TKey>
struct SUseDefaultLerp {};
template <int Component, class TKey>
struct SUseDefaultValues {};
struct SSceneNodePosition {};
struct SLightColor {};
template <class TIn, class TOut>
struct SAnimationTypes {};
template <class TTypes>
struct SMaterialSetParam {};
template <class TElement, int N, class TParam, int Component, class TKey>
struct CMixin;

// Component interpreters of the scene node position / scale (tags).
template <class TKey>
struct CSceneNodePositionXEx {};
template <class TKey>
struct CSceneNodePositionYEx {};
template <class TKey>
struct CSceneNodePositionZEx {};
template <class TKey>
struct CSceneNodeScaleXEx {};
template <class TKey>
struct CSceneNodeScaleYEx {};
template <class TKey>
struct CSceneNodeScaleZEx {};

// ---------------------------------------------------------------------------------------------------------------------------------
// Helpers shared by the bodies (no symbols of their own in the binary: the compiler inlined them).
// ---------------------------------------------------------------------------------------------------------------------------------
namespace detail {

// __aeabi_f2uiz: the unsigned conversion saturates (negative and NaN give 0).
inline std::uint32_t floatToUnsigned(float value) {
    if (!(value > 0.0f)) {
        return 0u;
    }
    if (value >= 4294967296.0f) {
        return 0xffffffffu;
    }
    return static_cast<std::uint32_t>(value);
}

// The output record array of keyframe 0 (what every interpreter reads: getOutput(0) + 4).
inline const unsigned char* keyBytes(const SAnimationAccessor& accessor) {
    return static_cast<const unsigned char*>(accessor.getOutput(0)->data);
}
template <class TKey>
inline const TKey* keys(const SAnimationAccessor& accessor) {
    return static_cast<const TKey*>(accessor.getOutput(0)->data);
}

// The weighted sum of `count` records of N floats (getBlendedValue / getAddedValue / applyBlendedValueEx / applyAddedValueEx of the float
// tracks): one record is copied, no record gives zero, otherwise out[k] = sum(weights[i] * values[i * N + k]).
template <int N>
inline void blendFloats(const void* values, const float* weights, int count, void* out) {
    const float* in = static_cast<const float*>(values);
    float* result = static_cast<float*>(out);
    if (count == 1) {
        for (int k = 0; k < N; ++k) {
            result[k] = in[k];
        }
        return;
    }
    float accumulator[N];
    for (int k = 0; k < N; ++k) {
        accumulator[k] = 0.0f;
    }
    for (int i = 0; i < count; ++i) {
        const float weight = weights[i];
        for (int k = 0; k < N; ++k) {
            accumulator[k] = accumulator[k] + (weight * in[i * N + k]);
        }
    }
    for (int k = 0; k < N; ++k) {
        result[k] = accumulator[k];
    }
}

// The same for byte records (colours): the sum is kept in floats and converted to unsigned (truncating) for the bytes.
template <int N>
inline void blendBytes(const void* values, const float* weights, int count, void* out) {
    const std::uint8_t* in = static_cast<const std::uint8_t*>(values);
    std::uint8_t* result = static_cast<std::uint8_t*>(out);
    if (count == 1) {
        for (int k = 0; k < N; ++k) {
            result[k] = in[k];
        }
        return;
    }
    float accumulator[N];
    for (int k = 0; k < N; ++k) {
        accumulator[k] = 0.0f;
    }
    for (int i = 0; i < count; ++i) {
        const float weight = weights[i];
        for (int k = 0; k < N; ++k) {
            accumulator[k] = (static_cast<float>(in[i * N + k]) * weight) + accumulator[k];
        }
    }
    for (int k = 0; k < N; ++k) {
        result[k] = static_cast<std::uint8_t>(floatToUnsigned(accumulator[k]));
    }
}

// The two-record blend with the weights {1 - f, f} that the interpolating getKeyBasedValueEx of the records use.
inline float blendPair(float first, float second, float fraction) {
    const float inverse = 1.0f - fraction;
    return (fraction * second) + ((inverse * first) + 0.0f);
}

// setParameterCvt<T>(id, index, value) of the target material: the target of the material tracks is a CMaterial used as
// IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>> (its base class in the original; the `parameters` member here).
template <class TValue>
inline int setMaterialParameterCvt(void* material, std::uint16_t parameterId, std::uint32_t index, const TValue* value) {
    return static_cast<video::CMaterial*>(material)->parameters.setParameterCvt(parameterId, index, *value) ? 1 : 0;
}

// The same for a matrix parameter (IMaterialParameters<...>::setParameter(id, index, CMatrix4 const&), the texture transform).
inline int setMaterialMatrixParameter(void* material, std::uint16_t parameterId, std::uint32_t index,
                                      const core::CMatrix4<float>* matrix) {
    return static_cast<video::CMaterial*>(material)->parameters.setParameter(parameterId, index, *matrix) ? 1 : 0;
}

}  // namespace detail

// ---------------------------------------------------------------------------------------------------------------------------------
// CInputReader<Key, float, N>: the three words the quantised interpreters read through (0x613600 .. 0x61444c).
// ---------------------------------------------------------------------------------------------------------------------------------
template <class TKey, class TOut, int N>
class CInputReader {
public:
    // The output record of keyframe 0 (+0x00), the scales (+0x04) and the offsets (+0x08) of the accessor.
    explicit CInputReader(const SAnimationAccessor& accessor)
        : output(accessor.getOutput(0)), scales(accessor.getScales()), offsets(accessor.getOffsets()) {}

    // The component `index` of the record `key` as a float: key * scale + offset.
    TOut read(int key, int index) const {
        const TKey* records = static_cast<const TKey*>(output->data);
        return (static_cast<TOut>(records[key * N + index]) * scales[index]) + offsets[index];
    }

    const SAnimationOutput* output;  // +0x00
    const float* scales;             // +0x04
    const float* offsets;            // +0x08
};

// ---------------------------------------------------------------------------------------------------------------------------------
// CBlender<quaternion, 1, quaternion>: the blend and the added value of rotation keys (0x6130d4, 0x613378).
// ---------------------------------------------------------------------------------------------------------------------------------
template <class TElement, int N, class TOut>
struct CBlender;

template <>
struct CBlender<core::quaternion, 1, core::quaternion> {
    // The first key with a non-zero weight is the start; the later non-zero keys are slerped in with the running weight
    // (weight / total). A single key with weight 1 is returned as is; no key gives the identity.
    static void getBlendedValueEx(void* values, float* weights, int count, void* out);
    // The product of slerp(identity, key, weight) over the keys; a negative weight uses the conjugate (x, y, z negated) and the
    // positive weight; a zero weight is skipped.
    static void getAddedValueEx(void* values, float* weights, int count, void* out);
};

// ---------------------------------------------------------------------------------------------------------------------------------
// CApplicator<SLightColor>: writes a byte colour into a video::CLight (0x60dfc0).
// ---------------------------------------------------------------------------------------------------------------------------------
template <class TKind>
struct CApplicator;

template <>
struct CApplicator<SLightColor> {
    // CLight +0x14 / +0x18 / +0x1c = byte / 255, +0x20 = 1.0 (the diffuse colour).
    static void applyValueEx(void* light, void* value, CApplicatorInfo* info);
};

// ---------------------------------------------------------------------------------------------------------------------------------
// The interpreters.
// ---------------------------------------------------------------------------------------------------------------------------------
template <class TKey>
struct CSceneNodeQuaternionMixin;
template <class TKey>
struct CSceneNodeQuaternionAngleMixin;

namespace detail {
template <class TMixin>
struct IsQuaternionMixin : std::false_type {};
template <class TKey>
struct IsQuaternionMixin<CSceneNodeQuaternionMixin<TKey>> : std::true_type {};

// A record of N floats from the keys of the accessor, as floats: raw for float keys, dequantised for char / short keys.
template <class TKey, int N>
inline void readRecord(const SAnimationAccessor& accessor, int key, float* out) {
    if constexpr (std::is_same_v<TKey, float>) {
        const float* records = keys<float>(accessor) + key * N;
        for (int k = 0; k < N; ++k) {
            out[k] = records[k];
        }
    } else {
        const CInputReader<TKey, float, N> reader(accessor);
        for (int k = 0; k < N; ++k) {
            out[k] = reader.read(key, k);
        }
    }
}
}  // namespace detail

template <class TMixin, class TOut, int N, class TPolicy>
struct CInterpreter;

// SUseDefaultLerp<TKey>: the whole value of N components (TOut is float for float / char / short keys, unsigned char for colours).
template <class TMixin, class TOut, int N, class TKey>
struct CInterpreter<TMixin, TOut, N, SUseDefaultLerp<TKey>> {
    // (accessor, key, out): the record `key`.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, void* out) {
        if constexpr (std::is_same_v<TKey, unsigned char>) {
            const std::uint8_t* record = detail::keys<std::uint8_t>(accessor) + key * N;
            std::uint8_t* result = static_cast<std::uint8_t*>(out);
            for (int k = 0; k < N; ++k) {
                result[k] = record[k];
            }
        } else {
            detail::readRecord<TKey, N>(accessor, key, static_cast<float*>(out));
        }
    }

    // (accessor, key, nextKey, fraction, out): the interpolated record.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) {
        if constexpr (std::is_same_v<TKey, unsigned char>) {
            // The weights {1 - f, f} on the records key and key + 1 (the colours read adjacent records).
            const float weights[2] = {1.0f - fraction, fraction};
            detail::blendBytes<N>(detail::keys<std::uint8_t>(accessor) + key * N, weights, 2, out);
        } else if constexpr (std::is_same_v<TKey, float>) {
            const float weights[2] = {1.0f - fraction, fraction};
            if constexpr (detail::IsQuaternionMixin<TMixin>::value) {
                CBlender<core::quaternion, 1, core::quaternion>::getBlendedValueEx(
                    const_cast<float*>(detail::keys<float>(accessor) + key * N), const_cast<float*>(weights), 2, out);
            } else {
                // blend of the records key and key + 1 with the accumulator seeded at 0.0 (`(w0 * x0 + 0.0) + f * x1`).
                const float* records = detail::keys<float>(accessor) + key * N;
                float* result = static_cast<float*>(out);
                float first[N];
                float second[N];
                float accumulator[N];
                for (int k = 0; k < N; ++k) {
                    first[k] = records[k];
                    second[k] = records[N + k];
                    accumulator[k] = 0.0f;
                }
                for (int k = 0; k < N; ++k) {
                    accumulator[k] = (weights[0] * first[k]) + accumulator[k];
                }
                for (int k = 0; k < N; ++k) {
                    result[k] = (weights[1] * second[k]) + accumulator[k];
                }
            }
        } else {
            // Quantised keys: the records key and nextKey, dequantised.
            float first[N];
            float second[N];
            detail::readRecord<TKey, N>(accessor, key, first);
            detail::readRecord<TKey, N>(accessor, nextKey, second);
            if constexpr (detail::IsQuaternionMixin<TMixin>::value) {
                float pair[2 * N];
                for (int k = 0; k < N; ++k) {
                    pair[k] = first[k];
                    pair[N + k] = second[k];
                }
                const float weights[2] = {1.0f - fraction, fraction};
                CBlender<core::quaternion, 1, core::quaternion>::getBlendedValueEx(pair, const_cast<float*>(weights), 2, out);
            } else {
                const float inverse = 1.0f - fraction;
                float* result = static_cast<float*>(out);
                for (int k = 0; k < N; ++k) {
                    result[k] = (fraction * second[k]) + ((inverse * first[k]) + 0.0f);
                }
            }
        }
    }

    // (accessor, key, nextKey, out): the difference of two records.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, void* out) {
        if constexpr (std::is_same_v<TKey, unsigned char>) {
            const std::uint8_t* base = detail::keys<std::uint8_t>(accessor) + key * N;
            const std::uint8_t* next = detail::keys<std::uint8_t>(accessor) + nextKey * N;
            std::uint8_t* result = static_cast<std::uint8_t*>(out);
            for (int k = 0; k < N; ++k) {
                result[k] = static_cast<std::uint8_t>(next[k] - base[k]);
            }
        } else {
            float base[N];
            float next[N];
            detail::readRecord<TKey, N>(accessor, key, base);
            detail::readRecord<TKey, N>(accessor, nextKey, next);
            float* result = static_cast<float*>(out);
            for (int k = 0; k < N; ++k) {
                result[k] = next[k] - base[k];
            }
        }
    }

    // (accessor, key, nextKey, lastKey, fraction, out): the interpolation between nextKey and lastKey relative to the record key.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out) {
        if constexpr (std::is_same_v<TKey, unsigned char>) {
            const std::uint8_t* base = detail::keys<std::uint8_t>(accessor) + key * N;
            const std::uint8_t* first = detail::keys<std::uint8_t>(accessor) + nextKey * N;
            const std::uint8_t* second = detail::keys<std::uint8_t>(accessor) + lastKey * N;
            std::uint8_t* result = static_cast<std::uint8_t*>(out);
            for (int k = 0; k < N; ++k) {
                const std::uint32_t value = detail::floatToUnsigned(static_cast<float>(first[k]) +
                                                                    (fraction * static_cast<float>(second[k] - first[k])));
                result[k] = static_cast<std::uint8_t>(value - base[k]);
            }
        } else {
            float base[N];
            float first[N];
            float second[N];
            detail::readRecord<TKey, N>(accessor, key, base);
            detail::readRecord<TKey, N>(accessor, nextKey, first);
            detail::readRecord<TKey, N>(accessor, lastKey, second);
            float* result = static_cast<float*>(out);
            for (int k = 0; k < N; ++k) {
                result[k] = (first[k] + (fraction * (second[k] - first[k]))) - base[k];
            }
        }
    }
};

// SUseDefaultValues<Component, TKey>: one animated component (one value per key); the other components come from the default value of the
// accessor. Without a default value only element 0 is written (whatever the component).
template <class TMixin, class TOut, int N, int Component, class TKey>
struct CInterpreter<TMixin, TOut, N, SUseDefaultValues<Component, TKey>> {
    // The value of the key (dequantised for char / short keys).
    static TOut readKey(const SAnimationAccessor& accessor, int key) {
        if constexpr (std::is_same_v<TKey, float>) {
            return detail::keys<float>(accessor)[key];
        } else if constexpr (std::is_same_v<TKey, unsigned char>) {
            return detail::keys<std::uint8_t>(accessor)[key];
        } else {
            const CInputReader<TKey, float, 1> reader(accessor);
            return reader.read(key, 0);
        }
    }

    // Writes `value` to its component and the default values to the others (or to element 0 when there is no default value).
    static void store(const SAnimationAccessor& accessor, TOut value, void* out) {
        TOut* result = static_cast<TOut*>(out);
        if (accessor.hasDefaultValue()) {
            const TOut* defaults = static_cast<const TOut*>(accessor.getDefaultValue());
            for (int k = 0; k < N; ++k) {
                result[k] = (k == Component) ? value : defaults[k];
            }
        } else {
            result[0] = value;
        }
    }

    // (accessor, key, out): needs both a default value record and a non-null default pointer to fill the others.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, void* out) {
        const TOut value = readKey(accessor, key);
        TOut* result = static_cast<TOut*>(out);
        if (accessor.hasDefaultValue() && accessor.getDefaultValue() != nullptr) {
            const TOut* defaults = static_cast<const TOut*>(accessor.getDefaultValue());
            for (int k = 0; k < N; ++k) {
                result[k] = (k == Component) ? value : defaults[k];
            }
        } else {
            result[0] = value;
        }
    }

    // (accessor, key, nextKey, fraction, out): the interpolated component.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) {
        const TOut first = readKey(accessor, key);
        const TOut second = readKey(accessor, nextKey);
        TOut value;
        if constexpr (std::is_same_v<TKey, unsigned char>) {
            value = static_cast<TOut>(detail::floatToUnsigned(static_cast<float>(first) +
                                                              (fraction * static_cast<float>(static_cast<int>(second) - static_cast<int>(first)))));
        } else if constexpr (std::is_same_v<TKey, float>) {
            value = first + (fraction * (second - first));
        } else {
            value = (fraction * (second - first)) + first;
        }
        store(accessor, value, out);
    }

    // (accessor, key, nextKey, out): the difference of two keys.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, void* out) {
        TOut value;
        if constexpr (std::is_same_v<TKey, unsigned char>) {
            value = static_cast<TOut>(static_cast<int>(readKey(accessor, nextKey)) - static_cast<int>(readKey(accessor, key)));
        } else {
            value = readKey(accessor, nextKey) - readKey(accessor, key);
        }
        store(accessor, value, out);
    }

    // (accessor, key, nextKey, lastKey, fraction, out): the interpolation of the differences to the key `key`.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out) {
        const TOut base = readKey(accessor, key);
        TOut value;
        if constexpr (std::is_same_v<TKey, unsigned char>) {
            const int first = static_cast<int>(readKey(accessor, nextKey)) - static_cast<int>(base);
            const int second = static_cast<int>(readKey(accessor, lastKey)) - static_cast<int>(base);
            value = static_cast<TOut>(detail::floatToUnsigned(static_cast<float>(first) + (fraction * static_cast<float>(second - first))));
        } else {
            const TOut first = readKey(accessor, nextKey) - base;
            const TOut second = readKey(accessor, lastKey) - base;
            value = first + (fraction * (second - first));
        }
        store(accessor, value, out);
    }
};

// CInterpreter for the rotation angle: the angle goes to element 3, the axis (default value) to elements 0 .. 2.
// (CSceneNodeQuaternionAngleMixin<T> uses SUseDefaultValues<3, T>; the specialisation above covers it, with N = 4.)

// The rotation interpreters: the key records are read through CInterpreter<Mixin, float, 4, SUseDefaultLerp<Key>>.
template <class TMixin, class TKey>
struct CInterpreterQuaternion {
    using Reader = CInterpreter<TMixin, float, 4, SUseDefaultLerp<TKey>>;
    // (accessor, key, nextKey, out): conjugate(key) * nextKey.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, void* out) {
        core::quaternion next;
        core::quaternion base;
        float identity[4] = {0.0f, 0.0f, 0.0f, 1.0f};
        std::memcpy(&next, identity, sizeof(next));
        std::memcpy(&base, identity, sizeof(base));
        Reader::getKeyBasedValueEx(accessor, nextKey, &next);
        Reader::getKeyBasedValueEx(accessor, key, &base);
        base.X = -base.X;
        base.Y = -base.Y;
        base.Z = -base.Z;
        *static_cast<core::quaternion*>(out) = base * next;
    }
    // (accessor, key, nextKey, lastKey, fraction, out): conjugate(key) * slerp(nextKey, lastKey, fraction).
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out) {
        core::quaternion first;
        core::quaternion second;
        core::quaternion base;
        float identity[4] = {0.0f, 0.0f, 0.0f, 1.0f};
        std::memcpy(&first, identity, sizeof(first));
        std::memcpy(&second, identity, sizeof(second));
        std::memcpy(&base, identity, sizeof(base));
        Reader::getKeyBasedValueEx(accessor, nextKey, &first);
        Reader::getKeyBasedValueEx(accessor, lastKey, &second);
        Reader::getKeyBasedValueEx(accessor, key, &base);
        const core::quaternion blended = core::quaternion::slerp(first, second, fraction);
        base.X = -base.X;
        base.Y = -base.Y;
        base.Z = -base.Z;
        *static_cast<core::quaternion*>(out) = base * blended;
    }
};

// The angle-axis rotation interpreters: the (axis, angle) value comes from CInterpreter<Mixin, float, 4, SUseDefaultValues<3, Key>>.
template <class TMixin, class TKey>
struct CInterpreterQuaternionAngle {
    using Reader = CInterpreter<TMixin, float, 4, SUseDefaultValues<3, TKey>>;
    static core::quaternion fromAxisAngle(const float* axisAngle) {
        core::vector3d<float> axis;
        axis.X = axisAngle[0];
        axis.Y = axisAngle[1];
        axis.Z = axisAngle[2];
        return core::quaternion::fromAngleAxis(axisAngle[3], axis);
    }
    // (accessor, key, out)
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, void* out) {
        float value[4] = {0.0f, 0.0f, 0.0f, 0.0f};
        Reader::getKeyBasedValueEx(accessor, key, value);
        *static_cast<core::quaternion*>(out) = fromAxisAngle(value);
    }
    // (accessor, key, nextKey, fraction, out)
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) {
        float value[4] = {0.0f, 0.0f, 0.0f, 0.0f};
        Reader::getKeyBasedValueEx(accessor, key, nextKey, fraction, value);
        *static_cast<core::quaternion*>(out) = fromAxisAngle(value);
    }
    // (accessor, key, nextKey, out): conjugate(key) * nextKey.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, void* out) {
        float next[4] = {0.0f, 0.0f, 0.0f, 0.0f};
        float base[4] = {0.0f, 0.0f, 0.0f, 0.0f};
        Reader::getKeyBasedValueEx(accessor, nextKey, next);
        Reader::getKeyBasedValueEx(accessor, key, base);
        const core::quaternion nextRotation = fromAxisAngle(next);
        core::quaternion baseRotation = fromAxisAngle(base);
        baseRotation.X = -baseRotation.X;
        baseRotation.Y = -baseRotation.Y;
        baseRotation.Z = -baseRotation.Z;
        *static_cast<core::quaternion*>(out) = baseRotation * nextRotation;
    }
    // (accessor, key, nextKey, lastKey, fraction, out): conjugate(key) * slerp(nextKey, lastKey, fraction).
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out) {
        float first[4] = {0.0f, 0.0f, 0.0f, 0.0f};
        float second[4] = {0.0f, 0.0f, 0.0f, 0.0f};
        float base[4] = {0.0f, 0.0f, 0.0f, 0.0f};
        Reader::getKeyBasedValueEx(accessor, nextKey, first);
        Reader::getKeyBasedValueEx(accessor, lastKey, second);
        Reader::getKeyBasedValueEx(accessor, key, base);
        const core::quaternion blended = core::quaternion::slerp(fromAxisAngle(first), fromAxisAngle(second), fraction);
        core::quaternion baseRotation = fromAxisAngle(base);
        baseRotation.X = -baseRotation.X;
        baseRotation.Y = -baseRotation.Y;
        baseRotation.Z = -baseRotation.Z;
        *static_cast<core::quaternion*>(out) = baseRotation * blended;
    }
};

// ---------------------------------------------------------------------------------------------------------------------------------
// The mixins: what a track knows about its target (read the current value, apply a value) and which interpreter reads its keys.
//   kValueSize        bytes of one value (getValueSize)
//   Storage / initial  the value buffer the apply functions build (zeroed; the rotations start as the identity)
//   identity(out)     getIdentityValue
//   retrieve(src,out) retrieveValue: the current value of the source object
//   blend / add       the weighted sum of getBlendedValue / getAddedValue
//   apply(v, t, info) the target write
//   Key / Lerp / Delta / BaseLerp   the interpreter classes of the four getKeyBasedValue forms
// ---------------------------------------------------------------------------------------------------------------------------------
namespace detail {

template <int Bytes>
struct ValueBuffer {
    alignas(4) std::uint8_t bytes[Bytes] = {};
};

// Mixins over float vectors of N components (zero identity, no identity quaternion).
template <int N>
struct FloatVectorOps {
    static constexpr std::uint32_t kValueSize = 4 * N;
    using Storage = ValueBuffer<4 * N>;
    static void initial(Storage&) {}
    static void identity(void* out) { std::memset(out, 0, 4 * N); }
    static void blend(void* values, float* weights, int count, void* out) { blendFloats<N>(values, weights, count, out); }
    static void add(void* values, float* weights, int count, void* out) { blendFloats<N>(values, weights, count, out); }
};
template <int N>
struct ByteVectorOps {
    static constexpr std::uint32_t kValueSize = N;
    using Storage = ValueBuffer<(N > 4 ? N : 4)>;
    static void initial(Storage&) {}
    static void identity(void* out) { std::memset(out, 0, N); }
    static void blend(void* values, float* weights, int count, void* out) { blendBytes<N>(values, weights, count, out); }
    static void add(void* values, float* weights, int count, void* out) { blendBytes<N>(values, weights, count, out); }
};
struct QuaternionOps {
    static constexpr std::uint32_t kValueSize = 16;
    using Storage = ValueBuffer<16>;
    static void initial(Storage& storage) {
        float* value = reinterpret_cast<float*>(storage.bytes);
        value[0] = 0.0f;
        value[1] = 0.0f;
        value[2] = 0.0f;
        value[3] = 1.0f;
    }
    static void identity(void* out) {
        float* value = static_cast<float*>(out);
        value[2] = 0.0f;
        value[3] = 1.0f;
        value[0] = 0.0f;
        value[1] = 0.0f;
    }
    static void blend(void* values, float* weights, int count, void* out) {
        CBlender<core::quaternion, 1, core::quaternion>::getBlendedValueEx(values, weights, count, out);
    }
    static void add(void* values, float* weights, int count, void* out) {
        CBlender<core::quaternion, 1, core::quaternion>::getAddedValueEx(values, weights, count, out);
    }
};

// The vector3d scene node targets: position K 0xa0 / 0xa4, scale K 0x90 / 0x94 (ISceneNode virtuals).
struct PositionTarget {
    static void retrieve(const void* source, void* out) {
        const core::vector3d<float>& position = static_cast<const scene::ISceneNode*>(source)->getPosition();  // K 0xa0
        float* result = static_cast<float*>(out);
        result[0] = position.X;
        result[1] = position.Y;
        result[2] = position.Z;
    }
    static int apply(const void* value, void* target, CApplicatorInfo*) {
        core::vector3d<float> position;
        std::memcpy(&position, value, sizeof(position));
        static_cast<scene::ISceneNode*>(target)->setPosition(position);  // K 0xa4
        return 0;
    }
};
struct ScaleTarget {
    static void retrieve(const void* source, void* out) {
        const core::vector3d<float>& scale = static_cast<const scene::ISceneNode*>(source)->getScale();  // K 0x90
        float* result = static_cast<float*>(out);
        result[0] = scale.X;
        result[1] = scale.Y;
        result[2] = scale.Z;
    }
    static int apply(const void* value, void* target, CApplicatorInfo*) {
        core::vector3d<float> scale;
        std::memcpy(&scale, value, sizeof(scale));
        static_cast<scene::ISceneNode*>(target)->setScale(scale);  // K 0x94
        return 0;
    }
};
struct RotationTarget {
    static void retrieve(const void* source, void* out) {
        const core::quaternion& rotation = static_cast<const scene::ISceneNode*>(source)->getRotation();  // K 0x98
        float* result = static_cast<float*>(out);
        result[0] = rotation.X;
        result[1] = rotation.Y;
        result[2] = rotation.Z;
        result[3] = rotation.W;
    }
    static int apply(const void* value, void* target, CApplicatorInfo*) {
        core::quaternion rotation;
        std::memcpy(&rotation, value, sizeof(rotation));
        static_cast<scene::ISceneNode*>(target)->setRotation(rotation);  // K 0x9c
        return 0;
    }
};

}  // namespace detail

// ---- scene node position -------------------------------------------------------------------------------------------------------
template <class TKey>
struct CSceneNodePositionMixin : detail::FloatVectorOps<3>, detail::PositionTarget {
    using Interp = CInterpreter<CMixin<float, 3, SSceneNodePosition, -1, float>, float, 3, SUseDefaultLerp<TKey>>;
    using Key = Interp;
    using Lerp = Interp;
    using Delta = Interp;
    using BaseLerp = Interp;
};
template <class TKey>
struct CSceneNodeScaleMixin : detail::FloatVectorOps<3>, detail::ScaleTarget {
    using Interp = CInterpreter<CSceneNodeScaleMixin<TKey>, float, 3, SUseDefaultLerp<TKey>>;
    using Key = Interp;
    using Lerp = Interp;
    using Delta = Interp;
    using BaseLerp = Interp;
};
// ---- component mixins (Ex = the interpreter-side tag of the component) -----------------------------------------------------------
template <class TEx, int Component, class TKey>
struct CSceneNodePositionComponentMixin : detail::FloatVectorOps<3>, detail::PositionTarget {
    using Interp = CInterpreter<TEx, float, 3, SUseDefaultValues<Component, TKey>>;
    using Key = Interp;
    using Lerp = Interp;
    using Delta = Interp;
    using BaseLerp = Interp;
};
template <class TEx, int Component, class TKey>
struct CSceneNodeScaleComponentMixin : detail::FloatVectorOps<3>, detail::ScaleTarget {
    using Interp = CInterpreter<TEx, float, 3, SUseDefaultValues<Component, TKey>>;
    using Key = Interp;
    using Lerp = Interp;
    using Delta = Interp;
    using BaseLerp = Interp;
};
// ---- rotation --------------------------------------------------------------------------------------------------------------------
template <class TKey>
struct CSceneNodeQuaternionMixin : detail::QuaternionOps, detail::RotationTarget {
    using Interp = CInterpreter<CSceneNodeQuaternionMixin<TKey>, float, 4, SUseDefaultLerp<TKey>>;
    using QInterp = CInterpreterQuaternion<CSceneNodeQuaternionMixin<TKey>, TKey>;
    using Key = Interp;
    using Lerp = Interp;
    using Delta = QInterp;
    using BaseLerp = QInterp;
};
template <class TKey>
struct CSceneNodeQuaternionAngleMixin : detail::QuaternionOps, detail::RotationTarget {
    using Interp = CInterpreterQuaternionAngle<CSceneNodeQuaternionAngleMixin<TKey>, TKey>;
    using Key = Interp;
    using Lerp = Interp;
    using Delta = Interp;
    using BaseLerp = Interp;
};

// ---- light colour ----------------------------------------------------------------------------------------------------------------
template <class TKey>
struct CLightColorMixin;
template <>
struct CLightColorMixin<unsigned char> : detail::ByteVectorOps<3> {
    using Interp = CInterpreter<CMixin<unsigned char, 3, SLightColor, -1, unsigned char>, unsigned char, 3, SUseDefaultLerp<unsigned char>>;
    using Key = Interp;
    using Lerp = Interp;
    using Delta = Interp;
    using BaseLerp = Interp;
    // The source is the video::CLight: its diffuse colour (+0x14 .. +0x1c) * 255, truncated.
    static void retrieve(const void* source, void* out);
    static int apply(const void* value, void* target, CApplicatorInfo* info) {
        CApplicator<SLightColor>::applyValueEx(target, const_cast<void*>(value), info);
        return 0;
    }
};

// ---- material parameters (CMixin<Key, N, SMaterialSetParam<SAnimationTypes<A, B>>, Component, Key>) ----------------------------
namespace detail {
template <class TKey, int N>
struct MaterialValueType;
template <>
struct MaterialValueType<float, 1> {
    using Type = float;
};
template <>
struct MaterialValueType<float, 2> {
    using Type = core::vector2d<float>;
};
template <>
struct MaterialValueType<float, 3> {
    using Type = core::vector3d<float>;
};
template <>
struct MaterialValueType<float, 4> {
    using Type = core::vector4d<float>;
};
template <int N>
struct MaterialValueType<unsigned char, N> {
    using Type = video::SColor;
};
}  // namespace detail

template <class TKey, int N, class TIn, class TOut, int Component, class TElement>
struct CMixin<TKey, N, SMaterialSetParam<SAnimationTypes<TIn, TOut>>, Component, TElement>
    : std::conditional_t<std::is_same_v<TKey, float>, detail::FloatVectorOps<N>, detail::ByteVectorOps<N>> {
    using Policy = std::conditional_t<(Component < 0), SUseDefaultLerp<TKey>, SUseDefaultValues<Component, TKey>>;
    using Interp = CInterpreter<CMixin<TKey, N, SMaterialSetParam<SAnimationTypes<TIn, TOut>>, Component, TElement>, TKey, N, Policy>;
    using Key = Interp;
    using Lerp = Interp;
    using Delta = Interp;
    using BaseLerp = Interp;
    // The material tracks have nothing to read back (retrieveValue is empty).
    static void retrieve(const void*, void*) {}
    // PARTIAL: the target is a CMaterial used as IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>>; the colour tracks
    // convert the bytes to an SColor (alpha 255 for the three byte form).
    static int apply(const void* value, void* target, CApplicatorInfo* info) {
        using ParameterType = typename detail::MaterialValueType<TKey, N>::Type;
        const std::uint16_t parameterId = info != nullptr ? info->parameterId : 0;
        if constexpr (std::is_same_v<TKey, float>) {
            ParameterType parameter;
            std::memcpy(&parameter, value, sizeof(parameter));
            return detail::setMaterialParameterCvt<ParameterType>(target, parameterId, 0, &parameter);
        } else {
            std::uint8_t bytes[4] = {0, 0, 0, 255};
            std::memcpy(bytes, value, N);
            ParameterType parameter;
            std::memcpy(&parameter, bytes, sizeof(parameter));
            return detail::setMaterialParameterCvt<ParameterType>(target, parameterId, 0, &parameter);
        }
    }
};
// The interpreter-side tags that are never a CApplyValueEx mixin.
template <>
struct CMixin<float, 3, SSceneNodePosition, -1, float> {};
template <>
struct CMixin<unsigned char, 3, SLightColor, -1, unsigned char> {};

// ---------------------------------------------------------------------------------------------------------------------------------
// CApplyValueEx<Value, Mixin>: the static helpers that compute a value and apply it to a target.
// ---------------------------------------------------------------------------------------------------------------------------------
template <class TValue, class TMixin>
struct CApplyValueEx {
    using Storage = typename TMixin::Storage;

    // (accessor, key, target, info)
    static int applyKeyBasedValueEx(const SAnimationAccessor& accessor, int key, void* target, CApplicatorInfo* info) {
        Storage value;
        TMixin::initial(value);
        TMixin::Key::getKeyBasedValueEx(accessor, key, value.bytes);
        return TMixin::apply(value.bytes, target, info);
    }
    // (accessor, key, nextKey, fraction, target, info)
    static int applyKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* target,
                                    CApplicatorInfo* info) {
        Storage value;
        TMixin::initial(value);
        TMixin::Lerp::getKeyBasedValueEx(accessor, key, nextKey, fraction, value.bytes);
        return TMixin::apply(value.bytes, target, info);
    }
    // (values, weights, count, target, info)
    static int applyBlendedValueEx(void* values, float* weights, int count, void* target, CApplicatorInfo* info) {
        Storage value;
        TMixin::initial(value);
        TMixin::blend(values, weights, count, value.bytes);
        return TMixin::apply(value.bytes, target, info);
    }
    static int applyAddedValueEx(void* values, float* weights, int count, void* target, CApplicatorInfo* info) {
        Storage value;
        TMixin::initial(value);
        TMixin::add(values, weights, count, value.bytes);
        return TMixin::apply(value.bytes, target, info);
    }
};

// ---------------------------------------------------------------------------------------------------------------------------------
// CVirtualEx<TApply>: the track class of one (value, mixin) pair.
// ---------------------------------------------------------------------------------------------------------------------------------
template <class TApply>
class CVirtualEx;

template <class TValue, class TMixin>
class CVirtualEx<CApplyValueEx<TValue, TMixin>> : public CAnimationTrackEx {
public:
    using Apply = CApplyValueEx<TValue, TMixin>;

    // vptr+0x00 / +0x04: empty.
    ~CVirtualEx() override {}

    // The one object of the instantiation (function-local static, vptr only).
    static CVirtualEx* getInstance() {
        static CVirtualEx s_Instance;
        return &s_Instance;
    }

    std::uint32_t getValueSize() const override { return TMixin::kValueSize; }                              // +0x08
    void getIdentityValue(void* out) const override { TMixin::identity(out); }                               // +0x0c
    int getBlendedValue(void* values, float* weights, int count, void* out) const override {               // +0x10
        TMixin::blend(values, weights, count, out);
        return 0;
    }
    int getAddedValue(void* values, float* weights, int count, void* out) const override {                 // +0x14
        TMixin::add(values, weights, count, out);
        return 0;
    }
    int applyBlendedValue(void* values, float* weights, int count, void* target, CApplicatorInfo* info) const override {  // +0x18
        return Apply::applyBlendedValueEx(values, weights, count, target, info);
    }
    int applyAddedValue(void* values, float* weights, int count, void* target, CApplicatorInfo* info) const override {  // +0x1c
        return Apply::applyAddedValueEx(values, weights, count, target, info);
    }
    // +0x20: (accessor, key, nextKey, fraction, out)
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const override {
        TMixin::Lerp::getKeyBasedValueEx(accessor, key, nextKey, fraction, out);
        return 0;
    }
    // +0x24: (accessor, key, nextKey, lastKey, fraction, out)
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out) const override {
        TMixin::BaseLerp::getKeyBasedValueEx(accessor, key, nextKey, lastKey, fraction, out);
        return 0;
    }
    // +0x28: (accessor, key, out)
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const override {
        TMixin::Key::getKeyBasedValueEx(accessor, key, out);
        return 0;
    }
    // +0x2c: (accessor, key, nextKey, out)
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* out) const override {
        TMixin::Delta::getKeyBasedValueEx(accessor, key, nextKey, out);
        return 0;
    }
    // +0x40: (accessor, key, nextKey, fraction, target, info)
    int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* target,
                           CApplicatorInfo* info) const override {
        return Apply::applyKeyBasedValueEx(accessor, key, nextKey, fraction, target, info);
    }
    // +0x48: (accessor, key, target, info)
    int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, void* target, CApplicatorInfo* info) const override {
        return Apply::applyKeyBasedValueEx(accessor, key, target, info);
    }
    // +0x70
    int applyValue(void* value, void* target, CApplicatorInfo* info) const override { return TMixin::apply(value, target, info); }
    // +0x8c
    void retrieveValue(void* source, void* out) const override { TMixin::retrieve(source, out); }

    using CAnimationTrackEx::applyValue;
    using IAnimationTrackEx::applyAddedValue;
    using IAnimationTrackEx::applyBlendedValue;
    using IAnimationTrackEx::applyKeyBasedValue;
    using IAnimationTrackEx::getAddedValue;
    using IAnimationTrackEx::getBlendedValue;
    using IAnimationTrackEx::getKeyBasedValue;
};

}  // namespace glitch::collada::animation_track
