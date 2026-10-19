// SkinnedMeshSceneNodeEx: the secondary base (a vptr only, at +0x180 in the original) that SkinnedMeshSceneNode and
// ModularSkinnedMeshSceneNode derive from. Its single virtual, prepareSkinForRendering, is what SceneManager::registerSkinnedMesh
// stores in its batch list (the node registers itself from onRegisterSceneNode) and calls before the batch is drawn.
// Reconstructed from libDungeonHunter2.so pseudocode (SkinnedMeshSceneNode 0x35a914 / 0x35ad8c, ModularSkinnedMeshSceneNode
// 0x35a8e8 / 0x35acb4).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/collada/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

class SkinnedMeshSceneNodeEx {
public:
    virtual void prepareSkinForRendering() = 0;  // vtable +0x00 of the +0x180 subobject

protected:
    ~SkinnedMeshSceneNodeEx() = default;
};

// The body both skinned node classes share (0x35ad8c, 0x35acb4). Nothing happens without a mesh or without the scene manager video
// driver (scene manager +0x14). Otherwise every mesh buffer that exists has its material read and the mesh asked to prepare the
// buffer for rendering (step 0). The leftover return register is not read by any caller.
inline void PrepareSkinForRendering(glitch::collada::CMeshSceneNode& node) {
    if (!node.mesh) {
        return;
    }
    glitch::video::IVideoDriver* driver = node.sceneManager->driver;  // (this+0x110)->+0x14
    if (driver == nullptr) {
        return;
    }
    const std::uint32_t count = node.mesh->getMeshBufferCount();
    for (std::uint32_t i = 0; i != count; ++i) {
        auto buffer = node.mesh->getMeshBuffer(i);
        if (buffer) {
            buffer.reset();
            auto material = node.mesh->getMaterial(i);
            node.mesh->onPrepareBufferForRendering(0, driver, i);
        }
    }
}
