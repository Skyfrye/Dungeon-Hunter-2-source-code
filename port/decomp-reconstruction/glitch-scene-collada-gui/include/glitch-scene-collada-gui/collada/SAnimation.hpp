// glitch::collada::SAnimation and the records it points to (SChannel, SAnimationKeyframe, SAnimationOffsetScale,
// SAnimationDefaultValue, SAnimationOutput), and glitch::res::vector. Canonical header of the engine unification wave (u1-scene).
// SAnimation replaces the structs of collada_database.hpp, layouts/collada_db.hpp (a stride-0x20 entry with the name, the channel
// and the track) and layouts/animation_track.hpp (SAnimationAccessorTrack, the same record read through the accessor); SChannel
// moved here from collada/CColladaDatabase.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; every offset is read by an SAnimationAccessor getter, 0x669e00 .. 0x66a004):
//   SAnimation (stride 0x20): +0x00 the name (CColladaDatabase::getAnimation(char const*) compares it), +0x08 the keyframe table
//   (28-byte records, SAnimationKeyframe), +0x0c the channel count (getChannelsCount), +0x10 the channel array (16-byte records,
//   SChannel; getChannel(i) is channels + i, getTarget() reads the name of channel 0), +0x14 the animation track (getAnimator;
//   CSceneNodeAnimator::getAnimationTrackEx returns it), +0x18 the default value record (non-null means hasDefaultValue;
//   getDefaultValue reads the word at record +0x08), +0x1c the offset / scale record (getScales reads the word at +0x04,
//   getOffsets at +0x08, getOffsetScaleType the word at +0x00, or 2 when the record is absent).
//   SAnimationKeyframe (28 bytes): +0x00 the interpolation type (getInterpolationType), +0x04 the time type
//   (getTimeInternalType: 1 = unsigned char keys, 3 = unsigned short keys, 4 = int keys), +0x0c the index of the key-time
//   record, +0x18 the index of the output record. The records live in the animation block data (SAnimationOutput array).
//   glitch::res::vector<T>: the vector embedded in a loaded file: the element count at +0x00 and the data pointer at +0x04.
// Port notes: pointers are host width; the loaded-file loader that builds these records is not reconstructed, so tests and
// callers fill them directly. The record the original reaches at `outputs + 8 * i + 4` is element i of the output array here.
#pragma once

#include <cstdint>

namespace glitch::res {

// The read-only vector of the loaded-file format: {count, data}. The element type is the key width of the user.
template <typename T>
class vector {
public:
    std::int32_t count = 0;    // +0x00 number of elements
    const T* data = nullptr;   // +0x04 the elements
};

}  // namespace glitch::res

namespace glitch::collada {

class IAnimationTrackEx;

// Channel record: 16 bytes in the original. The argument of the channel-based getters and an element of SAnimation::channels.
// The values of Type are not named yet.
struct SChannel {
    enum Type : std::uint32_t {};
    std::uint32_t unk_00 = 0;     // +0x00, not mapped
    const char* name = nullptr;   // +0x04 (the bind URI)
    std::uint32_t type = 0;       // +0x08, a SChannel::Type value (index into the compatibility table; 14 is the special case)
    union {
        std::uint8_t flag = 0;      // +0x0c, compared with the flag argument (channel type 14)
        const char* extra;          // +0x0c, a string for channel type 86 (CAnimationSet::addAnimation compares it)
    };
};

// One output record: a res::vector whose element type depends on the track (key times, key values).
struct SAnimationOutput {
    std::int32_t count = 0;      // +0x00 number of elements
    const void* data = nullptr;  // +0x04 the elements
};

// Keyframe table record: 28 bytes in the original.
struct SAnimationKeyframe {
    std::uint32_t interpolationType = 0;  // +0x00 (getInterpolationType; 0 disables the interpolation)
    std::uint32_t timeType = 0;           // +0x04 (getTimeInternalType: 1, 3 or 4)
    std::uint32_t unk_08 = 0;             // +0x08, not mapped
    std::uint32_t keyTimeIndex = 0;       // +0x0c index of the key-time record (getKeyTime)
    std::uint32_t unk_10 = 0;             // +0x10, not mapped
    std::uint32_t unk_14 = 0;             // +0x14, not mapped
    std::uint32_t outputIndex = 0;        // +0x18 index of the output record (getOutput)
};

// Default value record (SAnimation +0x18): getDefaultValue reads the word at +0x08, a pointer to the default value.
struct SAnimationDefaultValue {
    std::uint32_t unk_00 = 0;        // +0x00, not mapped
    std::uint32_t unk_04 = 0;        // +0x04, not mapped
    const void* value = nullptr;     // +0x08
};

// Offset / scale record (SAnimation +0x1c).
struct SAnimationOffsetScale {
    std::int32_t type = 0;           // +0x00 (getOffsetScaleType)
    const float* scales = nullptr;   // +0x04 (getScales)
    const float* offsets = nullptr;  // +0x08 (getOffsets)
};

// Stride 0x20. Name confirmed by getAnimation(char const*).
struct SAnimation {
    const char* name = nullptr;                              // +0x00
    std::uint32_t unk_04 = 0;                                // +0x04, not read by the accessor
    const SAnimationKeyframe* keyframes = nullptr;           // +0x08 keyframe table (28-byte records)
    std::int32_t channelCount = 0;                           // +0x0c
    SChannel* channels = nullptr;                            // +0x10 channel array (16-byte records); getAnimation(name, type, flag) matches it
    IAnimationTrackEx* trackEx = nullptr;                    // +0x14 the animation track built for this animation (set by CResFileManager::postLoadProcess
                                                             //       through CColladaDatabase::getAnimationTrackEx 0x611ae0; CSceneNodeAnimator::getAnimationTrackEx)
    const SAnimationDefaultValue* defaultValue = nullptr;    // +0x18
    const SAnimationOffsetScale* offsetScale = nullptr;      // +0x1c
};

}  // namespace glitch::collada
