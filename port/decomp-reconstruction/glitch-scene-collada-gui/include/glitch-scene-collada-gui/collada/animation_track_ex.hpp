// glitch::collada::animation_track::CFloatEx, CWeightEx, CVisibilityEx, CVector3dEx and CTextureTransformEx: the animation tracks that are
// ordinary classes (not CVirtualEx instantiations). Canonical header of the scene-owner wave (animation track family). It replaces the
// stand-ins of collada_scene_accessors.hpp (CFloatEx, CWeightEx), texture_transform_ex.hpp, vector3d_ex.hpp, visibility_ex.hpp and the
// recon_28 free functions.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::collada::animation_track::<Class>, 0x6e3110 ..
// 0x6e5a2c): every class derives from CAnimationTrackEx (collada/IAnimationTrackEx.hpp) and has no data member (only the vptr). The
// slots each class overrides are listed per class below; CWeightEx, CVisibilityEx and CTextureTransformEx add two virtual slots after
// retrieveValue (+0x90, +0x94), CVector3dEx implements the "weight" slots (+0x30, +0x38, +0x3c). The getKeyBasedValueEx / getBlendedValueEx
// members are static (their first Hex-Rays parameter, shown as `this`, is the accessor or the value array).
// The key value arrays are floats read through SAnimationAccessor::getOutput(0) (+0x04 of the record).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/collada/CApplicatorInfo.hpp"
#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"
#include "glitch-scene-collada-gui/collada/SAnimationAccessor.hpp"

namespace glitch::collada::animation_track {

// A float value (the weight of a morph or any scalar). Slots: +0x00/+0x04 destructors (D1 0x6e31e4, D0 0x6e33e0), +0x08 .. +0x14, +0x20 ..
// +0x2c and +0x70 (applyValue).
class CFloatEx : public CAnimationTrackEx {
public:
    // The one object of the class (the data symbol 0x9f8350): getAnimationTrackEx hands it out.
    static CFloatEx s_Instance;
    ~CFloatEx() override;                                                           // 0x6e31e4 (empty)
    std::uint32_t getValueSize() const override;                                    // 0x6e3110: 4
    void getIdentityValue(void* out) const override;                                // 0x6e3118: 0.0
    int getBlendedValue(void* values, float* weights, int count, void* out) const override;  // 0x6e3124: the weighted sum
    int getAddedValue(void* values, float* weights, int count, void* out) const override;    // 0x6e3184: the same sum
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const override;  // 0x6e33c4
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction,
                         void* out) const override;                                                                            // 0x6e3350
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const override;                              // 0x6e32cc
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* out) const override;                 // 0x6e32b8
    int applyValue(void* value, void* target, CApplicatorInfo* info) const override;                                          // 0x6e3258

    // 0x6e3288: nextKey - key.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, void* out);
    // 0x6e32f4: (nextKey + fraction * (lastKey - nextKey)) - key.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out);
    // 0x6e3374: key + fraction * (nextKey - key).
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out);

    using CAnimationTrackEx::applyValue;
    using IAnimationTrackEx::applyAddedValue;
    using IAnimationTrackEx::applyBlendedValue;
    using IAnimationTrackEx::applyKeyBasedValue;
    using IAnimationTrackEx::getAddedValue;
    using IAnimationTrackEx::getBlendedValue;
    using IAnimationTrackEx::getKeyBasedValue;
};

