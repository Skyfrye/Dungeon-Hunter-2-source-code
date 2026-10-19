// The mesh records of a loaded file (collada/SMesh.hpp) and what builds on them: res::getOnDemand with COnDemandReader over a memory file,
// scene::CMeshBuffer(driver, SMesh, index, ...) for a mesh with one buffer per stream and for an interleaved one (with a quantisation range), and
// collada::CMesh(db, driver, geometry, ...) with shared mesh buffers. Exit status is non-zero when a check fails.
#include <cmath>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/COnDemandReader.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/collada/SMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/vertex_streams.hpp"

using namespace glitch;
namespace video = glitch::video;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

class TestDriver : public video::CNullDriver {
public:
    TestDriver() : CNullDriver(static_cast<glitch::IDevice*>(nullptr)) {}
};

constexpr std::int32_t kFloat = 6;  // the value type of a float in ValueTypeSize

void testOnDemand() {
    std::vector<std::uint8_t> bytes(64);
    for (std::size_t i = 0; i < bytes.size(); ++i) {
        bytes[i] = static_cast<std::uint8_t>(i);
    }
    io::CMemoryReadFile file(bytes.data(), static_cast<long>(bytes.size()), "memory", false);
    collada::COnDemandReader reader(&file);
    res::SOnDemandBlock block;
    block.offset = 8;
    block.size = 16;
    {
        res::onDemandPointer<std::uint8_t> loaded = res::getOnDemand<std::uint8_t>(&block, reader);
        CHECK(block.count == 1 && loaded.data() != nullptr);
        CHECK(loaded.data()[0] == 8 && loaded.data()[15] == 23);
        res::onDemandPointer<std::uint8_t> second = res::getOnDemand<std::uint8_t>(&block, reader);
        CHECK(block.count == 2 && second.data() == loaded.data());  // already loaded: not read again
    }
    CHECK(block.count == 0 && block.data == nullptr);  // the last use frees the data
    CHECK(res::getOnDemand<std::uint8_t>(nullptr, reader).get() == nullptr);
}

// One buffer per stream: a triangle of three positions with 16-bit indices.
void testSeparateStreams(TestDriver& driver) {
    float positions[9] = {0, 0, 0, 1, 0, 0, 0, 1, 0};
    std::uint16_t indices[3] = {0, 1, 2};
    collada::SVertexStreamDesc stream;
    stream.valueType = kFloat;
    stream.componentCount = 3;
    stream.valueCount = 9;
    stream.data = positions;
    collada::SMeshBuffer record;
    record.primitiveType = 0;
    record.positionStream = 0;
    record.firstVertex = 0;
    record.lastVertex = 2;
    record.indexCount = 3;
    record.indexData = indices;
    collada::SMesh mesh;
    mesh.interleaved = 0;
    mesh.count = 1;
    mesh.streams = &stream;
    mesh.bufferCount = 1;
    mesh.buffers = &record;
    const collada::SBufferConfig config{4, 0, 0};
    boost::intrusive_ptr<scene::CMeshBuffer> buffer(new scene::CMeshBuffer(&driver, mesh, 0, config, config, false), true);
    CHECK(buffer->vertexStreams->m_attributeMask == 1u);
    CHECK(buffer->vertexStreams->m_field08 == 0u);  // a mesh with separate streams keeps no vertex count
    const video::SVertexStream& position = buffer->vertexStreams->m_streams[0];
    CHECK(position.buffer && position.buffer->m_data == reinterpret_cast<std::uint8_t*>(positions));
    CHECK(position.offset == 0 && position.field0c == 3 && position.field0e == 12);
    CHECK(buffer->primitiveStream.m_count == 3 && buffer->primitiveStream.m_vertexStart == 0 && buffer->primitiveStream.m_vertexEnd == 3);
    CHECK(buffer->primitiveStream.m_indexType == 1 && buffer->primitiveStream.m_primitiveType == 6);
    CHECK(buffer->primitiveStream.m_indexBuffer && buffer->primitiveStream.m_indexBuffer->m_data == reinterpret_cast<std::uint8_t*>(indices));
    CHECK(record.indexBuffer == buffer->primitiveStream.m_indexBuffer);  // the record keeps the buffer it made
    CHECK(mesh.streams[0].buffer == position.buffer);
}

