// Bodies of glitch::scene::CTerrainSceneNode (canonical class: scene/CTerrainSceneNode.hpp), transcribed from the Hex-Rays listings of
// 0x6d0074 .. 0x6d5518. The height map terrain: a mesh of Size x Size vertices (the mesh holder), a world-space copy of it (the render
// buffer), patches of patchSize vertices with LODs chosen from the camera, and the index buffer the visible patches fill every frame.
#include "glitch-scene-collada-gui/scene/CTerrainSceneNode.hpp"

#include <cmath>
#include <cstdio>
#include <cstring>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

// IBuffer::map / unmap with the original's "map returned a pointer" test around the release.
struct BufferMap {
    video::IBuffer* buffer = nullptr;
    std::uint8_t* data = nullptr;
    BufferMap(video::IBuffer* b, std::int32_t access) : buffer(b), data(b->map(access)) {}
    ~BufferMap() { release(); }
    void release() {
        if (data != nullptr) {
            buffer->unmap();
            data = nullptr;
        }
    }
    BufferMap(const BufferMap&) = delete;
    BufferMap& operator=(const BufferMap&) = delete;
};

inline float* floatAt(std::uint8_t* base, std::size_t offset) {
    return reinterpret_cast<float*>(base + offset);
}

// The terrain's constants: 99999.9f, 999999.9f and 1e30f in the listings (0x47c34ff3, 0x497423fe, 0x7149f2ca).
constexpr float kInitialCamera = -99999.9f;
constexpr float kBoxExtremum = 999999.9f;
constexpr float kPatchExtremum = 1.0000000150474662e+30f;

}  // namespace

// 0x6d00f4 _ZN6glitch5scene17CTerrainSceneNode12STerrainDataC1EiiRKNS_4core8vector3dIfEERKNS3_10quaternionES7_
CTerrainSceneNode::STerrainData::STerrainData(std::int32_t patchSizeArg, std::int32_t maxLODArg, const core::vector3d<float>& positionArg,
                                              const core::quaternion& rotationArg, const core::vector3d<float>& scaleArg)
    : size(0),
      position(positionArg),
      rotation(rotationArg),
      rotationPivot{0.0f, 0.0f, 0.0f},
      scale(scaleArg),
      center{0.0f, 0.0f, 0.0f},
      patchSize(patchSizeArg),
      calcPatchSize(patchSizeArg - 1),
      patchCount(0),
      maxLOD(maxLODArg),
      boundingBox{core::vector3d<float>{-kInitialCamera, -kInitialCamera, -kInitialCamera},
                  core::vector3d<float>{kInitialCamera, kInitialCamera, kInitialCamera}},
      patches(nullptr) {}

// The patch table (operator new[] in createPatches) and the LOD table are freed by the node destructor (0x6d127c / 0x6d132c).
CTerrainSceneNode::STerrainData::~STerrainData() {
    delete[] patches;
}

// 0x6d18bc _ZN6glitch5scene17CTerrainSceneNodeC2ERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEijiNS0_20E_TERRAIN_PATCH_SIZEERKNS_4core8vector3dIfEERKNSA_10quaternionESE_
// 0x6d1b5c (C1): same body. The mesh holder gets one buffer (no material, no attribute map) and the render buffer is a second buffer for
// the same attribute mask; both draw triangles without an index buffer until loadHeightMap sets one up. The constructor gives
// the node's own state the values above; the last camera FOV (+0x1d8) is the one word it leaves unwritten.
CTerrainSceneNode::CTerrainSceneNode(const boost::intrusive_ptr<io::IFileSystem>& fileSystemArg, std::int32_t nodeId,
                                     std::uint32_t attributeMask, std::int32_t maxLODArg, std::int32_t patchSizeArg,
                                     const core::vector3d<float>& positionArg, const core::quaternion& rotationArg,
                                     const core::vector3d<float>& scaleArg)
    : ISceneNode(nodeId, positionArg, rotationArg, scaleArg),
      terrain(patchSizeArg, maxLODArg, positionArg, rotationArg, scaleArg),
      mesh(new CMesh(), true),  // CMesh and CMeshBuffer start at count 0; the holder adds the use (++count in the listing)
      rotationPivotFlag(1),
      oldCameraPosition{kInitialCamera, kInitialCamera, kInitialCamera},
      oldCameraRotation{kInitialCamera, kInitialCamera, kInitialCamera},
      oldCameraFov(0.0f),
      fileSystem(fileSystemArg) {
    video::CPrimitiveStream stream;  // no index buffer (index type 0xff), triangles (type 6)
    stream.m_indexType = 255;
    stream.m_primitiveType = 6;
    boost::intrusive_ptr<CMeshBuffer> meshBuffer(new CMeshBuffer(attributeMask, stream, true), true);
    mesh->addMeshBuffer(meshBuffer, boost::intrusive_ptr<video::CMaterial>(), boost::intrusive_ptr<video::CMaterialVertexAttributeMap>());
    video::CPrimitiveStream renderStream;
    renderStream.m_indexType = 255;
    renderStream.m_primitiveType = 6;
    renderBuffer = boost::intrusive_ptr<CMeshBuffer>(new CMeshBuffer(attributeMask, renderStream, true), true);
    setAutomaticCulling(0);
}

// Not an original constructor: a terrain node with the default parameters and no mesh, file system or buffers.
CTerrainSceneNode::CTerrainSceneNode(int nodeId)
    : ISceneNode(nodeId, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                 core::vector3d<float>{1.0f, 1.0f, 1.0f}),
      terrain(ETPS_17, 4, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
              core::vector3d<float>{1.0f, 1.0f, 1.0f}),
      oldCameraPosition{kInitialCamera, kInitialCamera, kInitialCamera},
      oldCameraRotation{kInitialCamera, kInitialCamera, kInitialCamera} {}

// 0x6d127c (D2) / 0x6d132c (D1): the patch table, the heightmap name, the render buffer, the mesh holder and the LOD table go; the
// members release themselves.
CTerrainSceneNode::~CTerrainSceneNode() = default;

// 0x6d0074 _ZNK6glitch5scene17CTerrainSceneNode11getMaterialEj: the mesh holder's getMaterial slot (vptr+0x18).
boost::intrusive_ptr<video::CMaterial> CTerrainSceneNode::getMaterial(std::uint32_t index) const {
    return mesh->getMaterial(index);
}

// 0x6d0098 _ZNK6glitch5scene17CTerrainSceneNode16getMaterialCountEv: the mesh holder's slot at vptr+0x10 (its buffer count).
std::uint32_t CTerrainSceneNode::getMaterialCount() const {
    return mesh->getMeshBufferCount();
}

// 0x6d00d8 _ZNK6glitch5scene17CTerrainSceneNode15getRenderBufferEv
boost::intrusive_ptr<CMeshBuffer> CTerrainSceneNode::getRenderBuffer() const {
    return renderBuffer;
}

// 0x6d00b4 _ZNK6glitch5scene17CTerrainSceneNode8getScaleEv
const core::vector3d<float>& CTerrainSceneNode::getScale() const {
    return terrain.scale;
}

// 0x6d00bc _ZNK6glitch5scene17CTerrainSceneNode11getRotationEv
const core::quaternion& CTerrainSceneNode::getRotation() const {
    return terrain.rotation;
}

// 0x6d00c4 _ZNK6glitch5scene17CTerrainSceneNode11getPositionEv
const core::vector3d<float>& CTerrainSceneNode::getPosition() const {
    return terrain.position;
}

// 0x6d00cc _ZNK6glitch5scene17CTerrainSceneNode7getTypeEv
E_SCENE_NODE_TYPE CTerrainSceneNode::getType() const {
    return ESNT_TERRAIN;
}

// 0x6d01e8 _ZNK6glitch5scene17CTerrainSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CTerrainSceneNode::getBoundingBox() const {
    return terrain.boundingBox;
}

