// glitch::scene::ITimeController and glitch::scene::ITimelineController: the clock interfaces that animators
// drive. Canonical header of the engine unification wave (u1-scene). The earlier definitions were in
// scene_nodes.hpp (no IReferenceCounted base, three of the 21 slots, currentFrame at +0x04). The collada
// implementation is glitch::collada::CTimelineController (collada/CTimelineController.hpp).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py ITimeController, ITimelineController):
//   ITimeController: vtable 52 bytes, virtual base IReferenceCounted at +0x08 (vbase offset 8), so the class is
//     the vptr at +0x00 and one word at +0x04. Slots (vptr+K): +0x00 update(int) (0x666be4, empty),
//     +0x04 / +0x08 destructors (0x666be8; D0 0x667020 skipped).
//   ITimelineController: vtable 124 bytes, virtual base at +0x18, so it adds +0x08 .. +0x17 (the callback pair and
//     the clip range). Slots +0x0c .. +0x50 below; +0x0c jumpTo, +0x44 getLoop, +0x48 setScale and +0x4c getScale have
//     bodies (0x666bfc stores the time at +0x04; 0x666c04 returns false; 0x666c0c is empty; 0x666c10 returns 1.0f),
//     the rest are pure. CTimelineController (vbase 0x40) fills every slot.
//   The words +0x04 .. +0x14 are written by CTimelineController's constructor and update (0x666e40, 0x667104):
//     +0x04 current time in ms, +0x08 end callback, +0x0c its data word, +0x10 / +0x14 the range in ms.
// Return types follow the collada implementations that were checked against the pseudocode (jumpTo and
// setClip(int) return the new time or length in seconds as a float, setClip(const char*) returns the clip index, update returns
// the new time in ms).
#pragma once

#include <cstdint>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

class ITimeController : public virtual glitch::IReferenceCounted {
public:
    // vptr+0x00, 0x666be4: empty in the base. The collada controller returns the new time in ms.
    virtual std::int32_t update(std::int32_t timeMs);
    // vptr+0x04 / +0x08, 0x666be8 (D1; D0 0x667020 is skipped in the ledger).
    ~ITimeController() override;

    std::int32_t currentTimeMs = 0;  // +0x04 last time in ms (written by jumpTo, update and setClip)
};

class ITimelineController : public ITimeController {
public:
    // Called as callback(controller, data) when the clock reaches the end of the range (a plain function pointer;
    // the data word is a user pointer, so it is pointer width on the host: the game's AnimCallback takes void*).
    using TimelineCallback = void (*)(ITimelineController* controller, void* data);

    // 0x666da4 (D1; D0 0x667044 skipped).
    ~ITimelineController() override;

    // vptr+0x0c, 0x666bfc: stores the time at +0x04 (the original returns `this` in r0).
    virtual float jumpTo(std::int32_t timeMs);
    // vptr+0x10 .. +0x3c: the clip interface; implemented by CTimelineController.
    // vptr+0x10: selects a clip by index and returns its length in seconds (0x666f7c returns the float).
    virtual float setClip(std::int32_t clipIndex) = 0;                // +0x10
    // vptr+0x14: selects a clip by name and returns its index, or -1 (0x666f44 returns the integer from getClipIndex).
    virtual std::int32_t setClip(const char* clipName) = 0;           // +0x14
    virtual std::int32_t getClipIndex(const char* clipName) const = 0;  // +0x18
    virtual std::int32_t getClipCount() const = 0;                    // +0x1c
    virtual std::uint32_t getClipStart(std::int32_t clipIndex) const = 0;   // +0x20
    virtual std::uint32_t getClipEnd(std::int32_t clipIndex) const = 0;     // +0x24
    virtual std::uint32_t getClipLength(std::int32_t clipIndex) const = 0;  // +0x28
    virtual std::uint32_t getCurrentClipStart() const = 0;            // +0x2c
    virtual std::uint32_t getCurrentClipEnd() const = 0;              // +0x30
    virtual std::uint32_t getCurrentClipLength() const = 0;           // +0x34
    virtual std::int32_t getCurrentClipIndex() const = 0;             // +0x38
    virtual const char* getClipName(std::int32_t clipIndex) const = 0;  // +0x3c
    virtual void setLoop(bool loop) = 0;                              // +0x40
    // vptr+0x44, 0x666c04: returns false.
    virtual bool getLoop() const;
    // vptr+0x48, 0x666c0c: empty.
    virtual void setScale(float scale);
    // vptr+0x4c, 0x666c10: returns 1.0f.
    virtual float getScale() const;
    // vptr+0x50. The original returns a float in r0 that C++ callers never read.
    virtual void setRange(std::int32_t startMs, std::int32_t endMs, bool apply) = 0;

    TimelineCallback callback = nullptr;  // +0x08 end-of-range callback
    void* callbackData = nullptr;         // +0x0c second argument of callback
    std::int32_t rangeStartMs = 0;        // +0x10
    std::int32_t rangeEndMs = 0;          // +0x14
};

}  // namespace glitch::scene
