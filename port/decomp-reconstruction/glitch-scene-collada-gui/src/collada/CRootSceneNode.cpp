#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// Bodies of glitch::collada::CRootSceneNode (canonical class: collada/CRootSceneNode.hpp). This file replaces src/root_scene_node.cpp,
// src/tb_scene-collada-gui-glitch_collada_CRootSceneNode-0.cpp, src/r3a-glitch-scene-collada-gui-glitch_collada_CRootSceneNode-c52989-0.cpp
// and the stand-in bodies of recon/slice_21.cpp and recon/slice_32.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"

#include <cstring>
#include <strings.h>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CImage.hpp"
#include "glitch-scene-collada-gui/collada/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/collada/IParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-video/material.hpp"

namespace glitch::collada {

// 0x65b734 _ZN6glitch7collada14CRootSceneNodeC1ERKNS0_16CColladaDatabaseE (C2 0x65b844)
// CSceneNode(database, no record); the seven lists and the map start empty, the skins are not attached yet, the animation mode is 1 and
// automatic culling is switched off.
CRootSceneNode::CRootSceneNode(const CColladaDatabase& source) : CSceneNode(source, nullptr) {
    skinsAttached = false;
    animationMode = 1;
    setAutomaticCulling(0);
}

// 0x65c074 _ZN6glitch7collada14CRootSceneNodeD1Ev (0x65c260 is the D2 form; D0 0x65c244 skipped)
// Removes every child, frees the URL list, erases the IFL map, frees the light list, clears the image list and the material list, frees
// the camera, morphing mesh, skin and particle system lists; the CSceneNode destructor follows.
CRootSceneNode::~CRootSceneNode() {
    removeAll();
    urlsToResolve.clear();
    iflAnimations.clear();
    lights.clear();
    images.clear();
    materials.clear();
    cameras.clear();
    morphingMeshes.clear();
    pendingSkins.clear();
    particleSystems.clear();
}

// 0x65adc4 _ZNK6glitch7collada14CRootSceneNode6getUIDEv
// The file name of the database's record, null without one.
const char* CRootSceneNode::getUID() const {
    return database.record != nullptr ? database.record->fileName : nullptr;
}

// 0x65ae64 _ZNK6glitch7collada14CRootSceneNode7getTypeEv
scene::E_SCENE_NODE_TYPE CRootSceneNode::getType() const {
    return scene::ESNT_DAE_ROOT;
}

// 0x65aecc _ZNK6glitch7collada14CRootSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// ISceneNode's attributes, then the string attribute "Source": the database's file name.
void CRootSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    attributes->addString("Source", database.record != nullptr ? database.record->fileName : nullptr, false);
}

// 0x65af0c _ZN6glitch7collada14CRootSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// A thunk to ISceneNode::deserializeAttributes.
void CRootSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
}

// 0x65af10 _ZN6glitch7collada14CRootSceneNode9onAnimateEj
// Animation mode 1 runs the tree's animation; any other mode only updates the absolute position (K 0xb8, without children). The time
// is remembered either way.
void CRootSceneNode::onAnimate(std::uint32_t timeMs) {
    if (animationMode == 1) {
        ISceneNode::onAnimate(timeMs);
    } else {
        updateAbsolutePosition(false);
    }
    lastTime = timeMs;
}

// 0x65b484 _ZN6glitch7collada14CRootSceneNode19onRegisterSceneNodeEv
// In animation mode 0 the tree is animated (with the last time) when automatic culling is on or the transformed box (K 0x34) is inside
// the frustum (CSceneManager::isCulled with mode 2). Always returns 1.
int CRootSceneNode::onRegisterSceneNode() {
    if (animationMode == 0) {
        if (automaticCulling != 0 || !sceneManager->isCulled(getTransformedBoundingBox(), 2)) {
            ISceneNode::onAnimate(lastTime);
        }
    }
    return 1;
}

// 0x65add8 _ZNK6glitch7collada14CRootSceneNode11getMaterialEj
// The material of the list entry `index`, null when the list is shorter.
boost::intrusive_ptr<video::CMaterial> CRootSceneNode::getMaterial(std::uint32_t index) const {
    std::uint32_t position = 0;
    for (const SMaterialInfo& info : materials) {
        if (position++ == index) {
            return info.instance;
        }
    }
    return boost::intrusive_ptr<video::CMaterial>();
}

