// Bodies of glitch::collada::CMeshSceneNode, CSkinnedMeshSceneNode and CModularSkinnedMeshSceneNode (canonical classes:
// collada/CMeshSceneNode.hpp). This file replaces the CMeshSceneNode / CModularSkinnedMeshSceneNode accessors of
// src/collada_scene_accessors.cpp, src/tb_scene-collada-gui-glitch_collada_CMeshSceneNode-0.cpp and the stub_646160 getType of
// generated_stubs.hpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/collada/CMeshSceneNode.hpp"

#include <vector>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/collada/CModularSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada {

namespace {

const core::CMatrix4<float>& identityMatrix() {
    static const core::CMatrix4<float> identity{core::CMatrix4<float>::EM4CONST_IDENTITY};
    return identity;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// CMeshSceneNode
// ---------------------------------------------------------------------------------------------------------------------

// 0x646588 _ZN6glitch7collada14CMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNS8_10quaternionESC_
// (C2 0x646678). IMeshSceneNode(id, position, rotation, scale), the record stored at +0x130, the mesh at +0x134 (a use on it), then
// ISceneNode::setAutomaticCulling(2).
CMeshSceneNode::CMeshSceneNode(const boost::intrusive_ptr<IMesh>& meshValue, SNode* nodeRecord, int nodeId,
                               const core::vector3d<float>& nodePosition, const core::quaternion& nodeRotation,
                               const core::vector3d<float>& nodeScale)
    : IMeshSceneNode(nodeId, nodePosition, nodeRotation, nodeScale), node(nodeRecord), mesh(meshValue) {
    setAutomaticCulling(2);
}

// 0x646240 _ZN6glitch7collada14CMeshSceneNodeD1Ev (0x6462e0 is the D2 form; D0 0x6462c4 skipped)
// Drops the mesh, then the IMeshSceneNode part runs.
CMeshSceneNode::~CMeshSceneNode() = default;

// 0x646148 _ZNK6glitch7collada14CMeshSceneNode6getUIDEv
// The record's uid when the node has a record, else the mesh's uid.
const char* CMeshSceneNode::getUID() const {
    if (node != nullptr) {
        return node->id;
    }
    return mesh->uid;
}

// 0x646160 _ZNK6glitch7collada14CMeshSceneNode7getTypeEv
scene::E_SCENE_NODE_TYPE CMeshSceneNode::getType() const {
    return scene::ESNT_DAE_MESH;
}

// 0x64616c _ZNK6glitch7collada14CMeshSceneNode7getMeshEv
boost::intrusive_ptr<scene::IMesh> CMeshSceneNode::getMesh() const {
    return mesh;
}

// 0x646188 _ZN6glitch7collada14CMeshSceneNode7setMeshERKN5boost13intrusive_ptrINS_5scene5IMeshEEE (empty)
void CMeshSceneNode::setMesh(const boost::intrusive_ptr<scene::IMesh>& /*newMesh*/) {}

// 0x64618c _ZNK6glitch7collada14CMeshSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CMeshSceneNode::getBoundingBox() const {
    return mesh->getBoundingBox();
}

// 0x6461a8 _ZNK6glitch7collada14CMeshSceneNode11getMaterialEj
boost::intrusive_ptr<video::CMaterial> CMeshSceneNode::getMaterial(std::uint32_t index) const {
    return mesh->getMaterial(index);
}

// 0x6461cc _ZNK6glitch7collada14CMeshSceneNode16getMaterialCountEv
std::uint32_t CMeshSceneNode::getMaterialCount() const {
    return mesh->getMeshBufferCount();
}

// 0x646208 _ZN6glitch7collada14CMeshSceneNode9onAnimateEj
// While the node is visible: ISceneNode::onAnimate, then the mesh animates (K 0x34).
void CMeshSceneNode::onAnimate(std::uint32_t timeMs) {
    if ((flags & scene::ESNF_VISIBLE) != 0) {
        ISceneNode::onAnimate(timeMs);
        mesh->onAnimate(timeMs);
    }
}

// 0x64635c _ZNK6glitch7collada14CMeshSceneNode17getRenderVertexCountEPv
// The vertex count (word +0x08) of the stream table of mesh buffer `renderContext - 1`.
std::uint32_t CMeshSceneNode::getRenderVertexCount(void* renderContext) const {
    const std::uint32_t index = static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(renderContext)) - 1;
    boost::intrusive_ptr<scene::CMeshBuffer> buffer = mesh->getMeshBuffer(index);
    boost::intrusive_ptr<const video::CVertexStreams> streams = buffer->vertexStreams;
    return streams->m_field08;
}

