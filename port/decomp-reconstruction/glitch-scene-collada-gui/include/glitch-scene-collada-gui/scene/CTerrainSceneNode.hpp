// glitch::scene::CTerrainSceneNode: the height-map terrain node (Irrlicht's CTerrainSceneNode with the Glitch changes). Canonical header
// (scene3 wave, completed by the residue pass res1). It derives from the canonical scene::ISceneNode.
//
// Layout (original 32-bit offsets; operator new(0x214) in clone 0x6d5518; constructors 0x6d18bc C2 / 0x6d1b5c C1):
//   +0x000 ISceneNode (0x130 bytes)
//   +0x130 STerrainData (0x7c bytes, constructor 0x6d00f4): the grid size, the transform, the patch counts, the box and the LOD table
//   +0x1ac boost::intrusive_ptr<CMesh>       the mesh holder: one buffer, the vertex data the height map fills (getMaterial / getMaterialCount
//                                            forward to it)
//   +0x1b0 boost::intrusive_ptr<CMeshBuffer> the render buffer: a copy of the vertices in world space, with the index buffer the patches fill
//   +0x1b4 uint32  (0, unused by the swept functions)
//   +0x1b8 int     the number of indices written by the last preRenderIndicesCalculations
//   +0x1bc uint8   dynamic selector update (the index pass tells the triangle selector to update when set)
//   +0x1bd uint8   LOD distances overridden (calculateDistanceThresholds keeps the table when set)
//   +0x1be uint8   default rotation pivot (calculatePatchData moves the pivot to the centre when set; setRotationPivot clears it)
//   +0x1bf uint8   force recalculation (set by the transform setters, cleared by onRegisterSceneNode)
//   +0x1c0 camera state of the last LOD pass: position (3 floats), rotation (3 floats), FOV; then the movement (10.0), rotation (1.0) and
//          FOV (0.1) thresholds that decide whether the LODs are recomputed
//   +0x1e8 two texture coordinate scales (1.0, 1.0)
//   +0x1f0 STLport std::string, the height map file name (16 bytes inline, end pointer +0x200, begin pointer +0x204)
//   +0x208 boost::intrusive_ptr<io::IFileSystem>
//   +0x20c glitch::IReferenceCounted virtual base (vptr, then the count)
// The members are typed, not byte exact (host pointers, std::string, std::vector), as in the other node headers.
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::svector / stringc (STLPORT-DECISION.md section 6)

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/deps/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::video {
struct SColor;
class CMaterial;
}  // namespace glitch::video

namespace glitch::scene {

class CMeshBuffer;
class CMesh;

// E_TERRAIN_PATCH_SIZE: the patch edge in vertices (the constructor argument is the number itself).
enum E_TERRAIN_PATCH_SIZE : std::int32_t {
    ETPS_9 = 9,
    ETPS_17 = 17,
    ETPS_33 = 33,
    ETPS_65 = 65,
    ETPS_129 = 129,
};

// One terrain patch record, 0x38 bytes in the original (operator new[](56 * count) in createPatches). The neighbours are read through
// their first word (the neighbour's LOD) by getIndex.
struct STerrainPatch {
    std::int32_t lod = -1;                                                                         // +0x00 current LOD, -1 when culled
    core::aabbox3d<float> boundingBox{core::vector3d<float>{-1.0f, -1.0f, -1.0f}, core::vector3d<float>{1.0f, 1.0f, 1.0f}};  // +0x04
    core::vector3d<float> center{0.0f, 0.0f, 0.0f};                                                // +0x1c
    STerrainPatch* top = nullptr;                                                                  // +0x28
    STerrainPatch* bottom = nullptr;                                                               // +0x2c
    STerrainPatch* right = nullptr;                                                                // +0x30
    STerrainPatch* left = nullptr;                                                                 // +0x34
};

class CTerrainSceneNode : public ISceneNode {
public:
    // The terrain state at +0x130 (31 words).
    struct STerrainData {
        // 0x6d00f4 (C1): the grid size and the box start empty (the box from +1e5 down to -1e5), the pivot and centre at the origin.
        STerrainData(std::int32_t patchSize, std::int32_t maxLOD, const core::vector3d<float>& position,
                     const core::quaternion& rotation, const core::vector3d<float>& scale);
        // Releases the patch table and the LOD table (the original frees both in the node destructor).
        ~STerrainData();
        STerrainData(const STerrainData&) = delete;
        STerrainData& operator=(const STerrainData&) = delete;