// 0x6d01c4 _ZN6glitch5scene17CTerrainSceneNode16setRotationPivotERKNS_4core8vector3dIfEE
void CTerrainSceneNode::setRotationPivot(const core::vector3d<float>& pivot) {
    rotationPivotFlag = 0;
    terrain.rotationPivot = pivot;
}

// 0x6d0200 _ZNK6glitch5scene17CTerrainSceneNode14getBoundingBoxEii
const core::aabbox3d<float>& CTerrainSceneNode::getBoundingBox(std::int32_t row, std::int32_t column) const {
    return terrain.patches[static_cast<std::size_t>(terrain.patchCount * row + column)].boundingBox;
}

// 0x6d021c _ZN6glitch5scene17CTerrainSceneNode13setLODOfPatchEiii
void CTerrainSceneNode::setLODOfPatch(std::int32_t row, std::int32_t column, std::int32_t lod) {
    terrain.patches[static_cast<std::size_t>(terrain.patchCount * row + column)].lod = lod;
}

// 0x6d0238 _ZN6glitch5scene17CTerrainSceneNode19overrideLODDistanceEid
// Sets the override flag. For an index inside the table (maxLOD entries) the squared distance is stored and the function answers 1.
std::int32_t CTerrainSceneNode::overrideLODDistance(std::int32_t index, double distance) {
    lodDistanceOverridden = 1;
    if (index < 0 || index >= terrain.maxLOD) {
        return 0;
    }
    if (terrain.lodDistanceSquared.size() <= static_cast<std::size_t>(index)) {
        terrain.lodDistanceSquared.resize(static_cast<std::size_t>(index) + 1);  // the original writes into the reserved capacity
    }
    terrain.lodDistanceSquared[static_cast<std::size_t>(index)] = distance * distance;
    return 1;
}

// 0x6d03f0 _ZN6glitch5scene17CTerrainSceneNode22setCurrentLODOfPatchesEi
void CTerrainSceneNode::setCurrentLODOfPatches(std::int32_t lod) {
    const std::int32_t count = terrain.patchCount * terrain.patchCount;
    for (std::int32_t i = 0; i < count; ++i) {
        terrain.patches[i].lod = lod;
    }
}

// 0x6d042c _ZN6glitch5scene17CTerrainSceneNode22setCurrentLODOfPatchesERKSt6vectorIiNS_4core10SAllocatorIiLNS_6memory13E_MEMORY_HINTE0EEEE
void CTerrainSceneNode::setCurrentLODOfPatches(const core::svector<std::int32_t>& lods) {
    const std::int32_t count = terrain.patchCount * terrain.patchCount;
    for (std::int32_t i = 0; i < count; ++i) {
        terrain.patches[i].lod = lods[static_cast<std::size_t>(i)];
    }
}

// 0x6d21ac _ZNK6glitch5scene17CTerrainSceneNode22getCurrentLODOfPatchesERSt6vectorIiNS_4core10SAllocatorIiLNS_6memory13E_MEMORY_HINTE0EEEE
void CTerrainSceneNode::getCurrentLODOfPatches(core::svector<std::int32_t>& lods) const {
    lods.clear();
    const std::int32_t count = terrain.patchCount * terrain.patchCount;
    for (std::int32_t i = 0; i < count; ++i) {
        lods.push_back(terrain.patches[i].lod);
    }
}

// 0x6d01f0 _ZN6glitch5scene17CTerrainSceneNode16loadHeightMapRAWEPNS_2io9IReadFileEiNS_5video6SColorEi (16 bytes: returns 0)
bool CTerrainSceneNode::loadHeightMapRAW(io::IReadFile*, std::int32_t, video::SColor, std::int32_t) {
    return false;
}

// 0x6d0cfc _ZN6glitch5scene17CTerrainSceneNode13createPatchesEv
// patchCount = (size - 1) / calcPatchSize; the old table goes and a new one of patchCount squared records is built (every record:
// LOD -1, box -1..1, centre and neighbours zero).
void CTerrainSceneNode::createPatches() {
    terrain.patchCount = (terrain.size - 1) / terrain.calcPatchSize;
    if (terrain.patches != nullptr) {
        delete[] terrain.patches;
    }
    const std::int32_t count = terrain.patchCount * terrain.patchCount;
    terrain.patches = new STerrainPatch[static_cast<std::size_t>(count > 0 ? count : 0)];
}

// 0x6d2534 _ZN6glitch5scene17CTerrainSceneNode18calculatePatchDataEv
// The node box starts empty. For every patch the box is the extent of its (calcPatchSize + 1)^2 vertices (the render buffer positions,
// read mapped), the node box grows by the patch box, the centre is the middle of the patch box and the four neighbour links are set.
// The centre of the node box becomes the centre (and, with the default pivot, the rotation pivot).
void CTerrainSceneNode::calculatePatchData() {
    terrain.boundingBox.MaxEdge = core::vector3d<float>{-kBoxExtremum, -kBoxExtremum, -kBoxExtremum};  // +0x190 .. +0x198
    terrain.boundingBox.MinEdge = core::vector3d<float>{kBoxExtremum, kBoxExtremum, kBoxExtremum};    // +0x184 .. +0x18c
    video::CVertexStreams& streams = *renderBuffer->vertexStreams;
    const video::SVertexStream& positions = streams.m_streams[0];
    BufferMap map(positions.buffer.get(), 0);
    std::uint8_t* const base = map.data != nullptr ? map.data + positions.offset : nullptr;
    const std::int32_t patchCount = terrain.patchCount;
    for (std::int32_t x = 0; x < patchCount; ++x) {
        for (std::int32_t z = 0; z < patchCount; ++z) {
            STerrainPatch* patches = terrain.patches;
            STerrainPatch& patch = patches[z + x * patchCount];
            patch.lod = 0;
            patch.boundingBox.MaxEdge = core::vector3d<float>{-kPatchExtremum, -kPatchExtremum, -kPatchExtremum};
            patch.boundingBox.MinEdge = core::vector3d<float>{kPatchExtremum, kPatchExtremum, kPatchExtremum};
            const std::int32_t calc = terrain.calcPatchSize;
            for (std::int32_t row = calc * x; (x + 1) * calc >= row; ++row) {
                for (std::int32_t column = calc * z; (z + 1) * calc >= column; ++column) {
                    const float* vertex = reinterpret_cast<const float*>(
                        base + static_cast<std::size_t>(positions.field0e) * (column + terrain.size * row));
                    const float vx = vertex[0];
                    const float vy = vertex[1];
                    const float vz = vertex[2];
                    if (vx > patch.boundingBox.MaxEdge.X) patch.boundingBox.MaxEdge.X = vx;
                    if (vy > patch.boundingBox.MaxEdge.Y) patch.boundingBox.MaxEdge.Y = vy;
                    if (vz > patch.boundingBox.MaxEdge.Z) patch.boundingBox.MaxEdge.Z = vz;
                    if (vx < patch.boundingBox.MinEdge.X) patch.boundingBox.MinEdge.X = vx;
                    if (vy < patch.boundingBox.MinEdge.Y) patch.boundingBox.MinEdge.Y = vy;
                    if (vz < patch.boundingBox.MinEdge.Z) patch.boundingBox.MinEdge.Z = vz;
                }
            }
            // The node box takes both corners of the patch box.
            for (int corner = 0; corner < 2; ++corner) {
                const core::vector3d<float> point = corner == 0 ? patch.boundingBox.MaxEdge : patch.boundingBox.MinEdge;
                if (point.X > terrain.boundingBox.MaxEdge.X) terrain.boundingBox.MaxEdge.X = point.X;
                if (point.Y > terrain.boundingBox.MaxEdge.Y) terrain.boundingBox.MaxEdge.Y = point.Y;
                if (point.Z > terrain.boundingBox.MaxEdge.Z) terrain.boundingBox.MaxEdge.Z = point.Z;
                if (point.X < terrain.boundingBox.MinEdge.X) terrain.boundingBox.MinEdge.X = point.X;
                if (point.Y < terrain.boundingBox.MinEdge.Y) terrain.boundingBox.MinEdge.Y = point.Y;
                if (point.Z < terrain.boundingBox.MinEdge.Z) terrain.boundingBox.MinEdge.Z = point.Z;
            }
            const float centerY = (patch.boundingBox.MinEdge.Y + patch.boundingBox.MaxEdge.Y) * 0.5f;
            const float centerX = patch.boundingBox.MinEdge.X + patch.boundingBox.MaxEdge.X;
            patch.center.Z = (patch.boundingBox.MinEdge.Z + patch.boundingBox.MaxEdge.Z) * 0.5f;
            patch.center.X = centerX * 0.5f;
            patch.center.Y = centerY;
            patch.top = x != 0 ? &patches[z + patchCount * (x - 1)] : nullptr;
            if (x >= patchCount - 1) {
                patch.bottom = nullptr;
            } else {
                patch.bottom = &patches[z + (x + 1) * patchCount];
            }
            patch.left = z > 0 ? &patches[z + patchCount * x - 1] : nullptr;
            patch.right = z >= patchCount - 1 ? nullptr : &patches[z + patchCount * x + 1];
        }
    }
    const float centerX = (terrain.boundingBox.MinEdge.X + terrain.boundingBox.MaxEdge.X) * 0.5f;
    const float centerY = (terrain.boundingBox.MinEdge.Y + terrain.boundingBox.MaxEdge.Y) * 0.5f;
    const float centerZ = (terrain.boundingBox.MinEdge.Z + terrain.boundingBox.MaxEdge.Z) * 0.5f;
    terrain.center.X = centerX;
    terrain.center.Y = centerY;
    if (rotationPivotFlag != 0) {
        terrain.rotationPivot.Z = centerZ;
        terrain.rotationPivot.X = centerX;
        terrain.rotationPivot.Y = centerY;
    }
    terrain.center.Z = centerZ;
}

