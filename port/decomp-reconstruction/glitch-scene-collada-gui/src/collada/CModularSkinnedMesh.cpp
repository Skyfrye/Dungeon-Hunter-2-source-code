// Bodies of glitch::collada::CModularSkinnedMesh and its SModularBuffer (canonical classes: collada/CModularSkinnedMesh.hpp). This file
// replaces src/modular_skinned_mesh.cpp and src/tb_scene-collada-gui-glitch_collada_CModularSkinnedMesh-0.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/collada/CModularSkinnedMesh.hpp"

#include <cstdio>
#include <cstring>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada {

namespace {

// glitch::video::CVertexStreams::setStream(SVertexStream*, SVertexStream const&, int, bool) with the flag folded to true (the clone
// 0x647ee0): the stream takes the source's buffer, its offset plus `delta`, value type, component count and stride, then the table's
// homogeneity is recomputed. The general function (0x5abb58) has no body in glitch-video yet.
void setStreamFromStream(video::CVertexStreams& table, video::SVertexStream* stream, const video::SVertexStream& source, std::int32_t delta) {
    stream->buffer = source.buffer;
    stream->field0a = source.field0a;
    stream->field0c = source.field0c;
    stream->offset = source.offset + static_cast<std::uint32_t>(delta);
    stream->field0e = source.field0e;
    table.updateHomogeneityInternal(true);
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// SModularBuffer
// ---------------------------------------------------------------------------------------------------------------------

// 0x646968 _ZN6glitch7collada19CModularSkinnedMesh14SModularBufferC1Ev (C2 0x646994)
// The three handles, the index vector and the vertex buffer are empty; the flag byte at +0x1c is set.
CModularSkinnedMesh::SModularBuffer::SModularBuffer() = default;

// 0x647430 _ZN6glitch7collada19CModularSkinnedMesh14SModularBufferC1ERKS2_
// The three handles take a use each, the module index vector is copied, the vertex buffer handle takes a use and the flag is copied.
CModularSkinnedMesh::SModularBuffer::SModularBuffer(const SModularBuffer& other) = default;

// 0x647d18 _ZN6glitch7collada19CModularSkinnedMesh14SModularBufferaSERKS2_
// As the copy constructor, assigning each member (a use on the new object, a drop on the old).
CModularSkinnedMesh::SModularBuffer& CModularSkinnedMesh::SModularBuffer::operator=(const SModularBuffer& other) = default;

// 0x647a68 _ZN6glitch7collada19CModularSkinnedMesh14SModularBufferD1Ev (0x647cc8 is the D2 form)
// Drops the vertex buffer, frees the index vector and drops the map, the material and the buffer.
CModularSkinnedMesh::SModularBuffer::~SModularBuffer() = default;

// 0x647970 _ZN6glitch7collada19CModularSkinnedMesh14SModularBuffer10reallocateEjjb
// The vertex buffer at +0x18 is replaced by a fresh allocation of `vertexBytes` when it has no data and a size is wanted, or when the
// size differs and (`exact` is set or more is needed). The merged mesh buffer's index buffer (its primitive stream's buffer) gets the same
// treatment for `indexBytes`. Returns 0.
int CModularSkinnedMesh::SModularBuffer::reallocate(std::uint32_t vertexBytes, std::uint32_t indexBytes, bool exact) {
    video::IBuffer* vertices = vertexBuffer.get();
    const bool growVertices = (vertices->m_data == nullptr && vertexBytes != 0) ||
                              (vertexBytes != vertices->m_size && (exact || vertexBytes > vertices->m_size));
    if (growVertices) {
        vertices->reset(vertexBytes, new std::uint8_t[vertexBytes], true);
    }
    boost::intrusive_ptr<video::IBuffer> indices = buffer->primitiveStream.m_indexBuffer;
    bool growIndices = indices->m_data != nullptr ? indexBytes > indices->m_size : indexBytes != 0;
    if (!growIndices) {
        growIndices = indexBytes != indices->m_size && exact;
    }
    if (growIndices) {
        indices->reset(indexBytes, new std::uint8_t[indexBytes], true);
    }
    return 0;
}

// ---------------------------------------------------------------------------------------------------------------------
// CModularSkinnedMesh
// ---------------------------------------------------------------------------------------------------------------------

// 0x649120 _ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE
// (C2 0x64928c). Reference count 0, the database copied (a use), uid empty, the root and the instance stored, skinning enabled, the
// box (-1,-1,-1)..(1,1,1), the dirty byte set, the word at +0x3c set to 1 when `mergeFlag` is zero. One module slot is made per
// category (plus the extra slots) and each slot gets the category's default module (looked up by name) without updating; updateBuffer
// runs last with the `update` argument.
CModularSkinnedMesh::CModularSkinnedMesh(const CColladaDatabase& source, SInstanceModularSkin* instanceRecord, CRootSceneNode* rootNode,
                                         int mergeFlag, bool update, video::IVideoDriver* /*driver*/) {
    referenceCounter = 0;
    copyDatabase(database, source);
    uid = "";
    root = rootNode;
    outputBufferNeeded = false;
    bufferFlags = 0;
    skinningEnabled = true;
    instance = instanceRecord;
    boundingBoxDirty = true;
    const std::uint32_t slotCount = static_cast<std::uint32_t>(instanceRecord->extraSlotCount + instanceRecord->categoryCount);
    if (mergeFlag == 0) {
        unk_3c = 1;
    }
    setModuleCount(slotCount, false);
    for (std::uint32_t i = 0; i < slotCount; ++i) {
        const std::int32_t moduleId = getModuleId(instance->categories[i].defaultModule);
        setCategoryModule(static_cast<int>(i), moduleId, false);
    }
    updateBuffer(update);
}

// 0x647afc _ZN6glitch7collada19CModularSkinnedMeshD1Ev (0x647b70 is the D2 form; D0 0x647b54 skipped)
// Destroys the buffer vector and the module vector, then the ISkinnedMesh part.
CModularSkinnedMesh::~CModularSkinnedMesh() = default;

// 0x6469c0 _ZNK6glitch7collada19CModularSkinnedMesh5cloneEv
boost::intrusive_ptr<scene::IMesh> CModularSkinnedMesh::clone() const {
    return boost::intrusive_ptr<scene::IMesh>();
}

// 0x646b54 _ZNK6glitch7collada19CModularSkinnedMesh18getMeshBufferCountEv
std::uint32_t CModularSkinnedMesh::getMeshBufferCount() const {
    return static_cast<std::uint32_t>(buffers.size());
}

// 0x646b68 _ZNK6glitch7collada19CModularSkinnedMesh13getMeshBufferEj
// The merged buffer, or, for an unmerged entry, the first contributing module's own buffer 0.
boost::intrusive_ptr<scene::CMeshBuffer> CModularSkinnedMesh::getMeshBuffer(std::uint32_t index) const {
    const SModularBuffer& entry = buffers[index];
    if (entry.merged) {
        return entry.buffer;
    }
    return modules[entry.moduleIndices[0]].mesh->getMeshBuffer(0);
}

// 0x646bd4 _ZNK6glitch7collada19CModularSkinnedMesh11getMaterialEj
boost::intrusive_ptr<video::CMaterial> CModularSkinnedMesh::getMaterial(std::uint32_t index) const {
    return buffers[index].material;
}

// 0x646bf8 _ZNK6glitch7collada19CModularSkinnedMesh29getMaterialVertexAttributeMapEj
boost::intrusive_ptr<video::CMaterialVertexAttributeMap> CModularSkinnedMesh::getMaterialVertexAttributeMap(std::uint32_t index) const {
    return buffers[index].vertexAttributeMap;
}

// 0x6470a8 _ZN6glitch7collada19CModularSkinnedMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS4_INS5_26CMaterialVertexAttributeMapEEE
// Stores the material and the map in the buffer entry (the modules are not told).
void CModularSkinnedMesh::setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                                      const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) {
    buffers[index].material = material;
    buffers[index].vertexAttributeMap = vertexAttributeMap;
}

// 0x646c1c _ZN6glitch7collada19CModularSkinnedMesh18computeBoundingBoxEv
// The first module that exists seeds the box (its getBoundingBox, K 0x24); the modules after it are added. The dirty byte is cleared.
// The original walks past the end of the vector when no module exists; the port leaves the box alone in that case.
void CModularSkinnedMesh::computeBoundingBox() {
    auto it = modules.begin();
    for (; it != modules.end(); ++it) {
        if (it->mesh) {
            boundingBox = it->mesh->getBoundingBox();
            break;
        }
    }
    if (it != modules.end()) {
        for (++it; it != modules.end(); ++it) {
            if (it->mesh) {
                boundingBox.addInternalBox(it->mesh->getBoundingBox());
            }
        }
    }
    boundingBoxDirty = false;
}

// 0x646cdc _ZNK6glitch7collada19CModularSkinnedMesh14getBoundingBoxEv
// Recomputes the box first when the dirty byte is set.
const core::aabbox3d<float>& CModularSkinnedMesh::getBoundingBox() const {
    if (boundingBoxDirty) {
        const_cast<CModularSkinnedMesh*>(this)->computeBoundingBox();
    }
    return boundingBox;
}

// 0x646a94 _ZNK6glitch7collada19CModularSkinnedMesh7getTypeEv
std::uint32_t CModularSkinnedMesh::getType() const {
    return 3;
}

// 0x646a9c _ZN6glitch7collada19CModularSkinnedMesh9onAnimateEj
// Every module that exists animates (K 0x34); the box becomes dirty.
void CModularSkinnedMesh::onAnimate(std::uint32_t timeMs) {
    for (SModule& module : modules) {
        if (module.mesh) {
            module.mesh->onAnimate(timeMs);
        }
    }
    boundingBoxDirty = true;
}

// 0x647774 _ZN6glitch7collada19CModularSkinnedMesh28onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
// 16 while skinning is off. An unmerged buffer skins its modules at step 1 and answers 16. A merged buffer asks the driver for the
// process buffer of its mesh buffer (type 1 for step 0, the vertex attribute mask of the technique's first pass shader masked with
// 0x20001); when the answer has bit 4 the buffer's bit in the mask is set and the buffer is skinned. The answer is returned.
std::int32_t CModularSkinnedMesh::onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver, std::uint32_t index) {
    if (!skinningEnabled) {
        return 16;
    }
    SModularBuffer& entry = buffers[index];
    if (!entry.merged) {
        if (step == 1) {
            skin(index);
        }
        return 16;
    }
    boost::intrusive_ptr<scene::CMeshBuffer> meshBuffer = entry.buffer;
    video::CMaterial* material = entry.material.get();
    const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
    const std::uint32_t flags = static_cast<const video::IShader*>(technique.passes[0].shader)->m_vertexAttributeMask & 0x20001u;
    const std::int32_t answer = driver->getProcessBuffer(step == 0 ? 1 : 0, meshBuffer->primitiveStream.m_vertexStart,
                                                         meshBuffer->primitiveStream.m_vertexEnd, flags, meshBuffer->vertexStreams,
                                                         &meshBuffer->owner, false);
    if ((answer & 4) != 0) {
        bufferFlags |= 1u << (index & 0x1f);
        skin(index);
    }
    return answer;
}

