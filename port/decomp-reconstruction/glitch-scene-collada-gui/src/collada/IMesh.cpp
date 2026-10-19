// Bodies of glitch::collada::IMesh, CMesh and CMorphingMesh (canonical classes: collada/IMesh.hpp). This file replaces
// src/tb_scene-collada-gui-glitch_collada_CMesh-0.cpp, src/tb_scene-collada-gui-glitch_collada_CMesh_SBuffer-0.cpp and the
// CMesh / CMorphingMesh bodies of src/collada_scene_accessors.cpp. With the counting intrusive_ptr the reference moves that
// those files could not express are done by the handles, so the getters and setMaterial are no longer partial.
#include "glitch-scene-collada-gui/collada/IMesh.hpp"

#include <cmath>
#include <cstring>

// CMaterial and CMaterialVertexAttributeMap complete (the counting handles need the reference-counting overloads).
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/COnDemandReader.hpp"
#include "glitch-scene-collada-gui/collada/SMesh.hpp"

namespace glitch::collada {


// ---------------------------------------------------------------------------------------------------------------------
// IMesh
// ---------------------------------------------------------------------------------------------------------------------

// 0x667704 _ZN6glitch7collada5IMeshD1Ev (D0 0x667738 skipped; the ledger has two rows with this name)
// Restores the vtable and destroys the CColladaDatabase at +0x0c, which drops the record's use (dropDatabase).
IMesh::~IMesh() {
    dropDatabase(database);
}

// 0x6676b4 _ZN6glitch7collada5IMesh9onAnimateEj (empty)
void IMesh::onAnimate(std::uint32_t /*timeMs*/) {}

// 0x6676b8 _ZN6glitch7collada5IMesh28onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
// The pseudocode body is `return 16`.
std::int32_t IMesh::onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP /*step*/, video::IVideoDriver* /*driver*/,
                                                std::uint32_t /*index*/) {
    return 16;
}

// 0x6676c0 _ZN6glitch7collada5IMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj (empty)
void IMesh::releaseProcessBuffer(video::IVideoDriver* /*driver*/, std::uint32_t /*index*/) {}

// 0x6676c4 _ZN6glitch7collada5IMesh4initEPNS_5video12IVideoDriverEb (empty)
void IMesh::init(video::IVideoDriver* /*driver*/, bool /*flag*/) {}

// 0x6676c8 _ZN6glitch7collada5IMesh12setTransformEPNS_5video12IVideoDriverERKNS_4core8CMatrix4IfEE
// Calls the driver's vtable slot +0x6c (setTransform) with the state 1 and the matrix.
void IMesh::setTransform(video::IVideoDriver* driver, const core::CMatrix4<float>& matrix) {
    driver->setTransform(1, matrix);
}

// ---------------------------------------------------------------------------------------------------------------------
// CMesh
// ---------------------------------------------------------------------------------------------------------------------

CMesh::SBuffer::SBuffer() = default;
CMesh::SBuffer::SBuffer(const SBuffer& other) = default;
CMesh::SBuffer& CMesh::SBuffer::operator=(const SBuffer& other) = default;

// 0x644c88 _ZN6glitch7collada5CMesh7SBufferD1Ev
// Drops the vertex-attribute map, the material and then the buffer (the members are destroyed in reverse declaration order, which
// is that order). The ledger row was partial because the old intrusive_ptr did not count.
CMesh::SBuffer::~SBuffer() = default;

// 0x64834c _ZNK6glitch7collada5IMesh14getVertexCountEv
std::uint32_t IMesh::getVertexCount() const {
    const boost::intrusive_ptr<scene::CMeshBuffer> buffer = getMeshBuffer(0);
    return buffer->vertexStreams->m_field08;
}

// Not in the binary (see the header): the reference count starts at 0 like every CMesh constructor; the members keep their defaults.
CMesh::CMesh() {
    referenceCounter = 0;
}

