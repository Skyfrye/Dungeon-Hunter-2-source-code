// glitch::scene free functions on meshes (IMesh / IAnimatedMesh / CMeshBuffer). Signatures follow the demangled
// symbols of the original (TRACK-B decision 10), not the earlier recon_NN stubs. Each declaration carries its
// original address. Functions that are still partial are declared in the recon slice headers only.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"

namespace glitch::video {
class CImage;
class CMaterial;
class CMaterialVertexAttributeMap;
class IVideoDriver;
struct SColor;
}  // namespace glitch::video

namespace glitch::scene {

// 0x578d9c: sum over the techniques of the material renderer of the pass count (uint16 result, the sum truncated
// to 16 bits, 0 without a renderer technique).
std::uint32_t getNbVertexAttributeMapsDataSize(const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& map);

// 0x59af20: number of primitives of all mesh buffers of the mesh (0 for a null handle).
std::int32_t getPolyCount(const boost::intrusive_ptr<IMesh>& mesh);

// 0x59afb8: primitive count of the frame-0 mesh of an animated mesh (0 for a null handle or no frames).
std::int32_t getPolyCount(const boost::intrusive_ptr<IAnimatedMesh>& mesh);

// 0x59c7a4: scales the texture coordinates (float2 stream of the attribute `channel`, bit in the stream mask) of one buffer.
void scaleTCoords(const boost::intrusive_ptr<CMeshBuffer>& buffer, const core::vector2d<float>& scale,
                  std::uint32_t channel);

// 0x59c8e0: scaleTCoords over every buffer of the mesh.
void scaleTCoords(const boost::intrusive_ptr<IMesh>& mesh, const core::vector2d<float>& scale, std::uint32_t channel);

// ---- The mesh manipulation functions (src/scene/mesh_functions.cpp) ----------------------------------------------------------------------
// Vertex stream indices used by these functions (original attribute numbers, the order of the streams of a CVertexStreams table):
// 0 position, 1 .. 16 texture coordinates, 17 normal, 18 colour, 20 tangent, 24 binormal. A table holds one stream per bit of its
// attribute mask, so the normal stream sits at index (texture coordinate count + 1).

// 0x59a188 and 0x59a1a4 (one body, folded by the linker): both return their argument unchanged (a second handle).
boost::intrusive_ptr<IMesh> createMeshUniquePrimitives(const boost::intrusive_ptr<IMesh>& mesh);
boost::intrusive_ptr<IMesh> createMeshWelded(const boost::intrusive_ptr<IMesh>& mesh, float tolerance);

// 0x59b084: reverses the winding of the triangles of the mesh by swapping index pairs, by primitive type (strips and quad strips:
// each pair; fans: the tail mirrored; triangles: the second and third index; quads: the second and fourth). A buffer without an index
// buffer logs "flipping unindexed surfaces not supported". The binary asks for buffer 0 on every pass of its loop (the loop variable
// is not the argument), so a mesh of N buffers flips its first buffer N times; reproduced.
void flipSurfaces(const boost::intrusive_ptr<IMesh>& mesh);

// 0x59b2a4: a copy of the mesh with its own copies of the index buffers and one new vertex buffer per mesh buffer. The attribute mask
// of each copy is `mask & (extra | the source buffer's mask)`, accumulated over the buffers; the attributes of the new table that the
// source lacks get the default value type and component count (SVertexAttributeTypeInspection::Defaults) and zeroed data. Materials,
// attribute maps and the bounding box are carried over. Null for a null mesh.
boost::intrusive_ptr<IMesh> createMeshCopy(const boost::intrusive_ptr<IMesh>& mesh, video::IVideoDriver* driver, std::uint32_t mask,
                                           std::uint32_t extra);
// 0x59ba3c: createMeshCopy(mesh, driver, 0xffffffff, 6): the copy gets texture coordinate sets 0 and 1.
boost::intrusive_ptr<IMesh> createMeshWith2TCoords(const boost::intrusive_ptr<IMesh>& mesh, video::IVideoDriver* driver);

// 0x59ba90: writes the colour to every vertex of every buffer that has a four byte colour stream (value type 1); others log
// "unsupported color conversion for stream".
void setVertexColors(const boost::intrusive_ptr<IMesh>& mesh, video::SColor color);
// 0x59bc60: writes the alpha into the fourth component of the colour streams, whatever the component type (bytes, 16-bit and 32-bit
// integers store the value, floats store value / 255).
void setVertexColorAlpha(const boost::intrusive_ptr<IMesh>& mesh, int alpha);

// 0x59c198: planar texture mapping of the first texture coordinate set: per triangle, the two position components that do not belong
// to the dominant axis of the triangle's normal, times `scale`. The binary steps its triangle index by one element instead of three
// (every window of three consecutive indices is mapped); reproduced, with the windows that would run past the index count skipped.
void makePlanarTextureMapping(const boost::intrusive_ptr<IMesh>& mesh, float scale);

// 0x59c970: createMeshCopy(mesh, driver, 0xffffffff, 0x1100000) (the copy gets tangent and binormal streams) returned, while the
// tangents are computed into the buffers of the *argument* mesh (the binary's loop reads the argument, not the copy): the argument must
// carry texture coordinate 0, tangent and binormal streams, else "to compute tangents, we need texcoord0, tangent and binormal vertex
// attributes" is logged for the buffer. `recalculateNormals` also writes the normals, `smooth` accumulates per vertex instead of
// assigning per window, `angleWeighted` weights with the angle at the first corner. Triangle lists only.
boost::intrusive_ptr<IMesh> createMeshWithTangents(const boost::intrusive_ptr<IMesh>& mesh, video::IVideoDriver* driver,
                                                   bool recalculateNormals, bool smooth, bool angleWeighted);

// 0x59dc1c: multiplies the positions by the scale and the normals by its inverse (renormalized); float streams of three components.
void scale(const boost::intrusive_ptr<CMeshBuffer>& buffer, const core::vector3d<float>& scale);
// 0x59dea4: scale() of every buffer, then the bounding box corners multiplied by the scale.
void scale(const boost::intrusive_ptr<IMesh>& mesh, const core::vector3d<float>& scale);

// 0x59dfe4: recomputes the normals of a triangle list: flat (the triangle normal assigned to its three vertices) or `smooth` (the
// triangle normals summed per vertex and normalized, each optionally multiplied component-wise by the three corner angles).
void recalculateNormals(const boost::intrusive_ptr<CMeshBuffer>& buffer, bool smooth, bool angleWeighted);
// 0x59e698: recalculateNormals() of every buffer.
void recalculateNormals(const boost::intrusive_ptr<IMesh>& mesh, bool smooth, bool angleWeighted);

// 0x59e728 (anonymous namespace, the body), 0x59ee60 and 0x59efac (thunks): transforms the positions of the buffer by the matrix and
// the normals by its rotation part (renormalized). With a box, the box is set to the point of the last vertex (the binary resets the
// box for every vertex instead of growing it; reproduced).
void transform(const boost::intrusive_ptr<CMeshBuffer>& buffer, const core::CMatrix4<float>& matrix, core::aabbox3d<float>& box);
void transform(const boost::intrusive_ptr<CMeshBuffer>& buffer, const core::CMatrix4<float>& matrix);
// 0x59ee64: transform() of every buffer; the mesh's box becomes the union of the buffers' boxes (the empty box -1..1 without buffers).
void transform(const boost::intrusive_ptr<IMesh>& mesh, const core::CMatrix4<float>& matrix);

// The mesh generators the mesh cache calls (src/scene/mesh_creators.cpp). The first argument of each is the id / usage word handed to the
// mesh buffer's vertex streams; every generator returns a one-buffer CMesh, or a null handle.
// 0x6d6e00: the terrain generator of this build only clears its result: it always returns a null handle.
boost::intrusive_ptr<IMesh> createTerrainMesh(const boost::intrusive_ptr<video::CImage>& texture,
                                              const boost::intrusive_ptr<video::CImage>& heightMap,
                                              const core::dimension2d<float>& stretchSize, float maxHeight, video::IVideoDriver* driver,
                                              const core::dimension2d<std::int32_t>& defaultVertexBlockSize, bool debugBorders);
// 0x6d72d0, 0x6d7808, 0x6d841c, 0x6d8cb4, 0x6d945c, 0x6d9fc4, 0x6da6d8. PARTIAL: see mesh_creators.cpp.
boost::intrusive_ptr<IMesh> createPlaneMesh(std::uint32_t id, video::IVideoDriver* driver, float size, const video::SColor& color);
boost::intrusive_ptr<IMesh> createSphereMesh(std::uint32_t id, video::IVideoDriver* driver, float radius, std::uint32_t polyCountX,
                                             std::uint32_t polyCountY);
boost::intrusive_ptr<IMesh> createHillPlaneMesh(std::uint32_t id, video::IVideoDriver* driver, const core::dimension2d<float>& tileSize,
                                                const core::dimension2d<std::uint32_t>& tileCount,
                                                const boost::intrusive_ptr<video::CMaterial>& material,
                                                const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& attributeMap,
                                                float hillHeight, const core::dimension2d<float>& countHills,
                                                const core::dimension2d<float>& textureRepeatCount);
boost::intrusive_ptr<IMesh> createCubeMesh(std::uint32_t id, video::IVideoDriver* driver, float size);
boost::intrusive_ptr<IMesh> createCylinderMesh(std::uint32_t id, video::IVideoDriver* driver, float radius, float length,
                                               std::uint32_t tesselation, const video::SColor& color, bool closeTop, float oblique);
boost::intrusive_ptr<IMesh> createConeMesh(std::uint32_t id, video::IVideoDriver* driver, float radius, float length,
                                           std::uint32_t tesselation, const video::SColor& colorTop, const video::SColor& colorBottom,
                                           float oblique);
boost::intrusive_ptr<IMesh> createArrowMesh(std::uint32_t id, video::IVideoDriver* driver, std::uint32_t tesselationCylinder,
                                            std::uint32_t tesselationCone, float height, float cylinderHeight, float width0, float width1,
                                            video::SColor colorCylinder, video::SColor colorCone);

}  // namespace glitch::scene
