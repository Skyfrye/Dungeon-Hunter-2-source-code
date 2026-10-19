// Bodies of glitch::scene::CMesh and CMesh::SBuffer (canonical class: scene/CMesh.hpp). This file replaces
// src/tb_scene-collada-gui-glitch_scene_CMesh-0.cpp, src/tb_scene-collada-gui-glitch_scene_CMesh_SBuffer-0.cpp and the CMesh bodies
// of src/scene_simple_accessors.cpp. With the counting intrusive_ptr the reference moves that those files could not express are
// done by the handles themselves, so the getters and setMaterial are no longer partial.
#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"

// CMaterial and CMaterialVertexAttributeMap complete (intrusive_ptr needs the reference counting functions found by ADL).
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"

namespace glitch::scene {

// SBuffer. The constructors / copy / assignment / destructor are written out of line so that the header needs no video types.
CMesh::SBuffer::SBuffer() = default;
CMesh::SBuffer::SBuffer(const SBuffer& other) = default;

// 0x6bbcc4 _ZN6glitch5scene5CMesh7SBufferaSERKS2_
// Assigns the three handles: each takes a use of the new object and drops the old one.
CMesh::SBuffer& CMesh::SBuffer::operator=(const SBuffer& other) = default;

// 0x6bbe18 _ZN6glitch5scene5CMesh7SBufferD1Ev
// Drops the vertex-attribute map, the material and the buffer, in that order (the members are destroyed in reverse declaration
// order, which is the same order).
CMesh::SBuffer::~SBuffer() = default;

// 0x6bba70 _ZN6glitch5scene5CMeshC2Ev
// 0x6bbad4 _ZN6glitch5scene5CMeshC1Ev
// The reference count starts at 0 (the constructor clears the word at +0x04); clone() adds the first use.
CMesh::CMesh() {
    referenceCounter = 0;
}

// 0x6bc298 _ZN6glitch5scene5CMeshD1Ev
// 0x6bc27c _ZN6glitch5scene5CMeshD2Ev
// 0x6bc248 _ZN6glitch5scene5CMeshD0Ev (skipped)
// Destroys the buffer vector, which drops every handle of every entry.
CMesh::~CMesh() = default;

// 0x6bc3e4 _ZNK6glitch5scene5CMesh5cloneEv
// A new mesh (operator new(0x2c)) with a copy of the buffer vector and the box; the result holds the only use.
boost::intrusive_ptr<IMesh> CMesh::clone() const {
    auto* copy = new CMesh();
    copy->buffers = buffers;
    copy->boundingBox = boundingBox;
    return boost::intrusive_ptr<IMesh>(copy, true);
}

// 0x6bbb38 _ZNK6glitch5scene5CMesh18getMeshBufferCountEv
// (end - begin) / 12 in the original, the element count here.
std::uint32_t CMesh::getMeshBufferCount() const {
    return static_cast<std::uint32_t>(buffers.size());
}

// 0x6bbb60 _ZNK6glitch5scene5CMesh13getMeshBufferEj
// An index at or past the end gives a null handle; otherwise the handle is copied (a use is added).
boost::intrusive_ptr<CMeshBuffer> CMesh::getMeshBuffer(std::uint32_t index) const {
    if (index >= buffers.size()) {
        return boost::intrusive_ptr<CMeshBuffer>();
    }
    return buffers[index].buffer;
}

// 0x6bbbb8 _ZNK6glitch5scene5CMesh11getMaterialEj
boost::intrusive_ptr<video::CMaterial> CMesh::getMaterial(std::uint32_t index) const {
    if (index >= buffers.size()) {
        return boost::intrusive_ptr<video::CMaterial>();
    }
    return buffers[index].material;
}

// 0x6bbc10 _ZNK6glitch5scene5CMesh24getMaterialVertexAttributeMapEj
boost::intrusive_ptr<video::CMaterialVertexAttributeMap> CMesh::getMaterialVertexAttributeMap(std::uint32_t index) const {
    if (index >= buffers.size()) {
        return boost::intrusive_ptr<video::CMaterialVertexAttributeMap>();
    }
    return buffers[index].vertexAttributeMap;
}

// 0x6bbd6c _ZN6glitch5scene5CMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS4_INS5_27CMaterialVertexAttributeMapEEE
// An index past the end is ignored. The material is stored first, then the map; each takes a use and drops the old handle.
void CMesh::setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                        const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) {
    if (index >= buffers.size()) {
        return;
    }
    SBuffer& slot = buffers[index];
    slot.material = material;                      // +0x04
    slot.vertexAttributeMap = vertexAttributeMap;  // +0x08
}

// 0x6bbc68 _ZNK6glitch5scene5CMesh14getBoundingBoxEv
const core::aabbox3d<float>& CMesh::getBoundingBox() const {
    return boundingBox;
}

// 0x6bbc70 _ZN6glitch5scene5CMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
void CMesh::setBoundingBox(const core::aabbox3d<float>& box) {
    boundingBox = box;
}

// 0x6bbedc _ZN6glitch5scene5CMesh5clearEv
// Erases every entry (each drops its three handles).
void CMesh::clear() {
    buffers.clear();
}

// 0x6bc2cc _ZN6glitch5scene5CMesh22recalculateBoundingBoxEv
// With no entries the box at +0x14 is cleared to the origin (0x6bc3c8..0x6bc3dc). Otherwise, per entry, the box
// of the entry's vertex stream table is computed (v11 = mesh buffer + 0x14, first = +0x24, last = +0x28 of the
// embedded primitive stream, 0x6bc370..0x6bc394) with glitch::video::CVertexStreams::computeBoundingBox; the
// first result is copied into +0x14 and the later ones are merged with core::aabbox3d<float>::addInternalBox
// (0x6bc3ac). The temporary starts at the inverted unit box (-1..1), as the listing's stores at 0x6bc37c show.
void CMesh::recalculateBoundingBox() {
    if (buffers.empty()) {
        boundingBox.MinEdge = core::vector3d<float>{0.0f, 0.0f, 0.0f};
        boundingBox.MaxEdge = core::vector3d<float>{0.0f, 0.0f, 0.0f};
        return;
    }
    bool first = true;
    for (const SBuffer& entry : buffers) {
        CMeshBuffer* buffer = entry.buffer.get();
        core::aabbox3d<float> box{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
        buffer->vertexStreams->computeBoundingBox(buffer->primitiveStream.m_vertexStart,
                                                  buffer->primitiveStream.m_vertexEnd, box);
        if (first) {
            boundingBox = box;
            first = false;
        } else {
            boundingBox.addInternalBox(box);
        }
    }
}

// 0x6bc664 _ZN6glitch5scene5CMesh13addMeshBufferERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS2_INS_5video9CMaterialEEERKNS2_INS7_27CMaterialVertexAttributeMapEEE
// A null mesh buffer adds nothing. Otherwise one entry with the three handles is appended.
void CMesh::addMeshBuffer(const boost::intrusive_ptr<CMeshBuffer>& buffer, const boost::intrusive_ptr<video::CMaterial>& material,
                          const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) {
    if (buffer.get() == nullptr) {
        return;
    }
    SBuffer entry;
    entry.buffer = buffer;
    entry.material = material;
    entry.vertexAttributeMap = vertexAttributeMap;
    buffers.push_back(entry);
}

}  // namespace glitch::scene
