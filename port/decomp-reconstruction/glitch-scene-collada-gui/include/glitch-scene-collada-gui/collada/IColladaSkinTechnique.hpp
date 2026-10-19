// glitch::collada::detail::IColladaSkinTechnique and its four techniques: CColladaHardwareTextureSkinTechnique,
// CColladaHardwareMatrixSkinTechnique, CColladaHardwareQuatSkinTechnique and CColladaSoftwareSkinTechnique. Canonical header of the
// scene-owner wave. It replaces the technique stand-ins of collada_misc.hpp (an attach hook and a pad each), the layout structs of
// layouts/collada_members.hpp and the recon_23 / recon_33 stand-ins.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::collada::detail::IColladaSkinTechnique and the four
// derived classes, 0x28 bytes of vtable, no virtual base):
//   IColladaSkinTechnique: +0x00 vptr, +0x04 the flag byte every derived constructor stores from its `bool` argument (CSkinnedMesh passes
//   whether the file has skin data), +0x08 the on-demand block of the skin data (zeroed by the derived constructors; the base destructor
//   0x670dcc drops the use and frees the data at zero). Its vtable holds the two destructors and eight pure slots:
//     K 0x08 computeBoundingBox (returns the box through a hidden slot), K 0x0c needOutputBuffer, K 0x10 prepareCache,
//     K 0x14 init(SSkinBuffer&, CMeshBuffer*, IVideoDriver*, bool), K 0x18 skin(SSkinBuffer&, CMeshBuffer*),
//     K 0x1c checkAvailability(STechnique const&), K 0x20 attach(ISceneNode*),
//     K 0x24 onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP, IVideoDriver*, SSkinBuffer&, CMeshBuffer*).
//   Derived classes add +0x0c SSkin&, +0x10 SSkinCache&, +0x14 the scene node (attach). Constructors 0x66b880 / 0x66b8dc (matrix),
//   0x66cfc0 / 0x66d01c (quaternion), 0x66e6b8 / 0x66e714 (texture), 0x66f5f8 / 0x66f658 (software) take (SSkin&, SSkinCache&, bool).
//   The matrix and quaternion techniques keep a std::map at +0x18 (header node +0x18 .. +0x27, count +0x28) from a key to the ids of the
//   material parameters they write (SHardwareData). The texture technique stores the driver at +0x18, a float at +0x1c and its map at
//   +0x20 (count +0x30); the software technique has a byte at +0x18 and its map at +0x1c (count +0x2c).
// Port notes: the maps are std::map. The record names the binary prints (SHardwareData) are kept.
#pragma once

#include <cstdint>
#include <map>

#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"

namespace glitch::video {
struct STechnique;
class IVideoDriver;
}  // namespace glitch::video

namespace glitch::collada::detail {

class IColladaSkinTechnique {
public:
    // The base constructor is inlined into the derived ones: it stores the flag and clears the skin-data block.
    explicit IColladaSkinTechnique(bool hasSkinData) : flag(hasSkinData) {}
    // 0x670dcc (D1), 0x670e58 (D2), 0x670e3c (D0, skipped): drops the use of the skin-data block.
    virtual ~IColladaSkinTechnique();

    // K 0x08 .. 0x24, all pure.
    virtual core::aabbox3d<float> computeBoundingBox() = 0;
    virtual bool needOutputBuffer() const = 0;
    virtual void prepareCache() = 0;
    virtual int init(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer, video::IVideoDriver* driver, bool flag) = 0;
    virtual int skin(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer) = 0;
    virtual bool checkAvailability(const video::STechnique& technique) const = 0;
    virtual void attach(scene::ISceneNode* node) = 0;
    virtual int onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver, SSkinBuffer& buffer,
                                            scene::CMeshBuffer* meshBuffer) = 0;

    // 0x670ec8 (1368 bytes): makes the proxy buffer of the mesh buffer for the skin (reconstructed, owner B2).
    boost::intrusive_ptr<glitch::IReferenceCounted> initProxyBuffer(scene::CMeshBuffer* meshBuffer, SSkinBuffer& buffer, SSkin& skin,
                                                                    video::IVideoDriver* driver);

