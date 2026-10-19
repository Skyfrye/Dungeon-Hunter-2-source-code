// glitch::video::CImage: a software image (pixel data with an optional mip chain). Canonical definition (engine
// unification wave u1-video); the stand-in in glitch-core-io (deps/glitch_core_objects.hpp) is replaced by it. The class
// of the same name in glitch-scene-collada-gui (tb/glitch_collada_CImage.hpp) is glitch::collada::CImage, a different class.
//
// Layout of the original object (32-bit; constructors 0x602028 C2 / 0x60209c C1 (format, size, hasMips), 0x6021f8 /
// 0x602434 (format, size, data, mip data, copy, own), 0x602670 .. 0x602938 and the sub-image / convert forms 0x601b10,
// 0x601d38; initData 0x601988; size 0x2c):
//
// The two trailing bools of the data-taking constructors, read off the listings (0x6026dc/0x602704, 0x60226c/0x60239c,
// 0x60285c/0x602868): the FIRST one set means "adopt the caller's block" - the constructor stores 0x0badf00d into the
// data pointer before initData so that initData's "allocate only when the pointer is null" test fails, and then stores
// the caller's pointer over it - and the SECOND one is stored into m_ownsData, which only decides whether the
// destructor frees the block. The first bool CLEAR means initData allocates and the caller's bytes are copied in. The
// parameter names below are the port's; the verified meaning is the one above.
//   +0x00  vptr (vtable 0x978248: the destructor pair and onDelete, nothing else)
//   +0x04  reference count; the constructors store 0
//   +0x08  pixel data (uint8_t*)             +0x0c  null-terminated array of the mip level pointers (levels 1..n)
//   +0x10  width     +0x14  height           +0x18  pitch in bytes      +0x1c  data size in bytes
//   +0x20  E_PIXEL_FORMAT                    +0x24  number of mip levels below level 0
//   +0x28  uint8, the image has a mip chain  +0x29  uint8, the image owns its data (the destructor frees it)
//   The blit dispatcher (0x600948) reads a clip rectangle's left and top from +0x14 and +0x18 (the loads at
//   0x600cf4 and 0x600d20) - the words this port models as m_pitch and m_dataSize. The constructor 0x602028
//   zeroes both (0x602078/0x60207c), so on a freshly built image the dispatcher sees a zero clip rectangle; that
//   is reproduced here by the separate m_clip member below, which starts zeroed and that a caller can set through
//   setClipRect. Nothing else in the reconstructed tree writes those words before a blit.
#pragma once

#include <cstdint>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-shared/glitch_core.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

class CImage : public glitch::IReferenceCounted {
public:
    // Port helper (not an original function): sets the base size only, for tests of getDimension.
    CImage(uint32_t width, uint32_t height) : m_width(width), m_height(height) {}

