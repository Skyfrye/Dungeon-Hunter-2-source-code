// Batch g1-game-world-pack2-adf7ed-0: MeshSceneNode, the PFG path-graph classes (PFGInnerNode, PFGInnerEdge,
// PFGInnerDirectEdge, PFGInnerGraph, PFGOuterGraph).
//
// Each class has up to three destructor entries in the binary: the complete destructor (D1), the deleting destructor (D0)
// and, for MeshSceneNode, the base-object destructor that takes the VTT (D2). One C++ destructor is defined per class.
// Its comment lists every address that the C++ definition stands for, and the ledger has one row per address.
// Deleting destructors are compiler-generated (a delete expression emits them) and have no body here.
//
// The vtable and virtual-base pointer stores are emitted by the compiler from the declared hierarchy. They are not
// written here.

#include "dh2/MeshSceneNode.hpp"

#include "glitch-scene-collada-gui/collada/IMesh.hpp"

#include "dh2/PFGInnerDirectEdge.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerGraph.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/PFGOuterGraph.hpp"

// 0x35aad8 _ZN13MeshSceneNodeD1Ev
// partial. Empty body. The compiler emits the stores the original makes: the MeshSceneNode vptr at +0x00, the virtual-base
// vptr at +0x13c, the vptr of the second virtual-base subobject through the vbase offset, and then the call to the base
// destructor chain. The original calls CMeshSceneNode::~CMeshSceneNode directly. BaseMeshSceneNode's destructor is an empty
// body that stores its own vptr, so the chain here reaches the same CMeshSceneNode destructor. The stand-in CMeshSceneNode
// declares no virtual base, so the vbase stores are not checked against the binary.
MeshSceneNode::~MeshSceneNode() {}

// 0x35ab40 _ZN13MeshSceneNodeD0Ev
// skipped: compiler-generated deleting destructor. It is the complete destructor 0x35aad8 followed by CustomFree(this).
// A delete expression does the same.

// 0x35ab5c _ZN13MeshSceneNodeD2Ev
// partial, no body of its own. This is the base-object destructor that takes the VTT (a2). The compiler emits it from
// ~MeshSceneNode above. Its VTT-indexed stores (a2[0..2] and a2[13..14], and the second group) are not checked, for the
// reason given at 0x35aad8.

// 0x35b240 _ZN13MeshSceneNodeC1ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEE
// partial. The original stores 1 at +0x140, then runs the base constructor with the VTT and the mesh, then stores the
// final vptrs. This version runs the base constructor with the mesh first and then sets unk_140. The base constructor does
// not read +0x140, so the order is not observable. The mesh is dropped in the base constructor: the CMeshSceneNode stand-in
// has no constructor that takes it, and BaseMeshSceneNode<CMeshSceneNode>::BaseMeshSceneNode (0x35b19c, in
// g1-game-world-BaseMeshSceneNode-fb9ec3-0.cpp) default-constructs it. So this constructor does not hold the mesh either.
MeshSceneNode::MeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& mesh)
    : BaseMeshSceneNode<glitch::collada::CMeshSceneNode>(mesh) {
    unk_140 = 1;  // +0x140
}

// 0x35b2c0 _ZN13MeshSceneNodeC2ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEE
// partial, no body of its own. This is the base-object constructor that takes the VTT (a2) and the mesh (a3). It stores
// the vptrs from VTT entries and then constructs BaseMeshSceneNode with the VTT offset. The compiler emits it from the
// complete constructor 0x35b240, which carries the same partial mesh handling.

// 0x5241ac _ZN18PFGInnerDirectEdgeD1Ev
// reconstructed. Empty body, as in the binary. The PFGInnerEdge base destructor is empty too.
PFGInnerDirectEdge::~PFGInnerDirectEdge() {}

// 0x524348 _ZN18PFGInnerDirectEdgeD0Ev
// skipped: compiler-generated deleting destructor. It stores off_96C6F0 (the PFGInnerEdge vtable, the same store as 0x51c114)
// and calls CustomFree(this). A delete expression does the same.

