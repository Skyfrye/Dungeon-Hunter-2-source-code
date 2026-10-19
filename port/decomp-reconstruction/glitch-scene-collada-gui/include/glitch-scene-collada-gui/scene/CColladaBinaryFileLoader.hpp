// glitch::scene::CColladaBinaryFileLoader: the mesh loader for the binary Collada container (".bdae"), the one the scene manager
// registers in its constructor. Canonical header of the scene owner pass (R3b). It replaces glitch-core-io/collada_binary_file_loader.hpp
// (which now forwards here: that header kept a class without a base and with the constructor only), the stand-in in
// scene_simple_accessors.hpp and the free functions of recon/slice_25.hpp and recon/slice_33.hpp.
//
// Layout (original 32-bit offsets; constructors 0x6b9310 C2 / 0x6b9360 C1, created by CSceneManager's constructor with
// operator new(0x10)):
//   +0x00 vptr (vtable 0x9878b8, 32 bytes)   +0x04 reference count (the constructor stores 1)
//   +0x08 the scene manager (not held)       +0x0c the file system (a use is held)
// Vtable: +0x00 / +0x04 destructors, +0x08 onDelete, +0x0c isALoadableFileExtension, +0x10 createMesh (the two IMeshLoader slots),
// +0x14 createScene (the loader's own).
#pragma once

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/scene/SceneFactories.hpp"

namespace glitch::scene {

class CColladaBinaryFileLoader : public IMeshLoader {
public:
    // 0x6b9310 (C2) and 0x6b9360 (C1): stores the manager and takes a use of the file system (defined in
    // glitch-core-io/src/collada_binary_file_loader.cpp).
    CColladaBinaryFileLoader(CSceneManager* manager, const boost::intrusive_ptr<io::IFileSystem>& fs);
    // 0x6b93b0 (D2), 0x6b93f0 (D1) and 0x6b955c (D0, skipped): the file system's use is dropped.
    ~CColladaBinaryFileLoader() override;

    // vptr+0x0c, 0x6b9538: the file name contains ".bdae" (strstr).
    bool isALoadableFileExtension(const char* fileName) const override;
    // vptr+0x10, 0x6b9458: loads the file through the resource file manager into a database, builds its scene and animator, and
    // adds the scene to the root node of the scene manager. The answer is always a null mesh: the scene is the product.
    boost::intrusive_ptr<IAnimatedMesh> createMesh(io::IReadFile* file) override;
    // vptr+0x14, 0x6b9430: returns null.
    virtual ISceneNode* createScene(io::IReadFile* file);

    CSceneManager* sceneManager = nullptr;                     // +0x08
    boost::intrusive_ptr<glitch::io::IFileSystem> fileSystem;  // +0x0c
};

}  // namespace glitch::scene
