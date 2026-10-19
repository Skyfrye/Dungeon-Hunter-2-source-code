// glitch::scene::IMesh and glitch::scene::IAnimatedMesh: the mesh interfaces. Canonical header of the engine
// unification wave (u1-scene). It replaces the IMesh stand-ins in scene_nodes.hpp (a destructor and getUserProperty),
// layouts/scene.hpp (a vptr and a count) and layouts/collada_members.hpp (glitch::collada::IMesh, a layout struct),
// recon/slice_22.hpp (recon_22::IMesh) and the IAnimatedMesh stand-ins in scene_simple_accessors.hpp and layouts/scene.hpp.
//
// Evidence (tools/decomp_vtable.py glitch::scene::IMesh, 56 bytes; IAnimatedMesh, 68 bytes; no virtual base):
//   IMesh derives from glitch::IReferenceCounted directly (the vtable carries IReferenceCounted::onDelete at +0x08), so
//   the object is the vptr at +0x00 and the reference count at +0x04, 8 bytes; CMesh and CBatchMesh add their members
//   from +0x08.
//   IMesh slots (vptr+K): +0x00 / +0x04 destructors (0x596c68; D0 0x596c94 skipped), +0x08 onDelete (IReferenceCounted's),
//     +0x0c clone, +0x10 getMeshBufferCount, +0x14 getMeshBuffer, +0x18 getMaterial, +0x1c getMaterialVertexAttributeMap,
//     +0x20 setMaterial, +0x24 getBoundingBox, +0x28 setBoundingBox: pure; +0x2c getUserProperty (0x596c6c, returns null).
//   IAnimatedMesh adds +0x30 getFrameCount and +0x34 getMesh (pure; their names are the ones SAnimatedMesh implements,
//     0x599f04 and 0x599f18) and +0x38 getMeshType (0x599efc, returns 0 in the base).
// The collada interface that adds the skinning hooks is glitch::collada::IMesh (collada/IMesh.hpp).
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

class IMesh : public glitch::IReferenceCounted {
public:
    // vptr+0x00 / +0x04, 0x596c68 (empty; D0 0x596c94 is skipped in the ledger).
    ~IMesh() override;

    // vptr+0x0c .. +0x28: pure.
    virtual boost::intrusive_ptr<IMesh> clone() const = 0;                                       // +0x0c
    virtual std::uint32_t getMeshBufferCount() const = 0;                                        // +0x10
    virtual boost::intrusive_ptr<CMeshBuffer> getMeshBuffer(std::uint32_t index) const = 0;      // +0x14
    virtual boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const = 0;   // +0x18
    virtual boost::intrusive_ptr<video::CMaterialVertexAttributeMap> getMaterialVertexAttributeMap(
        std::uint32_t index) const = 0;                                                          // +0x1c
    virtual void setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                             const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) = 0;  // +0x20
    virtual const core::aabbox3d<float>& getBoundingBox() const = 0;                             // +0x24
    virtual void setBoundingBox(const core::aabbox3d<float>& box) = 0;                           // +0x28
    // vptr+0x2c, 0x596c6c: returns null (the opaque user-property record; collada meshes override it).
    virtual const SUserProperty* getUserProperty() const;
};

class IAnimatedMesh : public IMesh {
public:
    // 0x599ef8 (empty; D0 0x59a60c skipped).
    ~IAnimatedMesh() override;

    virtual std::uint32_t getFrameCount() const = 0;                                             // +0x30 (SAnimatedMesh 0x599f04)
    virtual boost::intrusive_ptr<IMesh> getMesh(std::int32_t frame, std::int32_t detailLevel, std::int32_t startFrameLoop,
                                                std::int32_t endFrameLoop) = 0;                  // +0x34 (SAnimatedMesh 0x599f18)
    // vptr+0x38, 0x599efc: returns 0 in the base.
    virtual std::uint32_t getMeshType() const;
};

}  // namespace glitch::scene
