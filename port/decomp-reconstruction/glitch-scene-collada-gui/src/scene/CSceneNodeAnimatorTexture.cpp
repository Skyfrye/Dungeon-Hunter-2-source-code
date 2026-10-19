// Bodies of glitch::scene::CSceneNodeAnimatorTexture (canonical class: scene/CSceneNodeAnimatorTexture.hpp). This file
// replaces the stand-in members of src/scene_simple_accessors.cpp, the recon_33 serialization functions and the comment
// block of src/recon/slice_27.cpp.
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorTexture.hpp"

#include <string>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/material_access.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::scene {

namespace {

// The attribute name of texture `ordinal` (1-based): a one-character string whose character code is the ordinal.
std::string textureName(int ordinal) {
    std::string name;
    name.push_back(static_cast<char>(ordinal));
    return name;
}

}  // namespace

// 0x6cdcd8 _ZN6glitch5scene25CSceneNodeAnimatorTextureC1ERKSt6vectorIN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEibj
// 0x6ce084 _ZN6glitch5scene25CSceneNodeAnimatorTextureC2ERKSt6vectorIN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEibj
// The textures are appended one by one (each takes a use); endTime = startTime + timePerFrame * count.
CSceneNodeAnimatorTexture::CSceneNodeAnimatorTexture(const core::svector<boost::intrusive_ptr<video::ITexture>>& texturesIn,
                                                     int timePerFrameIn, bool loopIn, std::uint32_t startTimeIn)
    : textures(texturesIn), timePerFrame(timePerFrameIn), startTime(startTimeIn), loop(loopIn) {
    endTime = static_cast<std::uint32_t>(timePerFrame * static_cast<std::int32_t>(textures.size())) + startTime;
}

// 0x6cdb20 _ZN6glitch5scene25CSceneNodeAnimatorTextureD1Ev
// 0x6cdba4 _ZN6glitch5scene25CSceneNodeAnimatorTextureD2Ev
// 0x6cdb88 _ZN6glitch5scene25CSceneNodeAnimatorTextureD0Ev
CSceneNodeAnimatorTexture::~CSceneNodeAnimatorTexture() {
    clearTextures();
}

// 0x6cd9e0 _ZN6glitch5scene25CSceneNodeAnimatorTexture13clearTexturesEv
void CSceneNodeAnimatorTexture::clearTextures() {
    for (std::size_t i = 0; i < textures.size(); ++i) {
        textures[i] = nullptr;  // the slot is nulled first, then the old texture dropped
    }
}

// 0x6cdee4 _ZNK6glitch5scene25CSceneNodeAnimatorTexture19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorTexture::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    attributes->addInt("TimePerFrame", timePerFrame, false);  // vptr+0x4c
    attributes->addBool("Loop", loop, false);                 // vptr+0xd8
    std::size_t count = textures.size();
    // Flag 2 of the options (the first word of the structure) adds one empty texture attribute.
    if (options != nullptr && (options->flags & 2u) != 0) {
        ++count;
    }
    for (std::size_t i = 0; i != count; ++i) {
        const std::string name = textureName(static_cast<int>(i) + 1);
        boost::intrusive_ptr<video::ITexture> texture;  // empty beyond the stored textures
        if (i < textures.size()) {
            texture = textures[i];
        }
        attributes->addTexture(name.c_str(), texture, false);  // vptr+0x2b0
    }
}

// 0x6ce1f8 _ZN6glitch5scene25CSceneNodeAnimatorTexture21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorTexture::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    timePerFrame = attributes->getInt("TimePerFrame");  // vptr+0x58
    loop = attributes->getBool("Loop");                 // vptr+0xe4
    clearTextures();
    for (int ordinal = 1;; ++ordinal) {
        const std::string name = textureName(ordinal);
        if (!attributes->existsAttribute(name.c_str())) {  // vptr+0x24
            break;
        }
        boost::intrusive_ptr<video::ITexture> texture = attributes->getTexture(name.c_str());  // vptr+0x2bc
        if (texture) {
            textures.push_back(texture);
        }
    }
}

// 0x6cda34 _ZN6glitch5scene25CSceneNodeAnimatorTexture10updateTimeEj
void CSceneNodeAnimatorTexture::updateTime(std::uint32_t /*timeMs*/) {}

// 0x6cda58 _ZN6glitch5scene25CSceneNodeAnimatorTexture11animateNodeEPNS0_10ISceneNodeEj
// The frame is chosen as in the original (a looping animator, or one before endTime, shows frame
// ((timeMs - startTime) / timePerFrame) mod count; a finished one the last frame) and the frame's texture is stored
// in the first material's texture parameter: the parameter id comes from CMaterialRenderer::getParameterID(type 2, 0)
// (0x5cef08) and the store is setParameter<intrusive_ptr<ITexture>> (0x5cd324) at index 0, through the
// scene/material_access.hpp seam. The listing calls setParameter even when the id is 0xffff, and so does this body;
// the material is held in an intrusive_ptr for the duration of the call (the sret slot of ISceneNode::getMaterial,
// vtable +0x84) and released at the end.
void CSceneNodeAnimatorTexture::animateNode(ISceneNode* node, std::uint32_t timeMs) {
    const std::uint32_t count = static_cast<std::uint32_t>(textures.size());
    if (count == 0) {
        return;
    }
    std::uint32_t frame;
    if (loop || timeMs < endTime) {
        const std::uint32_t step = (timeMs - startTime) / static_cast<std::uint32_t>(timePerFrame);
        frame = step % count;
    } else {
        frame = count - 1;
    }
    if (frame < count) {
        boost::intrusive_ptr<video::CMaterial> material = node->getMaterial(0);  // vptr+0x84, the sret slot
        const std::uint16_t parameterId = material->m_renderer->getParameterID(static_cast<video::E_SHADER_PARAMETER_TYPE>(2), 0);
        setMaterialTexture(*material, parameterId, 0, textures[frame]);
    }
}

// 0x6cde54 _ZN6glitch5scene25CSceneNodeAnimatorTexture11createCloneEv
ISceneNodeAnimator* CSceneNodeAnimatorTexture::createClone() {
    return new CSceneNodeAnimatorTexture(textures, timePerFrame, loop, startTime);  // operator new(0x30)
}

// 0x6cd9d8 _ZNK6glitch5scene25CSceneNodeAnimatorTexture7getTypeEv
E_SCENE_NODE_ANIMATOR_TYPE CSceneNodeAnimatorTexture::getType() const {
    return ESNAT_TEXTURE;
}

}  // namespace glitch::scene
