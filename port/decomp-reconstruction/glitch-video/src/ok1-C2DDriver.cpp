// Owner K1: the material side of C2DDriver: init (0x59f398), get2DMaterial (0x59f4e4, 0x59f5a0), set2DTexture (0x59f5bc) and the member
// freeTextures (0x59f300). (K2 owns the drawing overloads in ok2-C2DDriver.cpp.)
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

// 0x59f300 _ZN6glitch5video9C2DDriver12freeTexturesEv
// The driver is flushed (vtable +0x1fc), then the texture is taken out of the two textured 2D materials.
void C2DDriver::freeTextures() {
    m_driver->flush();
    if (m_alphaMaterial) {
        const boost::intrusive_ptr<ITexture> none;
        m_alphaMaterial->parameters.setParameter(m_alphaTextureParameter, 0u, none);
    }
    if (m_texturedMaterial) {
        const boost::intrusive_ptr<ITexture> none;
        m_texturedMaterial->parameters.setParameter(m_texturedTextureParameter, 0u, none);
    }
}

// 0x59f398 _ZN6glitch5video9C2DDriver4initEv
// Makes the three 2D materials once: the untextured one, the alpha-textured one and the plain textured one, with the id of the texture
// parameter (type 2) of the last two.
void C2DDriver::init() {
    if (m_initialized != 0) return;
    CMaterialRendererManager* manager = m_driver->m_materialRendererManager;  // driver +0xdc
    m_untexturedMaterial = manager->createMaterialInstance(static_cast<E_MATERIAL_TYPE>(4));
    m_alphaMaterial = manager->createMaterialInstance(static_cast<E_MATERIAL_TYPE>(10));
    m_alphaTextureParameter = static_cast<uint16_t>(m_alphaMaterial->m_renderer->getParameterID(2, 0));
    m_texturedMaterial = manager->createMaterialInstance(static_cast<E_MATERIAL_TYPE>(7));
    m_initialized = 1;
    m_texturedTextureParameter = static_cast<uint16_t>(m_texturedMaterial->m_renderer->getParameterID(2, 0));
}

// 0x59f4e4 _ZN6glitch5video9C2DDriver13get2DMaterialERKN5boost13intrusive_ptrINS0_8ITextureEEEb
// No texture: the untextured material. Otherwise the texture goes into the texture parameter of the alpha material (alpha set) or
// the plain textured one.
boost::intrusive_ptr<CMaterial> C2DDriver::get2DMaterial(const boost::intrusive_ptr<ITexture>& texture, bool alpha) {
    if (m_initialized == 0) init();
    if (!texture) return m_untexturedMaterial;
    if (alpha) {
        m_alphaMaterial->parameters.setParameter(m_alphaTextureParameter, 0u, texture);
        return m_alphaMaterial;
    }
    m_texturedMaterial->parameters.setParameter(m_texturedTextureParameter, 0u, texture);
    return m_texturedMaterial;
}

// 0x59f5a0 _ZN6glitch5video9C2DDriver13get2DMaterialEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEEb
// The 2D driver of the device (driver +0xd4, device +0x14) answers.
boost::intrusive_ptr<CMaterial> C2DDriver::get2DMaterial(IVideoDriver* driver, const boost::intrusive_ptr<ITexture>& texture,
                                                         bool alpha) {
    return static_cast<C2DDriver*>(driver->m_device->unk_14)->get2DMaterial(texture, alpha);
}

// 0x59f5bc _ZN6glitch5video9C2DDriver12set2DTextureERKN5boost13intrusive_ptrINS0_8ITextureEEEb
boost::intrusive_ptr<CMaterial> C2DDriver::set2DTexture(const boost::intrusive_ptr<ITexture>& texture, bool alpha) {
    boost::intrusive_ptr<CMaterial> material = get2DMaterial(texture, alpha);
    const uint8_t technique = material ? static_cast<uint8_t>(material->getTechnique()) : 255;
    m_driver->setMaterial(material, technique, nullptr);
    return material;
}

}  // namespace glitch::video
