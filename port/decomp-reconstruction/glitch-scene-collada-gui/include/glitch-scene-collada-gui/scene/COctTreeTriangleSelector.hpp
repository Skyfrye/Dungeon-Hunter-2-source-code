// glitch::scene::COctTreeTriangleSelector: CTriangleSelector with the triangles sorted into an octree.
// Canonical header of the engine unification wave (u1-scene); it replaces tb/glitch_scene_COctTreeTriangleSelector.hpp,
// whose CTriangleSelector pad stand-in is gone (the real base is scene/CTriangleSelector.hpp).
//
// Layout (original 32-bit offsets, constructor 0x588654 and destructor 0x586620):
//   +0x00 .. +0xab CTriangleSelector (the result buffer words +0xa0 +0xa4 +0xa8 belong to the base)
//   +0xac SOctTreeNode* root (zeroed, then built by the constructor when the base holds triangles)
//   +0xb0 int node count (incremented by constructOctTree)
//   +0xb4 int minimalPolysPerNode (the constructor argument): a node splits only above this many triangles
// The vtable (tools/decomp_vtable.py glitch::scene::COctTreeTriangleSelector, 36 bytes) is the base's with
// +0x14 and +0x18 (getTriangles for a box and for a line) replaced.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/scene/CTriangleSelector.hpp"

namespace glitch::scene {

class COctTreeTriangleSelector : public CTriangleSelector {
public:
    // One octree node. Size 0x44 in the original: triangle vector, 8 children, box.
    struct SOctTreeNode {
        core::svector<core::triangle3d<float>> triangles;  // +0x00 (begin, end, capacity words in the original)
        SOctTreeNode* children[8] = {};                  // +0x0c .. +0x2b, child k at +0x0c + 4k
        core::aabbox3d<float> box{};                     // +0x2c .. +0x43 (min +0x2c, max +0x38)

        // 0x5865d0: deletes the children recursively, then frees the triangle buffer.
        ~SOctTreeNode();
    };

    // 0x588654 (C2) and 0x5887ec (C1): builds the base from the mesh, then the tree when the base holds triangles.
    COctTreeTriangleSelector(const IMesh* mesh, const ISceneNode* node, int minimalPolysPerNode, bool bakeNodeTransform);

    // 0x586620 (D1), 0x5866ac (D2), 0x586690 (D0, skipped): deletes the tree, then runs ~CTriangleSelector.
    ~COctTreeTriangleSelector() override;

    // +0x14, 0x587694: Setup(transform), Setup(box), then the walk from the root.
    void getTriangles(core::triangle3d<float>* triangles, int arraySize, int& outTriangleCount,
                      const core::aabbox3d<float>& box, const core::CMatrix4<float>* transform) const override;
    // +0x18, 0x588d8c: the same for a line segment.
    void getTriangles(core::triangle3d<float>* triangles, int arraySize, int& outTriangleCount,
                      const core::line3d<float>& line, const core::CMatrix4<float>* transform) const override;
    using CTriangleSelector::getTriangles;

    // 0x5870fc: tests the node box against the stored query box and adds the node and its children's hits.
    void getTrianglesFromOctTreeBox(SOctTreeNode* node) const;
    // 0x5872a4: the same for the stored query segment.
    void getTrianglesFromOctTreeLine(SOctTreeNode* node) const;
    // 0x587e60: splits `node` into its eight octants and recurses while a child holds more than minimalPolysPerNode.
    void constructOctTree(SOctTreeNode* node);

    SOctTreeNode* root = nullptr;           // +0xac
    std::int32_t nodeCount = 0;             // +0xb0
    std::int32_t minimalPolysPerNode = 0;   // +0xb4
};

}  // namespace glitch::scene
