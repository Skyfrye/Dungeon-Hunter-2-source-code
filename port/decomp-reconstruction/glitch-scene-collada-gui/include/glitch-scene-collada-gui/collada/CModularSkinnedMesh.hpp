// glitch::collada::CModularSkinnedMesh: a skinned mesh assembled from interchangeable modules (the character pieces: head, armour,
// weapons), grouped in categories. Canonical header of the scene-owner wave. It replaces modular_skinned_mesh.hpp (a class without bases
// that mapped the accessors' words) and the recon stand-ins.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x649120 (C1) / 0x64928c (C2), destructors 0x647afc (D1) / 0x647b70
// (D2) / D0 0x647b54 (skipped); tools/decomp_vtable.py glitch::collada::CModularSkinnedMesh, 0x58 + 4 bytes of vtable, no virtual base):
//   Derives from ISkinnedMesh (+0x18 skinning-enabled byte, 1 after construction). Members:
//     +0x1c SInstanceModularSkin* the instance record that names the categories and their modules (file data)
//     +0x20 CRootSceneNode* the root the modules' controllers are instanced under
//     +0x24 vector<SModule> (8-byte entries: the module id, then the module mesh, a reference is held)
//     +0x30 vector<SModularBuffer> (32-byte entries: the merged buffers)
//     +0x3c a word the constructor sets to 1 when its fifth argument is zero (read by updateBuffer)
//     +0x40 aabbox3d box ((-1,-1,-1) .. (1,1,1) at construction)       +0x58 needOutputBuffer byte      +0x59 box-dirty byte (1)
//   IMesh +0x14 (bufferFlags) bit 0 is set by the constructor argument path and read by setModule / setModuleCount / setCategoryModule as
//   `(flags & 1) ^ 1`, the `flag` argument of updateBuffer.
//   Vtable: ISkinnedMesh's slots with clone (0x6469c0: null handle), getMeshBufferCount, getMeshBuffer, getMaterial, getMaterialVertexAttributeMap,
//   setMaterial, getBoundingBox, getType (3), onAnimate, onPrepareBufferForRendering, updateTechnique, skin, needOutputBuffer and
//   setIsSkinningEnabled overridden; releaseProcessBuffer, init, setTransform, getTransform are ISkinnedMesh's / IMesh's.
// Port notes: pointers are host width; the STLport vectors are std::vector.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"

namespace glitch::video {
class IBuffer;
}

namespace glitch::collada {

class CRootSceneNode;

class CModularSkinnedMesh : public ISkinnedMesh {
public:
    // One module slot (8 bytes in the original): the id of the module chosen for the category (-1 when none) and its mesh.
    struct SModule {
        std::int32_t moduleId = -1;                     // +0x00
        boost::intrusive_ptr<ISkinnedMesh> mesh;        // +0x04
    };

    // One merged buffer (32 bytes in the original). The default constructor (0x646968 C1 / 0x646994 C2) zeroes the handles and sets the
    // flag at +0x1c.
    struct SModularBuffer {
        // 0x646968 / 0x646994.
        SModularBuffer();
        // 0x647430: copies the three handles (a use each), the module index vector, the +0x18 handle and the flag.
        SModularBuffer(const SModularBuffer& other);
        // 0x647d18: as the copy constructor, assigning.
        SModularBuffer& operator=(const SModularBuffer& other);
        // 0x647a68 (D1), 0x647cc8 (D2): drops the handle at +0x18, frees the index vector and drops the three handles.
        ~SModularBuffer();
        // 0x647970: makes the vertex buffer at +0x18 hold at least `vertexBytes` and the buffer's index stream at least `indexBytes`
        // (growing, or exactly when `exact` is set). PARTIAL: IBuffer::reset is not reconstructed in glitch-video.
        int reallocate(std::uint32_t vertexBytes, std::uint32_t indexBytes, bool exact);

        boost::intrusive_ptr<scene::CMeshBuffer> buffer;                              // +0x00 the merged mesh buffer
        boost::intrusive_ptr<video::CMaterial> material;                              // +0x04
        boost::intrusive_ptr<video::CMaterialVertexAttributeMap> vertexAttributeMap;  // +0x08
        std::vector<std::uint32_t> moduleIndices;                                     // +0x0c the modules that contribute to the buffer
        boost::intrusive_ptr<video::IBuffer> vertexBuffer;                            // +0x18
        bool merged = true;                                                           // +0x1c set: the buffer is the merged one, clear: the first module's
    };

