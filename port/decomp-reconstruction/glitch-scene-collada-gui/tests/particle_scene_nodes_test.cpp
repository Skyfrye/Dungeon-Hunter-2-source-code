// The COLLADA particle nodes (collada/CParticleSystemSceneNode.hpp, CGlitchNewParticleSystemSceneNode.hpp) and the force nodes
// (collada/CForceSceneNode.hpp): construction from the records, the particle system set-up from an emitter record (the values reach the
// models), the force nodes' parameters, attribute round trips and the binding of forces through attach. No video driver is involved: the
// systems are set up without a billboard and the render-data model's getRenderData (a skipped row: it needs video::CParticleSystemBaker)
// is replaced by a test-local definition because the Mixin's vtable needs it.
#include <cmath>
#include <cstdio>
#include <cstring>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-scene-collada-gui/collada/CForceSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CGlitchNewParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/ResString.hpp"
#include "glitch-scene-collada-gui/ps/PSManager.hpp"

namespace glitch::ps {
template <>
PRenderData* PRenderDataBillboardModel<SParticle, PSNullShaderParametersBaker, PSNullColorBaker<SParticle>, PSGenericNormalBaker<SParticle>,
                                       PSGenericPositionBaker<SParticle>, PSGenericTexCoordsBaker<SParticle>>::getRenderData() {
    return &renderData;
}
template <>
PRenderData* PRenderDataBillboardModel<GNPSParticle, PSNullShaderParametersBaker, PSNullColorBaker<GNPSParticle>,
                                       PSGenericNormalBaker<GNPSParticle>, PSGenericPositionBaker<GNPSParticle>,
                                       PSGenericTexCoordsBaker<GNPSParticle>>::getRenderData() {
    return &renderData;
}
}  // namespace glitch::ps

namespace {

using namespace glitch;
using namespace glitch::collada;

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}

bool near(float a, float b, float tolerance = 1e-4f) { return std::fabs(a - b) <= tolerance; }

