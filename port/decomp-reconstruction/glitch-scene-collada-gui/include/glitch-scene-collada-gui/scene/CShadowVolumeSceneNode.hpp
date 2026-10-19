// glitch::scene::CShadowVolumeSceneNode: a stencil shadow volume node for a mesh. Canonical header of the scene residue pass 2; it
// replaces the stand-in class of scene_simple_accessors.hpp and the recon_29 declarations (recon/slice_29.hpp).
//
// Layout (original 32-bit offsets; operator new(0x194) in CAnimatedMeshSceneNode::addShadowVolumeSceneNode; constructors 0x6ffb1c C1 /
// 0x6ffc70 C2; destructors 0x700fd4 / 0x7010b0):
//   +0x000 IShadowVolumeSceneNode (ISceneNode, 0x130 bytes; +0x130 a byte)
//   +0x134 (308) vector<SShadowVolume>: the volumes built by updateShadowVolumes (76 bytes each), reused from frame to frame
//   +0x140 (320) vector<intrusive_ptr<CLight>>: the lights that cast this node's shadow (empty: the driver's dynamic lights are used)
//   +0x14c (332) vector<plane3df>: clipping planes the projected vertices are cut against (getProjectedVertex)
//   +0x158 (344) the shadow mesh (a use is held)
//   +0x15c (348) uint16 index scratch array (new[]) and +0x160 (352) its capacity
//   +0x164 (356) the number of volumes the last update used
//   +0x168 (360) bounding box (-1..1 at construction)
//   +0x180 (384) projection distance ("infinity")
//   +0x184 (388) byte, +0x185 (389) byte "update needed" (set by setShadowMesh and the constructor, cleared by updateShadowVolumes),
//   +0x186 (390) byte "z-fail method" (selects the z-fail techniques), +0x187 (391) byte
//   +0x188 (392) bias factor (0.5)
//   +0x18c (396) glitch::IReferenceCounted virtual base (vptr), +0x190 (400) its count; 0x194 bytes in all.
#pragma once

#include <cstdint>
#include <utility>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/endian.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CMeshConnectivity.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/IShadowVolumeSceneNode.hpp"
#include "glitch-video/light.hpp"
#include "glitch-video/primitive_stream.hpp"

namespace glitch::scene {

// The constructor argument: 16 and 32 are the two values the scene code passes (CAnimatedMeshSceneNode::addShadowVolumeSceneNode:
// 32 with the z-fail method, else 16). The constructor derives its four flag bytes from the nibble masks 0x0f, 0xaa and 0xcc.
enum E_SHADOW_VOLUME_TYPE : std::int32_t {
    ESVT_STANDARD = 16,
    ESVT_ZFAIL = 32,
};

class CShadowVolumeSceneNode : public IShadowVolumeSceneNode {
public:
    // The silhouette of a mesh buffer seen from a light: the connectivity table plus the edges that separate a facing triangle from a
    // back-facing one.
    //   +0x00 CMeshConnectivity (0x18 bytes)   +0x18 (24) vector<pair<uint16, uint16>> the silhouette edges (begin, end, capacity)
    //   +0x24 (36) uint8 array (new[]): one flag per triangle, 1 when the triangle faces away from the light
    struct SSilhouette : CMeshConnectivity {
        // 0x6ffdf8 (C1) / 0x6ffe20 (C2): the base constructor, then the edge list and the flag array empty.
        explicit SSilhouette(const boost::intrusive_ptr<const CMeshBuffer>& meshBuffer);
        // 0x6ffd88 (D1) / 0x6ffdc0 (D2): frees the flag array and the edge list, then the base.
        ~SSilhouette();
        // 0x701358: flags the triangles that face away from the light (a directional light uses its direction for every triangle, a
        // positional one the vector from the first vertex) and collects the edges between a flagged and an unflagged triangle, oriented
        // so that the flagged triangle is on the winding side.
        void createSilhouette(core::vector3d<float> light, video::E_LIGHT_TYPE type, const boost::intrusive_ptr<const CMeshBuffer>& meshBuffer);

        std::vector<std::pair<std::uint16_t, std::uint16_t>> silhouetteEdges;  // +0x18
        std::uint8_t* backFacing = nullptr;                                    // +0x24
    };

    // One volume of the node: the silhouette it was built from, the projected vertex and index arrays, and the stream description the
    // driver draws. 76 bytes in the original.
    struct SShadowVolume {
        // 0x6fe860 (C2) / 0x6fe8cc (C1).
        SShadowVolume();
        // 0x6fe98c: copies the plain words, takes a use of the references.
        SShadowVolume(const SShadowVolume& other);
        // 0x700ce4.
        SShadowVolume& operator=(const SShadowVolume& other);
        // Port addition: the original's copy shares the owned arrays (it is only used on a default volume); the move keeps a growing
        // std::vector from freeing them twice.
        SShadowVolume(SShadowVolume&& other) noexcept;
        SShadowVolume& operator=(SShadowVolume&& other) noexcept;
        // 0x700e44 (D1) / 0x7012a4 (D2): deletes the silhouette and the two arrays and drops the references.
        ~SShadowVolume();

