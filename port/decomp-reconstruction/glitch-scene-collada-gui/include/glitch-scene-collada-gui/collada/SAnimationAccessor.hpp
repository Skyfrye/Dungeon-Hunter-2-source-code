// glitch::collada::SAnimationAccessor: the view of one animation (SAnimation) over a block of animation data that the animation
// tracks (CVirtualEx<CApplyValueEx<...>>) read their keys through, and the key search the tracks use. Canonical header of the
// engine unification wave (u1-scene). It replaces the guest-word struct of layouts/animation_track.hpp (three uint32 members and
// a guest-memory seam in the bodies), glitch::collada::evidence::SAnimationAccessor / SAnimationKeyCache / SSamplerEntry of
// layouts/animation_evidence.hpp, and the recon_09 / recon_10 / recon_11 / recon_33 stand-ins (an output pointer, scales,
// offsets and a default value) that the track slices read.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; the accessor is built on the stack by CSceneNodeAnimator::computeAnimationValues
// 0x65d80c, applyAnimationValues 0x65d91c and getAnimationValue 0x65da38, and passed by reference to the track's virtual slots):
//   +0x00 the SAnimation (collada/SAnimation.hpp), +0x04 the output array of the animation block (the record for output i is at
//   `outputs + 8 * i + 4`, i.e. the array element i), +0x08 the key-search cache (SAnimationKeyCache).
//   The getters are 0x669e00 .. 0x66a004; the apply / get entry points 0x66a068 .. 0x66a1a8 call the track's virtual slots (+0x68,
//   +0x6c, +0x74, +0x80); the key search is 0x66a1f0 .. 0x66b814 (findKeyFrameNo / findKeyFrameNoEx, instantiated for 8-bit keys
//   (30 ticks per second, scale 33.333), 16-bit keys (the same scale) and 32-bit keys (milliseconds)).
//   Key-search cache (SAnimationKeyCache, 16 bytes, +0x00 float fraction, +0x04 key id = the time of the last search, +0x08 index,
//   +0x0c found, +0x0d enabled): when `enabled` is set and the time differs from the key id the search is run for the time type of
//   keyframe 0 and the result is stored; otherwise the stored result is returned.
// Port notes: pointers are host width, so sizeof differs from the original; the offsets are the contract. The key vector of every
// search symbol is glitch::res::vector<int>, whatever the key width; the width is the template argument T and the data pointer is
// reinterpreted.
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/collada/CApplicatorInfo.hpp"
#include "glitch-scene-collada-gui/collada/SAnimation.hpp"

namespace glitch::collada {

class CAnimationTrackEx;

// The key-search cache (+0x08 of the accessor).
struct SAnimationKeyCache {
    float fraction = 0.0f;       // +0x00 fraction between the cached key and the next
    std::int32_t keyId = 0;      // +0x04 the time of the last search
    std::int32_t index = 0;      // +0x08 the cached key index
    std::uint8_t found = 0;      // +0x0c the cached result
    std::uint8_t enabled = 0;    // +0x0d the cache is used only when non-zero
};

struct SAnimationAccessor {
    SAnimationAccessor() = default;
    SAnimationAccessor(const SAnimation* animation, const SAnimationOutput* outputs, SAnimationKeyCache* cache)
        : animation(animation), outputs(outputs), cache(cache) {}

    const SAnimation* animation = nullptr;        // +0x00
    const SAnimationOutput* outputs = nullptr;    // +0x04 element i is the original's `outputs + 8 * i + 4`
    SAnimationKeyCache* cache = nullptr;          // +0x08

    // Getters over the SAnimation (0x669e00 .. 0x66a004).
    const char* getTarget() const;                                      // 0x669e00 the name of channel 0
    std::uint32_t getType(int index) const;                             // 0x669e10 the type of channel `index`
    const SAnimationOutput* getOutput(int index) const;                 // 0x669e24 the output record of keyframe `index`
    const SChannel* getChannel(int index) const;                        // 0x669e44
    bool hasDefaultValue() const;                                       // 0x669e54
    const void* getDefaultValue() const;                                // 0x669e68
    int getChannelsCount() const;                                       // 0x669e78
    int getTimeInternalType(int index) const;                           // 0x669e84
    int getInterpolationType(int index) const;                          // 0x669e9c
    const float* getOffsets() const;                                    // 0x669eb4
    const float* getScales() const;                                     // 0x669ec4
    int getOffsetScaleType() const;                                     // 0x669ed4
    const glitch::res::vector<int>& getKeyTime(int index) const;        // 0x669eec the key-time record of keyframe `index`
    int getKeyTime(int index, int key) const;                           // 0x669f0c the time of one key in milliseconds
    int getStart(int index) const;                                      // 0x669fac
    int getEnd(int index) const;                                        // 0x669fb4
    int getLength(int index) const;                                     // 0x669fdc
    const CAnimationTrackEx* getAnimator() const;                       // 0x66a004 the track (SAnimation::trackEx)