// 0x646af8 _ZN6glitch7collada19CModularSkinnedMesh15updateTechniqueEj
// Every contributing module that exists updates its technique for buffer 0 (K 0x48).
void CModularSkinnedMesh::updateTechnique(std::uint32_t index) {
    for (std::uint32_t moduleIndex : buffers[index].moduleIndices) {
        const boost::intrusive_ptr<ISkinnedMesh>& module = modules[moduleIndex].mesh;
        if (module) {
            module->updateTechnique(0);
        }
    }
}

// 0x647fcc _ZN6glitch7collada19CModularSkinnedMesh4skinEj
// An unmerged buffer skins each contributing module that exists (K 0x4c, buffer 0). A merged buffer maps the merged vertex buffer for
// writing and walks its modules: each one updates its technique (K 0x48); a module that needs an output buffer has its position stream
// (and its normal stream, when both it and the merged table have one) repointed into the merged buffer at the running vertex offset
// (the module's own stream descriptions are saved first), is skinned (K 0x4c), advances the offset by its vertex count and gets its
// stream descriptions back; any other module is simply skinned. The mapping is released at the end.
void CModularSkinnedMesh::skin(std::uint32_t index) {
    SModularBuffer& entry = buffers[index];
    if (!entry.merged) {
        for (std::uint32_t moduleIndex : entry.moduleIndices) {
            ISkinnedMesh* module = modules[moduleIndex].mesh.get();
            if (module != nullptr) {
                module->skin(0);
            }
        }
        return;
    }
    video::CVertexStreams& mergedTable = *entry.buffer->vertexStreams;
    video::SVertexStream* mergedEntries = mergedTable.m_streams.data();
    video::SVertexStream* mergedNormals =
        (mergedTable.m_attributeMask & 0x20000u) != 0 ? &mergedTable.m_streams[static_cast<std::uint8_t>(mergedTable.m_count0c + 1u)] : nullptr;
    boost::intrusive_ptr<video::IBuffer> mergedVertexBuffer = mergedEntries[0].buffer;
    std::uint8_t* mapped = mergedVertexBuffer->map(4);
    video::SVertexStreamData savedNormals;
    savedNormals.field08 = 0xff;  // the listing starts the record from the word 0xff
    std::int32_t running = 0;
    for (std::uint32_t moduleIndex : entry.moduleIndices) {
        ISkinnedMesh* module = modules[moduleIndex].mesh.get();
        if (module == nullptr) {
            continue;
        }
        module->updateTechnique(0);
        if (!module->needOutputBuffer()) {
            module->skin(0);
            continue;
        }
        boost::intrusive_ptr<scene::CMeshBuffer> moduleBuffer = module->getMeshBuffer(0);
        video::CVertexStreams& moduleTable = *moduleBuffer->vertexStreams;
        video::SVertexStream* moduleEntries = moduleTable.m_streams.data();
        video::SVertexStreamData savedPositions;
        savedPositions.buffer = moduleEntries[0].buffer;
        savedPositions.offset = moduleEntries[0].offset;
        savedPositions.field08 = moduleEntries[0].field0a;
        savedPositions.field0a = 0;
        savedPositions.field0c = moduleEntries[0].field0c;
        savedPositions.field0e = moduleEntries[0].field0e;
        const std::int32_t delta = running - static_cast<std::int32_t>(moduleBuffer->primitiveStream.m_vertexStart * mergedEntries[0].field0e);
        setStreamFromStream(moduleTable, &moduleEntries[0], mergedEntries[0], delta);
        if ((moduleTable.m_attributeMask & 0x20000u) != 0 && mergedNormals != nullptr) {
            video::SVertexStream* moduleNormals = &moduleEntries[static_cast<std::uint8_t>(moduleTable.m_count0c + 1u)];
            savedNormals = *moduleNormals;
            setStreamFromStream(moduleTable, moduleNormals, *mergedNormals, delta);
            module->skin(0);
            running += static_cast<std::int32_t>(moduleTable.m_field08 * mergedEntries[0].field0e);
            moduleTable.setStream(&moduleEntries[0], savedPositions, true);
            moduleTable.setStream(moduleNormals, savedNormals, true);
        } else {
            module->skin(0);
            running += static_cast<std::int32_t>(moduleTable.m_field08 * mergedEntries[0].field0e);
            moduleTable.setStream(&moduleEntries[0], savedPositions, true);
        }
    }
    if (mapped != nullptr) {
        mergedVertexBuffer->unmap();
    }
}

