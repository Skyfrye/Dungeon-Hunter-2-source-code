// Bodies of glitch::scene::SAnimatedMesh (canonical class: scene/SAnimatedMesh.hpp). This file replaces the SAnimatedMesh
// bodies of src/scene_simple_accessors.cpp and recon/slice_06.cpp.
#include "glitch-scene-collada-gui/scene/SAnimatedMesh.hpp"

#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"

namespace glitch::scene {

// 0x59ad10 _ZN6glitch5scene13SAnimatedMeshC1ERKN5boost13intrusive_ptrINS0_5IMeshEEENS0_20E_ANIMATED_MESH_TYPEE
// The reference count starts at 0; one frame is stored when `mesh` is not null; then recalculateBoundingBox().
SAnimatedMesh::SAnimatedMesh(const boost::intrusive_ptr<IMesh>& mesh, E_ANIMATED_MESH_TYPE type) : meshType(type) {
    referenceCounter = 0;
    if (mesh.get() != nullptr) {
        meshes.push_back(mesh);
    }
    recalculateBoundingBox();
}

// 0x59a594 _ZN6glitch5scene13SAnimatedMeshD1Ev
SAnimatedMesh::~SAnimatedMesh() = default;

// 0x59ae64 _ZNK6glitch5scene13SAnimatedMesh5cloneEv
// A new animated mesh (operator new(0x30)) of the same type with an empty frame list, then the box and the frame vector copied.
boost::intrusive_ptr<IMesh> SAnimatedMesh::clone() const {
    auto* copy = new SAnimatedMesh(boost::intrusive_ptr<IMesh>(), meshType);
    copy->boundingBox = boundingBox;
    copy->meshes = meshes;
    return boost::intrusive_ptr<IMesh>(copy, true);
}

// 0x599f90 _ZNK6glitch5scene13SAnimatedMesh18getMeshBufferCountEv
std::uint32_t SAnimatedMesh::getMeshBufferCount() const {
    return meshes.empty() ? 0 : meshes.front()->getMeshBufferCount();
}

// 0x599fc4 _ZNK6glitch5scene13SAnimatedMesh13getMeshBufferEj
boost::intrusive_ptr<CMeshBuffer> SAnimatedMesh::getMeshBuffer(std::uint32_t index) const {
    return meshes.empty() ? boost::intrusive_ptr<CMeshBuffer>() : meshes.front()->getMeshBuffer(index);
}

// 0x59a000 _ZNK6glitch5scene13SAnimatedMesh11getMaterialEj
boost::intrusive_ptr<video::CMaterial> SAnimatedMesh::getMaterial(std::uint32_t index) const {
    return meshes.empty() ? boost::intrusive_ptr<video::CMaterial>() : meshes.front()->getMaterial(index);
}

// 0x59a03c _ZNK6glitch5scene13SAnimatedMesh24getMaterialVertexAttributeMapEj
boost::intrusive_ptr<video::CMaterialVertexAttributeMap> SAnimatedMesh::getMaterialVertexAttributeMap(std::uint32_t index) const {
    return meshes.empty() ? boost::intrusive_ptr<video::CMaterialVertexAttributeMap>()
                          : meshes.front()->getMaterialVertexAttributeMap(index);
}

// 0x59a078 _ZN6glitch5scene13SAnimatedMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS4_INS5_27CMaterialVertexAttributeMapEEE
void SAnimatedMesh::setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                                const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) {
    if (!meshes.empty()) {
        meshes.front()->setMaterial(index, material, vertexAttributeMap);
    }
}

// 0x599f4c _ZNK6glitch5scene13SAnimatedMesh14getBoundingBoxEv
const core::aabbox3d<float>& SAnimatedMesh::getBoundingBox() const {
    return boundingBox;
}

// 0x599f54 _ZN6glitch5scene13SAnimatedMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
void SAnimatedMesh::setBoundingBox(const core::aabbox3d<float>& box) {
    boundingBox = box;
}

// 0x599f04 _ZNK6glitch5scene13SAnimatedMesh13getFrameCountEv
std::uint32_t SAnimatedMesh::getFrameCount() const {
    return static_cast<std::uint32_t>(meshes.size());
}

// 0x599f18 _ZN6glitch5scene13SAnimatedMesh7getMeshEiiii
// The mesh of the frame `frame` (no range test, as in the original), or null without frames; the result holds a use.
boost::intrusive_ptr<IMesh> SAnimatedMesh::getMesh(std::int32_t frame, std::int32_t /*detailLevel*/,
                                                   std::int32_t /*startFrameLoop*/, std::int32_t /*endFrameLoop*/) {
    if (meshes.empty()) {
        return boost::intrusive_ptr<IMesh>();
    }
    return meshes[static_cast<std::size_t>(frame)];
}

// 0x599f88 _ZNK6glitch5scene13SAnimatedMesh11getMeshTypeEv
std::uint32_t SAnimatedMesh::getMeshType() const {
    return meshType;
}

// 0x59a1c0 _ZN6glitch5scene13SAnimatedMesh22recalculateBoundingBoxEv
void SAnimatedMesh::recalculateBoundingBox() {
    boundingBox.MinEdge = core::vector3d<float>{0.0f, 0.0f, 0.0f};
    boundingBox.MaxEdge = core::vector3d<float>{0.0f, 0.0f, 0.0f};
    if (meshes.empty()) {
        return;
    }
    boundingBox = meshes.front()->getBoundingBox();
    for (std::size_t i = 1; i < meshes.size(); ++i) {
        boundingBox.addInternalBox(meshes[i]->getBoundingBox());
    }
}

// 0x59ae1c _ZN6glitch5scene17createAnimatedMeshERKN5boost13intrusive_ptrINS0_5IMeshEEENS0_20E_ANIMATED_MESH_TYPEE
boost::intrusive_ptr<IAnimatedMesh> createAnimatedMesh(const boost::intrusive_ptr<IMesh>& mesh, E_ANIMATED_MESH_TYPE type) {
    return boost::intrusive_ptr<IAnimatedMesh>(new SAnimatedMesh(mesh, type), true);
}

}  // namespace glitch::scene
