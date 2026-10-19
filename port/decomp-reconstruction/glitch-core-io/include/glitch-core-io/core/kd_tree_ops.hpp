// glitch::core::CKdTree<std::pair<unsigned int, aabbox3d<float>>> member bodies, written as free functions
// over the tree. kd_tree.hpp holds the layout only and declares no members, so the tree is passed explicitly.
// Offsets are the ARM layout recorded in kd_tree.hpp; they are comments only.
#pragma once

#include <algorithm>
#include <vector>
#include <cstddef>
#include <cstdint>
#include <memory>

#include "glitch-core-io/core/kd_tree.hpp"

namespace glitch::core::detail {

using KdTree = CKdTree<KdElement>;
using KdNode = KdTree::SKdNode;

// Box edges by axis (0 = X, 1 = Y, 2 = Z), the same order as kdCentreComponent.
inline float& kdMinEdge(aabbox3d<float>& box, int axis) {
    return axis == 0 ? box.MinEdge.X : (axis == 1 ? box.MinEdge.Y : box.MinEdge.Z);
}

inline float& kdMaxEdge(aabbox3d<float>& box, int axis) {
    return axis == 0 ? box.MaxEdge.X : (axis == 1 ? box.MaxEdge.Y : box.MaxEdge.Z);
}

// Child node from the tree's pool (boost::object_pool::construct at this+0x1c, 0x5a2dd4). The creator
// writes the split plane (+0x0c) as the box centre on the child's axis, and the axis byte (+0x18).
inline KdNode* kdNewChildNode(KdTree& tree, const aabbox3d<float>& box, std::uint8_t childAxis) {
    tree.nodePool.push_back(std::make_unique<KdNode>());
    KdNode* child = tree.nodePool.back().get();
    child->plane = kdCentreComponent(box, childAxis);
    child->axis = childAxis;
    return child;
}

// Element equality used by the leaf erase (SEqPredicate, the __find_if listing at 0x5a3ef0): the id and the
// six box floats, each compared with exact float equality.
inline bool kdSameElement(const KdElement& a, const KdElement& b) {
    return a.first == b.first && a.second.MinEdge.X == b.second.MinEdge.X &&
           a.second.MinEdge.Y == b.second.MinEdge.Y && a.second.MinEdge.Z == b.second.MinEdge.Z &&
           a.second.MaxEdge.X == b.second.MaxEdge.X && a.second.MaxEdge.Y == b.second.MaxEdge.Y &&
           a.second.MaxEdge.Z == b.second.MaxEdge.Z;
}

// 0x5a3120 _ZN6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE15addElemInternalERKS5_PNS6_7SKdNodeEjRKS4_
// A nonzero depth descends: the side is chosen by lessThanPlane on the node's plane and axis, the child is
// created when missing (plane = box centre on axis + 1 mod 3), and the box passed down is split at the
// node's plane (max edge on the axis for the lower child, min edge for the upper). The recursion uses
// depth - 1. A zero depth appends the element to the node's elements.
inline void addElemInternal(KdTree& tree, const KdElement& elem, KdNode* node, unsigned int depth,
                            const aabbox3d<float>& box) {
    if (depth == 0) {
        node->elements.push_back(elem);
        return;
    }
    const int axis = node->axis;                                    // +0x18
    const auto childAxis = static_cast<std::uint8_t>((axis + 1) % 3);
    aabbox3d<float> childBox = box;
    if (glitch::lessThanPlane(elem, node->plane, static_cast<char>(axis))) {  // +0x0c, +0x18
        if (node->lower == nullptr) {                                // +0x10
            node->lower = kdNewChildNode(tree, box, childAxis);
        }
        kdMaxEdge(childBox, axis) = node->plane;
        addElemInternal(tree, elem, node->lower, depth - 1, childBox);
    } else {
        if (node->upper == nullptr) {                                // +0x14
            node->upper = kdNewChildNode(tree, box, childAxis);
        }
        kdMinEdge(childBox, axis) = node->plane;
        addElemInternal(tree, elem, node->upper, depth - 1, childBox);
    }
}

// 0x5a44b4 _ZN6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE18removeElemInternalERKS5_PNS6_7SKdNodeE
// Descends by the same lessThanPlane rule until the chosen child is missing, then erases the matching
// elements of that node and subtracts the number removed from the element count (+0x50).
// Returns minus the number of elements left in that node (the listing's 1227133513 * (size / 28) is -count).
inline int removeElemInternal(KdTree& tree, const KdElement& elem, KdNode* node) {
    KdNode* current = node;
    for (;;) {
        KdNode* child = glitch::lessThanPlane(elem, current->plane, static_cast<char>(current->axis))
                            ? current->lower
                            : current->upper;
        if (child == nullptr) break;
        current = child;
    }
    auto& elements = current->elements;
    const std::size_t before = elements.size();
    elements.erase(std::remove_if(elements.begin(), elements.end(),
                                  [&elem](const KdElement& e) { return kdSameElement(e, elem); }),
                   elements.end());
    tree.elementCount -= static_cast<int>(before - elements.size());  // +0x50
    return -static_cast<int>(elements.size());
}

// 0x5a24f8 _ZNK6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE24findFarthestElemInternalERPKS5_RfPKNS6_7SKdNodeE
// Visits the subtree: a node with children recurses into the lower then the upper child; a node with only an
// upper child recurses into it and keeps no elements of its own; a childless node is scanned. Each element's
// distance to the query box (tree +0x38) is compared with the best so far; a larger one replaces it.
inline void findFarthestElemInternal(const KdTree& tree, const KdElement*& farthest, float& bestDistance,
                                     const KdNode* node) {
    if (node == nullptr) return;
    if (node->lower != nullptr) {
        findFarthestElemInternal(tree, farthest, bestDistance, node->lower);
        if (node->upper != nullptr) findFarthestElemInternal(tree, farthest, bestDistance, node->upper);
        return;
    }
    if (node->upper != nullptr) {
        findFarthestElemInternal(tree, farthest, bestDistance, node->upper);
        return;
    }
    for (const KdElement& e : node->elements) {
        const float d = glitch::distanceKdTree(e, tree.queryBox);
        if (d > bestDistance) {
            bestDistance = d;
            farthest = &e;
        }
    }
}


// CKdTree<...>::SKdDistance: the heap entry of findKNearest, 8 bytes in the original (distance at +0x00, the element
// pointer at +0x04); the std::less specialisation the priority_queue uses compares the distance only.
struct SKdDistance {
    float distance = 0.0f;
    const KdElement* element = nullptr;
    bool operator<(const SKdDistance& other) const { return distance < other.distance; }
};

// 0x5a4e24 _ZNK6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE25findKNearestElemsInternalERjRKS5_RSt14priority_queue
// INS6_11SKdDistanceESt6vectorISB_SaISB_EESt4lessISB_EEPKNS6_7SKdNodeERf
// `remaining` is the number of slots still free in the heap (K minus its size), `maxDistance` the largest distance
// held. A node with a child visits the child on the query's side first; the other side is visited only while the heap
// is not full or the squared distance to the split plane is below maxDistance. A leaf offers each element: while
// slots remain it is pushed; once the heap is full an element closer than the top replaces the top.
inline void findKNearestElemsInternal(const KdTree& tree, unsigned int& remaining, const KdElement& query,
                                      std::vector<SKdDistance>& heap, const KdNode* node, float& maxDistance) {
    if (node == nullptr) return;
    if (node->lower != nullptr || node->upper != nullptr) {  // +0x10, +0x14
        const int axis = node->axis;                         // +0x18
        const bool lowerSide = glitch::lessThanPlane(query, node->plane, static_cast<char>(axis));
        const KdNode* nearChild = lowerSide ? node->lower : node->upper;
        const KdNode* farChild = lowerSide ? node->upper : node->lower;
        findKNearestElemsInternal(tree, remaining, query, heap, nearChild, maxDistance);
        const float planeDistance = glitch::distanceKdTree(query, node->plane, static_cast<char>(axis));
        if (remaining != 0 || planeDistance < maxDistance) {
            findKNearestElemsInternal(tree, remaining, query, heap, farChild, maxDistance);
        }
        return;
    }
    for (const KdElement& e : node->elements) {
        SKdDistance entry;
        entry.distance = glitch::distanceKdTree(query, e);
        entry.element = &e;
        if (remaining == 0) {
            // The heap is full: only an element closer than the current farthest (the heap top) gets in.
            if (!(entry.distance < heap.front().distance)) continue;
            std::pop_heap(heap.begin(), heap.end());
            // The original reads the top of the heap storage again after the pop_back, which for a one-slot heap is
            // the stale first slot (its begin pointer is unchanged), so the same storage word is read here.
            heap.pop_back();
            maxDistance = heap.data()->distance;
            ++remaining;
        }
        if (maxDistance < entry.distance) maxDistance = entry.distance;
        heap.push_back(entry);
        std::push_heap(heap.begin(), heap.end());
        --remaining;
    }
}

// 0x5a5030 _ZNK6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE12findKNearestEjRKS5_RSt6vectorIS5_NS0_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEE
// The k nearest elements to `query`, appended to `out` farthest first (the heap is drained from the top).
template <class Out>
inline void findKNearest(const KdTree& tree, unsigned int k, const KdElement& query, Out& out) {
    unsigned int remaining = k;
    float maxDistance = 0.0f;
    std::vector<SKdDistance> heap;
    findKNearestElemsInternal(tree, remaining, query, heap, &tree.root, maxDistance);
    while (!heap.empty()) {
        out.push_back(*heap.front().element);
        std::pop_heap(heap.begin(), heap.end());
        heap.pop_back();
    }
}

}  // namespace glitch::core::detail