// 0x645588 _ZN6glitch7collada5CMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKNS0_9SGeometryERKNS0_13SBufferConfigESB_b
// (C2 0x645b68: the same body)
// The reference count is 0, the database handle is copied (a use on its record), the uid is the geometry's name and the buffer vector gets room
// for the mesh record's buffers. The file the database was read from is opened again for the on-demand data (through the device's file system,
// by the name the table holder keeps), and a file that has skins (`skinCount > 0`) reads the on-demand index and vertex data of the record while its
// buffers are built. For every mesh buffer record: the scene::CMeshBuffer the record already keeps when the buffers are shared (`sharing`), else a
// new one (scene::CMeshBuffer(driver, mesh, index, vertexConfig, indexConfig, skins)); the entry has no material and no attribute map, and a shared
// record remembers the buffer it built. The box is the mesh record's.
CMesh::CMesh(const CColladaDatabase& db, video::IVideoDriver* driver, const SGeometry& geometry, const SBufferConfig& vertexConfig,
             const SBufferConfig& indexConfig, bool sharing) {
    referenceCounter = 0;
    copyDatabase(database, db);
    uid = geometry.name;
    bufferFlags = 0;
    SMesh& mesh = *geometry.mesh;
    buffers.reserve(static_cast<std::size_t>(mesh.bufferCount));
    const SDatabaseTables& tables = db.tables();
    const bool skins = tables.skinCount > 0;
    io::IReadFile* file = nullptr;
    if (tables.sourceName != nullptr && CResFileManager::Inst != nullptr && CResFileManager::Inst->device != nullptr &&
        CResFileManager::Inst->device->fileSystem != nullptr) {
        file = CResFileManager::Inst->device->fileSystem->createAndOpenFile(tables.sourceName);
    }
    COnDemandReader reader(file);
    res::onDemandPointer<char> vertexHold;
    if (skins && mesh.interleaved != 0) {
        vertexHold = res::getOnDemand<char>(mesh.interleavedData->dataBlock, reader);
    }
    for (std::int32_t i = 0; i < mesh.bufferCount; ++i) {
        SMeshBuffer& record = mesh.buffers[i];
        res::onDemandPointer<std::uint16_t> hold16;
        res::onDemandPointer<std::uint32_t> hold32;
        if (skins) {
            if (record.lastVertex <= 0xFFFF) {
                hold16 = res::getOnDemand<std::uint16_t>(record.indexBlock, reader);
            } else {
                hold32 = res::getOnDemand<std::uint32_t>(record.indexBlock, reader);
            }
        }
        boost::intrusive_ptr<scene::CMeshBuffer> built;
        if (sharing && record.meshBuffer) {
            built = record.meshBuffer;
        } else {
            built = boost::intrusive_ptr<scene::CMeshBuffer>(
                new scene::CMeshBuffer(driver, mesh, static_cast<std::uint32_t>(i), vertexConfig, indexConfig, skins), true);  // born with count 0
        }
        SBuffer entry;
        entry.buffer = built;
        buffers.push_back(entry);
        if (sharing && !record.meshBuffer) {
            record.meshBuffer = built;
        }
    }
    if (file != nullptr) {
        file->drop();
    }
    boundingBox.MinEdge = core::vector3d<float>{mesh.boundingBox[0], mesh.boundingBox[1], mesh.boundingBox[2]};
    boundingBox.MaxEdge = core::vector3d<float>{mesh.boundingBox[3], mesh.boundingBox[4], mesh.boundingBox[5]};
}

// 0x644eb8 _ZN6glitch7collada5CMeshC1ERKS1_ (C2 0x644fc8)
// The reference count starts at 0, the uid is the empty-string constant (not copied), the database is copied with a use on its
// record, word +0x14 is cleared, the buffer vector is copied (each entry takes its three uses) and the box words are copied.
CMesh::CMesh(const CMesh& other) {
    referenceCounter = 0;
    uid = "";
    copyDatabase(database, other.database);
    bufferFlags = 0;
    buffers = other.buffers;
    boundingBox = other.boundingBox;
}

// 0x644cfc _ZN6glitch7collada5CMeshD1Ev (D0 0x644d68 and D2 0x644d4c skipped)
// Destroys the buffer vector (each entry drops its three uses), then the IMesh part.
CMesh::~CMesh() = default;