// 0x6d028c _ZNK6glitch5scene17CTerrainSceneNode8getIndexEiiijj
// The vertex of the patch `patchIndex` at (vx, vz) in the height-map grid, where (i, x) is the patch's column and row. At the patch edges
// a vertex that a coarser neighbour does not have is moved to the neighbour's grid (the stitching): along the top and bottom edges the
// column is rounded down to a multiple of the neighbour's step, along the left and right edges the row is.
std::uint32_t CTerrainSceneNode::getIndex(std::int32_t i, std::int32_t x, std::int32_t patchIndex, std::uint32_t vx,
                                          std::uint32_t vz) const {
    std::uint32_t row = vz;
    std::uint32_t column = vx;
    const std::uint32_t calc = static_cast<std::uint32_t>(terrain.calcPatchSize);
    const STerrainPatch* patch = &terrain.patches[patchIndex];
    if (vz != 0) {
        if (calc == vz) {
            if (patch->bottom != nullptr) {
                const std::int32_t neighbourLod = patch->bottom->lod;
                if (patch->lod < neighbourLod) {
                    const std::int32_t step = 1 << neighbourLod;
                    if ((vx & static_cast<std::uint32_t>(step - 1)) != 0) {
                        column = vx & static_cast<std::uint32_t>(-step);
                    }
                }
            }
        }
    } else {
        if (patch->top != nullptr) {
            const std::int32_t neighbourLod = patch->top->lod;
            if (patch->lod < neighbourLod) {
                const std::int32_t step = 1 << neighbourLod;
                if ((vx & static_cast<std::uint32_t>(step - 1)) != 0) {
                    column = vx & static_cast<std::uint32_t>(-step);
                }
            }
        }
    }
    bool stitchRow = false;
    std::int32_t rowLod = 0;
    if (column != 0) {
        if (calc == column && patch->right != nullptr) {
            rowLod = patch->right->lod;
            stitchRow = patch->lod < rowLod;
        }
    } else {
        if (patch->left != nullptr) {
            rowLod = patch->left->lod;
            stitchRow = patch->lod < rowLod;
        }
    }
    if (stitchRow) {
        const std::int32_t step = 1 << rowLod;
        if ((vz & static_cast<std::uint32_t>(step - 1)) != 0) {
            row = vz & static_cast<std::uint32_t>(-step);
        }
    }
    const std::uint32_t patchVertices = static_cast<std::uint32_t>(terrain.patchSize);
    if (row >= patchVertices) {
        row = calc;
    }
    const std::uint32_t rowIndex = row + static_cast<std::uint32_t>(x) * calc;
    if (column >= patchVertices) {
        column = calc;
    }
    return static_cast<std::uint32_t>(i) * calc + static_cast<std::uint32_t>(terrain.size) * rowIndex + column;
}

// 0x6d0470 _ZN6glitch5scene17CTerrainSceneNode34preRenderIndicesCalculationsDirectItEEvPT_
// 0x6d0660 ...DirectIjEEvPT_
// Every patch with a LOD >= 0 contributes the two triangles of each cell of its step grid: (a, b, c) = the corners
// (column, row), (column + step, row), (column, row + step), (column + step, row + step) as (top left, top right, bottom left, bottom
// right); the triangle list is bottom left, top left, bottom right, bottom right, top left, top right. The index counter at +0x1b8 is
// the number of indices written. With the dynamic selector flag the triangle selector is told to update.
template <typename T>
void CTerrainSceneNode::preRenderIndicesCalculationsDirect(T* indices) {
    indexCount = 0;
    const std::int32_t patchCount = terrain.patchCount;
    for (std::int32_t x = 0; x < patchCount; ++x) {
        for (std::int32_t i = 0; i < patchCount; ++i) {
            const std::int32_t patchIndex = i + x * patchCount;
            const std::int32_t lod = terrain.patches[patchIndex].lod;
            if (lod >= 0) {
                const std::int32_t step = 1 << lod;
                std::int32_t rowStart = 0;
                std::int32_t rowEnd = step;
                std::int32_t calc = terrain.calcPatchSize;
                while (true) {
                    std::int32_t column = 0;
                    while (calc > rowStart) {
                        const T topLeft = static_cast<T>(getIndex(i, x, patchIndex, column, rowStart));
                        const std::int32_t nextColumn = column + step;
                        const T topRight = static_cast<T>(getIndex(i, x, patchIndex, nextColumn, rowStart));
                        const T bottomLeft = static_cast<T>(getIndex(i, x, patchIndex, column, rowEnd));
                        const T bottomRight = static_cast<T>(getIndex(i, x, patchIndex, nextColumn, rowEnd));
                        const std::int32_t count = indexCount;
                        indices[count] = bottomLeft;
                        indices[count + 1] = topLeft;
                        indices[count + 2] = bottomRight;
                        indices[count + 3] = bottomRight;
                        indices[count + 4] = topLeft;
                        indices[count + 5] = topRight;
                        calc = terrain.calcPatchSize;
                        indexCount = count + 6;
                        column = nextColumn;
                        if (calc <= column) {
                            break;
                        }
                    }
                    if (calc <= rowStart) {
                        break;
                    }
                    rowEnd += step;
                    rowStart += step;
                }
            }
        }
    }
    if (dynamicSelectorUpdate != 0 && triangleSelector != nullptr) {
        triangleSelector->update(this, -1);  // vptr+0x1c
    }
}

template void CTerrainSceneNode::preRenderIndicesCalculationsDirect<std::uint16_t>(std::uint16_t*);
template void CTerrainSceneNode::preRenderIndicesCalculationsDirect<std::uint32_t>(std::uint32_t*);

