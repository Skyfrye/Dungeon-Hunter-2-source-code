// Bodies of glitch::scene::CDefaultSceneNodeFactory (canonical class: scene/CDefaultSceneNodeFactory.hpp). This file replaces the
// stand-in in src/scene_simple_accessors.cpp and the free functions of src/recon/slice_25.cpp.
#include "glitch-scene-collada-gui/scene/CDefaultSceneNodeFactory.hpp"

#include <cstring>

#include "glitch-scene-collada-gui/scene/CAnimatedMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CBillboardSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CDummyTransformationSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CSkyBoxSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CTerrainSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CTextSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCameraFPS.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCameraMaya.hpp"
#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"

namespace glitch::scene {

namespace {

const core::vector3d<float> kZero{0.0f, 0.0f, 0.0f};
const core::vector3d<float> kOne{1.0f, 1.0f, 1.0f};
const core::quaternion kIdentity{0.0f, 0.0f, 0.0f, 1.0f};

// The camera of the three camera cases: id -1, at the origin, looking at (0, 0, 100), no far-to-infinity.
CCameraSceneNode* newCamera() {
    return new CCameraSceneNode(-1, kZero, core::vector3d<float>{0.0f, 0.0f, 100.0f}, false);
}

// A mesh scene node around `mesh` (id -1, origin, identity rotation, unit scale).
ISceneNode* newMeshNode(const boost::intrusive_ptr<IMesh>& mesh) {
    return new CMeshSceneNode(mesh, -1, kZero, kIdentity, kOne);
}

}  // namespace

// 0x6ba774 _ZN6glitch5scene24CDefaultSceneNodeFactory17SSceneNodeTypePairC1ENS0_17E_SCENE_NODE_TYPEEPKc
CDefaultSceneNodeFactory::SSceneNodeTypePair::SSceneNodeTypePair(E_SCENE_NODE_TYPE nodeType, const char* nodeName)
    : type(nodeType), name(nodeName) {}

// 0x6baae8 _ZN6glitch5scene24CDefaultSceneNodeFactoryC2EPNS0_13CSceneManagerEPNS_3gui14ICursorControlERKN5boost13intrusive_ptrINS_2io11IFileSystemEEE
// 0x6bb008 _ZN6glitch5scene24CDefaultSceneNodeFactoryC1EPNS0_13CSceneManagerEPNS_3gui14ICursorControlERKN5boost13intrusive_ptrINS_2io11IFileSystemEEE
CDefaultSceneNodeFactory::CDefaultSceneNodeFactory(CSceneManager* manager, gui::ICursorControl* cursor,
                                                   const boost::intrusive_ptr<io::IFileSystem>& fs)
    : sceneManager(manager), cursorControl(cursor), fileSystem(fs) {
    types.push_back(SSceneNodeTypePair(ESNT_CUBE, "cube"));
    types.push_back(SSceneNodeTypePair(ESNT_SPHERE, "sphere"));
    types.push_back(SSceneNodeTypePair(ESNT_TEXT, "text"));
    types.push_back(SSceneNodeTypePair(ESNT_TERRAIN, "terrain"));
    types.push_back(SSceneNodeTypePair(ESNT_SKY_BOX, "skyBox"));
    types.push_back(SSceneNodeTypePair(ESNT_SHADOW_VOLUME, "shadowVolume"));
    types.push_back(SSceneNodeTypePair(ESNT_MESH, "mesh"));
    types.push_back(SSceneNodeTypePair(ESNT_LIGHT, "light"));
    types.push_back(SSceneNodeTypePair(ESNT_EMPTY, "empty"));
    types.push_back(SSceneNodeTypePair(ESNT_DUMMY_TRANSFORMATION, "dummyTransformation"));
    types.push_back(SSceneNodeTypePair(ESNT_CAMERA, "camera"));
    types.push_back(SSceneNodeTypePair(ESNT_BILLBOARD, "billBoard"));
    types.push_back(SSceneNodeTypePair(ESNT_ANIMATED_MESH, "animatedMesh"));
    types.push_back(SSceneNodeTypePair(ESNT_PARTICLE_SYSTEM, "particleSystem"));
    types.push_back(SSceneNodeTypePair(ESNT_CAMERA_MAYA, "cameraMaya"));
    types.push_back(SSceneNodeTypePair(ESNT_CAMERA_FPS, "cameraFPS"));
}

// 0x6ba8f8 _ZN6glitch5scene24CDefaultSceneNodeFactoryD1Ev
// 0x6ba940 _ZN6glitch5scene24CDefaultSceneNodeFactoryD0Ev (skipped)
CDefaultSceneNodeFactory::~CDefaultSceneNodeFactory() = default;

// 0x6b9cf0 _ZNK6glitch5scene24CDefaultSceneNodeFactory30getCreatableSceneNodeTypeCountEv
std::int32_t CDefaultSceneNodeFactory::getCreatableSceneNodeTypeCount() const {
    return static_cast<std::int32_t>(types.size());
}

// 0x6b9d1c _ZNK6glitch5scene24CDefaultSceneNodeFactory26getCreateableSceneNodeTypeEj
E_SCENE_NODE_TYPE CDefaultSceneNodeFactory::getCreateableSceneNodeType(std::uint32_t index) const {
    return index < types.size() ? types[index].type : ESNT_UNKNOWN;
}

// 0x6b9d60 _ZNK6glitch5scene24CDefaultSceneNodeFactory30getCreateableSceneNodeTypeNameEj
const char* CDefaultSceneNodeFactory::getCreateableSceneNodeTypeName(std::uint32_t index) const {
    return index < types.size() ? types[index].name.c_str() : nullptr;
}

// 0x6b9da0 _ZNK6glitch5scene24CDefaultSceneNodeFactory30getCreateableSceneNodeTypeNameENS0_17E_SCENE_NODE_TYPEE
const char* CDefaultSceneNodeFactory::getCreateableSceneNodeTypeName(E_SCENE_NODE_TYPE type) const {
    for (const SSceneNodeTypePair& pair : types) {
        if (pair.type == type) return pair.name.c_str();
    }
    return nullptr;
}

// 0x6b9e58 _ZNK6glitch5scene24CDefaultSceneNodeFactory15getTypeFromNameEPKc
E_SCENE_NODE_TYPE CDefaultSceneNodeFactory::getTypeFromName(const char* name) const {
    for (const SSceneNodeTypePair& pair : types) {
        if (pair.name == name) return pair.type;
    }
    return ESNT_UNKNOWN;
}

// 0x6b9f04 _ZN6glitch5scene24CDefaultSceneNodeFactory12addSceneNodeEPKcPNS0_10ISceneNodeE
ISceneNode* CDefaultSceneNodeFactory::addSceneNode(const char* typeName, ISceneNode* parent) {
    return addSceneNode(getTypeFromName(typeName), parent);
}

// 0x6b9f30 _ZN6glitch5scene24CDefaultSceneNodeFactory12addSceneNodeENS0_17E_SCENE_NODE_TYPEEPNS0_10ISceneNodeE
// Verified against the decompilation. A new node by type: cube and sphere (a mesh node over createCubeMesh(0x60003, driver, 1.0) and
// createSphereMesh(0x60003, driver, 5.0, 16, 16)), mesh (a mesh node without a mesh), light (CLightSceneNode(1)), empty,
// dummyTransformation, skyBox (six empty textures), text (no font, the manager's collision manager, the text "e", colour 0x64ffffff),
// camera (made the active camera), cameraMaya (with CSceneNodeAnimatorCameraMaya(cursor, -1500, 200, 1500), made active), cameraFPS (with
// CSceneNodeAnimatorCameraFPS(cursor, 100, 500, 0, no key map, no vertical lock), made active), billBoard (CBillboardSceneNode(driver, -1,
// origin, size 0 x 0, white, white)), particleSystem (CParticleSystemSceneNode(true, -1, origin, origin, unit scale)), terrain
// (CTerrainSceneNode(fileSystem, -1, attribute mask 4, 17, 17)) and animatedMesh (CAnimatedMeshSceneNode without a mesh). shadowVolume
// has no case in the original either (null). A node that was made is added to `parent` (vptr+0x5c) when there is one, and the creator's
// use is dropped.
ISceneNode* CDefaultSceneNodeFactory::addSceneNode(E_SCENE_NODE_TYPE type, ISceneNode* parent) {
    ISceneNode* node = nullptr;
    video::IVideoDriver* driver = sceneManager != nullptr ? sceneManager->driver : nullptr;
    switch (type) {
        case ESNT_CAMERA_MAYA: {
            CCameraSceneNode* camera = newCamera();
            auto* animator = new CSceneNodeAnimatorCameraMaya(cursorControl, -1500.0f, 200.0f, 1500.0f);
            camera->addAnimator(animator);
            animator->drop();
            sceneManager->setActiveCamera(camera);
            node = camera;
            break;
        }
        case ESNT_CAMERA: {
            CCameraSceneNode* camera = newCamera();
            sceneManager->setActiveCamera(camera);
            node = camera;
            break;
        }
        case ESNT_CAMERA_FPS: {
            CCameraSceneNode* camera = newCamera();
            auto* animator = new CSceneNodeAnimatorCameraFPS(cursorControl, 100.0f, 500.0f, 0.0f, nullptr, 0, false);
            camera->addAnimator(animator);
            animator->drop();
            sceneManager->setActiveCamera(camera);
            node = camera;
            break;
        }
        case ESNT_MESH:
            node = newMeshNode(boost::intrusive_ptr<IMesh>());
            break;
        case ESNT_CUBE:
            node = newMeshNode(createCubeMesh(0x60003u, driver, 1.0f));
            break;
        case ESNT_SPHERE:
            node = newMeshNode(createSphereMesh(0x60003u, driver, 5.0f, 16u, 16u));
            break;
        case ESNT_LIGHT:
            node = new CLightSceneNode(true);
            break;
        case ESNT_BILLBOARD:
            node = new CBillboardSceneNode(driver, -1, kZero, core::dimension2d<float>{0.0f, 0.0f}, video::SColor{0xFFFFFFFFu},
                                           video::SColor{0xFFFFFFFFu});
            break;
        case ESNT_PARTICLE_SYSTEM:
            node = new CParticleSystemSceneNode(true, -1, kZero, kZero, kOne);
            break;
        case ESNT_TERRAIN:
            node = new CTerrainSceneNode(fileSystem, -1, 4u, 17, 17, kZero, kIdentity, kOne);
            break;
        case ESNT_ANIMATED_MESH:
            node = new CAnimatedMeshSceneNode(boost::intrusive_ptr<IAnimatedMesh>(), -1, kZero, kIdentity, kOne);
            break;
        case ESNT_EMPTY:
            node = new CEmptySceneNode(-1);
            break;
        case ESNT_DUMMY_TRANSFORMATION:
            node = new CDummyTransformationSceneNode(-1);
            break;
        case ESNT_SKY_BOX: {
            const boost::intrusive_ptr<video::ITexture> none;
            node = new CSkyBoxSceneNode(driver, none, none, none, none, none, none, -1);
            break;
        }
        case ESNT_TEXT:
            node = new CTextSceneNode(-1, nullptr, sceneManager->collisionManager, kZero, L"e", video::SColor{0x64FFFFFFu});
            break;
        default:
            return nullptr;
    }
    if (node != nullptr && parent != nullptr) {
        parent->addChild(node);
        node->drop();
    }
    return node;
}

}  // namespace glitch::scene
