// glitch::scene::SAnimatedMesh: the IAnimatedMesh that holds one IMesh per frame. Canonical header of the engine unification
// wave (u1-scene). It replaces the SAnimatedMesh in scene_simple_accessors.hpp (a class with a box, a void* vector and a mesh
// type, no base) and recon_06::SAnimatedMesh (recon/slice_06.hpp).
//
// Layout (original 32-bit offsets; operator new(0x30), constructor 0x59ad10; vtable tools/decomp_vtable.py
// glitch::scene::SAnimatedMesh, 68 bytes, the IAnimatedMesh slots filled in):
//   +0x00 vptr, +0x04 reference count (starts at 0), +0x08 aabbox3d box (the constructor sets it to -1..1 and then
//   recalculateBoundingBox merges the frame boxes), +0x20 frame vector (begin, end, capacity) of intrusive IMesh pointers,
//   +0x2c mesh type (the constructor argument).
// The mesh-buffer accessors forward to the first frame (vptr+0x10 .. +0x20 of that mesh); with no frames they return 0 / null.
// Destructors: 0x59a594 (D1), D0 0x59b048 skipped.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/scene/IMesh.hpp"

namespace glitch::scene {

using E_ANIMATED_MESH_TYPE = std::uint32_t;

class SAnimatedMesh : public IAnimatedMesh {
public:
    // 0x59ad10: one frame (when the mesh is not null), the box (-1..1) merged with the frame box, type stored.
    SAnimatedMesh(const boost::intrusive_ptr<IMesh>& mesh, E_ANIMATED_MESH_TYPE type);
    // 0x59a594 (D1; the D0 is the IAnimatedMesh one at 0x59a60c).
    ~SAnimatedMesh() override;

    boost::intrusive_ptr<IMesh> clone() const override;                                         // 0x59ae64
    std::uint32_t getMeshBufferCount() const override;                                          // 0x599f90
    boost::intrusive_ptr<CMeshBuffer> getMeshBuffer(std::uint32_t index) const override;        // 0x599fc4
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;     // 0x59a000
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> getMaterialVertexAttributeMap(
        std::uint32_t index) const override;                                                    // 0x59a03c
    void setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                     const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) override;  // 0x59a078
    const core::aabbox3d<float>& getBoundingBox() const override;                               // 0x599f4c
    void setBoundingBox(const core::aabbox3d<float>& box) override;                             // 0x599f54
    std::uint32_t getFrameCount() const override;                                               // 0x599f04
    boost::intrusive_ptr<IMesh> getMesh(std::int32_t frame, std::int32_t detailLevel, std::int32_t startFrameLoop,
                                        std::int32_t endFrameLoop) override;                    // 0x599f18
    std::uint32_t getMeshType() const override;                                                 // 0x599f88

    // 0x59a1c0: the box of the first frame, merged (addInternalBox) with the boxes of the others; zero without frames.
    void recalculateBoundingBox();

    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x08
    std::vector<boost::intrusive_ptr<IMesh>> meshes;                                  // +0x20
    E_ANIMATED_MESH_TYPE meshType = 0;                                                // +0x2c
};

// 0x59ae1c: a new SAnimatedMesh over `mesh`, holding one use.
boost::intrusive_ptr<IAnimatedMesh> createAnimatedMesh(const boost::intrusive_ptr<IMesh>& mesh, E_ANIMATED_MESH_TYPE type);

}  // namespace glitch::scene
