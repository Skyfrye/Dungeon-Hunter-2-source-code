// Bodies of glitch::collada::SAnimationAccessor (canonical class: collada/SAnimationAccessor.hpp). This file replaces
//   src/tb_scene-collada-gui-glitch_collada_SAnimationAccessor-0.cpp (the getters and findKeyFrameNoEx<int,1000>, written against a
//   guest-memory seam),
//   src/e2-glitch-scene-collada-gui-glitch_collada_SAnimationAccessor-a4d950-0.cpp (the key search, same seam), and
//   the recon_23 / recon_32 / recon_33 free-function stubs of the cache-aware dispatchers and the get / apply entry points.
// The control flow of the key search follows the Hex-Rays pseudocode, including the goto structure of the hinted searches
// (labels keep the Hex-Rays names in comments); the 8-bit and 16-bit key forms compare against time / 33.333 and check equality
// against key * 33.333 (double literals in the original); the 32-bit form compares the time directly.
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include "glitch-scene-collada-gui/collada/SAnimationAccessor.hpp"

#include <cstddef>
#include <type_traits>

#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"

namespace glitch::collada {

namespace {

constexpr double kKeyTickMs = 33.333;  // scale of the 8-bit and 16-bit key forms (double literal)

template <typename T>
T keyAt(const glitch::res::vector<int>& keys, int index) {
    return reinterpret_cast<const T*>(keys.data)[index];
}

// (float)key, the value compared against the threshold.
template <typename T>
float keyCompare(const glitch::res::vector<int>& keys, int index) {
    return static_cast<float>(keyAt<T>(keys, index));
}

// The equality value: (float)key for int, (float)((float)key * 33.333) for the 8-bit and 16-bit forms.
template <typename T>
float keyEquality(const glitch::res::vector<int>& keys, int index) {
    if constexpr (std::is_same_v<T, int>) {
        return keyCompare<T>(keys, index);
    } else {
        return static_cast<float>(static_cast<double>(keyCompare<T>(keys, index)) * kKeyTickMs);
    }
}

// Threshold for the comparisons: (float)time for int, (float)((float)time / 33.333) for the 8-bit and 16-bit forms.
template <typename T>
float compareThreshold(int time) {
    if constexpr (std::is_same_v<T, int>) {
        return static_cast<float>(time);
    } else {
        return static_cast<float>(static_cast<double>(static_cast<float>(time)) / kKeyTickMs);
    }
}

// The time as the equality float, for every width.
float equalityTime(int time) {
    return static_cast<float>(time);
}

// (int)(float) of the key on the millisecond scale. Used by the fraction.
template <typename T>
int keyMilliseconds(const glitch::res::vector<int>& keys, int index) {
    return static_cast<int>(keyEquality<T>(keys, index));
}

// Fraction of time between key index and index + 1. Called only after a key was found, so index + 1 is a valid element (the
// search returns false at the last key).
template <typename T>
float keyFraction(const glitch::res::vector<int>& keys, int time, int index) {
    const int start = keyMilliseconds<T>(keys, index);
    const int end = keyMilliseconds<T>(keys, index + 1);
    return static_cast<float>(time - start) / static_cast<float>(end - start);
}

// The original stores the fraction as bits after clamping: below 0 gives 0, at or above 1 gives 1, and NaN gives 0 (the
// comparison fails).
float clampUnit(float value) {
    if (value >= 0.0f) {
        return value >= 1.0f ? 1.0f : value;
    }
    return 0.0f;
}

template <typename T>
void storeFraction(const glitch::res::vector<int>& keys, int time, int index, float& fraction) {
    fraction = clampUnit(keyFraction<T>(keys, time, index));
}

// Binary search with no hint (uchar 0x66a6d0, ushort 0x66abb8). The result index is always written.
template <typename T>
bool searchKeyFrame(const glitch::res::vector<int>& keys, int time, int& outIndex) {
    const int last = keys.count - 1;
    const float threshold = compareThreshold<T>(time);
    int high = last;
    if (high > 0) {
        int low = 1;
        do {
            const int mid = (low + high) >> 1;
            if (keyCompare<T>(keys, mid) <= threshold) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        } while (low <= high);
    }
    outIndex = high;
    return equalityTime(time) != keyEquality<T>(keys, high) && high != last;
}

// 0x66a368 (int, hint). The binary search over the whole key vector runs inline here (label9), unlike the 8-bit and 16-bit
// forms, which fall back to searchKeyFrame.
bool searchKeyFrameIntHint(const glitch::res::vector<int>& keys, int time, int& outIndex, int hint) {
    const int last = keys.count - 1;
    const float timeF = static_cast<float>(time);
    int high = last;
    int v9 = hint < 0 ? 0 : hint;  // a5 & ~(a5 >> 31)
    if (v9 >= last) {
        v9 = last;
    }
    bool v11 = keyCompare<int>(keys, v9) > timeF;
    int v12 = 0;
    int v14 = 0;
    float v19 = 0.0f;

    if (v11 && v9 > 0) {
        v12 = v9 - 1;
        goto label7;
    }
    if (high <= v9) {
        v14 = v9;
        goto label25;
    }
    v14 = v9 + 1;
    v19 = keyCompare<int>(keys, v14);
    if (v19 >= timeF) {
        v14 = v9;
        goto label9;
    }
    if (high <= v14) {
        goto label25;
    }
    v12 = v9 + 2;
    if (keyCompare<int>(keys, v14 + 1) >= timeF) {
        v11 = timeF < v19;
        goto label9;
    }
label7:
    if (v12 >= high) {
        goto label27;
    }
    v11 = timeF < keyCompare<int>(keys, v12);
    v14 = v12;
label9:
    if (v11 || keyCompare<int>(keys, v14 + 1) < timeF) {
        if (high > 0) {
            int low = 1;
            do {
                const int mid = (low + high) >> 1;
                if (timeF >= keyCompare<int>(keys, mid)) {
                    low = mid + 1;
                } else {
                    high = mid - 1;
                }
            } while (low <= high);
        }
        outIndex = high;
        return timeF != keyCompare<int>(keys, high) && last != high;
    }
label25:
    v12 = v14;  // LABEL_25 and LABEL_26
label27:
    outIndex = v12;
    return timeF != keyCompare<int>(keys, v12) && last != v12;
}

// 0x66a894 (uchar, hint) and 0x66b130 (ushort, hint). The two are the same control flow over a 1-byte or 2-byte key. The result
// index (v11) and the equality index (v12) differ only on the fall-through to the no-hint search (label9), which the original
// reaches through findKeyFrameNo.
template <typename T>
bool searchKeyFrameNarrowHint(const glitch::res::vector<int>& keys, int time, int& outIndex, int hint) {
    const int last = keys.count - 1;
    const float threshold = compareThreshold<T>(time);
    int v8 = hint < 0 ? 0 : hint;
    if (v8 >= last) {
        v8 = last;
    }
    bool v10 = keyCompare<T>(keys, v8) > threshold;
    int v11 = 0;
    int v12 = 0;
    int v13 = 0;
    float v16 = 0.0f;

    if (v10 && v8 > 0) {
        v11 = v8 - 1;
        goto label7;
    }
    if (last <= v8) {
        v13 = v8;
        goto label13;
    }
    v13 = v8 + 1;
    v16 = keyCompare<T>(keys, v13);
    v12 = v8 + 1;
    if (v16 >= threshold) {
        v12 = v8;
        v13 = v8;
        goto label9;
    }
    if (last <= v13) {
        goto label13;
    }
    v11 = v8 + 2;
    if (keyCompare<T>(keys, v13 + 1) >= threshold) {
        v10 = threshold < v16;
        goto label9;
    }
label7:
    if (v11 >= last) {
        v12 = v11;
        goto label14;
    }
    v12 = v11;
    v10 = threshold < keyCompare<T>(keys, v11);
    v13 = v11;
label9:
    if (v10 || keyCompare<T>(keys, v13 + 1) < threshold) {
        return searchKeyFrame<T>(keys, time, outIndex);
    }
    v11 = v13;
    goto label14;
label13:
    v12 = v13;
    v11 = v13;
label14:
    outIndex = v11;
    return equalityTime(time) != keyEquality<T>(keys, v12) && v11 != last;
}

// Common body of the four cache-aware dispatchers (0x66af74, 0x66b374, 0x66ad8c, 0x66b65c). `search(type, index, fraction)` runs
// the key search for the time type (1: 8-bit, 3: 16-bit, 4: 32-bit), writing the index and, when `fraction` is non-null, the
// fraction. With the cache disabled the search writes the caller's outputs and an unknown type gives false; with the cache
// enabled the search is only run when the time differs from the cached one, its outputs are the cache fields, and the cached
// fraction, index and result are returned.
template <typename Search>
bool cachedKeySearch(const SAnimationAccessor& accessor, int time, int& outIndex, float* fraction, Search search) {
    SAnimationKeyCache* cache = accessor.cache;
    if (!cache->enabled) {
        const int type = accessor.getTimeInternalType(0);
        if (type == 3 || type == 4 || type == 1) {
            return search(type, outIndex, fraction);
        }
        return false;
    }
    if (cache->keyId != time) {
        cache->keyId = time;
        const int type = accessor.getTimeInternalType(0);
        if (type == 3 || type == 4 || type == 1) {
            cache->found = search(type, cache->index, fraction ? &cache->fraction : nullptr) ? 1 : 0;
        }
    }
    if (fraction) {
        *fraction = cache->fraction;
    }
    outIndex = cache->index;
    return cache->found != 0;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// Getters over the SAnimation (0x669e00 .. 0x66a004)
// ---------------------------------------------------------------------------------------------------------------------

// 0x669e00 _ZNK6glitch7collada18SAnimationAccessor9getTargetEv
// The name of channel 0.
const char* SAnimationAccessor::getTarget() const {
    return animation->channels[0].name;
}

// 0x669e10 _ZNK6glitch7collada18SAnimationAccessor7getTypeEi
std::uint32_t SAnimationAccessor::getType(int index) const {
    return animation->channels[index].type;
}

// 0x669e24 _ZNK6glitch7collada18SAnimationAccessor9getOutputEi
// The output record of keyframe `index`: element outputIndex of the output array.
const SAnimationOutput* SAnimationAccessor::getOutput(int index) const {
    return outputs + animation->keyframes[index].outputIndex;
}

// 0x669e44 _ZNK6glitch7collada18SAnimationAccessor10getChannelEi
const SChannel* SAnimationAccessor::getChannel(int index) const {
    return animation->channels + index;
}

// 0x669e54 _ZNK6glitch7collada18SAnimationAccessor15hasDefaultValueEv
bool SAnimationAccessor::hasDefaultValue() const {
    return animation->defaultValue != nullptr;
}

// 0x669e68 _ZNK6glitch7collada18SAnimationAccessor15getDefaultValueEv
const void* SAnimationAccessor::getDefaultValue() const {
    return animation->defaultValue->value;
}

// 0x669e78 _ZNK6glitch7collada18SAnimationAccessor16getChannelsCountEv
int SAnimationAccessor::getChannelsCount() const {
    return animation->channelCount;
}

// 0x669e84 _ZNK6glitch7collada18SAnimationAccessor19getTimeInternalTypeEi
int SAnimationAccessor::getTimeInternalType(int index) const {
    return static_cast<int>(animation->keyframes[index].timeType);
}

// 0x669e9c _ZNK6glitch7collada18SAnimationAccessor20getInterpolationTypeEi
int SAnimationAccessor::getInterpolationType(int index) const {
    return static_cast<int>(animation->keyframes[index].interpolationType);
}

// 0x669eb4 _ZNK6glitch7collada18SAnimationAccessor10getOffsetsEv
const float* SAnimationAccessor::getOffsets() const {
    return animation->offsetScale->offsets;
}

// 0x669ec4 _ZNK6glitch7collada18SAnimationAccessor9getScalesEv
const float* SAnimationAccessor::getScales() const {
    return animation->offsetScale->scales;
}

// 0x669ed4 _ZNK6glitch7collada18SAnimationAccessor18getOffsetScaleTypeEv
// The type of the offset / scale record, or 2 when the animation has none.
int SAnimationAccessor::getOffsetScaleType() const {
    return animation->offsetScale ? animation->offsetScale->type : 2;
}

// 0x669eec _ZNK6glitch7collada18SAnimationAccessor10getKeyTimeEi
// The key-time record of keyframe `index` (an output record, viewed as the res::vector<int> of the key search).
const glitch::res::vector<int>& SAnimationAccessor::getKeyTime(int index) const {
    return *reinterpret_cast<const glitch::res::vector<int>*>(outputs + animation->keyframes[index].keyTimeIndex);
}

// 0x669f0c _ZNK6glitch7collada18SAnimationAccessor10getKeyTimeEii
// The time of one key in milliseconds: the time type of keyframe 0 selects the width. Type 3 reads a 16-bit key and type 1 an
// 8-bit key, both scaled by 33.333332. Type 4 reads a 32-bit key unscaled. Other types return 0.
int SAnimationAccessor::getKeyTime(int index, int key) const {
    const int timeInternalType = getTimeInternalType(0);
    const glitch::res::vector<int>& keys = getKeyTime(index);
    if (timeInternalType == 3) {
        const int value = static_cast<int>(keyAt<std::uint16_t>(keys, key));
        return static_cast<int>(static_cast<double>(value) * 33.333332);
    }
    if (timeInternalType != 4) {
        if (timeInternalType != 1) {
            return 0;
        }
        const int value = static_cast<int>(keyAt<std::uint8_t>(keys, key));
        return static_cast<int>(static_cast<double>(value) * 33.333332);
    }
    return keyAt<int>(keys, key);
}

// 0x669fac _ZNK6glitch7collada18SAnimationAccessor8getStartEi
int SAnimationAccessor::getStart(int index) const {
    return getKeyTime(index, 0);
}

// 0x669fb4 _ZNK6glitch7collada18SAnimationAccessor6getEndEi
// The last key: the count of the key-time record minus one.
int SAnimationAccessor::getEnd(int index) const {
    return getKeyTime(index, getKeyTime(index).count - 1);
}

// 0x669fdc _ZNK6glitch7collada18SAnimationAccessor9getLengthEi
int SAnimationAccessor::getLength(int index) const {
    const int end = getEnd(index);
    return end - getStart(index);
}

// 0x66a004 _ZNK6glitch7collada18SAnimationAccessor11getAnimatorEv
// The animation track. Every track class derives from CAnimationTrackEx (their vtables carry its slots up to +0x8c).
const CAnimationTrackEx* SAnimationAccessor::getAnimator() const {
    return static_cast<const CAnimationTrackEx*>(animation->trackEx);
}

// ---------------------------------------------------------------------------------------------------------------------
// The get / apply entry points (0x66a068 .. 0x66a1a8): each calls a virtual slot of the track.
// ---------------------------------------------------------------------------------------------------------------------

// 0x66a010 _ZNK6glitch7collada18SAnimationAccessor10applyValueEiiPvPNS0_15animation_track15CApplicatorInfoERib
// Track slot +0x80, with the applicator.
int SAnimationAccessor::applyValue(int firstTime, int secondTime, void* target, animation_track::CApplicatorInfo* info, int& keyIndex,
                                   bool interpolate) const {
    return getAnimator()->applyValue(*this, firstTime, secondTime, target, info, keyIndex, interpolate);
}

// 0x66a068 _ZNK6glitch7collada18SAnimationAccessor10applyValueEiiPvRib
// Track slot +0x80, with a null applicator.
int SAnimationAccessor::applyValue(int firstTime, int secondTime, void* target, int& keyIndex, bool interpolate) const {
    return getAnimator()->applyValue(*this, firstTime, secondTime, target, nullptr, keyIndex, interpolate);
}

// 0x66a0c0 _ZNK6glitch7collada18SAnimationAccessor10applyValueEiPvPNS0_15animation_track15CApplicatorInfoERib
// Track slot +0x6c.
int SAnimationAccessor::applyValue(int time, void* target, animation_track::CApplicatorInfo* info, int& keyIndex,
                                   bool interpolate) const {
    return getAnimator()->applyValue(*this, time, target, info, keyIndex, interpolate);
}

// 0x66a10c _ZNK6glitch7collada18SAnimationAccessor10applyValueEiPvRib
// Track slot +0x6c, with a null applicator.
int SAnimationAccessor::applyValue(int time, void* target, int& keyIndex, bool interpolate) const {
    return getAnimator()->applyValue(*this, time, target, nullptr, keyIndex, interpolate);
}

// 0x66a15c _ZNK6glitch7collada18SAnimationAccessor8getValueEiiPvRib
// Track slot +0x74.
int SAnimationAccessor::getValue(int firstTime, int secondTime, void* out, int& keyIndex, bool interpolate) const {
    return getAnimator()->getValue(*this, firstTime, secondTime, out, keyIndex, interpolate);
}

// 0x66a1a8 _ZNK6glitch7collada18SAnimationAccessor8getValueEiPvRib
// Track slot +0x68.
int SAnimationAccessor::getValue(int time, void* out, int& keyIndex, bool interpolate) const {
    return getAnimator()->getValue(*this, time, out, keyIndex, interpolate);
}

// ---------------------------------------------------------------------------------------------------------------------
// Key search
// ---------------------------------------------------------------------------------------------------------------------

// 0x66a6d0 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoIhLi30EEEbRKNS_3res6vectorIiEEiRi
template <>
bool SAnimationAccessor::findKeyFrameNo<std::uint8_t, 30>(const glitch::res::vector<int>& keys, int time,
                                                          int& outIndex) const {
    return searchKeyFrame<std::uint8_t>(keys, time, outIndex);
}

// 0x66abb8 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoItLi30EEEbRKNS_3res6vectorIiEEiRi
template <>
bool SAnimationAccessor::findKeyFrameNo<std::uint16_t, 30>(const glitch::res::vector<int>& keys, int time,
                                                           int& outIndex) const {
    return searchKeyFrame<std::uint16_t>(keys, time, outIndex);
}

// 0x66a368 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoIiLi1000EEEbRKNS_3res6vectorIiEEiRii
template <>
bool SAnimationAccessor::findKeyFrameNo<int, 1000>(const glitch::res::vector<int>& keys, int time, int& outIndex,
                                                   int hint) const {
    return searchKeyFrameIntHint(keys, time, outIndex, hint);
}

// 0x66a894 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoIhLi30EEEbRKNS_3res6vectorIiEEiRii
template <>
bool SAnimationAccessor::findKeyFrameNo<std::uint8_t, 30>(const glitch::res::vector<int>& keys, int time,
                                                          int& outIndex, int hint) const {
    return searchKeyFrameNarrowHint<std::uint8_t>(keys, time, outIndex, hint);
}

// 0x66b130 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoItLi30EEEbRKNS_3res6vectorIiEEiRii
template <>
bool SAnimationAccessor::findKeyFrameNo<std::uint16_t, 30>(const glitch::res::vector<int>& keys, int time,
                                                           int& outIndex, int hint) const {
    return searchKeyFrameNarrowHint<std::uint16_t>(keys, time, outIndex, hint);
}

// 0x66a1f0 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIiLi1000EEEbiRKNS_3res6vectorIiEEiRi
// Binary search over the key vector for the time (compared as float). The index is written to outIndex. The result is true when
// the interpolation type is non-zero and the time is strictly inside the vector.
template <>
bool SAnimationAccessor::findKeyFrameNoEx<int, 1000>(int index, const glitch::res::vector<int>& keys, int time,
                                                     int& outIndex) const {
    const float timeValue = static_cast<float>(time);
    const int count = keys.count;
    int high = count - 1;
    if (high > 0) {
        int low = 1;
        do {
            const int mid = (low + high) >> 1;
            if (timeValue >= static_cast<float>(keys.data[mid])) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        } while (low <= high);
    }
    outIndex = high;
    const bool notAtEdge = timeValue != static_cast<float>(keys.data[high]) && high != count - 1;
    return getInterpolationType(index) != 0 && notAtEdge;
}

// 0x66a788 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIhLi30EEEbiRKNS_3res6vectorIiEEiRi
// No-hint search, then getInterpolationType. The result is the AND of the two.
template <>
bool SAnimationAccessor::findKeyFrameNoEx<std::uint8_t, 30>(int index, const glitch::res::vector<int>& keys, int time,
                                                            int& outIndex) const {
    const bool keyFrame = findKeyFrameNo<std::uint8_t, 30>(keys, time, outIndex);
    return getInterpolationType(index) != 0 && keyFrame;
}

// 0x66ac78 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExItLi30EEEbiRKNS_3res6vectorIiEEiRi
template <>
bool SAnimationAccessor::findKeyFrameNoEx<std::uint16_t, 30>(int index, const glitch::res::vector<int>& keys, int time,
                                                             int& outIndex) const {
    const bool keyFrame = findKeyFrameNo<std::uint16_t, 30>(keys, time, outIndex);
    return getInterpolationType(index) != 0 && keyFrame;
}

// 0x66a594 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIiLi1000EEEbiRKNS_3res6vectorIiEEiRii
template <>
bool SAnimationAccessor::findKeyFrameNoEx<int, 1000>(int index, const glitch::res::vector<int>& keys, int time,
                                                     int& outIndex, int hint) const {
    const bool keyFrame = findKeyFrameNo<int, 1000>(keys, time, outIndex, hint);
    return getInterpolationType(index) != 0 && keyFrame;
}

// 0x66aa68 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIhLi30EEEbiRKNS_3res6vectorIiEEiRii
template <>
bool SAnimationAccessor::findKeyFrameNoEx<std::uint8_t, 30>(int index, const glitch::res::vector<int>& keys, int time,
                                                            int& outIndex, int hint) const {
    const bool keyFrame = findKeyFrameNo<std::uint8_t, 30>(keys, time, outIndex, hint);
    return getInterpolationType(index) != 0 && keyFrame;
}

// 0x66b328 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExItLi30EEEbiRKNS_3res6vectorIiEEiRii
template <>
bool SAnimationAccessor::findKeyFrameNoEx<std::uint16_t, 30>(int index, const glitch::res::vector<int>& keys, int time,
                                                             int& outIndex, int hint) const {
    const bool keyFrame = findKeyFrameNo<std::uint16_t, 30>(keys, time, outIndex, hint);
    return getInterpolationType(index) != 0 && keyFrame;
}

// 0x66a2ac _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIiLi1000EEEbiRKNS_3res6vectorIiEEiRiRf
// The fraction is clamped to [0,1] and only written when a key was found.
template <>
bool SAnimationAccessor::findKeyFrameNoEx<int, 1000>(int index, const glitch::res::vector<int>& keys, int time,
                                                     int& outIndex, float& fraction) const {
    const bool keyFrame = findKeyFrameNoEx<int, 1000>(index, keys, time, outIndex);
    if (keyFrame) {
        storeFraction<int>(keys, time, outIndex, fraction);
    }
    return keyFrame;
}

// 0x66a7c4 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIhLi30EEEbiRKNS_3res6vectorIiEEiRiRf
template <>
bool SAnimationAccessor::findKeyFrameNoEx<std::uint8_t, 30>(int index, const glitch::res::vector<int>& keys, int time,
                                                            int& outIndex, float& fraction) const {
    const bool keyFrame = findKeyFrameNoEx<std::uint8_t, 30>(index, keys, time, outIndex);
    if (keyFrame) {
        storeFraction<std::uint8_t>(keys, time, outIndex, fraction);
    }
    return keyFrame;
}

// 0x66acb4 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExItLi30EEEbiRKNS_3res6vectorIiEEiRiRf
template <>
bool SAnimationAccessor::findKeyFrameNoEx<std::uint16_t, 30>(int index, const glitch::res::vector<int>& keys, int time,
                                                             int& outIndex, float& fraction) const {
    const bool keyFrame = findKeyFrameNoEx<std::uint16_t, 30>(index, keys, time, outIndex);
    if (keyFrame) {
        storeFraction<std::uint16_t>(keys, time, outIndex, fraction);
    }
    return keyFrame;
}

// 0x66a5e0 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIiLi1000EEEbiRKNS_3res6vectorIiEEiRiRfi
// Hinted search, then the interpolation-type gate, then the clamped fraction.
template <>
bool SAnimationAccessor::findKeyFrameNoEx<int, 1000>(int index, const glitch::res::vector<int>& keys, int time,
                                                     int& outIndex, float& fraction, int hint) const {
    const bool keyFrame = findKeyFrameNo<int, 1000>(keys, time, outIndex, hint);
    const bool found = getInterpolationType(index) != 0 && keyFrame;
    if (found) {
        storeFraction<int>(keys, time, outIndex, fraction);
    }
    return found;
}

// 0x66aab4 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExIhLi30EEEbiRKNS_3res6vectorIiEEiRiRfi
template <>
bool SAnimationAccessor::findKeyFrameNoEx<std::uint8_t, 30>(int index, const glitch::res::vector<int>& keys, int time,
                                                            int& outIndex, float& fraction, int hint) const {
    const bool keyFrame = findKeyFrameNo<std::uint8_t, 30>(keys, time, outIndex, hint);
    const bool found = getInterpolationType(index) != 0 && keyFrame;
    if (found) {
        storeFraction<std::uint8_t>(keys, time, outIndex, fraction);
    }
    return found;
}

// 0x66b550 _ZNK6glitch7collada18SAnimationAccessor16findKeyFrameNoExItLi30EEEbiRKNS_3res6vectorIiEEiRiRfi
template <>
bool SAnimationAccessor::findKeyFrameNoEx<std::uint16_t, 30>(int index, const glitch::res::vector<int>& keys, int time,
                                                             int& outIndex, float& fraction, int hint) const {
    const bool keyFrame = findKeyFrameNo<std::uint16_t, 30>(keys, time, outIndex, hint);
    const bool found = getInterpolationType(index) != 0 && keyFrame;
    if (found) {
        storeFraction<std::uint16_t>(keys, time, outIndex, fraction);
    }
    return found;
}

// 0x66af74 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiRKNS_3res6vectorIiEEiRi
bool SAnimationAccessor::findKeyFrameNo(int index, const glitch::res::vector<int>& keys, int time, int& outIndex) const {
    return cachedKeySearch(*this, time, outIndex, nullptr, [&](int type, int& result, float*) {
        switch (type) {
            case 3: return findKeyFrameNoEx<std::uint16_t, 30>(index, keys, time, result);
            case 4: return findKeyFrameNoEx<int, 1000>(index, keys, time, result);
            default: return findKeyFrameNoEx<std::uint8_t, 30>(index, keys, time, result);
        }
    });
}

// 0x66b374 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiRKNS_3res6vectorIiEEiRii
bool SAnimationAccessor::findKeyFrameNo(int index, const glitch::res::vector<int>& keys, int time, int& outIndex,
                                        int hint) const {
    return cachedKeySearch(*this, time, outIndex, nullptr, [&](int type, int& result, float*) {
        switch (type) {
            case 3: return findKeyFrameNoEx<std::uint16_t, 30>(index, keys, time, result, hint);
            case 4: return findKeyFrameNoEx<int, 1000>(index, keys, time, result, hint);
            default: return findKeyFrameNoEx<std::uint8_t, 30>(index, keys, time, result, hint);
        }
    });
}

// 0x66ad8c _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiRKNS_3res6vectorIiEEiRiRf
bool SAnimationAccessor::findKeyFrameNo(int index, const glitch::res::vector<int>& keys, int time, int& outIndex,
                                        float& fraction) const {
    return cachedKeySearch(*this, time, outIndex, &fraction, [&](int type, int& result, float* frac) {
        switch (type) {
            case 3: return findKeyFrameNoEx<std::uint16_t, 30>(index, keys, time, result, *frac);
            case 4: return findKeyFrameNoEx<int, 1000>(index, keys, time, result, *frac);
            default: return findKeyFrameNoEx<std::uint8_t, 30>(index, keys, time, result, *frac);
        }
    });
}

// 0x66b65c _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiRKNS_3res6vectorIiEEiRiRfi
// Dispatch on the time-internal type of keyframe 0, through the key-search cache at +0x08.
bool SAnimationAccessor::findKeyFrameNo(int index, const glitch::res::vector<int>& keys, int time, int& outIndex,
                                        float& fraction, int hint) const {
    return cachedKeySearch(*this, time, outIndex, &fraction, [&](int type, int& result, float* frac) {
        switch (type) {
            case 3: return findKeyFrameNoEx<std::uint16_t, 30>(index, keys, time, result, *frac, hint);
            case 4: return findKeyFrameNoEx<int, 1000>(index, keys, time, result, *frac, hint);
            default: return findKeyFrameNoEx<std::uint8_t, 30>(index, keys, time, result, *frac, hint);
        }
    });
}

// 0x66b0f4 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiiRi
bool SAnimationAccessor::findKeyFrameNo(int index, int time, int& outIndex) const {
    return findKeyFrameNo(index, getKeyTime(index), time, outIndex);
}

// 0x66b510 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiiRii
bool SAnimationAccessor::findKeyFrameNo(int index, int time, int& outIndex, int hint) const {
    return findKeyFrameNo(index, getKeyTime(index), time, outIndex, hint);
}

// 0x66af34 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiiRiRf
bool SAnimationAccessor::findKeyFrameNo(int index, int time, int& outIndex, float& fraction) const {
    return findKeyFrameNo(index, getKeyTime(index), time, outIndex, fraction);
}

// 0x66b814 _ZNK6glitch7collada18SAnimationAccessor14findKeyFrameNoEiiRiRfi
bool SAnimationAccessor::findKeyFrameNo(int index, int time, int& outIndex, float& fraction, int hint) const {
    return findKeyFrameNo(index, getKeyTime(index), time, outIndex, fraction, hint);
}

}  // namespace glitch::collada
