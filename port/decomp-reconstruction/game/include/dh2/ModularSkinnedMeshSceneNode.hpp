// ModularSkinnedMeshSceneNode: a modular skinned mesh node. It is BaseMeshSceneNode over the engine CModularSkinnedMeshSceneNode and,
// like SkinnedMeshSceneNode, a second base SkinnedMeshSceneNodeEx (vptr at +0x180) whose prepareSkinForRendering the scene manager
// calls. The engine virtual base IReferenceCounted sits at +0x184 with its refcount at +0x188, set to 1 by the ctor (C1 0x35af00).
// The base render flag is at +0x17c.
// Original 32-bit size 0x18c (396), from operator new(396) in ColladaFactory::createModularSkinNode.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x35af00 / 0x35af88, dtors 0x35ba4c / 0x35baa0 / 0x35babc,
// methods 0x35a8e8, 0x35a940, 0x35acb4).
#pragma once

#include <cstdint>

#include "dh2/BaseMeshSceneNode.hpp"
#include "dh2/SkinnedMeshSceneNodeEx.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/collada/CMeshSceneNode.hpp"

class ModularSkinnedMeshSceneNode : public BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>, public SkinnedMeshSceneNodeEx {
public:
    explicit ModularSkinnedMeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& mesh);  // 0x35af00 (complete), 0x35af88 (base-object form)
    ~ModularSkinnedMeshSceneNode() override;                                                         // 0x35ba4c (complete dtor), 0x35baa0 (deleting), 0x35babc (base-object form with VTT)

    int onRegisterSceneNode() override;                                // 0x35a8e8: registers the +0x180 subobject with the scene manager, then CMeshSceneNode::onRegisterSceneNode
    void updateAbsolutePosition(bool includeChildren) override;        // 0x35a940: animates the skin (mesh onAnimate(1)), then ISceneNode::updateAbsolutePosition
    void prepareSkinForRendering() override;                           // 0x35acb4: prepares every buffer of the skin
};
