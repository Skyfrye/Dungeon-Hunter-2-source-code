// Batch e1-glitch-video-glitch_video_CMaterial-0: glitch::video::CMaterial::getTechnique.
#include "glitch-video/material.hpp"

#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

// 0x5c5d34 _ZNK6glitch5video9CMaterial12getTechniqueEv
// The technique the material is drawn with: its selected ordinal (+0x08), or, when the driver has technique remap tables (+0x108),
// the renderer's remap offset (the second word of its record in the renderer manager's collection, -1 for none) added to that
// ordinal and looked up in the table of the material's remap set (+0x14). A material without a renderer gives the ordinal.
int32_t CMaterial::getTechnique() const {
    const CMaterialRenderer* renderer = m_renderer.get();
    if (renderer == nullptr || renderer->m_driver == nullptr) return m_technique;
    const IVideoDriver* driver = renderer->m_driver;
    const uint8_t* const* remap = driver->m_techniqueRemap;
    if (remap != nullptr && driver->m_rendererManagerCopy != nullptr) {
        const uint32_t offset = driver->m_rendererManagerCopy->getProperties(renderer->m_id)->unk04;
        if (offset != 0xffffffffu) return remap[m_remapSet][m_technique + offset];
    }
    return m_technique;
}

}  // namespace glitch::video
