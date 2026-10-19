// Batch g1-game-world-BaseMeshSceneNode-fb9ec3-0: render, constructors and destructors of BaseMeshSceneNode<T>
// for T = glitch::collada::CMeshSceneNode, CSkinnedMeshSceneNode and CModularSkinnedMeshSceneNode.
// Declarations come from dh2/BaseMeshSceneNode.hpp, which drops "override" on the dtor and render (see its comment).
//
// The engine nodes are the canonical glitch::collada classes (collada/CMeshSceneNode.hpp): the constructors pass the mesh on with
// node 0, id -1, position 0, the identity rotation and unit scale, and the vptr and virtual-base stores are the compiler's.
//
// Deleting destructors (D0) and the VTT-taking base-object destructor are compiler-generated and have no body here.

#include "dh2/BaseMeshSceneNode.hpp"

#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/collada_scene_accessors.hpp"

namespace {
// The placement every engine mesh node of this family is built with (the stack temporaries of the constructors).
const glitch::core::vector3d<float> kOrigin{0.0f, 0.0f, 0.0f};
const glitch::core::quaternion kIdentityRotation{0.0f, 0.0f, 0.0f, 1.0f};
const glitch::core::vector3d<float> kUnitScale{1.0f, 1.0f, 1.0f};
}  // namespace

// 0x35a9a8 _ZN17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEE6renderEPv
// Calls CMeshSceneNode::render(this, ctx) only when the flag at +0x138 is set. The original returns this in r0, which
// the virtual slot ignores, so the result is void here.
template <>
void BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::render(void* renderContext) {
    if (m_renderEnabled) {
        glitch::collada::CMeshSceneNode::render(renderContext);
    }
}

// 0x35a9b8 _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEE6renderEPv
// partial, no body. The original is "if (+0x17c) CMeshSceneNode::render(this, ctx)". BaseMeshSceneNode<CSkinnedMeshSceneNode>
// cannot be named because glitch::collada::CSkinnedMeshSceneNode is not complete in this tree (see the header comment).

// 0x35a9c8 _ZN17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEE6renderEPv
// partial. The original calls CMeshSceneNode::render(this, ctx) when the flag at +0x17c is set. The stand-in
// CModularSkinnedMeshSceneNode does not derive from CMeshSceneNode, so that call is not bound and this body draws nothing.
template <>
void BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::render(void* renderContext) {
    if (m_renderEnabled) {
        glitch::collada::CMeshSceneNode::render(renderContext);
    }
}

// 0x35a9b8 _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEE6renderEPv
// The original is "if (+0x17c) CMeshSceneNode::render(this, ctx)".
template <>
void BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::render(void* renderContext) {
    if (m_renderEnabled) {
        glitch::collada::CMeshSceneNode::render(renderContext);
    }
}

// 0x35aa00 _ZN17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEED1Ev
// partial. Empty body: the compiler emits the stores the original makes (BaseMeshSceneNode vptr at +0, virtual-base vptr
// at +0x13c, then the call to CMeshSceneNode::~CMeshSceneNode). The stand-in CMeshSceneNode declares no virtual base,
// so the +0x13c store is not checked against the binary.
template <>
BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode() {}

// 0x35b478 _ZN17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEED0Ev
// skipped: compiler-generated deleting destructor. It is the complete destructor above followed by CustomFree(this).
// A delete expression does the same.

// 0x35ae5c _ZN17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEEC2ERKN5boost13intrusive_ptrINS1_5IMeshEEE
// partial. The original calls CModularSkinnedMeshSceneNode(mesh, node=0, id=-1, position=0, rotation=identity,
// scale=1) and then stores 1 in the flag at +0x17c. The stand-in declares no constructor, so the base is
// default-constructed and the mesh is dropped (the stand-in has no member that holds it).
template <>
BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode(
        const boost::intrusive_ptr<glitch::collada::IMesh>& mesh)
    : glitch::collada::CModularSkinnedMeshSceneNode(mesh, nullptr, -1, kOrigin, kIdentityRotation, kUnitScale) {
    m_renderEnabled = true;
}

