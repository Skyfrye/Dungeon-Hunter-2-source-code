// Bodies of glitch::scene::IMeshCache and glitch::scene::CMeshCache (canonical classes: scene/IMeshCache.hpp, scene/CMeshCache.hpp).
// This file replaces the stand-in members of src/scene_simple_accessors.cpp and the CMeshCache functions of src/recon/slice_25.cpp.
#include "glitch-scene-collada-gui/scene/CMeshCache.hpp"

#include <algorithm>
#include <cstring>

#include "glitch-core-io/core/sort.hpp"

#include "glitch-scene-collada-gui/scene/SAnimatedMesh.hpp"
#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"

namespace glitch::scene {

namespace {

// The name as the cache stores and looks it up: ASCII capitals lower-cased.
std::string lowerCased(const char* name) {
    std::string out(name);
    for (char& c : out) {
        if (static_cast<unsigned char>(c - 65) <= 0x19u) {
            c = static_cast<char>(c + 32);
        }
    }
    return out;
}

// The frame-0 mesh of an entry's animated mesh (getMesh(0, 255, -1, -1) on the entry mesh, vptr+0x34), or null.
boost::intrusive_ptr<IMesh> frameZero(const CMeshCache::MeshEntry& entry) {
    if (!entry.mesh) {
        return boost::intrusive_ptr<IMesh>();
    }
    return entry.mesh->getMesh(0, 255, -1, -1);
}

// Wraps a generated mesh in a one-frame animated mesh and caches it under `name` (the tail every add...Mesh shares): a new
// SAnimatedMesh(null, 0) gets the mesh appended as its only frame, recalculates its box and is added through addMesh (vptr+0x0c).
boost::intrusive_ptr<IAnimatedMesh> cacheGenerated(CMeshCache& cache, const char* name, const boost::intrusive_ptr<IMesh>& mesh) {
    if (!mesh) {
        return boost::intrusive_ptr<IAnimatedMesh>();
    }
    boost::intrusive_ptr<SAnimatedMesh> animated(new SAnimatedMesh(boost::intrusive_ptr<IMesh>(), 0), true);  // the count starts at 0
    animated->meshes.push_back(mesh);
    animated->recalculateBoundingBox();
    boost::intrusive_ptr<IAnimatedMesh> handle(animated.get(), true);
    cache.addMesh(name, handle);
    return handle;
}

}  // namespace

// 0x6be470 _ZN6glitch5scene10IMeshCacheD1Ev (empty body)
// 0x6be7ac _ZN6glitch5scene10IMeshCacheD0Ev (deleting; skipped)
IMeshCache::~IMeshCache() = default;

// 0x6be730 _ZN6glitch5scene10CMeshCache9MeshEntryD1Ev
CMeshCache::MeshEntry::~MeshEntry() = default;

// 0x6be7c0 _ZN6glitch5scene10CMeshCache9MeshEntryaSERKS2_
CMeshCache::MeshEntry& CMeshCache::MeshEntry::operator=(const MeshEntry& other) {
    if (this != &other) {
        filename = other.filename;
    }
    mesh = other.mesh;
    return *this;
}

// 0x6be474 _ZN6glitch5scene10CMeshCacheC2EPNS_5video12IVideoDriverE
// 0x6be4bc _ZN6glitch5scene10CMeshCacheC1EPNS_5video12IVideoDriverE
CMeshCache::CMeshCache(video::IVideoDriver* videoDriver) : driver(videoDriver) {}

// 0x6bea90 _ZN6glitch5scene10CMeshCacheD1Ev
// 0x6beaec _ZN6glitch5scene10CMeshCacheD2Ev
// 0x6bead0 _ZN6glitch5scene10CMeshCacheD0Ev (deleting; skipped)
CMeshCache::~CMeshCache() {
    clear();
}

// 0x6be504 _ZNK6glitch5scene10CMeshCache12getMeshCountEv
std::uint32_t CMeshCache::getMeshCount() const {
    return static_cast<std::uint32_t>(entries.size());
}

// 0x6be530 _ZNK6glitch5scene10CMeshCache12getMeshIndexERKN5boost13intrusive_ptrIKNS0_13IAnimatedMeshEEE
std::int32_t CMeshCache::getMeshIndex(const boost::intrusive_ptr<const IAnimatedMesh>& mesh) const {
    for (std::size_t i = 0; i < entries.size(); ++i) {
        if (entries[i].mesh.get() == mesh.get()) {
            return static_cast<std::int32_t>(i);
        }
    }
    return -1;
}

// 0x6bef0c _ZNK6glitch5scene10CMeshCache12getMeshIndexERKN5boost13intrusive_ptrIKNS0_5IMeshEEE
// An entry matches when its animated mesh's frame-0 mesh is the argument.
std::int32_t CMeshCache::getMeshIndex(const boost::intrusive_ptr<const IMesh>& mesh) const {
    for (std::size_t i = 0; i < entries.size(); ++i) {
        if (entries[i].mesh) {
            const boost::intrusive_ptr<IMesh> frame = frameZero(entries[i]);
            if (frame.get() == mesh.get()) {
                return static_cast<std::int32_t>(i);
            }
        }
    }
    return -1;
}

// 0x6be5b0 _ZN6glitch5scene10CMeshCache14getMeshByIndexEj
boost::intrusive_ptr<IAnimatedMesh> CMeshCache::getMeshByIndex(std::uint32_t index) {
    if (index < entries.size()) {
        return entries[index].mesh;
    }
    return boost::intrusive_ptr<IAnimatedMesh>();
}

// 0x6bfbc0 _ZN6glitch5scene10CMeshCache17getMeshByFilenameEPKc
// The lower-cased name is looked up by binary search (the list must be sorted: setMeshFilename sorts, addMesh does not).
boost::intrusive_ptr<IAnimatedMesh> CMeshCache::getMeshByFilename(const char* name) {
    MeshEntry key;
    key.filename = lowerCased(name);
    const int index = glitch::core::binary_search(entries, key);  // binary_search<MeshEntry> 0x6bfa64
    if (index == -1) {
        return boost::intrusive_ptr<IAnimatedMesh>();
    }
    return entries[static_cast<std::size_t>(index)].mesh;
}

// 0x6be60c _ZNK6glitch5scene10CMeshCache15getMeshFilenameEj
const char* CMeshCache::getMeshFilename(std::uint32_t index) const {
    return index < entries.size() ? entries[index].filename.c_str() : nullptr;
}

// 0x6be64c _ZNK6glitch5scene10CMeshCache15getMeshFilenameERKN5boost13intrusive_ptrIKNS0_13IAnimatedMeshEEE
const char* CMeshCache::getMeshFilename(const boost::intrusive_ptr<const IAnimatedMesh>& mesh) const {
    for (const MeshEntry& entry : entries) {
        if (entry.mesh.get() == mesh.get()) {
            return entry.filename.c_str();
        }
    }
    return nullptr;
}

// 0x6bee14 _ZNK6glitch5scene10CMeshCache15getMeshFilenameERKN5boost13intrusive_ptrIKNS0_5IMeshEEE
const char* CMeshCache::getMeshFilename(const boost::intrusive_ptr<const IMesh>& mesh) const {
    for (std::size_t i = 0; i < entries.size(); ++i) {
        if (entries[i].mesh) {
            const boost::intrusive_ptr<IMesh> frame = frameZero(entries[i]);
            if (frame.get() == mesh.get()) {
                return entries[i].filename.c_str();
            }
        }
    }
    return nullptr;
}

// 0x6bf32c _ZN6glitch5scene10CMeshCache15setMeshFilenameEjPKc
bool CMeshCache::setMeshFilename(std::uint32_t index, const char* name) {
    if (index >= entries.size()) {
        return false;
    }
    entries[index].filename = name;
    if (entries.size() > 1) {
        glitch::core::heapsort(entries.data(), static_cast<int>(entries.size()));  // heapsort<MeshEntry> 0x6bf228 (heapsink 0x6beffc)
    }
    return true;
}

// 0x6bf98c _ZN6glitch5scene10CMeshCache15setMeshFilenameERKN5boost13intrusive_ptrIKNS0_13IAnimatedMeshEEEPKc
bool CMeshCache::setMeshFilename(const boost::intrusive_ptr<const IAnimatedMesh>& mesh, const char* name) {
    for (MeshEntry& entry : entries) {
        if (entry.mesh.get() == mesh.get()) {
            entry.filename = name;
            if (entries.size() > 1) {
                glitch::core::heapsort(entries.data(), static_cast<int>(entries.size()));
            }
            return true;
        }
    }
    return false;
}

// 0x6bf848 _ZN6glitch5scene10CMeshCache15setMeshFilenameERKN5boost13intrusive_ptrIKNS0_5IMeshEEEPKc
bool CMeshCache::setMeshFilename(const boost::intrusive_ptr<const IMesh>& mesh, const char* name) {
    for (std::size_t i = 0; i < entries.size(); ++i) {
        if (entries[i].mesh) {
            const boost::intrusive_ptr<IMesh> frame = frameZero(entries[i]);
            if (frame.get() == mesh.get()) {
                entries[i].filename = name;
                if (entries.size() > 1) {
                    glitch::core::heapsort(entries.data(), static_cast<int>(entries.size()));
                }
                return true;
            }
        }
    }
    return false;
}

// 0x6be6d4 _ZN6glitch5scene10CMeshCache12isMeshLoadedEPKc
bool CMeshCache::isMeshLoaded(const char* name) {
    const boost::intrusive_ptr<IAnimatedMesh> found = getMeshByFilename(name);  // vptr+0x28
    return found.get() != nullptr;
}

// 0x6bea64 _ZN6glitch5scene10CMeshCache5clearEv
void CMeshCache::clear() {
    entries.clear();
}

// 0x6be888 _ZN6glitch5scene10CMeshCache17clearUnusedMeshesEv
// An entry whose mesh has no other holder (reference count 1) is erased; the scan continues at the entry that took its place.
void CMeshCache::clearUnusedMeshes() {
    for (std::size_t i = 0; i < entries.size();) {
        if (entries[i].mesh->referenceCounter == 1) {
            entries.erase(entries.begin() + static_cast<std::ptrdiff_t>(i));
        } else {
            ++i;
        }
    }
}

// 0x6be938 _ZN6glitch5scene10CMeshCache10removeMeshERKN5boost13intrusive_ptrIKNS0_13IAnimatedMeshEEE
void CMeshCache::removeMesh(const boost::intrusive_ptr<const IAnimatedMesh>& mesh) {
    if (!mesh) {
        return;
    }
    for (auto it = entries.begin(); it != entries.end(); ++it) {
        if (it->mesh.get() == mesh.get()) {
            entries.erase(it);
            return;
        }
    }
}

// 0x6bec0c _ZN6glitch5scene10CMeshCache10removeMeshERKN5boost13intrusive_ptrIKNS0_5IMeshEEE
void CMeshCache::removeMesh(const boost::intrusive_ptr<const IMesh>& mesh) {
    if (!mesh) {
        return;
    }
    for (std::size_t i = 0; i < entries.size(); ++i) {
        if (entries[i].mesh) {
            const boost::intrusive_ptr<IMesh> frame = frameZero(entries[i]);
            if (frame.get() == mesh.get()) {
                entries.erase(entries.begin() + static_cast<std::ptrdiff_t>(i));
                return;
            }
        }
    }
}

// 0x6bf588 _ZN6glitch5scene10CMeshCache7addMeshEPKcRKN5boost13intrusive_ptrINS0_13IAnimatedMeshEEE
void CMeshCache::addMesh(const char* name, const boost::intrusive_ptr<IAnimatedMesh>& mesh) {
    MeshEntry entry;
    entry.mesh = mesh;
    entry.filename = lowerCased(name);
    entries.push_back(entry);
}

// 0x6bfcec _ZN6glitch5scene10CMeshCache16addHillPlaneMeshEjPKcRKNS_4core11dimension2dIfEERKNS5_IjEERKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNSB_INSA_27CMaterialVertexAttributeMapEEEfS8_S8_
boost::intrusive_ptr<IAnimatedMesh> CMeshCache::addHillPlaneMesh(
    std::uint32_t id, const char* name, const core::dimension2d<float>& tileSize, const core::dimension2d<std::uint32_t>& tileCount,
    const boost::intrusive_ptr<video::CMaterial>& material, const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& attributeMap,
    float hillHeight, const core::dimension2d<float>& countHills, const core::dimension2d<float>& textureRepeatCount) {
    if (name == nullptr) {
        return boost::intrusive_ptr<IAnimatedMesh>();
    }
    if (isMeshLoaded(name)) {                // vptr+0x44
        return getMeshByFilename(name);      // vptr+0x28
    }
    return cacheGenerated(*this, name,
                          createHillPlaneMesh(id, driver, tileSize, tileCount, material, attributeMap, hillHeight, countHills,
                                              textureRepeatCount));
}

// 0x6bf6b0 _ZN6glitch5scene10CMeshCache14addTerrainMeshEPKcRKN5boost13intrusive_ptrINS_5video6CImageEEES8_RKNS_4core11dimension2dIfEEfRKNSB_IiEE
boost::intrusive_ptr<IAnimatedMesh> CMeshCache::addTerrainMesh(const char* name, const boost::intrusive_ptr<video::CImage>& texture,
                                                               const boost::intrusive_ptr<video::CImage>& heightMap,
                                                               const core::dimension2d<float>& stretchSize, float maxHeight,
                                                               const core::dimension2d<std::int32_t>& defaultVertexBlockSize) {
    if (name == nullptr) {
        return boost::intrusive_ptr<IAnimatedMesh>();
    }
    if (isMeshLoaded(name)) {
        return getMeshByFilename(name);
    }
    return cacheGenerated(*this, name, createTerrainMesh(texture, heightMap, stretchSize, maxHeight, driver, defaultVertexBlockSize, false));
}

// 0x6c0024 _ZN6glitch5scene10CMeshCache12addArrowMeshEjPKcNS_5video6SColorES5_jjffff
boost::intrusive_ptr<IAnimatedMesh> CMeshCache::addArrowMesh(std::uint32_t id, const char* name, video::SColor colorCylinder,
                                                             video::SColor colorCone, std::uint32_t tesselationCylinder,
                                                             std::uint32_t tesselationCone, float height, float cylinderHeight,
                                                             float width0, float width1) {
    if (name == nullptr) {
        return boost::intrusive_ptr<IAnimatedMesh>();
    }
    if (isMeshLoaded(name)) {
        return getMeshByFilename(name);
    }
    return cacheGenerated(*this, name,
                          createArrowMesh(id, driver, tesselationCylinder, tesselationCone, height, cylinderHeight, width0, width1,
                                          colorCylinder, colorCone));
}

// 0x6bfe98 _ZN6glitch5scene10CMeshCache13addSphereMeshEjPKcfjj
boost::intrusive_ptr<IAnimatedMesh> CMeshCache::addSphereMesh(std::uint32_t id, const char* name, float radius, std::uint32_t polyCountX,
                                                              std::uint32_t polyCountY) {
    if (name == nullptr) {
        return boost::intrusive_ptr<IAnimatedMesh>();
    }
    if (isMeshLoaded(name)) {
        return getMeshByFilename(name);
    }
    return cacheGenerated(*this, name, createSphereMesh(id, driver, radius, polyCountX, polyCountY));
}

}  // namespace glitch::scene
