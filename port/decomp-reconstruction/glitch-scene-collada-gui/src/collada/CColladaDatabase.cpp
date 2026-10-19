// The scene-object builders of glitch::collada::CColladaDatabase that go through the factory and the canonical node classes: the controller,
// skin, image, material and geometry builders, constructNode / constructVisualScene / constructScene and the static loaders. The index, name
// and record forwarders that do not need the node classes stay in collada_database_create.cpp and the r3a / e2 batch files.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
//
// Convention (as in collada_database_create.cpp): the original returns the created object through a hidden intrusive_ptr slot with the
// count at 1; here the result is the raw pointer carrying that one reference, which the caller adopts.
#include <cstring>

#include "glitch-scene-collada-gui/collada/CBillboardSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CColladaFactory.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CGlitchNewParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CImage.hpp"
#include "glitch-scene-collada-gui/collada/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CModularSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/CParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/collada/IParticleSystemSceneNode.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"

namespace glitch::collada {

CColladaFactory CColladaDatabase::DefaultFactory;

namespace {

// The particle systems the factory builds derive from IParticleSystemSceneNode (collada/CParticleSystemSceneNode.hpp and
// collada/CGlitchNewParticleSystemSceneNode.hpp); the coronas node is reached from scene::ISceneNode through the pointer value, which is
// the same.
IParticleSystemSceneNode* asParticleSystem(CParticleSystemSceneNode* node) {
    return node;
}
IParticleSystemSceneNode* asParticleSystem(CGlitchNewParticleSystemSceneNode* node) {
    return node;
}
scene::ISceneNode* asSceneNode(CCoronasSceneNode* node) {
    return reinterpret_cast<scene::ISceneNode*>(node);
}

// The loaders open the file with the manager's auto-unload flag (CResFileManager +0x28) switched off, hold a database over it (a use on the
// record) and restore the flag afterwards.
class SLoadScope {
public:
    SLoadScope(CResFile* record, CColladaFactory* factory) : previousFlag(CResFileManager::Inst->autoUnloadEnabled) {
        CResFileManager::Inst->autoUnloadEnabled = false;
        database.record = record;
        database.factory = factory != nullptr ? factory : &CColladaDatabase::DefaultFactory;
        if (record != nullptr && record->refCount != 0) {
            ++record->refCount;
        }
    }
    ~SLoadScope() {
        dropDatabase(database);
        CResFileManager::Inst->autoUnloadEnabled = previousFlag;
    }
    SLoadScope(const SLoadScope&) = delete;
    SLoadScope& operator=(const SLoadScope&) = delete;

