// PSManager::createPCloudSystem and the two Mixin instances of the old particle system (ps/PSManager.hpp).
#include "glitch-scene-collada-gui/ps/PSManager.hpp"

namespace glitch::ps {

namespace {

// The ten type arguments of the two old-system particle systems.
using SBillboardRender = PRenderDataBillboardModel<SParticle, PSNullShaderParametersBaker, PSBillboardColorBaker<SParticle>,
                                                   PSBillboardNormalBaker<SParticle>, PSBillboardPositionBaker<SParticle>,
                                                   PSBillboardTexCoordsBaker<SParticle>>;
using SNullRender = PRenderDataBillboardModel<SParticle, PSNullShaderParametersBaker, PSNullColorBaker<SParticle>,
                                              PSGenericNormalBaker<SParticle>, PSGenericPositionBaker<SParticle>,
                                              PSGenericTexCoordsBaker<SParticle>>;

using GBillboardRender = PRenderDataBillboardModel<GNPSParticle, PSNullShaderParametersBaker, PSBillboardColorBaker<GNPSParticle>,
                                                   PSBillboardNormalBaker<GNPSParticle>, PSBillboardPositionBaker<GNPSParticle>,
                                                   PSBillboardTexCoordsBaker<GNPSParticle>>;
using GNullRender = PRenderDataBillboardModel<GNPSParticle, PSNullShaderParametersBaker, PSNullColorBaker<GNPSParticle>,
                                              PSGenericNormalBaker<GNPSParticle>, PSGenericPositionBaker<GNPSParticle>,
                                              PSGenericTexCoordsBaker<GNPSParticle>>;

}  // namespace

// 0x637b38 _ZN6glitch2ps9PSManagerD1Ev: empty.
PSManager::~PSManager() {}

// 0x63b3d0 _ZN6glitch2ps9PSManager11getInstanceEv: a function-local static (the guard and the registration of the destructor are the compiler's).
PSManager& PSManager::getInstance() {
    static PSManager instance;
    return instance;
}

// 0x655314 _ZN6glitch2ps9PSManager16createPCloudSystemEb
// true builds the system with the billboard colour / normal / position / texture-coordinate bakers (Mixin 0x654a74), false the one
// with the null colour and generic bakers (Mixin 0x654ec4); both are the same nine models around a different render-data model.
IParticleSystem<SParticle>* PSManager::createPCloudSystem(bool billboard) {
    if (billboard) {
        return createParticleSystem<SParticle, PGenerationModel<SParticle>, PSizeModel<SParticle>, PColorModel<SParticle>,
                                    PEmitterModel<SParticle>, PMotionModel<SParticle>, PForcesModel<SParticle>, PSpinModel<SParticle>,
                                    PLifeModel<SParticle>, SBillboardRender>();
    }
    return createParticleSystem<SParticle, PGenerationModel<SParticle>, PSizeModel<SParticle>, PColorModel<SParticle>,
                                PEmitterModel<SParticle>, PMotionModel<SParticle>, PForcesModel<SParticle>, PSpinModel<SParticle>,
                                PLifeModel<SParticle>, SNullRender>();
}

// 0x642df8 _ZN6glitch2ps9PSManager16createGNPSSystemEb
// true builds the system with the billboard colour / normal / position / texture-coordinate bakers (Mixin 0x642558), false the one
// with the null colour and generic bakers (Mixin 0x6429a8).
IParticleSystem<GNPSParticle>* PSManager::createGNPSSystem(bool billboard) {
    if (billboard) {
        return createParticleSystem<GNPSParticle, GNPSGenerationModel<GNPSParticle>, GNPSSizeModel<GNPSParticle>,
                                    GNPSColorModel<GNPSParticle>, PEmitterModel<GNPSParticle>, GNPSMotionModel<GNPSParticle>,
                                    PForcesModel<GNPSParticle>, GNPSSpinModel<GNPSParticle>, GNPSLifeModel<GNPSParticle>,
                                    GBillboardRender>();
    }
    return createParticleSystem<GNPSParticle, GNPSGenerationModel<GNPSParticle>, GNPSSizeModel<GNPSParticle>,
                                GNPSColorModel<GNPSParticle>, PEmitterModel<GNPSParticle>, GNPSMotionModel<GNPSParticle>,
                                PForcesModel<GNPSParticle>, GNPSSpinModel<GNPSParticle>, GNPSLifeModel<GNPSParticle>, GNullRender>();
}

template IParticleSystem<SParticle>* PSManager::createParticleSystem<
    SParticle, PGenerationModel<SParticle>, PSizeModel<SParticle>, PColorModel<SParticle>, PEmitterModel<SParticle>,
    PMotionModel<SParticle>, PForcesModel<SParticle>, PSpinModel<SParticle>, PLifeModel<SParticle>, SBillboardRender>();
template IParticleSystem<SParticle>* PSManager::createParticleSystem<
    SParticle, PGenerationModel<SParticle>, PSizeModel<SParticle>, PColorModel<SParticle>, PEmitterModel<SParticle>,
    PMotionModel<SParticle>, PForcesModel<SParticle>, PSpinModel<SParticle>, PLifeModel<SParticle>, SNullRender>();

}  // namespace glitch::ps
