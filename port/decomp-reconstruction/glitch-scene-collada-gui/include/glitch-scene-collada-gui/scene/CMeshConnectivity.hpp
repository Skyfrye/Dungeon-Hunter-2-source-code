// glitch::scene::CMeshConnectivity: the edge and triangle adjacency table of an indexed triangle mesh buffer, the base of the shadow
// volume silhouette (CShadowVolumeSceneNode::SSilhouette). Canonical header of the scene owner pass (R3b). It replaces the stand-in
// recon_29::CMeshConnectivity of recon/slice_29.hpp and the free functions of recon/slice_30.
//
// Layout (original 32-bit offsets; 0x18 bytes; no virtual functions; constructors 0x7031d8 C2 / 0x70320c C1, destructors 0x70355c D1 /
// 0x70359c D2):
//   +0x00 the mesh buffer handle (a use is held)
//   +0x04 edges: a glitch std::vector of SEdge (begin, end and capacity words at +0x04, +0x08, +0x0c)
//   +0x10 the triangle table: three uint16 per triangle (the indices, welded when asked), an array allocated with operator new[]
//   +0x14 the number of triangles
// An SEdge is 16 bytes: the lower vertex index (+0x00, uint16) and the higher one (+0x02), the two faces that share the edge (+0x04 and
// +0x08, triangle numbers) and the number of faces found (+0x0c, uint16; a third face logs a warning and is dropped).
//
// The binary file format of save / load: the mesh's vertex count (the vertex stream table's word at +0x08), the buffer's index count,
// the edge count, the edges (16 bytes each), the triangle count, the triangle table (6 bytes each) and the end marker 0xc0fba9f8.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"

namespace glitch::scene {

class CMeshConnectivity {
public:
    struct SEdge {
        std::uint16_t vertexA = 0;      // +0x00 (the lower index)
        std::uint16_t vertexB = 0;      // +0x02 (the higher index)
        std::uint32_t faces[2] = {0, 0};  // +0x04, +0x08
        std::uint16_t faceCount = 0;    // +0x0c
        // 0x7034d4: stores the face; a third face logs "Edge Warning : An edge have more than 2 faces, it might gives unexpected
        // results." (level 3) and is not stored.
        void addFace(std::uint32_t face);
        // The comparison the original's std::find uses (inlined there): the two vertex indices.
        bool operator==(const SEdge& other) const { return vertexA == other.vertexA && vertexB == other.vertexB; }
    };

    // 0x7031d8 (C2) and 0x70320c (C1): a use of the buffer; no edges, no triangles.
    explicit CMeshConnectivity(const boost::intrusive_ptr<const CMeshBuffer>& meshBuffer);
    // 0x70355c (D1) and 0x70359c (D2): frees the triangle table and the edge list and drops the buffer.
    ~CMeshConnectivity();
    CMeshConnectivity(const CMeshConnectivity&) = delete;
    CMeshConnectivity& operator=(const CMeshConnectivity&) = delete;

    // 0x703acc: builds the table from the buffer's 16-bit index buffer and the first vertex stream (positions): with `weld` the indices
    // of vertices at the same position are made equal first. Fills the triangle table and, for every triangle, the three edges
    // (smaller index first) with addEdgeWithFace.
    void creatEdgeList(bool weld);
    // 0x7037d4: adds the face to the equal edge of the list, or appends the edge after giving it the face.
    void addEdgeWithFace(SEdge& edge, std::uint32_t face);
    // 0x70336c: writes the file described above; returns the number of bytes written.
    int save(io::IWriteFile* file);
    // 0x703864: reads it back (logging "Mesh Connectivity load : The vertex or index count in the file does not match the current mesh"
    // and "Mesh Connectivity load : error loading the file..." on a mismatch); returns the number of bytes read.
    int load(io::IReadFile* file);

    boost::intrusive_ptr<const CMeshBuffer> buffer;   // +0x00
    std::vector<SEdge> edges;                          // +0x04
    std::uint16_t* triangles = nullptr;                // +0x10
    std::uint32_t triangleCount = 0;                   // +0x14
};

}  // namespace glitch::scene
