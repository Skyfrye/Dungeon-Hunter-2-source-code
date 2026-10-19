// SkinnedMeshSceneNode: the skinned mesh node. It is BaseMeshSceneNode over the engine CSkinnedMeshSceneNode and a second base,
// SkinnedMeshSceneNodeEx (a vptr only, at +0x180 in the original), whose virtual prepareSkinForRendering the scene manager calls
// for the nodes that registered themselves. The virtual base IReferenceCounted of the engine node sits at +0x184 (refcount 1 from the
// complete ctor).
// Original 32-bit size 0x18c (396), inferred from the virtual base; operator new(396) in ColladaFactory::createSkinNode.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x35b0a0 / 0x35b128, dtors 0x35b860 / 0x35b8f4 /
// 0x35b910, methods 0x35a914, 0x35a974, 0x35ad8c).
#pragma once

#include <cstdint>

#include "dh2/BaseMeshSceneNode.hpp"
#include "dh2/SkinnedMeshSceneNodeEx.hpp"
#include "glitch-scene-collada-gui/collada/CMeshSceneNode.hpp"

class SkinnedMeshSceneNode : public BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>, public SkinnedMeshSceneNodeEx {
public:
    explicit SkinnedMeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& mesh);  // 0x35b0a0 (complete), 0x35b128 (base-object form)
    ~SkinnedMeshSceneNode() override;                                   // 0x35b860 (base-object dtor), 0x35b8f4 (deleting), 0x35b910 (VTT form)

    // Overrides of the base slots.
    int onRegisterSceneNode() override;                                 // 0x35a914, registers the +0x180 subobject with the scene manager, then the base
    void updateAbsolutePosition(bool includeChildren) override;         // 0x35a974, animates the skin (mesh onAnimate(1)) first

    // SkinnedMeshSceneNodeEx virtual (slot of the +0x180 subobject, thunk at 0x114).
    void prepareSkinForRendering() override;                            // 0x35ad8c, prepares every buffer of the skin
};
