// Batch g1-game-world-SkinnedMeshSceneNode-f843bf-0: the eight SkinnedMeshSceneNode functions (two methods,
// two constructors and three destructors). Declarations come from dh2/SkinnedMeshSceneNode.hpp.
//
// The vptr and virtual-base stores of the constructors and destructors are emitted by the compiler from the declared hierarchy
// (BaseMeshSceneNode<CSkinnedMeshSceneNode>, SkinnedMeshSceneNodeEx). The deleting destructor (D0) and the VTT forms (C2, D2) are
// compiler-generated.

#include "dh2/SkinnedMeshSceneNode.hpp"

#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

// The base constructor and destructor are explicit specializations defined in g1-game-world-BaseMeshSceneNode-fb9ec3-0.cpp.
template <>
BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::BaseMeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& mesh);
template <>
BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode();

// 0x35a914 SkinnedMeshSceneNode::onRegisterSceneNode()
// The scene manager (node +0x110) is asked to register the +0x180 subobject (its vtable +0x88, registerSkinnedMesh), then the engine
// mesh node registers itself and its result is returned.
int SkinnedMeshSceneNode::onRegisterSceneNode() {
    sceneManager->registerSkinnedMesh(static_cast<void*>(static_cast<SkinnedMeshSceneNodeEx*>(this)));
    return glitch::collada::CMeshSceneNode::onRegisterSceneNode();
}

// 0x35a974 SkinnedMeshSceneNode::updateAbsolutePosition(bool)
// The skin mesh (+0x134) is animated with time 1 (IMesh vtable +0x34, onAnimate), then ISceneNode::updateAbsolutePosition runs.
void SkinnedMeshSceneNode::updateAbsolutePosition(bool includeChildren) {
    mesh->onAnimate(1);
    glitch::scene::ISceneNode::updateAbsolutePosition(includeChildren);
}

// 0x35ad8c SkinnedMeshSceneNode::prepareSkinForRendering()
// Virtual of the +0x180 subobject; the thunk at vtable +0x114 passes the full object. Nothing happens without a mesh or without
// the scene manager video driver. Otherwise every existing mesh buffer has its material read and the mesh prepares the buffer
// for rendering (step 0). The leftover return register is not read by any caller, so the host form is void.
void SkinnedMeshSceneNode::prepareSkinForRendering() {
    PrepareSkinForRendering(*this);
}

// 0x35b0a0 SkinnedMeshSceneNode::SkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&) (C1, complete)
// 0x35b128 (C2, VTT form): compiler-generated from this one. The base constructor takes the mesh; the vptr stores and the
// reference count of the virtual base (1) are the compiler's.
SkinnedMeshSceneNode::SkinnedMeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& mesh)
    : BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>(mesh) {}

// 0x35b860 SkinnedMeshSceneNode::~SkinnedMeshSceneNode() (D1, complete)
// 0x35b8f4 (D0, deleting) and 0x35b910 (D2, VTT form) are compiler-generated from this one. The original stores the vptrs of the three
// parts and calls glitch::collada::CMeshSceneNode::~CMeshSceneNode directly; the host chain is emitted from the declared hierarchy.
SkinnedMeshSceneNode::~SkinnedMeshSceneNode() {}