// 0x646af0 _ZNK6glitch7collada19CModularSkinnedMesh16needOutputBufferEv
bool CModularSkinnedMesh::needOutputBuffer() const {
    return outputBufferNeeded;
}

// 0x647138 _ZN6glitch7collada19CModularSkinnedMesh20setIsSkinningEnabledEb
// Only acts while bit 0 of the buffer mask is set: every module that exists gets the call (K 0x54), then the ISkinnedMesh flag is
// stored. With the bit clear nothing happens.
void CModularSkinnedMesh::setIsSkinningEnabled(bool enabled) {
    if ((bufferFlags & 1) == 0) {
        return;
    }
    for (SModule& module : modules) {
        if (module.mesh) {
            module.mesh->setIsSkinningEnabled(enabled);
        }
    }
    ISkinnedMesh::setIsSkinningEnabled(enabled);
}

// 0x646a8c _ZN6glitch7collada19CModularSkinnedMesh10reallocateEj
int CModularSkinnedMesh::reallocate(std::uint32_t /*size*/) {
    return 0;
}

// 0x6483c8 _ZN6glitch7collada19CModularSkinnedMesh12updateBufferEb
// Rebuilds the merged buffers. The old buffers go. Every module that exists is put into a buffer: one that needs an output buffer joins
// the first buffer with an equal material (K 0x18 buffer 0), any other module (or the first of a material) opens a new buffer whose
// merged flag is the module's needOutputBuffer. Then, per merged buffer: a vertex stream table for the vertex attribute mask of the
// material's technique is made, a new driver vertex buffer (type 0, usage 4) is laid out for it (with `flag` the position and normal
// streams are left buffer-less, because they are skinned into the process buffer; the mask leaves out attribute 17 and 0), the vertex
// and index totals of the contributing output modules are counted, the merged mesh buffer is built over a new index buffer, and the
// buffers are sized by the mode word (+0x3c: 0 and 1 reallocate, 1 exactly; 2 only checks the existing size and logs "failed to allocate
// buffer of size" with the answer 2; others do nothing). The module streams are copied into the table (copyStreams, with a running vertex
// offset) and their 16-bit indices, raised by the vertices before them, into the index buffer. Answers 0.
int CModularSkinnedMesh::updateBuffer(bool flag) {
    const std::uint32_t moduleCount = static_cast<std::uint32_t>(modules.size());
    buffers.clear();
    for (std::uint32_t i = 0; i < moduleCount; ++i) {
        ISkinnedMesh* module = modules[i].mesh.get();
        if (module == nullptr) {
            continue;
        }
        boost::intrusive_ptr<video::CMaterial> material = module->getMaterial(0);
        bool joined = false;
        if (module->needOutputBuffer() && !buffers.empty()) {
            for (SModularBuffer& candidate : buffers) {
                if (*candidate.material == *material) {
                    candidate.moduleIndices.push_back(i);
                    joined = true;
                    break;
                }
            }
        }
        if (!joined) {
            buffers.push_back(SModularBuffer());
            SModularBuffer& added = buffers.back();
            added.moduleIndices.push_back(i);
            added.material = material;
            added.merged = module->needOutputBuffer();
        }
    }
    outputBufferNeeded = false;
    for (SModularBuffer& entry : buffers) {
        if (!entry.merged) {
            continue;
        }
        outputBufferNeeded = true;
        video::CMaterial* material = entry.material.get();
        const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
        boost::intrusive_ptr<video::CVertexStreams> table =
            video::CVertexStreams::allocate(static_cast<const video::IShader*>(technique.passes[0].shader)->m_vertexAttributeMask);
        video::IVideoDriver* driver = entry.material->m_renderer->m_driver;
        entry.vertexBuffer = driver->createBuffer(0, 4, 0, nullptr, true);
        std::uint32_t stride;
        if (flag) {
            stride = table->setupStreams(entry.vertexBuffer, 0xFFFDFFFEu);
            video::SVertexStreamData description;
            description.field08 = 6;
            description.field0a = 0;
            description.field0c = 3;
            description.field0e = 0;
            table->setStream(&table->m_streams[0], description, true);
            if ((table->m_attributeMask & 0x20000u) != 0) {
                table->setStream(&table->m_streams[table->m_count0c + 1u], description, true);
            }
        } else {
            stride = table->setupStreams(entry.vertexBuffer, 0xFFFFFFFFu);
        }
        std::uint32_t vertexTotal = 0;
        std::uint32_t indexTotal = 0;
        for (std::uint32_t moduleIndex : entry.moduleIndices) {
            ISkinnedMesh* module = modules[moduleIndex].mesh.get();
            if (module != nullptr && module->needOutputBuffer()) {
                boost::intrusive_ptr<scene::CMeshBuffer> moduleBuffer = module->getMeshBuffer(0);
                indexTotal += moduleBuffer->primitiveStream.m_count;  // +0x20
                vertexTotal += module->getVertexCount();
            }
        }
        table->m_field08 = vertexTotal;
        if (entry.buffer == nullptr) {
            boost::intrusive_ptr<video::IBuffer> indexBuffer = driver->createBuffer(1, 4, 0, nullptr, true);
            boost::intrusive_ptr<scene::CMeshBuffer> created(new scene::CMeshBuffer(), true);
            created->vertexStreams = table;                          // +0x14
            created->primitiveStream.m_indexBuffer = indexBuffer;    // +0x18
            created->primitiveStream.m_offset = 0;                   // +0x1c
            created->primitiveStream.m_count = indexTotal;           // +0x20
            created->primitiveStream.m_vertexStart = 0;              // +0x24
            created->primitiveStream.m_vertexEnd = vertexTotal;      // +0x28
            created->primitiveStream.m_indexType = 1;                // +0x2c
            created->primitiveStream.m_primitiveType = 6;            // +0x2e
            created->owner = nullptr;                                // +0x30
            created->flag_34 = 1;                                    // +0x34
            entry.buffer = created;
        }
        const std::uint32_t vertexBytes = stride * vertexTotal;
        const std::uint32_t indexBytes = 2 * indexTotal;
        if (unk_3c == 0 || unk_3c == 1) {
            const int result = entry.reallocate(vertexBytes, indexBytes, unk_3c != 0);
            if (result != 0) {
                return result;
            }
        } else if (unk_3c == 2) {
            char text[128];
            if (vertexBytes > entry.vertexBuffer->m_size) {
                std::sprintf(text, "failed to allocate buffer of size %u (max set to %u)", vertexBytes, entry.vertexBuffer->m_size);
                os::Printer::log("updateBuffer", text, ELL_ERROR);
                return 2;
            }
            if (indexBytes > entry.buffer->primitiveStream.m_indexBuffer->m_size) {
                std::sprintf(text, "failed to allocate buffer of size %u (max set to %u)", indexBytes,
                             entry.buffer->primitiveStream.m_indexBuffer->m_size);
                os::Printer::log("updateBuffer", text, ELL_ERROR);
                return 2;
            }
        }
        scene::CMeshBuffer& merged = *entry.buffer;
        std::uint8_t* mappedIndices = merged.primitiveStream.m_indexBuffer->map(4);
        std::uint8_t* writeAt = mappedIndices != nullptr ? mappedIndices + merged.primitiveStream.m_offset : nullptr;
        std::uint32_t vertexOffset = 0;
        std::uint32_t indexBase = 0;
        for (std::uint32_t moduleIndex : entry.moduleIndices) {
            ISkinnedMesh* module = modules[moduleIndex].mesh.get();
            if (module == nullptr) {
                continue;
            }
            boost::intrusive_ptr<video::CVertexStreams> moduleTable = module->getMeshBuffer(0)->vertexStreams;
            table->copyStreams(boost::intrusive_ptr<const video::CVertexStreams>(moduleTable.get(), true), 0, moduleTable->m_field08,
                               static_cast<std::int32_t>(vertexOffset), 0xFFFDFFFEu);
            vertexOffset += moduleTable->m_field08;
            boost::intrusive_ptr<scene::CMeshBuffer> moduleBuffer = module->getMeshBuffer(0);
            const video::IBuffer* sourceIndices = moduleBuffer->primitiveStream.m_indexBuffer.get();
            std::uint8_t* source = sourceIndices->map(1);
            if (source != nullptr) {
                source += moduleBuffer->primitiveStream.m_offset;
            }
            const std::uint32_t count = moduleBuffer->primitiveStream.m_count;
            if (count != 0 && source != nullptr && writeAt != nullptr) {
                for (std::uint32_t n = 0; n < count; ++n) {
                    std::uint16_t value;
                    std::memcpy(&value, source + 2 * n, 2);
                    value = static_cast<std::uint16_t>(indexBase + value);
                    std::memcpy(writeAt + 2 * n, &value, 2);
                }
                writeAt += 2 * count;
            }
            if (source != nullptr) {
                moduleBuffer->primitiveStream.m_indexBuffer->unmap();
            }
            indexBase += moduleTable->m_field08;
        }
        if (mappedIndices != nullptr) {
            merged.primitiveStream.m_indexBuffer->unmap();
        }
    }
    return 0;
}

