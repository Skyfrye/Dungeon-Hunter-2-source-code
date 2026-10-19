// glitch::scene::IDummyTransformationSceneNode and CDummyTransformationSceneNode: a node that carries a transformation matrix of
// its own and draws nothing (the nodes the Collada loader makes for joints and transform-only entries). Canonical header of the scene
// owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp, layouts/scene_evidence.hpp (evidence::
// CDummyTransformationSceneNode) and the free functions of recon/slice_25.hpp.
//
// Layout (original 32-bit offsets; operator new(0x194) in clone 0x6bb858 and in the factory; constructors 0x6bb77c C1 / 0x6bb940 C2
// of CDummyTransformationSceneNode and 0x6bb6f0 of the interface):
//   +0x000 ISceneNode (0x130 bytes)
//   +0x130 CMatrix4<float> matrix: 16 floats and the identity flag byte at +0x170; the constructors zero the floats, set the flag
//          and the diagonal (an identity matrix)
//   +0x174 aabbox3d box: min (-1,-1,-1) at +0x174, max (1,1,1) at +0x180
//   +0x18c glitch::IReferenceCounted virtual base (vptr, then the count at +0x190)
// The interface class IDummyTransformationSceneNode (the same ISceneNode base, no members) declares the two pure slots K 0xf4
// getRelativeTransformationMatrix and K 0xf8 setRelativeTransformationMatrix.
#pragma once

#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

class IDummyTransformationSceneNode : public ISceneNode {
public:
    // 0x6bb6f0 (C2 listing with the VTT; the complete object is built by the derived constructors): ISceneNode(id, position 0,
    // rotation (0,0,0,1), scale 1).
    explicit IDummyTransformationSceneNode(int id);
    // 0x6bb568 (D1), 0x6bb8cc (D0, skipped): the ISceneNode destructor only.
    ~IDummyTransformationSceneNode() override;

    // K 0xf4 and K 0xf8: the matrix the node was given.
    virtual core::CMatrix4<float>& getRelativeTransformationMatrix() = 0;
    virtual void setRelativeTransformationMatrix(const core::CMatrix4<float>& matrix) = 0;
};

class CDummyTransformationSceneNode : public IDummyTransformationSceneNode {
public:
    // 0x6bb940 (C2) and 0x6bb77c (C1): the matrix becomes the identity (flag set), the box -1..1, automatic culling 0.
    explicit CDummyTransformationSceneNode(int id);
    // 0x6bb5d4 (D1) and 0x6bb9e0 (D0, skipped).
    ~CDummyTransformationSceneNode() override;

    // vptr+0x1c, 0x6bb528: empty.
    void render(void* renderContext) override;
    // vptr+0xbc, 0x6bb52c: 'dmmy'.
    E_SCENE_NODE_TYPE getType() const override;
    // vptr+0x30, 0x6bb538: the box at +0x174.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // vptr+0xc0, 0x6bb858: a new node of the same id with the base members, the matrix (with its flag) and the box copied.
    ISceneNode* clone() override;
    // K 0xf4, 0x6bb540: the matrix at +0x130.
    core::CMatrix4<float>& getRelativeTransformationMatrix() override;
    // K 0xf8, 0x6bb65c: copies the matrix (with its flag) and sets the node's position to its translation (vptr+0xa4), its rotation to
    // the matrix's rotation (vptr+0x9c) and its scale to the lengths of the matrix rows (vptr+0x94).
    void setRelativeTransformationMatrix(const core::CMatrix4<float>& matrix) override;

    core::CMatrix4<float> matrix{core::CMatrix4<float>::EM4CONST_IDENTITY};                       // +0x130
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};                // +0x174
};

}  // namespace glitch::scene
