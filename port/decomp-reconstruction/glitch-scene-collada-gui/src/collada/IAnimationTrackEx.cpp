// Bodies of glitch::collada::IAnimationTrackEx and CAnimationTrackEx (canonical classes: collada/IAnimationTrackEx.hpp). This file
// replaces src/tb_scene-collada-gui-glitch_collada_CAnimationTrackEx-0.cpp (getValue with the key index, whose two virtual calls
// were placeholders), the empty defaults of track_defaults.hpp (the IAnimationTrackEx_* templates) and the CAnimationTrackEx stubs
// of src/recon/slice_28.cpp.
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include <cstring>

#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"

#include "glitch-scene-collada-gui/layouts/animation_track.hpp"

namespace glitch::collada {

// ---------------------------------------------------------------------------------------------------------------------
// IAnimationTrackEx
// ---------------------------------------------------------------------------------------------------------------------

// 0x60def4 _ZN6glitch7collada17IAnimationTrackExD1Ev (empty; D0 0x60f4e4 is skipped)
IAnimationTrackEx::~IAnimationTrackEx() = default;

// 0x60def8 .. 0x60dfbc: the empty defaults.
int IAnimationTrackEx::applyBlendedValue(void*, float*, int, void*, animation_track::CApplicatorInfo*) const {  // 0x60def8
    return 0;
}
int IAnimationTrackEx::applyAddedValue(void*, float*, int, void*, animation_track::CApplicatorInfo*) const {  // 0x60defc
    return 0;
}
int IAnimationTrackEx::getBlendedValue(void*, float*, int, void*, float) const {  // 0x60df00
    return 0;
}
int IAnimationTrackEx::getAddedValue(void*, float*, int, void*, float) const {  // 0x60df04
    return 0;
}
int IAnimationTrackEx::getKeyBasedValue(const SAnimationAccessor&, int, int, float, void*, float) const {  // 0x60df08
    return 0;
}
int IAnimationTrackEx::getKeyBasedValue(const SAnimationAccessor&, int, void*, float) const {  // 0x60df0c
    return 0;
}
int IAnimationTrackEx::applyBlendedValue(void*, float*, int, void*, animation_track::CApplicatorInfo*, float) const {  // 0x60dfa8
    return 0;
}
int IAnimationTrackEx::applyAddedValue(void*, float*, int, void*, animation_track::CApplicatorInfo*, float) const {  // 0x60dfac
    return 0;
}
int IAnimationTrackEx::applyKeyBasedValue(const SAnimationAccessor&, int, int, float, void*,
                                          animation_track::CApplicatorInfo*, float) const {  // 0x60dfb0
    return 0;
}
int IAnimationTrackEx::applyKeyBasedValue(const SAnimationAccessor&, int, void*, animation_track::CApplicatorInfo*,
                                          float) const {  // 0x60dfb4
    return 0;
}
int IAnimationTrackEx::applyValue(const SAnimationAccessor&, int, void*, animation_track::CApplicatorInfo*, bool) const {  // 0x60dfb8
    return 0;
}
int IAnimationTrackEx::applyValue(const SAnimationAccessor&, int, void*, animation_track::CApplicatorInfo*, int&, bool) const {  // 0x60dfbc
    return 0;
}

// 0x60df10 _ZNK6glitch7collada17IAnimationTrackEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS0_15animation_track15CApplicatorInfoE
// A tail call to the getKeyBasedValue slot +0x20 with the same arguments (the applicator is not forwarded).
int IAnimationTrackEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* target,
                                          animation_track::CApplicatorInfo*) const {
    return getKeyBasedValue(accessor, key, nextKey, fraction, target);
}

// 0x60df3c _ZNK6glitch7collada17IAnimationTrackEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
// A tail call to the getKeyBasedValue slot +0x24.
int IAnimationTrackEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int track, int key, int nextKey, float fraction,
                                          void* target) const {
    return getKeyBasedValue(accessor, track, key, nextKey, fraction, target);
}

// 0x60df70 _ZNK6glitch7collada17IAnimationTrackEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoE
// A tail call to the getKeyBasedValue slot +0x28.
int IAnimationTrackEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int key, void* target,
                                          animation_track::CApplicatorInfo*) const {
    return getKeyBasedValue(accessor, key, target);
}