// 0x6463c8 _ZN6glitch7collada14CMeshSceneNode19onRegisterSceneNodeEv
int CMeshSceneNode::onRegisterSceneNode() {
    if (!mesh) {
        return 1;
    }
    video::IVideoDriver* driver = sceneManager->driver;
    if (driver == nullptr) {
        return 1;
    }
    const std::uint32_t count = mesh->getMeshBufferCount();
    for (std::uint32_t slot = 1; slot <= count; ++slot) {
        boost::intrusive_ptr<scene::CMeshBuffer> buffer = mesh->getMeshBuffer(slot - 1);
        if (!buffer) {
            continue;
        }
        buffer.reset();
        boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(slot - 1);
        const std::int32_t answer = mesh->onPrepareBufferForRendering(0, driver, slot - 1);
        if (answer == 4 || answer == 16) {
            const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
            const scene::E_SCENE_NODE_RENDER_PASS pass = (technique.passes[0].stateWords[1] & 0x10000u) != 0 ? 8 : 4;
            sceneManager->registerNodeForRendering(this, material, reinterpret_cast<void*>(static_cast<std::uintptr_t>(slot)), pass,
                                                   nullptr, 0x7FFFFFFF);
            if ((flags & scene::ESNF_SHADOW_CASTER) != 0) {
                sceneManager->registerNodeForRendering(this, material, reinterpret_cast<void*>(static_cast<std::uintptr_t>(slot)), 7,
                                                       nullptr, 0x7FFFFFFF);
            }
        } else if (answer == 5) {
            mesh->getBoundingBox();
        }
    }
    return 1;
}

// 0x646730 _ZN6glitch7collada14CMeshSceneNode6renderEPv
// With a mesh and the scene manager's driver: the mesh sets the driver's world transform to the node's absolute matrix (K 0x44). For a
// non-zero `renderContext` (the 1-based buffer index): when the buffer's bit in the mesh's mask is clear the mesh is asked to prepare
// the buffer (step 1) and bit 2 of the answer remembers a process buffer; the driver is given the buffer's material and map and draws
// the buffer; a taken process buffer is released again (mesh K 0x3c).
void CMeshSceneNode::render(void* renderContext) {
    if (!mesh) {
        return;
    }
    video::IVideoDriver* driver = sceneManager->driver;
    if (driver == nullptr) {
        return;
    }
    mesh->setTransform(driver, absoluteTransform);
    if (renderContext == nullptr) {
        return;
    }
    const std::uint32_t index = static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(renderContext)) - 1;
    boost::intrusive_ptr<scene::CMeshBuffer> buffer = mesh->getMeshBuffer(index);
    if (!buffer) {
        return;
    }
    bool processBuffer = false;
    if ((mesh->bufferFlags & (1u << (index & 0x1f))) == 0) {
        processBuffer = (mesh->onPrepareBufferForRendering(1, driver, index) & 4) != 0;
    }
    boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(index);
    boost::intrusive_ptr<const video::CMaterialVertexAttributeMap> map = mesh->getMaterialVertexAttributeMap(index);
    driver->setMaterial(material, map);
    driver->drawMeshBuffer(buffer);
    if (processBuffer) {
        mesh->releaseProcessBuffer(driver, index);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// CSkinnedMeshSceneNode
// ---------------------------------------------------------------------------------------------------------------------

// 0x666a54 _ZN6glitch7collada21CSkinnedMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNS8_10quaternionESC_
// (C2 0x666b3c). CMeshSceneNode(...), the skinned transformation set to the identity (flag byte 0), automatic culling 2.
CSkinnedMeshSceneNode::CSkinnedMeshSceneNode(const boost::intrusive_ptr<IMesh>& meshValue, SNode* nodeRecord, int nodeId,
                                             const core::vector3d<float>& nodePosition, const core::quaternion& nodeRotation,
                                             const core::vector3d<float>& nodeScale)
    : CMeshSceneNode(meshValue, nodeRecord, nodeId, nodePosition, nodeRotation, nodeScale) {
    skinnedTransformation = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    skinnedTransformation.flag = false;
    setAutomaticCulling(2);
}

// 0x35aa6c _ZN6glitch7collada21CSkinnedMeshSceneNodeD1Ev (0x35b514 is D0, skipped)
CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode() = default;

// 0x35a9d8 _ZNK6glitch7collada21CSkinnedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// A thunk to ISceneNode::serializeAttributes.
void CSkinnedMeshSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
}

