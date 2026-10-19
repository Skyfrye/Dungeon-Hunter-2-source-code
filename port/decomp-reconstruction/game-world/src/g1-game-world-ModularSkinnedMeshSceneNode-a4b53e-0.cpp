// Batch g1-game-world-ModularSkinnedMeshSceneNode-a4b53e-0: the eight ModularSkinnedMeshSceneNode functions
// (two methods, the complete and base-object constructors, and the three destructors). Declarations come from
// dh2/ModularSkinnedMeshSceneNode.hpp.
//
// The VTT-taking base-object forms (C2 0x35af88 and D2 0x35babc) have no body of their own: the compiler emits them from the
// complete forms. The deleting destructor (D0 0x35baa0) is the complete destructor followed by CustomFree.

#include "dh2/ModularSkinnedMeshSceneNode.hpp"

#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

// The base constructor and destructor are explicit specializations defined in
// g1-game-world-BaseMeshSceneNode-fb9ec3-0.cpp. They are declared here so this file refers to them as specializations.
template <>
BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode(
        const boost::intrusive_ptr<glitch::collada::IMesh>& mesh);
template <>
BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode();

// 0x35a8e8 _ZN27ModularSkinnedMeshSceneNode19onRegisterSceneNodeEv
// The scene manager (node +0x110) is asked to register the +0x180 subobject (its vtable +0x88, registerSkinnedMesh), then the engine
// mesh node registers itself and its result is returned.
int ModularSkinnedMeshSceneNode::onRegisterSceneNode() {
    sceneManager->registerSkinnedMesh(static_cast<void*>(static_cast<SkinnedMeshSceneNodeEx*>(this)));
    return glitch::collada::CMeshSceneNode::onRegisterSceneNode();
}

// 0x35a940 _ZN27ModularSkinnedMeshSceneNode22updateAbsolutePositionEb
// The skin mesh (+0x134) is animated with time 1 (IMesh vtable +0x34, onAnimate), then ISceneNode::updateAbsolutePosition runs.
void ModularSkinnedMeshSceneNode::updateAbsolutePosition(bool includeChildren) {
    mesh->onAnimate(1);
    glitch::scene::ISceneNode::updateAbsolutePosition(includeChildren);
}

// 0x35acb4 _ZN27ModularSkinnedMeshSceneNode23prepareSkinForRenderingEv
// Nothing happens without a mesh or without the scene manager video driver. Otherwise every existing mesh buffer has its material
// read and the mesh prepares the buffer for rendering (step 0).
void ModularSkinnedMeshSceneNode::prepareSkinForRendering() {
    PrepareSkinForRendering(*this);
}

// 0x35af00 _ZN27ModularSkinnedMeshSceneNodeC1ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEE
// 0x35af88 (C2, the VTT form) is compiler-generated from this one. The base constructor takes the mesh; the vptr stores and the
// reference count of the virtual base (1 at +0x188) are the compiler's.
ModularSkinnedMeshSceneNode::ModularSkinnedMeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& mesh)
    : BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>(mesh) {}

// 0x35ba4c _ZN27ModularSkinnedMeshSceneNodeD1Ev
// 0x35baa0 (D0, deleting) and 0x35babc (D2, VTT form) are compiler-generated from this one. The original stores the complete
// object vptrs and calls the BaseMeshSceneNode base-object destructor; the host chain is emitted from the declared hierarchy.
ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode() {}
