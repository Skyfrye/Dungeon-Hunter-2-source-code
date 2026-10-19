// glitch::collada::IAnimationTrackEx and CAnimationTrackEx: the interface of an animation track (how one animated property is
// read from the key data and written to its target) and the key-based base that the CVirtualEx<CApplyValueEx<...>> track
// classes derive from. Canonical header of the engine unification wave (u1-scene). It replaces the two stand-ins in
// collada_empty_dtors.hpp (a destructor, and one method on a non-polymorphic CAnimationTrackEx), the CAnimationTrackEx layout
// struct in layouts/animation_track.hpp, and the address-named default templates for IAnimationTrackEx in track_defaults.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::collada::IAnimationTrackEx, 124 bytes, and
// glitch::collada::CAnimationTrackEx, 152 bytes; neither has a virtual base or a member after the vptr):
//   Slots of IAnimationTrackEx (vptr+K; names from the CVirtualEx vtables that implement them):
//     +0x00 / +0x04 destructors (D1 0x60def4 empty, D0 0x60f4e4 skipped)
//     +0x08 getValueSize (pure), +0x0c getIdentityValue (pure), +0x10 getBlendedValue, +0x14 getAddedValue (pure)
//     +0x18 / +0x1c applyBlendedValue / applyAddedValue (0x60def8, 0x60defc: empty)
//     +0x20 .. +0x2c the four getKeyBasedValue overloads (pure)
//     +0x30 / +0x34 getBlendedValue / getAddedValue with a weight (0x60df00, 0x60df04: empty)
//     +0x38 / +0x3c getKeyBasedValue with a weight (0x60df08, 0x60df0c: empty)
//     +0x40 .. +0x4c the four applyKeyBasedValue overloads (0x60df10, 0x60df3c, 0x60df70, 0x60df84): each is a tail call to the
//       getKeyBasedValue slot +0x20, +0x24, +0x28, +0x2c with the same arguments (the applicator is not forwarded)
//     +0x50 / +0x54 applyBlendedValue / applyAddedValue with a weight (0x60dfa8, 0x60dfac: empty)
//     +0x58 / +0x5c applyKeyBasedValue with a weight (0x60dfb0, 0x60dfb4: empty)
//     +0x60 getValue (pure), +0x64 applyValue (0x60dfb8: empty), +0x68 getValue with a key index (pure), +0x6c applyValue with a
//       key index (0x60dfbc: empty), +0x70 applyValue(value, target, applicator) (pure).
//   CAnimationTrackEx adds +0x74 .. +0x88 (six getValue / applyValue overloads, 0x6e2dbc, 0x6e2fdc, 0x6e2b8c, 0x6e2ce8, 0x6e2e90,
//   0x6e2a18) and +0x8c retrieveValue (0x6e29d4), and implements +0x60 .. +0x6c (0x6e307c, 0x6e2f3c, 0x6e2c40, 0x6e2ad8).
// Port notes: the value-moving slots return int (the CVirtualEx templates return int); the original returns the register of the
// last call, which no caller reads. SAnimationAccessor is the guest-word layout of layouts/animation_track.hpp.
#pragma once

#include <cstdint>

namespace glitch::collada {

struct SAnimationAccessor;

namespace animation_track {
class CApplicatorInfo;
}  // namespace animation_track

class IAnimationTrackEx {
public:
    IAnimationTrackEx() = default;
    // vptr+0x00 / +0x04: 0x60def4 (D1, empty); 0x60f4e4 (D0) is the compiler's deleting destructor.
    virtual ~IAnimationTrackEx();