// 0x35affc _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEEC2ERKN5boost13intrusive_ptrINS1_5IMeshEEE
// CSkinnedMeshSceneNode(mesh, node=0, id=-1, position=0, rotation=identity, scale=1), then the flag at +0x17c is set to 1.
template <>
BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::BaseMeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& mesh)
    : glitch::collada::CSkinnedMeshSceneNode(mesh, nullptr, -1, kOrigin, kIdentityRotation, kUnitScale) {
    m_renderEnabled = true;
}

// 0x35affc _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEEC2ERKN5boost13intrusive_ptrINS1_5IMeshEEE
// partial, no body. The original calls CSkinnedMeshSceneNode(mesh, node=0, id=-1, position=0, rotation=identity, scale=1)
// and stores 1 in the flag at +0x17c. The class is not complete in this tree, and its stand-in in recon/slice_22.hpp has
// no default constructor and takes IMesh* const& and SQuaternion, not the binary's arguments.

// 0x35b19c _ZN17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEEC2ERKN5boost13intrusive_ptrINS1_5IMeshEEE
// partial. The original calls CMeshSceneNode(mesh, node=0, id=-1, position=0, rotation=identity, scale=1) and then
// stores 1 in the flag at +0x138. The stand-in declares no constructor, so the base is default-constructed and the mesh
// is dropped (the stand-in has no member that holds it).
template <>
BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::BaseMeshSceneNode(
        const boost::intrusive_ptr<glitch::collada::IMesh>& mesh)
    : glitch::collada::CMeshSceneNode(mesh, nullptr, -1, kOrigin, kIdentityRotation, kUnitScale) {
    m_renderEnabled = true;
}

// 0x35b668 _ZN17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEED1Ev
// partial. Empty body: the compiler emits the vptr and virtual-base stores from the declared hierarchy, then the call
// to glitch::collada::CMeshSceneNode::~CMeshSceneNode (D2). The original writes only two slots of this object, +0x00 and
// +0x180, and no vptr at +0x184 (checked in the disassembly and the vtable words). Every store through a vtable offset
// lands at +0 or +0x180: the offset word at address point -0x1C is 0 and the vbase word at -0xC is 0x180, for the two
// construction address points off_95DCDC and off_95DE14. +0x00 takes off_95DCDC, then off_95DE14. +0x180 takes the
// BaseMeshSceneNode vtable group +0x128 (0x95DC60), then off_95DDE8 and off_95DF20 (the +0x128 points of the CModular-in-
// Base and CSkinned-in-Base construction groups). The +0x184 vptr named by unk_184 in ModularSkinnedMeshSceneNode.hpp is
// stored by the derived ModularSkinnedMeshSceneNode ctor (0x35af00, its own batch), not by this dtor. The stand-in
// CModularSkinnedMeshSceneNode declares no virtual base, so these stores are not checked on the host.
template <>
BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode() {}

// 0x35b750 _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEED1Ev
// Empty body: the compiler emits the vtable and virtual-base stores and the call to the base destructor.
template <>
BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode() {}

// 0x35b714 _ZN17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEED0Ev
// skipped: compiler-generated deleting destructor. It is the complete destructor 0x35b668 followed by CustomFree(this).
// A delete expression does the same.

// 0x35b750 _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEED1Ev
// partial, no body. The original stores the vtable and virtual-base pointers, then calls
// CMeshSceneNode::~CMeshSceneNode. The class is not complete in this tree (see the header comment).

// 0x35b9bc _ZN17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEED2Ev
// partial, no body of its own. This is the base-object destructor that takes the VTT (a2). The compiler emits it from the
// C++ destructor above. Its VTT-indexed stores (a2[0..2] and a2[12..17]) are not checked, for the same reason as 0x35b668.

// 0x35bb18 _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEED0Ev
// skipped: compiler-generated deleting destructor. It is the complete destructor 0x35b750 followed by CustomFree(this).
// A delete expression does the same.