// 0x644f88 _ZNK6glitch7collada5CMesh5cloneEv
// A new mesh (operator new(0x3c)) built by the copy constructor; the result holds the only use.
boost::intrusive_ptr<scene::IMesh> CMesh::clone() const {
    auto* copy = new CMesh(*this);
    return boost::intrusive_ptr<scene::IMesh>(copy, true);
}

// 0x644a44 _ZNK6glitch7collada5CMesh18getMeshBufferCountEv
std::uint32_t CMesh::getMeshBufferCount() const {
    return static_cast<std::uint32_t>(buffers.size());
}

// 0x644a6c _ZNK6glitch7collada5CMesh13getMeshBufferEj
// An index at or past the end gives a null handle; otherwise the handle is copied (a use is added).
boost::intrusive_ptr<scene::CMeshBuffer> CMesh::getMeshBuffer(std::uint32_t index) const {
    if (index >= buffers.size()) {
        return boost::intrusive_ptr<scene::CMeshBuffer>();
    }
    return buffers[index].buffer;
}

// 0x644ac8 _ZNK6glitch7collada5CMesh11getMaterialEj
boost::intrusive_ptr<video::CMaterial> CMesh::getMaterial(std::uint32_t index) const {
    if (index >= buffers.size()) {
        return boost::intrusive_ptr<video::CMaterial>();
    }
    return buffers[index].material;
}

// 0x644b24 _ZNK6glitch7collada5CMesh24getMaterialVertexAttributeMapEj
boost::intrusive_ptr<video::CMaterialVertexAttributeMap> CMesh::getMaterialVertexAttributeMap(std::uint32_t index) const {
    if (index >= buffers.size()) {
        return boost::intrusive_ptr<video::CMaterialVertexAttributeMap>();
    }
    return buffers[index].vertexAttributeMap;
}

// 0x644bdc _ZN6glitch7collada5CMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS4_INS5_27CMaterialVertexAttributeMapEEE
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

// 0x644b80 _ZNK6glitch7collada5CMesh14getBoundingBoxEv
const core::aabbox3d<float>& CMesh::getBoundingBox() const {
    return boundingBox;
}

// 0x644b88 _ZN6glitch7collada5CMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
// Copies the six words of the box into +0x24 .. +0x3b.
void CMesh::setBoundingBox(const core::aabbox3d<float>& box) {
    boundingBox = box;
}

// 0x644a3c _ZNK6glitch7collada5CMesh7getTypeEv (returns 0)
std::uint32_t CMesh::getType() const {
    return 0;
}

// ---------------------------------------------------------------------------------------------------------------------
// CMorphingMesh
// ---------------------------------------------------------------------------------------------------------------------

CMorphingMesh::SBuffer::SBuffer() = default;
CMorphingMesh::SBuffer::SBuffer(const SBuffer& other) = default;
CMorphingMesh::SBuffer& CMorphingMesh::SBuffer::operator=(const SBuffer& other) = default;
CMorphingMesh::SBuffer::~SBuffer() = default;

// Not in the binary (see the header): the reference count starts at 0; the members keep their defaults.
CMorphingMesh::CMorphingMesh() {
    referenceCounter = 0;
}

// 0x64a1b8 _ZN6glitch7collada13CMorphingMeshD1Ev (D2 0x64a248, D0 0x64a264); the destructor's only statement before the
// member destruction is `CRootSceneNode::removeMorphingMesh(rootNode, this)` (+0x38 is the root node: the constructor
// writes the root argument there, STR R2,[R4,#0x38] at 0x64ba70). The buffers and the targets are then destroyed, which
// the member destructors do. One host deviation, named: the root node is tested for null, because the port's test-only
// default constructor leaves +0x38 null where the original's constructor always stores a root. The real constructor
// stores a root, so the deviation only covers the not-in-the-binary empty mesh.
CMorphingMesh::~CMorphingMesh() {
    if (rootNode != nullptr) {
        rootNode->removeMorphingMesh(this);
    }
}

// 0x64990c _ZNK6glitch7collada13CMorphingMesh5cloneEv
// Returns a null handle (the original stores 0 into the result slot).
boost::intrusive_ptr<scene::IMesh> CMorphingMesh::clone() const {
    return boost::intrusive_ptr<scene::IMesh>();
}