    virtual std::uint32_t getValueSize() const = 0;                                                     // +0x08
    virtual void getIdentityValue(void* out) const = 0;                                                 // +0x0c
    virtual int getBlendedValue(void* values, float* weights, int count, void* out) const = 0;          // +0x10
    virtual int getAddedValue(void* values, float* weights, int count, void* out) const = 0;            // +0x14
    // +0x18 / +0x1c: empty.
    virtual int applyBlendedValue(void* values, float* weights, int count, void* target,
                                  animation_track::CApplicatorInfo* info) const;
    virtual int applyAddedValue(void* values, float* weights, int count, void* target,
                                animation_track::CApplicatorInfo* info) const;
    // +0x20 .. +0x2c.
    virtual int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const = 0;
    virtual int getKeyBasedValue(const SAnimationAccessor& accessor, int track, int key, int nextKey, float fraction,
                                 void* out) const = 0;
    virtual int getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const = 0;
    virtual int getKeyBasedValue(const SAnimationAccessor& accessor, int track, int key, void* out) const = 0;
    // +0x30 / +0x34 / +0x38 / +0x3c: empty.
    virtual int getBlendedValue(void* values, float* weights, int count, void* out, float weight) const;
    virtual int getAddedValue(void* values, float* weights, int count, void* out, float weight) const;
    virtual int getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out,
                                 float weight) const;
    virtual int getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out, float weight) const;
    // +0x40 .. +0x4c: tail calls to the getKeyBasedValue slots above.
    virtual int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* target,
                                   animation_track::CApplicatorInfo* info) const;
    virtual int applyKeyBasedValue(const SAnimationAccessor& accessor, int track, int key, int nextKey, float fraction,
                                   void* target) const;
    virtual int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, void* target,
                                   animation_track::CApplicatorInfo* info) const;
    virtual int applyKeyBasedValue(const SAnimationAccessor& accessor, int track, int key, void* target) const;
    // +0x50 .. +0x5c: empty.
    virtual int applyBlendedValue(void* values, float* weights, int count, void* target,
                                  animation_track::CApplicatorInfo* info, float weight) const;
    virtual int applyAddedValue(void* values, float* weights, int count, void* target,
                                animation_track::CApplicatorInfo* info, float weight) const;
    virtual int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* target,
                                   animation_track::CApplicatorInfo* info, float weight) const;
    virtual int applyKeyBasedValue(const SAnimationAccessor& accessor, int key, void* target,
                                   animation_track::CApplicatorInfo* info, float weight) const;
    // +0x60 .. +0x70.
    virtual int getValue(const SAnimationAccessor& accessor, int time, void* out, bool flag) const = 0;
    virtual int applyValue(const SAnimationAccessor& accessor, int time, void* target,
                           animation_track::CApplicatorInfo* info, bool flag) const;
    virtual int getValue(const SAnimationAccessor& accessor, int time, void* out, int& keyIndex, bool flag) const = 0;
    virtual int applyValue(const SAnimationAccessor& accessor, int time, void* target,
                           animation_track::CApplicatorInfo* info, int& keyIndex, bool flag) const;
    virtual int applyValue(void* value, void* target, animation_track::CApplicatorInfo* info) const = 0;
};

class CAnimationTrackEx : public IAnimationTrackEx {
public:
    // vptr+0x00 / +0x04: 0x6e29b0 (D1, empty); 0x6e2a04 (D0) is skipped.
    ~CAnimationTrackEx() override;

    // +0x60 .. +0x6c (the overrides).
    int getValue(const SAnimationAccessor& accessor, int time, void* out, bool flag) const override;                       // 0x6e307c
    int applyValue(const SAnimationAccessor& accessor, int time, void* target, animation_track::CApplicatorInfo* info,
                   bool flag) const override;                                                                                // 0x6e2f3c
    int getValue(const SAnimationAccessor& accessor, int time, void* out, int& keyIndex, bool flag) const override;         // 0x6e2c40
    int applyValue(const SAnimationAccessor& accessor, int time, void* target, animation_track::CApplicatorInfo* info,
                   int& keyIndex, bool flag) const override;                                                                 // 0x6e2ad8
    using IAnimationTrackEx::applyValue;
    using IAnimationTrackEx::getValue;

    // +0x74 .. +0x8c (new slots).
    // The two-time forms search firstTime without a hint (its key is the track key) and secondTime from the key hint.
    virtual int getValue(const SAnimationAccessor& accessor, int firstTime, int secondTime, void* out, int& keyIndex, bool flag) const;   // 0x6e2dbc
    virtual int getValue(const SAnimationAccessor& accessor, int time, void* out, float weight, bool flag) const;              // 0x6e2fdc
    virtual int getValue(const SAnimationAccessor& accessor, int time, void* out, int& keyIndex, float weight, bool flag) const;  // 0x6e2b8c
    virtual int applyValue(const SAnimationAccessor& accessor, int firstTime, int secondTime, void* target,
                           animation_track::CApplicatorInfo* info, int& keyIndex, bool flag) const;                          // 0x6e2ce8
    virtual int applyValue(const SAnimationAccessor& accessor, int time, void* target,
                           animation_track::CApplicatorInfo* info, float weight, bool flag) const;                            // 0x6e2e90
    virtual int applyValue(const SAnimationAccessor& accessor, int time, void* target,
                           animation_track::CApplicatorInfo* info, int& keyIndex, float weight, bool flag) const;             // 0x6e2a18
    // 0x6e29d4: memcpy(out, source, getValueSize()).
    virtual void retrieveValue(void* source, void* out) const;
};

}  // namespace glitch::collada