// 0x35a9ec _ZN6glitch7collada21CSkinnedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// A thunk to ISceneNode::deserializeAttributes.
void CSkinnedMeshSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
}

// 0x6669f8 _ZNK6glitch7collada21CSkinnedMeshSceneNode7getTypeEv
scene::E_SCENE_NODE_TYPE CSkinnedMeshSceneNode::getType() const {
    return scene::ESNT_DAE_SKINNED_MESH;
}

// 0x666a04 _ZNK6glitch7collada21CSkinnedMeshSceneNode25getTransformedBoundingBoxEv
const core::aabbox3d<float>& CSkinnedMeshSceneNode::getTransformedBoundingBox() const {
    return getBoundingBox();
}

// 0x35ac30 _ZNK6glitch7collada21CSkinnedMeshSceneNode25getAbsoluteTransformationEv
// The identity matrix while the mesh's skinning flag is set or bit 0 of its buffer mask is; otherwise the mesh's getTransform (K 0x58)
// of the node's absolute matrix, stored in the member at +0x138.
const core::CMatrix4<float>& CSkinnedMeshSceneNode::getAbsoluteTransformation() const {
    const auto* skinned = static_cast<const ISkinnedMesh*>(mesh.get());
    if (skinned->skinningEnabled || (skinned->bufferFlags & 1) != 0) {
        return identityMatrix();
    }
    skinnedTransformation = skinned->getTransform(absoluteTransform);
    return skinnedTransformation;
}

// 0x666a18 _ZN6glitch7collada21CSkinnedMeshSceneNode20setIsSkinningEnabledEb
void CSkinnedMeshSceneNode::setIsSkinningEnabled(bool enabled) {
    static_cast<ISkinnedMesh*>(mesh.get())->setIsSkinningEnabled(enabled);
}

// ---------------------------------------------------------------------------------------------------------------------
// CModularSkinnedMeshSceneNode
// ---------------------------------------------------------------------------------------------------------------------

// 0x6494e8 _ZN6glitch7collada28CModularSkinnedMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNS8_10quaternionESC_
// (C2 0x649594). CSkinnedMeshSceneNode(...), nothing more.
CModularSkinnedMeshSceneNode::CModularSkinnedMeshSceneNode(const boost::intrusive_ptr<IMesh>& meshValue, SNode* nodeRecord, int nodeId,
                                                           const core::vector3d<float>& nodePosition, const core::quaternion& nodeRotation,
                                                           const core::vector3d<float>& nodeScale)
    : CSkinnedMeshSceneNode(meshValue, nodeRecord, nodeId, nodePosition, nodeRotation, nodeScale) {}

// 0x35b5b0 _ZN6glitch7collada28CModularSkinnedMeshSceneNodeD1Ev (0x35b7d8, 0x362b60; D0 skipped)
CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode() = default;

// 0x6493f8 _ZNK6glitch7collada28CModularSkinnedMeshSceneNode7getTypeEv
scene::E_SCENE_NODE_TYPE CModularSkinnedMeshSceneNode::getType() const {
    return scene::ESNT_DAE_MODULAR_SKINNED_MESH;
}

