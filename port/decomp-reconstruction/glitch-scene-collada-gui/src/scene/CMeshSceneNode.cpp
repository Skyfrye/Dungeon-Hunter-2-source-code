// Bodies of glitch::scene::IMeshSceneNode and glitch::scene::CMeshSceneNode (canonical classes: scene/CMeshSceneNode.hpp). This
// file replaces src/tb_scene-collada-gui-glitch_scene_CMeshSceneNode-0.cpp and the CMeshSceneNode bodies of src/scene_nodes.cpp
// and recon/slice_05.cpp (stand-in free functions).
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/IMeshCache.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

// 0x35abc4 _ZN6glitch5scene14IMeshSceneNodeD1Ev (skipped; D0 0x35b3dc likewise)
IMeshSceneNode::~IMeshSceneNode() = default;

// 0x596cc8 _ZN6glitch5scene14IMeshSceneNode30setNodeHierarchyAsShadowCasterEb
// Sets or clears the shadow-caster bit (0x800) of the flags, then runs the ISceneNode version, which forwards to the children.
void IMeshSceneNode::setNodeHierarchyAsShadowCaster(bool enabled) {
    if (enabled) {
        flags |= ESNF_SHADOW_CASTER;
    } else {
        flags &= ~static_cast<std::uint32_t>(ESNF_SHADOW_CASTER);
    }
    ISceneNode::setNodeHierarchyAsShadowCaster(enabled);
}

// 0x585118 _ZN6glitch5scene14CMeshSceneNodeC2ERKN5boost13intrusive_ptrINS0_5IMeshEEEiRKNS_4core8vector3dIfEERKNS5_10quaternionES9_
// 0x58529c (the second listing of the same constructor)
// IMeshSceneNode(id, position, rotation, scale), the mesh stored (a use is added), then ISceneNode::setAutomaticCulling(2).
CMeshSceneNode::CMeshSceneNode(const boost::intrusive_ptr<IMesh>& meshValue, int nodeId, const core::vector3d<float>& nodePosition,
                               const core::quaternion& nodeRotation, const core::vector3d<float>& nodeScale)
    : IMeshSceneNode(nodeId, nodePosition, nodeRotation, nodeScale), mesh(meshValue) {
    setAutomaticCulling(2);
}

// 0x584c10 _ZN6glitch5scene14CMeshSceneNodeD1Ev (skipped; D2 0x584c94 and D0 0x584cb0 likewise)
CMeshSceneNode::~CMeshSceneNode() = default;

// 0x584b90 _ZNK6glitch5scene14CMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The ISceneNode attributes, then "Mesh": the file name the scene manager's mesh cache has for the node's mesh (getMeshFilename(IMesh),
// vptr+0x34, called with a counted copy of the handle). The original passes the cache's answer on unchecked; a node without a scene manager
// or cache, or a mesh the cache does not know, writes an empty name here.
void CMeshSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    const char* meshName = nullptr;
    if (sceneManager != nullptr && sceneManager->meshCache != nullptr) {
        const boost::intrusive_ptr<const IMesh> meshHandle(mesh.get(), true);
        meshName = sceneManager->meshCache->getMeshFilename(meshHandle);
    }
    attributes->addString("Mesh", meshName != nullptr ? meshName : "", false);  // vptr+0x7c
}

// 0x584ed0 _ZN6glitch5scene14CMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Verified against Hex-Rays 0x584ed0. The node's current mesh name is taken from the scene manager's mesh cache
// (getMeshFilename, cache vtable +0x34, with a counted copy of the mesh handle; an empty string for a missing mesh) and
// compared with the "Mesh" string. When they differ, CSceneManager::getMesh(const char*) loads it and, if it returns
// something, setMesh (this vtable +0xf4) installs it. The ISceneNode attributes are deserialized LAST (the listing calls
// 0x598058 at the end). The old note's blockers (IReadFile / IWriteFile / the object pool) are not used by this function.
void CMeshSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    if (attributes == nullptr) {
        return;
    }
    std::string currentName;
    if (sceneManager != nullptr && sceneManager->meshCache != nullptr) {
        const boost::intrusive_ptr<const IMesh> meshHandle(mesh.get(), true);
        const char* cacheName = sceneManager->meshCache->getMeshFilename(meshHandle);
        if (cacheName != nullptr) {
            currentName = cacheName;
        }
    }
    const std::string wantedName = attributes->getString("Mesh");
    if (wantedName != currentName && sceneManager != nullptr) {
        const boost::intrusive_ptr<IAnimatedMesh> loaded = sceneManager->getMesh(wantedName.c_str());
        if (loaded) {
            setMesh(boost::intrusive_ptr<IMesh>(loaded.get(), true));
        }
    }
    ISceneNode::deserializeAttributes(attributes, options);
}