// 0x649918 _ZNK6glitch7collada13CMorphingMesh18getMeshBufferCountEv
// Forwards to the first morph target (vtable +0x10). The original does not test for an empty target list.
std::uint32_t CMorphingMesh::getMeshBufferCount() const {
    if (targets.empty() || targets.front().mesh.get() == nullptr) {
        return 0;
    }
    return targets.front().mesh->getMeshBufferCount();
}

// 0x649938 _ZNK6glitch7collada13CMorphingMesh13getMeshBufferEj
// Reads the own buffer vector at the index and takes a use. The original does not test the index; out of range gives null here.
boost::intrusive_ptr<scene::CMeshBuffer> CMorphingMesh::getMeshBuffer(std::uint32_t index) const {
    if (index >= buffers.size()) {
        return boost::intrusive_ptr<scene::CMeshBuffer>();
    }
    return buffers[index].buffer;
}

// 0x649960 _ZNK6glitch7collada13CMorphingMesh11getMaterialEj
boost::intrusive_ptr<video::CMaterial> CMorphingMesh::getMaterial(std::uint32_t index) const {
    if (index >= buffers.size()) {
        return boost::intrusive_ptr<video::CMaterial>();
    }
    return buffers[index].material;
}

// 0x649988 _ZNK6glitch7collada13CMorphingMesh24getMaterialVertexAttributeMapEj
boost::intrusive_ptr<video::CMaterialVertexAttributeMap> CMorphingMesh::getMaterialVertexAttributeMap(std::uint32_t index) const {
    if (index >= buffers.size()) {
        return boost::intrusive_ptr<video::CMaterialVertexAttributeMap>();
    }
    return buffers[index].vertexAttributeMap;
}

// 0x649a88 _ZN6glitch7collada13CMorphingMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS4_INS5_27CMaterialVertexAttributeMapEEE
// Forwards to the first morph target (vtable +0x20), then stores the material and the map in the own buffer entry. The original
// does not test the target list or the index.
void CMorphingMesh::setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                                const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) {
    if (!targets.empty() && targets.front().mesh.get() != nullptr) {
        targets.front().mesh->setMaterial(index, material, vertexAttributeMap);
    }
    if (index < buffers.size()) {
        buffers[index].material = material;                      // +0x04
        buffers[index].vertexAttributeMap = vertexAttributeMap;  // +0x08
    }
}

// 0x6499b0 _ZNK6glitch7collada13CMorphingMesh14getBoundingBoxEv
// Forwards to the first morph target (vtable +0x24). The original does not test the target list; an empty list gives an empty box.
const core::aabbox3d<float>& CMorphingMesh::getBoundingBox() const {
    static const core::aabbox3d<float> kEmpty{};
    if (targets.empty() || targets.front().mesh.get() == nullptr) {
        return kEmpty;
    }
    return targets.front().mesh->getBoundingBox();
}

// 0x6499d0 _ZN6glitch7collada13CMorphingMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE (empty)
void CMorphingMesh::setBoundingBox(const core::aabbox3d<float>& /*box*/) {}

// 0x649904 _ZNK6glitch7collada13CMorphingMesh7getTypeEv (returns 1)
std::uint32_t CMorphingMesh::getType() const {
    return 1;
}

// 0x649b3c _ZN6glitch7collada17setWeightedVertexINS_4core8vector3dIfEEEEvPT_jPKS5_jfj
// dst = weight * src for `count` vertices of three floats, the vertices `dstStride` / `srcStride` bytes apart. A zero weight writes nothing;
// the weight 1.0 copies (one memcpy when both strides are 12, else vertex by vertex).
template <typename T>
void setWeightedVertex(T* destination, std::uint32_t destinationStride, const T* source, std::uint32_t sourceStride, float weight,
                       std::uint32_t count) {
    if (weight == 0.0f) {
        return;
    }
    char* out = reinterpret_cast<char*>(destination);
    const char* in = reinterpret_cast<const char*>(source);
    if (weight == 1.0f) {
        if (destinationStride == 12 && sourceStride == 12) {
            std::memcpy(out, in, 12u * count);
            return;
        }
        for (std::uint32_t i = 0; i < count; ++i) {
            std::memcpy(out, in, 12);
            in += sourceStride;
            out += destinationStride;
        }
        return;
    }
    for (std::uint32_t i = 0; i < count; ++i) {
        const float* s = reinterpret_cast<const float*>(in);
        float* d = reinterpret_cast<float*>(out);
        const float y = weight * s[1];
        const float z = weight * s[2];
        const float x = weight * s[0];
        d[1] = y;
        d[0] = x;
        d[2] = z;
        in += sourceStride;
        out += destinationStride;
    }
}

