// Batch g1-game-world-SkyBoxMeshSceneNode-1f1d6a-0: the eight SkyBoxMeshSceneNode functions (getType, render, onRegisterSceneNode,
// the constructors and the destructors). Declarations come from dh2/SkyBoxMeshSceneNode.hpp.
//
// The VTT forms (C2 0x36299c, D2 0x3627a8) and the deleting destructor (D0 0x36278c) are compiler-generated from the complete forms.

#include "dh2/SkyBoxMeshSceneNode.hpp"

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/video_driver.hpp"

// 0x36233c _ZNK19SkyBoxMeshSceneNode7getTypeEv
glitch::scene::E_SCENE_NODE_TYPE SkyBoxMeshSceneNode::getType() const {
    return static_cast<glitch::scene::E_SCENE_NODE_TYPE>(1601792883);
}

// 0x362398 _ZN19SkyBoxMeshSceneNode6renderEPv
// Does nothing unless the render gate is set. With the mesh, the driver and the active camera of the scene manager: the absolute
// transformation of the node is moved to the position of the camera and its diagonal (scale) words set to twice the camera value read
// at its vtable +0x11c (getNearValue in the canonical header); the mesh gets the transformation (IMesh setTransform). A non-null
// `context` is the 1-based buffer index: the buffer is prepared for rendering (step 1, unless it is flagged skinned), drawn with its
// material and vertex map with the depth mask off (driver vtable +0x10c), and released again when the preparation asked for it.
// The original returns a leftover register.
void SkyBoxMeshSceneNode::render(void* context) {
    if (!m_renderEnabled) {
        return;
    }
    glitch::scene::CSceneManager* scene = sceneManager;
    glitch::video::IVideoDriver* driver = scene->driver;
    glitch::scene::ICameraSceneNode* camera = scene->activeCamera;
    if (!mesh || driver == nullptr || camera == nullptr) {
        return;
    }
    const glitch::core::vector3d<float> position = camera->getAbsolutePosition();
    absoluteTransform.M[12] = position.X;  // +0x54
    absoluteTransform.M[13] = position.Y;  // +0x58
    absoluteTransform.M[14] = position.Z;  // +0x5c
    absoluteTransform.flag = false;        // +0x64
    const float twice = camera->getNearValue() + camera->getNearValue();
    absoluteTransform.M[0] = twice;        // +0x24
    absoluteTransform.M[5] = twice;        // +0x38
    absoluteTransform.M[10] = twice;       // +0x4c
    absoluteTransform.flag = false;
    mesh->setTransform(driver, absoluteTransform);
    if (context == nullptr) {
        return;
    }
    const std::uint32_t index = static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(context)) - 1;
    auto buffer = mesh->getMeshBuffer(index);
    if (!buffer) {
        return;
    }
    bool release = false;
    if ((mesh->bufferFlags & (1u << (index & 0x1f))) == 0) {
        release = (mesh->onPrepareBufferForRendering(1, driver, index) & 4) != 0;
    }
    boost::intrusive_ptr<glitch::video::CMaterial> material = mesh->getMaterial(index);
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> map = mesh->getMaterialVertexAttributeMap(index);
    driver->setMaterial(material, map);
    driver->setDepthMask(false);
    driver->drawMeshBuffer(buffer);
    if (release) {
        mesh->releaseProcessBuffer(driver, index);
    }
}

// 0x3625d0 _ZN19SkyBoxMeshSceneNode19onRegisterSceneNodeEv
// With a mesh and a driver, every buffer the mesh prepares for rendering (step 0) with the results 4 and 16 registers this node
// with the scene manager in pass 2 (under the 1-based buffer index, with the material of the buffer); result 5 makes the mesh
// refresh its box. Returns 1.
int SkyBoxMeshSceneNode::onRegisterSceneNode() {
    if (mesh) {
        glitch::video::IVideoDriver* driver = sceneManager->driver;
        if (driver != nullptr) {
            const std::uint32_t count = mesh->getMeshBufferCount();
            for (std::uint32_t i = 0; i < count; ++i) {
                auto buffer = mesh->getMeshBuffer(i);
                if (buffer) {
                    buffer.reset();
                    boost::intrusive_ptr<glitch::video::CMaterial> material = mesh->getMaterial(i);
                    const std::int32_t result = mesh->onPrepareBufferForRendering(0, driver, i);
                    if (result == 4 || result == 16) {
                        sceneManager->registerNodeForRendering(this, material, reinterpret_cast<void*>(static_cast<std::uintptr_t>(i + 1)),
                                                               glitch::scene::ESNRP_PRE_SOLID, nullptr, 0x7fffffff);
                    } else if (result == 5) {
                        (void)mesh->getBoundingBox();  // mesh vtable +0x24
                    }
                }
            }
        }
    }
    return 1;
}

// 0x362718 _ZN19SkyBoxMeshSceneNodeD1Ev
// Drops the reference that the constructor took on the node at +0x13c, through the node IReferenceCounted base, and clears the
// pointer. The vptr and virtual-base stores, and the call to the base destructor, are emitted by the compiler.
SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode() {
    if (unk_13c != nullptr) {
        static_cast<glitch::IReferenceCounted*>(unk_13c)->drop();
        unk_13c = nullptr;
    }
}

// 0x362810 _ZN19SkyBoxMeshSceneNodeC1ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPNS2_5scene14IMeshSceneNodeE
// 0x36299c (C2, VTT form) is compiler-generated from this one. The base is built from the mesh (no record, id -1, position 0,
// identity rotation, scale 1), the render gate is set, the node is stored and gets a use, and automatic culling is turned off. Then
// the first pass of the first technique of the renderer of the mesh material 0 has bit 0x100000 cleared in its second state word;
// when the bit was set, the pass flag byte (+0x30) is set to 1.
SkyBoxMeshSceneNode::SkyBoxMeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& meshArg,
                                         glitch::scene::IMeshSceneNode* node)
    : glitch::collada::CMeshSceneNode(meshArg, nullptr, -1, glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f},
                                      glitch::core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                                      glitch::core::vector3d<float>{1.0f, 1.0f, 1.0f}) {
    m_renderEnabled = true;
    unk_13c = node;
    setAutomaticCulling(0);
    if (unk_13c != nullptr) {
        ++static_cast<glitch::IReferenceCounted*>(unk_13c)->referenceCounter;
    }
    boost::intrusive_ptr<glitch::video::CMaterial> material = mesh->getMaterial(0);
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
    glitch::video::SRenderPass* pass = const_cast<glitch::video::SRenderPass*>(renderer->m_techniques[0].passes);
    const std::uint32_t before = pass->stateWords[1];
    pass->stateWords[1] = before & 0xffefffffu;
    if ((before & 0x100000u) != 0) {
        pass->flag30 = 1;
    }
}
