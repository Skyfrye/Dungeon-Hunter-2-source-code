// Bodies of glitch::scene::CColladaBinaryFileLoader (canonical class: scene/CColladaBinaryFileLoader.hpp). The constructor stays in
// glitch-core-io/src/collada_binary_file_loader.cpp. This file replaces the stand-in bodies in src/scene_simple_accessors.cpp and
// src/recon/slice_25.cpp.
#include "glitch-scene-collada-gui/scene/CColladaBinaryFileLoader.hpp"

#include <cstring>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"

namespace glitch::scene {

// 0x6b93b0 _ZN6glitch5scene24CColladaBinaryFileLoaderD2Ev
// 0x6b93f0 _ZN6glitch5scene24CColladaBinaryFileLoaderD1Ev
// 0x6b955c _ZN6glitch5scene24CColladaBinaryFileLoaderD0Ev (skipped)
// The file system's use is dropped (the member handle does it).
CColladaBinaryFileLoader::~CColladaBinaryFileLoader() = default;

// 0x6b9538 _ZNK6glitch5scene24CColladaBinaryFileLoader24isALoadableFileExtensionEPKc
bool CColladaBinaryFileLoader::isALoadableFileExtension(const char* fileName) const {
    return std::strstr(fileName, ".bdae") != nullptr;
}

// 0x6b9430 _ZN6glitch5scene24CColladaBinaryFileLoader11createSceneEPNS_2io9IReadFileE
ISceneNode* CColladaBinaryFileLoader::createScene(io::IReadFile* /*file*/) {
    return nullptr;
}

// 0x6b9458 _ZN6glitch5scene24CColladaBinaryFileLoader10createMeshEPNS_2io9IReadFileE
// The database over the loaded file builds the scene (with the manager's driver) and the animator of the file; the animator goes on
// the scene (its creation use is kept, as in the original), and the scene on the manager's root node. No mesh is returned.
boost::intrusive_ptr<IAnimatedMesh> CColladaBinaryFileLoader::createMesh(io::IReadFile* file) {
    collada::CColladaDatabase database(file, &collada::CColladaDatabase::DefaultFactory);
    collada::CRootSceneNode* scene = database.constructScene(sceneManager->driver);
    auto* animator = static_cast<collada::CSceneNodeAnimator*>(database.constructAnimator());
    scene->addAnimator(animator);
    sceneManager->rootNode->addChild(scene);
    return boost::intrusive_ptr<IAnimatedMesh>();
}

}  // namespace glitch::scene
