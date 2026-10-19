// glitch::scene::CMeshCache: the mesh cache the scene manager creates when it is not given one. Canonical header of the scene owner pass
// (R3b). It replaces the stand-in class in scene_simple_accessors.hpp.
//
// Layout (original 32-bit offsets; constructors 0x6be474 C2 / 0x6be4bc C1, created by CSceneManager's constructor with operator new(0x18)):
//   +0x00 vptr (vtable 0x988118, 104 bytes)   +0x04 reference count (IReferenceCounted; the constructor stores 1)
//   +0x08 entries: core::svector<MeshEntry> (begin, end and capacity words at +0x08, +0x0c, +0x10; 28-byte elements)
//   +0x14 the video driver (not owned; the mesh generators receive it)
// MeshEntry (28 bytes): a glitch std::string at +0x00 (16 bytes of inline buffer, the finish pointer at +0x10, the start pointer at +0x14,
// which is the name's character data) and the mesh at +0x18 (a use is held). The names are kept lower-cased and the list is searched by
// binary search, so setMeshFilename sorts it again (heap sort); addMesh only appends.
#pragma once

#include <cstdint>
#include <string>

#include "glitch-core-io/core/allocator.hpp"  // core::stringc / stringw / svector (STLPORT-DECISION.md section 6)
#include <vector>

#include "glitch-scene-collada-gui/scene/IMeshCache.hpp"

namespace glitch::video {
class IVideoDriver;
}

namespace glitch::scene {

class CMeshCache : public IMeshCache {
public:
    struct MeshEntry {
        MeshEntry() = default;
        MeshEntry(const MeshEntry&) = default;
        // 0x6be730 (D1): drops the mesh and frees the name when it left its inline buffer.
        ~MeshEntry();
        // 0x6be7c0: assigns the name, takes a use of the new mesh and drops the old one.
        MeshEntry& operator=(const MeshEntry& other);
        // The order of the cache: by name (STLport string order).
        bool operator<(const MeshEntry& other) const { return filename < other.filename; }

        std::string filename;                         // +0x00 .. +0x17
        boost::intrusive_ptr<IAnimatedMesh> mesh;     // +0x18
    };

    // 0x6be474 (C2) and 0x6be4bc (C1): reference count 1, no entries, the driver stored.
    explicit CMeshCache(video::IVideoDriver* driver);
    // 0x6bea90 (D1), 0x6beaec (D2), 0x6bead0 (D0, skipped): clear() and free the entry array.
    ~CMeshCache() override;

    // vptr+0x0c, 0x6bf588: appends an entry (name lower-cased) holding a use of the mesh; the list is not re-sorted.
    void addMesh(const char* filename, const boost::intrusive_ptr<IAnimatedMesh>& mesh) override;
    // vptr+0x10 and +0x14, 0x6be938 and 0x6bec0c: erase the first entry whose mesh is the argument (the second form compares the entry
    // mesh's frame-0 mesh with it).
    void removeMesh(const boost::intrusive_ptr<const IAnimatedMesh>& mesh) override;
    void removeMesh(const boost::intrusive_ptr<const IMesh>& mesh) override;
    // vptr+0x18, 0x6be504.
    std::uint32_t getMeshCount() const override;
    // vptr+0x1c and +0x20, 0x6be530 and 0x6bef0c: the index of the first match, or -1.
    std::int32_t getMeshIndex(const boost::intrusive_ptr<const IAnimatedMesh>& mesh) const override;
    std::int32_t getMeshIndex(const boost::intrusive_ptr<const IMesh>& mesh) const override;
    // vptr+0x24, 0x6be5b0: a null handle when out of range.
    boost::intrusive_ptr<IAnimatedMesh> getMeshByIndex(std::uint32_t index) override;
    // vptr+0x28, 0x6bfbc0: binary search of the lower-cased name; a null handle when it is absent.
    boost::intrusive_ptr<IAnimatedMesh> getMeshByFilename(const char* filename) override;
    // vptr+0x2c, +0x30, +0x34: 0x6be60c, 0x6be64c, 0x6bee14. Null when out of range or not found.
    const char* getMeshFilename(std::uint32_t index) const override;
    const char* getMeshFilename(const boost::intrusive_ptr<const IAnimatedMesh>& mesh) const override;
    const char* getMeshFilename(const boost::intrusive_ptr<const IMesh>& mesh) const override;
    // vptr+0x38, +0x3c, +0x40: 0x6bf32c, 0x6bf98c, 0x6bf848. Rename an entry (found by index or mesh) and re-sort the list.
    bool setMeshFilename(std::uint32_t index, const char* filename) override;
    bool setMeshFilename(const boost::intrusive_ptr<const IAnimatedMesh>& mesh, const char* filename) override;
    bool setMeshFilename(const boost::intrusive_ptr<const IMesh>& mesh, const char* filename) override;
    // vptr+0x44, 0x6be6d4: getMeshByFilename (through the vtable) is not null.
    bool isMeshLoaded(const char* filename) override;
    // vptr+0x48, 0x6bea64: erases every entry.
    void clear() override;
    // vptr+0x4c, 0x6be888: erases the entries whose mesh nobody else holds (reference count 1).
    void clearUnusedMeshes() override;
    // vptr+0x50 .. +0x5c: 0x6bfcec, 0x6bf6b0, 0x6c0024, 0x6bfe98. Each returns the cached mesh when the name is already loaded; otherwise
    // builds the mesh with the matching glitch::scene::create...Mesh generator (mesh_functions.hpp), wraps it in a one-frame SAnimatedMesh,
    // caches it under the name and returns it. A null name or a failed generator gives a null handle.
    boost::intrusive_ptr<IAnimatedMesh> addHillPlaneMesh(std::uint32_t id, const char* name, const core::dimension2d<float>& tileSize,
                                                         const core::dimension2d<std::uint32_t>& tileCount,
                                                         const boost::intrusive_ptr<video::CMaterial>& material,
                                                         const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& attributeMap,
                                                         float hillHeight, const core::dimension2d<float>& countHills,
                                                         const core::dimension2d<float>& textureRepeatCount) override;
    boost::intrusive_ptr<IAnimatedMesh> addTerrainMesh(const char* name, const boost::intrusive_ptr<video::CImage>& texture,
                                                       const boost::intrusive_ptr<video::CImage>& heightMap,
                                                       const core::dimension2d<float>& stretchSize, float maxHeight,
                                                       const core::dimension2d<std::int32_t>& defaultVertexBlockSize) override;
    boost::intrusive_ptr<IAnimatedMesh> addArrowMesh(std::uint32_t id, const char* name, video::SColor colorCylinder,
                                                     video::SColor colorCone, std::uint32_t tesselationCylinder,
                                                     std::uint32_t tesselationCone, float height, float cylinderHeight, float width0,
                                                     float width1) override;
    boost::intrusive_ptr<IAnimatedMesh> addSphereMesh(std::uint32_t id, const char* name, float radius, std::uint32_t polyCountX,
                                                      std::uint32_t polyCountY) override;

    core::svector<MeshEntry> entries;              // +0x08
    video::IVideoDriver* driver = nullptr;       // +0x14
};

}  // namespace glitch::scene