// A float that is written straight into a float target (the blend weight of a morph target). Slots as CFloatEx plus applyBlendedValue
// (+0x18), applyKeyBasedValue (+0x40, +0x48) and the new slots +0x90 applyAddedValue (4 arguments) and +0x94 applyKeyBasedValue.
class CWeightEx : public CAnimationTrackEx {
public:
    // The one object of the class (the data symbol 0x9f8390): getAnimationTrackEx hands it out.
    static CWeightEx s_Instance;
    ~CWeightEx() override;                                                          // 0x6e4f48 (empty)
    std::uint32_t getValueSize() const override;                                    // 0x6e4db4: 4
    void getIdentityValue(void* out) const override;                                // 0x6e4dbc: 0.0
    int getBlendedValue(void* values, float* weights, int count, void* out) const override;  // 0x6e4dc8
    int getAddedValue(void* values, float* weights, int count, void* out) const override;    // 0x6e4e28
    // +0x18, 0x6e4e88: the weighted sum written to the float target.
    int applyBlendedValue(void* values, float* weights, int count, void* target, CApplicatorInfo* info) const override;
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const override;  // 0x6e50b0
    // 0x6e5094: the interpolation between nextKey and lastKey (the first key is not used).
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction,
                         void* out) const override;
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const override;                              // 0x6e5110
    // 0x6e5000: the value of nextKey (not a difference).
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* out) const override;
    // +0x40, 0x6e5078: the interpolated value is written to the float target.
    int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* target,
                           CApplicatorInfo* info) const override;
    // +0x48, 0x6e5138: the key value is written to the float target.
    int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, void* target, CApplicatorInfo* info) const override;
    int applyValue(void* value, void* target, CApplicatorInfo* info) const override;                                          // 0x6e50cc
    // +0x90, 0x6e4ee8: the weighted sum written to the float target.
    virtual int applyAddedValue(void* values, float* weights, int count, void* target) const;
    // +0x94, 0x6e4fec: nextKey - key written to the float target.
    virtual int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* target, CApplicatorInfo* info) const;

    // 0x6e4fbc: nextKey - key.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, void* out);
    // 0x6e5028: key + fraction * (nextKey - key).
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out);

    using CAnimationTrackEx::applyValue;
    using IAnimationTrackEx::applyAddedValue;
    using IAnimationTrackEx::applyBlendedValue;
    using IAnimationTrackEx::applyKeyBasedValue;
    using IAnimationTrackEx::getAddedValue;
    using IAnimationTrackEx::getBlendedValue;
    using IAnimationTrackEx::getKeyBasedValue;
};

// The visibility of a node: a key is "visible" when its float value is >= 1.0. The value is a 32-bit flag. The apply functions call
// ISceneNode::setVisible (K 0x48) on the target. Slots as CWeightEx plus applyAddedValue (+0x1c), retrieveValue (+0x8c) and the new slots
// +0x90 / +0x94 (applyKeyBasedValue).
class CVisibilityEx : public CAnimationTrackEx {
public:
    // The one object of the class (the data symbol 0x9f8380): getAnimationTrackEx hands it out.
    static CVisibilityEx s_Instance;
    ~CVisibilityEx() override;                                                      // 0x6e4a24 (empty)
    std::uint32_t getValueSize() const override;                                    // 0x6e494c: 4
    void getIdentityValue(void* out) const override;                                // 0x6e4954: 1
    // 0x6e4960: 1 unless a key with a non-zero weight is 0.
    int getBlendedValue(void* values, float* weights, int count, void* out) const override;
    // 0x6e49c4: 0 unless a key with a non-zero weight is 1.
    int getAddedValue(void* values, float* weights, int count, void* out) const override;
    int applyBlendedValue(void* values, float* weights, int count, void* target, CApplicatorInfo* info) const override;  // 0x6e4c7c
    int applyAddedValue(void* values, float* weights, int count, void* target, CApplicatorInfo* info) const override;    // 0x6e4da0
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const override;  // 0x6e4b3c
    // 0x6e4b20: the key `nextKey`.
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction,
                         void* out) const override;
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const override;                              // 0x6e4adc
    // 0x6e4acc: the key `nextKey`.
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* out) const override;
    int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* target,
                           CApplicatorInfo* info) const override;                                                              // 0x6e4bd8
    int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, void* target, CApplicatorInfo* info) const override;  // 0x6e4d08
    int applyValue(void* value, void* target, CApplicatorInfo* info) const override;                                          // 0x6e4c90
    // +0x8c, 0x6e493c: the visible flag of the node (bit 0 of the node flags at +0x11c).
    void retrieveValue(void* source, void* out) const override;
    // +0x90, 0x6e4bb4: the key `nextKey` of the pair.
    virtual int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* target,
                                   CApplicatorInfo* info) const;
    // +0x94, 0x6e4cf4: the key `nextKey`.
    virtual int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* target, CApplicatorInfo* info) const;

    // 0x6e4a98: key >= 1.0.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, void* out);
    // 0x6e4aec: the first key >= 1.0 (no interpolation).
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out);
    // 0x6e4cac and 0x6e4b6c: setVisible(key >= 1.0) on the target.
    static int applyKeyBasedValueEx(const SAnimationAccessor& accessor, int key, void* target, CApplicatorInfo* info);
    static int applyKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* target,
                                    CApplicatorInfo* info);
    // 0x6e4bfc: setVisible(true), then setVisible(false) when a key with a non-zero weight is 0.
    static int applyBlendedValueEx(void* values, float* weights, int count, void* target);
    // 0x6e4d1c: setVisible(false), then setVisible(true) when a key with a non-zero weight is 0 (the original tests the value 0 here, 1 in
    // getAddedValue).
    static int applyAddedValueEx(void* values, float* weights, int count, void* target);

    using CAnimationTrackEx::applyValue;
    using IAnimationTrackEx::applyKeyBasedValue;
    using IAnimationTrackEx::getAddedValue;
    using IAnimationTrackEx::getBlendedValue;
    using IAnimationTrackEx::getKeyBasedValue;
};

