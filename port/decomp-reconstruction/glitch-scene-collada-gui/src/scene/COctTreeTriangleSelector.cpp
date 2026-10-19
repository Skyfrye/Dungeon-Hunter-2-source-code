// Bodies of glitch::scene::COctTreeTriangleSelector (canonical class: scene/COctTreeTriangleSelector.hpp). This file replaces
// src/tb_scene-collada-gui-glitch_scene_COctTreeTriangleSelector-0.cpp and the stand-in bodies of recon/slice_05.cpp. The base
// is the real CTriangleSelector now (the earlier header modelled it as a pad), so the constructor, the destructor and the line
// query are reconstructed.
#include "glitch-scene-collada-gui/scene/COctTreeTriangleSelector.hpp"

#include <cstdio>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"

namespace glitch::scene {

namespace {

// The original's epsilon tests are "v + 0.000001" and "v - 0.000001" computed in double and stored as float.
float widenUp(float v) { return static_cast<float>(v + 0.000001); }
float widenDown(float v) { return static_cast<float>(v - 0.000001); }

// Child-box edge on one axis: the smaller (or larger) of the box centre and the corner coordinate.
float lowerOf(float center, float corner) { return corner < center ? corner : center; }
float upperOf(float center, float corner) { return center < corner ? corner : center; }

// The box a new node is created with: (-1,-1,-1) to (1,1,1), as the original's allocation code sets it.
void setUnitBox(core::aabbox3d<float>& b) {
    b.MinEdge = core::vector3d<float>{-1.0f, -1.0f, -1.0f};
    b.MaxEdge = core::vector3d<float>{1.0f, 1.0f, 1.0f};
}

// The overlap test of the node box against the query box that the two tree walks start with.
bool nodeOverlapsQuery(const COctTreeTriangleSelector::SOctTreeNode& node, const core::aabbox3d<float>& query) {
    return node.box.MinEdge.X <= query.MaxEdge.X && node.box.MinEdge.Y <= query.MaxEdge.Y &&
           node.box.MinEdge.Z <= query.MaxEdge.Z && node.box.MaxEdge.X >= query.MinEdge.X &&
           node.box.MaxEdge.Y >= query.MinEdge.Y && node.box.MaxEdge.Z >= query.MinEdge.Z;
}

}  // namespace

// 0x5865d0 _ZN6glitch5scene24COctTreeTriangleSelector12SOctTreeNodeD1Ev
// Deletes the eight children recursively, then frees the triangle buffer (the vector member).
COctTreeTriangleSelector::SOctTreeNode::~SOctTreeNode() {
    for (SOctTreeNode* child : children) {
        delete child;
    }
}

// 0x588654 _ZN6glitch5scene24COctTreeTriangleSelectorC2EPKNS0_5IMeshEPKNS0_10ISceneNodeEib (base object)
// 0x5887ec _ZN6glitch5scene24COctTreeTriangleSelectorC1EPKNS0_5IMeshEPKNS0_10ISceneNodeEib (complete object)
// Builds the CTriangleSelector base from the mesh (a use is held on the mesh for the call), then, when the base holds
// triangles, a root node with a copy of them, constructOctTree on the root, and logs the build time, node count and polygon
// count.
COctTreeTriangleSelector::COctTreeTriangleSelector(const IMesh* mesh, const ISceneNode* sceneNode, int minimalPolys,
                                                   bool bake)
    : CTriangleSelector(boost::intrusive_ptr<const IMesh>(mesh, true), sceneNode, bake), minimalPolysPerNode(minimalPolys) {
    if (!triangles.empty()) {
        const std::uint32_t started = os::Timer::getRealTime();
        root = new SOctTreeNode();
        setUnitBox(root->box);
        root->triangles = triangles;
        constructOctTree(root);
        const std::uint32_t finished = os::Timer::getRealTime();
        char text[256];
        std::snprintf(text, sizeof text, "Needed %ums to create OctTreeTriangleSelector.(%d nodes, %u polys)",
                      finished - started, nodeCount, static_cast<unsigned>(triangles.size()));
        os::Printer::log(text, os::ELL_INFORMATION);
    }
}

// 0x586620 _ZN6glitch5scene24COctTreeTriangleSelectorD1Ev
// 0x5866ac _ZN6glitch5scene24COctTreeTriangleSelectorD2Ev
// 0x586690 _ZN6glitch5scene24COctTreeTriangleSelectorD0Ev (skipped)
// Deletes the tree (children recursively), then the base destructor frees the triangle vector.
COctTreeTriangleSelector::~COctTreeTriangleSelector() {
    delete root;
}

// 0x5870fc _ZNK6glitch5scene24COctTreeTriangleSelector26getTrianglesFromOctTreeBoxEPNS1_12SOctTreeNodeE
// If the node box overlaps the query box (boundingBox, +0x44), its triangles go through TestWithBox; while the result buffer is
// not full the children are visited. The pseudocode returns a float that is a register leftover; void here.
void COctTreeTriangleSelector::getTrianglesFromOctTreeBox(SOctTreeNode* node) const {
    if (!nodeOverlapsQuery(*node, boundingBox)) {
        return;
    }
    TestWithBox(node->triangles);
    if (resultCount != resultCapacity) {
        for (SOctTreeNode* child : node->children) {
            if (child != nullptr) {
                getTrianglesFromOctTreeBox(child);
            }
        }
    }
}

// 0x5872a4 _ZNK6glitch5scene24COctTreeTriangleSelector26getTrianglesFromOctTreeLineEPNS1_12SOctTreeNodeE
// The same walk for the stored segment: the node box must overlap the segment's box and the segment must cross the node box
// (aabbox3d::intersectsWithSegment); then TestWithLine on the node's triangles and the children while the buffer is not full.
void COctTreeTriangleSelector::getTrianglesFromOctTreeLine(SOctTreeNode* node) const {
    if (!nodeOverlapsQuery(*node, boundingBox)) {
        return;
    }
    float tMin = 0.0f;
    float tMax = 0.0f;
    if (!node->box.intersectsWithSegment(segment, tMin, tMax)) {
        return;
    }
    TestWithLine(node->triangles);
    if (resultCount != resultCapacity) {
        for (SOctTreeNode* child : node->children) {
            if (child != nullptr) {
                getTrianglesFromOctTreeLine(child);
            }
        }
    }
}

// 0x587694 _ZNK6glitch5scene24COctTreeTriangleSelector12getTrianglesEPNS_4core10triangle3dIfEEiRiRKNS2_8aabbox3dIfEEPKNS2_8CMatrix4IfEE
void COctTreeTriangleSelector::getTriangles(core::triangle3d<float>* out, int arraySize, int& outTriangleCount,
                                            const core::aabbox3d<float>& box, const core::CMatrix4<float>* transformArg) const {
    resultCapacity = static_cast<std::uint32_t>(arraySize);
    resultCount = 0;
    resultTriangles = out;
    Setup(transformArg);
    Setup(box);
    if (root != nullptr) {
        getTrianglesFromOctTreeBox(root);
    }
    outTriangleCount = static_cast<int>(resultCount);
}

// 0x588d8c _ZNK6glitch5scene24COctTreeTriangleSelector12getTrianglesEPNS_4core10triangle3dIfEEiRiRKNS2_6line3dIfEEPKNS2_8CMatrix4IfEE
void COctTreeTriangleSelector::getTriangles(core::triangle3d<float>* out, int arraySize, int& outTriangleCount,
                                            const core::line3d<float>& line, const core::CMatrix4<float>* transformArg) const {
    resultCapacity = static_cast<std::uint32_t>(arraySize);
    resultCount = 0;
    resultTriangles = out;
    Setup(transformArg);
    Setup(line);
    if (root != nullptr) {
        getTrianglesFromOctTreeLine(root);
    }
    outTriangleCount = static_cast<int>(resultCount);
}

// 0x587e60 _ZN6glitch5scene24COctTreeTriangleSelector16constructOctTreeEPNS1_12SOctTreeNodeE
// Known deviation: with an empty triangle list the original reads *begin for the box before testing the count; this leaves
// the box as it is in that case. constructOctTree is only called on non-empty nodes (the root from the constructor, children
// from the loop below).
void COctTreeTriangleSelector::constructOctTree(SOctTreeNode* node) {
    ++nodeCount;

    core::svector<core::triangle3d<float>>& tris = node->triangles;
    core::aabbox3d<float>& box = node->box;

    // Node box: min and max over every corner of every triangle (strict compares per axis).
    if (!tris.empty()) {
        box.MinEdge = tris.front().A;
        box.MaxEdge = tris.front().A;
        for (const core::triangle3d<float>& tri : tris) {
            box.addInternalPoint(tri.A);
            box.addInternalPoint(tri.B);
            box.addInternalPoint(tri.C);
        }
    }

    const float centerX = (box.MinEdge.X + box.MaxEdge.X) * 0.5f;
    const float centerY = (box.MinEdge.Y + box.MaxEdge.Y) * 0.5f;
    const float centerZ = (box.MinEdge.Z + box.MaxEdge.Z) * 0.5f;

    // The eight corners of the node box. The original zeroes them before getEdges fills them.
    core::vector3d<float> corners[8] = {};
    box.getEdges(corners);

    // Split only when the box is not degenerate on any axis and the node has more triangles than the limit.
    // The limit is compared as an unsigned value, as in the original.
    const bool notDegenerate =
        box.MaxEdge.X > widenUp(box.MinEdge.X) || box.MaxEdge.X < widenDown(box.MinEdge.X) ||
        box.MaxEdge.Y > widenUp(box.MinEdge.Y) || box.MaxEdge.Y < widenDown(box.MinEdge.Y) ||
        box.MaxEdge.Z > widenUp(box.MinEdge.Z) || box.MaxEdge.Z < widenDown(box.MinEdge.Z);
    if (!(notDegenerate && static_cast<std::uint32_t>(minimalPolysPerNode) < static_cast<std::uint32_t>(tris.size()))) {
        return;
    }

    // Triangles that do not fit wholly inside a child stay in this node (the original's temporary vector).
    core::svector<core::triangle3d<float>> remaining;

    for (int k = 0; k < 8; ++k) {
        const core::vector3d<float>& corner = corners[k];

        // Child box: the octant spanned by the box centre and this corner.
        core::aabbox3d<float> childBox;
        childBox.MinEdge.X = lowerOf(centerX, corner.X);
        childBox.MinEdge.Y = lowerOf(centerY, corner.Y);
        childBox.MinEdge.Z = lowerOf(centerZ, corner.Z);
        childBox.MaxEdge.X = upperOf(centerX, corner.X);
        childBox.MaxEdge.Y = upperOf(centerY, corner.Y);
        childBox.MaxEdge.Z = upperOf(centerZ, corner.Z);

        SOctTreeNode* child = new SOctTreeNode();
        setUnitBox(child->box);
        node->children[k] = child;

        // Triangles wholly inside the child box move to the child. The rest stay in the node.
        for (const core::triangle3d<float>& tri : tris) {
            if (tri.isTotalInsideBox(childBox)) {
                child->triangles.push_back(tri);
            } else {
                remaining.push_back(tri);
            }
        }
        tris.assign(remaining.begin(), remaining.end());
        remaining.clear();

        // An empty child is freed and its slot cleared. A non-empty child is split in turn.
        if (child->triangles.empty()) {
            delete child;
            node->children[k] = nullptr;
        } else {
            constructOctTree(child);
        }
    }
}

}  // namespace glitch::scene
