// glitch::ps::PSManager: builds particle systems out of the models of ps/ParticleModels.hpp. The local class `Mixin` of
// createParticleSystem<P, Generation, Size, Color, Emitter, Motion, Forces, Spin, Life, RenderData>() derives from IParticleSystem<P>
// and the nine models (the symbols _ZZN6glitch2ps9PSManager20createParticleSystemI...EEPNS0_15IParticleSystemIT_EEvEN5MixinC1Ev /
// D1Ev: 0x654a74, 0x654ec4, 0x64f454, 0x653704 for SParticle). Canonical header (residue pass ob); it replaces the recon_18 /
// recon_20 / recon_21 PSManager stand-ins.
//
// Original object (SParticle, 0x1dc bytes, offsets within the Mixin): +0x00 IParticleSystem (vptr, the random seed, the initial seed,
// the world matrix pointer), +0x10 PGenerationModel, +0x24 PSizeModel, +0x38 PColorModel, +0x60 PEmitterModel, +0x78 PMotionModel,
// +0x94 PForcesModel, +0xa8 PSpinModel, +0xd0 PLifeModel, +0xdc the render-data model, +0x180 the virtual IParticleContext. The host
// layout is the compiler's; the construction order (the virtual base first, then IParticleSystem and the models in that order) is the
// same.
#pragma once

#include "glitch-scene-collada-gui/ps/ParticleModels.hpp"

namespace glitch::ps {

class PSManager {
public:
    // 0x637b38 (D1): empty.
    ~PSManager();
    // 0x63b3d0: the function-local static the nodes share.
    static PSManager& getInstance();

    // The generic factory; createPCloudSystem and createGNPSSystem below pick the ten models.
    template <typename P, typename Generation, typename Size, typename Color, typename Emitter, typename Motion, typename Forces,
              typename Spin, typename Life, typename RenderData>
    IParticleSystem<P>* createParticleSystem();

    // 0x655314: a new old-system particle system with billboard colour baking (true) or without (false). The original allocates 0x1dc
    // bytes, clears the first 0x180 and runs the matching Mixin constructor on them.
    IParticleSystem<SParticle>* createPCloudSystem(bool billboard);

    // 0x642df8: a new new-system particle system (the original allocates 0x294 bytes, clears the first 0x238 and runs the matching Mixin
    // constructor, 0x642558 with the billboard colour baking, 0x6429a8 without): GNPSGenerationModel, GNPSSizeModel, GNPSColorModel,
    // PEmitterModel, GNPSMotionModel, PForcesModel, GNPSSpinModel, GNPSLifeModel and the billboard render-data model, all around
    // GNPSParticle.
    IParticleSystem<GNPSParticle>* createGNPSSystem(bool billboard);
};

template <typename P, typename Generation, typename Size, typename Color, typename Emitter, typename Motion, typename Forces,
          typename Spin, typename Life, typename RenderData>
IParticleSystem<P>* PSManager::createParticleSystem() {
    // 0x654a74 / 0x654ec4 (constructors), 0x64f454 / 0x653704 (destructors): the constructor body is the bases' own constructors in
    // order; the models register their parameters, the render-data model gives the context its axes, IParticleSystem seeds the random
    // generator. Nothing else is stored.
    class Mixin : public IParticleSystem<P>, public Generation, public Size, public Color, public Emitter, public Motion,
                  public Forces, public Spin, public Life, public RenderData {
    public:
        Mixin() = default;
        ~Mixin() override = default;
    };
    return new Mixin();
}

}  // namespace glitch::ps