template void setWeightedVertex<core::vector3d<float>>(core::vector3d<float>*, std::uint32_t, const core::vector3d<float>*, std::uint32_t,
                                                       float, std::uint32_t);

namespace {

// The accumulation step of morph: dst += weight * src over `count` vertices (weight 1.0 adds without the multiplication).
void addWeightedVertices(char* destination, std::uint32_t destinationStride, const char* source, std::uint32_t sourceStride, float weight,
                         std::uint32_t count) {
    if (weight == 0.0f) {
        return;
    }
    if (weight == 1.0f) {
        for (std::uint32_t i = 0; i < count; ++i) {
            float* d = reinterpret_cast<float*>(destination);
            const float* s = reinterpret_cast<const float*>(source);
            d[0] = d[0] + s[0];
            d[1] = d[1] + s[1];
            d[2] = d[2] + s[2];
            source += sourceStride;
            destination += destinationStride;
        }
        return;
    }
    for (std::uint32_t i = 0; i < count; ++i) {
        float* d = reinterpret_cast<float*>(destination);
        const float* s = reinterpret_cast<const float*>(source);
        const float y = weight * s[1];
        const float z = weight * s[2];
        d[0] = d[0] + (weight * s[0]);
        d[1] = d[1] + y;
        d[2] = d[2] + z;
        source += sourceStride;
        destination += destinationStride;
    }
}

// E_BUFFER_MAP_ACCESS 4 (write) and E_BUFFER_READ_MAP_ACCESS 1 (read).
constexpr video::E_BUFFER_MAP_ACCESS kWriteAccess = 4;
constexpr video::E_BUFFER_READ_MAP_ACCESS kReadAccess = 1;
// The vertex attribute bit of the normal stream.
constexpr std::uint32_t kNormalAttribute = 0x20000u;
// The bits of the shader's vertex attribute mask the process-buffer requests carry (position and normal).
constexpr std::uint32_t kProcessBufferAttributes = 0x20001u;

// The pointer to the first byte of a stream's data in a mapping, null when the mapping failed.
std::uint8_t* streamData(std::uint8_t* base, const video::SVertexStream& stream) {
    return base != nullptr ? base + stream.offset : nullptr;
}

}  // namespace

// 0x64b9c8 _ZN6glitch7collada13CMorphingMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
// 0x64baa0 (C2). The reference count 0, the database copy with a use on its record, the vectors cleared, the controller name as the uid,
// the controller's morph record, the root node, the dirty mask -1 (every buffer must be morphed once), then the targets are built.
CMorphingMesh::CMorphingMesh(const CColladaDatabase& db, video::IVideoDriver* driver, SController& controller, CRootSceneNode* root) {
    referenceCounter = 0;
    copyDatabase(database, db);
    uid = "";
    bufferFlags = 0;
    morphData = static_cast<const SMorph*>(controller.morph);
    dirtyBuffers = 0xFFFFFFFFu;
    rootNode = root;
    uid = controller.name;
    instanciateMesh(driver, root);
}

