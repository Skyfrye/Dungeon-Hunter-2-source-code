// glitch::collada::ISkinnedMesh, CSkinnedMesh and the skin records they use (SSkin, SSkinBuffer, SSkinCache). Canonical header of the
// scene-owner wave. It replaces skinned_mesh.hpp (a class with a pointer to the buffer table and a handful of members, no bases),
// the ISkinnedMesh of collada_misc.hpp (the skinning flag), layouts/collada_members.hpp (the ISkinnedMesh layout struct) and the
// recon_22 stand-ins (recon/slice_22.hpp).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::collada::CSkinnedMesh, 0x58 + 4 = 92 bytes, no
// virtual base; constructors 0x665fe8 (C1) / 0x6664f0 (C2), destructors 0x665938 (D1) / 0x665a38 (D2) / D0 0x665a1c (skipped)):
//   ISkinnedMesh derives from collada::IMesh (collada/IMesh.hpp: +0x08 uid, +0x0c database, +0x14 the per-buffer word below) and adds
//   +0x18 the skinning-enabled byte (set by the CSkinnedMesh constructor). It supplies the default setBoundingBox (empty, 0x669b6c),
//   setIsSkinningEnabled (0x669b64), setTransform (0x669b70), releaseProcessBuffer (0x669c28), getTransform (0x669d6c) and adds the
//   pure slots K 0x48 updateTechnique, K 0x4c skin, K 0x50 needOutputBuffer, K 0x54 setIsSkinningEnabled, K 0x58 getTransform.
//   IMesh +0x14 is, for the skinned meshes, a per-buffer bit mask: bit i is set while buffer i is skinned by a technique that writes its own
//   output buffer (updateTechnique, init and onPrepareBufferForRendering set and clear it from the technique's result). Bit 0 also
//   selects the identity transform (getTransform, setTransform).
//   CSkinnedMesh adds:
//     +0x1c SSkin* skin (SController +0x08)           +0x20 the init flag (init's second argument)    +0x22 a byte cleared by the constructor
//     +0x23 the process-buffer byte: set by onPrepareBufferForRendering step 1 when the mesh asked for a process buffer, cleared by
//           releaseProcessBuffer
//     +0x24 aabbox3d box (starts as (-1,-1,-1) .. (1,1,1) and is replaced by the instanced mesh's box)
//     +0x3c .. +0x4b four owned technique pointers: hardware texture, hardware matrix, hardware quaternion, software
//     +0x4c the skin data of the file (a counted on-demand block)
//     +0x50 vector of on-demand blocks (one per skin data record)
//     +0x5c vector<SSkinBuffer> (20-byte entries)     +0x68 the instanced collada::IMesh (a reference is held)
//     +0x6c the scene node the mesh is attached to    +0x70 SSkinCache (0x2c bytes), up to +0x9c
//   The vtable (K = listing offset): 0x00/0x04 destructors, 0x0c clone (returns a null handle), 0x10 getMeshBufferCount, 0x14 getMeshBuffer,
//   0x18 getMaterial, 0x1c getMaterialVertexAttributeMap, 0x20 setMaterial, 0x24 getBoundingBox, 0x28 setBoundingBox (ISkinnedMesh's),
//   0x30 getType (2), 0x34 onAnimate, 0x38 onPrepareBufferForRendering, 0x3c releaseProcessBuffer, 0x40 init, 0x44 setTransform, 0x48
//   updateTechnique, 0x4c skin, 0x50 needOutputBuffer, 0x54 setIsSkinningEnabled, 0x58 getTransform.
// Port notes: pointers are host width. The STLport std::vector is std::vector. The on-demand blocks are the model of glitch::res
// (a counted pointer to a block of file data loaded when first used).
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/core/dual_quaternion.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/res/onDemand.hpp"
#include "glitch-video/buffer.hpp"

namespace glitch::video {
class CMaterial;
class CMaterialVertexAttributeMap;
class IBuffer;
}  // namespace glitch::video

// glitch::res::SOnDemandBlock, onDemandPointer<T> and onDemandReader are in res/onDemand.hpp.

