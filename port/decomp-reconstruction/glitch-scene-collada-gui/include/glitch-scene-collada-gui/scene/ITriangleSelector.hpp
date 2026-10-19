// glitch::scene::ITriangleSelector, the collision interface a node holds (ISceneNode::getTriangleSelector).
// Canonical header of the engine unification wave (u1-scene). The earlier stand-in was
// tb/glitch_scene_ITriangleSelector.hpp, which declared the slots without the IReferenceCounted base.
//
// Evidence: tools/decomp_vtable.py glitch::scene::ITriangleSelector (36 bytes, two header words, no virtual base):
//   +0x00 / +0x04 destructors (D1 0x585634, D0 0x586480), +0x08 glitch::IReferenceCounted::onDelete,
//   +0x0c getTriangleCount() const, +0x10 / +0x14 / +0x18 the three getTriangles overloads. All four are pure.
// The vtable of CTriangleSelector shows the same slots filled in, and the +0x08 entry is IReferenceCounted's own,
// so ITriangleSelector derives from glitch::IReferenceCounted directly (vptr at +0x00, count at +0x04), not
// through a virtual base. ISceneNode::setTriangleSelector (0x59725c) drops the old selector and adds a use to
// the new one at +0x04.
#pragma once

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

class ISceneNode;

class ITriangleSelector : public glitch::IReferenceCounted {
public:
    // 0x585634 / 0x586480 (D1 / D0, skipped in the ledger: compiler-generated).
    ~ITriangleSelector() override = default;

    // +0x0c: the number of triangles the selector holds.
    virtual int getTriangleCount() const = 0;

    // +0x10: fills up to arraySize triangles and stores the count written in outTriangleCount.
    virtual void getTriangles(core::triangle3d<float>* triangles, int arraySize, int& outTriangleCount,
                              const core::CMatrix4<float>* transform) const = 0;

    // +0x14: as above, keeping only the triangles that overlap box.
    virtual void getTriangles(core::triangle3d<float>* triangles, int arraySize, int& outTriangleCount,
                              const core::aabbox3d<float>& box, const core::CMatrix4<float>* transform) const = 0;

    // +0x18: as above, keeping only the triangles that the line segment passes near.
    virtual void getTriangles(core::triangle3d<float>* triangles, int arraySize, int& outTriangleCount,
                              const core::line3d<float>& line, const core::CMatrix4<float>* transform) const = 0;

    // +0x1c: the slot of the terrain's own selector, which CTerrainSceneNode::preRenderIndicesCalculationsDirect (0x6d0470) calls
    // with (terrain node, -1) after it filled the indices when its dynamic selector flag is set. The other selectors have no such
    // slot in the original; here it does nothing.
    virtual void update(ISceneNode* node, std::int32_t lod) { (void)node; (void)lod; }
};

}  // namespace glitch::scene