// 0x6d3440 _ZN6glitch5scene17CTerrainSceneNode28preRenderIndicesCalculationsEv
// The render buffer's index type picks the pass (1: 16-bit, 2: 32-bit); the index buffer is mapped for writing around it.
void CTerrainSceneNode::preRenderIndicesCalculations() {
    CMeshBuffer& buffer = *renderBuffer;
    const std::uint16_t indexType = buffer.primitiveStream.m_indexType;
    if (indexType != 1 && indexType != 2) {
        return;
    }
    BufferMap map(buffer.primitiveStream.m_indexBuffer.get(), 2);
    std::uint8_t* const indices = map.data != nullptr ? map.data + buffer.primitiveStream.m_offset : nullptr;
    if (indexType == 1) {
        preRenderIndicesCalculationsDirect<std::uint16_t>(reinterpret_cast<std::uint16_t*>(indices));
    } else {
        preRenderIndicesCalculationsDirect<std::uint32_t>(reinterpret_cast<std::uint32_t*>(indices));
    }
}

// 0x6d0dbc _ZN6glitch5scene17CTerrainSceneNode24preRenderLODCalculationsEv
// Registers the node for the solid pass (3) with the first material. When the camera moved or turned more than the thresholds since the
// last pass (or the recalculation is forced) every patch whose box misses the frustum box gets LOD -1, the others the highest LOD whose
// squared distance threshold the squared distance to the patch centre reaches (0 when none does).
void CTerrainSceneNode::preRenderLODCalculations() {
    CSceneManager* manager = sceneManager;
    {
        const boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(0);
        manager->registerNodeForRendering(this, material, reinterpret_cast<void*>(1), 3, nullptr, 0x7FFFFFFF);
    }
    ICameraSceneNode* camera = manager->activeCamera;
    const core::vector3d<float> position = camera->getAbsolutePosition();
    const core::vector3d<float> target = camera->getTarget();
    core::vector3d<float> look{target.X - position.X, target.Y - position.Y, target.Z - position.Z};
    const core::vector3d<float> angle = look.getHorizontalAngle();
    const float fov = camera->getFOV();
    if (forceRecalculation == 0 && !(cameraRotationDelta <= std::fabs(angle.X - oldCameraRotation.X)) &&
        !(cameraRotationDelta <= std::fabs(angle.Y - oldCameraRotation.Y))) {
        if (cameraMovementDelta > std::fabs(position.X - oldCameraPosition.X) &&
            cameraMovementDelta > std::fabs(position.Y - oldCameraPosition.Y) &&
            cameraMovementDelta > std::fabs(position.Z - oldCameraPosition.Z) &&
            cameraFovDelta > std::fabs(fov - oldCameraFov)) {
            return;
        }
    }
    oldCameraRotation.X = angle.X;
    oldCameraPosition = position;
    oldCameraRotation.Y = angle.Y;
    oldCameraRotation.Z = angle.Z;
    oldCameraFov = fov;
    const SViewFrustum* frustum = camera->getViewFrustum();
    const std::int32_t total = terrain.patchCount * terrain.patchCount;
    for (std::int32_t i = 0; i < total; ++i) {
        STerrainPatch& patch = terrain.patches[i];
        const core::aabbox3d<float>& box = patch.boundingBox;
        if (frustum->box.MinEdge.X > box.MaxEdge.X || frustum->box.MinEdge.Y > box.MaxEdge.Y || frustum->box.MinEdge.Z > box.MaxEdge.Z ||
            frustum->box.MaxEdge.X < box.MinEdge.X || frustum->box.MaxEdge.Y < box.MinEdge.Y || frustum->box.MaxEdge.Z < box.MinEdge.Z) {
            patch.lod = -1;
            continue;
        }
        std::int32_t lod = terrain.maxLOD - 1;
        if (lod >= 0) {
            const float dx = position.X - patch.center.X;
            const float dy = position.Y - patch.center.Y;
            const float dz = position.Z - patch.center.Z;
            const double distance = static_cast<double>((dx * dx + dy * dy) + dz * dz);
            if (distance >= terrain.lodDistanceSquared[static_cast<std::size_t>(lod)]) {
                patch.lod = lod;
            } else {
                while (true) {
                    --lod;
                    patch.lod = 0;
                    if (lod == -1) {
                        break;
                    }
                    if (distance >= terrain.lodDistanceSquared[static_cast<std::size_t>(lod)]) {
                        patch.lod = lod;
                        break;
                    }
                }
            }
        }
    }
}

// 0x6d1650 _ZN6glitch5scene17CTerrainSceneNode27calculateDistanceThresholdsEb
// Unless the distances are overridden: the table is cleared and gets maxLOD entries, entry i = (k * k) * (patchSize^2 * scale.x * scale.z)
// with k = i + 1 + i / 2. The bool argument is not read.
void CTerrainSceneNode::calculateDistanceThresholds(bool) {
    if (lodDistanceOverridden != 0) {
        return;
    }
    terrain.lodDistanceSquared.clear();
    terrain.lodDistanceSquared.reserve(static_cast<std::size_t>(terrain.maxLOD > 0 ? terrain.maxLOD : 0));
    const double unit = static_cast<double>((static_cast<float>(terrain.patchSize * terrain.patchSize) * terrain.scale.X) * terrain.scale.Z);
    for (std::int32_t i = 0; i < terrain.maxLOD; ++i) {
        const std::int32_t k = (i + 1) + (i >> 1);
        terrain.lodDistanceSquared.push_back(static_cast<double>(k * k) * unit);
    }
}

// 0x6d176c _ZN6glitch5scene17CTerrainSceneNode6renderEPv
// A visible node with an active camera and a mesh buffer draws the render buffer with the first material at the identity transform. The
// original draws only when the render context argument is non-null.
void CTerrainSceneNode::render(void* renderContext) {
    if ((flags & ESNF_VISIBLE) == 0) {
        return;
    }
    if (sceneManager->activeCamera == nullptr) {
        return;
    }
    if (mesh->getMeshBufferCount() == 0) {
        return;
    }
    video::IVideoDriver* driver = sceneManager->driver;
    core::CMatrix4<float> identity(core::CMatrix4<float>::EM4CONST_IDENTITY);
    driver->setTransform(1, identity);
    if (renderContext != nullptr) {
        const boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(0);
        const boost::intrusive_ptr<video::CMaterialVertexAttributeMap> attributeMap = mesh->getMaterialVertexAttributeMap(0);
        driver->setMaterial(material, attributeMap);
        driver->drawMeshBuffer(boost::intrusive_ptr<const CMeshBuffer>(renderBuffer));
    }
}

// 0x6d3544 _ZN6glitch5scene17CTerrainSceneNode19onRegisterSceneNodeEv
int CTerrainSceneNode::onRegisterSceneNode() {
    if (sceneManager->activeCamera != nullptr) {
        preRenderLODCalculations();
        preRenderIndicesCalculations();
        forceRecalculation = 0;
    }
    return 1;
}

