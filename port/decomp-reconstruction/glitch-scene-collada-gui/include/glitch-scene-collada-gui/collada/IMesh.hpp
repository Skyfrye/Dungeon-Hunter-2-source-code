// glitch::collada::IMesh, CMesh and CMorphingMesh: the COLLADA mesh classes. Canonical header of the engine
// unification wave (u1-scene). It replaces the CMesh / CMorphingMesh stand-ins in collada_scene_accessors.hpp, the
// glitch::collada::IMesh layout struct in layouts/collada_members.hpp and the recon_22::IMesh stand-in in
// recon/slice_22.hpp. The scene-side classes are glitch::scene::IMesh / CMesh (scene/IMesh.hpp, scene/CMesh.hpp).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; offsets in comments are the original ones):
//   tools/decomp_vtable.py glitch::collada::IMesh (80 bytes): IMesh derives from glitch::scene::IMesh (the slots
//   +0x00 .. +0x2c are scene::IMesh's, with getUserProperty inherited) and adds +0x30 getType (pure), +0x34 onAnimate
//   (0x6676b4, empty), +0x38 onPrepareBufferForRendering (0x6676b8, returns 16), +0x3c releaseProcessBuffer (0x6676c0, empty),
//   +0x40 init (0x6676c4, empty), +0x44 setTransform (0x6676c8). The vtable has no virtual base.
//   Members (the CMesh and CMorphingMesh constructors 0x645588, 0x64b9c8 write them in this order):
//     +0x00 vptr, +0x04 reference count, +0x08 the uid string pointer (the constructors store an empty-string
//     constant, then the geometry or controller name), +0x0c .. +0x13 a CColladaDatabase (record, factory: copied from
//     the constructor argument, the record gets a use), +0x14 a word the derived constructors clear.
//   ~IMesh (0x667704) restores the IMesh vtable and destroys the database at +0x0c (D0 0x667738 skipped).
//   CMesh: operator new(0x3c) in clone (0x644f88), vtable 80 bytes, every scene::IMesh slot overridden (0x644a44 ..
//   0x644b88) plus getType (0x644a3c, returns 0). Members +0x18 buffer vector (12-byte SBuffer), +0x24 aabbox3d box
//   (the copy constructor 0x644eb8 copies words 9..14, the constructor writes -1..1).
//   CMorphingMesh: vtable 80 bytes; getType returns 1 (0x649904); the buffer accessors read its own +0x18 vector,
//   getMeshBufferCount / getBoundingBox forward to the first morph target (+0x24 vector of {mesh, weight}, 8 bytes each;
//   instanciateMesh 0x64b700 pushes {mesh, 1.0f}); +0x30 the controller's morph record, +0x38 the root node (the
//   destructor 0x64a1b8 calls CRootSceneNode::removeMorphingMesh on it), +0x3c an index initialised to -1.
// Port notes: pointers are host width. The glitch std::vector<T, SAllocator> is std::vector. The intrusive handles
// count (glitch-core-io/boost/intrusive_ptr.hpp).
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/collada_database.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"

namespace glitch::collada {

// The buffer configuration the factory hands to the geometry builder (CColladaFactory::getVertexBufferConfig / getIndexBufferConfig, both
// return {4, 0, 0}; CMesh and scene::CMeshBuffer read it). 8 bytes in the original: a word and two bytes.
struct SBufferConfig {
    std::uint32_t usage = 4;  // +0x00 compared with the buffer's usage byte (IBuffer +0x11) by the CMeshBuffer constructor (0x6bcf80)
    std::uint8_t flagA = 0;   // +0x04 when clear the constructor keeps the buffers it already made
    std::uint8_t flagB = 0;   // +0x05 read together with flagA (role not mapped)
};

// Step argument of onPrepareBufferForRendering. The enumerators are not recovered (the call sites in the skinned mesh
// pass small integers), so the enum is the 32-bit word.
using E_PREPARE_BUFFER_STEP = std::uint32_t;

class IMesh : public scene::IMesh {
public:
    // vptr+0x00 / +0x04: 0x667704 (D1, restores the vtable and destroys the database). PARTIAL: the database handle at
    // +0x0c does not own its record yet (CColladaDatabase has no counting destructor in this category).
    ~IMesh() override;