// 0x648db4 _ZN6glitch7collada19CModularSkinnedMesh9setModuleEjRKN5boost13intrusive_ptrINS0_12ISkinnedMeshEEE
// Stores the module (a use on it, a drop on the old one) unless it is the one already in the slot, then rebuilds the buffers with the
// flag `(bufferFlags & 1) ^ 1`.
int CModularSkinnedMesh::setModule(std::uint32_t index, const boost::intrusive_ptr<ISkinnedMesh>& mesh) {
    SModule& slot = modules[index];
    if (slot.mesh == mesh) {
        return 0;
    }
    slot.mesh = mesh;
    return updateBuffer(((bufferFlags ^ 1u) & 1u) != 0);
}

// 0x648e18 _ZN6glitch7collada19CModularSkinnedMesh14setModuleCountEjb
// The slots above the new count are emptied (module dropped, id -1), the vector is resized (new slots empty), and when `update` is set
// and the count shrank the buffers are rebuilt.
int CModularSkinnedMesh::setModuleCount(std::uint32_t count, bool update) {
    const std::uint32_t oldCount = static_cast<std::uint32_t>(modules.size());
    for (std::uint32_t i = count; i < oldCount; ++i) {
        modules[i].mesh.reset();
        modules[i].moduleId = -1;
    }
    modules.resize(count);
    for (std::uint32_t i = oldCount; i < count; ++i) {
        modules[i].mesh.reset();
        modules[i].moduleId = -1;
    }
    if (update && count < oldCount) {
        return updateBuffer(((bufferFlags ^ 1u) & 1u) != 0);
    }
    return 0;
}

