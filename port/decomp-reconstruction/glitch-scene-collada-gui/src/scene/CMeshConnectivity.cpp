// Bodies of glitch::scene::CMeshConnectivity (canonical class: scene/CMeshConnectivity.hpp). This file replaces the stand-in bodies in
// src/recon/slice_29.cpp and src/recon/slice_30.cpp.
#include "glitch-scene-collada-gui/scene/CMeshConnectivity.hpp"

#include <algorithm>

#include "glitch-core-io/os/logging.hpp"

namespace glitch::scene {

namespace {

constexpr std::uint32_t kFileEndMarker = 0xC0FFE808u;

// The welding table of creatEdgeList: the first index seen at a position (16 bytes in the original).
struct SWeldEntry {
    std::uint16_t index;
    float x;
    float y;
    float z;
};

}  // namespace

// 0x7034d4 _ZN6glitch5scene17CMeshConnectivity5SEdge7addFaceEj
void CMeshConnectivity::SEdge::addFace(std::uint32_t face) {
    if (faceCount == 2) {
        os::Printer::log("Edge Warning : An edge have more than 2 faces, it might gives unexpected results.", ELL_ERROR);
        return;
    }
    faces[faceCount] = face;
    ++faceCount;
}

// 0x70320c _ZN6glitch5scene17CMeshConnectivityC1ERKN5boost13intrusive_ptrIKNS0_11CMeshBufferEEE
// 0x7031d8 _ZN6glitch5scene17CMeshConnectivityC2ERKN5boost13intrusive_ptrIKNS0_11CMeshBufferEEE
CMeshConnectivity::CMeshConnectivity(const boost::intrusive_ptr<const CMeshBuffer>& meshBuffer) : buffer(meshBuffer) {}

// 0x70355c _ZN6glitch5scene17CMeshConnectivityD1Ev
// 0x70359c _ZN6glitch5scene17CMeshConnectivityD2Ev
CMeshConnectivity::~CMeshConnectivity() {
    delete[] triangles;
}

// 0x7037d4 _ZN6glitch5scene17CMeshConnectivity15addEdgeWithFaceERNS1_5SEdgeEj
void CMeshConnectivity::addEdgeWithFace(SEdge& edge, std::uint32_t face) {
    const auto found = std::find(edges.begin(), edges.end(), edge);
    if (found == edges.end()) {
        edge.addFace(face);
        edges.push_back(edge);
    } else {
        found->addFace(face);
    }
}

// 0x703acc _ZN6glitch5scene17CMeshConnectivity12creatEdgeListEb
void CMeshConnectivity::creatEdgeList(bool weld) {
    const CMeshBuffer& meshBuffer = *buffer;
    const video::CPrimitiveStream& primitives = meshBuffer.primitiveStream;
    const video::IBuffer& indexBuffer = *primitives.m_indexBuffer;
    const std::uint8_t* indexBase = indexBuffer.map(static_cast<video::E_BUFFER_READ_MAP_ACCESS>(1));
    const auto* indices = reinterpret_cast<const std::uint16_t*>(indexBase + primitives.m_offset);
    boost::intrusive_ptr<const video::CVertexStreams> streams = meshBuffer.vertexStreams;
    const video::SVertexStream& positionStream = streams->m_streams[0];
    const video::IBuffer& positionBuffer = *positionStream.buffer;
    const std::uint8_t* positionBase = positionBuffer.map(static_cast<video::E_BUFFER_READ_MAP_ACCESS>(1));
    const std::uint8_t* positions = positionBase + positionStream.offset;
    const std::uint32_t indexCount = primitives.m_count;
    std::uint16_t* welded = new std::uint16_t[indexCount];
    const std::uint32_t faceCount = indexCount / 3;
    delete[] triangles;
    triangles = new std::uint16_t[3u * faceCount];
    std::fill(triangles, triangles + 3u * faceCount, static_cast<std::uint16_t>(0xFFFF));
    if (!weld) {
        for (std::uint32_t i = 0; i < indexCount; ++i) {
            welded[i] = indices[i];
        }
    } else {
        std::vector<SWeldEntry> unique;
        for (std::uint32_t i = 0; i < indexCount; ++i) {
            std::uint16_t index = indices[i];
            const float* position = reinterpret_cast<const float*>(positions + static_cast<std::size_t>(positionStream.field0e) * index);
            const float x = position[0];
            const float y = position[1];
            const float z = position[2];
            auto match = std::find_if(unique.begin(), unique.end(),
                                      [&](const SWeldEntry& entry) { return entry.x == x && entry.y == y && entry.z == z; });
            if (match != unique.end()) {
                index = match->index;
            } else {
                unique.push_back(SWeldEntry{index, x, y, z});
            }
            welded[i] = index;
        }
    }
    triangleCount = faceCount;
    for (std::uint32_t face = 0; face < faceCount; ++face) {
        const std::uint16_t a = welded[3 * face];
        const std::uint16_t b = welded[3 * face + 1];
        const std::uint16_t c = welded[3 * face + 2];
        triangles[3 * face] = a;
        triangles[3 * face + 1] = b;
        triangles[3 * face + 2] = c;
        SEdge first;
        first.vertexA = std::min(a, b);
        first.vertexB = std::max(a, b);
        addEdgeWithFace(first, face);
        SEdge second;
        second.vertexA = std::min(b, c);
        second.vertexB = std::max(b, c);
        addEdgeWithFace(second, face);
        SEdge third;
        third.vertexA = std::min(a, c);
        third.vertexB = std::max(a, c);
        addEdgeWithFace(third, face);
    }
    delete[] welded;
    if (positionBase != nullptr) {
        positionBuffer.unmap();
    }
    if (indexBase != nullptr) {
        indexBuffer.unmap();
    }
}

// 0x70336c _ZN6glitch5scene17CMeshConnectivity4saveEPNS_2io10IWriteFileE
int CMeshConnectivity::save(io::IWriteFile* file) {
    std::uint32_t word = buffer->vertexStreams->m_field08;
    int written = static_cast<int>(file->write(&word, 4));
    word = buffer->primitiveStream.m_count;
    written += static_cast<int>(file->write(&word, 4));
    word = static_cast<std::uint32_t>(edges.size());
    written += static_cast<int>(file->write(&word, 4));
    for (const SEdge& edge : edges) {
        written += static_cast<int>(file->write(&edge, 16));
    }
    written += static_cast<int>(file->write(&triangleCount, 4));
    written += static_cast<int>(file->write(triangles, 6u * triangleCount));
    word = kFileEndMarker;
    written += static_cast<int>(file->write(&word, 4));
    return written;
}

// 0x703864 _ZN6glitch5scene17CMeshConnectivity4loadEPNS_2io9IReadFileE
int CMeshConnectivity::load(io::IReadFile* file) {
    std::uint32_t header[2] = {0, 0};
    int read = file->read(header, 8);
    if (header[0] != buffer->vertexStreams->m_field08 || header[1] != buffer->primitiveStream.m_count) {
        os::Printer::log("Mesh Connectivity load : The vertex or index count in the file does not match the current mesh", ELL_ERROR);
    }
    std::uint32_t edgeCount = 0;
    read += file->read(&edgeCount, 4);
    edges.clear();
    edges.reserve(edgeCount);
    for (std::uint32_t i = 0; i < edgeCount; ++i) {
        SEdge edge;
        read += file->read(&edge, 16);
        edges.push_back(edge);
    }
    read += file->read(&triangleCount, 4);
    delete[] triangles;
    triangles = new std::uint16_t[3u * triangleCount];
    std::fill(triangles, triangles + 3u * triangleCount, static_cast<std::uint16_t>(0xFFFF));
    read += file->read(triangles, 6u * triangleCount);
    std::uint32_t marker = 0;
    read += file->read(&marker, 4);
    if (marker != kFileEndMarker) {
        os::Printer::log("Mesh Connectivity load : error loading the file...", ELL_ERROR);
    }
    return read;
}

}  // namespace glitch::scene
