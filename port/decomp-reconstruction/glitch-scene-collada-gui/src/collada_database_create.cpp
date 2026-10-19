// Scene-object constructors of glitch::collada::CColladaDatabase. Each one
// looks an entry up (by index, by name or from an instance record) and hands it
// to the CColladaFactory virtual that builds the object (the vtable slot is
// noted per function). Results are attached to the root scene node where the
// original does so.
#include "glitch-scene-collada-gui/collada_database.hpp"

#include "glitch-scene-collada-gui/collada/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CColladaFactory.hpp"
#include "glitch-scene-collada-gui/collada/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"

namespace glitch::collada {

// Index getters (0x60e390 getCamera(int), 0x60e3ac getLight(int), 0x60e3e4 getEffect(int),
// 0x60e41c getGeometry(int), 0x60e450 getForce(int)): base + index * stride with no check.
SEffect* effectAt(const SDatabaseTables& tables, int index) { return tables.effects[index]; }
SGeometry* geometryAt(const SDatabaseTables& tables, int index) { return tables.geometries[index]; }
SForce* forceAt(const SDatabaseTables& tables, int index) { return tables.forces[index]; }
SLight* lightAt(const SDatabaseTables& tables, int index) { return tables.lights[index]; }
SCamera* cameraAt(const SDatabaseTables& tables, int index) { return tables.cameras[index]; }

// 0x60e4bc _ZNK6glitch7collada16CColladaDatabase25getExternalLightSceneNodeERKN5boost13intrusive_ptrIKNS_5video9CMaterialEEEtjPKc
scene::CLightSceneNode* CColladaDatabase::getExternalLightSceneNode(const boost::intrusive_ptr<video::CMaterial const>& material,
                                                                    std::uint16_t a, std::uint32_t b, const char* name) const {
    return factory->getExternalLightSceneNode(*this, material, a, b, name);
}

// 0x60e504 _ZNK6glitch7collada16CColladaDatabase25getExternalLightSceneNodeERKN5boost13intrusive_ptrIKNS_5video17CMaterialRendererEEEtjPKc
scene::CLightSceneNode* CColladaDatabase::getExternalLightSceneNode(const boost::intrusive_ptr<video::CMaterialRenderer const>& renderer,
                                                                    std::uint16_t a, std::uint32_t b, const char* name) const {
    return factory->getExternalLightSceneNode(*this, renderer, a, b, name);
}

// 0x60e570 _ZNK6glitch7collada16CColladaDatabase15constructEffectEPNS_5video12IVideoDriverEPNS0_7SEffectEPNS0_14CRootSceneNodeE
// The factory gets the effect name ("" when there is no effect) and the file name of this database.
video::CMaterialRenderer* CColladaDatabase::constructEffect(video::IVideoDriver* driver, SEffect* effect,
                                                            CRootSceneNode* root) const {
    const char* name = effect ? effect->name : "";
    return factory->createMaterialRenderer(*this, driver, effect, name, fileName(), root);
}

// 0x60e5e4 _ZNK6glitch7collada16CColladaDatabase15constructEffectEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
video::CMaterialRenderer* CColladaDatabase::constructEffect(video::IVideoDriver* driver, int index,
                                                            CRootSceneNode* root) const {
    return constructEffect(driver, effectAt(tables(), index), root);
}

// 0x61b10c _ZNK6glitch7collada16CColladaDatabase15constructEffectEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
video::CMaterialRenderer* CColladaDatabase::constructEffect(video::IVideoDriver* driver, const char* name,
                                                            CRootSceneNode* root) const {
    return constructEffect(driver, getEffect(tables(), name), root);
}

// 0x60e634 _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPNS0_9SGeometryE
// A geometry whose +0x08 word is set is not instantiated and yields null.
IMesh* CColladaDatabase::constructGeometry(video::IVideoDriver* driver, SGeometry* geometry) const {
    if (geometry == nullptr || geometry->notInstantiated != 0) {
        return nullptr;
    }
    return factory->createGeometry(*this, driver, geometry);
}

// 0x60e6b8 _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEi
IMesh* CColladaDatabase::constructGeometry(video::IVideoDriver* driver, int index) const {
    return constructGeometry(driver, geometryAt(tables(), index));
}

// 0x61aaa8 _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPKc
IMesh* CColladaDatabase::constructGeometry(video::IVideoDriver* driver, const char* name) const {
    return constructGeometry(driver, getGeometry(tables(), name));
}

// 0x60e6f0 _ZNK6glitch7collada16CColladaDatabase20constructModularSkinEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeE
CModularSkinnedMesh* CColladaDatabase::constructModularSkin(SInstanceModularSkin* instance,
                                                            CRootSceneNode* root) const {
    return factory->createModularSkin(*this, instance, root);
}

// 0x60e88c _ZNK6glitch7collada16CColladaDatabase14constructForceEPNS0_6SForceEPNS0_14CRootSceneNodeE
// The force kind selects the factory builder: 0 gravity, 1 wind, 2 deflector. The root is not used.
void* CColladaDatabase::constructForce(SForce* force, CRootSceneNode* /*root*/) const {
    if (force == nullptr) {
        return nullptr;
    }
    switch (force->kind) {
        case 0:
            return factory->createParticleSystemGravityForce(*this, force);
        case 1:
            return factory->createParticleSystemWindForce(*this, force);
        case 2:
            return factory->createParticleSystemDeflectorForce(*this, force);
        default:
            return nullptr;
    }
}

// 0x60e910 _ZNK6glitch7collada16CColladaDatabase14constructForceEiPNS0_14CRootSceneNodeE
void* CColladaDatabase::constructForce(int index, CRootSceneNode* root) const {
    return constructForce(forceAt(tables(), index), root);
}

// 0x61a970 _ZNK6glitch7collada16CColladaDatabase14constructForceEPKcPNS0_14CRootSceneNodeE
void* CColladaDatabase::constructForce(const char* name, CRootSceneNode* root) const {
    return constructForce(getForce(tables(), name), root);
}

// 0x61a994 _ZNK6glitch7collada16CColladaDatabase14constructForceEPNS0_14SInstanceForceEPNS0_14CRootSceneNodeE
// The instance URL is "#<name>"; the name starts one byte in.
void* CColladaDatabase::constructForce(SInstanceForce* instance, CRootSceneNode* root) const {
    return constructForce(instance->url + 1, root);
}

// 0x60f9a4 _ZNK6glitch7collada16CColladaDatabase14constructMorphEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
CMorphingMesh* CColladaDatabase::constructMorph(video::IVideoDriver* driver, SController* controller,
                                                CRootSceneNode* root) const {
    CMorphingMesh* morph = factory->createMorph(*this, driver, controller, root);
    root->addMorphingMesh(morph);
    return morph;
}

// 0x60e62c _ZNK6glitch7collada16CColladaDatabase15constructCameraEPNS0_15SInstanceCameraEPNS0_14CRootSceneNodeE
// An empty body in the original (returns null).
CCameraSceneNode* CColladaDatabase::constructCamera(SInstanceCamera*, CRootSceneNode*) const {
    return nullptr;
}

// 0x619398 _ZNK6glitch7collada16CColladaDatabase15constructCameraEPNS0_7SCameraEPNS0_14CRootSceneNodeE
CCameraSceneNode* CColladaDatabase::constructCamera(SCamera* camera, CRootSceneNode* root) const {
    if (camera == nullptr) {
        return nullptr;
    }
    CCameraSceneNode* node = factory->createCameraNode(*this, camera);
    root->addCamera(node);
    return node;
}

// 0x6193e0 _ZNK6glitch7collada16CColladaDatabase15constructCameraEiPNS0_14CRootSceneNodeE
CCameraSceneNode* CColladaDatabase::constructCamera(int index, CRootSceneNode* root) const {
    return constructCamera(cameraAt(tables(), index), root);
}

// 0x61b2d0 _ZNK6glitch7collada16CColladaDatabase15constructCameraEPKcPNS0_14CRootSceneNodeE
CCameraSceneNode* CColladaDatabase::constructCamera(const char* name, CRootSceneNode* root) const {
    return constructCamera(getCamera(tables(), name), root);
}

// 0x619404 _ZNK6glitch7collada16CColladaDatabase14constructLightEPNS0_6SLightEPNS0_14CRootSceneNodeE
CLightSceneNode* CColladaDatabase::constructLight(SLight* light, CRootSceneNode* root) const {
    if (light == nullptr) {
        return nullptr;
    }
    CLightSceneNode* node = factory->createLight(*this, light);
    root->addLight(node);
    return node;
}

// 0x619450 _ZNK6glitch7collada16CColladaDatabase14constructLightEiPNS0_14CRootSceneNodeE
CLightSceneNode* CColladaDatabase::constructLight(int index, CRootSceneNode* root) const {
    return constructLight(lightAt(tables(), index), root);
}

// 0x61b24c _ZNK6glitch7collada16CColladaDatabase14constructLightEPKcPNS0_14CRootSceneNodeE
CLightSceneNode* CColladaDatabase::constructLight(const char* name, CRootSceneNode* root) const {
    return constructLight(getLight(tables(), name), root);
}

}  // namespace glitch::collada