// 0x648f34 _ZN6glitch7collada19CModularSkinnedMesh10setModulesEPKN5boost13intrusive_ptrINS0_12ISkinnedMeshEEEj
// With a count: the slot count becomes that count; without: the slot count is kept (nothing to do when it is zero). Each slot takes
// the module of the same index; the buffers are rebuilt.
int CModularSkinnedMesh::setModules(const boost::intrusive_ptr<ISkinnedMesh>* list, std::uint32_t count) {
    std::uint32_t n = count;
    if (count != 0) {
        setModuleCount(count, false);
    } else {
        n = static_cast<std::uint32_t>(modules.size());
        setModuleCount(n, false);
        if (n == 0) {
            return updateBuffer(((bufferFlags ^ 1u) & 1u) != 0);
        }
    }
    for (std::uint32_t i = 0; i < n; ++i) {
        modules[i].mesh = list[i];
    }
    return updateBuffer(((bufferFlags ^ 1u) & 1u) != 0);
}

// 0x648fd0 _ZN6glitch7collada19CModularSkinnedMesh17setCategoryModuleEiib
// When the category's slot does not already hold `module`: drops the module in the slot (id -1), and for a module other than -1
// constructs its controller from the category's module record (CColladaDatabase::constructController with the driver, the record,
// the root and the flag true), storing the result and the module id. Rebuilds the buffers when `update` is set.
// The driver is the video driver of the resource file manager's device (Inst +0x20, device +0x10).
void CModularSkinnedMesh::setCategoryModule(int category, int module, bool update) {
    SModule& slot = modules[category];
    if (slot.moduleId == module) {
        return;
    }
    if (slot.mesh) {
        slot.mesh.reset();
        slot.moduleId = -1;
    }
    if (module != -1) {
        video::IVideoDriver* driver = CResFileManager::Inst->device->videoDriver;
        IMesh* built = database.constructController(driver, instance->categories[category].modules[module].controller, root, true);
        if (built != nullptr) {
            slot.mesh = boost::intrusive_ptr<ISkinnedMesh>(static_cast<ISkinnedMesh*>(built));
            slot.moduleId = module;
        }
    }
    if (update) {
        updateBuffer(((bufferFlags ^ 1u) & 1u) != 0);
    }
}

