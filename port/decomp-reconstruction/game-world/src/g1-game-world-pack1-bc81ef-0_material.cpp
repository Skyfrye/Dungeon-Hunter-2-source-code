// Batch g1-game-world-pack1-bc81ef-0, companion of g1-game-world-pack1-bc81ef-0.cpp (part 1 of 1): MaterialData::setMaterial.
// Split off because dh2/SceneManager.hpp (used by the main file) reaches glitch-core-io's deps/glitch_core_objects.hpp, which
// defines glitch::video::CMaterial and CMaterialRenderer a second time. This file needs the canonical glitch-video definitions.
// Declarations: dh2/MaterialData.hpp.

#include "dh2/MaterialData.hpp"

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"

// 0x7d4a08 MaterialData::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&)
//
// Order as in the original: the material is replaced first (counted copy, the old one released). The renderer is then
// read from the new material (CMaterial +0x04) and replaced the same way. Both parameter IDs are cached from that renderer.
// A null material is not checked: the original reads its renderer field and crashes as well.
std::uint32_t MaterialData::setMaterial(const boost::intrusive_ptr<glitch::video::CMaterial>& material) {
    m_material = material;                                // +0x04
    m_renderer = material->m_renderer;                    // +0x00, the renderer of the new material
    m_parameterId2 = m_renderer->getParameterID(2, 0);    // +0x08
    m_parameterId6 = m_renderer->getParameterID(6, 0);    // +0x0a
    return m_parameterId6;
}
