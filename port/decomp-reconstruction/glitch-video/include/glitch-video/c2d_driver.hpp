// glitch::video::C2DDriver: the 2D drawing helper of a video driver. Canonical definition (engine unification wave
// u1-video); the earlier version here was not reference counted, but the binary derives it from glitch::IReferenceCounted.
//
// Layout of the original object (32-bit; constructor 0x59efb4 C2 / 0x59f008 C1 share one body):
//   +0x00  vptr (vtable 0x9770c0, 20 bytes: ~C2DDriver D1 0x59f2a0, D0 0x59f2e4, onDelete inherited)
//   +0x04  reference count, set to 1 by the constructor
//   +0x08  IVideoDriver*           +0x0c, +0x10  words       +0x14  uint16      +0x18  word
//   +0x1c  uint16                  +0x1e  uint8
// The overloads that take an IVideoDriver* as their first argument are static in the original (the listings pass the
// driver explicitly); the others are members that forward to them with +0x08 and are reached through the driver's device
// (driver +0xd4, vtable +0x14).
#pragma once

#include <cstdint>
#include <vector>

#include "core-platform/stlport_alloc.hpp"  // core::SAllocator: the vector overloads mangle it
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-shared/glitch_core.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

class C2DDriver : public glitch::IReferenceCounted {
public:
    // 0x59efb4 (C2) / 0x59f008 (C1).
    explicit C2DDriver(IVideoDriver* driver);
    ~C2DDriver() override = default;  // 0x59f2a0 (D1) / 0x59f2e4 (D0)

    // ---- member overloads (declared only: their bodies call the IVideoDriver slots through the device) ----
    void draw2DLine(const core::position2d<int32_t>& start, const core::position2d<int32_t>& end, SColor color);  // 0x59f05c
    void draw2DRectangle(const core::rect<int32_t>& position, const core::rect<int32_t>& clip, const SColor* colors,
                         const core::rect<int32_t>* clipRect);                                                     // 0x59f084
    void draw2DPolygon(core::position2d<int32_t> center, float radius, SColor color, int32_t vertexCount);        // 0x59f114
    void freeTextures();                                                                                        // 0x59f300
    void init();                                                                                                // 0x59f398
    boost::intrusive_ptr<CMaterial> get2DMaterial(const boost::intrusive_ptr<ITexture>& texture, bool alpha);   // 0x59f4e4
    boost::intrusive_ptr<CMaterial> set2DTexture(const boost::intrusive_ptr<ITexture>& texture, bool alpha);                               // 0x59f5bc
    void draw2DRectangle(const core::rect<int32_t>& position, SColor colorLeftUp, SColor colorRightUp,
                         SColor colorLeftDown, SColor colorRightDown, const core::rect<int32_t>* clip);        // 0x59f61c
    void draw2DRectangle(SColor color, const core::rect<int32_t>& position, const core::rect<int32_t>* clip); // 0x59f79c
    void draw2DImage(const boost::intrusive_ptr<ITexture>& texture, const core::rect<int32_t>& destination,
                     const core::rect<int32_t>& source, const core::rect<int32_t>* clip, const SColor* colors,
                     bool useAlpha);                                                                           // 0x59f894
    void draw2DImage(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& destination,
                     const core::rect<int32_t>& source, const core::rect<int32_t>* clip, SColor color,
                     bool useAlpha);                                                                           // 0x59f990
    void draw2DImage(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& destination,
                     const std::vector<core::rect<int32_t>, core::SAllocator<core::rect<int32_t>>>& sources,
                     const std::vector<int32_t, core::SAllocator<int32_t>>& indices,
                     int32_t count, const core::rect<int32_t>* clip, SColor color, bool useAlpha);             // 0x59fa94
    void draw2DImage(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& destination);  // 0x59fb78

    // ---- static overloads: the driver is the first argument ----
    static void draw2DLine(IVideoDriver* driver, const core::position2d<int32_t>& start,
                           const core::position2d<int32_t>& end, SColor color);                                // 0x59f0b0
    static void draw2DRectangle(IVideoDriver* driver, const core::rect<int32_t>& position, const core::rect<int32_t>& clip,
                                const SColor* colors, const core::rect<int32_t>* clipRect);                    // 0x59f0d0
    static void draw2DPolygon(IVideoDriver* driver, core::position2d<int32_t> center, float radius, SColor color,
                              int32_t vertexCount);                                                            // 0x59f264
    static void freeTextures(IVideoDriver* driver);                                                            // 0x59f38c
    static boost::intrusive_ptr<CMaterial> get2DMaterial(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                                                         bool alpha);                                          // 0x59f5a0
    static boost::intrusive_ptr<CMaterial> set2DTexture(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture, bool alpha);  // 0x59f600
    static void draw2DRectangle(IVideoDriver* driver, const core::rect<int32_t>& position, SColor colorLeftUp,
                                SColor colorRightUp, SColor colorLeftDown, SColor colorRightDown,
                                const core::rect<int32_t>* clip);                                              // 0x59f780
    static void draw2DRectangle(IVideoDriver* driver, SColor color, const core::rect<int32_t>& position,
                                const core::rect<int32_t>* clip);                                              // 0x59f87c
    static void draw2DImage(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                            const core::rect<int32_t>& destination, const core::rect<int32_t>& source,
                            const core::rect<int32_t>* clip, const SColor* colors, bool useAlpha);             // 0x59f970
    static void draw2DImage(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                            const core::position2d<int32_t>& destination, const core::rect<int32_t>& source,
                            const core::rect<int32_t>* clip, SColor color, bool useAlpha);                     // 0x59fa80
    static void draw2DImage(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                            const core::position2d<int32_t>& destination,
                            const std::vector<core::rect<int32_t>, core::SAllocator<core::rect<int32_t>>>& sources,
                            const std::vector<int32_t, core::SAllocator<int32_t>>& indices, int32_t count, const core::rect<int32_t>* clip,
                            SColor color, bool useAlpha);                                                      // 0x59fb58
    static void draw2DImage(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                            const core::position2d<int32_t>& destination);                                     // 0x59fbd4

    // +0x04 is IReferenceCounted::referenceCounter.
    IVideoDriver* m_driver = nullptr;  // +0x08, the driver passed to the constructor
    // The three 2D materials, made by init (0x59f398) from the renderer manager's built-in types, and the id of the texture parameter of the
    // last two.
    boost::intrusive_ptr<CMaterial> m_untexturedMaterial;  // +0x0c, type 4 (Unlit Non Textured Blend Material Color)
    boost::intrusive_ptr<CMaterial> m_alphaMaterial;       // +0x10, type 10 (texture alpha, no culling, no depth)
    uint16_t m_alphaTextureParameter = 0;                  // +0x14
    boost::intrusive_ptr<CMaterial> m_texturedMaterial;    // +0x18, type 7 (Unlit Textured Blend No Depth)
    uint16_t m_texturedTextureParameter = 0;               // +0x1c
    uint8_t m_initialized = 0;                             // +0x1e, set by init
};

}  // namespace glitch::video
