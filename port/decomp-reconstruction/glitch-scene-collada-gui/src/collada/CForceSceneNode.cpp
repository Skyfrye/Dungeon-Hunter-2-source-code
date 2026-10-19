// Bodies of glitch::collada::particle_system::CForceSceneNode and its kinds (canonical classes: collada/CForceSceneNode.hpp). This file
// replaces the stand-ins of recon/slice_17, slice_18, slice_32 and recon/v2/wave_07 and the stubs 0x62fee4 .. 0x62fef8 of
// generated_stubs.hpp.
//
// A comment `// 0xADDR symbol` precedes each function.
#include "glitch-scene-collada-gui/collada/CForceSceneNode.hpp"

#include <cstring>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/collada/CGlitchNewParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CParticleSystemSceneNode.hpp"

namespace glitch::collada::particle_system {

namespace {

// The word of an SForce value read as the int the node keeps (the constructors copy the raw 32-bit word).
std::int32_t rawInt(float value) {
    std::int32_t bits;
    std::memcpy(&bits, &value, sizeof(bits));
    return bits;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// CForceSceneNode
// ---------------------------------------------------------------------------------------------------------------------

// 0x630f6c _ZN6glitch7collada15particle_system15CForceSceneNodeC2ERKNS0_16CColladaDatabaseERKNS0_6SForceE
// ISceneNode(-1, origin, rotation (0, 0, 0, 1), scale (1, 1, 1)); the database handle is copied (a use on the record when its count is not
// zero), the uid is the empty-string constant and the force record is stored.
CForceSceneNode::CForceSceneNode(const CColladaDatabase& source, const SForce& record)
    : ISceneNode(-1, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                 core::vector3d<float>{1.0f, 1.0f, 1.0f}) {
    copyDatabase(database, source);
    uid = "";
    force = &record;
}

// 0x630768 _ZN6glitch7collada15particle_system15CForceSceneNodeD1Ev (D2 0x63081c; D0 0x6307e0 skipped)
// Drops the database handle; ISceneNode's destructor follows.
CForceSceneNode::~CForceSceneNode() {
    dropDatabase(database);
}

// 0x630ee8 _ZNK6glitch7collada15particle_system15CForceSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CForceSceneNode::getBoundingBox() const {
    static const core::aabbox3d<float> empty{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
    return empty;
}

// 0x62feec _ZNK6glitch7collada15particle_system15CForceSceneNode7getTypeEv
scene::E_SCENE_NODE_TYPE CForceSceneNode::getType() const {
    return scene::ESNT_DAE_FORCE;
}

// 0x62fef8 _ZN6glitch7collada15particle_system15CForceSceneNode6renderEPv
void CForceSceneNode::render(void*) {}

// 0x62fee4 _ZN6glitch7collada15particle_system15CForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
void CForceSceneNode::bind(CParticleSystemSceneNode*) {}

// 0x62fee8 _ZN6glitch7collada15particle_system15CForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
void CForceSceneNode::bind(CGlitchNewParticleSystemSceneNode*) {}

// ---------------------------------------------------------------------------------------------------------------------
// CGravityForceSceneNode
// ---------------------------------------------------------------------------------------------------------------------

// 0x631274 (the body of CColladaFactory::createParticleSystemGravityForce after operator new(0x158)): the base constructor, then the
// parameter struct: the node's absolute transformation (node +0x24) and the record's strength, decay and type.
CGravityForceSceneNode::CGravityForceSceneNode(const CColladaDatabase& source, const SForce& record)
    : CForceSceneNode(source, record) {
    parameters.matrix = &absoluteTransform;
    parameters.strength = record.values[0];
    parameters.attenuation = record.values[1];
    parameters.radial = rawInt(record.values[2]);
}

// 0x630940 _ZN6glitch7collada15particle_system22CGravityForceSceneNodeD1Ev (D0 0x632a88 skipped)
CGravityForceSceneNode::~CGravityForceSceneNode() = default;

// 0x6303f0 _ZNK6glitch7collada15particle_system22CGravityForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CGravityForceSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    attributes->addFloat("decay", parameters.attenuation, false);
    attributes->addFloat("strength", parameters.strength, false);
    attributes->addInt("type", parameters.radial, false);
}

// 0x630648 _ZN6glitch7collada15particle_system22CGravityForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CGravityForceSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
    parameters.attenuation = attributes->getFloat("decay");
    parameters.strength = attributes->getFloat("strength");
}

// 0x6301e8 _ZN6glitch7collada15particle_system22CGravityForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
void CGravityForceSceneNode::bind(CParticleSystemSceneNode* particleSystem) {
    particleSystem->system->bindForce<ps::PGravity>(parameters);
}

// 0x630170 _ZN6glitch7collada15particle_system22CGravityForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
void CGravityForceSceneNode::bind(CGlitchNewParticleSystemSceneNode* particleSystem) {
    particleSystem->system->bindForce<ps::PGravity>(parameters);
}

// ---------------------------------------------------------------------------------------------------------------------
// CWindForceSceneNode
// ---------------------------------------------------------------------------------------------------------------------

// 0x631168 _ZN6glitch7collada15particle_system19CWindForceSceneNodeC1ERKNS0_16CColladaDatabaseERKNS0_6SForceE (after operator new(0x164) in
// 0x631244): the node's matrix, then strength (value 0), decay (1), turbulence (3), frequency (4), scale (5) and the type word (2).
CWindForceSceneNode::CWindForceSceneNode(const CColladaDatabase& source, const SForce& record) : CForceSceneNode(source, record) {
    parameters.matrix = &absoluteTransform;
    parameters.strength = record.values[0];
    parameters.attenuation = record.values[1];
    parameters.turbulence = record.values[3];
    parameters.turbulenceFrequency = record.values[4];
    parameters.unk_14 = record.values[5];
    parameters.radial = rawInt(record.values[2]);
}

// 0x6308d4 _ZN6glitch7collada15particle_system19CWindForceSceneNodeD1Ev (D0 0x632a14 skipped)
CWindForceSceneNode::~CWindForceSceneNode() = default;

// 0x630318 _ZNK6glitch7collada15particle_system19CWindForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CWindForceSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    attributes->addFloat("strength", parameters.strength, false);
    attributes->addFloat("decay", parameters.attenuation, false);
    attributes->addFloat("turbulence", parameters.turbulence, false);
    attributes->addFloat("frequency", parameters.turbulenceFrequency, false);
    attributes->addFloat("scale", parameters.unk_14, false);
}