namespace glitch::collada {

namespace detail {
class IColladaSkinTechnique;
}  // namespace detail

class CRootSceneNode;
struct SController;

// One record of SSkin::skinDataEntries (8 bytes in the original): a word and the on-demand block of the (weight, joint index) pairs of one
// skin data record.
struct SSkinDataRecord {
    std::uint32_t first = 0;                    // +0x00 not read by the constructor
    res::SOnDemandBlock* block = nullptr;       // +0x04
};

// The skin record of a controller (SController +0x08, the object CSkinnedMesh +0x1c points at). Only the words the skinning code reads are
// named.
struct SSkin {
    const float* bindMatrices = nullptr;       // +0x04 inverse bind matrices, one 4x4 matrix (64 bytes) per joint
    float bindShapeMatrix[16] = {};            // +0x10 the bind shape matrix (the techniques multiply by it)
    const char* sourceUrl = nullptr;           // +0x70 "#<geometry or controller name>"
    std::int32_t jointCount = 0;               // +0x74
    const char* const* jointScopeIds = nullptr;  // +0x78 the scope id of each joint node
    res::SOnDemandBlock* skinData = nullptr;   // +0x80 the on-demand SSkinData<float> (CSkinnedMesh +0x4c)
    std::int32_t skinDataCount = 0;            // +0x84
    const SSkinDataRecord* skinDataEntries = nullptr;  // +0x88 8-byte records, one on-demand block each
    std::int32_t boxCount = 0;                 // +0x8c number of 24-byte joint boxes
    const float* jointBoxes = nullptr;         // +0x90 six floats per box
    boost::intrusive_ptr<video::IBuffer> proxy;  // +0x94 the skin's proxy buffer (CResFile::releaseObjects releases it): checkAvailability and init make it static (usage byte +0x11 cleared)
    std::uint8_t weightsPerVertex = 0;         // +0x98 how many joint weights a vertex has (1 .. 4)
};

// The skinning cache shared by the four techniques of a mesh (CSkinnedMesh +0x70, 0x2c bytes).
struct SSkinCache {
    SSkinCache() = default;
    SSkinCache(const SSkinCache&) = delete;
    SSkinCache& operator=(const SSkinCache&) = delete;
    // 0x663b54: releases the buffer handle at +0x28 and the three vectors.
    ~SSkinCache();

    // The cache's dirty bits (+0x00): 0x01 the matrix palette must be rebuilt, 0x02 the dual quaternions, 0x08 the box, 0x10000 the
    // joint node pointers; CSkinnedMesh::onAnimate and attach set the low 16 bits.
    std::uint32_t dirty = 0;                                  // +0x00
    std::vector<core::CMatrix4<float>> palette;               // +0x04 the final matrix of each joint (68 bytes each)
    std::vector<const core::CMatrix4<float>*> jointMatrices;  // +0x10 the joint nodes' absolute matrices (null when the node is missing)
    std::vector<core::dual_quaternion> dualQuaternions;       // +0x1c the palette as dual quaternions (32 bytes each)
    boost::intrusive_ptr<glitch::IReferenceCounted> buffer;   // +0x28
};

// One mesh buffer of a skinned mesh (20 bytes in the original; CSkinnedMesh +0x5c holds a vector of them).
struct SSkinBuffer {
    SSkinBuffer() = default;
    SSkinBuffer(const SSkinBuffer&) = default;
    // 0x664530: copies the three handles (taking a use of each), the technique word and the three technique bytes.
    SSkinBuffer& operator=(const SSkinBuffer& other);
    // 0x6645f8: drops the vertex-attribute map, the material and the buffer.
    ~SSkinBuffer();

    boost::intrusive_ptr<scene::CMeshBuffer> buffer;                              // +0x00
    boost::intrusive_ptr<video::CMaterial> material;                              // +0x04
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> vertexAttributeMap;  // +0x08
    mutable detail::IColladaSkinTechnique* technique = nullptr;                   // +0x0c the technique that skins this buffer
    mutable std::uint8_t requestedTechnique = 0xff;                               // +0x10 the material's technique id the choice was made for
    mutable std::uint8_t appliedTechnique = 0xff;                                 // +0x11 the id the technique was last updated for
    std::uint8_t unk_12 = 0xff;                                                   // +0x12 copied with the others; role not mapped
};

class ISkinnedMesh : public IMesh {
public:
    // 0x669bf4 (D1), 0x669dc4 (D0, skipped): restores the vtable and destroys the database handle.
    ~ISkinnedMesh() override;

