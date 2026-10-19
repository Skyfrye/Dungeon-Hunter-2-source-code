// Draw3DWireFrameBox (0x50fadc), the debug box helper the lights and objects call. Written in the game-owner residue pass.
#include "dh2/global/Draw3DWireFrameBox.hpp"

#include "dh2/Application.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/video_driver.hpp"

// 0x50fadc Draw3DWireFrameBox(glitch::core::aabbox3d<float> const&, glitch::video::SColor const&)
// The plain material (built-in renderer type 1) of the driver of the device is set with its first technique, then the driver
// draws the box (vtable +0x28, draw3DBox) in the given colour.
void Draw3DWireFrameBox(const glitch::core::aabbox3d<float>& box, const glitch::video::SColor& color) {
    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;   // device +0x10
    glitch::video::CMaterialRendererManager* materials = driver->m_materialRendererManager;  // driver +0xdc
    const uint16_t renderer = materials->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));
    boost::intrusive_ptr<glitch::video::CMaterial> material = materials->getMaterialInstance(renderer, true);
    const uint8_t technique = material ? static_cast<uint8_t>(material->getTechnique()) : 255;
    driver->setMaterial(material, technique, nullptr);
    driver->draw3DBox(box, color);
}