// 0x630584 _ZN6glitch7collada15particle_system19CWindForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CWindForceSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
    parameters.strength = attributes->getFloat("strength");
    parameters.attenuation = attributes->getFloat("decay");
    parameters.turbulence = attributes->getFloat("turbulence");
    parameters.turbulenceFrequency = attributes->getFloat("frequency");
    parameters.unk_14 = attributes->getFloat("scale");
}

// 0x6300f8 _ZN6glitch7collada15particle_system19CWindForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
void CWindForceSceneNode::bind(CParticleSystemSceneNode* particleSystem) {
    particleSystem->system->bindForce<ps::PWind>(parameters);
}

// 0x630080 _ZN6glitch7collada15particle_system19CWindForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
void CWindForceSceneNode::bind(CGlitchNewParticleSystemSceneNode* particleSystem) {
    particleSystem->system->bindForce<ps::PWind>(parameters);
}

// ---------------------------------------------------------------------------------------------------------------------
// CDeflectorForceSceneNode
// ---------------------------------------------------------------------------------------------------------------------

// 0x631050 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNodeC1ERKNS0_16CColladaDatabaseERKNS0_6SForceE (after operator new(0x168) in
// 0x631138): the node's matrix, then the record's seven values in order.
CDeflectorForceSceneNode::CDeflectorForceSceneNode(const CColladaDatabase& source, const SForce& record)
    : CForceSceneNode(source, record) {
    parameters.matrix = &absoluteTransform;
    parameters.bounce = record.values[0];
    parameters.bounceVariation = record.values[1];
    parameters.scatter = record.values[2];
    parameters.friction = record.values[3];
    parameters.cohesion = record.values[4];
    parameters.lengthScale = record.values[5];
    parameters.widthScale = record.values[6];
}

// 0x630868 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNodeD1Ev (D0 0x632afc skipped)
CDeflectorForceSceneNode::~CDeflectorForceSceneNode() = default;

// 0x6301f8 _ZNK6glitch7collada15particle_system24CDeflectorForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CDeflectorForceSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    attributes->addFloat("bounce", parameters.bounce, false);
    attributes->addFloat("variation", parameters.bounceVariation, false);
    attributes->addFloat("chaos", parameters.scatter, false);
    attributes->addFloat("friction", parameters.friction, false);
    attributes->addFloat("inheritVelocity", parameters.cohesion, false);
    attributes->addFloat("width", parameters.lengthScale, false);
    attributes->addFloat("length", parameters.widthScale, false);
}

// 0x630480 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CDeflectorForceSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
    parameters.bounce = attributes->getFloat("bounce");
    parameters.bounceVariation = attributes->getFloat("variation");
    parameters.scatter = attributes->getFloat("chaos");
    parameters.friction = attributes->getFloat("friction");
    parameters.cohesion = attributes->getFloat("inheritVelocity");
    parameters.lengthScale = attributes->getFloat("width");
    parameters.widthScale = attributes->getFloat("length");
}

// 0x634b20 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
void CDeflectorForceSceneNode::bind(CParticleSystemSceneNode* particleSystem) {
    particleSystem->system->bindForce<ps::PDeflector>(parameters);
}

// 0x634a88 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
void CDeflectorForceSceneNode::bind(CGlitchNewParticleSystemSceneNode* particleSystem) {
    particleSystem->system->bindForce<ps::PDeflector>(parameters);
}

}  // namespace glitch::collada::particle_system