        std::int32_t size = 0;                              // +0x130 vertices per side of the height map (set by loadHeightMap)
        core::vector3d<float> position;                     // +0x134
        core::quaternion rotation;                          // +0x140
        core::vector3d<float> rotationPivot;                // +0x150
        core::vector3d<float> scale;                        // +0x15c
        core::vector3d<float> center;                       // +0x168 centre of the box (calculatePatchData)
        std::int32_t patchSize = 0;                         // +0x174 vertices per patch edge (9, 17, 33, 65 or 129)
        std::int32_t calcPatchSize = 0;                     // +0x178 patchSize - 1
        std::int32_t patchCount = 0;                        // +0x17c patches per side (createPatches)
        std::int32_t maxLOD = 0;                            // +0x180 number of LOD levels
        core::aabbox3d<float> boundingBox;                  // +0x184
        core::svector<double> lodDistanceSquared;             // +0x19c squared LOD distance thresholds
        STerrainPatch* patches = nullptr;                   // +0x1a8 patchCount squared records (operator new[])
    };

    // 0x6d18bc (C2) and 0x6d1b5c (C1): a terrain of `patchSize` patches and `maxLOD` LODs. Builds the mesh holder with one buffer for the
    // vertices and a second buffer (same attribute mask) as the render buffer, and switches automatic culling off.
    CTerrainSceneNode(const boost::intrusive_ptr<io::IFileSystem>& fileSystem, std::int32_t id, std::uint32_t attributeMask,
                      std::int32_t maxLOD, std::int32_t patchSize, const core::vector3d<float>& position,
                      const core::quaternion& rotation, const core::vector3d<float>& scale);
    // Not an original constructor: a node without file system and mesh, for the users of the old stand-in.
    explicit CTerrainSceneNode(int id = -1);
    // 0x6d127c (D2) and 0x6d132c (D1); 0x6d13e8 (D0) is skipped: frees the patch table and the LOD table and drops the members.
    ~CTerrainSceneNode() override;

    // vptr+0x10, 0x6d3544: with an active camera, the LOD pass and the index pass; clears the force flag. Answers 1.
    int onRegisterSceneNode() override;
    // vptr+0x1c, 0x6d176c: draws the render buffer with the first material when the node is visible.
    void render(void* renderContext) override;
    // vptr+0x30, 0x6d01e8: the box at +0x184.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // vptr+0xbc, 0x6d00cc: 'terr'.
    E_SCENE_NODE_TYPE getType() const override;
    // K 0xc0, 0x6d5518: a terrain with the same parameters and height map, the materials copied (the original's override takes the new
    // parent; the vtable slot holds this function).
    virtual ISceneNode* clone(ISceneNode* newParent);
    using ISceneNode::clone;
    // 0x6d0074 / 0x6d0098: forward to the mesh holder.
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;
    std::uint32_t getMaterialCount() const override;
    // 0x6d00b4 / 0x6d2f28.
    const core::vector3d<float>& getScale() const override;
    void setScale(const core::vector3d<float>& scale) override;
    // 0x6d00bc / 0x6d2ef0.
    const core::quaternion& getRotation() const override;
    void setRotation(const core::quaternion& rotation) override;
    // 0x6d00c4 / 0x6d2ec0.
    const core::vector3d<float>& getPosition() const override;
    void setPosition(const core::vector3d<float>& position) override;
    // 0x6d083c: the ISceneNode attributes, then "Heightmap", "TextureScale1", "TextureScale2".
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // 0x6d5268: reloads the height map when its name changed, rescales the texture coordinates, then the ISceneNode attributes.
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    // 0x6d01c4: the pivot is set explicitly (the default pivot flag is cleared).
    void setRotationPivot(const core::vector3d<float>& pivot);
    // 0x6d0200: the bounding box of the patch at (row, column).
    const core::aabbox3d<float>& getBoundingBox(std::int32_t row, std::int32_t column) const;
    // 0x6d021c: sets the LOD word of the patch at (row, column).
    void setLODOfPatch(std::int32_t row, std::int32_t column, std::int32_t lod);
    // 0x6d03f0: sets every patch to one LOD.
    void setCurrentLODOfPatches(std::int32_t lod);
    // 0x6d042c: sets each patch LOD from the vector.
    void setCurrentLODOfPatches(const core::svector<std::int32_t>& lods);
    // 0x6d21ac: fills the vector with each patch LOD.
    void getCurrentLODOfPatches(core::svector<std::int32_t>& lods) const;
    // 0x6d0238: stores a squared distance for a LOD index; answers whether the index was inside the table.
    std::int32_t overrideLODDistance(std::int32_t index, double distance);