// 0x64b700 _ZN6glitch7collada13CMorphingMesh15instanciateMeshEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
// The base mesh named by the morph record (the geometry of that name, else the controller of that name; the URL's '#' is skipped) becomes
// the first target with weight 1.0, then every target geometry (named without a '#') with its weight; the buffer vector is sized to the
// first target's buffer count. The original does not test the lookups: a missing base mesh becomes a null target.
void CMorphingMesh::instanciateMesh(video::IVideoDriver* driver, CRootSceneNode* root) {
    const SMorph& morphRecord = *morphData;
    const char* baseName = morphRecord.baseUrl + 1;
    targets.reserve(static_cast<std::size_t>(morphRecord.targetCount) + 1);
    boost::intrusive_ptr<IMesh> base(database.constructGeometry(driver, baseName), false);
    if (!base) {
        base = boost::intrusive_ptr<IMesh>(database.constructController(driver, baseName, root), false);
    }
    STarget first;
    first.mesh = base;
    first.weight = 1.0f;
    targets.push_back(first);
    for (std::int32_t i = 0; i < morphRecord.targetCount; ++i) {
        boost::intrusive_ptr<IMesh> target(database.constructGeometry(driver, morphRecord.targetNames[i]), false);
        STarget entry;
        entry.mesh = target;
        entry.weight = morphRecord.weights[i];
        targets.push_back(entry);
    }
    const std::uint32_t bufferCount = targets[0].mesh ? targets[0].mesh->getMeshBufferCount() : 0;
    buffers.resize(bufferCount, SBuffer());
}

// 0x64a3b4 _ZN6glitch7collada13CMorphingMesh4initEPNS_5video12IVideoDriverEb
// The first target is initialised the same way. Then each of its mesh buffers gets a morph buffer of the same primitive stream and
// attribute set (created when missing), whose vertex stream table copies every stream of the target's table but the position and the
// normal, which are left as empty three-float streams for the process buffer to fill. With `flag` the buffer is marked as not in a process
// buffer, else the driver is asked for one (position and normal attributes) and the buffer is marked.
void CMorphingMesh::init(video::IVideoDriver* driver, bool flag) {
    targets[0].mesh->init(driver, flag);
    const std::uint32_t count = targets[0].mesh->getMeshBufferCount();
    for (std::uint32_t i = 0; i < count; ++i) {
        boost::intrusive_ptr<scene::CMeshBuffer> source = targets[0].mesh->getMeshBuffer(i);
        boost::intrusive_ptr<scene::CMeshBuffer>& slot = buffers[i].buffer;
        if (!slot) {
            slot = boost::intrusive_ptr<scene::CMeshBuffer>(new scene::CMeshBuffer(source->vertexStreams->m_attributeMask, source->primitiveStream, true), true);
        }
        video::CVertexStreams* streams = slot->vertexStreams.get();
        streams->m_field08 = source->vertexStreams->m_field08;
        streams->setStreams(source->vertexStreams, 0xFFFDFFFEu, 0, true);
        video::SVertexStreamData position;
        position.field08 = 6;
        position.field0c = 3;
        streams->setStream(&streams->m_streams[0], position, true);
        if ((streams->m_attributeMask & kNormalAttribute) != 0) {
            video::SVertexStreamData normal;
            normal.field08 = 6;
            normal.field0c = 3;
            streams->setStream(&streams->m_streams[streams->m_count0c + 1u], normal, true);
        }
        if (flag) {
            bufferFlags &= ~(1u << (i & 0x1f));
        } else {
            driver->getProcessBuffer(1, slot->primitiveStream.m_vertexStart, slot->primitiveStream.m_vertexEnd, kProcessBufferAttributes,
                                     slot->vertexStreams, &slot->owner, true);
            bufferFlags |= 1u << (i & 0x1f);
        }
    }
}

// 0x64a2f4 _ZN6glitch7collada13CMorphingMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
// Hands the buffer's process buffer back (the shader's position and normal attributes) and clears the buffer's bit.
void CMorphingMesh::releaseProcessBuffer(video::IVideoDriver* driver, std::uint32_t index) {
    boost::intrusive_ptr<scene::CMeshBuffer> meshBuffer = getMeshBuffer(index);
    video::CMaterial* material = buffers[index].material.get();
    const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
    const std::uint32_t flags = static_cast<const video::IShader*>(technique.passes[0].shader)->m_vertexAttributeMask & kProcessBufferAttributes;
    driver->releaseProcessBuffer(0, meshBuffer->vertexStreams, meshBuffer->primitiveStream.m_vertexStart, flags, nullptr);
    bufferFlags &= ~(1u << (index & 0x1f));
}