// 0x6d1e34 _ZNK6glitch5scene17CTerrainSceneNode9getHeightEff
// The world point (x, z) is taken into the terrain's grid (rotation matrix, position, scale), and the height is interpolated over the
// triangle of the cell it falls in, then scaled and offset. Outside the grid the answer is -1000000; without a mesh buffer 0. The vertex
// reads are unchecked at the far edge, as in the original.
float CTerrainSceneNode::getHeight(float x, float z) const {
    if (mesh->getMeshBufferCount() == 0) {
        return 0.0f;
    }
    const core::CMatrix4<float> m = terrain.rotation.getMatrix();
    float local[3];
    local[0] = (((x * m.M[0]) + (m.M[4] * 0.0f)) + (z * m.M[8])) - terrain.position.X;
    local[1] = (((x * m.M[1]) + (m.M[5] * 0.0f)) + (z * m.M[9])) - terrain.position.Y;
    local[2] = (((x * m.M[2]) + (m.M[6] * 0.0f)) + (z * m.M[10])) - terrain.position.Z;
    {
        core::vector3d<float> scaled{local[0], local[1], local[2]};
        scaled /= terrain.scale;
        local[0] = scaled.X;
        local[1] = scaled.Y;
        local[2] = scaled.Z;
    }
    const std::int32_t cellX = static_cast<std::int32_t>(std::floor(local[0]));
    const float floorZ = std::floor(local[2]);
    const boost::intrusive_ptr<CMeshBuffer> holder = mesh->getMeshBuffer(0);
    const video::SVertexStream& stream = holder->vertexStreams->m_streams[0];
    const std::int32_t offset = static_cast<std::int32_t>(stream.offset);
    const std::uint8_t* data = stream.buffer->m_data;
    const std::int32_t stride = stream.field0e;
    if (cellX < 0) {
        return -1000000.0f;
    }
    const std::int32_t cellZ = static_cast<std::int32_t>(floorZ);
    const std::int32_t size = terrain.size;
    bool outside = cellZ <= 0;
    if (cellZ >= 0) {
        outside = size <= cellX;
    }
    if (outside || size <= cellZ) {
        return -1000000.0f;
    }
    const std::int32_t rowNext = size + cellX * size;
    const std::int32_t cellZNext = cellZ + 1;
    const std::uint8_t* values = data + offset;
    auto height = [&](std::int32_t index) -> float {
        return *reinterpret_cast<const float*>(values + static_cast<std::size_t>(stride) * static_cast<std::size_t>(index) + 4);
    };
    const std::int32_t base = size * cellX;
    const float h00 = height(base + cellZ);
    const float h11 = height(rowNext + cellZNext);
    const float fracX = local[0] - static_cast<float>(cellX);
    const float fracZ = local[2] - static_cast<float>(cellZ);
    float result;
    if (fracX > fracZ) {
        const float h10 = height(rowNext + cellZ);
        result = (h00 + ((h11 - h10) * fracZ)) + ((h10 - h00) * fracX);
    } else {
        const float h01 = height(cellZNext + base);
        result = (h00 + ((h11 - h01) * fracX)) + ((h01 - h00) * fracZ);
    }
    return (result * terrain.scale.Y) + terrain.position.Y;
}

// 0x6d22f0 _ZN6glitch5scene17CTerrainSceneNode18getIndicesForPatchERSt6vectorIjNS_4core10SAllocatorIjLNS_6memory13E_MEMORY_HINTE0EEEEiii
// The triangle list of the patch at row x, column z for a LOD (-1: the patch's current one). A given LOD is applied to all patches while
// the indices are built and the old LODs are restored afterwards. The list has 6 * patchSize^2 slots; the answer is the number of
// indices written (-1 for an invalid patch or LOD, -2 when the LOD is negative).
std::int32_t CTerrainSceneNode::getIndicesForPatch(core::svector<std::uint32_t>& indices, std::int32_t x, std::uint32_t z, std::int32_t lod) {
    if (x < 0) {
        return -1;
    }
    const std::int32_t patchCount = terrain.patchCount;
    if (patchCount <= x || static_cast<std::int32_t>(z) < 0 || patchCount <= static_cast<std::int32_t>(z) || lod < -1 || lod >= terrain.maxLOD) {
        return -1;
    }
    core::svector<std::int32_t> saved;
    bool restore;
    std::int32_t effectiveLod = lod;
    if (lod == -1) {
        restore = false;
        effectiveLod = terrain.patches[z + patchCount * x].lod;
    } else {
        getCurrentLODOfPatches(saved);
        setCurrentLODOfPatches(lod);
        restore = true;
    }
    std::int32_t written;
    if (effectiveLod >= 0) {
        written = 0;
        const std::int32_t patchIndex = static_cast<std::int32_t>(z) + terrain.patchCount * x;
        const std::int32_t step = 1 << effectiveLod;
        indices.resize(static_cast<std::size_t>(6 * terrain.patchSize * terrain.patchSize), 0u);
        std::int32_t rowStart = 0;
        std::int32_t column = 0;
        std::int32_t calc = terrain.calcPatchSize;
        while (true) {
            const std::int32_t rowEnd = rowStart + step;
            const std::int32_t columnBefore = column;
            if (rowStart >= calc) {
                break;
            }
            const std::uint32_t topLeft = getIndex(static_cast<std::int32_t>(z), x, patchIndex, column, rowStart);
            column += step;
            const std::uint32_t topRight = getIndex(static_cast<std::int32_t>(z), x, patchIndex, column, rowStart);
            const std::uint32_t bottomLeft = getIndex(static_cast<std::int32_t>(z), x, patchIndex, columnBefore, rowEnd);
            const std::uint32_t bottomRight = getIndex(static_cast<std::int32_t>(z), x, patchIndex, column, rowEnd);
            indices[written] = bottomLeft;
            written += 6;
            indices[written - 5] = topLeft;
            indices[written - 4] = bottomRight;
            indices[written - 3] = bottomRight;
            indices[written - 2] = topLeft;
            indices[written - 1] = topRight;
            const std::int32_t edge = terrain.calcPatchSize;
            if (column >= edge) {
                rowStart += step;
            }
            calc = terrain.calcPatchSize;
            if (column >= edge) {
                column = 0;
            }
        }
        if (restore) {
            setCurrentLODOfPatches(saved);
        }
    } else {
        written = -2;
    }
    return written;
}

// 0x6d2b08 _ZN6glitch5scene17CTerrainSceneNode19applyTransformationEv
// With a mesh buffer: every vertex of the mesh holder is scaled, moved by (position - pivot), rotated by the rotation matrix and moved
// back by the pivot, into the render buffer (mapped for writing); then the thresholds and the patch data are recomputed.
void CTerrainSceneNode::applyTransformation() {
    if (mesh->getMeshBufferCount() == 0) {
        return;
    }
    const core::CMatrix4<float> m = terrain.rotation.getMatrix();
    video::CVertexStreams& renderStreams = *renderBuffer->vertexStreams;
    const video::SVertexStream& destination = renderStreams.m_streams[0];
    BufferMap map(destination.buffer.get(), 2);
    std::uint8_t* const destinationBase = map.data != nullptr ? map.data + destination.offset : nullptr;
    const boost::intrusive_ptr<CMeshBuffer> holder = mesh->getMeshBuffer(0);
    const video::SVertexStream& source = holder->vertexStreams->m_streams[0];
    const std::uint8_t* const sourceBase = source.buffer->m_data + source.offset;
    const float shiftX = terrain.position.X - terrain.rotationPivot.X;
    const float shiftY = terrain.position.Y - terrain.rotationPivot.Y;
    const float shiftZ = terrain.position.Z - terrain.rotationPivot.Z;
    const std::uint32_t vertexCount = holder->vertexStreams->m_field08;
    for (std::uint32_t index = 0; index < vertexCount; ++index) {
        const float* vertex = reinterpret_cast<const float*>(sourceBase + static_cast<std::size_t>(source.field0e) * index);
        const float px = shiftX + (vertex[0] * terrain.scale.X);
        const float py = shiftY + (vertex[1] * terrain.scale.Y);
        const float pz = shiftZ + (vertex[2] * terrain.scale.Z);
        const float outY = (((px * m.M[4]) + (py * m.M[5])) + (pz * m.M[6])) + terrain.rotationPivot.Y;
        const float outZ = (((px * m.M[8]) + (py * m.M[9])) + (pz * m.M[10])) + terrain.rotationPivot.Z;
        float* out = floatAt(destinationBase, static_cast<std::size_t>(destination.field0e) * index);
        out[0] = (((px * m.M[0]) + (py * m.M[1])) + (pz * m.M[2])) + terrain.rotationPivot.X;
        out[2] = outZ;
        out[1] = outY;
    }
    calculateDistanceThresholds(true);
    calculatePatchData();
}

// 0x6d2ec0 _ZN6glitch5scene17CTerrainSceneNode11setPositionERKNS_4core8vector3dIfEE
void CTerrainSceneNode::setPosition(const core::vector3d<float>& value) {
    terrain.position = value;
    applyTransformation();
    forceRecalculation = 1;
}