    // The entry points the animators call: they dispatch to the track's virtual slots.
    int getValue(int time, void* out, int& keyIndex, bool interpolate) const;                                // 0x66a1a8 (track +0x68)
    int getValue(int firstTime, int secondTime, void* out, int& keyIndex, bool interpolate) const;           // 0x66a15c (track +0x74)
    int applyValue(int time, void* target, animation_track::CApplicatorInfo* info, int& keyIndex,
                   bool interpolate) const;                                                                  // 0x66a0c0 (track +0x6c)
    int applyValue(int time, void* target, int& keyIndex, bool interpolate) const;                           // 0x66a10c (track +0x6c, no applicator)
    int applyValue(int firstTime, int secondTime, void* target, int& keyIndex, bool interpolate) const;      // 0x66a068 (track +0x80, no applicator)
    int applyValue(int firstTime, int secondTime, void* target, animation_track::CApplicatorInfo* info, int& keyIndex,
                   bool interpolate) const;                                                                  // 0x66a010 (track +0x80, with applicator)

    // Key search over one key vector. T is the key width and N the ticks per second (8-bit and 16-bit keys: 30; 32-bit: 1000).
    // The Ex forms also test the interpolation type of keyframe `index`.
    template <typename T, int N>
    bool findKeyFrameNo(const glitch::res::vector<int>& keys, int time, int& outIndex) const;               // 0x66a6d0 (uchar), 0x66abb8 (ushort)
    template <typename T, int N>
    bool findKeyFrameNo(const glitch::res::vector<int>& keys, int time, int& outIndex, int hint) const;     // 0x66a368 (int), 0x66a894 (uchar), 0x66b130 (ushort)
    template <typename T, int N>
    bool findKeyFrameNoEx(int index, const glitch::res::vector<int>& keys, int time, int& outIndex) const;  // 0x66a1f0 (int), 0x66a788 (uchar), 0x66ac78 (ushort)
    template <typename T, int N>
    bool findKeyFrameNoEx(int index, const glitch::res::vector<int>& keys, int time, int& outIndex,
                          int hint) const;                                                                   // 0x66a594 (int), 0x66aa68 (uchar), 0x66b328 (ushort)
    template <typename T, int N>
    bool findKeyFrameNoEx(int index, const glitch::res::vector<int>& keys, int time, int& outIndex,
                          float& fraction) const;                                                            // 0x66a2ac (int), 0x66a7c4 (uchar), 0x66acb4 (ushort)
    template <typename T, int N>
    bool findKeyFrameNoEx(int index, const glitch::res::vector<int>& keys, int time, int& outIndex, float& fraction,
                          int hint) const;                                                                   // 0x66a5e0 (int), 0x66aab4 (uchar), 0x66b550 (ushort)

    // The cache-aware dispatchers (through the cache at +0x08, on the time type of keyframe 0).
    bool findKeyFrameNo(int index, const glitch::res::vector<int>& keys, int time, int& outIndex) const;     // 0x66af74
    bool findKeyFrameNo(int index, const glitch::res::vector<int>& keys, int time, int& outIndex, int hint) const;  // 0x66b374
    bool findKeyFrameNo(int index, const glitch::res::vector<int>& keys, int time, int& outIndex,
                        float& fraction) const;                                                              // 0x66ad8c
    bool findKeyFrameNo(int index, const glitch::res::vector<int>& keys, int time, int& outIndex, float& fraction,
                        int hint) const;                                                                     // 0x66b65c

    // The forms that look the key-time vector up with getKeyTime(index).
    bool findKeyFrameNo(int index, int time, int& outIndex) const;                                           // 0x66b0f4
    bool findKeyFrameNo(int index, int time, int& outIndex, int hint) const;                                 // 0x66b510
    bool findKeyFrameNo(int index, int time, int& outIndex, float& fraction) const;                          // 0x66af34
    bool findKeyFrameNo(int index, int time, int& outIndex, float& fraction, int hint) const;                // 0x66b814
};

}  // namespace glitch::collada