// 0x64afec _ZN6glitch7collada13CMorphingMesh28onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
// The answer starts as the first target's. With a non-zero step the driver is asked for an existing process buffer (type 0); when it
// has one the buffer is marked and morphed. With step 0, a buffer already marked that is also dirty is morphed straight away and its
// dirty bit is cleared (the answer is the target's); otherwise the driver is asked for a new process buffer (type 1) and the buffer
// is morphed when it got one.
std::int32_t CMorphingMesh::onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver, std::uint32_t index) {
    std::int32_t answer = targets[0].mesh->onPrepareBufferForRendering(step, driver, index);
    const auto requestProcessBuffer = [&](int type) {
        boost::intrusive_ptr<scene::CMeshBuffer> meshBuffer = buffers[index].buffer;
        video::CMaterial* material = buffers[index].material.get();
        const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
        const std::uint32_t flags = static_cast<const video::IShader*>(technique.passes[0].shader)->m_vertexAttributeMask & kProcessBufferAttributes;
        return driver->getProcessBuffer(type, meshBuffer->primitiveStream.m_vertexStart, meshBuffer->primitiveStream.m_vertexEnd, flags,
                                        meshBuffer->vertexStreams, &meshBuffer->owner, false);
    };
    if (step != 0) {
        answer = requestProcessBuffer(0);
        if ((answer & 4) == 0) {
            return answer;
        }
        bufferFlags |= 1u << (index & 0x1f);
        morph(index);
        return answer;
    }
    const std::uint32_t bit = 1u << (index & 0x1f);
    if ((bit & bufferFlags) != 0 && (bit & dirtyBuffers) != 0) {
        morph(index);
        dirtyBuffers &= ~bit;
        return answer;
    }
    answer = requestProcessBuffer(1);
    if ((answer & 4) != 0) {
        morph(index);
    }
    return answer;
}