    bool flag = false;                          // +0x04
    res::onDemandPointer<float> skinData;       // +0x08
};

// The ids of the material parameters the matrix technique writes for one material renderer (map value of CColladaHardwareMatrixSkinTechnique).
struct SMatrixHardwareData {
    std::uint16_t matrixParameterId = 0xffff;   // +0x00 the joint matrix array (shader parameter type 11)
    std::uint16_t unitParameterId = 0xffff;     // +0x02 the per-vertex weight-count selector (shader parameter type 15)
};

// The ids the quaternion technique writes for one material (map value of CColladaHardwareQuatSkinTechnique).
struct SQuatHardwareData {
    std::uint16_t realParameterId = 0xffff;     // +0x00 the rotation part of the dual quaternions
    std::uint16_t dualParameterId = 0xffff;     // +0x02 the translation part
    std::uint16_t unitParameterId = 0xffff;     // +0x04 the weight-count selector (shader parameter type 15)
};

// The ids the texture technique writes for one material (map value of CColladaHardwareTextureSkinTechnique; from 0x66ec14).
struct STextureHardwareData {
    std::uint16_t textureParameterId = 0xffff;  // +0x00 the joint matrix texture (shader parameter type 12)
    std::uint16_t scaleParameterId = 0xffff;    // +0x02 the texel size (type 13)
    std::uint16_t unitParameterId = 0xffff;     // +0x04 the weight-count selector (type 15)
};

class CColladaHardwareTextureSkinTechnique : public IColladaSkinTechnique {
public:
    // 0x66e6b8 (C1) and 0x66e714 (C2).
    CColladaHardwareTextureSkinTechnique(SSkin& skin, SSkinCache& cache, bool hasSkinData);
    // 0x66ee10 (D1), 0x66ee78 (D0, skipped): erases the map, then the base.
    ~CColladaHardwareTextureSkinTechnique() override;

    core::aabbox3d<float> computeBoundingBox() override;                                         // 0x66ef44
    bool needOutputBuffer() const override;                                                      // 0x66e770 (0)
    void prepareCache() override;                                                                // 0x66f280
    int init(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer, video::IVideoDriver* driver, bool flag) override;  // 0x66f1f4
    int skin(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer) override;                      // 0x66ec14
    bool checkAvailability(const video::STechnique& technique) const override;                   // 0x66e89c
    void attach(scene::ISceneNode* node) override;                                               // 0x66e778
    int onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver, SSkinBuffer& buffer,
                                    scene::CMeshBuffer* meshBuffer) override;                    // 0x66e780
    static bool checkAvailabilityStatic(const video::STechnique& technique);                     // 0x66e7d0
    void preparePtrCache();                                                                      // 0x66ee94

    SSkin* skinRecord = nullptr;                // +0x0c
    SSkinCache* cache = nullptr;                // +0x10
    scene::ISceneNode* attachedNode = nullptr;  // +0x14
    video::IVideoDriver* driver = nullptr;      // +0x18 stored by init; prepareCache reads the driver's capabilities
    float invTextureSize = 0.0f;                // +0x1c written by prepareCache, read by skin
    std::map<std::uint32_t, STextureHardwareData> hardwareData;  // +0x20 (count +0x30), keyed by the material's hash code
};

class CColladaHardwareMatrixSkinTechnique : public IColladaSkinTechnique {
public:
    // 0x66b880 (C1) and 0x66b8dc (C2).
    CColladaHardwareMatrixSkinTechnique(SSkin& skin, SSkinCache& cache, bool hasSkinData);
    // 0x66b9cc (D1), 0x66ba34 (D0, skipped).
    ~CColladaHardwareMatrixSkinTechnique() override;

