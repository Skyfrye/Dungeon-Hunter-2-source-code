// glitch::scene::CMesh: the plain mesh (a list of buffers with a material and a vertex-attribute map each).
// Canonical header of the engine unification wave (u1-scene). It replaces the CMesh in scene_simple_accessors.hpp,
// the layout struct in layouts/scene.hpp (with CMeshSBuffer) and tb/glitch_scene_CMesh_SBuffer.hpp.
//
// Layout (original 32-bit offsets; 0x2c bytes, operator new(0x2c) in clone 0x6bbc..; constructor 0x6bba70 / 0x6bbad4):
//   +0x00 vptr, +0x04 reference count (IMesh -> IReferenceCounted)
//   +0x08 .. +0x13 buffer vector (begin, end, capacity), 12-byte SBuffer elements
//   +0x14 aabbox3d box (the constructor writes (-1,-1,-1)..(1,1,1)); recalculateBoundingBox reads min at +0x14, max at +0x20
// The vtable (tools/decomp_vtable.py glitch::scene::CMesh) fills the IMesh slots +0x0c .. +0x28.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/scene/IMesh.hpp"
// CMeshBuffer.hpp is not included: it must stay out of translation units that also include glitch-core-io/io/interfaces.hpp
// (which still declares a stub scene::CMeshBuffer). The handles are forward-declared and CMesh.cpp includes the complete type.

namespace glitch::scene {

class CMesh : public IMesh {
public:
    // One buffer entry, 12 bytes. The first word is the CMeshBuffer, the others the material and the vertex-attribute map
    // (each reference counted). The special members are out of line so that this header needs no video types.
    struct SBuffer {
        SBuffer();                                   // 0x6bba..: zeroes the three words
        SBuffer(const SBuffer& other);
        // 0x6bbcc4: assigns the three handles (adds a use to the new, drops the old). PARTIAL, see src.
        SBuffer& operator=(const SBuffer& other);
        // 0x6bbe18: drops the three handles. PARTIAL, see src.
        ~SBuffer();

        boost::intrusive_ptr<CMeshBuffer> buffer;                                   // +0x00
        boost::intrusive_ptr<video::CMaterial> material;                            // +0x04
        boost::intrusive_ptr<video::CMaterialVertexAttributeMap> vertexAttributeMap;  // +0x08
    };

    // 0x6bba70 (C1) and 0x6bbad4 (C2): an empty mesh with the box (-1..1).
    CMesh();
    // 0x6bc298 (D1), 0x6bc27c (D2), 0x6bc248 (D0, skipped).
    ~CMesh() override;

    // vptr+0x0c .. +0x28: the IMesh slots.
    boost::intrusive_ptr<IMesh> clone() const override;                                          // 0x6bc3e4
    std::uint32_t getMeshBufferCount() const override;                                           // 0x6bbb38
    boost::intrusive_ptr<CMeshBuffer> getMeshBuffer(std::uint32_t index) const override;         // 0x6bbb60
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;      // 0x6bbbb8
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> getMaterialVertexAttributeMap(
        std::uint32_t index) const override;                                                     // 0x6bbc10
    void setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                     const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) override;  // 0x6bbd6c
    const core::aabbox3d<float>& getBoundingBox() const override;                                // 0x6bbc68
    void setBoundingBox(const core::aabbox3d<float>& box) override;                              // 0x6bbc70

    // Non-virtual members.
    void clear();                                                                                // 0x6bbedc
    void recalculateBoundingBox();                                                               // 0x6bc2cc
    void addMeshBuffer(const boost::intrusive_ptr<CMeshBuffer>& buffer,
                       const boost::intrusive_ptr<video::CMaterial>& material,
                       const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap);  // 0x6bc664

    std::vector<SBuffer> buffers;                                                                // +0x08
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};                // +0x14
};

}  // namespace glitch::scene
