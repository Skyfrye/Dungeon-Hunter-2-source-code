// Owner K2: the C2DDriver bodies that forward through the video driver's vtable. The member overloads work on the driver
// kept at +0x08; the overloads that take an IVideoDriver* first find the C2DDriver through driver +0xd4 (the device) and
// the device's +0x14 (the 2D driver created by IDevice::createGUIAndScene) and call the member overload.
#include <cmath>
#include <cstdlib>
#include <cstring>

#include "glitch-core-io/os/device.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace {
// driver +0xd4 -> device, device +0x14 -> the 2D driver.
C2DDriver* get2DDriver(IVideoDriver* driver) { return static_cast<C2DDriver*>(driver->m_device->unk_14); }
}  // namespace

// 0x59f05c _ZN6glitch5video9C2DDriver10draw2DLineERKNS_4core10position2dIiEES6_NS0_6SColorE
// A tail call into the driver's vtable slot +0x2c (draw2DLine).
void C2DDriver::draw2DLine(const core::position2d<int32_t>& start, const core::position2d<int32_t>& end, SColor color) {
    m_driver->draw2DLine(start, end, color);  // +0x08
}

// 0x59f084 _ZN6glitch5video9C2DDriver15draw2DRectangleERKNS_4core4rectIiEES6_PKNS0_6SColorEPS5_
// A tail call into the driver's vtable slot +0x34 (draw2DRectangle).
void C2DDriver::draw2DRectangle(const core::rect<int32_t>& position, const core::rect<int32_t>& clip, const SColor* colors,
                                const core::rect<int32_t>* clipRect) {
    m_driver->draw2DRectangle(position, clip, colors, clipRect);  // +0x08
}

// 0x59f114 _ZN6glitch5video9C2DDriver13draw2DPolygonENS_4core10position2dIiEEfNS0_6SColorEi
// Draws the outline of a regular polygon as vertexCount line segments: the points lie on a circle of the given radius
// around the centre, point i at the angle i / vertexCount * 6.2832 with x from sin and y from cos (truncated to int).
// The first point is remembered and the last segment closes the figure.
void C2DDriver::draw2DPolygon(core::position2d<int32_t> center, float radius, SColor color, int32_t vertexCount) {
    core::position2d<int32_t> first{0, 0};     // v22 / v23
    core::position2d<int32_t> current{0, 0};   // v20 / v21
    core::position2d<int32_t> previous{0, 0};  // v18 / v19
    if (vertexCount > 0) {
        int32_t previousX = 0;
        int32_t previousY = 0;
        int32_t i = 0;
        while (true) {
            previous.X = previousX;
            previous.Y = previousY;
            const float angle = (static_cast<float>(i) / static_cast<float>(vertexCount)) * 6.2832f;
            const int32_t dx = static_cast<int32_t>(radius * sinf(angle));
            const float cosine = cosf(angle);
            current.X = dx + center.X;
            current.Y = static_cast<int32_t>(radius * cosine) + center.Y;
            if (i != 0) {
                ++i;
                m_driver->draw2DLine(current, previous, color);
                if (i == vertexCount) {
                    m_driver->draw2DLine(current, first, color);
                    return;
                }
            } else {
                first = current;
                i = 1;
                if (vertexCount == 1) {
                    m_driver->draw2DLine(current, first, color);
                    return;
                }
            }
            previousX = current.X;
            previousY = current.Y;
        }
    }
    m_driver->draw2DLine(current, first, color);
}

// 0x59f264 _ZN6glitch5video9C2DDriver13draw2DPolygonEPNS0_12IVideoDriverENS_4core10position2dIiEEfNS0_6SColorEi
void C2DDriver::draw2DPolygon(IVideoDriver* driver, core::position2d<int32_t> center, float radius, SColor color,
                              int32_t vertexCount) {
    get2DDriver(driver)->draw2DPolygon(center, radius, color, vertexCount);
}

// 0x59f38c _ZN6glitch5video9C2DDriver12freeTexturesEPNS0_12IVideoDriverE
void C2DDriver::freeTextures(IVideoDriver* driver) { get2DDriver(driver)->freeTextures(); }

// 0x59f600 _ZN6glitch5video9C2DDriver12set2DTextureEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEEb
boost::intrusive_ptr<CMaterial> C2DDriver::set2DTexture(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                                                        bool alpha) {
    return get2DDriver(driver)->set2DTexture(texture, alpha);
}