// 0x65ae38 _ZNK6glitch7collada14CRootSceneNode16getMaterialCountEv
std::uint32_t CRootSceneNode::getMaterialCount() const {
    return static_cast<std::uint32_t>(materials.size());
}

// 0x65add4 _ZN6glitch7collada14CRootSceneNode14removeMaterialERKN5boost13intrusive_ptrINS_5video9CMaterialEEE (empty)
void CRootSceneNode::removeMaterial(const boost::intrusive_ptr<video::CMaterial>& /*material*/) {}

// 0x65b210 _ZN6glitch7collada14CRootSceneNode17addParticleSystemEPNS0_24IParticleSystemSceneNodeE
void CRootSceneNode::addParticleSystem(IParticleSystemSceneNode* particleSystem) {
    particleSystems.pushBack(particleSystem);
}

// 0x65b244 _ZN6glitch7collada14CRootSceneNode8addLightEPNS0_15CLightSceneNodeE
void CRootSceneNode::addLight(CLightSceneNode* light) {
    lights.pushBack(light);
}

// 0x65b278 _ZN6glitch7collada14CRootSceneNode15addMorphingMeshEPNS0_13CMorphingMeshE
void CRootSceneNode::addMorphingMesh(CMorphingMesh* morphingMesh) {
    morphingMeshes.pushBack(morphingMesh);
}

// 0x65b2ac _ZN6glitch7collada14CRootSceneNode9addCameraEPNS0_16CCameraSceneNodeE
void CRootSceneNode::addCamera(CCameraSceneNode* camera) {
    cameras.pushBack(camera);
}

// 0x65b000 _ZN6glitch7collada14CRootSceneNode18removeMorphingMeshEPNS0_13CMorphingMeshE
// Unlinks and frees the entry that holds the mesh; nothing when it is not in the list.
void CRootSceneNode::removeMorphingMesh(CMorphingMesh* morphingMesh) {
    morphingMeshes.erase(morphingMesh);
}

// 0x65b08c _ZN6glitch7collada14CRootSceneNode14addURLToResolveERKN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtjRKNS_3res6StringE
// Appends an entry that holds the renderer (without taking a use of it). Returns true.
bool CRootSceneNode::addURLToResolve(const boost::intrusive_ptr<video::CMaterialRenderer>& renderer, std::uint16_t parameterId,
                                     std::uint32_t arrayIndex, const res::String& url) {
    SURLToResolve entry;
    entry.forRenderer = true;
    entry.url = url.text;
    entry.target.renderer = renderer.get();
    entry.parameterId = parameterId;
    entry.arrayIndex = arrayIndex;
    urlsToResolve.pushBack(entry);
    return true;
}

// 0x65b0fc _ZN6glitch7collada14CRootSceneNode14addURLToResolveERKN5boost13intrusive_ptrINS_5video9CMaterialEEEtjRKNS_3res6StringE
// As above for a material. Returns false.
bool CRootSceneNode::addURLToResolve(const boost::intrusive_ptr<video::CMaterial>& material, std::uint16_t parameterId,
                                     std::uint32_t arrayIndex, const res::String& url) {
    SURLToResolve entry;
    entry.forRenderer = false;
    entry.url = url.text;
    entry.target.material = material.get();
    entry.parameterId = parameterId;
    entry.arrayIndex = arrayIndex;
    urlsToResolve.pushBack(entry);
    return false;
}

// 0x65c874 _ZN6glitch7collada14CRootSceneNode11resolveURLsEv
// For each queued entry: a URL that starts with '#' is looked up among the lights; otherwise (or when that finds nothing) the database
// asks its factory for the external light of the entry's renderer or material. A light that is not found logs "failed to resolve light
// parameter" (level 3) and the entry is skipped. The list is freed at the end.
// The found light's CLight handle (light +0x134) is written into the renderer's or material's parameter.
void CRootSceneNode::resolveURLs() {
    for (SURLToResolve& entry : urlsToResolve) {
        scene::CLightSceneNode* light = nullptr;
        if (entry.url != nullptr && entry.url[0] == '#') {
            light = getLight(entry.url + 1);
        }
        if (light == nullptr) {
            if (entry.forRenderer) {
                boost::intrusive_ptr<const video::CMaterialRenderer> renderer(entry.target.renderer, true);
                light = database.getExternalLightSceneNode(renderer, entry.parameterId, entry.arrayIndex, entry.url);
            } else {
                boost::intrusive_ptr<const video::CMaterial> material(entry.target.material, true);
                light = database.getExternalLightSceneNode(material, entry.parameterId, entry.arrayIndex, entry.url);
            }
        }
        if (light == nullptr) {
            os::Printer::log("failed to resolve light parameter", ELL_ERROR);
            continue;
        }
        if (entry.forRenderer) {
            // IMaterialParameters<CMaterialRenderer>::setParameter<intrusive_ptr<CLight>> (0x5d4f34).
            entry.target.renderer->parameters.template setParameter<boost::intrusive_ptr<video::CLight>>(entry.parameterId, entry.arrayIndex, light->light);
        } else {
            entry.target.material->parameters.template setParameter<boost::intrusive_ptr<video::CLight>>(entry.parameterId, entry.arrayIndex, light->light);
        }
    }
    urlsToResolve.clear();
}

