// glitch::video::IRenderTarget and IRenderBuffer: the render-target base classes the driver keeps on its target stack.
// Canonical definitions (engine unification wave u1-video); the forward declarations elsewhere are replaced by this
// header.
//
// IRenderTarget layout (32-bit; constructors 0x6dc4e8 C2 / 0x6dc548 C1, size 0x24):
//   +0x00  vptr (vtable 0x98ae30, six slots)
//   +0x04  reference count; the constructor stores 0
//   +0x08  IVideoDriver*
//   +0x0c  width           +0x10  height           (the constructor's dimension2d argument)
//   +0x14  viewport rect (upper-left x, y, lower-right x, y); (0, 0, width, height) after construction
// Vtable: +0x00 ~IRenderTarget (D1 0x6dc4e4, D0 0x6dc670)  +0x04 deleting destructor  +0x08 onDelete
//         +0x0c setViewport(rect<int> const&) (0x6dc5a8)  +0x10 bind() (pure)  +0x14 unbind() (pure)
// IMultipleRenderTarget, CCommonGLDriverBase::CRenderTargetBase and IVideoDriver::IFramebuffer derive from it and add
// slots (CRenderTargetBase: +0x18 getColorFormat .. +0x30 removeTarget).
//
// IRenderBuffer: vptr, reference count at +0x04, one pure slot at +0x0c (named from CCommonGLDriver::CRenderBuffer
// 0x5b130c: unbind()); IVideoDriver::clearRenderBuffers calls it for every registered buffer.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-shared/glitch_core.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

class IRenderTarget : public glitch::IReferenceCounted {
public:
    using E_ATTACHMENT_TYPE = int32_t;  // IRenderTarget::E_ATTACHMENT_TYPE (values not recovered)

    // 0x6dc4e8 (C2) / 0x6dc548 (C1): stores the driver and the size; the viewport is (0, 0, width, height).
    IRenderTarget(IVideoDriver* driver, const core::dimension2d<int32_t>& size);
    // 0x6dc4e4 (D1: empty) / 0x6dc670 (D0).
    ~IRenderTarget() override = default;

    // 0x6dc5a8 (vtable +0x0c): stores the rectangle, clamps the far corner to the target size and the near corner to the
    // rectangle, then hands it to the driver (setViewportImpl, driver vtable +0x1e8) when this is the current target.
    virtual void setViewport(const core::rect<int32_t>& rect);
    virtual void bind() = 0;    // +0x10
    virtual void unbind() = 0;  // +0x14

    const core::rect<int32_t>& viewport() const { return m_viewport; }

    // +0x04 is IReferenceCounted::referenceCounter.
    IVideoDriver* m_driver = nullptr;   // +0x08, owning driver
    int32_t m_width = 0;                // +0x0c, target width
    int32_t m_height = 0;               // +0x10, target height
    core::rect<int32_t> m_viewport{};   // +0x14..+0x23: upper-left X, Y then lower-right X, Y
};

// IMultipleRenderTarget (vtable _ZTVN6glitch5video21IMultipleRenderTargetE, 60 bytes): IRenderTarget plus the attachment
// interface. Every slot after setViewport is pure (names and signatures from the CCommonGLDriverBase::CRenderTargetBase
// overrides, vtable +0x18 .. +0x30). Destructor D1 0x5af1d8, D0 0x5b0498.
class IMultipleRenderTarget : public IRenderTarget {
public:
    using IRenderTarget::IRenderTarget;
    ~IMultipleRenderTarget() override = default;
    virtual E_PIXEL_FORMAT getColorFormat() const = 0;                                                    // +0x18
    virtual void addTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<IRenderBuffer>& buffer) = 0;  // +0x1c
    virtual void addTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<ITexture>& texture,
                           E_TEXTURE_CUBE_MAP_FACE face, uint32_t level) = 0;                              // +0x20
    virtual void setTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<IRenderBuffer>& buffer,
                           uint32_t index) = 0;                                                            // +0x24
    virtual void setTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<ITexture>& texture,
                           E_TEXTURE_CUBE_MAP_FACE face, uint32_t level, uint32_t index) = 0;              // +0x28
    virtual int32_t getTargetCount(E_ATTACHMENT_TYPE type) const = 0;                                      // +0x2c
    virtual void removeTarget(E_ATTACHMENT_TYPE type, uint32_t index) = 0;                                 // +0x30
};

class IRenderBuffer : public glitch::IReferenceCounted {
public:
    ~IRenderBuffer() override = default;  // 0x5aefa0 (D1: empty), 0x5b04c0 (D0)
    virtual void unbind() = 0;            // +0x0c
};

}  // namespace glitch::video