    // 0x649120 (C1) and 0x64928c (C2). PARTIAL: updateBuffer is not reconstructed.
    // `mergeFlag` is zero for the character meshes (+0x3c becomes 1); `update` is passed to updateBuffer; the driver is not read.
    CModularSkinnedMesh(const CColladaDatabase& database, SInstanceModularSkin* instance, CRootSceneNode* root, int mergeFlag,
                        bool update, video::IVideoDriver* driver = nullptr);
    // 0x647afc (D1), 0x647b70 (D2), 0x647b54 (D0, skipped): destroys the buffers and the modules, then the ISkinnedMesh part.
    ~CModularSkinnedMesh() override;

    // K 0x0c .. 0x2c.
    boost::intrusive_ptr<scene::IMesh> clone() const override;                                     // 0x6469c0 (null)
    std::uint32_t getMeshBufferCount() const override;                                             // 0x646b54
    boost::intrusive_ptr<scene::CMeshBuffer> getMeshBuffer(std::uint32_t index) const override;    // 0x646b68
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;        // 0x646bd4
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> getMaterialVertexAttributeMap(
        std::uint32_t index) const override;                                                       // 0x646bf8
    void setMaterial(std::uint32_t index, const boost::intrusive_ptr<video::CMaterial>& material,
                     const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& vertexAttributeMap) override;  // 0x6470a8
    const core::aabbox3d<float>& getBoundingBox() const override;                                  // 0x646cdc
    // K 0x30 .. 0x38.
    std::uint32_t getType() const override;                                                        // 0x646a94 (3)
    void onAnimate(std::uint32_t timeMs) override;                                                 // 0x646a9c
    std::int32_t onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver,
                                             std::uint32_t index) override;                          // 0x647774
    // K 0x48 .. 0x54.
    void updateTechnique(std::uint32_t index) override;                                            // 0x646af8
    void skin(std::uint32_t index) override;                                                       // 0x647fcc
    bool needOutputBuffer() const override;                                                        // 0x646af0
    void setIsSkinningEnabled(bool enabled) override;                                              // 0x647138

    // Non-virtual members.
    int reallocate(std::uint32_t size);                                    // 0x646a8c (returns 0)
    void computeBoundingBox();                                             // 0x646c1c
    // 0x6483c8 (2488 bytes): rebuilds the merged buffers from the modules. PARTIAL: not reconstructed (vertex stream copies).
    int updateBuffer(bool flag);
    int setModule(std::uint32_t index, const boost::intrusive_ptr<ISkinnedMesh>& mesh);           // 0x648db4
    int setModuleCount(std::uint32_t count, bool update);                  // 0x648e18
    int setModules(const boost::intrusive_ptr<ISkinnedMesh>* modules, std::uint32_t count);       // 0x648f34
    void setCategoryModule(int category, int module, bool update);         // 0x648fd0
    void setCategoryModule(const char* category, const char* module, bool update);                // 0x6490e4
    const char* getCategoryName(int category) const;                       // 0x6469cc (null when out of range)
    const char* getModuleName(int category, int module) const;             // 0x6469e8 (null when out of range)
    std::int32_t getCategoryCount() const;                                 // 0x646a28
    std::int32_t getCategoryModuleCount(int category) const;               // 0x646a34
    std::int32_t getCurrentModuleId(int category) const;                   // 0x646a48
    const char* getCurrentModuleName(int category) const;                  // 0x646a54 (null when no module is set)
    std::int32_t getModuleId(const char* name) const;                      // 0x6474b8
    std::int32_t getCategoryId(const char* name) const;                    // 0x647538

    SInstanceModularSkin* instance = nullptr;        // +0x1c
    CRootSceneNode* root = nullptr;                  // +0x20
    std::vector<SModule> modules;                    // +0x24
    std::vector<SModularBuffer> buffers;             // +0x30
    std::uint32_t unk_3c = 0;                        // +0x3c
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x40 .. +0x58
    bool outputBufferNeeded = false;                 // +0x58
    bool boundingBoxDirty = true;                    // +0x59
};

}  // namespace glitch::collada