// 0x5241b0 _ZNK18PFGInnerDirectEdge9GetSourceEv
// Returns the stored source point (+0x18).
const Point3D<float>* PFGInnerDirectEdge::GetSource() const {
    return &m_source;
}

// 0x5241b8 _ZNK18PFGInnerDirectEdge14GetDestinationEv
// Returns the stored destination point (+0x24).
const Point3D<float>* PFGInnerDirectEdge::GetDestination() const {
    return &m_destination;
}

// 0x51b840 _ZN12PFGInnerEdgeD1Ev
// reconstructed. Empty body, as in the binary. The Edge base destructor is empty too.
PFGInnerEdge::~PFGInnerEdge() {}

// 0x51c114 _ZN12PFGInnerEdgeD0Ev
// skipped: compiler-generated deleting destructor. It stores off_96C6F0 and calls CustomFree(this). A delete expression does
// the same.

// 0x51b844 _ZNK12PFGInnerEdge9GetSourceEv
// Calls the virtual getFromNode() const (vtable slot 1) and returns the from node's position (+0x08 of the node). The
// original does no null test before the +8 adjustment, and this does none either: a null from node is undefined here.
const Point3D<float>* PFGInnerEdge::GetSource() const {
    return &getFromNode()->m_position;
}

// 0x51b85c _ZNK12PFGInnerEdge14GetDestinationEv
// Calls the virtual getToNode() const (vtable slot 3) and returns the to node's position (+0x08 of the node). The original
// does no null test, and this does none either.
const Point3D<float>* PFGInnerEdge::GetDestination() const {
    return &getToNode()->m_position;
}

// 0x523480 _ZN13PFGInnerGraphD1Ev
// reconstructed. Empty body. The compiler emits the vptr store (off_96C7E0) and the call to the GraphSparse<PFGInnerEdge>
// destructor, which calls clear() (0x52328c, defined by the game-app sfc batch g1-game-app-sfc-57f3bb-1).
PFGInnerGraph::~PFGInnerGraph() {}

// 0x5234b4 _ZN13PFGInnerGraphD0Ev
// skipped: compiler-generated deleting destructor. It is the complete destructor 0x523480 followed by CustomFree(this).
// A delete expression does the same.

// 0x52ddd0 _ZNK13PFGInnerGraph15DBG_GetMemUsageEv
// reconstructed. The original walks the node map in key order (an in-order walk of the red-black tree). For each node it
// adds 24 bytes per outgoing edge plus 44 bytes for the node, using the original 32-bit sizes of PFGInnerEdge (0x18) and
// of the PFGInnerNode part of _InNode (0x2c). The result is a debug estimate, and it is 0 for an empty graph.
int PFGInnerGraph::DBG_GetMemUsage() const {
    int result = 0;
    for (const auto& entry : m_nodes) {
        const _InNode* node = entry.second;
        result += 24 * static_cast<int>(node->m_edges.size()) + 44;
    }
    return result;
}

// 0x51b83c _ZN12PFGInnerNodeD1Ev
// reconstructed. Empty body, as in the binary. The Node base destructor is empty too.
PFGInnerNode::~PFGInnerNode() {}

// 0x51c17c _ZN12PFGInnerNodeD0Ev
// skipped: compiler-generated deleting destructor. It stores the vtable pointer off_96C778 and calls CustomFree(this). A
// delete expression does the same.

// 0x523164 _ZN13PFGOuterGraphD1Ev
// reconstructed. Empty body, as in PFGInnerGraph: the compiler emits the vptr store (off_96C7C0) and the call to the
// GraphSparse<PFGOuterEdge> destructor, which calls clear().
PFGOuterGraph::~PFGOuterGraph() {}

// 0x523198 _ZN13PFGOuterGraphD0Ev
// skipped: compiler-generated deleting destructor. It is the complete destructor 0x523164 followed by CustomFree(this).
// A delete expression does the same.
