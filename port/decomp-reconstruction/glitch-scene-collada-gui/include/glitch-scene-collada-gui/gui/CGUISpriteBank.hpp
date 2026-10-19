// glitch::gui::IGUISpriteBank and CGUISpriteBank: a bank of textures, source rectangles and sprites (lists of frames) that the GUI draws
// from. Canonical header of the scene-owner wave (gui family). It replaces the IGUISpriteBank / CGUISpriteBank stand-ins of
// gui_simple_accessors.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUISpriteBank destructors 0x54f78c / 0x54fd2c, CGUISpriteBank constructors 0x54f790
// (C1) / 0x54f820 (C2), destructors 0x54fbc0 / 0x54fc68 / 0x54fd10; tools/decomp_vtable.py glitch::gui::CGUISpriteBank, 48 bytes, no virtual
// base: the vptr is followed by the reference count):
//   +0x00 vptr, +0x04 count (1)   +0x08 sprites (std::vector<SGUISprite>, 16-byte entries)   +0x14 source rectangles (std::vector<rect<int>>)
//   +0x20 textures (std::vector<intrusive_ptr<ITexture>>)   +0x2c environment   +0x30 video driver (a use is held)
// Slots: K 0x00 / 0x04 destructors, 0x08 onDelete, 0x0c getPositions, 0x10 getSprites, 0x14 getTextureCount, 0x18 getTexture, 0x1c addTexture,
// 0x20 setTexture, 0x24 draw2DSprite.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-shared/glitch_core.hpp"

namespace glitch::video {
class ITexture;
class IVideoDriver;
}  // namespace glitch::video

namespace glitch::gui {

class IGUIEnvironment;

// One frame of a sprite: a texture of the bank and a rectangle of the bank (8 bytes).
struct SGUISpriteFrame {
    std::uint32_t textureNumber = 0;  // +0x00
    std::uint32_t rectNumber = 0;     // +0x04
};

// A sprite (16 bytes): its frames (a vector, 12 bytes) and the time one frame is shown.
struct SGUISprite {
    std::vector<SGUISpriteFrame> Frames;  // +0x00
    std::uint32_t frameTime = 0;          // +0x0c
};

class IGUISpriteBank : public IReferenceCounted {
public:
    // 0x54f78c (D1), 0x54fd2c (D0, skipped): empty.
    ~IGUISpriteBank() override;

    virtual std::vector<core::rect<int>>& getPositions() = 0;                                               // K 0x0c
    virtual std::vector<SGUISprite>& getSprites() = 0;                                                      // K 0x10
    virtual std::uint32_t getTextureCount() const = 0;                                                      // K 0x14
    virtual boost::intrusive_ptr<video::ITexture> getTexture(std::uint32_t index) const = 0;                // K 0x18
    virtual void addTexture(const boost::intrusive_ptr<video::ITexture>& texture) = 0;                      // K 0x1c
    virtual void setTexture(std::uint32_t index, const boost::intrusive_ptr<video::ITexture>& texture) = 0;  // K 0x20
    virtual void draw2DSprite(std::uint32_t index, const core::position2d<int>& position, const core::rect<int>* clip,
                              const video::SColor& color, std::uint32_t startTime, std::uint32_t currentTime, bool loop,
                              bool center) = 0;                                                             // K 0x24
};

class CGUISpriteBank : public IGUISpriteBank {
public:
    // 0x54f790 (C1) and 0x54f820 (C2): the count starts at 1, the lists empty; with an environment the bank keeps a use of its video driver
    // (environment K 0x20).
    explicit CGUISpriteBank(IGUIEnvironment* environment);
    // 0x54fbc0 (D1), 0x54fc68 (D2), 0x54fd10 (D0, skipped): releases the textures, the driver and the lists.
    ~CGUISpriteBank() override;

    // 0x54f8b0 / 0x54f8b8: the rectangle list (+0x14) and the sprite list (+0x08).
    std::vector<core::rect<int>>& getPositions() override;
    std::vector<SGUISprite>& getSprites() override;
    // 0x54f8c0: the number of textures (+0x20 list).
    std::uint32_t getTextureCount() const override;
    // 0x54f8d4: a use of the texture at the index, null when the index is out of range.
    boost::intrusive_ptr<video::ITexture> getTexture(std::uint32_t index) const override;
    // 0x54fe14 / 0x54fe5c: append; replace (growing the list with null entries first).
    void addTexture(const boost::intrusive_ptr<video::ITexture>& texture) override;
    void setTexture(std::uint32_t index, const boost::intrusive_ptr<video::ITexture>& texture) override;
    // 0x54f930: draws the frame of the sprite for the time: frame = (currentTime - startTime) / frameTime, wrapped when `loop`, else clamped
    // to the last one; `center` puts the middle of the rectangle on the position.
    void draw2DSprite(std::uint32_t index, const core::position2d<int>& position, const core::rect<int>* clip, const video::SColor& color,
                      std::uint32_t startTime, std::uint32_t currentTime, bool loop, bool center) override;

    std::vector<SGUISprite> sprites;                          // +0x08
    std::vector<core::rect<int>> rectangles;                  // +0x14
    std::vector<boost::intrusive_ptr<video::ITexture>> textures;  // +0x20
    IGUIEnvironment* environment = nullptr;                   // +0x2c
    boost::intrusive_ptr<video::IVideoDriver> driver;         // +0x30
};

}  // namespace glitch::gui
