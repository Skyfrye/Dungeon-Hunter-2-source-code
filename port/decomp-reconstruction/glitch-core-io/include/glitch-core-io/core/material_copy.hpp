// glitch::core free functions over material parameters, primitive streams and mesh buffers (the vertex-copy helpers of the Collada
// batching): copyParameter / copyMaterialParameters / compareParameter (0x6a18b4, 0x6a1d9c, 0x6a38e4), overridePrimitiveStream
// (0x6a1eb4), createQuantizedBuffer (0x6a2cdc) and overrideVertexStreams<true,false,true> (0x60a384). Bodies in
// src/material_copy.cpp, src/primitive_override.cpp and src/vertex_override.cpp.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::video {
class CMaterial;
class CVertexStreams;
class CPrimitiveStream;
class IVideoDriver;
class IBuffer;
}  // namespace glitch::video
namespace glitch::scene {
class CMeshBuffer;
}  // namespace glitch::scene

namespace glitch::core {

// 0x6a18b4: copies the parameter `sourceId` of the source material into the parameter `destinationId` of the destination, element by
// element (the smaller element count of the two), whatever its value type: the typed getParameter / setParameter pair of the source's
// value type. Always true.
bool copyParameter(const boost::intrusive_ptr<glitch::video::CMaterial>& destination, unsigned short destinationId,
                   const boost::intrusive_ptr<const glitch::video::CMaterial>& source, unsigned short sourceId);

// 0x6a1d9c: copies, for the two stages of the destination's first pass shader, every parameter pair (the same position in the pass id
// lists of the two materials' first passes) whose entries both exist in their renderers.
void copyMaterialParameters(const boost::intrusive_ptr<glitch::video::CMaterial>& destination,
                            const boost::intrusive_ptr<const glitch::video::CMaterial>& source);

// 0x6a38e4: true when the two parameters have the same element count and value type and equal values (colorf with a 1e-6 tolerance,
// matrices equal when both are flagged identities, textures and lights by identity). Two value types are compared through the wrong
// getter in the original (type 4 as one int, type 5 as a vector4d<int>); that is kept.
bool compareParameter(const boost::intrusive_ptr<const glitch::video::CMaterial>& first, unsigned short firstId,
                      const boost::intrusive_ptr<const glitch::video::CMaterial>& second, unsigned short secondId);

// 0x6a1eb4: writes the triangles of `source` (a list, strip or fan, indexed or not) into the 16-bit index buffer of `destination` from
// triangle `destinationStart`, every index raised by `vertexOffset`; `first` .. `last` is the range of triangles of an indexed source.
int overridePrimitiveStream(const glitch::video::CPrimitiveStream& source, unsigned first, unsigned last,
                            glitch::video::CPrimitiveStream& destination, unsigned destinationStart, int vertexOffset);

// 0x6a2cdc: a copy of a mesh buffer with its streams stored in smaller types (texture coordinates, and optionally normals and
// positions, as shorts or bytes), the scale and offset of the quantized streams kept in the new stream table.
boost::intrusive_ptr<glitch::scene::CMeshBuffer> createQuantizedBuffer(
    const boost::intrusive_ptr<const glitch::scene::CMeshBuffer>& mesh, bool normalsAsShorts, bool positionsAsShorts,
    glitch::video::IVideoDriver* driver);

// 0x60a384: copies the vertices first .. last of the source stream table into the destination table (from vertex `destinationFirst`)
// for every attribute the material's first-pass shader of `technique` uses and the masks allow: `sourceMap` / `destinationMap` give the
// stream index of each attribute in the two tables (255 = none). Positions are transformed by the driver's world matrix, texture
// coordinates, normals and tangents are converted (copyComponentSF / copyComponentBSF), colors copied; an attribute the source lacks is
// filled with a default (normals (0, 1, 0), the diffuse color of the material for color 0, zero texture coordinates). The three bool
// arguments are compile-time switches whose roles are not recovered; the one instance the binary has is <true, false, true>.
template <bool kA, bool kB, bool kC>
void overrideVertexStreams(const unsigned char* sourceMap, const boost::intrusive_ptr<const glitch::video::CVertexStreams>& source,
                           unsigned short first, unsigned short last, const unsigned char* destinationMap,
                           const boost::intrusive_ptr<glitch::video::CVertexStreams>& destination,
                           const glitch::video::CMaterial* material, unsigned char technique,
                           const glitch::video::IVideoDriver* driver, unsigned short destinationFirst, unsigned mask);
template <>
void overrideVertexStreams<true, false, true>(const unsigned char* sourceMap,
                                              const boost::intrusive_ptr<const glitch::video::CVertexStreams>& source,
                                              unsigned short first, unsigned short last, const unsigned char* destinationMap,
                                              const boost::intrusive_ptr<glitch::video::CVertexStreams>& destination,
                                              const glitch::video::CMaterial* material, unsigned char technique,
                                              const glitch::video::IVideoDriver* driver, unsigned short destinationFirst,
                                              unsigned mask);

}  // namespace glitch::core
