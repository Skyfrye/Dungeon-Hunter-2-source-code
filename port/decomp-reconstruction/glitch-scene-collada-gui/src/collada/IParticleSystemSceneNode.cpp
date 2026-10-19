// Bodies of glitch::collada::IParticleSystemSceneNode (canonical class: collada/IParticleSystemSceneNode.hpp). This file replaces the
// recon_22 stand-in bodies (recon/slice_22.cpp) and the stub_667774 clone of generated_stubs.hpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/collada/IParticleSystemSceneNode.hpp"

#include "core-platform/memory.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-video/material.hpp"

namespace glitch::collada {

// 0x66792c _ZN6glitch7collada24IParticleSystemSceneNodeC1ERKNS0_16CColladaDatabaseEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
// (C2 0x667a98). ISceneNode(-1, origin, rotation (0,0,0,1), scale 1), the database copied (a use), the flag bytes and the other members
// cleared, the material names and the root stored, the node added to the root's particle system list and automatic culling 2.
IParticleSystemSceneNode::IParticleSystemSceneNode(const CColladaDatabase& source, res::vector<res::String>* names, CRootSceneNode* rootNode)
    : ISceneNode(-1, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                 core::vector3d<float>{1.0f, 1.0f, 1.0f}) {
    copyDatabase(database, source);
    hasTextureTransform = false;
    uid = "";
    materialNames = names;
    root = rootNode;
    root->addParticleSystem(this);
    setAutomaticCulling(2);
}

// 0x66781c _ZN6glitch7collada24IParticleSystemSceneNodeD1Ev (0x6678b8 is the D2 form; D0 0x66789c skipped)
// Frees the block at +0x164, destroys the material vector, drops the reference at +0x140 and the database handle; ISceneNode's
// destructor follows.
IParticleSystemSceneNode::~IParticleSystemSceneNode() {
    forces.clear();
    forces.shrink_to_fit();  // GlitchFree of the storage at +0x164
    materials.clear();
    meshBuffer.reset();
    dropDatabase(database);
}

// 0x6677d0 _ZNK6glitch7collada24IParticleSystemSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// A thunk to ISceneNode::serializeAttributes.
void IParticleSystemSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
}

// 0x6677d4 _ZN6glitch7collada24IParticleSystemSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// A thunk to ISceneNode::deserializeAttributes.
void IParticleSystemSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
}

// 0x66777c _ZNK6glitch7collada24IParticleSystemSceneNode11getMaterialEj
boost::intrusive_ptr<video::CMaterial> IParticleSystemSceneNode::getMaterial(std::uint32_t index) const {
    return materials[index];
}

// 0x66779c _ZNK6glitch7collada24IParticleSystemSceneNode16getMaterialCountEv
std::uint32_t IParticleSystemSceneNode::getMaterialCount() const {
    return static_cast<std::uint32_t>(materials.size());
}

// 0x667774 _ZN6glitch7collada24IParticleSystemSceneNode5cloneEv
scene::ISceneNode* IParticleSystemSceneNode::clone() {
    return nullptr;
}

// 0x619820 _ZN6glitch7collada24IParticleSystemSceneNode11addMaterialERNS0_9SMaterialEPNS_5video12IVideoDriverE
// The material built (or found) by the root for the record is appended to the node's materials when there is one.
void IParticleSystemSceneNode::addMaterial(SMaterial& material, video::IVideoDriver* driver) {
    boost::intrusive_ptr<video::CMaterial> built = root->addMaterial(&material, driver);
    if (built) {
        materials.push_back(built);
    }
}

}  // namespace glitch::collada