// 0x59f61c _ZN6glitch5video9C2DDriver15draw2DRectangleERKNS_4core4rectIiEENS0_6SColorES7_S7_S7_PS5_
// Binds the 2D material with no texture (the returned material handle is dropped at once), then draws the rectangle with
// the four corner colours in the order left-up, right-up, right-down, left-down and an empty source rectangle.
void C2DDriver::draw2DRectangle(const core::rect<int32_t>& position, SColor colorLeftUp, SColor colorRightUp,
                                SColor colorLeftDown, SColor colorRightDown, const core::rect<int32_t>* clip) {
    const boost::intrusive_ptr<ITexture> noTexture;
    set2DTexture(noTexture, false);
    SColor colors[4];
    colors[0] = colorLeftUp;
    colors[1] = colorRightUp;
    colors[2] = colorRightDown;
    colors[3] = colorLeftDown;
    core::rect<int32_t> source{};
    m_driver->draw2DRectangle(position, source, colors, clip);  // +0x08, slot +0x34
}

// 0x59f780 _ZN6glitch5video9C2DDriver15draw2DRectangleEPNS0_12IVideoDriverERKNS_4core4rectIiEENS0_6SColorES9_S9_S9_PS7_
void C2DDriver::draw2DRectangle(IVideoDriver* driver, const core::rect<int32_t>& position, SColor colorLeftUp,
                                SColor colorRightUp, SColor colorLeftDown, SColor colorRightDown,
                                const core::rect<int32_t>* clip) {
    get2DDriver(driver)->draw2DRectangle(position, colorLeftUp, colorRightUp, colorLeftDown, colorRightDown, clip);
}

// 0x59f79c _ZN6glitch5video9C2DDriver15draw2DRectangleENS0_6SColorERKNS_4core4rectIiEEPS6_
// The same fill with one colour in all four corners.
void C2DDriver::draw2DRectangle(SColor color, const core::rect<int32_t>& position, const core::rect<int32_t>* clip) {
    const boost::intrusive_ptr<ITexture> noTexture;
    set2DTexture(noTexture, false);
    SColor colors[4] = {color, color, color, color};
    core::rect<int32_t> source{};
    m_driver->draw2DRectangle(position, source, colors, clip);  // +0x08, slot +0x34
}

// 0x59f87c _ZN6glitch5video9C2DDriver15draw2DRectangleEPNS0_12IVideoDriverENS0_6SColorERKNS_4core4rectIiEEPS8_
void C2DDriver::draw2DRectangle(IVideoDriver* driver, SColor color, const core::rect<int32_t>& position,
                                const core::rect<int32_t>* clip) {
    get2DDriver(driver)->draw2DRectangle(color, position, clip);
}

// 0x59f894 _ZN6glitch5video9C2DDriver11draw2DImageERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core4rectIiEESC_PSB_PKNS0_6SColorEb
// Binds the texture to the 2D material, then draws the destination rectangle with the source rectangle; without a colour
// array all four corners are white (0xff in every byte).
void C2DDriver::draw2DImage(const boost::intrusive_ptr<ITexture>& texture, const core::rect<int32_t>& destination,
                            const core::rect<int32_t>& source, const core::rect<int32_t>* clip, const SColor* colors,
                            bool useAlpha) {
    set2DTexture(texture, useAlpha);
    if (colors != nullptr) {
        m_driver->draw2DRectangle(destination, source, colors, clip);
        return;
    }
    SColor white[4] = {SColor{0xffffffffu}, SColor{0xffffffffu}, SColor{0xffffffffu}, SColor{0xffffffffu}};  // memset 0xff
    m_driver->draw2DRectangle(destination, source, white, clip);
}

// 0x59f970 _ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core4rectIiEESE_PSD_PKNS0_6SColorEb
void C2DDriver::draw2DImage(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                            const core::rect<int32_t>& destination, const core::rect<int32_t>& source,
                            const core::rect<int32_t>* clip, const SColor* colors, bool useAlpha) {
    get2DDriver(driver)->draw2DImage(texture, destination, source, clip, colors, useAlpha);
}