// 0x6d2ef0 _ZN6glitch5scene17CTerrainSceneNode11setRotationERKNS_4core10quaternionE
void CTerrainSceneNode::setRotation(const core::quaternion& value) {
    terrain.rotation = value;
    applyTransformation();
    forceRecalculation = 1;
}

// 0x6d2f28 _ZN6glitch5scene17CTerrainSceneNode8setScaleERKNS_4core8vector3dIfEE
void CTerrainSceneNode::setScale(const core::vector3d<float>& value) {
    terrain.scale = value;
    applyTransformation();
    forceRecalculation = 1;
}

// 0x6d2ff0 _ZN6glitch5scene17CTerrainSceneNode13smoothTerrainERKN5boost13intrusive_ptrINS0_11CMeshBufferEEEi
// `passes` times, every inner vertex height becomes (up + ((left + right) + up)) * 0.25: the listing reads the row above twice and never
// the row below (the compiled code does the same).
void CTerrainSceneNode::smoothTerrain(const boost::intrusive_ptr<CMeshBuffer>& buffer, std::int32_t passes) {
    video::CVertexStreams& streams = *buffer->vertexStreams;
    const video::SVertexStream& positions = streams.m_streams[0];
    BufferMap map(positions.buffer.get(), 3);
    std::uint8_t* const base = map.data != nullptr ? map.data + positions.offset : nullptr;
    const std::size_t stride = positions.field0e;
    auto heightAt = [&](std::int32_t index) -> float& { return *floatAt(base, stride * static_cast<std::size_t>(index) + 4); };
    for (std::int32_t pass = 0; pass < passes; ++pass) {
        const std::int32_t size = terrain.size;
        if (size > 2) {
            std::int32_t rowBase = size;
            std::int32_t row = 1;
            do {
                std::int32_t index = rowBase + 1;
                std::int32_t column = 1;
                do {
                    const float up = heightAt(index - size);
                    ++column;
                    const float sum = up + ((heightAt(index - 1) + heightAt(column + rowBase)) + up);
                    heightAt(index) = sum * 0.25f;
                    ++index;
                } while (terrain.size - 1 > column);
                if (terrain.size - 1 <= ++row) {
                    break;
                }
                rowBase += terrain.size;
            } while (terrain.size > 2);
        }
    }
}

// 0x6d315c _ZN6glitch5scene17CTerrainSceneNode12scaleTextureEff
// Needs a texture coordinate attribute in the render buffer. Stores the two scales and rewrites the first texture coordinate stream
// (u = 1 - row * scale1 / (size - 1), v = column * scale1 / (size - 1)) and, when the buffer has a second one, that stream (with
// scale2; with scale2 == 0 the first stream's values).
void CTerrainSceneNode::scaleTexture(float scale1, float scale2) {
    video::CVertexStreams& streams = *renderBuffer->vertexStreams;
    if ((streams.m_attributeMask & 0x1FFFE) == 0) {
        return;
    }
    textureScale1 = scale1;
    textureScale2 = scale2;
    const video::SVertexStream& first = streams.m_streams[1];
    BufferMap firstMap(first.buffer.get(), 2);
    std::uint8_t* const firstBase = firstMap.data != nullptr ? firstMap.data + first.offset : nullptr;
    video::SVertexStream::SMapBuffer<core::vector2d<float>> second;
    if ((streams.m_attributeMask & 4) != 0) {
        second.reset(streams.m_streams[2], 2);
    }
    const std::int32_t size = terrain.size;
    const float denominator = static_cast<float>(size - 1);
    const float step1 = scale1 / denominator;
    const float step2 = scale2 / static_cast<float>(size - 1);
    if (size > 0) {
        float row2 = 0.0f;
        float row1 = 0.0f;
        std::int32_t vertex = 0;
        for (std::int32_t row = 0; row < size; ++row) {
            float column2 = 0.0f;
            float column1 = 0.0f;
            for (std::int32_t column = 0; column < size; ++column) {
                float* uv = floatAt(firstBase, static_cast<std::size_t>(first.field0e) * vertex);
                uv[0] = 1.0f - row1;
                uv[1] = column1;
                if (second.data != nullptr) {
                    float* uv2 = reinterpret_cast<float*>(reinterpret_cast<std::uint8_t*>(second.data) -
                                                          0 + static_cast<std::size_t>(streams.m_streams[2].field0e) * vertex);
                    if (scale2 != 0.0f) {
                        uv2[0] = 1.0f - row2;
                        uv2[1] = column2;
                    } else {
                        uv2[0] = 1.0f - row1;
                        uv2[1] = column1;
                    }
                }
                ++vertex;
                if (column + 1 < size) {
                    column1 += step1;
                    column2 += step2;
                }
            }
            if (row + 1 < size) {
                row1 += step1;
                row2 += step2;
            }
        }
    }
    second.reset();
}

// 0x6d3578 _ZN6glitch5scene17CTerrainSceneNode16calculateNormalsERKN5boost13intrusive_ptrINS0_11CMeshBufferEEE
// Needs the normal attribute (bit 17). The normal of a vertex is the normalised sum of the normalised face normals of the triangles
// around it (up to eight; none of them at a corner without a neighbour gives (0, 1, 0)). A face normal is the negated cross product
// of two edge vectors, in the order of the listing.
void CTerrainSceneNode::calculateNormals(const boost::intrusive_ptr<CMeshBuffer>& buffer) {
    video::CVertexStreams& streams = *buffer->vertexStreams;
    if ((streams.m_attributeMask & 0x20000) == 0) {
        return;
    }
    const video::SVertexStream& positions = streams.m_streams[0];
    BufferMap positionMap(positions.buffer.get(), 3);
    std::uint8_t* const positionBase = positionMap.data != nullptr ? positionMap.data + positions.offset : nullptr;
    const std::size_t normalIndex = static_cast<std::size_t>(static_cast<std::uint8_t>(streams.m_count0c + 1));
    const video::SVertexStream& normals = streams.m_streams[normalIndex];
    BufferMap normalMap(normals.buffer.get(), 3);
    std::uint8_t* const normalBase = normalMap.data != nullptr ? normalMap.data + normals.offset : nullptr;
    const std::int32_t size = terrain.size;
    const std::size_t stride = positions.field0e;
    auto position = [&](std::int32_t row, std::int32_t column) -> const float* {
        return reinterpret_cast<const float*>(positionBase + stride * static_cast<std::size_t>(column + row * size));
    };
    // normal += normalize(-(b x c)) with b = pb - pa, c = pc - pa, written as the listing's component expressions.
    auto addFace = [&](core::vector3d<float>& sum, const float* a, const float* pb, const float* pc) {
        const float bx = pb[0] - a[0];
        const float by = pb[1] - a[1];
        const float bz = pb[2] - a[2];
        const float cx = pc[0] - a[0];
        const float cy = pc[1] - a[1];
        const float cz = pc[2] - a[2];
        core::vector3d<float> normal;
        normal.X = (cz * (-by)) + (bz * cy);
        normal.Y = (cx * (-bz)) + (bx * cz);
        normal.Z = (cy * (-bx)) + (by * cx);
        normal.normalize();
        sum.X = sum.X + normal.X;
        sum.Y = sum.Y + normal.Y;
        sum.Z = sum.Z + normal.Z;
    };
    for (std::int32_t x = 0; x < size; ++x) {
        for (std::int32_t z = 0; z < size; ++z) {
            core::vector3d<float> sum{0.0f, 0.0f, 0.0f};
            int count = 0;
            if (z > 0 && x > 0) {  // up left
                addFace(sum, position(x - 1, z - 1), position(x - 1, z), position(x, z));
                addFace(sum, position(x - 1, z - 1), position(x, z - 1), position(x, z));
                count = 2;
            }
            if (x > 0 && size - 1 > z) {  // up right
                addFace(sum, position(x - 1, z), position(x - 1, z + 1), position(x, z + 1));
                addFace(sum, position(x - 1, z), position(x, z + 1), position(x, z));
                count += 2;
            }
            if (size - 1 > x) {
                if (size - 1 > z) {  // down right
                    addFace(sum, position(x, z + 1), position(x, z), position(x + 1, z + 1));
                    addFace(sum, position(x, z + 1), position(x + 1, z + 1), position(x + 1, z));
                    count += 2;
                }
                if (z > 0) {  // down left
                    addFace(sum, position(x, z - 1), position(x, z), position(x + 1, z));
                    addFace(sum, position(x, z - 1), position(x + 1, z), position(x + 1, z - 1));
                    count += 2;
                }
            }
            if (count != 0) {
                sum.normalize();
            } else {
                sum = core::vector3d<float>{0.0f, 1.0f, 0.0f};
            }
            float* out = floatAt(normalBase, static_cast<std::size_t>(normals.field0e) * static_cast<std::size_t>(z + size * x));
            out[0] = sum.X;
            out[1] = sum.Y;
            out[2] = sum.Z;
        }
    }
}

