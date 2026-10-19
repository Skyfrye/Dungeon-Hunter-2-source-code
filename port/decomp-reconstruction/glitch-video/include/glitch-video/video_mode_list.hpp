// glitch::video::IVideoModeList and CVideoModeList: the list of display modes and the desktop mode. Canonical definitions
// (engine unification wave u1-video); the stand-in in glitch-core-io (deps/glitch_core_objects.hpp) and the forward
// declaration in glitch-scene-collada-gui (platform_stubs.hpp) are replaced by this header.
//
// IVideoModeList: vptr, reference count at +0x04, five pure slots (D1 0x671434, D0 0x6715e8):
//   +0x0c getVideoModeCount() const   +0x10 getVideoModeResolution(int) const   +0x14 getVideoModeDepth(int) const
//   +0x18 getDesktopResolution() const   +0x1c getDesktopDepth() const
// CVideoModeList (vtable 0x98ae08, size 0x20): IVideoModeList, then the mode array (+0x08 begin, +0x0c end, +0x10 capacity
// end, 12-byte elements), +0x14 desktop resolution, +0x1c desktop depth. The constructors store the count 1 at +0x04.
#pragma once

#include <cstddef>
#include <cstdint>
#include <vector>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-video/deps/glitch_core.hpp"

namespace glitch::video {

struct SVideoMode {
    core::dimension2d<uint32_t> Resolution;  // 8 bytes
    uint32_t Depth = 0;                      // 4 bytes; 12 bytes per entry in the original
};

// 0x6dac5c: the order heapsink<SVideoMode> (sort.hpp) uses: width, then height, then depth, each
// compared as a signed int (the listing uses signed branches on the three words).
inline bool operator<(const SVideoMode& a, const SVideoMode& b) {
    const int32_t aw = static_cast<int32_t>(a.Resolution.Width);
    const int32_t bw = static_cast<int32_t>(b.Resolution.Width);
    if (aw != bw) return aw < bw;
    const int32_t ah = static_cast<int32_t>(a.Resolution.Height);
    const int32_t bh = static_cast<int32_t>(b.Resolution.Height);
    if (ah != bh) return ah < bh;
    return static_cast<int32_t>(a.Depth) < static_cast<int32_t>(b.Depth);
}

class IVideoModeList : public glitch::IReferenceCounted {
public:
    ~IVideoModeList() override = default;  // 0x671434 (D1), 0x6715e8 (D0)
    virtual uint32_t getVideoModeCount() const = 0;                                  // +0x0c
    virtual core::dimension2d<uint32_t> getVideoModeResolution(int index) const = 0;  // +0x10
    virtual uint32_t getVideoModeDepth(int index) const = 0;                          // +0x14
    virtual const core::dimension2d<uint32_t>& getDesktopResolution() const = 0;      // +0x18
    virtual uint32_t getDesktopDepth() const = 0;                                     // +0x1c
};

class CVideoModeList : public IVideoModeList {
public:
    CVideoModeList();
    // Port helper (not an original function): fills the list the way the
    // enumeration code does, so the accessors can be tested.
    CVideoModeList(std::vector<SVideoMode> modes, core::dimension2d<uint32_t> desktopResolution,
                   uint32_t desktopDepth);
    ~CVideoModeList() override = default;  // 0x6dae50 (D1) / 0x6db0a4 (D0)

    // 0x6dae90: appends a mode unless the same resolution and depth are already listed, then
    // heapsorts the list with operator< on SVideoMode.
    void addMode(const core::dimension2d<uint32_t>& resolution, uint32_t depth);
    // 0x6dab5c: sets the desktop depth (+0x1c) and resolution (+0x14).
    void setDesktop(int depth, const core::dimension2d<uint32_t>& resolution);
    uint32_t getVideoModeCount() const override;                                  // 0x6dab74
    core::dimension2d<uint32_t> getVideoModeResolution(int index) const override;  // 0x6dab9c
    uint32_t getVideoModeDepth(int index) const override;                          // 0x6dac00
    const core::dimension2d<uint32_t>& getDesktopResolution() const override;      // 0x6dac4c
    uint32_t getDesktopDepth() const override;                                     // 0x6dac54

private:
    // +0x04 is IReferenceCounted::referenceCounter (set to 1 by both constructors).
    std::vector<SVideoMode> m_modes;          // +0x08 begin, +0x0c end, +0x10 capacity end
    core::dimension2d<uint32_t> m_desktopResolution;  // +0x14
    uint32_t m_desktopDepth = 0;              // +0x1c
};

}  // namespace glitch::video