    // vptr+0x30: pure. A small integer naming the mesh kind (CMesh 0, CMorphingMesh 1).
    virtual std::uint32_t getType() const = 0;
    // vptr+0x34, 0x6676b4: empty.
    virtual void onAnimate(std::uint32_t timeMs);
    // vptr+0x38, 0x6676b8: returns 16 in the base (the pseudocode body is `return 16`; the meaning of the value is not
    // recovered). CMorphingMesh (0x64afec) and CSkinnedMesh override it.
    virtual std::int32_t onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver,
                                                     std::uint32_t index);
    // vptr+0x3c, 0x6676c0: empty.
    virtual void releaseProcessBuffer(video::IVideoDriver* driver, std::uint32_t index);
    // vptr+0x40, 0x6676c4: empty.
    virtual void init(video::IVideoDriver* driver, bool flag);
    // vptr+0x44, 0x6676c8. PARTIAL: forwards to the driver's setTransform with state 1 (world); the matrix argument is
    // not forwarded here because the driver is a stand-in.
    virtual void setTransform(video::IVideoDriver* driver, const core::CMatrix4<float>& matrix);

    // 0x64834c: the vertex count of the first buffer (the vertex count word of its vertex streams).
    std::uint32_t getVertexCount() const;

    const char* uid = "";          // +0x08
    CColladaDatabase database;     // +0x0c .. +0x13
    std::uint32_t bufferFlags = 0; // +0x14 cleared by every constructor; for the skinned meshes bit i marks buffer i as skinned into its own output buffer (collada/CSkinnedMesh.hpp)
};

class CMesh : public IMesh {
public:
    // One buffer entry, 12 bytes: the first word is the mesh buffer, the others the material and the vertex-attribute
    // map. The special members are out of line (the video types are incomplete here).
    struct SBuffer {
        SBuffer();
        SBuffer(const SBuffer& other);
        SBuffer& operator=(const SBuffer& other);
        // 0x644c88: drops the vertex-attribute map, then the material, then the buffer.
        ~SBuffer();

        boost::intrusive_ptr<scene::CMeshBuffer> buffer;                              // +0x00
        boost::intrusive_ptr<video::CMaterial> material;                              // +0x04
        boost::intrusive_ptr<video::CMaterialVertexAttributeMap> vertexAttributeMap;  // +0x08
    };

    // Not in the binary: an empty mesh (reference count 0, unit box, no buffers). The original has only the database
    // constructor and the copy constructor; this one is for code and tests that fill `buffers` themselves.
    CMesh();
    // 0x645588 (C1) and 0x645b68 (C2): builds the buffers from a geometry record of the database. Not reconstructed (the
    // body is 7311 bytes of stream decoding); declared so the class is complete.
    CMesh(const CColladaDatabase& database, video::IVideoDriver* driver, const SGeometry& geometry,
          const SBufferConfig& vertexConfig, const SBufferConfig& indexConfig, bool onDemand);
    // 0x644eb8 (C1) and 0x644fc8 (C2): a copy of the buffers and the box. Reference count starts at 0.
    CMesh(const CMesh& other);
    // 0x644cfc (D1), 0x644d4c / 0x644d68 (D0, D2): destroys the buffer vector.
    ~CMesh() override;

    // vptr+0x0c .. +0x28 (scene::IMesh) and +0x30.
    boost::intrusive_ptr<scene::IMesh> clone() const override;                                     // 0x644f88
    std::uint32_t getMeshBufferCount() const override;                                             // 0x644a44
    boost::intrusive_ptr<scene::CMeshBuffer> getMeshBuffer(std::uint32_t index) const override;    // 0x644a6c
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;        // 0x644ac8
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> getMaterialVertexAttributeMap(
        std::uint32_t index) const override;                                                       // 0x644b24
    void setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                     const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) override;  // 0x644bdc
    const core::aabbox3d<float>& getBoundingBox() const override;                                  // 0x644b80
    void setBoundingBox(const core::aabbox3d<float>& box) override;                                // 0x644b88
    std::uint32_t getType() const override;                                                        // 0x644a3c (0)

    std::vector<SBuffer> buffers;                                                                  // +0x18
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};                   // +0x24
};