// A float vector of three components (the value of an arbitrary vector animation). Slots: the CFloatEx ones plus the weight forms
// +0x30 getBlendedValue, +0x38 and +0x3c getKeyBasedValue (the value is mixed into the output with the weight).
class CVector3dEx : public CAnimationTrackEx {
public:
    // The one object of the class (the data symbol 0x9f8370): getAnimationTrackEx hands it out.
    static CVector3dEx s_Instance;
    ~CVector3dEx() override;                                                        // 0x6e43ac (empty)
    std::uint32_t getValueSize() const override;                                    // 0x6e42b4: 12
    void getIdentityValue(void* out) const override;                                // 0x6e42bc: zero
    int getBlendedValue(void* values, float* weights, int count, void* out) const override;  // 0x6e42d0
    int getAddedValue(void* values, float* weights, int count, void* out) const override;    // 0x6e42e4
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const override;  // 0x6e473c
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction,
                         void* out) const override;                                                                            // 0x6e4904
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const override;                              // 0x6e4568
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* out) const override;                 // 0x6e47d4
    // +0x30, 0x6e4390: out = (1 - weight) * out + weight * blended.
    int getBlendedValue(void* values, float* weights, int count, void* out, float weight) const override;
    // +0x38, 0x6e4718 and +0x3c, 0x6e4498: out = (1 - weight) * out + weight * value.
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out, float weight) const override;
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out, float weight) const override;
    int applyValue(void* value, void* target, CApplicatorInfo* info) const override;                                          // 0x6e4420

    // 0x6e3fb0: the running blend (a single record is copied, none leaves the output untouched).
    static void getBlendedValueEx(void* values, float* weights, int count, void* out);
    // 0x6e41ec: out = (1 - weight) * out + weight * blended.
    static void getBlendedValueEx(void* values, float* weights, int count, void* out, float weight);
    // 0x6e4450: the record of the key.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, void* out);
    // 0x6e4578: lerp; 0x6e4758: nextKey - key; 0x6e47e8: (nextKey + f * (lastKey - nextKey)) - key.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out);
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, void* out);
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out);
    // 0x6e464c: out = (1 - weight) * out + weight * lerp.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out, float weight);

    using CAnimationTrackEx::applyValue;
    using IAnimationTrackEx::applyAddedValue;
    using IAnimationTrackEx::applyBlendedValue;
    using IAnimationTrackEx::applyKeyBasedValue;
    using IAnimationTrackEx::getAddedValue;
    using IAnimationTrackEx::getBlendedValue;
    using IAnimationTrackEx::getKeyBasedValue;
};

// A texture transform of a material (five floats: translation x / y, rotation in degrees, scale u / v). The key records are per channel (the
// channel type 87 .. 91 selects the component, SAnimationAccessor::getType); the value is gathered by getValueEx and applied as a texture
// matrix to a material parameter (PARTIAL: the CMaterial seam). Slots: the CFloatEx ones, getValue (+0x68, +0x74), applyValue (+0x6c, +0x70),
// retrieveValue (+0x8c) and the new slots +0x90 applyBlendedValue / +0x94 applyAddedValue (4 arguments).
class CTextureTransformEx : public CAnimationTrackEx {
public:
    // The one object of the class (the data symbol 0x9f8360): getAnimationTrackEx hands it out.
    static CTextureTransformEx s_Instance;
    // The five components (20 bytes).
    struct SData {
        float translateX = 0.0f;  // +0x00
        float translateY = 0.0f;  // +0x04
        float rotation = 0.0f;    // +0x08 degrees
        float scaleU = 1.0f;      // +0x0c
        float scaleV = 1.0f;      // +0x10
    };

