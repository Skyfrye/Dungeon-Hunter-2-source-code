// MaterialData: the material binding a mesh node keeps. setMaterial takes a counted reference to a
// glitch CMaterial, keeps the renderer that material points at, and caches the renderer's parameter
// IDs 2 and 6 for the material's shader setup.
// Original 32-bit size not recorded (no operator new site in class-facts).
// Reconstructed from libDungeonHunter2.so pseudocode (setMaterial 0x7d4a08).
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-shared/glitch_core.hpp"

namespace glitch {
namespace video {
class CMaterial;
class CMaterialRenderer;
}  // namespace video
}  // namespace glitch

class MaterialData {
public:
    // 0x7d4a08. Stores the new material (+0x04) and its renderer (+0x00), both counted, then
    // caches getParameterID(renderer, 2, 0) and getParameterID(renderer, 6, 0). Returns the value cached in m_parameterId6
    // (the original returns the getParameterID(renderer, 6, 0) result as an unsigned int).
    std::uint32_t setMaterial(const boost::intrusive_ptr<glitch::video::CMaterial>& material);  // 0x7d4a08

    boost::intrusive_ptr<glitch::video::CMaterialRenderer> m_renderer;  // +0x00 renderer of m_material (CMaterial +0x04)
    boost::intrusive_ptr<glitch::video::CMaterial> m_material;          // +0x04 counted reference set by setMaterial
    std::uint16_t m_parameterId2;                                       // +0x08 renderer parameter ID 2
    std::uint16_t m_parameterId6;                                       // +0x0a renderer parameter ID 6
};