class CRootSceneNode;
struct SMorph;

// 0x649b3c: dst = weight * src for count vertices of three floats (instantiated for core::vector3d<float>).
template <typename T>
void setWeightedVertex(T* destination, std::uint32_t destinationStride, const T* source, std::uint32_t sourceStride, float weight,
                       std::uint32_t count);

class CMorphingMesh : public IMesh {
public:
    struct SBuffer {
        SBuffer();
        SBuffer(const SBuffer& other);
        SBuffer& operator=(const SBuffer& other);
        // 0x64a0b0: drops the vertex-attribute map, then the material, then the buffer (as CMesh::SBuffer, 0x644c88).
        ~SBuffer();

        boost::intrusive_ptr<scene::CMeshBuffer> buffer;                              // +0x00
        boost::intrusive_ptr<video::CMaterial> material;                              // +0x04
        boost::intrusive_ptr<video::CMaterialVertexAttributeMap> vertexAttributeMap;  // +0x08
    };
    // One morph target: a mesh and its blend weight (8 bytes).
    struct STarget {
        boost::intrusive_ptr<IMesh> mesh;  // +0x00
        float weight = 1.0f;               // +0x04
    };

    // Not in the binary: an empty morphing mesh (reference count 0, no targets, no root node), for tests and ports.
    CMorphingMesh();
    // 0x64b9c8 (C1) and 0x64baa0 (C2). PARTIAL: only the member initialisation is written; instanciateMesh builds the
    // targets from the database and is not reconstructed here.
    CMorphingMesh(const CColladaDatabase& database, video::IVideoDriver* driver, SController& controller,
                  CRootSceneNode* root);
    // 0x64a1b8 (D1), 0x64a264 (D0), 0x64a248 (D2). Calls CRootSceneNode::removeMorphingMesh(+0x38, this), then the
    // vectors. The root node is null-tested (the port's test-only default constructor leaves it null); every other step is
    // the original's.
    ~CMorphingMesh() override;

    boost::intrusive_ptr<scene::IMesh> clone() const override;                                     // 0x64990c (null handle)
    std::uint32_t getMeshBufferCount() const override;                                             // 0x649918
    boost::intrusive_ptr<scene::CMeshBuffer> getMeshBuffer(std::uint32_t index) const override;    // 0x649938
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;        // 0x649960
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> getMaterialVertexAttributeMap(
        std::uint32_t index) const override;                                                       // 0x649988
    void setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                     const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) override;  // 0x649a88
    const core::aabbox3d<float>& getBoundingBox() const override;                                  // 0x6499b0
    void setBoundingBox(const core::aabbox3d<float>& box) override;                                // 0x6499d0 (empty)
    std::uint32_t getType() const override;                                                        // 0x649904 (1)
    std::int32_t onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver,
                                             std::uint32_t index) override;                          // 0x64afec
    void releaseProcessBuffer(video::IVideoDriver* driver, std::uint32_t index) override;          // 0x64a2f4
    void init(video::IVideoDriver* driver, bool flag) override;                                    // 0x64a3b4

    // Non-virtual members, PARTIAL: the bodies are empty in src/collada/IMesh.cpp (the slice_20 free-function stand-ins were retired).
    void morph(std::uint32_t timeMs);                                                              // 0x64a6e4
    void instanciateMesh(video::IVideoDriver* driver, CRootSceneNode* root);                       // 0x64b700

    std::vector<SBuffer> buffers;          // +0x18
    std::vector<STarget> targets;          // +0x24
    const SMorph* morphData = nullptr;     // +0x30 the controller's morph record (SController +0x08)
    std::uint32_t unk_34 = 0;              // +0x34 not read by any listing seen
    CRootSceneNode* rootNode = nullptr;    // +0x38
    std::uint32_t dirtyBuffers = 0xFFFFFFFFu;  // +0x3c bit i set: buffer i has to be morphed again (onPrepareBufferForRendering clears it)
};

}  // namespace glitch::collada
