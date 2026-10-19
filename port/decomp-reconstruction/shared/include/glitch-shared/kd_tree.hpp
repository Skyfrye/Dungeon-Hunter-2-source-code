// glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float>>> layout, and the
// glitch::lessThanPlane / glitch::distanceKdTree helpers it calls. ARM, 32-bit offsets, kept as comments
// only; no pointer arithmetic on them.
//
// Shared header: used by glitch-core-io (findFarthestElemInternal 0x5a24f8, addElemInternal 0x5a3120,
// removeElemInternal 0x5a44b4, findKNearestElemsInternal 0x5a4e24, findKNearest 0x5a5030) and by
// glitch-video (kdTreeClustering 0x5a6568 calls addElemInternal, removeElemInternal and findKNearest).
//
// Element (std::pair<unsigned int, aabbox3d<float>>, 28 bytes; std::vector stride 28, the count is
// (end - begin) / 28, evidence: removeElemInternal and findKNearestElemsInternal):
//   +0x00  id (unsigned int)
//   +0x04  MinEdge.X, +0x08 MinEdge.Y, +0x0c MinEdge.Z   (aabbox3d<float>, six floats)
//   +0x10  MaxEdge.X, +0x14 MaxEdge.Y, +0x18 MaxEdge.Z
//   Evidence: lessThanPlane (0x5a20d4) and distanceKdTree (0x5a2160, 0x5a2268, 0x5a2370) take the centre
//   of an element as (a[1] + a[4]) * 0.5, (a[2] + a[5]) * 0.5, (a[3] + a[6]) * 0.5 (a is float*, so a[0]
//   is the id word). A box passed as aabbox3d<float> uses the same six floats with no id word
//   (distanceKdTree 0x5a2160 reads a2[0..5]).
//
// Node (SKdNode, a std::vector of elements plus a split plane; construct 0x5a2dd4 zeroes +0x00, +0x04,
// +0x08, +0x10, +0x14 and leaves +0x0c and +0x18 for the creator; addElemInternal 0x5a3120 writes them):
//   +0x00  elements: vector begin          (findFarthest 0x5a24f8, removeElemInternal 0x5a44b4)
//   +0x04  elements: vector end            (addElemInternal pushes at +0x04 and checks +0x08)
//   +0x08  elements: end of storage
//   +0x0c  split plane (float)             (lessThanPlane(elem, *(float*)(node+0x0c), axis))
//   +0x10  lower child (lessThanPlane true)   (addElemInternal creates it when null, from +0x10)
//   +0x14  upper child (lessThanPlane false)  (addElemInternal creates it when null, from +0x14)
//   +0x18  split axis (char, 0..2)          (lessThanPlane argument; the child axis is (axis + 1) % 3)
//   Node size is not recovered: the pool's requested size is set in a constructor not in the port.
//   The C++ model below is not byte-compatible with the original and no code relies on sizeof(SKdNode).
//
// Tree (CKdTree, this):
//   +0x00  root node (SKdNode, the tree object itself). kdTreeClustering 0x5a6568 passes &p as both the
//          tree and the root node, and findKNearest 0x5a5030 passes its this as the node argument.
//   +0x1c  boost::object_pool<SKdNode> (addElemInternal 0x5a3120 passes this+0x1c to object_pool::construct
//          0x5a2dd4; removeElemInternal does not use it). Its size is not recovered; the next member is at +0x38.
//   +0x38  query box (aabbox3d<float>, 24 bytes): findFarthestElemInternal 0x5a24f8 passes this+0x38 as
//          the box to distanceKdTree.
//   +0x50  element count (int). removeElemInternal 0x5a44b4 subtracts the number of removed elements.
//          addElemInternal does not change it (the caller does).
//
// The pool is modelled by an owning vector; this is a layout and semantics model, not the boost pool.
#pragma once

#include <cstddef>
#include <cstdint>
#include <memory>
#include <utility>
#include <vector>

#include "glitch-shared/glitch_core.hpp"

namespace glitch {

using KdElement = std::pair<unsigned int, glitch::core::aabbox3d<float>>;

// Centre component of a box or element: (min + max) * 0.5 along axis (0 = X, 1 = Y, 2 = Z).
// The sums are float, as in the original (lessThanPlane 0x5a20d4 and distanceKdTree 0x5a2160).
inline float kdCentreComponent(const glitch::core::aabbox3d<float>& box, int axis) {
    const float min = axis == 0 ? box.MinEdge.X : (axis == 1 ? box.MinEdge.Y : box.MinEdge.Z);
    const float max = axis == 0 ? box.MaxEdge.X : (axis == 1 ? box.MaxEdge.Y : box.MaxEdge.Z);
    return (min + max) * 0.5f;
}

inline float kdCentreComponent(const KdElement& e, int axis) {
    return kdCentreComponent(e.second, axis);
}

// glitch::lessThanPlane(pair const&, float plane, char axis) at 0x5a20d4: centre[axis] < plane.
inline bool lessThanPlane(const KdElement& e, float plane, char axis) {
    return kdCentreComponent(e, axis) < plane;
}

// glitch::distanceKdTree(pair const&, aabbox3d const&) at 0x5a2160: squared distance of the two centres.
inline float distanceKdTree(const KdElement& e, const glitch::core::aabbox3d<float>& box) {
    const float dx = kdCentreComponent(e, 0) - kdCentreComponent(box, 0);
    const float dy = kdCentreComponent(e, 1) - kdCentreComponent(box, 1);
    const float dz = kdCentreComponent(e, 2) - kdCentreComponent(box, 2);
    return ((dx * dx) + (dy * dy)) + (dz * dz);
}

// glitch::distanceKdTree(pair const&, pair const&) at 0x5a2268: squared distance of the two centres.
inline float distanceKdTree(const KdElement& a, const KdElement& b) {
    const float dx = kdCentreComponent(a, 0) - kdCentreComponent(b, 0);
    const float dy = kdCentreComponent(a, 1) - kdCentreComponent(b, 1);
    const float dz = kdCentreComponent(a, 2) - kdCentreComponent(b, 2);
    return ((dx * dx) + (dy * dy)) + (dz * dz);
}

// glitch::distanceKdTree(pair const&, float plane, char axis) at 0x5a2370: (centre[axis] - plane)^2.
inline float distanceKdTree(const KdElement& e, float plane, char axis) {
    const float d = kdCentreComponent(e, axis) - plane;
    return d * d;
}

namespace core {

template <typename T>
class CKdTree {
public:
    // SKdNode (see the layout comment above).
    struct SKdNode {
        std::vector<T> elements;   // +0x00 begin, +0x04 end, +0x08 end of storage
        float plane = 0.0f;        // +0x0c
        SKdNode* lower = nullptr;  // +0x10
        SKdNode* upper = nullptr;  // +0x14
        std::uint8_t axis = 0;     // +0x18
    };

    SKdNode root;                                       // +0x00 (the tree is the root node)
    std::vector<std::unique_ptr<SKdNode>> nodePool;     // +0x1c model of boost::object_pool<SKdNode>
    glitch::core::aabbox3d<float> queryBox{};           // +0x38
    int elementCount = 0;                               // +0x50
};

}  // namespace core

}  // namespace glitch
