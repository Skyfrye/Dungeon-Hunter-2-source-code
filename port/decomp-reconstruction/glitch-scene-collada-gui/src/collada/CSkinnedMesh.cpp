// Bodies of glitch::collada::ISkinnedMesh, SSkinBuffer, SSkinCache and glitch::collada::CSkinnedMesh (canonical classes:
// collada/CSkinnedMesh.hpp). This file replaces src/skinned_mesh.cpp, src/tb_scene-collada-gui-glitch_collada_CSkinnedMesh-0.cpp and the
// ISkinnedMesh accessors of src/collada_misc.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/COnDemandReader.hpp"

#include <utility>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/IColladaSkinTechnique.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {
// 0x663ca8: the compiler clone of CVertexStreams::setStreamBuffer with the flag argument folded to true (defined in glitch-video).
void setStreamBufferClone1(CVertexStreams* self, SVertexStream* stream, const boost::intrusive_ptr<IBuffer>* buffer)
    __asm__("_ZN6glitch5video14CVertexStreams15setStreamBufferEPNS0_13SVertexStreamERKN5boost13intrusive_ptrINS0_7IBufferEEEb.clone.1");
}  // namespace glitch::video

namespace glitch::collada {

namespace {

// glitch::core::IdentityMatrix.
const core::CMatrix4<float>& identityMatrix() {
    static const core::CMatrix4<float> identity{core::CMatrix4<float>::EM4CONST_IDENTITY};
    return identity;
}

// The low 16 bits of the cache's dirty word are set, the high 16 are kept (`~(~HIWORD(x) << 16)`).
void markCacheDirty(SSkinCache& cache) {
    cache.dirty = (cache.dirty & 0xffff0000u) | 0xffffu;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// SSkinCache, SSkinBuffer
// ---------------------------------------------------------------------------------------------------------------------

// 0x663b54 _ZN6glitch7collada10SSkinCacheD1Ev
// Drops the handle at +0x28, frees the two pointer vectors and the matrix palette (the members do it).
SSkinCache::~SSkinCache() = default;

// 0x664530 _ZN6glitch7collada11SSkinBufferaSERKS1_
// The buffer, the material and the map are assigned (a use on each new object, a drop on each old one), then the technique word and
// the three technique bytes are copied.
SSkinBuffer& SSkinBuffer::operator=(const SSkinBuffer& other) {
    buffer = other.buffer;
    material = other.material;
    vertexAttributeMap = other.vertexAttributeMap;
    technique = other.technique;
    requestedTechnique = other.requestedTechnique;
    appliedTechnique = other.appliedTechnique;
    unk_12 = other.unk_12;
    return *this;
}

// 0x6645f8 _ZN6glitch7collada11SSkinBufferD1Ev
// Drops the vertex-attribute map, the material and the buffer.
SSkinBuffer::~SSkinBuffer() = default;

// ---------------------------------------------------------------------------------------------------------------------
// ISkinnedMesh
// ---------------------------------------------------------------------------------------------------------------------

// 0x669bf4 _ZN6glitch7collada12ISkinnedMeshD1Ev (D0 0x669dc4 skipped)
// Restores the IMesh vtable and destroys the database handle at +0x0c (IMesh's destructor does it here).
ISkinnedMesh::~ISkinnedMesh() = default;

// 0x669b6c _ZN6glitch7collada12ISkinnedMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE (empty)
void ISkinnedMesh::setBoundingBox(const core::aabbox3d<float>& /*box*/) {}

// 0x669b64 _ZN6glitch7collada12ISkinnedMesh20setIsSkinningEnabledEb
void ISkinnedMesh::setIsSkinningEnabled(bool enabled) {
    skinningEnabled = enabled;
}

// 0x669b70 _ZN6glitch7collada12ISkinnedMesh12setTransformEPNS_5video12IVideoDriverERKNS_4core8CMatrix4IfEE
// With skinning on or bit 0 of the buffer mask set the driver's world transform becomes the identity matrix. Otherwise the original
// calls the driver's setTransform (K 0x6c, state 1) with whatever is left in r2; the matrix argument is not read (the pseudocode
// calls the slot with the state only). The port passes the matrix, which is what the call sites hold in r2.
void ISkinnedMesh::setTransform(video::IVideoDriver* driver, const core::CMatrix4<float>& matrix) {
    if (skinningEnabled || (bufferFlags & 1) != 0) {
        driver->setTransform(1, identityMatrix());
    } else {
        driver->setTransform(1, matrix);
    }
}

// 0x669d6c _ZNK6glitch7collada12ISkinnedMesh12getTransformERKNS_4core8CMatrix4IfEE
// The identity matrix when skinning is on or bit 0 of the buffer mask is set, otherwise a copy of the argument.
core::CMatrix4<float> ISkinnedMesh::getTransform(const core::CMatrix4<float>& matrix) const {
    if (skinningEnabled || (bufferFlags & 1) != 0) {
        return identityMatrix();
    }
    return matrix;
}

// 0x669c28 _ZN6glitch7collada12ISkinnedMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
// Switches skinning on while it works (K 0x54), takes the buffer's streams, asks the driver to release the process buffer of type 0 for
// them (driver K 0x1f4: the stream table, the buffer's two range words, the pass shader flags of the material's technique masked with
// 0x20001, no binding), clears the buffer's bit in the mask and switches skinning off again when it was off.
void ISkinnedMesh::releaseProcessBuffer(video::IVideoDriver* driver, std::uint32_t index) {
    const bool wasEnabled = skinningEnabled;
    if (!wasEnabled) {
        setIsSkinningEnabled(true);
    }
    boost::intrusive_ptr<scene::CMeshBuffer> meshBuffer = getMeshBuffer(index);
    boost::intrusive_ptr<video::CMaterial> material = getMaterial(index);
    const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
    const auto* shader = static_cast<const video::IShader*>(technique.passes->shader);
    driver->releaseProcessBuffer(0, meshBuffer->vertexStreams, meshBuffer->primitiveStream.m_vertexStart,
                                 shader->m_vertexAttributeMask & 0x20001u, nullptr);
    bufferFlags &= ~(1u << (index & 0x1f));
    if (!wasEnabled) {
        setIsSkinningEnabled(false);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// CSkinnedMesh
// ---------------------------------------------------------------------------------------------------------------------

// 0x665fe8 _ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
// 0x6664f0 (C2)
// Reference count 0, the database copied (a use), bufferFlags 0, the uid empty, skinning enabled, the skin taken from the controller
// (+0x08), the box (-1,-1,-1)..(1,1,1), the flag bytes cleared, the technique pointers, the skin-data handle, the two vectors and the
// cache zeroed, the uid set to the controller's name (+0x04), then instanciateMesh. When the file has skin data its on-demand blocks are
// loaded through a reader over the file the database came from (opened again through the manager's file system; a second attempt is
// made when the first gives no file): the skin data block, and one block of (weight, joint index) pairs per skin data record. Then the
// four techniques are built over the skin, the cache and the has-skin-data flag.
CSkinnedMesh::CSkinnedMesh(const CColladaDatabase& source, video::IVideoDriver* driver, SController& controller,
                           CRootSceneNode* root) {
    referenceCounter = 0;
    copyDatabase(database, source);
    bufferFlags = 0;
    uid = "";
    skinningEnabled = true;
    skinRecord = static_cast<SSkin*>(const_cast<void*>(controller.morph));
    uid = controller.name;
    instanciateMesh(driver, root);
    const SDatabaseTables* tables = source.record != nullptr && source.record->data != nullptr ? source.record->data->tables : nullptr;
    const bool hasSkinData = tables != nullptr && tables->skinCount > 0;
    io::IReadFile* file = nullptr;
    if (tables != nullptr && tables->sourceName != nullptr && CResFileManager::Inst != nullptr && CResFileManager::Inst->device != nullptr &&
        CResFileManager::Inst->device->fileSystem != nullptr) {
        io::IFileSystem* fileSystem = CResFileManager::Inst->device->fileSystem;
        file = fileSystem->createAndOpenFile(tables->sourceName);
        if (file == nullptr) {
            file = fileSystem->createAndOpenFile(tables->sourceName);
        }
    }
    if (hasSkinData) {
        COnDemandReader reader(file);
        skinData = res::getOnDemand<float>(skinRecord->skinData, reader);
        skinDataEntries.resize(static_cast<std::size_t>(skinRecord->skinDataCount > 0 ? skinRecord->skinDataCount : 0));
        for (std::int32_t i = 0; i < skinRecord->skinDataCount; ++i) {
            skinDataEntries[static_cast<std::size_t>(i)] = res::getOnDemand<std::pair<float, unsigned short>>(skinRecord->skinDataEntries[i].block, reader);
        }
    }
    if (file != nullptr) {
        file->drop();
    }
    techniques[0] = new detail::CColladaHardwareTextureSkinTechnique(*skinRecord, cache, hasSkinData);
    techniques[1] = new detail::CColladaHardwareMatrixSkinTechnique(*skinRecord, cache, hasSkinData);
    techniques[2] = new detail::CColladaHardwareQuatSkinTechnique(*skinRecord, cache, hasSkinData);
    techniques[3] = new detail::CColladaSoftwareSkinTechnique(*skinRecord, cache, hasSkinData);
}

// 0x665938 _ZN6glitch7collada12CSkinnedMeshD1Ev, 0x665a38 (D2); D0 0x665a1c is skipped
// Releases the cache, the instanced mesh, the buffer table, the on-demand blocks, the skin data, then deletes the four techniques
// (deleting destructor, last to first) and runs the ISkinnedMesh destructor.
CSkinnedMesh::~CSkinnedMesh() {
    for (int i = 3; i >= 0; --i) {
        delete techniques[i];
        techniques[i] = nullptr;
    }
}

// 0x663524 _ZNK6glitch7collada12CSkinnedMesh7getTypeEv
std::uint32_t CSkinnedMesh::getType() const {
    return 2;
}

// 0x66352c _ZNK6glitch7collada12CSkinnedMesh5cloneEv
// A null handle.
boost::intrusive_ptr<scene::IMesh> CSkinnedMesh::clone() const {
    return boost::intrusive_ptr<scene::IMesh>();
}

// 0x663538 _ZN6glitch7collada12CSkinnedMesh6attachEPNS_5scene10ISceneNodeE
// Stores the node, attaches the four techniques to it (K 0x20) and marks the whole cache dirty.
void CSkinnedMesh::attach(scene::ISceneNode* node) {
    attachedNode = node;
    for (detail::IColladaSkinTechnique* technique : techniques) {
        technique->attach(node);
    }
    cache.dirty = 0xffffffffu;
}

// 0x663584 _ZN6glitch7collada12CSkinnedMesh9onAnimateEj
// The instanced mesh animates (K 0x34), then the low 16 bits of the cache's dirty word are set.
void CSkinnedMesh::onAnimate(std::uint32_t timeMs) {
    mesh->onAnimate(timeMs);
    markCacheDirty(cache);
}

// 0x6635b4 _ZNK6glitch7collada12CSkinnedMesh18getMeshBufferCountEv
std::uint32_t CSkinnedMesh::getMeshBufferCount() const {
    return mesh->getMeshBufferCount();
}

// 0x6635d0 _ZNK6glitch7collada12CSkinnedMesh13getMeshBufferEj
boost::intrusive_ptr<scene::CMeshBuffer> CSkinnedMesh::getMeshBuffer(std::uint32_t index) const {
    return buffers[index].buffer;
}

// 0x6635f8 _ZNK6glitch7collada12CSkinnedMesh11getMaterialEj
boost::intrusive_ptr<video::CMaterial> CSkinnedMesh::getMaterial(std::uint32_t index) const {
    return buffers[index].material;
}

// 0x663620 _ZNK6glitch7collada12CSkinnedMesh29getMaterialVertexAttributeMapEj
boost::intrusive_ptr<video::CMaterialVertexAttributeMap> CSkinnedMesh::getMaterialVertexAttributeMap(std::uint32_t index) const {
    return buffers[index].vertexAttributeMap;
}

// 0x663648 _ZN6glitch7collada12CSkinnedMesh18computeBoundingBoxEv
// The box becomes the first technique's computeBoundingBox() (K 0x08).
void CSkinnedMesh::computeBoundingBox() {
    boundingBox = techniques[0]->computeBoundingBox();
}

// 0x6636a4 _ZNK6glitch7collada12CSkinnedMesh14getBoundingBoxEv
// When bit 3 of the cache's dirty word is set the box is recomputed first.
const core::aabbox3d<float>& CSkinnedMesh::getBoundingBox() const {
    if ((cache.dirty & 8u) != 0) {
        const_cast<CSkinnedMesh*>(this)->computeBoundingBox();
    }
    return boundingBox;
}

// 0x66383c _ZNK6glitch7collada12CSkinnedMesh21reverifySkinTechniqueERKNS0_11SSkinBufferE
// Reads the technique id of the buffer's material; when it differs from the one the buffer was last checked for, stores it and picks
// the first of the four techniques whose checkAvailability accepts the renderer's technique entry (K 0x1c). The buffer keeps its
// technique when none accepts.
void CSkinnedMesh::reverifySkinTechnique(const SSkinBuffer& buffer) const {
    const std::int32_t techniqueId = buffer.material->getTechnique();
    if (buffer.requestedTechnique != static_cast<std::uint8_t>(techniqueId)) {
        buffer.requestedTechnique = static_cast<std::uint8_t>(techniqueId);
        const video::STechnique& entry = buffer.material->m_renderer->m_techniques[techniqueId];
        for (detail::IColladaSkinTechnique* technique : techniques) {
            if (technique->checkAvailability(entry)) {
                buffer.technique = technique;
                break;
            }
        }
    }
}

// 0x6638bc _ZNK6glitch7collada12CSkinnedMesh16needOutputBufferEv
// True when any buffer's technique writes its own output buffer (K 0x0c).
bool CSkinnedMesh::needOutputBuffer() const {
    bool result = false;
    for (const SSkinBuffer& buffer : buffers) {
        reverifySkinTechnique(buffer);
        result = buffer.technique->needOutputBuffer() || result;
    }
    return result;
}

// 0x66391c _ZN6glitch7collada12CSkinnedMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS4_INS5_26CMaterialVertexAttributeMapEEE
// Stores the material and the vertex-attribute map in the buffer, forgets the technique choice (both technique bytes 0xff) and passes
// the call on to the instanced mesh (K 0x20).
void CSkinnedMesh::setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                               const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) {
    buffers[index].material = material;
    buffers[index].vertexAttributeMap = vertexAttributeMap;
    buffers[index].requestedTechnique = 0xff;
    buffers[index].appliedTechnique = 0xff;
    mesh->setMaterial(index, material, vertexAttributeMap);
}

// 0x6639f4 _ZN6glitch7collada12CSkinnedMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
// When a process buffer was taken, the instanced mesh releases it (K 0x3c) and the byte at +0x23 is cleared; with skinning enabled the
// ISkinnedMesh version then runs.
void CSkinnedMesh::releaseProcessBuffer(video::IVideoDriver* driver, std::uint32_t index) {
    if (processBufferTaken) {
        mesh->releaseProcessBuffer(driver, index);
        processBufferTaken = 0;
    }
    if (skinningEnabled) {
        ISkinnedMesh::releaseProcessBuffer(driver, index);
    }
}

// 0x664af8 _ZN6glitch7collada12CSkinnedMesh14instanciateMeshEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
// Builds the mesh from the skin's source: first as a geometry, else as a controller (the source url without its leading '#'). A mesh
// found becomes the instanced mesh and its box the mesh box. The buffer table is then resized to the mesh's buffer count, every new
// entry empty with its three technique bytes 0xff.
void CSkinnedMesh::instanciateMesh(video::IVideoDriver* driver, CRootSceneNode* root) {
    const char* name = skinRecord->sourceUrl + 1;
    boost::intrusive_ptr<IMesh> built(database.constructGeometry(driver, name));
    if (!built) {
        built = boost::intrusive_ptr<IMesh>(database.constructController(driver, name, root));
    }
    if (built) {
        mesh = built;
        boundingBox = mesh->getBoundingBox();
    }
    buffers.resize(mesh->getMeshBufferCount());
}

// 0x664c84 _ZN6glitch7collada12CSkinnedMesh20setIsSkinningEnabledEb
// Switching skinning on marks the cache dirty. While bit 0 of the buffer mask is clear, every buffer whose technique writes its own
// output buffer gets its stream tables rebound: with skinning on the stream buffers (the first one, and the one after the last
// attribute stream when the attribute mask has bit 0x20000) are cleared; with skinning off the table takes the original mesh buffer's
// streams back (mask 0x20001). The ISkinnedMesh flag is stored last.
// The two setStreamBuffer calls are the compiler clone 0x663ca8 (the homogeneity flag is folded to true inside it), called through its
// own symbol.
void CSkinnedMesh::setIsSkinningEnabled(bool enabled) {
    if (!skinningEnabled && enabled) {
        markCacheDirty(cache);
    }
    if ((bufferFlags & 1) == 0) {
        for (std::uint32_t i = 0; i < buffers.size(); ++i) {
            SSkinBuffer& buffer = buffers[i];
            reverifySkinTechnique(buffer);
            if (!buffer.technique->needOutputBuffer()) {
                continue;
            }
            video::CVertexStreams* streams = buffer.buffer->vertexStreams.get();
            if (enabled) {
                boost::intrusive_ptr<video::IBuffer> none;
                video::setStreamBufferClone1(streams, &streams->m_streams[0], &none);
                if ((streams->m_attributeMask & 0x20000u) == 0) {
                    continue;
                }
                boost::intrusive_ptr<video::IBuffer> none2;
                video::setStreamBufferClone1(streams, &streams->m_streams[streams->m_count0c + 1u], &none2);
            } else {
                boost::intrusive_ptr<scene::CMeshBuffer> original = mesh->getMeshBuffer(i);
                streams->setStreams(original->vertexStreams, 0x20001u, 0, false);
            }
        }
    }
    ISkinnedMesh::setIsSkinningEnabled(enabled);
}

// 0x664e0c _ZN6glitch7collada12CSkinnedMesh15updateTechniqueEj
// Reverifies the buffer's technique; when the technique chosen differs from the one last applied, the technique's init (K 0x14) runs
// for the buffer (with the mesh buffer, the driver taken from the scene-manager side of the material and the init flag), the buffer's
// bit in the mask is set or cleared from its result and the applied id is updated.
// PARTIAL: the fourth argument of init is the driver, which the original reads from the material renderer (renderer +0x04); the
// pseudocode passes `*(*(*(buffer + 4) + 4) + 4)`.
void CSkinnedMesh::updateTechnique(std::uint32_t index) {
    SSkinBuffer& buffer = buffers[index];
    reverifySkinTechnique(buffer);
    if (buffer.requestedTechnique != buffer.appliedTechnique) {
        detail::IColladaSkinTechnique* technique = buffer.technique;
        boost::intrusive_ptr<scene::CMeshBuffer> original = mesh->getMeshBuffer(index);
        const bool needsOutput =
            technique->init(buffer, original.get(), buffer.material->m_renderer->m_driver, initFlag != 0) != 0;
        if (needsOutput) {
            bufferFlags |= 1u << (index & 0x1f);
        } else {
            bufferFlags &= ~(1u << (index & 0x1f));
        }
        buffer.appliedTechnique = buffer.requestedTechnique;
    }
}

// 0x664ee0 _ZN6glitch7collada12CSkinnedMesh4skinEj
// As updateTechnique (it applies the technique choice), then the technique skins the buffer (K 0x18) with the mesh's buffer.
void CSkinnedMesh::skin(std::uint32_t index) {
    SSkinBuffer& buffer = buffers[index];
    reverifySkinTechnique(buffer);
    if (buffer.requestedTechnique != buffer.appliedTechnique) {
        detail::IColladaSkinTechnique* technique = buffer.technique;
        boost::intrusive_ptr<scene::CMeshBuffer> original = mesh->getMeshBuffer(index);
        const bool needsOutput =
            technique->init(buffer, original.get(), buffer.material->m_renderer->m_driver, initFlag != 0) != 0;
        if (needsOutput) {
            bufferFlags |= 1u << (index & 0x1f);
        } else {
            bufferFlags &= ~(1u << (index & 0x1f));
        }
        buffer.appliedTechnique = buffer.requestedTechnique;
    }
    boost::intrusive_ptr<scene::CMeshBuffer> original = mesh->getMeshBuffer(index);
    buffer.technique->skin(buffer, original.get());
}

// 0x665580 _ZNK6glitch7collada12CSkinnedMesh12getTransformERKNS_4core8CMatrix4IfEE
// The identity matrix when skinning is on or bit 0 of the buffer mask is set, otherwise the argument multiplied with the skin's bind
// shape matrix (skin +0x10).
core::CMatrix4<float> CSkinnedMesh::getTransform(const core::CMatrix4<float>& matrix) const {
    if (skinningEnabled || (bufferFlags & 1) != 0) {
        return identityMatrix();
    }
    core::CMatrix4<float> bindShape{core::CMatrix4<float>::EM4CONST_NOTHING};
    for (int i = 0; i < 16; ++i) {
        bindShape.M[i] = skinRecord->bindShapeMatrix[i];
    }
    return matrix * bindShape;
}

// 0x6655ec _ZN6glitch7collada12CSkinnedMesh12setTransformEPNS_5video12IVideoDriverERKNS_4core8CMatrix4IfEE
// The driver's world transform (K 0x6c, state 1): the identity matrix when skinning is on or bit 0 is set, otherwise the argument
// multiplied with the skin's bind shape matrix.
void CSkinnedMesh::setTransform(video::IVideoDriver* driver, const core::CMatrix4<float>& matrix) {
    driver->setTransform(1, getTransform(matrix));
}

// 0x665678 _ZN6glitch7collada12CSkinnedMesh4initEPNS_5video12IVideoDriverEb
// The instanced mesh is initialised (K 0x40), the init flag stored, then every buffer's technique is applied as updateTechnique does
// and the skin-data handle is released.
void CSkinnedMesh::init(video::IVideoDriver* driver, bool flag) {
    mesh->init(driver, false);
    initFlag = flag ? 1 : 0;
    const std::uint32_t count = mesh->getMeshBufferCount();
    for (std::uint32_t i = 0; i < count; ++i) {
        SSkinBuffer& buffer = buffers[i];
        reverifySkinTechnique(buffer);
        boost::intrusive_ptr<scene::CMeshBuffer> original = mesh->getMeshBuffer(i);
        const bool needsOutput = buffer.technique->init(buffer, original.get(), driver, flag) != 0;
        if (needsOutput) {
            bufferFlags |= 1u << (i & 0x1f);
        } else {
            bufferFlags &= ~(1u << (i & 0x1f));
        }
        buffer.appliedTechnique = buffer.requestedTechnique;
    }
    skinData.reset();
}

// 0x665004 _ZN6glitch7collada12CSkinnedMesh28onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
// The instanced mesh answers first (K 0x38 with the same arguments); the byte at +0x23 records bit 2 of the answer when the step is 1
// (the process buffer was taken) and is cleared otherwise. With skinning enabled the technique chosen for the buffer is applied (as
// updateTechnique does) and its onPrepareBufferForRendering (K 0x24) result is returned. With skinning disabled the result is 8 when
// the buffer's driver binding has its word at +0x18 set, else the mesh's answer.
std::int32_t CSkinnedMesh::onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver, std::uint32_t index) {
    const std::int32_t answer = mesh->onPrepareBufferForRendering(step, driver, index);
    processBufferTaken = (step == 1) ? static_cast<std::uint8_t>((static_cast<std::uint32_t>(answer) >> 2) & 1u) : 0;
    if (skinningEnabled) {
        SSkinBuffer& buffer = buffers[index];
        reverifySkinTechnique(buffer);
        if (buffer.requestedTechnique != buffer.appliedTechnique) {
            boost::intrusive_ptr<scene::CMeshBuffer> original = mesh->getMeshBuffer(index);
            const bool needsOutput =
                buffer.technique->init(buffer, original.get(), buffer.material->m_renderer->m_driver, initFlag != 0) != 0;
            if (needsOutput) {
                bufferFlags |= 1u << (index & 0x1f);
            } else {
                bufferFlags &= ~(1u << (index & 0x1f));
            }
            buffer.appliedTechnique = buffer.requestedTechnique;
        }
        boost::intrusive_ptr<scene::CMeshBuffer> original = mesh->getMeshBuffer(index);
        return buffer.technique->onPrepareBufferForRendering(step, driver, buffer, original.get());
    }
    const video::CDriverBinding* binding = buffers[index].buffer->owner;
    if (binding != nullptr && binding->unk_18 != 0) {
        return 8;
    }
    return answer;
}

}  // namespace glitch::collada