// 0x65c4f8 _ZN6glitch7collada14CRootSceneNode20setIFLAnimationValueEPNS0_10SAnimationEN5boost13intrusive_ptrINS_5video8ITextureEEE
// Finds (creating it when missing, as std::map::operator[] does) the list of the animation and sets the animation's texture on every
// material parameter in it (array element 0).
void CRootSceneNode::setIFLAnimationValue(SAnimation* animation, boost::intrusive_ptr<video::ITexture> texture) {
    for (CMaterialParameterInfo& info : iflAnimations[animation]) {
        info.material->parameters.template setParameter<boost::intrusive_ptr<video::ITexture>>(info.parameterId, 0, texture);
    }
}

// 0x65c5b0 _ZN6glitch7collada14CRootSceneNode15addIFLAnimationEPNS0_10SAnimationEN5boost13intrusive_ptrINS_5video9CMaterialEEEt
// Appends {material, parameterId} to the animation's list (a use is taken on the material).
void CRootSceneNode::addIFLAnimation(SAnimation* animation, boost::intrusive_ptr<video::CMaterial> material, std::uint16_t parameterId) {
    CMaterialParameterInfo info;
    info.material = material;
    info.parameterId = parameterId;
    iflAnimations[animation].push_back(info);
}

// 0x65c760 _ZN6glitch7collada14CRootSceneNode11addMaterialEPNS0_9SMaterialEPNS_5video12IVideoDriverE
// The database builds the material (CColladaDatabase::constructMaterial); when it exists, {record, material} is appended to the list.
// The built material is returned.
boost::intrusive_ptr<video::CMaterial> CRootSceneNode::addMaterial(SMaterial* record, video::IVideoDriver* driver) {
    boost::intrusive_ptr<video::CMaterial> built = database.constructMaterial(driver, record, this);
    if (built) {
        SMaterialInfo info;
        info.material = record;
        info.instance = built;
        materials.pushBack(info);
    }
    return built;
}

// 0x65c808 _ZN6glitch7collada14CRootSceneNode11addMaterialEPKcPNS_5video12IVideoDriverE
// Looks the name up among the file's materials (kind 16); a hit builds it as above, anything else gives a null handle.
boost::intrusive_ptr<video::CMaterial> CRootSceneNode::addMaterial(const char* name, video::IVideoDriver* driver) {
    unsigned kind = kFindMaterial;
    const void* found = find(database.tables(), name, kind);
    if (found != nullptr && kind == kFindMaterial) {
        return addMaterial(const_cast<SMaterial*>(static_cast<const SMaterial*>(found)), driver);
    }
    return boost::intrusive_ptr<video::CMaterial>();
}

// 0x65b538 _ZNK6glitch7collada14CRootSceneNode11hasMaterialEPKc
// The material of the first list entry whose record has this name; a null handle when there is none.
boost::intrusive_ptr<video::CMaterial> CRootSceneNode::hasMaterial(const char* name) const {
    for (const SMaterialInfo& info : materials) {
        if (std::strcmp(info.material->name, name) == 0) {
            return info.instance;
        }
    }
    return boost::intrusive_ptr<video::CMaterial>();
}

// 0x65ca30 _ZN6glitch7collada14CRootSceneNode11getMaterialEPKcPNS_5video12IVideoDriverE
boost::intrusive_ptr<video::CMaterial> CRootSceneNode::getMaterial(const char* name, video::IVideoDriver* driver) {
    boost::intrusive_ptr<video::CMaterial> result = hasMaterial(name);
    if (!result && driver != nullptr) {
        result = addMaterial(name, driver);
    }
    return result;
}