        SSilhouette* silhouette = nullptr;                    // +0x00 (owned)
        std::uint32_t unk_04 = 0;                             // +0x04
        std::uint32_t unk_08 = 0;                             // +0x08
        std::uint32_t unk_0c = 0;                             // +0x0c
        float* vertices = nullptr;                            // +0x10 (new[], 3 floats per vertex)
        std::uint16_t* indices = nullptr;                     // +0x14 (new[])
        std::uint32_t indexCount = 0;                         // +0x18
        std::uint32_t vertexCount = 0;                        // +0x1c
        boost::intrusive_ptr<video::CVertexStreams> streams;  // +0x20
        boost::intrusive_ptr<glitch::IReferenceCounted> unk_24;  // +0x24
        boost::intrusive_ptr<glitch::IReferenceCounted> unk_28;  // +0x28
        video::CPrimitiveStream primitives;                   // +0x2c: index buffer reference, offset, count, first and last vertex, types
        std::uint16_t unk_44 = 0;                             // +0x44
        std::uint16_t minVertex = 0xFFFF;                     // +0x46
        std::uint16_t maxVertex = 0;                          // +0x48
    };

    // 0x6ffb1c (C1) / 0x6ffc70 (C2): the shadow mesh is held, the flags are derived from `type`, the bounding box is -1..1, culling is
    // switched off and the shared shadow material is set up for the driver.
    CShadowVolumeSceneNode(video::IVideoDriver* driver, const boost::intrusive_ptr<const IMesh>& shadowMesh, int id,
                           E_SHADOW_VOLUME_TYPE type, float infinity);
    // 0x700fd4 (D1) / 0x7010b0 (D2) / 0x701094 (D0): frees the scratch array and the volumes, drops the user of the shadow material
    // and the shadow mesh.
    ~CShadowVolumeSceneNode() override;

    // vptr+0xbc, 0x6fe854: 'shdw'.
    E_SCENE_NODE_TYPE getType() const override;
    // 0x6fe97c: the box at +0x168.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // 0x700ad4: draws the volumes with the shared shadow material (pass 1: the first technique pair, pass 2: the second).
    void render(void* renderPass) override;
    // 0x6ffa7c: registers for passes 1 and 2 of the stencil shadow phase (5).
    int onRegisterSceneNode() override;

    // 0x6fe938: replaces the shadow mesh and marks the volumes stale.
    void setShadowMesh(const boost::intrusive_ptr<const IMesh>& mesh);
    // 0x6fe984: stores the bias factor at +0x188.
    void SetBiasFactor(float factor);
    // 0x7029d4: rebuilds the volumes for every light (or the driver's dynamic lights) when the node is stale.
    void updateShadowVolumes();
    // 0x6fe974: returns 0 (loading is not supported).
    std::uint32_t load(io::IReadFile* file);
    // 0x6ffa1c: creates the file and writes the volumes through the other overload (0 = the platform byte order).
    int save(char* fileName, bool flag, const core::CMatrix4<float>& transform);
    // 0x6ffee4: writes the "STSV" file: the byte-order mark, the flag byte, the bounding box (as four-byte colours when swapped),
    // the vertex and index counts and the welded vertex and index arrays of every volume.
    int save(io::IWriteFile* file, bool flag, const core::CMatrix4<float>& transform, os::E_ENDIAN endian);

    // 0x6feaa0: the projected position of `vertex`: a directional light moves the vertex by -direction * infinity, a positional one by
    // -(light direction) * infinity; the result is cut against the clipping planes.
    core::vector3d<float> getProjectedVertex(const core::vector3d<float>& vertex, const core::vector3d<float>& light, video::E_LIGHT_TYPE type,
                                             bool normalize);
    // 0x6fec78: builds the volume from the triangles that face the light.
    void createFacingTriangleVolume(const video::CPrimitiveStream::SMapBuffer<const std::uint16_t>& indices, std::uint32_t triangleCount,
                                    const core::vector3d<float>& light, video::E_LIGHT_TYPE type, SShadowVolume* volume, bool cap);
    // 0x701998: builds the volume from the silhouette edges of a mesh buffer.
    void createSilhouetteVolume(const boost::intrusive_ptr<const CMeshBuffer>& meshBuffer,
                                const video::CPrimitiveStream::SMapBuffer<const std::uint16_t>& indices, std::uint32_t triangleCount,
                                const core::vector3d<float>& light, video::E_LIGHT_TYPE type, SShadowVolume* volume, bool cap);
    // 0x70225c: builds (or reuses) the volume of one mesh buffer for one light.
    void createShadowVolume(const boost::intrusive_ptr<const CMeshBuffer>& meshBuffer, const core::vector3d<float>& light,
                            video::E_LIGHT_TYPE type);

    std::vector<SShadowVolume> shadowVolumes;                          // +0x134
    std::vector<boost::intrusive_ptr<video::CLight>> lights;           // +0x140
    std::vector<core::plane3d<float>> clippingPlanes;                  // +0x14c
    boost::intrusive_ptr<const IMesh> shadowMesh;                      // +0x158
    std::uint16_t* scratchIndices = nullptr;                           // +0x15c (new[])
    std::uint32_t scratchCapacity = 0;                                 // +0x160
    std::uint32_t usedVolumes = 0;                                     // +0x164
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x168
    float infinity = 0.0f;                                             // +0x180
    bool unk_184 = false;                                              // +0x184
    bool needsUpdate = false;                                          // +0x185
    bool zFail = false;                                                // +0x186
    bool unk_187 = false;                                              // +0x187
    float biasFactor = 0.5f;                                           // +0x188
};

}  // namespace glitch::scene
