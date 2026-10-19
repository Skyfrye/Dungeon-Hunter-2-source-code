// The material parameter accessors of the scene classes (scene/material_access.hpp): calls of IMaterialParameters<CMaterial, ...>, the base
// class of CMaterial, which the port keeps as CMaterial::parameters. Not original functions.
#include "glitch-scene-collada-gui/scene/material_access.hpp"

#include "glitch-video/material.hpp"
#include "glitch-video/texture.hpp"

namespace glitch::scene {

bool setMaterialTexture(video::CMaterial& material, std::uint16_t parameterId, std::uint32_t index,
                        const boost::intrusive_ptr<video::ITexture>& texture) {
    return material.parameters.setParameter(parameterId, index, texture);
}

bool getMaterialTexture(const video::CMaterial& material, std::uint16_t parameterId, std::uint32_t index,
                        boost::intrusive_ptr<video::ITexture>& texture) {
    return material.parameters.getParameter(parameterId, index, texture);
}

bool setMaterialColorCvt(video::CMaterial& material, std::uint16_t parameterId, std::uint32_t index, video::SColor color) {
    return material.parameters.setParameterCvt(parameterId, index, color);
}

bool getMaterialColor(const video::CMaterial& material, std::uint16_t parameterId, std::uint32_t index, video::SColor& color) {
    return material.parameters.getParameter(parameterId, index, color);
}

}  // namespace glitch::scene