// 0x60df84 _ZNK6glitch7collada17IAnimationTrackEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
// A tail call to the getKeyBasedValue slot +0x2c.
int IAnimationTrackEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int track, int key, void* target) const {
    return getKeyBasedValue(accessor, track, key, target);
}

// ---------------------------------------------------------------------------------------------------------------------
// CAnimationTrackEx
// ---------------------------------------------------------------------------------------------------------------------

// 0x6e29b0 _ZN6glitch7collada17CAnimationTrackExD1Ev (empty; D0 0x6e2a04 is skipped)
CAnimationTrackEx::~CAnimationTrackEx() = default;

// 0x6e29d4 _ZNK6glitch7collada17CAnimationTrackEx13retrieveValueEPvS2_
// memcpy(out, source, getValueSize()): getValueSize is vtable slot +0x08.
void CAnimationTrackEx::retrieveValue(void* source, void* out) const {
    std::memcpy(out, source, getValueSize());
}

// The key search of every getValue / applyValue below is SAnimationAccessor::findKeyFrameNo on track 0: the 4-argument form
// (0x66af34, no hint) or the 5-argument form with the previous key as the hint (0x66b814). The caller's flag is ANDed with the
// result, and the virtual slot taken is the interpolating one when both are set.

// 0x6e307c _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiPvb
int CAnimationTrackEx::getValue(const SAnimationAccessor& accessor, int time, void* out, bool flag) const {
    int key = 0;
    float fraction = 0.0f;
    if (accessor.findKeyFrameNo(0, time, key, fraction) && flag) {
        return getKeyBasedValue(accessor, key, key + 1, fraction, out);  // vtable +0x20
    }
    return getKeyBasedValue(accessor, key, out);                          // vtable +0x28
}

// 0x6e2c40 _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiPvRib
// The key index is the search hint and is written back.
int CAnimationTrackEx::getValue(const SAnimationAccessor& accessor, int time, void* out, int& keyIndex, bool flag) const {
    const int hint = keyIndex;
    int key = 0;
    float fraction = 0.0f;
    int result;
    if (accessor.findKeyFrameNo(0, time, key, fraction, hint) && flag) {
        result = getKeyBasedValue(accessor, key, key + 1, fraction, out);  // vtable +0x20
    } else {
        result = getKeyBasedValue(accessor, key, out);                      // vtable +0x28
    }
    keyIndex = key;
    return result;
}

// 0x6e2fdc _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiPvfb
// With a weight: the weighted getKeyBasedValue slots +0x38 and +0x3c.
int CAnimationTrackEx::getValue(const SAnimationAccessor& accessor, int time, void* out, float weight, bool flag) const {
    int key = 0;
    float fraction = 0.0f;
    if (accessor.findKeyFrameNo(0, time, key, fraction) && flag) {
        return getKeyBasedValue(accessor, key, key + 1, fraction, out, weight);  // vtable +0x38
    }
    return getKeyBasedValue(accessor, key, out, weight);                          // vtable +0x3c
}

// 0x6e2b8c _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiPvRifb
int CAnimationTrackEx::getValue(const SAnimationAccessor& accessor, int time, void* out, int& keyIndex, float weight,
                                bool flag) const {
    const int hint = keyIndex;
    int key = 0;
    float fraction = 0.0f;
    int result;
    if (accessor.findKeyFrameNo(0, time, key, fraction, hint) && flag) {
        result = getKeyBasedValue(accessor, key, key + 1, fraction, out, weight);  // vtable +0x38
    } else {
        result = getKeyBasedValue(accessor, key, out, weight);                      // vtable +0x3c
    }
    keyIndex = key;
    return result;
}

// 0x6e2dbc _ZNK6glitch7collada17CAnimationTrackEx8getValueERKNS0_18SAnimationAccessorEiiPvRib
// Two searches: firstTime without a hint gives the track key, secondTime from the hint gives the key pair. The interpolating
// slot is +0x24, the plain slot +0x2c.
int CAnimationTrackEx::getValue(const SAnimationAccessor& accessor, int firstTime, int secondTime, void* out, int& keyIndex,
                                bool flag) const {
    const int hint = keyIndex;
    int key = 0;
    float fraction = 0.0f;
    const bool found = accessor.findKeyFrameNo(0, secondTime, key, fraction, hint);
    int trackKey = 0;
    accessor.findKeyFrameNo(0, firstTime, trackKey);
    int result;
    if (found && flag) {
        result = getKeyBasedValue(accessor, trackKey, key, key + 1, fraction, out);  // vtable +0x24
    } else {
        result = getKeyBasedValue(accessor, trackKey, key, out);                      // vtable +0x2c
    }
    keyIndex = key;
    return result;
}

