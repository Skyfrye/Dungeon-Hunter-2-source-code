// batch::GOBatchSceneNode: the batch scene node that BatchNodeCompiler builds for a level. It is a glitch
// CBatchSceneNode. updateSegmentVisibility recomputes which segments are visible for the scene manager's
// current intersector, and isSegmentVisible answers from the segment's GameObject.
// Original 32-bit size 0x168 (360), from the operator new(360) site in BatchNodeCompiler::Compile (0x50dc84). The class
// declares no data members of its own. The first 0x160 bytes are glitch::scene::CBatchSceneNode
// (scene/CBatchSceneNode.hpp). Its virtual base glitch::IReferenceCounted is at +0x160 (vptr) and +0x164 (reference
// count): Compile writes the count as 1 before the base constructor runs, and Free drops the node through that base.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x50cf08 / 0x50dabc, isSegmentVisible 0x50cd44,
// updateSegmentVisibility 0x50d71c).
#pragma once

#include "glitch-scene-collada-gui/scene/CBatchSceneNode.hpp"

namespace batch {

class GOBatchSceneNode : public glitch::scene::CBatchSceneNode {
public:
    // The constructor has no symbol of its own: BatchNodeCompiler::Compile (0x50dc84) allocates the node (operator new(360)), sets the
    // reference count to 1, runs CBatchSceneNode(int, intrusive_ptr<CBatchMesh> const&) with id -1 and stores the vptrs.
    GOBatchSceneNode(int id, const boost::intrusive_ptr<glitch::scene::CBatchMesh>& batchMesh) : CBatchSceneNode(id, batchMesh) {}

    // Complete dtor (vtable slot 0x14, 0x50cf08) and deleting dtor (slot 0x18, 0x50dabc, which also frees the object).
    ~GOBatchSceneNode() override;

    // Vtable slot 0x114, overriding CBatchSceneNode::isSegmentVisible. Returns false when the segment's GameObject hides
    // it: a virtual test on the object (vtable +0xc4), the bytes at +0x2ee and +0x2f0, or the byte at +0x80. Otherwise it
    // returns the segment's visible byte (SSegment +0x20). 0x50cd44.
    bool isSegmentVisible(const glitch::scene::CBatchMesh::SSegment& segment) override;

    // Recomputes the visible segments for the current scene manager when bit 0 of the word at CBatchSceneNode +0x11c
    // is set. The original returns the this pointer as residue, so void here. 0x50d71c.
    void updateSegmentVisibility();
};

}  // namespace batch