// 0x6d4454 _ZN6glitch5scene17CTerrainSceneNode13loadHeightMapEPNS_2io9IReadFileENS_5video6SColorEi
bool CTerrainSceneNode::loadHeightMap(io::IReadFile* file, video::SColor color, std::int32_t smoothFactor) {
    if (file == nullptr) {
        return false;
    }
    const std::uint32_t startTime = os::Timer::getRealTime();
    video::IVideoDriver* driver = sceneManager->driver;
    boost::intrusive_ptr<video::CImage> image = driver->m_textureManager->createImageFromFile(file);
    if (!image) {
        os::Printer::log("Unable to load heightmap.", ELL_INFORMATION);
        return false;
    }
    heightMapFile = file->getFileName();
    terrain.size = static_cast<std::int32_t>(image->m_width);
    // The patch size limits the LOD count.
    switch (terrain.patchSize) {
        case 33:
            if (terrain.maxLOD > 5) terrain.maxLOD = 5;
            break;
        case 65:
            if (terrain.maxLOD > 6) terrain.maxLOD = 6;
            break;
        case 129:
            if (terrain.maxLOD > 7) terrain.maxLOD = 7;
            break;
        case 9:
            if (terrain.maxLOD > 3) terrain.maxLOD = 3;
            break;
        case 17:
            if (terrain.maxLOD > 4) terrain.maxLOD = 4;
            break;
        default:
            break;
    }
    const std::uint32_t vertexCount = static_cast<std::uint32_t>(terrain.size) * static_cast<std::uint32_t>(terrain.size);
    boost::intrusive_ptr<CMeshBuffer> holder = mesh->getMeshBuffer(0);
    boost::intrusive_ptr<video::CVertexStreams> holderStreams = holder->vertexStreams;
    boost::intrusive_ptr<video::IBuffer> holderBuffer = holderStreams->m_streams[0].buffer;
    boost::intrusive_ptr<video::CVertexStreams> renderStreams = renderBuffer->vertexStreams;
    boost::intrusive_ptr<video::IBuffer> renderVertexBuffer = renderStreams->m_streams[0].buffer;
    if (!holderBuffer) {
        holderBuffer = driver->createBuffer(0, 4, 0, nullptr, true);
        holderStreams->setupStreams(holderBuffer, 0xFFFFFFFFu);
        renderVertexBuffer = driver->createBuffer(0, 4, 0, nullptr, true);
        renderStreams->setupStreams(renderVertexBuffer, 0xFFFFFFFFu);
    }
    const std::uint32_t byteSize = static_cast<std::uint32_t>(holderStreams->m_streams[0].field0e) * vertexCount;
    holderBuffer->reset(byteSize, new std::uint8_t[byteSize], true);
    holderStreams->m_field08 = vertexCount;
    renderVertexBuffer->reset(byteSize, new std::uint8_t[byteSize], true);
    renderStreams->m_field08 = vertexCount;
    boost::intrusive_ptr<video::IBuffer> indexBuffer = renderBuffer->primitiveStream.m_indexBuffer;
    if (!indexBuffer) {
        indexBuffer = driver->createBuffer(1, 4, 0, nullptr, true);
        video::CPrimitiveStream& stream = renderBuffer->primitiveStream;
        stream.m_indexBuffer = indexBuffer;
        stream.m_offset = 0;
        stream.m_count = 0;
        stream.m_vertexStart = 0;
        stream.m_vertexEnd = 0;
        stream.m_indexType = 1;
        stream.m_primitiveType = 6;
    }
    const std::uint32_t mask = holderStreams->m_attributeMask;
    {
        const video::SVertexStream& positions = holderStreams->m_streams[0];
        BufferMap positionMap(positions.buffer.get(), 2);
        std::uint8_t* const positionBase = positionMap.data != nullptr ? positionMap.data + positions.offset : nullptr;
        video::SVertexStream* const streamsBegin = holderStreams->m_streams.data();
        video::SVertexStream* const streamsEnd = streamsBegin + holderStreams->m_streams.size();
        video::SVertexStream::SMapBuffer<core::vector2d<float>> texture1;
        video::SVertexStream::SMapBuffer<core::vector2d<float>> texture2;
        if ((mask & 2) != 0) {
            video::SVertexStream* stream = holderStreams->getStream(1, streamsBegin + 1, streamsEnd);
            texture1.reset(*stream, 2);
        }
        if ((mask & 4) != 0) {
            video::SVertexStream* stream = holderStreams->getStream(2, streamsBegin + 1, streamsEnd);
            texture2.reset(*stream, 2);
        }
        video::SVertexStream* const attributeStreams = streamsBegin + holderStreams->m_count0c + 1;
        video::SVertexStream* normalStream = nullptr;
        std::uint8_t* normalBase = nullptr;
        if ((mask & 0x20000) != 0) {
            normalStream = holderStreams->getStream(17, attributeStreams, streamsEnd);
            normalBase = normalStream->buffer->map(2) + normalStream->offset;
        }
        video::SVertexStream* colorStream = nullptr;
        std::uint8_t* colorBase = nullptr;
        if ((mask & 0x40000) != 0) {
            colorStream = holderStreams->getStream(18, attributeStreams, streamsEnd);
            colorBase = colorStream->buffer->map(2) + colorStream->offset;
        }
        const std::int32_t size = terrain.size;
        const float inverse = 1.0f / static_cast<float>(size - 1);
        if (size > 0) {
            float rowPosition = 0.0f;
            float rowCoordinate = 0.0f;
            std::int32_t vertex = 0;
            for (std::int32_t row = 0; row < size; ++row) {
                float columnPosition = 0.0f;
                float columnCoordinate = 0.0f;
                for (std::int32_t column = 0; column < size; ++column) {
                    const video::SColor pixel = image->getPixel(static_cast<std::uint32_t>(size - row), static_cast<std::uint32_t>(column));
                    const std::uint32_t pixelBits = pixel.color;
                    float* position = floatAt(positionBase, static_cast<std::size_t>(positions.field0e) * vertex);
                    position[0] = rowPosition;
                    position[1] = (static_cast<float>(pixelBits & 0xFFu) * 0.3f + static_cast<float>((pixelBits >> 8) & 0xFFu) * 0.59f) +
                                  static_cast<float>((pixelBits >> 16) & 0xFFu) * 0.11f;
                    position[2] = columnPosition;
                    if ((mask & 6) != 0) {
                        float* uv = reinterpret_cast<float*>(reinterpret_cast<std::uint8_t*>(texture1.data) +
                                                             static_cast<std::size_t>(texture1.stream->field0e) * vertex);
                        uv[0] = 1.0f - rowCoordinate;
                        uv[1] = columnCoordinate;
                        if (texture2.data != nullptr) {
                            float* uv2 = reinterpret_cast<float*>(reinterpret_cast<std::uint8_t*>(texture2.data) +
                                                                  static_cast<std::size_t>(texture2.stream->field0e) * vertex);
                            uv2[0] = 1.0f - rowCoordinate;
                            uv2[1] = columnCoordinate;
                        }
                    }
                    if (normalBase != nullptr) {
                        float* normal = floatAt(normalBase, static_cast<std::size_t>(normalStream->field0e) * vertex);
                        normal[0] = 0.0f;
                        normal[2] = 0.0f;
                        normal[1] = 1.0f;
                    }
                    if (colorBase != nullptr) {
                        std::memcpy(colorBase + static_cast<std::size_t>(colorStream->field0e) * vertex, &color, 4);
                    }
                    ++vertex;
                    if (size <= column + 1) {
                        break;
                    }
                    columnPosition += 1.0f;
                    columnCoordinate += inverse;
                }
                if (size <= row + 1) {
                    break;
                }
                rowPosition += 1.0f;
                rowCoordinate += inverse;
            }
        }
        if (colorBase != nullptr) colorStream->buffer->unmap();
        if (normalBase != nullptr) normalStream->buffer->unmap();
        texture2.reset();
        texture1.reset();
    }
    image.reset();
    smoothTerrain(holder, smoothFactor);
    calculateNormals(holder);
    {
        const video::SVertexStream& source = holderStreams->m_streams[0];
        const std::uint8_t* const sourceBase = source.buffer->m_data + source.offset;
        const video::SVertexStream& destination = renderStreams->m_streams[0];
        BufferMap destinationMap(destination.buffer.get(), 2);
        std::uint8_t* const destinationBase = destinationMap.data + destination.offset;
        std::memcpy(destinationBase, sourceBase, byteSize);
        for (std::uint32_t index = 0; index < vertexCount; ++index) {
            const float* vertex = reinterpret_cast<const float*>(sourceBase + static_cast<std::size_t>(source.field0e) * index);
            const float y = (vertex[1] * terrain.scale.Y) + terrain.position.Y;
            const float z = (vertex[2] * terrain.scale.Z) + terrain.position.Z;
            float* out = floatAt(destinationBase, static_cast<std::size_t>(destination.field0e) * index);
            out[0] = (vertex[0] * terrain.scale.X) + terrain.position.X;
            out[2] = z;
            out[1] = y;
        }
    }
    calculateDistanceThresholds(false);
    createPatches();
    calculatePatchData();
    terrain.rotationPivot = terrain.center;
    setRotation(terrain.rotation);  // vptr+0x9c
    const std::uint16_t indexType = vertexCount > 0xFFFEu ? 2 : 1;
    const std::uint32_t indexTotal = static_cast<std::uint32_t>(terrain.calcPatchSize * terrain.calcPatchSize * 6 * terrain.patchCount * terrain.patchCount);
    const std::uint32_t indexBytes = (indexType == 2 ? 4u : 2u) * indexTotal;  // getIndexTypeSize(E_INDEX_TYPE)::sizes
    indexBuffer->reset(indexBytes, new std::uint8_t[indexBytes], true);
    video::CPrimitiveStream& renderStream = renderBuffer->primitiveStream;
    renderStream.m_vertexEnd = vertexCount;
    renderStream.m_vertexStart = 0;
    renderStream.m_count = indexTotal;
    renderStream.m_indexType = indexType;
    char text[256];
    const std::uint32_t endTime = os::Timer::getRealTime();
    std::snprintf(text, 255, "Generated terrain data (%dx%d) in %.4f seconds", terrain.size, terrain.size,
                  static_cast<double>(static_cast<float>(endTime - startTime) / 1000.0f));
    os::Printer::log(text, ELL_INFORMATION);
    return true;
}

