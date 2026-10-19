// glitch::scene::IParticleEmitter / IParticleAffector and the per-shape interfaces (scene/IParticleEmitter.hpp,
// scene/IParticleAffector.hpp): the empty bodies, the type tags and the setEnabled accessors.
#include "glitch-scene-collada-gui/scene/IParticleAffector.hpp"
#include "glitch-scene-collada-gui/scene/IParticleEmitter.hpp"

namespace glitch::scene {

// ---- IParticleEmitter ----

// 0x6f76d0 _ZNK6glitch5scene16IParticleEmitter19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The original body is empty.
void IParticleEmitter::serializeAttributes(io::IAttributes*, io::SAttributeReadWriteOptions*) const {}

// 0x6f76e4 _ZN6glitch5scene16IParticleEmitter21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Reads nothing and returns 0 (the listing is `mov r0, #0; bx lr`).
int IParticleEmitter::deserializeAttributes(int, io::IAttributes*, io::SAttributeReadWriteOptions*) { return 0; }

// 0x6f76ec _ZNK6glitch5scene16IParticleEmitter7getTypeEv
E_PARTICLE_EMITTER_TYPE IParticleEmitter::getType() const { return EPET_POINT; }

// 0x6f77d8 _ZN6glitch5scene16IParticleEmitterD1Ev (D0 0x6f7848)
IParticleEmitter::~IParticleEmitter() = default;

// 0x6f8a24 _ZN6glitch5scene19IParticleBoxEmitterD1Ev (D0 0x6f997c)
IParticleBoxEmitter::~IParticleBoxEmitter() = default;
// 0x6f894c _ZNK6glitch5scene19IParticleBoxEmitter7getTypeEv
E_PARTICLE_EMITTER_TYPE IParticleBoxEmitter::getType() const { return EPET_BOX; }

// 0x6f9b14 _ZN6glitch5scene24IParticleCylinderEmitterD1Ev (D0 0x6fa408)
IParticleCylinderEmitter::~IParticleCylinderEmitter() = default;
// 0x6f9a00 _ZNK6glitch5scene24IParticleCylinderEmitter7getTypeEv
E_PARTICLE_EMITTER_TYPE IParticleCylinderEmitter::getType() const { return EPET_CYLINDER; }

// 0x6fc4a4 _ZN6glitch5scene20IParticleRingEmitterD1Ev (D0 0x6fcc8c)
IParticleRingEmitter::~IParticleRingEmitter() = default;
// 0x6fc3c4 _ZNK6glitch5scene20IParticleRingEmitter7getTypeEv
E_PARTICLE_EMITTER_TYPE IParticleRingEmitter::getType() const { return EPET_RING; }

// 0x6fd9c4 _ZN6glitch5scene22IParticleSphereEmitterD1Ev (D0 0x6fe238)
IParticleSphereEmitter::~IParticleSphereEmitter() = default;
// 0x6fd8f4 _ZNK6glitch5scene22IParticleSphereEmitter7getTypeEv
E_PARTICLE_EMITTER_TYPE IParticleSphereEmitter::getType() const { return EPET_SPHERE; }

// 0x6fb0b0 _ZN6glitch5scene20IParticleMeshEmitterD1Ev (D0 0x6fb270)
IParticleMeshEmitter::~IParticleMeshEmitter() = default;
// 0x6fafcc _ZNK6glitch5scene20IParticleMeshEmitter7getTypeEv
E_PARTICLE_EMITTER_TYPE IParticleMeshEmitter::getType() const { return EPET_MESH; }

// 0x6f77fc _ZN6glitch5scene37IParticleAnimatedMeshSceneNodeEmitterD1Ev (D0 0x6f7a20)
IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter() = default;
// 0x6f76f4 _ZNK6glitch5scene37IParticleAnimatedMeshSceneNodeEmitter7getTypeEv
E_PARTICLE_EMITTER_TYPE IParticleAnimatedMeshSceneNodeEmitter::getType() const { return EPET_ANIMATED_MESH; }

// ---- IParticleAffector ----

// 0x6f837c _ZNK6glitch5scene17IParticleAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The original body is empty.
void IParticleAffector::serializeAttributes(io::IAttributes*, io::SAttributeReadWriteOptions*) const {}

// 0x6f8390 _ZN6glitch5scene17IParticleAffector21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Reads nothing and returns 0 (`mov r0, #0; bx lr`).
int IParticleAffector::deserializeAttributes(int, io::IAttributes*, io::SAttributeReadWriteOptions*) { return 0; }

// 0x6f836c _ZN6glitch5scene17IParticleAffector10setEnabledEb
void IParticleAffector::setEnabled(bool value) { enabled = value; }

// 0x6f8374 _ZNK6glitch5scene17IParticleAffector10getEnabledEv
bool IParticleAffector::getEnabled() const { return enabled; }

// 0x6f8414 _ZN6glitch5scene17IParticleAffectorD1Ev (D0 0x6f8678)
IParticleAffector::~IParticleAffector() = default;

// 0x6f8438 _ZN6glitch5scene27IParticleAttractionAffectorD1Ev (D0 0x6f8840)
IParticleAttractionAffector::~IParticleAttractionAffector() = default;
// 0x6f8398 _ZNK6glitch5scene27IParticleAttractionAffector7getTypeEv
E_PARTICLE_AFFECTOR_TYPE IParticleAttractionAffector::getType() const { return EPAT_ATTRACT; }

// 0x6fa4b0 _ZN6glitch5scene24IParticleFadeOutAffectorD1Ev (D0 0x6fa8d8)
IParticleFadeOutAffector::~IParticleFadeOutAffector() = default;
// 0x6fa47c _ZNK6glitch5scene24IParticleFadeOutAffector7getTypeEv
E_PARTICLE_AFFECTOR_TYPE IParticleFadeOutAffector::getType() const { return EPAT_FADE_OUT; }

// 0x6faa30 _ZN6glitch5scene24IParticleGravityAffectorD1Ev (D0 0x6faeb0)
IParticleGravityAffector::~IParticleGravityAffector() = default;
// 0x6fa9f4 _ZNK6glitch5scene24IParticleGravityAffector7getTypeEv
E_PARTICLE_AFFECTOR_TYPE IParticleGravityAffector::getType() const { return EPAT_GRAVITY; }

// 0x6fcd50 _ZN6glitch5scene25IParticleRotationAffectorD1Ev (D0 0x6fd0d8)
IParticleRotationAffector::~IParticleRotationAffector() = default;
// 0x6fcd00 _ZNK6glitch5scene25IParticleRotationAffector7getTypeEv
E_PARTICLE_AFFECTOR_TYPE IParticleRotationAffector::getType() const { return EPAT_ROTATE; }

// 0x6fd22c _ZN6glitch5scene21IParticleSizeAffectorD1Ev (D0 0x6fd7d8)
IParticleSizeAffector::~IParticleSizeAffector() = default;
// 0x6fd1e4 _ZNK6glitch5scene21IParticleSizeAffector7getTypeEv
E_PARTICLE_AFFECTOR_TYPE IParticleSizeAffector::getType() const { return EPAT_SIZE; }

// 0x6fe2ec _ZN6glitch5scene21IParticleSpinAffectorD1Ev (D0 0x6fe738)
IParticleSpinAffector::~IParticleSpinAffector() = default;
// 0x6fe2ac _ZNK6glitch5scene21IParticleSpinAffector7getTypeEv
E_PARTICLE_AFFECTOR_TYPE IParticleSpinAffector::getType() const { return EPAT_SPIN; }

}  // namespace glitch::scene