// An interleaved mesh: position and texture coordinate in one vertex buffer, 32-bit indices past 0x10000 vertices are not exercised here.
void testInterleaved(TestDriver& driver) {
    float vertices[15] = {0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1};  // 3 vertices of 5 floats: position then uv
    std::uint16_t indices[3] = {2, 1, 0};
    const std::uint32_t offsets[2] = {0, 12};
    const std::uint32_t types[2] = {kFloat, kFloat};
    const std::uint32_t components[2] = {3, 2};
    collada::SStreamRange positionRange;
    positionRange.minimum[0] = -1.0f;
    positionRange.minimum[1] = -2.0f;
    positionRange.minimum[2] = -3.0f;
    positionRange.maximum[0] = 1.0f;
    positionRange.maximum[1] = 2.0f;
    positionRange.maximum[2] = 3.0f;
    const collada::SStreamRange* ranges[2] = {&positionRange, nullptr};
    collada::SInterleavedVertexData data;
    data.stride = 20;
    data.offsets = offsets;
    data.valueTypes = types;
    data.componentCounts = components;
    data.ranges = ranges;
    data.data = vertices;
    collada::SMeshBuffer record;
    record.primitiveType = 0;
    record.positionStream = 0;
    record.texCoordStreams[0] = 1;
    record.lastVertex = 2;
    record.indexCount = 3;
    record.indexData = indices;
    collada::SMesh mesh;
    mesh.interleaved = 1;
    mesh.count = 3;
    mesh.interleavedData = &data;
    mesh.bufferCount = 1;
    mesh.buffers = &record;
    const collada::SBufferConfig config{4, 0, 0};
    boost::intrusive_ptr<scene::CMeshBuffer> buffer(new scene::CMeshBuffer(&driver, mesh, 0, config, config, false), true);
    CHECK(buffer->vertexStreams->m_attributeMask == 3u && buffer->vertexStreams->m_field08 == 3u);
    const video::SVertexStream& position = buffer->vertexStreams->m_streams[0];
    const video::SVertexStream& texCoord = buffer->vertexStreams->m_streams[1];
    CHECK(position.buffer == texCoord.buffer && position.buffer && position.buffer->m_size == 60);  // the one vertex buffer, 3 * 20 bytes
    CHECK(position.offset == 0 && texCoord.offset == 12 && position.field0e == 20 && texCoord.field0e == 20);
    CHECK(texCoord.field0c == 2 && position.field0c == 3);
    CHECK(buffer->vertexStreams->m_quantization[0].X == -1.0f && buffer->vertexStreams->m_quantization[1].Z == 3.0f);
    CHECK((buffer->vertexStreams->m_flags & 4u) != 0 && (buffer->vertexStreams->m_flags & 8u) == 0);
}

// collada::CMesh over a geometry record: two buffers, the shared mesh buffers of a second mesh, and the box.
void testCMesh(TestDriver& driver) {
    float positions[9] = {0, 0, 0, 1, 0, 0, 0, 1, 0};
    std::uint16_t indices[3] = {0, 1, 2};
    collada::SVertexStreamDesc stream;
    stream.valueType = kFloat;
    stream.componentCount = 3;
    stream.valueCount = 9;
    stream.data = positions;
    collada::SMeshBuffer records[2];
    for (collada::SMeshBuffer& record : records) {
        record.positionStream = 0;
        record.lastVertex = 2;
        record.indexCount = 3;
        record.indexData = indices;
    }
    collada::SMesh mesh;
    mesh.count = 1;
    mesh.streams = &stream;
    mesh.bufferCount = 2;
    mesh.buffers = records;
    const float box[6] = {-1.0f, -2.0f, -3.0f, 4.0f, 5.0f, 6.0f};
    std::memcpy(mesh.boundingBox, box, sizeof box);
    collada::SGeometry geometry{"geo", 0, 0, &mesh};

    collada::SDatabaseTables tables;
    collada::SColladaFileData fileData;
    fileData.tables = &tables;
    collada::CResFile resFile;
    resFile.data = &fileData;
    collada::CColladaDatabase db;
    db.record = &resFile;
    const collada::SBufferConfig config{4, 0, 0};

    boost::intrusive_ptr<collada::CMesh> first(new collada::CMesh(db, &driver, geometry, config, config, true), true);
    CHECK(first->getMeshBufferCount() == 2 && std::strcmp(first->uid, "geo") == 0);
    CHECK(first->boundingBox.MinEdge.X == -1.0f && first->boundingBox.MinEdge.Z == -3.0f && first->boundingBox.MaxEdge.Y == 5.0f &&
          first->boundingBox.MaxEdge.Z == 6.0f);
    CHECK(records[0].meshBuffer.get() == first->getMeshBuffer(0).get());  // a shared record remembers its buffer
    boost::intrusive_ptr<collada::CMesh> second(new collada::CMesh(db, &driver, geometry, config, config, true), true);
    CHECK(second->getMeshBuffer(0).get() == first->getMeshBuffer(0).get() && second->getMeshBuffer(1).get() == first->getMeshBuffer(1).get());
    boost::intrusive_ptr<collada::CMesh> own(new collada::CMesh(db, &driver, geometry, config, config, false), true);
    CHECK(own->getMeshBuffer(0).get() != first->getMeshBuffer(0).get());
}

}  // namespace

int main() {
    TestDriver driver;
    testOnDemand();
    testSeparateStreams(driver);
    testInterleaved(driver);
    testCMesh(driver);
    if (failures == 0) {
        std::printf("collada_mesh_records_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