    // 0x602028 (C2) / 0x60209c (C1), and the other constructors of the queue: 0x602110 / 0x602184 (format, size),
    // 0x6021f8 / 0x602434 (format, size, data, mip data, copy, own), 0x602670 / 0x60272c (format, size, data, copy, own),
    // 0x6027e8 / 0x602938 (format, size, data, size in bytes, mip level count, copy, own), 0x601b10 / 0x601c24
    // (sub-image) and 0x601d38 / 0x601eb0 (format conversion). Each pair is one body in the original, so each pair is
    // one definition here. The destructors (0x601804 D1, 0x6018b8 D2, 0x60196c D0) free the data and the mip chain
    // when the image owns them.
    CImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size, bool hasMipmaps);
    CImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size);
    CImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size, void* data, void** mipData, bool copy, bool own);
    CImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size, void* data, bool copy, bool own);
    // The last two unsigned arguments are the byte size of the buffer (stored at +0x1c) and the number of mip levels
    // below level 0 (stored at +0x24) - not a pitch and a size, which is what the earlier comment claimed. The DDS
    // loader (0x60486c) passes computeSizeInBytes(...) and the header's mipmapCount - 1; the listing of the
    // constructor stores them exactly there. The buffer holds every level back to back and +0x0c is filled with
    // pointers into it.
    CImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size, void* data, uint32_t dataSize, uint32_t mipLevels,
           bool copy, bool own);
    CImage(const boost::intrusive_ptr<CImage>& source, const core::position2d<int32_t>& position,
           const core::dimension2d<int32_t>& size);
    CImage(E_PIXEL_FORMAT format, const boost::intrusive_ptr<CImage>& source);

    // 0x601804 (D1) / 0x6018b8 (D2, the same body) / 0x60196c (D0, the deleting form the compiler generates).
    // Releases the pixel block and the mip chain, but only when m_ownsData is set.
    ~CImage() override;

    // 0x601988: computes the pitch and size, allocates the data and (with a mip flag) the mip chain. Declared only.
    void initData(bool allocateMips);

    // 0x5ff638: dimension of the given mip level; zero-sized axes stay zero.
    core::dimension2d<uint32_t> getDimension(uint32_t mipLevel) const;

    // 0x5ff680 / 0x5ff808 / 0x5ff9b4: single pixel write and read, and a fill. setPixel is its own format switch
    // over m_data/m_pitch (the listing calls no helper).
    void setPixel(uint32_t x, uint32_t y, const SColor& color);
    SColor getPixel(uint32_t x, uint32_t y) const;
    void fill(const SColor& color);
    // 0x600104 / 0x600e1c: Bresenham line (self-contained, clipped) and a rectangle fill through the blit
    // dispatcher.
    void drawLine(const core::position2d<int32_t>& from, const core::position2d<int32_t>& to, const SColor& color);
    void drawRectangle(const core::rect<int32_t>& rect, const SColor& color);
    // 0x600708 / 0x60090c / 0x600ed0: blits to another image (with a clip rect, an alpha colour). Note the
    // direction the listing has: for the two copyTo forms the intrusive_ptr argument is the WRITE side (it
    // supplies the mip-level guard, the default clip rectangle and the destination pitch/format) and `this` is
    // the pixel READ side. They transfer through pixel_format::convert, whose same-format copy branch (0x5ee40c)
    // is reconstructed, so a same-format copy moves real bytes.
    void copyTo(const boost::intrusive_ptr<CImage>& target, const core::position2d<int32_t>& position,
                const core::rect<int32_t>& source, const core::rect<int32_t>* clip, uint32_t flags);
    void copyTo(const boost::intrusive_ptr<CImage>& target, const core::position2d<int32_t>& position, uint32_t flags);
    void copyToWithAlpha(const boost::intrusive_ptr<CImage>& target, const core::position2d<int32_t>& position,
                         const core::rect<int32_t>& source, const SColor& color, const core::rect<int32_t>* clip);
    // 0x600fcc / 0x60177c / 0x601800: scaling blits (box filter; 0x601800 is a one-instruction branch to
    // 0x60177c).
    void copyToScaling(void* target, uint32_t width, uint32_t height, E_PIXEL_FORMAT format, uint32_t pitch, int32_t flags);
    void copyToScaling(const boost::intrusive_ptr<CImage>& target, int32_t flags);
    void copyToScalingBoxFilter(const boost::intrusive_ptr<CImage>& target, int32_t flags);

    // Port helper for the clip rectangle the blit dispatcher reads (see the layout note above). The original has
    // no reconstructed writer for it yet; the dispatcher reads it through this member.
    void setClipRect(const core::rect<int32_t>& clip) { m_clip = clip; }
    const core::rect<int32_t>& getClipRect() const { return m_clip; }

    // +0x04 is IReferenceCounted::referenceCounter.
    uint8_t* m_data = nullptr;          // +0x08
    void** m_mipData = nullptr;         // +0x0c
    uint32_t m_width = 0;               // +0x10
    uint32_t m_height = 0;              // +0x14
    uint32_t m_pitch = 0;               // +0x18
    uint32_t m_dataSize = 0;            // +0x1c
    E_PIXEL_FORMAT m_format = 0;        // +0x20
    uint32_t m_mipLevels = 0;           // +0x24
    uint8_t m_hasMipmaps = 0;           // +0x28
    uint8_t m_ownsData = 1;             // +0x29
    // The clip rectangle the blit dispatcher reads from the ORIGINAL's +0x14/+0x18 (see the layout note above).
    // It is kept last because it stands for words the reconstructed constructors already write through other
    // members, and because its own writer is not recovered.
    core::rect<int32_t> m_clip;
};

}  // namespace glitch::video
