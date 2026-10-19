// Runs the old-system particle models together: PSManager::createPCloudSystem builds the Mixin (generation, size, colour, emitter,
// motion, forces, spin, life and the render-data model), the test sets the parameters the way the scene node does (setParameter by
// name) and drives IParticleSystem<SParticle>::update. The render data model has no mesh here, so only its distance sort and box run.
// PRenderDataBillboardModel::getRenderData (0x6558b0, a skipped row: it bakes through video::CParticleSystemBaker) is replaced by a
// test-local definition because the Mixin's vtable needs it.
#include <cmath>
#include <cstdio>

#include "glitch-scene-collada-gui/ps/PForce.hpp"
#include "glitch-scene-collada-gui/ps/PSManager.hpp"

namespace glitch::ps {
template <>
PRenderData* PRenderDataBillboardModel<SParticle, PSNullShaderParametersBaker, PSNullColorBaker<SParticle>, PSGenericNormalBaker<SParticle>,
                                       PSGenericPositionBaker<SParticle>, PSGenericTexCoordsBaker<SParticle>>::getRenderData() {
    return &renderData;
}
}  // namespace glitch::ps

namespace {

using namespace glitch;
using namespace glitch::ps;

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}

bool near(float a, float b, float tolerance = 1e-4f) { return std::fabs(a - b) <= tolerance; }

}  // namespace

int main() {
    PSManager manager;
    IParticleSystem<SParticle>* system = manager.createPCloudSystem(false);
    auto& context = static_cast<IParticleContext<SParticle>&>(*system);

    // The Mixin constructor seeds the generator and registers the bindings.
    check(system->random.seed == 123456789 && system->initialSeed == 123456789, "the seeds are 123456789");
    check(context.parameters.count(context.hashString("BirthRate")) == 1, "BirthRate is bound");
    check(context.parameters.count(context.hashString("RenderBuffer")) == 1, "RenderBuffer is bound");
    check(near(context.axis[0].X, 0.5f) && near(context.axis[1].Y, 0.5f), "the render model gives the context its axes");

    context.setParameter<float>("BirthRate", 100.0f);
    context.setParameter<int>("MaxParticles", 50);
    context.setParameter<float>("Life", 1.0f);
    context.setParameter<float>("TargetSize", 2.0f);
    system->init();
    check(context.particles.capacity() >= 50, "initGenerationModel reserves MaxParticles");
    check(context.particles.empty(), "no particles after init");

    video::SColor white;
    white.color = 0xFF112233u;
    system->update(0.1f, white);
    check(context.particles.size() == 10, "a step of 0.1 s at 100 per second creates 10 particles");
    bool inside = true;
    bool colored = true;
    bool sized = true;
    for (const SParticle& p : context.particles) {
        inside = inside && p.position.X >= -1.0f && p.position.X <= 1.0f && p.position.Y >= -1.0f && p.position.Y <= 1.0f;
        colored = colored && p.color.color == 0xFF112233u;
        sized = sized && near(p.size, 2.0f);
    }
    check(inside, "emitter positions come from the default box");
    check(colored, "without tracks the particles take the system colour");
    check(sized, "particles start at the target size");

    system->update(0.2f, white);
    check(context.particles.size() == 20, "the second step adds ten more");
    for (const SParticle& p : context.particles) {
        check(p.life > 0.0f && p.age >= 0.0f && p.age < p.life, "age is within the life");
    }

    // The old ones die: a step far ahead ages everything past the life.
    system->update(5.0f, white);
    check(context.particles.size() <= 50, "never more than MaxParticles");
    system->update(10.0f, white);

    // Motion: a fixed direction and speed, no variation.
    system->init();
    context.setParameter<core::vector3d<float>>("Direction", core::vector3d<float>{0.0f, 1.0f, 0.0f});
    context.setParameter<float>("Speed", 2.0f);
    system->update(0.1f, white);
    bool moving = !context.particles.empty();
    for (const SParticle& p : context.particles) {
        moving = moving && near(p.velocity.X, 0.0f) && near(p.velocity.Y, 2.0f) && near(p.velocity.Z, 0.0f);
    }
    check(moving, "initPMotion gives Speed * Direction");

    // Forces: a gravity force along the node's z axis adds to the velocity during the step.
    core::CMatrix4<float> nodeMatrix(core::CMatrix4<float>::EM4CONST_IDENTITY);
    PGravity::parameters_type gravity;
    gravity.matrix = &nodeMatrix;
    gravity.strength = 0.01f;
    gravity.attenuation = 0.0f;
    gravity.radial = 0;
    check(system->bindForce<PGravity>(gravity) == 1, "bindForce returns the number of forces");
    auto& forces = *dynamic_cast<PForcesModel<SParticle>*>(system);
    check(forces.forces.size() == 1 && forces.dirty, "the force is in the list and the list is dirty");
    const std::size_t before = context.particles.size();
    system->update(0.2f, white);
    check(!forces.dirty, "applyPForces cleans the list");
    bool pulled = context.particles.size() >= before;
    for (const SParticle& p : context.particles) {
        pulled = pulled && p.velocity.Z > 0.0f;
    }
    check(pulled, "gravity pulled the velocities along +z");
    forces.removePForce(5);
    check(forces.forces.size() == 1, "removePForce(int) outside the list does nothing");
    check(forces.forces.size() == 1, "the force stays");

    delete system;
    if (failures == 0) {
        std::printf("ps_models_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