// 0x6490e4 _ZN6glitch7collada19CModularSkinnedMesh17setCategoryModuleEPKcS3_b
void CModularSkinnedMesh::setCategoryModule(const char* category, const char* module, bool update) {
    const std::int32_t categoryId = getCategoryId(category);
    const std::int32_t moduleId = getModuleId(module);
    setCategoryModule(categoryId, moduleId, update);
}

// 0x6469cc _ZNK6glitch7collada19CModularSkinnedMesh15getCategoryNameEi
const char* CModularSkinnedMesh::getCategoryName(int category) const {
    if (category < instance->categoryCount) {
        return instance->categories[category].name;
    }
    return nullptr;
}

// 0x6469e8 _ZNK6glitch7collada19CModularSkinnedMesh13getModuleNameEii
const char* CModularSkinnedMesh::getModuleName(int category, int module) const {
    if (category < instance->categoryCount) {
        const SModularCategory& entry = instance->categories[category];
        if (module < entry.moduleCount) {
            return entry.modules[module].controller->name;
        }
    }
    return nullptr;
}

// 0x646a28 _ZNK6glitch7collada19CModularSkinnedMesh16getCategoryCountEv
std::int32_t CModularSkinnedMesh::getCategoryCount() const {
    return instance->categoryCount;
}

