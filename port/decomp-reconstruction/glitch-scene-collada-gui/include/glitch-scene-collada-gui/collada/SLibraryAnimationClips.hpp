// glitch::collada::SAnimationClip and SLibraryAnimationClips: the named clip ranges of a COLLADA file and the table that holds
// them. Canonical header of the engine unification wave (u1-scene). They replace the SAnimationClip records in
// collada_database.hpp (a name only), layouts/collada_db.hpp (SAnimationClip, SLibraryAnimationClips) and the identically shaped
// STimelineClip / STimelineClipTable of collada_misc.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout):
//   The database keeps the clips in its table holder: the count at holder +0x34 and the clip array pointer at +0x38, an 8-byte
//   object that CColladaDatabase::getAnimationClipLibrary (0x60e334) returns the address of. A clip is 12 bytes (stride 0x0c,
//   getAnimationClip(name) and getAnimationClip(int) 0x61be98 / 0x60e374): the name at +0x00 and the start and end times in
//   milliseconds at +0x04 and +0x08. CSceneNodeAnimator's constructor (0x65dbd8) stores the address of this table in the
//   CTimelineController it creates (timeline +0x34), whose getClipStart / getClipEnd / getClipName read the records.
#pragma once

#include <cstdint>

namespace glitch::collada {

struct SAnimationClip {
    const char* name = nullptr;  // +0x00
    std::uint32_t start = 0;     // +0x04 milliseconds
    std::uint32_t end = 0;       // +0x08 milliseconds
};

// The clip library: the count and the array pointer, an 8-byte object inside the table holder.
struct SLibraryAnimationClips {
    std::int32_t count = 0;          // +0x00 (holder +0x34)
    SAnimationClip* clips = nullptr; // +0x04 (holder +0x38), stride 0x0c
};

}  // namespace glitch::collada