// A scene node with a uid, the thing attach looks the force URLs up in.
class UidNode : public scene::ISceneNode {
public:
    explicit UidNode(const char* nodeUid)
        : ISceneNode(-1, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                     core::vector3d<float>{1.0f, 1.0f, 1.0f}),
          text(nodeUid) {}
    void render(void*) override {}
    const core::aabbox3d<float>& getBoundingBox() const override { return box; }
    const char* getUID() const override { return text; }
    const char* text;
    core::aabbox3d<float> box{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
};

void testForceNodes() {
    CColladaDatabase database;
    const float gravityValues[3] = {3.0f, 0.5f, 0.0f};
    SForce gravityRecord;
    gravityRecord.kind = 0;
    gravityRecord.values = gravityValues;
    particle_system::CGravityForceSceneNode gravity(database, gravityRecord);
    check(gravity.getType() == scene::ESNT_DAE_FORCE, "a force node is 'daef'");
    check(gravity.parameters.matrix == &gravity.absoluteTransform, "the parameters point at the node's matrix");
    check(near(gravity.parameters.strength, 3.0f) && near(gravity.parameters.attenuation, 0.5f) && gravity.parameters.radial == 0,
          "gravity takes strength, decay and type");
    check(&gravity.getBoundingBox() == &gravity.getBoundingBox(), "the box is one static");
    check(near(gravity.getBoundingBox().MinEdge.X, -1.0f) && near(gravity.getBoundingBox().MaxEdge.Z, 1.0f), "the box is -1 .. 1");

    const float windValues[6] = {7.0f, 0.25f, 0.0f, 0.5f, 4.0f, 2.0f};
    SForce windRecord;
    windRecord.kind = 1;
    windRecord.values = windValues;
    particle_system::CWindForceSceneNode wind(database, windRecord);
    check(near(wind.parameters.strength, 7.0f) && near(wind.parameters.attenuation, 0.25f) && near(wind.parameters.turbulence, 0.5f) &&
              near(wind.parameters.turbulenceFrequency, 4.0f) && near(wind.parameters.unk_14, 2.0f),
          "wind takes strength, decay, turbulence, frequency and scale");

    const float deflectorValues[7] = {0.9f, 0.1f, 0.2f, 0.3f, 0.4f, 5.0f, 6.0f};
    SForce deflectorRecord;
    deflectorRecord.kind = 2;
    deflectorRecord.values = deflectorValues;
    particle_system::CDeflectorForceSceneNode deflector(database, deflectorRecord);
    check(near(deflector.parameters.bounce, 0.9f) && near(deflector.parameters.bounceVariation, 0.1f) &&
              near(deflector.parameters.scatter, 0.2f) && near(deflector.parameters.friction, 0.3f) &&
              near(deflector.parameters.cohesion, 0.4f) && near(deflector.parameters.lengthScale, 5.0f) &&
              near(deflector.parameters.widthScale, 6.0f),
          "the deflector takes its seven values in order");

    // The attribute round trip: write, change, read back.
    io::CAttributes attributes(nullptr);
    deflector.serializeAttributes(&attributes, nullptr);
    check(near(attributes.getFloat("chaos"), 0.2f) && near(attributes.getFloat("length"), 6.0f), "the deflector writes its values by name");
    deflector.parameters.scatter = 0.0f;
    deflector.parameters.widthScale = 0.0f;
    deflector.deserializeAttributes(&attributes, nullptr);
    check(near(deflector.parameters.scatter, 0.2f) && near(deflector.parameters.widthScale, 6.0f), "and reads them back");

    io::CAttributes gravityAttributes(nullptr);
    gravity.serializeAttributes(&gravityAttributes, nullptr);
    check(near(gravityAttributes.getFloat("decay"), 0.5f) && near(gravityAttributes.getFloat("strength"), 3.0f) &&
              gravityAttributes.getInt("type") == 0,
          "gravity writes decay, strength and type");
    gravity.parameters.strength = 0.0f;
    gravity.deserializeAttributes(&gravityAttributes, nullptr);
    check(near(gravity.parameters.strength, 3.0f), "and reads strength back");
}

void testOldParticleNode() {
    CColladaDatabase database;
    CRootSceneNode root(database);
    SEmitter emitter;
    emitter.name = "sparks";
    emitter.shapeType = 0;
    const float shape[3] = {2.0f, 3.0f, 4.0f};
    emitter.shape = shape;
    emitter.maxParticles = 40;
    emitter.birthRate = 100.0f;
    emitter.life = 1.5f;
    emitter.targetSize = 2.5f;
    emitter.speed = 3.0f;
    emitter.directionType = 1;
    const float direction[4] = {0.0f, 1.0f, 0.0f, 0.0f};
    emitter.direction = direction;
    emitter.meshType = 2;
    res::String urls[1] = {res::String("#fieldA")};
    res::vector<res::String> forceUrls;
    forceUrls.count = 1;
    forceUrls.data = urls;

    auto* node = new CParticleSystemSceneNode(database, emitter, &forceUrls, &root);
    check(node->getType() == scene::ESNT_DAE_PARTICLE, "the old particle node is 'daep'");
    check(std::strcmp(node->getUID(), "sparks") == 0 && std::strcmp(node->uid, "sparks") == 0, "the uid is the emitter's name");
    check(node->automaticCulling == 2, "automatic culling 2");
    check(root.particleSystems.size() == 1, "the node is registered once with the root");

    node->initParticleSystem(nullptr, false);
    check(node->system != nullptr && !node->billboard, "initParticleSystem creates the system");
    auto* generation = dynamic_cast<ps::PGenerationModel<ps::SParticle>*>(node->system);
    auto* size = dynamic_cast<ps::PSizeModel<ps::SParticle>*>(node->system);
    auto* emitterModel = dynamic_cast<ps::PEmitterModel<ps::SParticle>*>(node->system);
    auto* motion = dynamic_cast<ps::PMotionModel<ps::SParticle>*>(node->system);
    auto* life = dynamic_cast<ps::PLifeModel<ps::SParticle>*>(node->system);
    check(generation != nullptr && generation->maxParticles == 40 && near(generation->birthRate, 100.0f), "MaxParticles and BirthRate arrive");
    check(size != nullptr && near(size->targetSize, 2.5f), "TargetSize arrives");
    check(emitterModel != nullptr && emitterModel->emitterType == 0 && near(emitterModel->radiusLength, 2.0f) &&
              near(emitterModel->width, 3.0f) && near(emitterModel->height, 4.0f),
          "the box emitter shape arrives");
    check(motion != nullptr && near(motion->speed, 3.0f) && near(motion->direction.Y, 1.0f), "Speed and Direction arrive");
    check(life != nullptr && near(life->life, 1.5f), "Life arrives");
    check(node->getParticleSystemParameter("BirthRate") == &generation->birthRate, "the parameter slot is the model's member");
    check(node->viewMatrixParameter != nullptr && node->transformedBox != nullptr, "the ViewMatrix and BBox slots are kept");
    check(&node->getTransformedBoundingBox() == node->transformedBox, "the transformed box is the system's");

    // The system steps: 0.1 s at 100 per second creates 10 particles; the count and the box follow.
    node->system->init();
    check(node->getParticleCount() == 0, "no particles after init");
    video::SColor white{0xFFFFFFFFu};
    node->system->update(0.1f, white);
    check(node->getParticleCount() == 10, "a step creates ten particles");
    check(near(node->getBoundingBox().MinEdge.X, node->transformedBox->MinEdge.X - node->absoluteTransform.M[12]), "the box follows the system's box");

    // The forces: the node UID "fieldA" holds a gravity force child; attach binds it.
    CColladaDatabase forceDatabase;
    const float gravityValues[3] = {0.01f, 0.0f, 0.0f};
    SForce gravityRecord;
    gravityRecord.values = gravityValues;
    auto* sceneRoot = new UidNode("fieldA");
    auto* gravityNode = new particle_system::CGravityForceSceneNode(forceDatabase, gravityRecord);
    sceneRoot->addChild(gravityNode);
    gravityNode->drop();
    node->attach(sceneRoot);
    check(node->forces.size() == 1, "attach sizes the force vector to the URL count");
    auto* forcesModel = dynamic_cast<ps::PForcesModel<ps::SParticle>*>(node->system);
    check(forcesModel != nullptr && forcesModel->forces.size() == 1, "the force of the named node is bound");
    sceneRoot->drop();
    node->drop();
}

void testNewParticleNode() {
    CColladaDatabase database;
    CRootSceneNode root(database);
    SGNPSEmitter emitter;
    emitter.name = "glow";
    emitter.shapeType = 1;
    const float shape[1] = {1.5f};
    emitter.shape = shape;
    emitter.birthRate = 20.0f;
    emitter.maxParticles = 30;
    emitter.life = 2.0f;
    emitter.targetSize = 4.0f;
    emitter.sizeScaleOverLife = 0;
    emitter.sizeScale = 0.75f;
    emitter.speedScaleOverLife = 1;
    emitter.spinScaleOverLife = 1;
    emitter.direction[2] = 1.0f;
    emitter.textureSubDivise = 2;
    res::vector<res::String> forceUrls;

    auto* node = new CGlitchNewParticleSystemSceneNode(database, emitter, &forceUrls, &root);
    check(node->getType() == scene::ESNT_DAE_GNPS, "the new particle node is 'daeg'");
    check(std::strcmp(node->getUID(), "glow") == 0, "the uid is the emitter's name");
    check(node->flags13c[0] == 0 && node->flags13c[1] == 1 && node->flags13c[2] == 1 && node->flags13c[3] == 0,
          "the flag bytes are the scale-over-life bytes");
    check(root.particleSystems.size() == 2, "the root hears of the node twice (the base constructor and this one)");

    node->initParticleSystem(nullptr, false);
    auto* generation = dynamic_cast<ps::GNPSGenerationModel<ps::GNPSParticle>*>(node->system);
    auto* size = dynamic_cast<ps::GNPSSizeModel<ps::GNPSParticle>*>(node->system);
    auto* motion = dynamic_cast<ps::GNPSMotionModel<ps::GNPSParticle>*>(node->system);
    auto* spin = dynamic_cast<ps::GNPSSpinModel<ps::GNPSParticle>*>(node->system);
    check(generation != nullptr && generation->maxParticles == 30 && near(generation->birthRate, 20.0f), "MaxParticles and BirthRate arrive");
    check(size != nullptr && near(size->targetSize, 4.0f) && near(size->sizeScale.scale, 0.75f), "TargetSize and the constant SizeScale arrive");
    check(motion != nullptr && near(motion->direction.Z, 1.0f), "Direction arrives");
    check(spin != nullptr && spin->spinScaleOverLife == 1, "the over-life byte arrives");
    check(node->system->getWorldMatrixPtr() == node->absoluteTransform.M, "the system's world matrix is the node's absolute transformation");

    // 0.5 s at 20 per second creates 10 particles (no variation).
    node->system->init();
    video::SColor white{0xFFFFFFFFu};
    node->system->update(0.5f, white);
    check(node->getParticleCount() == 10, "a step creates ten particles");
    check(node->getParticleSystemParameter("BirthRate") == &generation->birthRate, "the parameter slot is the model's member");

    // The shared billboard buffers are released by deleteSharedBuffer.
    CGlitchNewParticleSystemSceneNode::BillboardMaxParticles = 12;
    CGlitchNewParticleSystemSceneNode::deleteSharedBuffer();
    check(CGlitchNewParticleSystemSceneNode::BillboardMaxParticles == 0 && !CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer,
          "deleteSharedBuffer resets the statics");
    node->drop();
}

}  // namespace

int main() {
    testForceNodes();
    testOldParticleNode();
    testNewParticleNode();
    if (failures == 0) {
        std::printf("particle_scene_nodes_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
