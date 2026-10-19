// Bodies of glitch::scene::IShadowVolumeSceneNode (canonical class: scene/IShadowVolumeSceneNode.hpp).
#include "glitch-scene-collada-gui/scene/IShadowVolumeSceneNode.hpp"

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

boost::intrusive_ptr<video::CMaterial> IShadowVolumeSceneNode::Material;
std::int32_t IShadowVolumeSceneNode::MaterialCount = 0;
std::uint8_t IShadowVolumeSceneNode::TechniqueZPass = 0xFF;  // .data 0x99b5e4..0x99b5ea: all five bytes start at 0xff (stub audit; was 0)
std::uint8_t IShadowVolumeSceneNode::TechniqueZPassSecond = 0xFF;  // .data 0x99b5e4..0x99b5ea: all five bytes start at 0xff (stub audit; was 0)
std::uint8_t IShadowVolumeSceneNode::TechniqueZFail = 0xFF;  // .data 0x99b5e4..0x99b5ea: all five bytes start at 0xff (stub audit; was 0)
std::uint8_t IShadowVolumeSceneNode::TechniqueZFailSecond = 0xFF;  // .data 0x99b5e4..0x99b5ea: all five bytes start at 0xff (stub audit; was 0)
std::uint8_t IShadowVolumeSceneNode::TechniqueDraw = 0xFF;  // .data 0x99b5e4..0x99b5ea: all five bytes start at 0xff (stub audit; was 0)

// 0x599e24 _ZN6glitch5scene22IShadowVolumeSceneNodeC2Ei (base object; the listing takes the VTT as its second argument)
// 0x599d50 _ZN6glitch5scene22IShadowVolumeSceneNodeC1Ei (complete object)
IShadowVolumeSceneNode::IShadowVolumeSceneNode(int nodeId)
    : ISceneNode(nodeId, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                 core::vector3d<float>{1.0f, 1.0f, 1.0f}) {}

// 0x599d10 _ZN6glitch5scene22IShadowVolumeSceneNodeD2Ev (base object)
// 0x599ca8 _ZN6glitch5scene22IShadowVolumeSceneNodeD1Ev (complete object)
// 0x599cf4 _ZN6glitch5scene22IShadowVolumeSceneNodeD0Ev (skipped, compiler generated)
IShadowVolumeSceneNode::~IShadowVolumeSceneNode() = default;

// 0x599a80 _ZN6glitch5scene22IShadowVolumeSceneNode14setupMaterialsEPNS_5video12IVideoDriverE
// The first caller loads the effect "ShadowVolume" from "ShadowVolume.bdae" and makes a material of it. When the driver's byte at
// +0x135 is 1..7 (the stencil depth of the framebuffer) every technique's first render pass gets the stencil write mask
// (1 << (depth - 1)) - 1 in the second byte of its first state word, and its changed flag is raised when that byte differed.
// The five technique ids are looked up by name. Every call counts a user.
void IShadowVolumeSceneNode::setupMaterials(video::IVideoDriver* driver) {
    if (!Material) {
        collada::CColladaDatabase database("ShadowVolume.bdae", &collada::CColladaDatabase::DefaultFactory);
        boost::intrusive_ptr<video::CMaterialRenderer> renderer(database.constructEffect(driver, "ShadowVolume", nullptr));
        Material = video::CMaterial::allocate(renderer, nullptr, 0);
        const std::uint8_t stencilBits = driver != nullptr ? driver->unk_135 : 0;
        if (renderer && stencilBits != 8 && stencilBits != 0) {
            const std::uint8_t mask = static_cast<std::uint8_t>((1u << (stencilBits - 1u)) - 1u);
            for (std::uint8_t i = 0; i < renderer->m_techniqueCount; ++i) {
                auto* pass = const_cast<video::SRenderPass*>(renderer->m_techniques[i].passes);
                const std::uint32_t word = pass->stateWords[0];
                if (mask != static_cast<std::uint8_t>(word >> 8)) pass->flag30 = 1;
                pass->stateWords[0] = (static_cast<std::uint32_t>(mask) << 8) | (word & 0xFFFF00FFu);
            }
        }
        if (renderer) {
            TechniqueZPass = renderer->getTechniqueID("DepthPassFirstPass");
            TechniqueZPassSecond = renderer->getTechniqueID("DepthPassSecondPass");
            TechniqueZFail = renderer->getTechniqueID("DepthFailFirstPass");
            TechniqueZFailSecond = renderer->getTechniqueID("DepthFailSecondPass");
            TechniqueDraw = renderer->getTechniqueID("DrawShadowZone");
        }
    }
    ++MaterialCount;
}

// 0x599a24 _ZN6glitch5scene22IShadowVolumeSceneNode16unSetupMaterialsEv
void IShadowVolumeSceneNode::unSetupMaterials() {
    if (--MaterialCount == 0) {
        Material.reset();
    }
}

}  // namespace glitch::scene