// 0x646a34 _ZNK6glitch7collada19CModularSkinnedMesh22getCategoryModuleCountEi
std::int32_t CModularSkinnedMesh::getCategoryModuleCount(int category) const {
    return instance->categories[category].moduleCount;
}

// 0x646a48 _ZNK6glitch7collada19CModularSkinnedMesh18getCurrentModuleIdEi
std::int32_t CModularSkinnedMesh::getCurrentModuleId(int category) const {
    return modules[category].moduleId;
}

// 0x646a54 _ZNK6glitch7collada19CModularSkinnedMesh20getCurrentModuleNameEi
// Null when the category has no module selected.
const char* CModularSkinnedMesh::getCurrentModuleName(int category) const {
    const std::int32_t moduleId = modules[category].moduleId;
    if (moduleId == -1) {
        return nullptr;
    }
    return instance->categories[category].modules[moduleId].controller->name;
}

// 0x6474b8 _ZNK6glitch7collada19CModularSkinnedMesh11getModuleIdEPKc
// The index of the module with this name inside the first category that has one; -1 when none has.
std::int32_t CModularSkinnedMesh::getModuleId(const char* name) const {
    for (std::int32_t category = 0; category < instance->categoryCount; ++category) {
        const SModularCategory& entry = instance->categories[category];
        for (std::int32_t module = 0; module < entry.moduleCount; ++module) {
            if (std::strcmp(entry.modules[module].controller->name, name) == 0) {
                return module;
            }
        }
    }
    return -1;
}

// 0x647538 _ZNK6glitch7collada19CModularSkinnedMesh13getCategoryIdEPKc
std::int32_t CModularSkinnedMesh::getCategoryId(const char* name) const {
    for (std::int32_t category = 0; category < instance->categoryCount; ++category) {
        if (std::strcmp(instance->categories[category].name, name) == 0) {
            return category;
        }
    }
    return -1;
}

}  // namespace glitch::collada