    CColladaDatabase database;

private:
    bool previousFlag;
};

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// Controllers, skins and images
// ---------------------------------------------------------------------------------------------------------------------

// 0x60f924 _ZNK6glitch7collada16CColladaDatabase13constructSkinEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
// The factory builds the skin (slot 0x58); the root attaches it (now, or when the file is loaded); the result keeps the one reference.
CSkinnedMesh* CColladaDatabase::constructSkin(video::IVideoDriver* driver, SController* controller, CRootSceneNode* root) const {
    CSkinnedMesh* skin = factory->createSkin(*this, driver, controller, root);
    root->attachSkin(skin);
    return skin;
}

// 0x60fa24 _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
// The controller's type word (SController +0x00): 0 is a skin, 1 a morphing mesh; any other value gives null.
IMesh* CColladaDatabase::constructController(video::IVideoDriver* driver, SController* controller, CRootSceneNode* root) const {
    switch (controller->reserved) {
        case 0:
            return constructSkin(driver, controller, root);
        case 1:
            return constructMorph(driver, controller, root);
        default:
            return nullptr;
    }
}

// 0x60fa70 _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
IMesh* CColladaDatabase::constructController(video::IVideoDriver* driver, int index, CRootSceneNode* root) const {
    return constructController(driver, controllerAt(tables(), index), root);
}

// 0x61aa00 _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
IMesh* CColladaDatabase::constructController(video::IVideoDriver* driver, const char* name, CRootSceneNode* root) const {
    return constructController(driver, getController(tables(), name), root);
}

// 0x60fc70 _ZNK6glitch7collada16CColladaDatabase14constructImageEPNS0_6SImageEPNS0_14CRootSceneNodeE
// A new image object over the record (operator new(0x1c)); the original takes one reference on it after its constructor (which starts the
// count at 1). The root is not read. A null record gives null.
CImage* CColladaDatabase::constructImage(SImage* image, CRootSceneNode* /*root*/) const {
    if (image == nullptr) {
        return nullptr;
    }
    CImage* built = new CImage(*this, *image);
    ++built->referenceCounter;
    return built;
}

// 0x60fcc0 _ZNK6glitch7collada16CColladaDatabase14constructImageEiPNS0_14CRootSceneNodeE
CImage* CColladaDatabase::constructImage(int index, CRootSceneNode* root) const {
    return constructImage(imageAt(tables(), index), root);
}

// 0x61b1b4 _ZNK6glitch7collada16CColladaDatabase14constructImageEPKcPNS0_14CRootSceneNodeE
CImage* CColladaDatabase::constructImage(const char* name, CRootSceneNode* root) const {
    return constructImage(getImage(tables(), name), root);
}

// ---------------------------------------------------------------------------------------------------------------------
// Materials
// ---------------------------------------------------------------------------------------------------------------------

// 0x61cca8 _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE
// With a record: the driver's file system (device +0x34) is given the directory of this database's file as a folder archive (with a closing
// slash) while the factory builds the material, so that the relative texture paths resolve, and the archive is removed again when it was
// added. A file in no directory goes straight to the factory. Host guard: a driver without a device builds the material directly.
video::CMaterial* CColladaDatabase::constructMaterial(video::IVideoDriver* driver, SMaterial* material, CRootSceneNode* root) const {
    if (material == nullptr) {
        return nullptr;
    }
    io::IFileSystem* fileSystem = driver != nullptr && driver->m_device != nullptr ? driver->m_device->fileSystem : nullptr;
    if (fileSystem == nullptr) {
        return factory->createMaterial(*this, driver, material, root);
    }
    std::string directory = glitch::core::to_std(fileSystem->getFileDir(glitch::core::stringc(record != nullptr ? record->fileName : "")));
    if (directory.empty()) {
        return factory->createMaterial(*this, driver, material, root);
    }
    if (directory.back() != '\\' && directory.back() != '/') {
        directory += "/";
    }
    const bool added = fileSystem->addFolderFileArchive(directory.c_str(), true, true);
    video::CMaterial* built = factory->createMaterial(*this, driver, material, root);
    if (added) {
        fileSystem->removeFileArchive(directory.c_str());
    }
    return built;
}

// 0x61cefc _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
video::CMaterial* CColladaDatabase::constructMaterial(video::IVideoDriver* driver, const char* name, CRootSceneNode* root) const {
    return constructMaterial(driver, getMaterial(tables(), name), root);
}

// 0x61cf44 _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
video::CMaterial* CColladaDatabase::constructMaterial(video::IVideoDriver* driver, int index, CRootSceneNode* root) const {
    return constructMaterial(driver, materialAt(tables(), index), root);
}

// 0x61ac88 _ZNK6glitch7collada16CColladaDatabase11getMaterialEPKcS3_
// The material `name` of the file `fileName` next to this database's file: a temporary database over that file (CResFileManager::get,
// the default factory) looks the name up and is dropped. A file that cannot be opened gives null (the original would dereference it).
SMaterial* materialOfFile(const CColladaDatabase& database, const char* fileName, const char* name) {
    CColladaDatabase other(&database, fileName, &CColladaDatabase::DefaultFactory);
    SMaterial* material = other.record != nullptr ? getMaterial(other.tables(), name) : nullptr;
    dropDatabase(other);
    return material;
}

namespace {

// The material of a binding: the one of another file when the binding names a file, else the one of this file by index.
SMaterial* bindingMaterial(const CColladaDatabase& database, const SInstanceMaterial& binding) {
    if (binding.file != nullptr) {
        return materialOfFile(database, binding.file, binding.url + 1);
    }
    return materialAt(database.tables(), binding.materialIndex);
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// Instances of meshes
// ---------------------------------------------------------------------------------------------------------------------

// 0x61ace8 _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb
// The controller named by the instance's URL is built; when it exists, the material of each binding goes in through the root (the root
// builds and shares the materials), the mesh is initialised (slot 0x40), and the vertex-attribute map the factory builds for each
// material goes in too.
IMesh* CColladaDatabase::constructController(video::IVideoDriver* driver, SInstanceController* instance, CRootSceneNode* root,
                                             bool flag) const {
    IMesh* mesh = constructController(driver, instance->name + 1, root);
    if (mesh == nullptr) {
        return nullptr;
    }
    for (std::int32_t i = 0; i < instance->bindingCount; ++i) {
        boost::intrusive_ptr<video::CMaterial> material = root->getMaterial(bindingMaterial(*this, instance->bindings[i]), driver);
        mesh->setMaterial(static_cast<std::uint32_t>(i), material, boost::intrusive_ptr<video::CMaterialVertexAttributeMap>());
    }
    mesh->init(driver, flag);
    {
        boost::intrusive_ptr<IMesh> handle(mesh, true);  // the factory takes the mesh by handle; the reference of the builder stays
        for (std::int32_t i = 0; i < instance->bindingCount; ++i) {
            boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(static_cast<std::uint32_t>(i));
            boost::intrusive_ptr<video::CMaterialVertexAttributeMap> attributeMap = factory->createMaterialVertexAttributeMap(
                *this, &instance->bindings[i], handle, material, static_cast<unsigned int>(i), false);
            mesh->setMaterial(static_cast<std::uint32_t>(i), material, attributeMap);
        }
    }
    return mesh;
}

// 0x61aae0 _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPKcS6_
// The geometry `geometryName` of the file `fileName`, opened next to this database's file (CResFileManager::get with the flag set; the
// manager's auto-unload flag is off meanwhile). A missing file or geometry is logged and gives null.
IMesh* CColladaDatabase::constructGeometry(video::IVideoDriver* driver, const char* fileName, const char* geometryName) const {
    CResFile* loaded = CResFileManager::Inst->get(record, fileName, true);
    if (loaded == nullptr) {
        os::Printer::log("File not found", os::ELL_ERROR);
        os::Printer::log(fileName, os::ELL_ERROR);
        return nullptr;
    }
    SLoadScope scope(loaded, factory);
    scope.database.factory = factory;
    IMesh* mesh = scope.database.constructGeometry(driver, geometryName);
    if (mesh == nullptr) {
        os::Printer::log("Geometry not found", os::ELL_ERROR);
        os::Printer::log(fileName, os::ELL_ERROR);
        os::Printer::log(geometryName, os::ELL_ERROR);
    }
    return mesh;
}

// 0x61aeb8 _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPNS0_17SInstanceGeometryEPNS0_14CRootSceneNodeE
// The geometry of the instance: from its own file when the record names one, else from this file by the URL. Then, as for a controller,
// the material of each binding comes from the root and the factory builds its vertex-attribute map.
// Port addition (remaster): called for each material binding of a static geometry instance before its vertex-attribute map is
// built, so the game can extend the mesh buffer's streams (vertex tangents for normal maps, game-app remaster_normal_maps.cpp).
void (*g_dh2GeometryBindingHook)(video::IVideoDriver* driver, scene::CMeshBuffer* buffer, video::CMaterial* material) = nullptr;

IMesh* CColladaDatabase::constructGeometry(video::IVideoDriver* driver, SInstanceGeometry* instance, CRootSceneNode* root) const {
    IMesh* mesh = instance->file != nullptr ? constructGeometry(driver, instance->file, instance->url + 1)
                                            : constructGeometry(driver, instance->url + 1);
    if (mesh == nullptr || instance->bindingCount <= 0) {
        return mesh;
    }
    boost::intrusive_ptr<IMesh> handle(mesh, true);  // the builder's own reference stays with the result
    for (std::int32_t i = 0; i < instance->bindingCount; ++i) {
        boost::intrusive_ptr<video::CMaterial> material = root->getMaterial(bindingMaterial(*this, instance->bindings[i]), driver);
        if (g_dh2GeometryBindingHook != nullptr && material) {
            boost::intrusive_ptr<scene::CMeshBuffer> buffer = handle->getMeshBuffer(static_cast<std::uint32_t>(i));
            if (buffer) g_dh2GeometryBindingHook(driver, buffer.get(), material.get());  // port addition (remaster)
        }
        boost::intrusive_ptr<video::CMaterialVertexAttributeMap> attributeMap = factory->createMaterialVertexAttributeMap(
            *this, &instance->bindings[i], handle, material, static_cast<unsigned int>(i), false);
        mesh->setMaterial(static_cast<std::uint32_t>(i), material, attributeMap);
    }
    return mesh;
}

// ---------------------------------------------------------------------------------------------------------------------
// Particle-system instances
// ---------------------------------------------------------------------------------------------------------------------

// 0x61a608 _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEPNS0_20SInstanceGNPSEmitterEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
// The emitter the URL names, built with the instance's material-name vector (instance +0x18); then the material of each binding is added to
// it (IParticleSystemSceneNode::addMaterial).
CGlitchNewParticleSystemSceneNode* CColladaDatabase::constructGNPSEmitter(SInstanceGNPSEmitter* instance, video::IVideoDriver* driver,
                                                                          CRootSceneNode* root) const {
    CGlitchNewParticleSystemSceneNode* emitter = constructGNPSEmitter(instance->url + 1, driver, &instance->materials, root);
    if (emitter != nullptr) {
        for (std::int32_t i = 0; i < instance->bindingCount; ++i) {
            asParticleSystem(emitter)->addMaterial(*materialAt(tables(), instance->bindings[i].materialIndex), driver);
        }
    }
    return emitter;
}

// 0x61a888 _ZNK6glitch7collada16CColladaDatabase16constructEmitterEPNS0_16SInstanceEmitterEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
CParticleSystemSceneNode* CColladaDatabase::constructEmitter(SInstanceEmitter* instance, video::IVideoDriver* driver,
                                                             CRootSceneNode* root) const {
    CParticleSystemSceneNode* emitter = constructEmitter(instance->url + 1, driver, &instance->materials, root);
    if (emitter != nullptr) {
        for (std::int32_t i = 0; i < instance->bindingCount; ++i) {
            asParticleSystem(emitter)->addMaterial(*materialAt(tables(), instance->bindings[i].materialIndex), driver);
        }
    }
    return emitter;
}

// ---------------------------------------------------------------------------------------------------------------------
// Nodes and scenes
// ---------------------------------------------------------------------------------------------------------------------

// 0x61b2f4 _ZNK6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS0_5SNodeEPNS0_14CRootSceneNodeE
// The node is made by the factory (the billboard builder when the record has a billboard, else the plain one). Each instance of the
// record is built (camera, controller, geometry, light, emitters, coronas, force, modular skin) and added as a child, the mesh nodes
// getting the instance's rendering layer (and automatic culling 2); then the record's name, translation, rotation, scale and visibility
// are applied and the child records are built recursively.
scene::ISceneNode* CColladaDatabase::constructNode(video::IVideoDriver* driver, SNode* node, CRootSceneNode* root) const {
    if (node == nullptr) {
        return nullptr;
    }
    scene::ISceneNode* result = node->billboard != nullptr ? static_cast<scene::ISceneNode*>(factory->createBillboard(*this, node))
                                                           : static_cast<scene::ISceneNode*>(factory->createNode(*this, node));
    void* userProperty = const_cast<scene::SUserProperty*>(node->userProperty);

    const auto attach = [result](scene::ISceneNode* child) {
        result->addChild(child);
        child->drop();
    };
    // A mesh node: the instance's rendering layer, optionally automatic culling 2, then it goes below the node.
    const auto attachMeshNode = [&](scene::ISceneNode* meshNode, std::int32_t layer, bool culling) {
        meshNode->setRenderingLayer(layer);
        if (culling) {
            meshNode->setAutomaticCulling(2);
        }
        attach(meshNode);
    };

    for (std::uint32_t i = 0; i < node->instanceCount; ++i) {
        const SInstanceRef& ref = node->instances[i];
        switch (ref.kind) {
            case EIK_CAMERA: {
                auto* instance = static_cast<SInstanceCamera*>(ref.instance);
                if (CCameraSceneNode* camera = constructCamera(instance->url + 1, root)) {
                    attach(camera);
                }
                break;
            }
            case EIK_CONTROLLER: {
                auto* instance = static_cast<SInstanceController*>(ref.instance);
                boost::intrusive_ptr<IMesh> mesh(constructController(driver, instance, root, true));
                if (!mesh) {
                    break;
                }
                // Types 2 and 3 are the skinned and the modular skinned meshes (CSkinnedMesh, CModularSkinnedMesh).
                const std::uint32_t type = mesh->getType();
                scene::ISceneNode* meshNode = static_cast<scene::ISceneNode*>(
                    type == 2 || type == 3 ? factory->createSkinNode(*this, mesh, userProperty)
                                           : factory->createMeshNode(*this, mesh, userProperty));
                if (meshNode != nullptr) {
                    attachMeshNode(meshNode, instance->renderingLayer, true);
                }
                break;
            }
            case EIK_GEOMETRY: {
                auto* instance = static_cast<SInstanceGeometry*>(ref.instance);
                boost::intrusive_ptr<IMesh> mesh(constructGeometry(driver, instance, root));
                if (!mesh) {
                    break;
                }
                scene::ISceneNode* meshNode = static_cast<scene::ISceneNode*>(factory->createMeshNode(*this, mesh, userProperty));
                if (meshNode != nullptr) {
                    attachMeshNode(meshNode, instance->renderingLayer, false);
                }
                break;
            }
            case EIK_LIGHT: {
                auto* instance = static_cast<SInstanceLight*>(ref.instance);
                if (CLightSceneNode* light = constructLight(instance->url + 1, root)) {
                    attach(light);
                }
                break;
            }
            case EIK_EMITTER: {
                auto* instance = static_cast<SInstanceEmitter*>(ref.instance);
                if (CParticleSystemSceneNode* emitter = constructEmitter(instance, driver, root)) {
                    IParticleSystemSceneNode* particles = asParticleSystem(emitter);
                    particles->setRenderingLayer(instance->renderingLayer);
                    particles->init();
                    attach(particles);
                }
                break;
            }
            case EIK_GNPS_EMITTER: {
                auto* instance = static_cast<SInstanceGNPSEmitter*>(ref.instance);
                if (CGlitchNewParticleSystemSceneNode* emitter = constructGNPSEmitter(instance, driver, root)) {
                    IParticleSystemSceneNode* particles = asParticleSystem(emitter);
                    particles->setRenderingLayer(instance->renderingLayer);
                    particles->init();
                    attach(particles);
                }
                break;
            }
            case EIK_CORONAS: {
                auto* instance = static_cast<SInstanceCoronas*>(ref.instance);
                if (CCoronasSceneNode* coronas = constructCoronas(instance, driver, root)) {
                    attach(asSceneNode(coronas));
                }
                break;
            }
            case EIK_FORCE: {
                auto* instance = static_cast<SInstanceForce*>(ref.instance);
                if (void* force = constructForce(instance, root)) {
                    attach(static_cast<scene::ISceneNode*>(force));
                }
                break;
            }
            case EIK_MODULAR_SKIN: {
                auto* instance = static_cast<SInstanceModularSkin*>(ref.instance);
                boost::intrusive_ptr<IMesh> mesh(constructModularSkin(instance, root));
                if (!mesh) {
                    break;
                }
                scene::ISceneNode* meshNode = static_cast<scene::ISceneNode*>(factory->createModularSkinNode(*this, mesh, userProperty));
                if (meshNode != nullptr) {
                    attachMeshNode(meshNode, instance->renderingLayer, true);
                }
                break;
            }
            default:
                break;
        }
    }

    result->setName(node->name);
    result->setPosition(core::vector3d<float>{node->translation[0], node->translation[1], node->translation[2]});
    result->setRotation(core::quaternion{node->rotation[0], node->rotation[1], node->rotation[2], node->rotation[3]});
    result->setScale(core::vector3d<float>{node->scale[0], node->scale[1], node->scale[2]});
    result->setVisible(node->unk_34 != 0);
    for (std::uint32_t i = 0; i < node->childCount; ++i) {
        scene::ISceneNode* child = constructNode(driver, &node->children[i], root);
        result->addChild(child);
        child->drop();
    }
    return result;
}

// 0x61b8bc _ZNK6glitch7collada16CColladaDatabase19constructVisualSceneEPNS_5video12IVideoDriverEPNS0_12SVisualSceneEPNS0_14CRootSceneNodeE
// The root is the given one or the factory's new scene (slot 0x54); it is named after the visual scene and every top-level node of the
// scene is built below it.
CRootSceneNode* CColladaDatabase::constructVisualScene(video::IVideoDriver* driver, SVisualScene* scene, CRootSceneNode* root) const {
    if (scene == nullptr) {
        return nullptr;
    }
    if (root == nullptr) {
        root = static_cast<CRootSceneNode*>(static_cast<scene::ISceneNode*>(factory->createScene(*this)));
    }
    root->setName(scene->displayName);
    for (std::uint32_t i = 0; i < scene->nodeCount; ++i) {
        scene::ISceneNode* child = constructNode(driver, &scene->nodes[i], root);
        root->addChild(child);
        child->drop();
    }
    return root;
}

// 0x61b9e8 _ZNK6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverE
// Null without a loaded file. Otherwise the factory's scene is made, each entry of the file's scene object whose kind is 6 (a visual scene
// instance) is built below it by the URL, and the root is finished (onPostLoad: attaches the skins, cameras and particle systems;
// resolveURLs: resolves the queued light URLs).
CRootSceneNode* CColladaDatabase::constructScene(video::IVideoDriver* driver) const {
    if (record == nullptr) {
        return nullptr;
    }
    CRootSceneNode* root = static_cast<CRootSceneNode*>(static_cast<scene::ISceneNode*>(factory->createScene(*this)));
    // The loop re-reads the table every time round, as the original does (building a node never changes it).
    for (std::size_t i = 0; i < tables().scene.size(); ++i) {
        const SInstanceRef& entry = tables().scene[i];
        if (entry.kind == EIK_VISUAL_SCENE) {
            constructVisualScene(driver, static_cast<SInstanceVisualScene*>(entry.instance)->url + 1, root);
        }
    }
    root->onPostLoad();
    root->resolveURLs();
    return root;
}

// 0x61babc _ZNK6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEb
// The scene of the file; with the flag, the animator of the file (if there is one) is added to the root and its reference dropped.
CRootSceneNode* CColladaDatabase::constructScene(video::IVideoDriver* driver, bool flag) const {
    CRootSceneNode* root = constructScene(driver);
    if (root == nullptr || !flag) {
        return root;
    }
    if (auto* animator = static_cast<CSceneNodeAnimator*>(constructAnimator())) {
        root->addAnimator(animator);
        animator->drop();
    }
    return root;
}

// 0x61bb20 _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPKcPNS0_15CColladaFactoryE
// (static) Loads `fileName` (CResFileManager::load), builds the scene on a temporary database over it with the animator (flag 1), with the
// default factory when none is given.
CRootSceneNode* CColladaDatabase::constructScene(video::IVideoDriver* driver, const char* fileName, CColladaFactory* factory) {
    CResFile* loaded = CResFileManager::Inst->load(fileName, false, nullptr);
    if (loaded == nullptr) {
        return nullptr;
    }
    SLoadScope scope(loaded, factory);
    return scope.database.constructScene(driver, true);
}

// 0x61bbd4 _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPKcbPNS0_15CColladaFactoryE
CRootSceneNode* CColladaDatabase::constructScene(video::IVideoDriver* driver, const char* fileName, bool flag, CColladaFactory* factory) {
    CResFile* loaded = CResFileManager::Inst->load(fileName, false, nullptr);
    if (loaded == nullptr) {
        return nullptr;
    }
    SLoadScope scope(loaded, factory);
    return scope.database.constructScene(driver, flag);
}

// 0x61bc8c _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPNS_2io9IReadFileEbbPNS0_15CColladaFactoryE
CRootSceneNode* CColladaDatabase::constructScene(video::IVideoDriver* driver, glitch::io::IReadFile* file, bool flagA, bool flagB,
                                                 CColladaFactory* factory) {
    CResFile* loaded = CResFileManager::Inst->load(file, false, nullptr, flagA);
    if (loaded == nullptr) {
        return nullptr;
    }
    SLoadScope scope(loaded, factory);
    return scope.database.constructScene(driver, flagB);
}

// 0x61bd54 _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPNS_2io9IReadFileEbPNS0_15CColladaFactoryE
CRootSceneNode* CColladaDatabase::constructScene(video::IVideoDriver* driver, glitch::io::IReadFile* file, bool flag,
                                                 CColladaFactory* factory) {
    CResFile* loaded = CResFileManager::Inst->load(file, false, nullptr, false);
    if (loaded == nullptr) {
        return nullptr;
    }
    SLoadScope scope(loaded, factory);
    return scope.database.constructScene(driver, flag);
}

// 0x61be14 _ZNK6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS0_5SNodeE
// A root of the factory (slot 0x54) is made, the node is built below it, the root is finished (onPostLoad) and returned.
CRootSceneNode* CColladaDatabase::constructNode(video::IVideoDriver* driver, SNode* node) const {
    if (node == nullptr) {
        return nullptr;
    }
    CRootSceneNode* root = static_cast<CRootSceneNode*>(static_cast<scene::ISceneNode*>(factory->createScene(*this)));
    scene::ISceneNode* built = constructNode(driver, node, root);
    root->addChild(built);
    root->onPostLoad();
    built->drop();
    return root;
}

// 0x61c6f4 _ZNK6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPKc
CRootSceneNode* CColladaDatabase::constructNode(video::IVideoDriver* driver, const char* nodeName) const {
    return constructNode(driver, getNode(nodeName));
}

// 0x61c71c _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS_2io9IReadFileEPKcbPNS0_15CColladaFactoryE
// (static) The node `nodeName` of a file, built on a temporary database over it. This overload passes the factory as given (the
// original does not substitute the default).
CRootSceneNode* CColladaDatabase::constructNode(video::IVideoDriver* driver, glitch::io::IReadFile* file, const char* nodeName, bool flag,
                                                CColladaFactory* factory) {
    CResFile* loaded = CResFileManager::Inst->load(file, false, nullptr, flag);
    if (loaded == nullptr) {
        return nullptr;
    }
    SLoadScope scope(loaded, nullptr);
    scope.database.factory = factory;
    return scope.database.constructNode(driver, nodeName);
}

// 0x61c7cc _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS_2io9IReadFileEPKcPNS0_15CColladaFactoryE
CRootSceneNode* CColladaDatabase::constructNode(video::IVideoDriver* driver, glitch::io::IReadFile* file, const char* nodeName,
                                                CColladaFactory* factory) {
    CResFile* loaded = CResFileManager::Inst->load(file, false, nullptr, false);
    if (loaded == nullptr) {
        return nullptr;
    }
    SLoadScope scope(loaded, nullptr);
    scope.database.factory = factory;
    return scope.database.constructNode(driver, nodeName);
}

// 0x61c878 _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPKcS6_PNS0_15CColladaFactoryE
CRootSceneNode* CColladaDatabase::constructNode(video::IVideoDriver* driver, const char* fileName, const char* nodeName,
                                                CColladaFactory* factory) {
    CResFile* loaded = CResFileManager::Inst->load(fileName, false, nullptr);
    if (loaded == nullptr) {
        return nullptr;
    }
    SLoadScope scope(loaded, nullptr);
    scope.database.factory = factory;
    return scope.database.constructNode(driver, nodeName);
}

// ---------------------------------------------------------------------------------------------------------------------
// Animators
// ---------------------------------------------------------------------------------------------------------------------

// 0x60e348 _ZNK6glitch7collada16CColladaDatabase8getSceneEv
const std::vector<SInstanceRef>* CColladaDatabase::getScene() const {
    return &tables().scene;
}

// 0x60fb54 _ZNK6glitch7collada16CColladaDatabase16constructAnimatorEv
// The animator exists when the file has animations, image sequences (images whose kind word at +0x0c is 1) or an event track: the
// factory builds it (slot 0x08) over the clip library, each animation that has a track gets it added (animator slot 0x88), and the event
// track is set. Null otherwise.
void* CColladaDatabase::constructAnimator() const {
    const SDatabaseTables& table = tables();
    int imageSequences = 0;
    for (std::size_t i = 0; i < table.images.size(); ++i) {
        if (table.images[i]->external == 1) {
            ++imageSequences;
        }
    }
    if (table.animations.empty() && imageSequences == 0 && table.eventKeyTable == nullptr) {
        return nullptr;
    }
    void* made = factory->createAnimator(*this, const_cast<SLibraryAnimationClips*>(&table.animationClipLibrary));
    auto* animator = static_cast<CSceneNodeAnimator*>(made);
    for (std::size_t i = 0; i < table.animations.size(); ++i) {
        SAnimation* animation = table.animations[i];
        if (animation->trackEx != nullptr) {
            animator->addAnimationTrack(animation);
        }
    }
    animator->setEventsTrack(table.eventKeyTable);
    return made;
}

// 0x619510 _ZN6glitch7collada16CColladaDatabase16constructAnimatorEPNS_2io9IReadFileEbPNS0_15CColladaFactoryE
// (static) The animator of a file: loaded (CResFileManager::load), a temporary database over it (the default factory when none is given).
void* CColladaDatabase::constructAnimator(glitch::io::IReadFile* file, bool flag, CColladaFactory* factory) {
    CResFile* loaded = CResFileManager::Inst->load(file, false, nullptr, flag);
    if (loaded == nullptr) {
        return nullptr;
    }
    SLoadScope scope(loaded, factory);
    return scope.database.constructAnimator();
}

// 0x6195c8 _ZN6glitch7collada16CColladaDatabase16constructAnimatorEPNS_2io9IReadFileEPNS0_15CColladaFactoryE
void* CColladaDatabase::constructAnimator(glitch::io::IReadFile* file, CColladaFactory* factory) {
    CResFile* loaded = CResFileManager::Inst->load(file, false, nullptr, false);
    if (loaded == nullptr) {
        return nullptr;
    }
    SLoadScope scope(loaded, factory);
    return scope.database.constructAnimator();
}

// 0x61967c _ZN6glitch7collada16CColladaDatabase16constructAnimatorEPKcPNS0_15CColladaFactoryE
void* CColladaDatabase::constructAnimator(const char* fileName, CColladaFactory* factory) {
    CResFile* loaded = CResFileManager::Inst->load(fileName, false, nullptr);
    if (loaded == nullptr) {
        return nullptr;
    }
    SLoadScope scope(loaded, factory);
    return scope.database.constructAnimator();
}

}  // namespace glitch::collada