// 0x584d2c _ZN6glitch5scene14CMeshSceneNode19onRegisterSceneNodeEv
// With a mesh: clears the render counter, then walks the mesh buffers and counts how many materials have the transparent bit
// (0x10000 of the second state word of the first render pass of the material's technique) and how many do not; the walk stops
// as soon as both kinds exist. Registers the node with the scene manager (vptr+0x24, registerNodeForRendering, no material, sort
// order 0x7FFFFFFF) for the solid pass 4 when any solid material was counted, for the transparent pass 8 when any transparent one
// was, and for the shadow pass 7 when the shadow-caster bit is set. Always returns 1. The original dereferences the scene
// manager without a test; a node that is not attached to a manager skips the registration here.
int CMeshSceneNode::onRegisterSceneNode() {
    if (mesh) {
        renderCount = 0;
        std::uint32_t solid = 0;
        std::uint32_t transparent = 0;
        bool bothFound = false;
        for (std::uint32_t index = 0; index < mesh->getMeshBufferCount(); ++index) {
            const boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(index);
            const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
            if ((technique.passes[0].stateWords[1] & 0x10000u) != 0) {
                ++transparent;
            } else {
                ++solid;
            }
            if (transparent != 0 && solid != 0) {
                bothFound = true;
                break;
            }
        }
        if (sceneManager != nullptr) {
            const boost::intrusive_ptr<video::CMaterial> noMaterial;
            if (bothFound || solid != 0) {
                sceneManager->registerNodeForRendering(this, noMaterial, nullptr, 4, nullptr, 0x7FFFFFFF);
            }
            if (transparent != 0) {
                sceneManager->registerNodeForRendering(this, noMaterial, nullptr, 8, nullptr, 0x7FFFFFFF);
            }
            if ((flags & ESNF_SHADOW_CASTER) != 0) {
                sceneManager->registerNodeForRendering(this, noMaterial, nullptr, 7, nullptr, 0x7FFFFFFF);
            }
        }
    }
    return 1;
}

// 0x585370 _ZN6glitch5scene14CMeshSceneNode6renderEPv
// Returns when the mesh or the scene manager's driver is null. Otherwise: counts the render, sets the driver's world transform
// (vptr+0x6c, state 1) to the absolute matrix, and draws every mesh buffer that has a buffer and whose material passes the pass
// test: unless the scene manager is compiling a batch (the byte at +0x28a, batchCompiling), a material is drawn only in the pass that matches its transparent
// bit (pass 8 for the transparent ones). The material and the buffer's vertex attribute map are given to the driver, then the
// buffer is drawn.
void CMeshSceneNode::render(void* /*renderContext*/) {
    video::IVideoDriver* driver = sceneManager != nullptr ? sceneManager->driver : nullptr;
    if (!mesh || driver == nullptr) {
        return;
    }
    const std::int32_t currentPass = sceneManager->renderPass;
    ++renderCount;
    driver->setTransform(1, absoluteTransform);
    const bool transparentPass = currentPass == 8;
    for (std::uint32_t index = 0; index < mesh->getMeshBufferCount(); ++index) {
        const boost::intrusive_ptr<CMeshBuffer> buffer = mesh->getMeshBuffer(index);
        if (!buffer) {
            continue;
        }
        const boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(index);
        const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
        if (!sceneManager->batchCompiling && transparentPass != (((technique.passes[0].stateWords[1] >> 16) & 1u) != 0)) {
            continue;
        }
        const boost::intrusive_ptr<const video::CMaterialVertexAttributeMap> attributeMap = mesh->getMaterialVertexAttributeMap(index);
        driver->setMaterial(material, attributeMap);
        driver->drawMeshBuffer(boost::intrusive_ptr<const CMeshBuffer>(buffer));
    }
}

// 0x584ac0 _ZNK6glitch5scene14CMeshSceneNode14getBoundingBoxEv (skipped: a thunk to the mesh's getBoundingBox)
const core::aabbox3d<float>& CMeshSceneNode::getBoundingBox() const {
    return mesh->getBoundingBox();
}

// 0x584adc _ZNK6glitch5scene14CMeshSceneNode11getMaterialEj
// The mesh's material (vptr+0x18 on the mesh) when the index is below the buffer count, else a null handle.
boost::intrusive_ptr<video::CMaterial> CMeshSceneNode::getMaterial(std::uint32_t index) const {
    if (mesh && index < mesh->getMeshBufferCount()) {
        return mesh->getMaterial(index);
    }
    return boost::intrusive_ptr<video::CMaterial>();
}

// 0x584b44 _ZNK6glitch5scene14CMeshSceneNode16getMaterialCountEv
std::uint32_t CMeshSceneNode::getMaterialCount() const {
    return mesh ? mesh->getMeshBufferCount() : 0;
}

// 0x584a98 _ZNK6glitch5scene14CMeshSceneNode7getTypeEv
E_SCENE_NODE_TYPE CMeshSceneNode::getType() const {
    return ESNT_MESH;
}

// 0x58521c _ZN6glitch5scene14CMeshSceneNode5cloneEv
// A new node (operator new(0x140)) over a clone of the mesh (mesh vptr+0x0c) with the base members copied (cloneMembers).
ISceneNode* CMeshSceneNode::clone() {
    auto* copy = new CMeshSceneNode(mesh->clone(), id, position, rotation, scale);
    copy->cloneMembers(this);
    return copy;
}

// 0x5850ec _ZN6glitch5scene14CMeshSceneNode7setMeshERKN5boost13intrusive_ptrINS0_5IMeshEEE
// Replaces the mesh (the new one gains a use, the old one loses its).
void CMeshSceneNode::setMesh(const boost::intrusive_ptr<IMesh>& newMesh) {
    mesh = newMesh;
}

// 0x584aa4 _ZNK6glitch5scene14CMeshSceneNode7getMeshEv
boost::intrusive_ptr<IMesh> CMeshSceneNode::getMesh() const {
    return mesh;
}

}  // namespace glitch::scene