// 0x65cafc _ZN6glitch7collada14CRootSceneNode11getMaterialEPNS0_9SMaterialEPNS_5video12IVideoDriverE
boost::intrusive_ptr<video::CMaterial> CRootSceneNode::getMaterial(SMaterial* record, video::IVideoDriver* driver) {
    boost::intrusive_ptr<video::CMaterial> result = hasMaterial(record->name);
    if (!result && driver != nullptr) {
        result = addMaterial(record, driver);
    }
    return result;
}

// 0x65b4e4 _ZN6glitch7collada14CRootSceneNode17getParticleSystemEPKc
// The first particle system whose uid (K 0x54) equals the name, ignoring case; null when there is none.
IParticleSystemSceneNode* CRootSceneNode::getParticleSystem(const char* name) {
    for (IParticleSystemSceneNode* particleSystem : particleSystems) {
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
        __android_log_print(ANDROID_LOG_INFO, "DH2PS", "getParticleSystem(%s): root %p entry %p", name, (void*)this, (void*)particleSystem);
        __android_log_print(ANDROID_LOG_INFO, "DH2PS", "  vptr %p", particleSystem ? *(void**)particleSystem : nullptr);
#endif
        if (strcasecmp(particleSystem->getUID(), name) == 0) {
            return particleSystem;
        }
    }
    return nullptr;
}

// 0x65b5b0 _ZN6glitch7collada14CRootSceneNode15getMorphingMeshEPKc
// The first morphing mesh whose uid equals the name.
CMorphingMesh* CRootSceneNode::getMorphingMesh(const char* name) {
    for (CMorphingMesh* mesh : morphingMeshes) {
        if (std::strcmp(mesh->uid, name) == 0) {
            return mesh;
        }
    }
    return nullptr;
}

// 0x65b5f4 _ZN6glitch7collada14CRootSceneNode8getLightEPKc
// The first light whose uid (K 0x54) equals the name.
CLightSceneNode* CRootSceneNode::getLight(const char* name) {
    for (CLightSceneNode* light : lights) {
        if (std::strcmp(light->getUID(), name) == 0) {
            return light;
        }
    }
    return nullptr;
}

// 0x65b648 _ZN6glitch7collada14CRootSceneNode8getImageEPKc
// The image of the list with that name; when there is none the database builds it (CColladaDatabase::constructImage(name, null)), it
// is appended to the list and returned.
boost::intrusive_ptr<CImage> CRootSceneNode::getImage(const char* name) {
    for (const boost::intrusive_ptr<CImage>& image : images) {
        if (std::strcmp(image->name, name) == 0) {
            return image;
        }
    }
    boost::intrusive_ptr<CImage> built = database.constructImage(name, nullptr);
    if (built) {
        images.pushBack(built);
    }
    return built;
}

// 0x65b434 _ZN6glitch7collada14CRootSceneNode10attachSkinEPNS0_12CSkinnedMeshE
// When the root has been loaded the skin is attached to the tree now; otherwise it is queued.
void CRootSceneNode::attachSkin(CSkinnedMesh* skin) {
    if (skinsAttached) {
        skin->attach(this);
    } else {
        pendingSkins.pushBack(skin);
    }
}

// 0x65b380 _ZN6glitch7collada14CRootSceneNode10attachSkinEv
// Attaches every queued skin to the tree and empties the queue.
void CRootSceneNode::attachSkin() {
    for (CSkinnedMesh* skin : pendingSkins) {
        skin->attach(this);
    }
    pendingSkins.clear();
}

// 0x65b350 _ZN6glitch7collada14CRootSceneNode13attachCamerasEv
void CRootSceneNode::attachCameras() {
    for (CCameraSceneNode* camera : cameras) {
        camera->attach(this);
    }
}

// 0x65ae70 _ZN6glitch7collada14CRootSceneNode21attachParticleSystemsEv
void CRootSceneNode::attachParticleSystems() {
    for (IParticleSystemSceneNode* particleSystem : particleSystems) {
        particleSystem->attach(this);
    }
}

// 0x65b3dc _ZN6glitch7collada14CRootSceneNode10onPostLoadEv
// Attaches the queued skins, the cameras and the particle systems, updates the absolute positions of the whole tree (K 0xb8 with
// children), computes the box (K 0xf4), marks the skins attached and the box dirty.
void CRootSceneNode::onPostLoad() {
    attachSkin();
    attachCameras();
    attachParticleSystems();
    updateAbsolutePosition(true);
    computeBoundingBox();
    skinsAttached = true;
    flags |= scene::ESNF_BOX_DIRTY;
}

}  // namespace glitch::collada