CModularSkinnedMesh* CModularSkinnedMeshSceneNode::modularMesh() const {
    return static_cast<CModularSkinnedMesh*>(mesh.get());
}

// 0x649424 _ZN6glitch7collada28CModularSkinnedMeshSceneNode17setCategoryModuleEPKcS3_
void CModularSkinnedMeshSceneNode::setCategoryModule(const char* category, const char* module) {
    modularMesh()->setCategoryModule(category, module, true);
}

// 0x649430 _ZN6glitch7collada28CModularSkinnedMeshSceneNode17setCategoryModuleEii
void CModularSkinnedMeshSceneNode::setCategoryModule(int category, int module) {
    modularMesh()->setCategoryModule(category, module, true);
}

// 0x64943c _ZNK6glitch7collada28CModularSkinnedMeshSceneNode22getCategoryModuleCountEi
std::int32_t CModularSkinnedMeshSceneNode::getCategoryModuleCount(int category) const {
    return modularMesh()->getCategoryModuleCount(category);
}

// 0x649444 _ZNK6glitch7collada28CModularSkinnedMeshSceneNode16getCategoryCountEv
std::int32_t CModularSkinnedMeshSceneNode::getCategoryCount() const {
    return modularMesh()->getCategoryCount();
}

// 0x64944c _ZNK6glitch7collada28CModularSkinnedMeshSceneNode13getModuleNameEii
const char* CModularSkinnedMeshSceneNode::getModuleName(int category, int module) const {
    return modularMesh()->getModuleName(category, module);
}

// 0x649454 _ZNK6glitch7collada28CModularSkinnedMeshSceneNode20getCurrentModuleNameEi
const char* CModularSkinnedMeshSceneNode::getCurrentModuleName(int category) const {
    return modularMesh()->getCurrentModuleName(category);
}

// 0x64945c _ZNK6glitch7collada28CModularSkinnedMeshSceneNode18getCurrentModuleIdEi
std::int32_t CModularSkinnedMeshSceneNode::getCurrentModuleId(int category) const {
    return modularMesh()->getCurrentModuleId(category);
}

// 0x649464 _ZNK6glitch7collada28CModularSkinnedMeshSceneNode11getModuleIdEPKc
std::int32_t CModularSkinnedMeshSceneNode::getModuleId(const char* name) const {
    return modularMesh()->getModuleId(name);
}

// 0x64946c _ZNK6glitch7collada28CModularSkinnedMeshSceneNode15getCategoryNameEi
const char* CModularSkinnedMeshSceneNode::getCategoryName(int category) const {
    return modularMesh()->getCategoryName(category);
}

// 0x6494e0 _ZNK6glitch7collada28CModularSkinnedMeshSceneNode13getCategoryIdEPKc
std::int32_t CModularSkinnedMeshSceneNode::getCategoryId(const char* name) const {
    return modularMesh()->getCategoryId(name);
}

// 0x6496ac _ZNK6glitch7collada28CModularSkinnedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// The ISceneNode attributes, then one enum attribute per category named after it: the current module id selects one of the literals,
// which are the names of the category's modules followed by "not used (-1)" and a terminating null.
void CModularSkinnedMeshSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    for (int category = 0; category < getCategoryCount(); ++category) {
        std::vector<const char*> literals;
        for (int module = 0; module < getCategoryModuleCount(category); ++module) {
            literals.push_back(getModuleName(category, module));
        }
        literals.push_back("not used (-1)");
        literals.push_back(nullptr);
        attributes->addEnum(getCategoryName(category), getCurrentModuleId(category), literals.data(), false);
    }
}

// 0x649474 _ZN6glitch7collada28CModularSkinnedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// ISceneNode::deserializeAttributes, then for every category: the enum attribute named after it (IAttributes slot +0xfc, getEnum(name),
// which answers the literal's text) is looked up as a module name (getModuleId) and the category is set to that module.
void CModularSkinnedMeshSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
    for (int category = 0; category < getCategoryCount(); ++category) {
        const char* literal = attributes->getEnum(getCategoryName(category));
        setCategoryModule(category, getModuleId(literal));
    }
}

}  // namespace glitch::collada