    core::aabbox3d<float> computeBoundingBox() override;                                         // 0x66c5f4
    bool needOutputBuffer() const override;                                                      // 0x66b938 (0)
    void prepareCache() override;                                                                // 0x66cd18
    int init(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer, video::IVideoDriver* driver, bool flag) override;  // 0x66c8a4
    int skin(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer) override;                      // 0x66c278
    bool checkAvailability(const video::STechnique& technique) const override;                   // 0x66beac
    void attach(scene::ISceneNode* node) override;                                               // 0x66b940
    int onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver, SSkinBuffer& buffer,
                                    scene::CMeshBuffer* meshBuffer) override;                    // 0x66b948
    static bool checkAvailabilityStatic(const video::STechnique& technique);                     // 0x66ba50
    void preparePtrCache();                                                                      // 0x66c544

    SSkin* skinRecord = nullptr;                // +0x0c
    SSkinCache* cache = nullptr;                // +0x10
    scene::ISceneNode* attachedNode = nullptr;  // +0x14
    std::map<std::uint16_t, SMatrixHardwareData> hardwareData;  // +0x18 (count +0x28), keyed by the material renderer's id
};

class CColladaHardwareQuatSkinTechnique : public IColladaSkinTechnique {
public:
    // 0x66cfc0 (C1) and 0x66d01c (C2).
    CColladaHardwareQuatSkinTechnique(SSkin& skin, SSkinCache& cache, bool hasSkinData);
    // 0x66df04 (D1), 0x66df6c (D0, skipped).
    ~CColladaHardwareQuatSkinTechnique() override;

    core::aabbox3d<float> computeBoundingBox() override;                                         // 0x66e384
    bool needOutputBuffer() const override;                                                      // 0x66d078 (0)
    void prepareCache() override;                                                                // 0x66e204
    int init(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer, video::IVideoDriver* driver, bool flag) override;  // 0x66e634
    int skin(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer) override;                      // 0x66dc40
    bool checkAvailability(const video::STechnique& technique) const override;                   // 0x66d8c8
    void attach(scene::ISceneNode* node) override;                                               // 0x66d080
    int onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver, SSkinBuffer& buffer,
                                    scene::CMeshBuffer* meshBuffer) override;                    // 0x66d088
    static bool checkAvailabilityStatic(const video::STechnique& technique);                     // 0x66d730
    void preparePtrCache();                                                                      // 0x66df88

    SSkin* skinRecord = nullptr;                // +0x0c
    SSkinCache* cache = nullptr;                // +0x10
    scene::ISceneNode* attachedNode = nullptr;  // +0x14
    std::map<std::uint32_t, SQuatHardwareData> hardwareData;  // +0x18 (count +0x28), keyed by the material's hash code
};

class CColladaSoftwareSkinTechnique : public IColladaSkinTechnique {
public:
    // The record the map holds per material (SSoftwareColorGenData in the binary): not mapped.
    struct SSoftwareColorGenData {
        std::uint32_t unk_00 = 0;
    };

    // 0x66f5f8 (C1) and 0x66f658 (C2).
    CColladaSoftwareSkinTechnique(SSkin& skin, SSkinCache& cache, bool hasSkinData);
    // 0x66f724 (D1), 0x66f78c (D0, skipped).
    ~CColladaSoftwareSkinTechnique() override;

    core::aabbox3d<float> computeBoundingBox() override;                                         // 0x66fb84
    bool needOutputBuffer() const override;                                                      // 0x66f6b8 (1)
    void prepareCache() override;                                                                // 0x66fe34
    int init(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer, video::IVideoDriver* driver, bool flag) override;  // 0x66f8ec
    int skin(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer) override;                      // 0x66ff48
    bool checkAvailability(const video::STechnique& technique) const override;                   // 0x66f6c0 (1)
    void attach(scene::ISceneNode* node) override;                                               // 0x66f6c8
    int onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver, SSkinBuffer& buffer,
                                    scene::CMeshBuffer* meshBuffer) override;                    // 0x66f7a8
    void preparePtrCache();                                                                      // 0x66fab4

    SSkin* skinRecord = nullptr;                // +0x0c
    SSkinCache* cache = nullptr;                // +0x10
    scene::ISceneNode* attachedNode = nullptr;  // +0x14
    std::uint8_t unk_18 = 0;                    // +0x18 cleared by the constructor; role not mapped
    std::map<std::uint32_t, SSoftwareColorGenData> colorGenData;  // +0x1c (count +0x2c), keyed by the material's hash code
};

}  // namespace glitch::collada::detail
