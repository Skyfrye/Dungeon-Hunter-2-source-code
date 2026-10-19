#include "glitch-video/video_mode_list.hpp"

#include <utility>

#include "glitch-core-io/core/sort.hpp"

namespace glitch::video {

// 0x6dab0c _ZN6glitch5video14CVideoModeListC1Ev
// 0x6daabc _ZN6glitch5video14CVideoModeListC2Ev
// +0x04 is set to 1 (IReferenceCounted's initial count); the rest is zeroed as in the original.
CVideoModeList::CVideoModeList() = default;

CVideoModeList::CVideoModeList(std::vector<SVideoMode> modes,
                               core::dimension2d<uint32_t> desktopResolution, uint32_t desktopDepth)
    : m_modes(std::move(modes)), m_desktopResolution(desktopResolution), m_desktopDepth(desktopDepth) {}

// 0x6dab5c _ZN6glitch5video14CVideoModeList10setDesktopEiRKNS_4core11dimension2dIiEE
void CVideoModeList::setDesktop(int depth, const core::dimension2d<uint32_t>& resolution) {
    m_desktopDepth = static_cast<uint32_t>(depth);
    m_desktopResolution = resolution;
}

// 0x6dae50 _ZN6glitch5video14CVideoModeListD1Ev
// The original frees the mode array; the std::vector member does the same.
// (The deleting variant _ZN6glitch5video14CVideoModeListD0Ev is compiler generated.)

// 0x6dae90 _ZN6glitch5video14CVideoModeList7addModeERKNS_4core11dimension2dIiEEi
// Appends a mode unless the same resolution and depth are listed, then heapsorts the list
// (SVideoMode operator<) when it holds more than one entry, as the original does.
void CVideoModeList::addMode(const core::dimension2d<uint32_t>& resolution, uint32_t depth) {
    for (const SVideoMode& mode : m_modes) {
        if (mode.Resolution.Width == resolution.Width && mode.Resolution.Height == resolution.Height &&
            mode.Depth == depth) {
            return;
        }
    }
    m_modes.push_back(SVideoMode{resolution, depth});
    if (m_modes.size() > 1) {
        glitch::core::heapsort(m_modes.data(), static_cast<int>(m_modes.size()));
    }
}

// 0x6dab74 _ZNK6glitch5video14CVideoModeList17getVideoModeCountEv
uint32_t CVideoModeList::getVideoModeCount() const {
    return static_cast<uint32_t>(m_modes.size());
}

// 0x6dab9c _ZNK6glitch5video14CVideoModeList22getVideoModeResolutionEi
// Original checks index <= count, which reads one element past the end.
// This port uses index < count and returns an empty size for anything outside.
core::dimension2d<uint32_t> CVideoModeList::getVideoModeResolution(int index) const {
    if (index >= 0 && static_cast<size_t>(index) < m_modes.size()) {
        return m_modes[static_cast<size_t>(index)].Resolution;
    }
    return {};
}

// 0x6dac00 _ZNK6glitch5video14CVideoModeList17getVideoModeDepthEi
uint32_t CVideoModeList::getVideoModeDepth(int index) const {
    if (index >= 0 && static_cast<size_t>(index) < m_modes.size()) {
        return m_modes[static_cast<size_t>(index)].Depth;
    }
    return 0;
}

// 0x6dac4c _ZNK6glitch5video14CVideoModeList20getDesktopResolutionEv
const core::dimension2d<uint32_t>& CVideoModeList::getDesktopResolution() const {
    return m_desktopResolution;
}

// 0x6dac54 _ZNK6glitch5video14CVideoModeList15getDesktopDepthEv
uint32_t CVideoModeList::getDesktopDepth() const { return m_desktopDepth; }

}  // namespace glitch::video