// 0x6e2f3c _ZN6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoEb
// applyKeyBasedValue slots +0x40 (interpolating) and +0x48.
int CAnimationTrackEx::applyValue(const SAnimationAccessor& accessor, int time, void* target,
                                  animation_track::CApplicatorInfo* info, bool flag) const {
    int key = 0;
    float fraction = 0.0f;
    if (accessor.findKeyFrameNo(0, time, key, fraction) && flag) {
        return applyKeyBasedValue(accessor, key, key + 1, fraction, target, info);  // vtable +0x40
    }
    return applyKeyBasedValue(accessor, key, target, info);                          // vtable +0x48
}

// 0x6e2ad8 _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoERib
int CAnimationTrackEx::applyValue(const SAnimationAccessor& accessor, int time, void* target,
                                  animation_track::CApplicatorInfo* info, int& keyIndex, bool flag) const {
    const int hint = keyIndex;
    int key = 0;
    float fraction = 0.0f;
    int result;
    if (accessor.findKeyFrameNo(0, time, key, fraction, hint) && flag) {
        result = applyKeyBasedValue(accessor, key, key + 1, fraction, target, info);  // vtable +0x40
    } else {
        result = applyKeyBasedValue(accessor, key, target, info);                      // vtable +0x48
    }
    keyIndex = key;
    return result;
}

// 0x6e2ce8 _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiiPvPNS0_15animation_track15CApplicatorInfoERib
// The two-time form of applyValue: applyKeyBasedValue slots +0x44 and +0x4c (no applicator argument).
int CAnimationTrackEx::applyValue(const SAnimationAccessor& accessor, int firstTime, int secondTime, void* target,
                                  animation_track::CApplicatorInfo* /*info*/, int& keyIndex, bool flag) const {
    const int hint = keyIndex;
    int key = 0;
    float fraction = 0.0f;
    const bool found = accessor.findKeyFrameNo(0, secondTime, key, fraction, hint);
    int trackKey = 0;
    accessor.findKeyFrameNo(0, firstTime, trackKey);
    int result;
    if (found && flag) {
        result = applyKeyBasedValue(accessor, trackKey, key, key + 1, fraction, target);  // vtable +0x44
    } else {
        result = applyKeyBasedValue(accessor, trackKey, key, target);                      // vtable +0x4c
    }
    keyIndex = key;
    return result;
}

// 0x6e2e90 _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoEfb
// With a weight: applyKeyBasedValue slots +0x58 and +0x5c.
int CAnimationTrackEx::applyValue(const SAnimationAccessor& accessor, int time, void* target,
                                  animation_track::CApplicatorInfo* info, float weight, bool flag) const {
    int key = 0;
    float fraction = 0.0f;
    if (accessor.findKeyFrameNo(0, time, key, fraction) && flag) {
        return applyKeyBasedValue(accessor, key, key + 1, fraction, target, info, weight);  // vtable +0x58
    }
    return applyKeyBasedValue(accessor, key, target, info, weight);                          // vtable +0x5c
}

// 0x6e2a18 _ZNK6glitch7collada17CAnimationTrackEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS0_15animation_track15CApplicatorInfoERifb
int CAnimationTrackEx::applyValue(const SAnimationAccessor& accessor, int time, void* target,
                                  animation_track::CApplicatorInfo* info, int& keyIndex, float weight, bool flag) const {
    const int hint = keyIndex;
    int key = 0;
    float fraction = 0.0f;
    int result;
    if (accessor.findKeyFrameNo(0, time, key, fraction, hint) && flag) {
        result = applyKeyBasedValue(accessor, key, key + 1, fraction, target, info, weight);  // vtable +0x58
    } else {
        result = applyKeyBasedValue(accessor, key, target, info, weight);                      // vtable +0x5c
    }
    keyIndex = key;
    return result;
}

}  // namespace glitch::collada