    ~CTextureTransformEx() override;                                                // 0x6e3708 (empty)
    std::uint32_t getValueSize() const override;                                    // 0x6e33f8: 20
    void getIdentityValue(void* out) const override;                                // 0x6e3400: (0, 0, 0, 1, 1)
    // 0x6e3420 and 0x6e358c: out = (sum w * x, sum w * y, sum w * rotation, 1 + sum w * u, 1 + sum w * v); the records are scaled by
    // their weight in place (the original writes the products back).
    int getBlendedValue(void* values, float* weights, int count, void* out) const override;
    int getAddedValue(void* values, float* weights, int count, void* out) const override;
    // 0x6e36f8, 0x6e3700, 0x6e36fc, 0x6e3704: empty (the value is gathered per channel by getValueEx).
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const override;
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction,
                         void* out) const override;
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const override;
    int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* out) const override;
    // +0x68, 0x6e3f80 and +0x74, 0x6e3d08: the gathered value of a time (and relative to the key of a first time).
    int getValue(const SAnimationAccessor& accessor, int time, void* out, int& keyIndex, bool interpolate) const override;
    int getValue(const SAnimationAccessor& accessor, int firstTime, int secondTime, void* out, int& keyIndex,
                 bool interpolate) const override;
    // +0x6c, 0x6e3f58: getValueEx, then applyValueEx on the target.
    int applyValue(const SAnimationAccessor& accessor, int time, void* target, CApplicatorInfo* info, int& keyIndex,
                   bool interpolate) const override;
    // +0x70, 0x6e3ab8: applyValueEx(target, value, null info).
    int applyValue(void* value, void* target, CApplicatorInfo* info) const override;
    // +0x8c, 0x6e33f4: empty.
    void retrieveValue(void* source, void* out) const override;
    // +0x90, 0x6e3aa4 and +0x94, 0x6e3a90: applyBlendedValueEx on the target (the added value is the same sum).
    virtual int applyBlendedValue(void* values, float* weights, int count, void* target) const;
    virtual int applyAddedValue(void* values, float* weights, int count, void* target) const;

    // 0x6e38c4: the texture matrix of the five components goes to the material parameter of the applicator.
    static int applyValueEx(void* target, SData& data, CApplicatorInfo* info);
    // 0x6e395c: the weighted sums (records scaled in place) applied to the target.
    static int applyBlendedValueEx(void* values, float* weights, int count, void* target);
    // 0x6e3efc: getValueEx, then applyValueEx(target, data, info).
    static int applyValueEx(const SAnimationAccessor& accessor, int time, void* target, CApplicatorInfo* info, int& keyIndex,
                            bool interpolate);
    // 0x6e3d78 and 0x6e3b48: the default value, then the value of every channel at the time (relative to the key of the first time).
    static int getValueEx(const SAnimationAccessor& accessor, int time, void* out, int& keyIndex, bool interpolate);
    static int getValueEx(const SAnimationAccessor& accessor, int firstTime, int secondTime, void* out, int& keyIndex, bool interpolate);
    // 0x6e3d30: channel `channel`, lerp of the keys; 0x6e3b1c: the difference; 0x6e3ac4: the lerp relative to a base key.
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int channel, int key, int nextKey, float fraction, void* out);
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int channel, int key, int nextKey, void* out);
    static void getKeyBasedValueEx(const SAnimationAccessor& accessor, int channel, int baseKey, int key, int nextKey, float fraction,
                                   void* out);

    using CAnimationTrackEx::applyValue;
    using CAnimationTrackEx::getValue;
    using IAnimationTrackEx::applyAddedValue;
    using IAnimationTrackEx::applyBlendedValue;
    using IAnimationTrackEx::applyKeyBasedValue;
    using IAnimationTrackEx::getAddedValue;
    using IAnimationTrackEx::getBlendedValue;
    using IAnimationTrackEx::getKeyBasedValue;
};

}  // namespace glitch::collada::animation_track
