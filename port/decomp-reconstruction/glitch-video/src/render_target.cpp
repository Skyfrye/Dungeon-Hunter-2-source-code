// IRenderTarget constructor and viewport clamp. The rectangle words are read in the order UL.X, UL.Y, LR.X, LR.Y.
#include "glitch-video/render_target.hpp"

#include "glitch-video/video_driver.hpp"

namespace glitch::video {

// 0x6dc4e8 _ZN6glitch5video13IRenderTargetC2EPNS0_12IVideoDriverERKNS_4core11dimension2dIiEE
// 0x6dc548 _ZN6glitch5video13IRenderTargetC1EPNS0_12IVideoDriverERKNS_4core11dimension2dIiEE
IRenderTarget::IRenderTarget(IVideoDriver* driver, const core::dimension2d<int32_t>& size)
    : m_driver(driver), m_width(size.Width), m_height(size.Height) {
    referenceCounter = 0;
    m_viewport.UpperLeftCorner.X = 0;
    m_viewport.UpperLeftCorner.Y = 0;
    m_viewport.LowerRightCorner.X = size.Width;
    m_viewport.LowerRightCorner.Y = size.Height;
}

// 0x6dc5a8 glitch::video::IRenderTarget::setViewport(glitch::core::rect<int> const&)
void IRenderTarget::setViewport(const core::rect<int32_t>& rect) {
    m_viewport = rect;  // a1[5..8] = a2[0..3]

    // Far corner: x1 is limited to the width, y1 to the height.
    auto& ul = m_viewport.UpperLeftCorner;
    auto& lr = m_viewport.LowerRightCorner;
    if (m_width < lr.X) lr.X = m_width;
    if (m_height < lr.Y) lr.Y = m_height;

    // Near corner: x0 and y0 are raised to 0, then pulled back to the far corner.
    if (ul.X < 0) ul.X = 0;
    if (ul.Y < 0) ul.Y = 0;
    if (ul.Y > lr.Y) ul.Y = lr.Y;
    if (ul.X > lr.X) ul.X = lr.X;

    // When this target is the driver's current one (the last entry of the driver's target stack), the clamped
    // rectangle is handed to the driver (vtable +0x1e8, setViewportImpl).
    if (m_driver != nullptr && !m_driver->m_renderTargets.empty() &&
        m_driver->m_renderTargets.back().get() == this) {
        m_driver->setViewportImpl(m_viewport);
    }
}

}  // namespace glitch::video
