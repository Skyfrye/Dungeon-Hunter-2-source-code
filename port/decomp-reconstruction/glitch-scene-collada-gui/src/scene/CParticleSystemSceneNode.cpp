// glitch::scene::IParticleSystemSceneNode and glitch::scene::CParticleSystemSceneNode (scene/CParticleSystemSceneNode.hpp).
#include "glitch-scene-collada-gui/scene/CParticleSystemSceneNode.hpp"

#include <cstring>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/particle_affectors.hpp"
#include "glitch-scene-collada-gui/particle_emitters.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/IAnimatedMeshSceneNode.hpp"

namespace glitch::scene {

namespace {

constexpr std::uint32_t kTagParticleSystem = 0x6c637470;  // "ptcl"

// .data.rel.ro tables at 0x95b... ("Point", "AnimatedMesh", "Box", "Cylinder", "Mesh", "Ring", "Sphere") and ("None", "Attract",
// "FadeOut", "Gravity", "Rotate", "Size", "Spin"), both null terminated (ParticleEmitterTypeNames / ParticleAffectorTypeNames).
const char* const ParticleEmitterTypeNames[] = {"Point", "AnimatedMesh", "Box", "Cylinder", "Mesh", "Ring", "Sphere", nullptr};
const char* const ParticleAffectorTypeNames[] = {"None", "Attract", "FadeOut", "Gravity", "Rotate", "Size", "Spin", nullptr};

constexpr std::int32_t kMaxParticles = 16250;  // doParticleSystem caps the particle vector

float bitsToFloat(std::uint32_t bits) {
    float f;
    std::memcpy(&f, &bits, sizeof f);
    return f;
}

}  // namespace

// ---- IParticleSystemSceneNode ----

// 0x6c23f4 _ZN6glitch5scene24IParticleSystemSceneNodeC2EiRKNS_4core8vector3dIfEES6_S6_
IParticleSystemSceneNode::IParticleSystemSceneNode(int idValue, const core::vector3d<float>& positionValue,
                                                   const core::vector3d<float>& rotationValue,
                                                   const core::vector3d<float>& scaleValue)
    : ISceneNode(idValue, positionValue, core::quaternion().set(rotationValue.X, rotationValue.Y, rotationValue.Z), scaleValue) {}

// 0x6c1724 _ZN6glitch5scene24IParticleSystemSceneNodeD1Ev (D0 0x6c3028)
IParticleSystemSceneNode::~IParticleSystemSceneNode() = default;

// ---- CParticleSystemSceneNode ----

// 0x6c2478 _ZN6glitch5scene24CParticleSystemSceneNodeC1EbiRKNS_4core8vector3dIfEES6_S6_
// 0x6c2598 _ZN6glitch5scene24CParticleSystemSceneNodeC2EbiRKNS_4core8vector3dIfEES6_S6_
// The members take the values the constructors store (the affector list is empty and self-linked, the box is -1..1, the
// particle size 5 x 5, the node global, opaque).
CParticleSystemSceneNode::CParticleSystemSceneNode(bool, int idValue, const core::vector3d<float>& positionValue,
                                                   const core::vector3d<float>& rotationValue,
                                                   const core::vector3d<float>& scaleValue)
    : IParticleSystemSceneNode(idValue, positionValue, rotationValue, scaleValue) {
    affectors.next = &affectors;  // +0x130
    affectors.prev = &affectors;  // +0x134
    setParticleSize(core::dimension2d<float>{5.0f, 5.0f});
}

// 0x6c1cec _ZN6glitch5scene24CParticleSystemSceneNodeD1Ev (D2 0x6c1dfc, D0 0x6c1de0)
CParticleSystemSceneNode::~CParticleSystemSceneNode() {
    removeAllAffectors();
}

// 0x6c0dc4 _ZNK6glitch5scene24CParticleSystemSceneNode7getTypeEv
E_SCENE_NODE_TYPE CParticleSystemSceneNode::getType() const { return static_cast<E_SCENE_NODE_TYPE>(kTagParticleSystem); }

// 0x6c0ee4 _ZNK6glitch5scene24CParticleSystemSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CParticleSystemSceneNode::getBoundingBox() const { return boundingBox; }

// 0x6c0e58 _ZNK6glitch5scene24CParticleSystemSceneNode16getMaterialCountEv
std::uint32_t CParticleSystemSceneNode::getMaterialCount() const { return 1; }

// 0x6c0ee0 _ZN6glitch5scene24CParticleSystemSceneNode6renderEPv: the original body is empty.
void CParticleSystemSceneNode::render(void*) {}

// 0x6c0f08 _ZN6glitch5scene24CParticleSystemSceneNode17reallocateBuffersEv: the original body is empty.
void CParticleSystemSceneNode::reallocateBuffers() {}

// 0x6c0e50 _ZN6glitch5scene24CParticleSystemSceneNode11getMaterialEj
boost::intrusive_ptr<video::CMaterial>& CParticleSystemSceneNode::getMaterial(std::uint32_t) { return material; }

// 0x6c0df8 _ZN6glitch5scene24CParticleSystemSceneNode10getEmitterEv
IParticleEmitter* CParticleSystemSceneNode::getEmitter() { return emitter.get(); }

// 0x6c0e00 _ZN6glitch5scene24CParticleSystemSceneNode10setEmitterEPNS0_16IParticleEmitterE
// Drops the old emitter and takes a use of the new one.
void CParticleSystemSceneNode::setEmitter(IParticleEmitter* newEmitter) {
    emitter = boost::intrusive_ptr<IParticleEmitter>(newEmitter, true);
}

// 0x6c0ed8 _ZN6glitch5scene24CParticleSystemSceneNode15setTransparencyEf
void CParticleSystemSceneNode::setTransparency(float alpha) { transparency = alpha; }

// 0x6c0eec _ZN6glitch5scene24CParticleSystemSceneNode21setParticlesAreGlobalEb
void CParticleSystemSceneNode::setParticlesAreGlobal(bool global) { particlesAreGlobal = global; }

// 0x6c0dd0 _ZNK6glitch5scene24CParticleSystemSceneNode20getNumberOfParticlesEv
int CParticleSystemSceneNode::getNumberOfParticles() const { return static_cast<int>(particles.size()); }

// 0x6c0ef4 _ZN6glitch5scene24CParticleSystemSceneNode15setParticleSizeERKNS_4core11dimension2dIfEE
void CParticleSystemSceneNode::setParticleSize(const core::dimension2d<float>& size) { particleSize = size; }

// 0x6c0f0c _ZN6glitch5scene24CParticleSystemSceneNode16setBillboardTypeENS0_25E_PARTICLE_BILLBOARD_TYPEE
void CParticleSystemSceneNode::setBillboardType(E_PARTICLE_BILLBOARD_TYPE type) { billboardType = type; }

// 0x6c0e60 _ZN6glitch5scene24CParticleSystemSceneNode19onRegisterSceneNodeEv
int CParticleSystemSceneNode::onRegisterSceneNode() {
    if (!particles.empty()) {
        sceneManager->registerNodeForRendering(this, material, reinterpret_cast<void*>(1), ESNRP_AUTOMATIC, nullptr,
                                               0x7FFFFFFF);  // vptr+0x24 of the scene manager (+0x110 of the node)
    }
    return 1;
}

// 0x6c1c54 _ZN6glitch5scene24CParticleSystemSceneNode11addAffectorEPNS0_16IParticleAffectorE
// Takes a use of the affector and links a new entry at the end of the list.
void CParticleSystemSceneNode::addAffector(IParticleAffector* affector) {
    ++affector->referenceCounter;  // takes a use
    auto* entry = new SAffectorEntry;
    entry->affector = affector;
    entry->next = &affectors;
    entry->prev = affectors.prev;
    affectors.prev->next = entry;
    affectors.prev = entry;
}

// 0x6c1ca0 _ZN6glitch5scene24CParticleSystemSceneNode17removeAllAffectorsEv
// Drops every affector and frees the entries.
void CParticleSystemSceneNode::removeAllAffectors() {
    SListLink* link = affectors.next;
    while (link != &affectors) {
        auto* entry = static_cast<SAffectorEntry*>(link);
        entry->affector->drop();
        link->prev->next = link->next;
        link->next->prev = link->prev;
        link = link->next;
        delete entry;
    }
}

// 0x6c2ff8 _ZN6glitch5scene24CParticleSystemSceneNode9onAnimateEj
void CParticleSystemSceneNode::onAnimate(std::uint32_t timeMs) {
    ISceneNode::onAnimate(timeMs);
    if (!os::Timer::isStopped()) {
        doParticleSystem(os::Timer::getTime());
    }
}

// 0x6c1ee4 _ZN6glitch5scene24CParticleSystemSceneNode18createSpinAffectorEjf
IParticleSpinAffector* CParticleSystemSceneNode::createSpinAffector(unsigned int spinTime, float variation) {
    return new CParticleSpinAffector(spinTime, variation);
}

// 0x6c1f14 _ZN6glitch5scene24CParticleSystemSceneNode18createSizeAffectorEffjj
IParticleSizeAffector* CParticleSystemSceneNode::createSizeAffector(float targetSize, float variation,
                                                                    unsigned int growForTime, unsigned int fadeForTime) {
    return new CParticleSizeAffector(targetSize, variation, growForTime, fadeForTime);
}

// 0x6c1f5c _ZN6glitch5scene24CParticleSystemSceneNode22createRotationAffectorERKNS_4core8vector3dIfEES6_
IParticleRotationAffector* CParticleSystemSceneNode::createRotationAffector(const core::vector3d<float>& pivotPoint,
                                                                            const core::vector3d<float>& speed) {
    return new CParticleRotationAffector(pivotPoint, speed);
}

// 0x6c1f8c _ZN6glitch5scene24CParticleSystemSceneNode21createGravityAffectorERKNS_4core8vector3dIfEEj
IParticleGravityAffector* CParticleSystemSceneNode::createGravityAffector(const core::vector3d<float>& gravity,
                                                                          unsigned int timeForceLost) {
    return new CParticleGravityAffector(gravity, timeForceLost);
}

// 0x6c1fbc _ZN6glitch5scene24CParticleSystemSceneNode29createFadeOutParticleAffectorERKNS_5video6SColorEj
IParticleFadeOutAffector* CParticleSystemSceneNode::createFadeOutParticleAffector(const video::SColor& targetColor,
                                                                                  unsigned int fadeOutTime) {
    return new CParticleFadeOutAffector(targetColor, fadeOutTime);
}

// 0x6c1fec _ZN6glitch5scene24CParticleSystemSceneNode24createAttractionAffectorERKNS_4core8vector3dIfEEfbbbb
IParticleAttractionAffector* CParticleSystemSceneNode::createAttractionAffector(const core::vector3d<float>& point,
                                                                                float speed, bool attract, bool affectX,
                                                                                bool affectY, bool affectZ) {
    return new CParticleAttractionAffector(point, speed, attract, affectX, affectY, affectZ);
}

// 0x6c2044 _ZN6glitch5scene24CParticleSystemSceneNode19createSphereEmitterERKNS_4core8vector3dIfEEfS6_jjRKNS_5video6SColorESA_jji
IParticleSphereEmitter* CParticleSystemSceneNode::createSphereEmitter(
    const core::vector3d<float>& center, float radius, const core::vector3d<float>& direction,
    unsigned int minParticlesPerSecond, unsigned int maxParticlesPerSecond, const video::SColor& minStartColor,
    const video::SColor& maxStartColor, unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) {
    return new CParticleSphereEmitter(center, radius, direction, minParticlesPerSecond, maxParticlesPerSecond, minStartColor,
                                      maxStartColor, lifeTimeMin, lifeTimeMax, maxAngleDegrees);
}

// 0x6c20bc _ZN6glitch5scene24CParticleSystemSceneNode17createRingEmitterERKNS_4core8vector3dIfEEffS6_jjRKNS_5video6SColorESA_jji
IParticleRingEmitter* CParticleSystemSceneNode::createRingEmitter(
    const core::vector3d<float>& center, float radius, float ringThickness, const core::vector3d<float>& direction,
    unsigned int minParticlesPerSecond, unsigned int maxParticlesPerSecond, const video::SColor& minStartColor,
    const video::SColor& maxStartColor, unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) {
    return new CParticleRingEmitter(center, radius, ringThickness, direction, minParticlesPerSecond, maxParticlesPerSecond,
                                    minStartColor, maxStartColor, lifeTimeMin, lifeTimeMax, maxAngleDegrees);
}

// 0x6c213c _ZN6glitch5scene24CParticleSystemSceneNode18createPointEmitterERKNS_4core8vector3dIfEEjjRKNS_5video6SColorESA_jji
IParticleEmitter* CParticleSystemSceneNode::createPointEmitter(const core::vector3d<float>& direction,
                                                               unsigned int minParticlesPerSecond,
                                                               unsigned int maxParticlesPerSecond,
                                                               const video::SColor& minStartColor,
                                                               const video::SColor& maxStartColor, unsigned int lifeTimeMin,
                                                               unsigned int lifeTimeMax, int maxAngleDegrees) {
    return new CParticlePointEmitter(direction, minParticlesPerSecond, maxParticlesPerSecond, minStartColor, maxStartColor,
                                     lifeTimeMin, lifeTimeMax, maxAngleDegrees);
}

// 0x6c21bc _ZN6glitch5scene24CParticleSystemSceneNode17createMeshEmitterERKN5boost13intrusive_ptrIKNS0_5IMeshEEEbRKNS_4core8vector3dIfEEfibjjRKNS_5video6SColorESH_jji
IParticleMeshEmitter* CParticleSystemSceneNode::createMeshEmitter(
    const boost::intrusive_ptr<const IMesh>& mesh, bool useNormalDirection, const core::vector3d<float>& direction,
    float normalDirectionModifier, int meshBufferNumber, bool everyMeshVertex, unsigned int minParticlesPerSecond,
    unsigned int maxParticlesPerSecond, const video::SColor& minStartColor, const video::SColor& maxStartColor,
    unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) {
    return new CParticleMeshEmitter(mesh, useNormalDirection, direction, normalDirectionModifier, meshBufferNumber,
                                    everyMeshVertex, minParticlesPerSecond, maxParticlesPerSecond, minStartColor,
                                    maxStartColor, lifeTimeMin, lifeTimeMax, maxAngleDegrees);
}

// 0x6c224c _ZN6glitch5scene24CParticleSystemSceneNode21createCylinderEmitterERKNS_4core8vector3dIfEEfS6_fbS6_jjRKNS_5video6SColorESA_jji
IParticleCylinderEmitter* CParticleSystemSceneNode::createCylinderEmitter(
    const core::vector3d<float>& center, float radius, const core::vector3d<float>& normal, float length, bool outlineOnly,
    const core::vector3d<float>& direction, unsigned int minParticlesPerSecond, unsigned int maxParticlesPerSecond,
    const video::SColor& minStartColor, const video::SColor& maxStartColor, unsigned int lifeTimeMin,
    unsigned int lifeTimeMax, int maxAngleDegrees) {
    return new CParticleCylinderEmitter(center, radius, normal, length, outlineOnly, direction, minParticlesPerSecond,
                                        maxParticlesPerSecond, minStartColor, maxStartColor, lifeTimeMin, lifeTimeMax,
                                        maxAngleDegrees);
}

// 0x6c22dc _ZN6glitch5scene24CParticleSystemSceneNode16createBoxEmitterERKNS_4core8aabbox3dIfEERKNS2_8vector3dIfEEjjRKNS_5video6SColorESE_jji
IParticleBoxEmitter* CParticleSystemSceneNode::createBoxEmitter(
    const core::aabbox3d<float>& box, const core::vector3d<float>& direction, unsigned int minParticlesPerSecond,
    unsigned int maxParticlesPerSecond, const video::SColor& minStartColor, const video::SColor& maxStartColor,
    unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) {
    return new CParticleBoxEmitter(box, direction, minParticlesPerSecond, maxParticlesPerSecond, minStartColor, maxStartColor,
                                   lifeTimeMin, lifeTimeMax, maxAngleDegrees);
}

// 0x6c2364 _ZN6glitch5scene24CParticleSystemSceneNode34createAnimatedMeshSceneNodeEmitterEPNS0_22IAnimatedMeshSceneNodeEbRKNS_4core8vector3dIfEEfibjjRKNS_5video6SColorESC_jji
IParticleAnimatedMeshSceneNodeEmitter* CParticleSystemSceneNode::createAnimatedMeshSceneNodeEmitter(
    IAnimatedMeshSceneNode* node, bool useNormalDirection, const core::vector3d<float>& direction,
    float normalDirectionModifier, int meshBufferNumber, bool everyMeshVertex, unsigned int minParticlesPerSecond,
    unsigned int maxParticlesPerSecond, const video::SColor& minStartColor, const video::SColor& maxStartColor,
    unsigned int lifeTimeMin, unsigned int lifeTimeMax, int maxAngleDegrees) {
    return new CParticleAnimatedMeshSceneNodeEmitter(node, useNormalDirection, direction, normalDirectionModifier,
                                                     meshBufferNumber, everyMeshVertex, minParticlesPerSecond,
                                                     maxParticlesPerSecond, minStartColor, maxStartColor, lifeTimeMin,
                                                     lifeTimeMax, maxAngleDegrees);
}

// 0x6c2880 _ZN6glitch5scene24CParticleSystemSceneNode16doParticleSystemEj
void CParticleSystemSceneNode::doParticleSystem(std::uint32_t now) {
    if (lastEmitTime == 0) {
        lastEmitTime = now;
        return;
    }
    const std::uint32_t elapsed = now - lastEmitTime;
    lastEmitTime = now;

    const float* m = absoluteTransform.M;  // +0x24
    if (emitter && (flags & ESNF_VISIBLE) && emitter->getMaxParticlesPerSecond() != 0) {
        SParticle* emitted = nullptr;
        const int amount = emitter->emitt(now, elapsed, emitted);
        if (amount != 0 && emitted != nullptr) {
            const std::int32_t oldSize = static_cast<std::int32_t>(particles.size());
            const std::int32_t newSize = amount > kMaxParticles - oldSize ? kMaxParticles : oldSize + amount;
            particles.resize(static_cast<std::size_t>(newSize));
            for (std::int32_t i = oldSize, j = 0; i < newSize; ++i, ++j) {
                SParticle& p = particles[static_cast<std::size_t>(i)];
                p = emitted[j];
                // The start vector is turned by the node's absolute rotation.
                const float x = p.startVector.X;
                const float y = p.startVector.Y;
                const float z = p.startVector.Z;
                p.startVector.X = (x * m[0] + y * m[4]) + z * m[8];
                p.startVector.Y = (x * m[1] + y * m[5]) + z * m[9];
                p.startVector.Z = (x * m[2] + y * m[6]) + z * m[10];
                if (particlesAreGlobal) {
                    // Global particles live in world space: the position goes through the whole absolute matrix.
                    const float px = p.pos.X;
                    const float py = p.pos.Y;
                    const float pz = p.pos.Z;
                    const float ty = ((px * m[1] + py * m[5]) + pz * m[9]) + m[13];
                    const float tz = ((px * m[2] + py * m[6]) + pz * m[10]) + m[14];
                    const float tx = ((px * m[0] + py * m[4]) + pz * m[8]) + m[12];
                    p.pos.X = tx;
                    p.pos.Z = tz;
                    p.pos.Y = ty;
                }
            }
        }
    }

    if (particles.empty()) {
        return;
    }
    for (SListLink* link = affectors.next; link != &affectors; link = link->next) {
        static_cast<SAffectorEntry*>(link)->affector->affect(now, particles.data(), static_cast<std::uint32_t>(particles.size()));
    }
    if (particlesAreGlobal) {
        boundingBox.MinEdge = {m[12], m[13], m[14]};
        boundingBox.MaxEdge = {m[12], m[13], m[14]};
    } else {
        boundingBox.MinEdge = {0.0f, 0.0f, 0.0f};
        boundingBox.MaxEdge = {0.0f, 0.0f, 0.0f};
    }
    const float dt = static_cast<float>(elapsed);
    std::size_t i = 0;
    while (i < particles.size()) {
        SParticle& p = particles[i];
        if (now <= p.endTime) {
            const float dy = dt * p.vector.Y;
            const float dz = dt * p.vector.Z;
            p.pos.X = p.pos.X + dt * p.vector.X;
            p.pos.Y = p.pos.Y + dy;
            p.pos.Z = p.pos.Z + dz;
            ++i;
            if (p.pos.X > boundingBox.MaxEdge.X) boundingBox.MaxEdge.X = p.pos.X;
            if (p.pos.Y > boundingBox.MaxEdge.Y) boundingBox.MaxEdge.Y = p.pos.Y;
            if (p.pos.Z > boundingBox.MaxEdge.Z) boundingBox.MaxEdge.Z = p.pos.Z;
            if (p.pos.X < boundingBox.MinEdge.X) boundingBox.MinEdge.X = p.pos.X;
            if (p.pos.Y < boundingBox.MinEdge.Y) boundingBox.MinEdge.Y = p.pos.Y;
            if (p.pos.Z < boundingBox.MinEdge.Z) boundingBox.MinEdge.Z = p.pos.Z;
        } else {
            particles.erase(particles.begin() + static_cast<std::ptrdiff_t>(i));
        }
    }
    const float half = (particleSize.Width > particleSize.Height ? particleSize.Width : particleSize.Height) * 0.5f;
    boundingBox.MaxEdge.X += half;
    boundingBox.MaxEdge.Y += half;
    boundingBox.MaxEdge.Z += half;
    boundingBox.MinEdge.X -= half;
    boundingBox.MinEdge.Y -= half;
    boundingBox.MinEdge.Z -= half;
    if (particlesAreGlobal) {
        // Global particles are stored in world space; the box is brought back into the node's space.
        core::CMatrix4<float> inverse;
        if (!absoluteTransform.getInverse(inverse)) {
            std::memset(inverse.M, 0, sizeof inverse.M);
            inverse.flag = false;
        }
        inverse.transformBoxEx(boundingBox);
    }
}

// 0x6c309c _ZN6glitch5scene24CParticleSystemSceneNode5cloneEv
ISceneNode* CParticleSystemSceneNode::clone() {
    core::CMatrix4<float> rotationMatrix;
    rotation.getMatrix_transposed(rotationMatrix);
    core::vector3d<float> euler = rotationMatrix.getRotationDegrees();
    euler.X = euler.X * 0.017453f;
    euler.Y = euler.Y * 0.017453f;
    euler.Z = euler.Z * 0.017453f;
    auto* node = new CParticleSystemSceneNode(false, id, position, euler, scale);
    node->cloneMembers(this);
    if (material) {
        node->material = material->clone(nullptr);
    }
    for (SListLink* link = affectors.next; link != &affectors; link = link->next) {
        node->addAffector(static_cast<SAffectorEntry*>(link)->affector);  // vptr+0x104
    }
    node->particleSize = particleSize;     // +0x148
    node->lastEmitTime = lastEmitTime;     // +0x150
    node->unk_154 = unk_154;               // +0x154
    node->unk_178 = unk_178;               // +0x178
    node->particlesAreGlobal = particlesAreGlobal;
    if (!emitter) {
        return node;
    }
    IParticleEmitter* e = emitter.get();
    IParticleEmitter* made = nullptr;
    switch (e->getType()) {
        case EPET_POINT: {
            made = createPointEmitter(e->getDirection(), e->getMinParticlesPerSecond(), e->getMaxParticlesPerSecond(),
                                      e->getMinStartColor(), e->getMaxStartColor(),
                                      static_cast<CParticlePointEmitter*>(e)->getMinLifeTime(),
                                      static_cast<CParticlePointEmitter*>(e)->getMaxLifeTime(),
                                      static_cast<CParticlePointEmitter*>(e)->getMaxAngleDegrees());
            break;
        }
        case EPET_ANIMATED_MESH: {
            auto* a = static_cast<CParticleAnimatedMeshSceneNodeEmitter*>(e);
            auto* nodeClone = static_cast<IAnimatedMeshSceneNode*>(a->getAnimatedMeshSceneNode()->clone());
            made = createAnimatedMeshSceneNodeEmitter(nodeClone, a->getUseNormalDirection(), a->getDirection(),
                                                      a->getNormalDirectionModifier(), a->getMBNumber(),
                                                      a->getEveryMeshVertex(), a->getMinParticlesPerSecond(),
                                                      a->getMaxParticlesPerSecond(), a->getMinStartColor(),
                                                      a->getMaxStartColor(), a->getMinLifeTime(), a->getMaxLifeTime(),
                                                      a->getMaxAngleDegrees());
            break;
        }
        case EPET_BOX: {
            auto* b = static_cast<CParticleBoxEmitter*>(e);
            made = createBoxEmitter(b->getBox(), b->getDirection(), b->getMinParticlesPerSecond(),
                                    b->getMaxParticlesPerSecond(), b->getMinStartColor(), b->getMaxStartColor(),
                                    b->getMinLifeTime(), b->getMaxLifeTime(), b->getMaxAngleDegrees());
            break;
        }
        case EPET_CYLINDER: {
            auto* c = static_cast<CParticleCylinderEmitter*>(e);
            made = createCylinderEmitter(c->getCenter(), c->getRadius(), c->getNormal(), c->getLength(), c->getOutlineOnly(),
                                         c->getDirection(), c->getMinParticlesPerSecond(), c->getMaxParticlesPerSecond(),
                                         c->getMinStartColor(), c->getMaxStartColor(), c->getMinLifeTime(),
                                         c->getMaxLifeTime(), c->getMaxAngleDegrees());
            break;
        }
        case EPET_MESH: {
            auto* me = static_cast<CParticleMeshEmitter*>(e);
            const boost::intrusive_ptr<const IMesh> meshCopy = me->getMesh();
            made = createMeshEmitter(meshCopy, me->getUseNormalDirection(), me->getDirection(),
                                     me->getNormalDirectionModifier(), me->getMBNumber(), me->getEveryMeshVertex(),
                                     me->getMinParticlesPerSecond(), me->getMaxParticlesPerSecond(), me->getMinStartColor(),
                                     me->getMaxStartColor(), me->getMinLifeTime(), me->getMaxLifeTime(),
                                     me->getMaxAngleDegrees());
            break;
        }
        case EPET_RING: {
            auto* r = static_cast<CParticleRingEmitter*>(e);
            made = createRingEmitter(r->getCenter(), r->getRadius(), r->getRingThickness(), r->getDirection(),
                                     r->getMinParticlesPerSecond(), r->getMaxParticlesPerSecond(), r->getMinStartColor(),
                                     r->getMaxStartColor(), r->getMinLifeTime(), r->getMaxLifeTime(),
                                     r->getMaxAngleDegrees());
            break;
        }
        case EPET_SPHERE: {
            auto* s = static_cast<CParticleSphereEmitter*>(e);
            made = createSphereEmitter(s->getCenter(), s->getRadius(), s->getDirection(), s->getMinParticlesPerSecond(),
                                       s->getMaxParticlesPerSecond(), s->getMinStartColor(), s->getMaxStartColor(),
                                       s->getMinLifeTime(), s->getMaxLifeTime(), s->getMaxAngleDegrees());
            break;
        }
        default:
            node->emitter = nullptr;
            return node;
    }
    node->setEmitter(made);  // takes a use
    made->drop();            // releases the use the create call returned
    return node;
}

// 0x6c1554 _ZNK6glitch5scene24CParticleSystemSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CParticleSystemSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    attributes->addBool("GlobalParticles", particlesAreGlobal, false);   // vptr+0xd8
    attributes->addFloat("ParticleWidth", particleSize.Width, false);    // vptr+0x64
    attributes->addFloat("ParticleHeight", particleSize.Height, false);
    const int emitterType = emitter ? static_cast<int>(emitter->getType()) : 7;  // 7: no emitter
    attributes->addEnum("Emitter", emitterType, ParticleEmitterTypeNames, false);  // vptr+0xf4
    if (emitter) {
        emitter->serializeAttributes(attributes, options);
    }
    for (const SListLink* link = affectors.next; link != &affectors; link = link->next) {
        const IParticleAffector* affector = static_cast<const SAffectorEntry*>(link)->affector;
        attributes->addEnum("Affector", static_cast<int>(affector->getType()), ParticleAffectorTypeNames, false);
        affector->serializeAttributes(attributes, nullptr);
    }
    if (options && (options->flags & 2) != 0) {
        // The editor flag adds a trailing empty affector entry.
        attributes->addEnum("Affector", static_cast<int>(EPAT_NONE), ParticleAffectorTypeNames, false);
    }
}

