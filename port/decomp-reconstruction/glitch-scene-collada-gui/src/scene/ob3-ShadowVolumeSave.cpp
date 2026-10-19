// glitch::scene::CShadowVolumeSceneNode::save, both overloads (the development-time export of the shadow volumes to an STSV file). Owner B3.
//
// File layout written by the second overload (every multi-byte value is written in the byte order asked for; the swapped order writes the bytes of
// each value reversed): "STSV", the byte-order mark 0x1234 (16 bits), the z-fail flag byte, the bounding box (six floats), the number of welded vertices
// (32 bits), the vertices (three floats each), the number of indices (32 bits), the indices (16 bits each), then a zero 16-bit word and the vertex
// count as a 16-bit word. The vertices of every volume are transformed by the absolute matrix of the node's parent (the matrix argument when the node
// has none) and welded across the volumes: a vertex that was written already is referred to by its index.
#include <cstdint>
#include <cstring>
#include <vector>

#include "glitch-core-io/io/write_file.hpp"
#include "glitch-core-io/os/endian.hpp"
#include "glitch-scene-collada-gui/scene/CShadowVolumeSceneNode.hpp"

namespace glitch::scene {

namespace {

std::uint32_t swapped(std::uint32_t value) {
    return (value >> 24) | ((value >> 8) & 0xFF00u) | ((value << 8) & 0xFF0000u) | (value << 24);
}

std::uint16_t swapped(std::uint16_t value) { return static_cast<std::uint16_t>((value >> 8) | (value << 8)); }

float swappedFloat(float value) {
    std::uint32_t bits;
    std::memcpy(&bits, &value, sizeof bits);
    bits = swapped(bits);
    std::memcpy(&value, &bits, sizeof bits);
    return value;
}

}  // namespace

// 0x6ffa1c _ZN6glitch5scene22CShadowVolumeSceneNode4saveEPcbRKNS_4core8CMatrix4IfEE
// The file is created (not appended to), the volumes are written through the other overload in the host byte order (the original calls it through
// the vtable, slot +0x104) and the file is dropped. A file that cannot be created gives 0 (the original drops the null file).
int CShadowVolumeSceneNode::save(char* fileName, bool flag, const core::CMatrix4<float>& transform) {
    io::IWriteFile* file = io::createWriteFile(fileName, false);
    if (file == nullptr) {
        return 0;
    }
    const int result = save(file, flag, transform, os::EE_LITTLE);
    file->drop();
    return result;
}

// 0x6ffee4 _ZN6glitch5scene22CShadowVolumeSceneNode4saveEPNS_2io10IWriteFileEbRKNS_4core8CMatrix4IfEENS_2os8E_ENDIANE
// Nothing is written when `flag` is clear. Otherwise the volumes are brought up to date (updateShadowVolumes, vtable slot +0xf8) and the file is written
// as described at the top; the answer is the number of bytes written.
int CShadowVolumeSceneNode::save(io::IWriteFile* file, bool flag, const core::CMatrix4<float>& transform, os::E_ENDIAN endian) {
    if (!flag) {
        return 0;
    }
    updateShadowVolumes();
    const bool swap = endian == os::EE_BIG;
    const auto put32 = [&](std::uint32_t value) {
        const std::uint32_t word = swap ? swapped(value) : value;
        return static_cast<int>(file->write(&word, 4));
    };
    const auto put16 = [&](std::uint16_t value) {
        const std::uint16_t word = swap ? swapped(value) : value;
        return static_cast<int>(file->write(&word, 2));
    };
    int written = static_cast<int>(file->write("STSV", 4));
    // The byte-order mark: 0x1234 in the order of the file (the swapped order stores it as 0x3412).
    const std::uint16_t mark = swap ? 0x3412 : 0x1234;
    written += static_cast<int>(file->write(&mark, 2));
    const std::uint8_t zFailByte = zFail ? 1 : 0;  // +0x186
    written += static_cast<int>(file->write(&zFailByte, 1));
    // The bounding box (+0x168): six floats.
    const float box[6] = {boundingBox.MinEdge.X, boundingBox.MinEdge.Y, boundingBox.MinEdge.Z,
                          boundingBox.MaxEdge.X, boundingBox.MaxEdge.Y, boundingBox.MaxEdge.Z};
    for (const float value : box) {
        const float out = swap ? swappedFloat(value) : value;
        written += static_cast<int>(file->write(&out, 4));
    }
    // The sizes of the welded arrays at most: the sum of the volumes' counts.
    std::uint32_t indexTotal = 0;
    std::uint32_t vertexTotal = 0;
    for (std::uint32_t i = 0; i < usedVolumes; ++i) {
        indexTotal += shadowVolumes[i].indexCount;    // +0x18
        vertexTotal += shadowVolumes[i].vertexCount;  // +0x1c
    }
    std::vector<std::uint16_t> weld(vertexTotal, 0xFFFF);  // per vertex of the volumes, the index it was written under (0xffff: not yet)
    std::vector<std::uint16_t> indices(indexTotal);
    std::vector<float> vertices;  // three floats per welded vertex
    const core::CMatrix4<float>& matrix = parent != nullptr ? parent->getAbsoluteTransformation() : transform;
    std::uint32_t vertexBase = 0;   // the first vertex of the volume in the weld table
    std::uint16_t indexCursor = 0;  // the next index to write
    std::uint32_t written16 = 0;    // the number of welded vertices
    for (std::uint32_t v = 0; v < usedVolumes; ++v) {
        const SShadowVolume& volume = shadowVolumes[v];
        if (volume.indexCount != 0) {
            std::uint16_t cursor = indexCursor;
            for (std::uint32_t k = 0; k < volume.indexCount; ++k) {
                const std::uint16_t vertexIndex = static_cast<std::uint16_t>(vertexBase + volume.indices[k]);
                const std::uint16_t known = weld[vertexIndex];
                if (known != 0xFFFF) {
                    indices[cursor] = known;
                } else {
                    const float* source = volume.vertices + 3u * (vertexIndex - vertexBase);
                    const float x = source[0], y = source[1], z = source[2];
                    // The vertex in the space of the parent: row-vector transform by the matrix.
                    float out[3] = {(x * matrix.M[0] + y * matrix.M[4] + z * matrix.M[8]) + matrix.M[12],
                                    (x * matrix.M[1] + y * matrix.M[5] + z * matrix.M[9]) + matrix.M[13],
                                    (x * matrix.M[2] + y * matrix.M[6] + z * matrix.M[10]) + matrix.M[14]};
                    if (swap) {
                        out[0] = swappedFloat(out[0]);
                        out[1] = swappedFloat(out[1]);
                        out[2] = swappedFloat(out[2]);
                    }
                    vertices.insert(vertices.end(), out, out + 3);
                    const std::uint16_t number = static_cast<std::uint16_t>(written16);
                    const std::uint16_t stored = swap ? swapped(number) : number;
                    weld[vertexIndex] = stored;
                    indices[cursor] = stored;
                    ++written16;
                }
                cursor = static_cast<std::uint16_t>(cursor + 1);
            }
            indexCursor = static_cast<std::uint16_t>(indexCursor + volume.indexCount);
        }
        vertexBase += volume.vertexCount;
    }
    written += put32(written16);
    written += static_cast<int>(file->write(vertices.data(), 12u * written16));
    written += put32(indexTotal);
    written += static_cast<int>(file->write(indices.data(), 2u * indexTotal));
    // The trailer: a zero 16-bit word and the number of welded vertices as a 16-bit word.
    written += put16(0);
    written += put16(static_cast<std::uint16_t>(written16));
    return written;
}

}  // namespace glitch::scene