    // K 0x28, 0x669b6c: empty.
    void setBoundingBox(const core::aabbox3d<float>& box) override;
    // K 0x3c, 0x669c28: switches skinning off while it runs, gets the process-buffer slot of the buffer through the driver and clears the
    // buffer's bit in the mask; skinning is switched back on.
    void releaseProcessBuffer(video::IVideoDriver* driver, std::uint32_t index) override;
    // K 0x44, 0x669b70: sets the driver's world transform to the identity matrix when skinning is on or bit 0 is set.
    void setTransform(video::IVideoDriver* driver, const core::CMatrix4<float>& matrix) override;
    // K 0x48 .. 0x58: the skinning interface.
    virtual void updateTechnique(std::uint32_t index) = 0;                       // 0x48
    virtual void skin(std::uint32_t index) = 0;                                  // 0x4c
    virtual bool needOutputBuffer() const = 0;                                   // 0x50
    // 0x669b64: stores the flag at +0x18.
    virtual void setIsSkinningEnabled(bool enabled);                             // 0x54
    // 0x669d6c: the identity matrix when skinning is on or bit 0 is set, otherwise a copy of `matrix`.
    virtual core::CMatrix4<float> getTransform(const core::CMatrix4<float>& matrix) const;  // 0x58

    bool skinningEnabled = false;   // +0x18
};

class CSkinnedMesh : public ISkinnedMesh {
public:
    // 0x665fe8 (C1) and 0x6664f0 (C2): see the source.
    CSkinnedMesh(const CColladaDatabase& database, video::IVideoDriver* driver, SController& controller, CRootSceneNode* root);
    // 0x665938 (D1), 0x665a38 (D2), 0x665a1c (D0, skipped): releases the cache, the mesh, the buffers, the on-demand blocks, the skin
    // data and the four techniques, then the ISkinnedMesh part.
    ~CSkinnedMesh() override;

    // K 0x0c .. 0x2c.
    boost::intrusive_ptr<scene::IMesh> clone() const override;                                     // 0x66352c (null)
    std::uint32_t getMeshBufferCount() const override;                                             // 0x6635b4
    boost::intrusive_ptr<scene::CMeshBuffer> getMeshBuffer(std::uint32_t index) const override;    // 0x6635d0
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;        // 0x6635f8
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> getMaterialVertexAttributeMap(
        std::uint32_t index) const override;                                                       // 0x663620
    void setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                     const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) override;  // 0x66391c
    const core::aabbox3d<float>& getBoundingBox() const override;                                  // 0x6636a4
    // K 0x30 .. 0x44.
    std::uint32_t getType() const override;                                                        // 0x663524 (2)
    void onAnimate(std::uint32_t timeMs) override;                                                 // 0x663584
    std::int32_t onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver,
                                             std::uint32_t index) override;                          // 0x665004
    void releaseProcessBuffer(video::IVideoDriver* driver, std::uint32_t index) override;          // 0x6639f4
    void init(video::IVideoDriver* driver, bool flag) override;                                    // 0x665678
    void setTransform(video::IVideoDriver* driver, const core::CMatrix4<float>& matrix) override;  // 0x6655ec
    // K 0x48 .. 0x58.
    void updateTechnique(std::uint32_t index) override;                                            // 0x664e0c
    void skin(std::uint32_t index) override;                                                       // 0x664ee0
    bool needOutputBuffer() const override;                                                        // 0x6638bc
    void setIsSkinningEnabled(bool enabled) override;                                              // 0x664c84
    core::CMatrix4<float> getTransform(const core::CMatrix4<float>& matrix) const override;        // 0x665580

    // Non-virtual members.
    // 0x663538: stores the node, attaches the four techniques to it and marks the whole cache dirty.
    void attach(scene::ISceneNode* node);
    // 0x663648: the box becomes the first technique's computeBoundingBox().
    void computeBoundingBox();
    // 0x66383c: selects the technique for the buffer: the first of the four whose checkAvailability accepts the material's technique.
    void reverifySkinTechnique(const SSkinBuffer& buffer) const;
    // 0x664af8: builds the mesh from the skin's source (a geometry, else a controller) and sizes the buffer table to it.
    void instanciateMesh(video::IVideoDriver* driver, CRootSceneNode* root);

    SSkin* skinRecord = nullptr;                          // +0x1c
    std::uint8_t initFlag = 0;                            // +0x20
    std::uint8_t unk_22 = 0;                              // +0x22
    std::uint8_t processBufferTaken = 0;                  // +0x23
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x24 .. +0x3c
    detail::IColladaSkinTechnique* techniques[4] = {};    // +0x3c: hardware texture, hardware matrix, hardware quaternion, software
    res::onDemandPointer<float> skinData;                 // +0x4c
    std::vector<res::onDemandPointer<std::pair<float, unsigned short>>> skinDataEntries;  // +0x50
    std::vector<SSkinBuffer> buffers;                     // +0x5c
    boost::intrusive_ptr<IMesh> mesh;                     // +0x68
    scene::ISceneNode* attachedNode = nullptr;            // +0x6c
    SSkinCache cache;                                     // +0x70
};

}  // namespace glitch::collada
