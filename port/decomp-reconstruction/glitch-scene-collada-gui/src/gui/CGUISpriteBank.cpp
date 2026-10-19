// Bodies of glitch::gui::IGUISpriteBank and CGUISpriteBank (canonical classes: gui/CGUISpriteBank.hpp). This file replaces the sprite bank
// bodies of gui_simple_accessors.cpp and recon/slice_03.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUISpriteBank.hpp"

#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

// 0x54f78c _ZN6glitch3gui14IGUISpriteBankD1Ev (D0 0x54fd2c skipped)
IGUISpriteBank::~IGUISpriteBank() = default;

// 0x54f790 _ZN6glitch3gui14CGUISpriteBankC1EPNS0_14IGUIEnvironmentE (C2 0x54f820)
CGUISpriteBank::CGUISpriteBank(IGUIEnvironment* env) : environment(env) {
    if (env != nullptr) {
        driver = boost::intrusive_ptr<video::IVideoDriver>(env->getVideoDriver(), true);  // K 0x20, a use is held
    }
}

// 0x54fbc0 _ZN6glitch3gui14CGUISpriteBankD1Ev (D2 0x54fc68, D0 0x54fd10 skipped)
// The textures are released one by one (each entry is cleared first), then the driver; the lists go with the members.
CGUISpriteBank::~CGUISpriteBank() {
    for (auto& texture : textures) {
        boost::intrusive_ptr<video::ITexture> released;
        released.swap(texture);
    }
}

// 0x54f8b0 _ZN6glitch3gui14CGUISpriteBank12getPositionsEv
std::vector<core::rect<int>>& CGUISpriteBank::getPositions() {
    return rectangles;
}

// 0x54f8b8 _ZN6glitch3gui14CGUISpriteBank10getSpritesEv
std::vector<SGUISprite>& CGUISpriteBank::getSprites() {
    return sprites;
}

// 0x54f8c0 _ZNK6glitch3gui14CGUISpriteBank15getTextureCountEv
std::uint32_t CGUISpriteBank::getTextureCount() const {
    return static_cast<std::uint32_t>(textures.size());
}

// 0x54f8d4 _ZNK6glitch3gui14CGUISpriteBank10getTextureEj
boost::intrusive_ptr<video::ITexture> CGUISpriteBank::getTexture(std::uint32_t index) const {
    if (index >= textures.size()) {
        return boost::intrusive_ptr<video::ITexture>();
    }
    return textures[index];
}

// 0x54fe14 _ZN6glitch3gui14CGUISpriteBank10addTextureERKN5boost13intrusive_ptrINS_5video8ITextureEEE
void CGUISpriteBank::addTexture(const boost::intrusive_ptr<video::ITexture>& texture) {
    textures.push_back(texture);
}

// 0x54fe5c _ZN6glitch3gui14CGUISpriteBank10setTextureEjRKN5boost13intrusive_ptrINS_5video8ITextureEEE
// The list is padded with null entries while the index is above its size; the original then writes the entry at `index` even when it equals
// the size (one past the end); the port appends that entry first.
void CGUISpriteBank::setTexture(std::uint32_t index, const boost::intrusive_ptr<video::ITexture>& texture) {
    while (index > textures.size()) {
        textures.push_back(boost::intrusive_ptr<video::ITexture>());
    }
    if (index == textures.size()) {
        textures.push_back(boost::intrusive_ptr<video::ITexture>());
    }
    textures[index] = texture;
}

// 0x54f930 _ZN6glitch3gui14CGUISpriteBank12draw2DSpriteEjRKNS_4core10position2dIiEEPKNS3_4rectIiEERKNS_5video6SColorEjjbb
// Nothing is drawn for an index past the sprites, a sprite without frames, a missing texture or a missing rectangle. The frame is
// (currentTime - startTime) / frameTime, wrapped by the frame count when `loop`, else clamped to the last frame; `center` moves the position
// by half the rectangle.
void CGUISpriteBank::draw2DSprite(std::uint32_t index, const core::position2d<int>& position, const core::rect<int>* clip,
                                  const video::SColor& color, std::uint32_t startTime, std::uint32_t currentTime, bool loop, bool center) {
    if (index >= sprites.size() || sprites[index].Frames.empty()) {
        return;
    }
    const SGUISprite& sprite = sprites[index];
    std::uint32_t frame = 0;
    if (sprite.frameTime != 0) {
        const std::uint32_t elapsedFrames = static_cast<std::int32_t>(currentTime - startTime) / static_cast<std::int32_t>(sprite.frameTime);
        const std::uint32_t frameCount = static_cast<std::uint32_t>(sprite.Frames.size());
        if (loop) {
            frame = elapsedFrames % frameCount;
        } else {
            frame = elapsedFrames >= frameCount ? frameCount - 1 : elapsedFrames;
        }
    }
    const SGUISpriteFrame& spriteFrame = sprite.Frames[frame];
    if (spriteFrame.textureNumber >= textures.size() || !textures[spriteFrame.textureNumber]) {
        return;
    }
    boost::intrusive_ptr<video::ITexture> texture = textures[spriteFrame.textureNumber];
    if (spriteFrame.rectNumber >= rectangles.size()) {
        return;
    }
    const core::rect<int>& source = rectangles[spriteFrame.rectNumber];
    if (center) {
        core::position2d<int> corner = position;
        corner.X -= (source.LowerRightCorner.X - source.UpperLeftCorner.X) / 2;
        corner.Y -= (source.LowerRightCorner.Y - source.UpperLeftCorner.Y) / 2;
        video::C2DDriver::draw2DImage(driver.get(), texture, corner, source, clip, color, true);
    } else {
        video::C2DDriver::draw2DImage(driver.get(), texture, position, source, clip, color, true);
    }
}

}  // namespace glitch::gui
