// glitch::collada::CTimelineController: the clock that drives a COLLADA animator over a time range or a table of named clips.
// Canonical header of the engine unification wave (u1-scene). It replaces the CTimelineController in collada_misc.hpp (a class
// with its own virtuals and no base) and the recon_22::CTimelineController stand-in in recon/slice_22.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructor 0x666e40 (C1) / 0x666db8 (C2); tools/decomp_vtable.py
// glitch::collada::CTimelineController, 124 bytes, virtual base IReferenceCounted at +0x40):
//   CTimelineController implements glitch::scene::ITimelineController (scene/ITimelineController.hpp): every slot from +0x00
//   update(int) to +0x50 setRange is its own function (update 0x667104, jumpTo 0x666f10, setClip 0x666f7c / 0x666f44,
//   getClipIndex 0x6670a4, getClipCount 0x666cc4, getClipStart 0x666cd4, getClipEnd 0x666cec, getClipLength 0x666d04,
//   getCurrentClipStart 0x666d3c, getCurrentClipEnd 0x666d54, getCurrentClipLength 0x666d6c, getCurrentClipIndex 0x666d9c,
//   getClipName 0x666d84, setLoop 0x666c28, getLoop 0x666c30, setScale 0x666c20, getScale 0x666c18, setRange 0x666c38).
//   Members after the scene::ITimelineController part (+0x00 .. +0x17: vptr, current time, callback, callback data, range ms):
//     +0x18 byte loop (the constructor writes 1), +0x1c float step of the last update, +0x20 float range start (seconds),
//     +0x24 float range length (seconds), +0x28 float previous clock reading (seconds), +0x2c float current position (seconds),
//     +0x30 float scale (the constructor writes 1.0f), +0x34 the clip table pointer (a non-null table fixes the range),
//     +0x38 the current clip index, +0x3c byte end-reported, +0x3d byte started, +0x40 the virtual base.
//   The constructor does not write +0x1c, +0x28 or the callback data word (+0x0c); they are zero here.
// Port notes: the clip table is a pointer into the loaded file data in the original (a 32-bit target pointer); on the host it
// is a pointer to the same two-word record. The end callback is a plain function pointer.
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/collada/SLibraryAnimationClips.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

namespace glitch::collada {

// The clip table is the database's clip library (collada/SLibraryAnimationClips.hpp): SAnimationClip records (name, start, end).

class CTimelineController : public scene::ITimelineController {
public:
    // 0x666e40 (C1) and 0x666db8 (C2, the VTT form): PARTIAL, the member words are written, the virtual-base words are implicit.
    CTimelineController();
    // 0x666efc (D2) and 0x666f00 (D1) are empty; 0x667088 (D0) is skipped.
    ~CTimelineController() override;

    // vptr+0x00, 0x667104: advances the clock by the host time and returns the new position in milliseconds; wraps or clamps at
    // the end of the range and calls the end callback.
    std::int32_t update(std::int32_t timeMs) override;
    // vptr+0x0c, 0x666f10: returns the new position in seconds.
    float jumpTo(std::int32_t timeMs) override;
    // vptr+0x10, 0x666f7c: switches to a clip and returns its length in seconds.
    float setClip(std::int32_t clipIndex) override;
    // vptr+0x14, 0x666f44: looks the clip up by name (getClipIndex), switches to it when found and returns the index (or -1).
    std::int32_t setClip(const char* clipName) override;
    // vptr+0x18, 0x6670a4: the index of the clip whose name matches (case-insensitive), or -1. The original does not test the
    // clip table; a missing table gives -1 here.
    std::int32_t getClipIndex(const char* clipName) const override;
    std::int32_t getClipCount() const override;                              // vptr+0x1c, 0x666cc4
    std::uint32_t getClipStart(std::int32_t clipIndex) const override;       // vptr+0x20, 0x666cd4
    std::uint32_t getClipEnd(std::int32_t clipIndex) const override;         // vptr+0x24, 0x666cec
    std::uint32_t getClipLength(std::int32_t clipIndex) const override;      // vptr+0x28, 0x666d04
    std::uint32_t getCurrentClipStart() const override;                      // vptr+0x2c, 0x666d3c
    std::uint32_t getCurrentClipEnd() const override;                        // vptr+0x30, 0x666d54
    std::uint32_t getCurrentClipLength() const override;                     // vptr+0x34, 0x666d6c
    std::int32_t getCurrentClipIndex() const override;                       // vptr+0x38, 0x666d9c
    const char* getClipName(std::int32_t clipIndex) const override;          // vptr+0x3c, 0x666d84
    void setLoop(bool enabled) override;                                     // vptr+0x40, 0x666c28
    bool getLoop() const override;                                           // vptr+0x44, 0x666c30
    void setScale(float value) override;                                     // vptr+0x48, 0x666c20
    float getScale() const override;                                         // vptr+0x4c, 0x666c18
    // vptr+0x50, 0x666c38. With a clip table the range is not changed. The original returns a float in r0 that no caller reads.
    void setRange(std::int32_t startMs, std::int32_t endMs, bool apply) override;

    // 0x666f04: stores the range in milliseconds without touching the seconds fields.
    void init(std::int32_t startMs, std::int32_t endMs);

    bool loop = true;                           // +0x18
    float lastStep = 0.0f;                      // +0x1c step of the last update (the original stores |step| for a reverse step)
    float rangeStartSec = 0.0f;                 // +0x20
    float rangeLengthSec = 0.0f;                // +0x24
    float prevTimeSec = 0.0f;                   // +0x28
    float currentSec = 0.0f;                    // +0x2c current position in seconds
    float scale = 1.0f;                         // +0x30
    const SLibraryAnimationClips* clipTable = nullptr; // +0x34 (non-null: setRange does not change the range)
    std::int32_t currentClipIndex = 0;          // +0x38
    bool endReported = false;                   // +0x3c set once the end callback has run (non-loop)
    bool started = false;                       // +0x3d set by the first update after a jump or clip change
};

}  // namespace glitch::collada