// 0x6c1790 _ZN6glitch5scene24CParticleSystemSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CParticleSystemSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
    particlesAreGlobal = attributes->getBool("GlobalParticles");   // vptr+0xe4
    particleSize.Width = attributes->getFloat("ParticleWidth");    // vptr+0x70
    particleSize.Height = attributes->getFloat("ParticleHeight");
    if (attributes->findAttribute("Emitter") == 0xFFFFFFFFu) {     // vptr+0x28
        return;
    }
    emitter = nullptr;
    const int emitterType = attributes->getEnum("Emitter", ParticleEmitterTypeNames);  // vptr+0x100
    const core::vector3d<float> defaultDirection{0.0f, 0.01f, 0.0f};
    const video::SColor black{0xFF000000u};
    const video::SColor white{0xFFFFFFFFu};
    IParticleEmitter* created = nullptr;
    if (emitterType == EPET_POINT) {
        created = createPointEmitter(defaultDirection, 5, 10, black, white, 2000, 4000, 0);
    } else if (emitterType == EPET_BOX) {
        core::aabbox3d<float> box;
        box.MinEdge = {-10.0f, 0.0f, -10.0f};
        box.MaxEdge = {5.0f, 30.0f, 10.0f};
        created = createBoxEmitter(box, defaultDirection, 5, 10, black, white, 2000, 4000, 0);
    }
    emitter = boost::intrusive_ptr<IParticleEmitter>(created, false);  // adopts the use the create call returned
    std::uint32_t index = emitter ? static_cast<std::uint32_t>(emitter->deserializeAttributes(0, attributes, nullptr)) + 1 : 1;
    removeAllAffectors();
    const std::uint32_t count = static_cast<std::uint32_t>(attributes->getAttributeCount());  // vptr+0x0c
    while (count > index) {
        const char* name = attributes->getAttributeName(static_cast<int>(index));  // vptr+0x10
        if (name == nullptr || std::strcmp("Affector", name) != 0) {
            return;
        }
        IParticleAffector* affector = nullptr;
        switch (attributes->getEnum(static_cast<int>(index), ParticleAffectorTypeNames)) {  // vptr+0x104
            case EPAT_FADE_OUT:
                affector = createFadeOutParticleAffector(video::SColor{0}, 1000);
                break;
            case EPAT_GRAVITY:
                affector = createGravityAffector(core::vector3d<float>{0.0f, bitsToFloat(0xBCA3D70Fu), 0.0f}, 1000);
                break;
            case EPAT_SIZE:
                affector = createSizeAffector(1.0f, 0.0f, 1000, 0);
                break;
            case EPAT_SPIN:
                affector = createSpinAffector(1000, 0.0f);
                break;
            default:
                break;
        }
        ++index;
        if (affector != nullptr) {
            index = static_cast<std::uint32_t>(affector->deserializeAttributes(static_cast<int>(index), attributes, options));
            addAffector(affector);
            affector->drop();
        }
    }
}

}  // namespace glitch::scene
