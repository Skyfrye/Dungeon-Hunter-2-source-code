// glitch::scene::IMeshCache: the interface of the mesh cache the scene manager holds. Canonical header of the scene owner pass (R3b).
// It replaces the stand-in class (an empty destructor) in scene_simple_accessors.hpp.
//
// Evidence (tools/decomp_vtable.py glitch::scene::IMeshCache and CMeshCache, 104 bytes, no virtual base): a plain
// glitch::IReferenceCounted subclass (vptr +0x00, reference count +0x04). Slots +0x00 / +0x04 destructors (the interface's own D1 is
// the empty body 0x6be470, D0 0x6be7ac), +0x08 IReferenceCounted::onDelete, then the 21 pure slots below, named by the CMeshCache
// overrides. The entries are looked up by name (the names are lower-cased), by mesh and by index.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"

namespace glitch::video {
class CImage;
}

namespace glitch::scene {

class IMeshCache : public glitch::IReferenceCounted {
public:
    // 0x6be470 (D1: empty) and 0x6be7ac (D0, skipped).
    ~IMeshCache() override;

    virtual void addMesh(const char* filename, const boost::intrusive_ptr<IAnimatedMesh>& mesh) = 0;                  // +0x0c
    virtual void removeMesh(const boost::intrusive_ptr<const IAnimatedMesh>& mesh) = 0;                                // +0x10
    virtual void removeMesh(const boost::intrusive_ptr<const IMesh>& mesh) = 0;                                        // +0x14
    virtual std::uint32_t getMeshCount() const = 0;                                                                    // +0x18
    virtual std::int32_t getMeshIndex(const boost::intrusive_ptr<const IAnimatedMesh>& mesh) const = 0;                // +0x1c
    virtual std::int32_t getMeshIndex(const boost::intrusive_ptr<const IMesh>& mesh) const = 0;                        // +0x20
    virtual boost::intrusive_ptr<IAnimatedMesh> getMeshByIndex(std::uint32_t index) = 0;                               // +0x24
    virtual boost::intrusive_ptr<IAnimatedMesh> getMeshByFilename(const char* filename) = 0;                           // +0x28
    virtual const char* getMeshFilename(std::uint32_t index) const = 0;                                                // +0x2c
    virtual const char* getMeshFilename(const boost::intrusive_ptr<const IAnimatedMesh>& mesh) const = 0;              // +0x30
    virtual const char* getMeshFilename(const boost::intrusive_ptr<const IMesh>& mesh) const = 0;                      // +0x34
    virtual bool setMeshFilename(std::uint32_t index, const char* filename) = 0;                                       // +0x38
    virtual bool setMeshFilename(const boost::intrusive_ptr<const IAnimatedMesh>& mesh, const char* filename) = 0;     // +0x3c
    virtual bool setMeshFilename(const boost::intrusive_ptr<const IMesh>& mesh, const char* filename) = 0;             // +0x40
    virtual bool isMeshLoaded(const char* filename) = 0;                                                               // +0x44
    virtual void clear() = 0;                                                                                          // +0x48
    virtual void clearUnusedMeshes() = 0;                                                                              // +0x4c
    virtual boost::intrusive_ptr<IAnimatedMesh> addHillPlaneMesh(
        std::uint32_t id, const char* name, const core::dimension2d<float>& tileSize, const core::dimension2d<std::uint32_t>& tileCount,
        const boost::intrusive_ptr<video::CMaterial>& material, const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& attributeMap,
        float hillHeight, const core::dimension2d<float>& countHills, const core::dimension2d<float>& textureRepeatCount) = 0;  // +0x50
    virtual boost::intrusive_ptr<IAnimatedMesh> addTerrainMesh(
        const char* name, const boost::intrusive_ptr<video::CImage>& texture, const boost::intrusive_ptr<video::CImage>& heightMap,
        const core::dimension2d<float>& stretchSize, float maxHeight, const core::dimension2d<std::int32_t>& defaultVertexBlockSize) = 0;  // +0x54
    virtual boost::intrusive_ptr<IAnimatedMesh> addArrowMesh(std::uint32_t id, const char* name, video::SColor colorCylinder,
                                                             video::SColor colorCone, std::uint32_t tesselationCylinder,
                                                             std::uint32_t tesselationCone, float height, float cylinderHeight,
                                                             float width0, float width1) = 0;                                         // +0x58
    virtual boost::intrusive_ptr<IAnimatedMesh> addSphereMesh(std::uint32_t id, const char* name, float radius, std::uint32_t polyCountX,
                                                              std::uint32_t polyCountY) = 0;                                         // +0x5c
};

}  // namespace glitch::scene