// 0x6d083c _ZNK6glitch5scene17CTerrainSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CTerrainSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    attributes->addString("Heightmap", heightMapFile.c_str(), false);  // vptr+0x7c
    attributes->addFloat("TextureScale1", textureScale1, false);      // vptr+0x64
    attributes->addFloat("TextureScale2", textureScale2, false);
}

// 0x6d5268 _ZN6glitch5scene17CTerrainSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// A height map name that differs from the loaded one is opened through the file system and loaded (smooth factor 0, vertex colour -1);
// a file that cannot be opened is logged. The texture scales (a value within 1e-6 of 0 counts as 1) rescale the texture coordinates when
// they differ from the current ones by more than 1e-6. The ISceneNode attributes come last.
void CTerrainSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    const std::string name = attributes->getString("Heightmap");  // vptr+0x84
    float scale1 = attributes->getFloat("TextureScale1");         // vptr+0x70
    float scale2 = attributes->getFloat("TextureScale2");
    if (name != heightMapFile) {
        io::IReadFile* file = fileSystem->createAndOpenFile(name.c_str());  // vptr+0x0c
        if (file != nullptr) {
            loadHeightMap(file, video::SColor{0xFFFFFFFFu}, 0);
            file->drop();
        } else {
            os::Printer::log("could not open heightmap", name.c_str(), ELL_INFORMATION);
        }
    }
    float upper1 = scale1 + 0.000001f;
    if (upper1 >= 0.0f && (scale1 - 0.000001f) <= 0.0f) {
        upper1 = 1.0f;
        scale1 = 1.0f;
    }
    if ((scale2 + 0.000001f) >= 0.0f && (scale2 - 0.000001f) <= 0.0f) {
        scale2 = 1.0f;
    }
    if (textureScale1 > upper1 || textureScale1 < (scale1 - 0.000001f) || textureScale2 > (scale2 + 0.000001f) ||
        textureScale2 < (scale2 - 0.000001f)) {
        scaleTexture(scale1, scale2);
    }
    ISceneNode::deserializeAttributes(attributes, options);
}

// 0x6d5518 _ZN6glitch5scene17CTerrainSceneNode5cloneEPNS0_10ISceneNodeE
// A new terrain with the same attribute mask, 4 LODs, patch size 17 and this node's transform; the base members are copied, the height
// map is loaded again from the file system and the texture scales applied, and each material the clone has a mesh buffer for is copied.
// With a parent (the argument, or this node's own) the clone is handed to the vtable slot 0x5c with the parent as its argument and
// released; the listing calls it on the clone.
ISceneNode* CTerrainSceneNode::clone(ISceneNode* newParent) {
    ISceneNode* parentNode = newParent != nullptr ? newParent : parent;
    const std::uint32_t attributeMask = renderBuffer->vertexStreams->m_attributeMask;
    CTerrainSceneNode* copy = new CTerrainSceneNode(fileSystem, id, attributeMask, 4, 17, getPosition(), getRotation(), getScale());
    copy->cloneMembers(this);
    io::IReadFile* file = fileSystem->createAndOpenFile(heightMapFile.c_str());
    if (file != nullptr) {
        copy->loadHeightMap(file, video::SColor{0xFFFFFFFFu}, 0);
        file->drop();
    }
    copy->scaleTexture(textureScale1, textureScale2);
    for (std::uint32_t index = 0; index < mesh->getMeshBufferCount(); ++index) {
        if (index >= copy->mesh->getMeshBufferCount()) {
            continue;
        }
        const boost::intrusive_ptr<CMeshBuffer> copyBuffer = copy->mesh->getMeshBuffer(index);
        if (!copyBuffer) {
            continue;
        }
        const boost::intrusive_ptr<CMeshBuffer> ownBuffer = mesh->getMeshBuffer(index);
        if (!ownBuffer) {
            continue;
        }
        copy->mesh->setMaterial(index, mesh->getMaterial(index), mesh->getMaterialVertexAttributeMap(index));
    }
    if (parentNode != nullptr) {
        copy->addChild(parentNode);
        copy->drop();
    }
    return copy;
}

}  // namespace glitch::scene