// 0x59f990 _ZN6glitch5video9C2DDriver11draw2DImageERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNS8_4rectIiEEPSF_NS0_6SColorEb
// The destination rectangle starts at the position and has the size of the source rectangle (absolute differences); one
// colour is used for all four corners.
void C2DDriver::draw2DImage(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& destination,
                            const core::rect<int32_t>& source, const core::rect<int32_t>* clip, SColor color,
                            bool useAlpha) {
    set2DTexture(texture, useAlpha);
    SColor colors[4] = {color, color, color, color};
    core::rect<int32_t> target;
    target.UpperLeftCorner.X = destination.X;
    target.UpperLeftCorner.Y = destination.Y;
    target.LowerRightCorner.X = std::abs(source.LowerRightCorner.X - source.UpperLeftCorner.X) + destination.X;
    target.LowerRightCorner.Y = std::abs(source.LowerRightCorner.Y - source.UpperLeftCorner.Y) + destination.Y;
    m_driver->draw2DRectangle(target, source, colors, clip);
}

// 0x59fa80 _ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNSA_4rectIiEEPSH_NS0_6SColorEb
void C2DDriver::draw2DImage(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                            const core::position2d<int32_t>& destination, const core::rect<int32_t>& source,
                            const core::rect<int32_t>* clip, SColor color, bool useAlpha) {
    get2DDriver(driver)->draw2DImage(texture, destination, source, clip, color, useAlpha);
}

// 0x59fa94 _ZN6glitch5video9C2DDriver11draw2DImageERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKSt6vectorINS8_4rectIiEENS8_10SAllocatorISF_LNS_6memory13E_MEMORY_HINTE0EEEERKSD_IiNSG_IiLSI_0EEEEiPSB_NS0_6SColorEb
// Draws a sequence of source rectangles (glyphs): for each index the rectangle is drawn at the running position, and the
// position then advances by that rectangle's width plus the extra spacing.
void C2DDriver::draw2DImage(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& destination,
                            const std::vector<core::rect<int32_t>, core::SAllocator<core::rect<int32_t>>>& sources,
                     const std::vector<int32_t, core::SAllocator<int32_t>>& indices,
                            int32_t count, const core::rect<int32_t>* clip, SColor color, bool useAlpha) {
    core::position2d<int32_t> position = destination;
    if (indices.size() != 0) {
        uint32_t i = 0;
        bool done;
        do {
            draw2DImage(texture, position, sources[indices[i]], clip, color, useAlpha);
            const int32_t index = indices[i++];
            done = i >= indices.size();
            position.X = sources[index].LowerRightCorner.X + position.X - sources[index].UpperLeftCorner.X + count;  // +0x08, +0x00
        } while (!done);
    }
}

// 0x59fb58 _ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKSt6vectorINSA_4rectIiEENSA_10SAllocatorISH_LNS_6memory13E_MEMORY_HINTE0EEEERKSF_IiNSI_IiLSK_0EEEEiPSD_NS0_6SColorEb
void C2DDriver::draw2DImage(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                            const core::position2d<int32_t>& destination,
                            const std::vector<core::rect<int32_t>, core::SAllocator<core::rect<int32_t>>>& sources,
                            const std::vector<int32_t, core::SAllocator<int32_t>>& indices, int32_t count, const core::rect<int32_t>* clip,
                            SColor color, bool useAlpha) {
    get2DDriver(driver)->draw2DImage(texture, destination, sources, indices, count, clip, color, useAlpha);
}

// 0x59fb78 _ZN6glitch5video9C2DDriver11draw2DImageERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEE
// The whole texture (source rectangle 0, 0, width, height from texture +0x20 / +0x24) at the position, opaque white, no clip.
void C2DDriver::draw2DImage(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& destination) {
    core::rect<int32_t> source;
    source.UpperLeftCorner.X = 0;
    source.UpperLeftCorner.Y = 0;
    source.LowerRightCorner.X = static_cast<int32_t>(texture->m_width);   // +0x20
    source.LowerRightCorner.Y = static_cast<int32_t>(texture->m_height);  // +0x24
    draw2DImage(texture, destination, source, nullptr, SColor{0xffffffffu}, false);
}

// 0x59fbd4 _ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEE
void C2DDriver::draw2DImage(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                            const core::position2d<int32_t>& destination) {
    get2DDriver(driver)->draw2DImage(texture, destination);
}

}  // namespace glitch::video