    // 0x6d00d8: the render buffer (a counted handle).
    boost::intrusive_ptr<CMeshBuffer> getRenderBuffer() const;
    // 0x6d01f0: a 16-byte stub in the original (returns 0).
    bool loadHeightMapRAW(io::IReadFile* file, std::int32_t, video::SColor color, std::int32_t);
    // 0x6d4454: builds the vertices from the height map image, smooths and lights them, copies them to the render buffer in world space
    // and sets up the patches and the index buffer. Answers whether the image could be loaded.
    bool loadHeightMap(io::IReadFile* file, video::SColor color, std::int32_t smoothFactor);
    // 0x6d1e34: the interpolated terrain height at world (x, z); -1000000 outside the grid, 0 without a mesh.
    float getHeight(float x, float z) const;
    // 0x6d028c: the vertex index of vertex (vx, vz) of a patch, with the LOD stitching against the neighbours.
    std::uint32_t getIndex(std::int32_t i, std::int32_t x, std::int32_t patchIndex, std::uint32_t vx, std::uint32_t vz) const;
    // 0x6d22f0: the triangle list of one patch at a LOD (-1: its current LOD); answers the index count, -1 for a bad patch or LOD, -2
    // for a culled patch.
    std::int32_t getIndicesForPatch(core::svector<std::uint32_t>& indices, std::int32_t x, std::uint32_t z, std::int32_t lod);
    // 0x6d0cfc: allocates the patch table.
    void createPatches();
    // 0x6d2534: the box of every patch, the node box, the centre and (with the default pivot) the pivot.
    void calculatePatchData();
    // 0x6d2b08: writes the render buffer positions (the transformed vertices) and recomputes the thresholds and the patch data.
    void applyTransformation();
    // 0x6d0470 (uint16) and 0x6d0660 (uint32): the triangle indices of every visible patch.
    template <typename T>
    void preRenderIndicesCalculationsDirect(T* indices);
    // 0x6d3440: maps the index buffer and runs the pass of its index type.
    void preRenderIndicesCalculations();
    // 0x6d0dbc: registers the node, then picks the LOD of every patch from the camera when it moved.
    void preRenderLODCalculations();
    // 0x6d1650: the squared LOD distance thresholds.
    void calculateDistanceThresholds(bool enabled);
    // 0x6d2ff0: averages the heights with the four neighbours, `passes` times.
    void smoothTerrain(const boost::intrusive_ptr<CMeshBuffer>& buffer, std::int32_t passes);
    // 0x6d315c: rewrites the texture coordinates with new scales.
    void scaleTexture(float scale1, float scale2);
    // 0x6d3578: the vertex normals from the eight triangles around each vertex.
    void calculateNormals(const boost::intrusive_ptr<CMeshBuffer>& buffer);

    STerrainData terrain;                                  // +0x130
    boost::intrusive_ptr<CMesh> mesh;                      // +0x1ac the mesh holder
    boost::intrusive_ptr<CMeshBuffer> renderBuffer;        // +0x1b0
    std::uint32_t unk_1b4 = 0;                             // +0x1b4
    std::int32_t indexCount = 0;                           // +0x1b8
    std::uint8_t dynamicSelectorUpdate = 0;                // +0x1bc
    std::uint8_t lodDistanceOverridden = 0;                // +0x1bd
    std::uint8_t rotationPivotFlag = 1;                    // +0x1be
    std::uint8_t forceRecalculation = 0;                   // +0x1bf
    core::vector3d<float> oldCameraPosition{-100000.0f, -100000.0f, -100000.0f};  // +0x1c0
    core::vector3d<float> oldCameraRotation{-100000.0f, -100000.0f, -100000.0f};  // +0x1cc
    float oldCameraFov = -100000.0f;                       // +0x1d8
    float cameraMovementDelta = 10.0f;                     // +0x1dc
    float cameraRotationDelta = 1.0f;                      // +0x1e0
    float cameraFovDelta = 0.1f;                           // +0x1e4
    float textureScale1 = 1.0f;                            // +0x1e8
    float textureScale2 = 1.0f;                            // +0x1ec
    std::string heightMapFile;                             // +0x1f0
    boost::intrusive_ptr<io::IFileSystem> fileSystem;      // +0x208
};

}  // namespace glitch::scene