// 0x64a6e4 _ZN6glitch7collada13CMorphingMesh5morphEj
// Blends the position (and normal) streams of the target meshes' buffer `index` into the morph buffer's streams, over the buffer's
// vertex range. The first target's weight is made 1.0 and, when the record is not "relative", reduced by the other weights. The first target
// with a weight above 1e-6 initialises the destination (dst = w * src); every later target with a non-zero weight is added (dst += w * src).
// The normal streams are blended the same way when both buffers have them (the destination normals are stepped by the position stride, as
// the listing does). Deviation: with no target above the threshold the original reads past the end of the target list; the port returns.
void CMorphingMesh::morph(std::uint32_t index) {
    if (targets.empty()) {
        return;
    }
    scene::CMeshBuffer* destination = buffers[index].buffer.get();
    const std::uint32_t vertexStart = destination->primitiveStream.m_vertexStart;
    const std::uint32_t vertexCount = destination->primitiveStream.m_vertexEnd - vertexStart;
    targets[0].weight = 1.0f;
    const std::size_t targetTotal = targets.size();
    if (morphData->relative == 0 && targetTotal > 1) {
        for (std::size_t i = 1; i != targetTotal; ++i) {
            targets[0].weight = targets[0].weight - targets[i].weight;
        }
    }
    std::size_t first = 0;
    while (first < targetTotal && static_cast<double>(std::fabs(targets[first].weight)) <= 0.000001) {
        ++first;
    }
    if (first == targetTotal) {
        return;
    }
    const float firstWeight = targets[first].weight;

    // The first contributing target initialises the destination.
    boost::intrusive_ptr<scene::CMeshBuffer> firstBuffer = targets[first].mesh->getMeshBuffer(index);
    video::CVertexStreams* sourceStreams = firstBuffer->vertexStreams.get();
    video::SVertexStream* sourcePosition = &sourceStreams->m_streams[0];
    std::uint8_t* sourcePositions = streamData(const_cast<std::uint8_t*>(static_cast<const video::IBuffer*>(sourcePosition->buffer.get())->map(kReadAccess)), *sourcePosition);
    const std::uint32_t sourceStride = sourcePosition->field0e;

    video::CVertexStreams* destinationStreams = destination->vertexStreams.get();
    video::SVertexStream& destinationPosition = destinationStreams->m_streams[0];
    std::uint8_t* destinationPositions = streamData(destinationPosition.buffer->map(kWriteAccess), destinationPosition);
    const std::uint32_t destinationStride = destinationPosition.field0e;
    if (destinationPositions != nullptr && sourcePositions != nullptr) {
        setWeightedVertex<core::vector3d<float>>(
            reinterpret_cast<core::vector3d<float>*>(destinationPositions + vertexStart * destinationStride), destinationStride,
            reinterpret_cast<const core::vector3d<float>*>(sourcePositions + vertexStart * sourceStride), sourceStride, firstWeight, vertexCount);
    }

    video::SVertexStream* destinationNormal = nullptr;
    std::uint8_t* destinationNormals = nullptr;
    std::uint8_t* destinationNormalStart = nullptr;
    if ((destinationStreams->m_attributeMask & sourceStreams->m_attributeMask & kNormalAttribute) != 0) {
        video::SVertexStream& candidate = destinationStreams->m_streams[destinationStreams->m_count0c + 1u];
        video::SVertexStream& sourceNormal = sourceStreams->m_streams[sourceStreams->m_count0c + 1u];
        if (candidate.buffer && sourceNormal.buffer) {
            destinationNormal = &candidate;
            destinationNormals = streamData(candidate.buffer->map(kWriteAccess), candidate);
            if (destinationNormals != nullptr) {
                destinationNormalStart = destinationNormals + vertexStart * candidate.field0e;
            }
            std::uint8_t* sourceNormals =
                streamData(const_cast<std::uint8_t*>(static_cast<const video::IBuffer*>(sourceNormal.buffer.get())->map(kReadAccess)), sourceNormal);
            if (destinationNormalStart != nullptr && sourceNormals != nullptr) {
                setWeightedVertex<core::vector3d<float>>(
                    reinterpret_cast<core::vector3d<float>*>(destinationNormalStart), destinationStride,
                    reinterpret_cast<const core::vector3d<float>*>(sourceNormals + vertexStart * sourceNormal.field0e), sourceNormal.field0e,
                    firstWeight, vertexCount);
            }
            if (sourceNormals != nullptr) {
                sourceNormal.buffer->unmap();
            }
        }
    }

    // The remaining targets with a weight are added.
    for (std::size_t t = first + 1; t < targetTotal; ++t) {
        const float weight = targets[t].weight;
        if (weight == 0.0f) {
            continue;
        }
        boost::intrusive_ptr<scene::CMeshBuffer> targetBuffer = targets[t].mesh->getMeshBuffer(index);
        video::CVertexStreams* streams = targetBuffer->vertexStreams.get();
        if (sourcePositions != nullptr) {
            sourcePosition->buffer->unmap();
        }
        sourcePosition = &streams->m_streams[0];
        sourcePositions =
            streamData(const_cast<std::uint8_t*>(static_cast<const video::IBuffer*>(sourcePosition->buffer.get())->map(kReadAccess)), *sourcePosition);
        const std::uint32_t stride = sourcePosition->field0e;
        if (destinationPositions != nullptr && sourcePositions != nullptr) {
            addWeightedVertices(reinterpret_cast<char*>(destinationPositions + vertexStart * destinationStride), destinationStride,
                                reinterpret_cast<const char*>(sourcePositions + vertexStart * stride), stride, weight, vertexCount);
        }
        if (destinationNormalStart == nullptr || (streams->m_attributeMask & kNormalAttribute) == 0) {
            continue;
        }
        video::SVertexStream& normal = streams->m_streams[streams->m_count0c + 1u];
        if (!normal.buffer) {
            continue;
        }
        std::uint8_t* normals =
            streamData(const_cast<std::uint8_t*>(static_cast<const video::IBuffer*>(normal.buffer.get())->map(kReadAccess)), normal);
        if (normals != nullptr) {
            addWeightedVertices(reinterpret_cast<char*>(destinationNormalStart), destinationStride,
                                reinterpret_cast<const char*>(normals + vertexStart * normal.field0e), normal.field0e, weight, vertexCount);
            normal.buffer->unmap();
        }
    }

    if (destinationNormals != nullptr) {
        destinationNormal->buffer->unmap();
    }
    if (destinationPositions != nullptr) {
        destinationPosition.buffer->unmap();
    }
    if (sourcePositions != nullptr) {
        sourcePosition->buffer->unmap();
    }
}

}  // namespace glitch::collada
