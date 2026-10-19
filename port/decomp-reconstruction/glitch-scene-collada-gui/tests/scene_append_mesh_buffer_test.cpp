// Tests for the canonical glitch::scene::CMeshBuffer (refined layout) and CAppendMeshBuffer / SBatchConfig
// (scene/CAppendMeshBuffer.hpp, src/scene/CAppendMeshBuffer.cpp). The constructor that creates its buffers through a driver is
// not exercised (IVideoDriver has dozens of pure slots); the tests build the buffer with the default constructor and attach
// buffers made from a minimal IBuffer.
#include <cstdio>
#include <cstring>

#include "glitch-scene-collada-gui/scene/CAppendMeshBuffer.hpp"

using namespace glitch::scene;
using glitch::video::CMaterial;
using glitch::video::CPrimitiveStream;
using glitch::video::CVertexStreams;
using glitch::video::IBuffer;

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL: %s\n", what);
        ++failures;
    }
}

// IBuffer is abstract: the six driver slots are no-ops and the data is the caller's array.
class FakeBuffer : public IBuffer {
public:
    FakeBuffer(std::int32_t type, std::int32_t usage, std::uint32_t size, void* data) : IBuffer(type, usage, size, data, 0) {}
    void bindImpl(bool) override {}
    void unbindImpl() override {}
    std::uint8_t* mapImpl(std::uint32_t) const override { return nullptr; }
    void unmapImpl() const override {}
    std::uint8_t* getMappedPtr() const override { return m_data; }
    boost::intrusive_ptr<IBuffer> cloneImpl() const override { return {}; }
};

boost::intrusive_ptr<IBuffer> makeBuffer(std::int32_t type, std::uint32_t size, void* data) {
    return boost::intrusive_ptr<IBuffer>(new FakeBuffer(type, 0, size, data), true);
}

void testMeshBuffer() {
    CPrimitiveStream stream;
    stream.m_count = 12;
    stream.m_vertexEnd = 8;
    stream.m_indexType = 1;
    stream.m_primitiveType = 6;
    std::uint8_t indexData[16] = {};
    stream.m_indexBuffer = makeBuffer(1, 16, indexData);

    CMeshBuffer* buffer = new CMeshBuffer(0x7u, stream, true);
    check(buffer->referenceCounter == 0, "the constructor leaves the count at 0 (0x6b88a8)");
    check(buffer->vertexStreams && buffer->vertexStreams->m_streams.size() == 3, "the vertex stream table is allocated for the mask");
    check(buffer->primitiveStream.m_count == 12 && buffer->primitiveStream.m_vertexEnd == 8 &&
              buffer->primitiveStream.m_indexType == 1 && buffer->primitiveStream.m_primitiveType == 6,
          "the primitive stream is copied by value");
    check(buffer->primitiveStream.m_indexBuffer.get() == stream.m_indexBuffer.get() && stream.m_indexBuffer->referenceCounter == 2,
          "the copy takes a use of the index buffer");
    check(buffer->flag_34 == 1 && buffer->owner == nullptr, "flag byte 1 and no owner");

    boost::intrusive_ptr<CMeshBuffer> copy = buffer->clone();
    check(copy && copy->referenceCounter == 1, "clone returns the copy with its first use");
    check(copy->vertexStreams && copy->vertexStreams.get() != buffer->vertexStreams.get() &&
              copy->vertexStreams->m_streams.size() == 3,
          "clone clones the stream table");
    check(copy->primitiveStream.m_count == 12 && copy->primitiveStream.m_indexBuffer.get() == stream.m_indexBuffer.get(),
          "clone copies the primitive stream");
    check(copy->owner == nullptr && !copy->indexData16, "clone shares neither the owner nor the blocks");
    copy.reset();
    boost::intrusive_ptr<CMeshBuffer> holder(buffer, true);
    holder.reset();  // destroys the buffer: its use of the index buffer goes
    check(stream.m_indexBuffer->referenceCounter == 1, "the destructor releases the index buffer");
}

void testCapacityAndCounters() {
    CAppendMeshBuffer buffer;
    check(buffer.vertexStride == 1 && buffer.indexStride == 2 && buffer.referenceCounter == 0, "default strides 1 and 2");
    buffer.vertexCapacityBytes = 100;
    buffer.vertexUsedBytes = 20;
    buffer.vertexStride = 10;
    buffer.indexCapacityBytes = 60;
    buffer.indexUsedBytes = 0;
    buffer.indexStride = 2;
    check(buffer.hasEnoughSpace(8, 30), "fits exactly");
    check(!buffer.hasEnoughSpace(9, 1), "vertices overflow");
    check(!buffer.hasEnoughSpace(1, 31), "indices overflow");
    buffer.vertexUsedBytes = 0;
    buffer.vertexCapacityBytes = 0x20000 * 10;
    check(buffer.hasEnoughSpace(0xffff, 1) && !buffer.hasEnoughSpace(0x10000, 1), "vertex numbers stay below 0x10000");
    buffer.vertexUsedBytes = 20;
    buffer.vertexCapacityBytes = 100;

    buffer.vertexStreams = CVertexStreams::allocate(0x7u);
    buffer.indexUsedBytes = 24;
    buffer.setup();
    check(buffer.primitiveStream.m_count == 12 && buffer.primitiveStream.m_vertexEnd == 2 &&
              buffer.primitiveStream.m_vertexStart == 0 && buffer.primitiveStream.m_indexType == 1,
          "setup publishes the counts (0x5a8a88)");
    check(buffer.vertexStreams->m_field08 == 2, "setup writes the vertex count to the stream table");

    buffer.clear();
    check(buffer.vertexUsedBytes == 0 && buffer.indexUsedBytes == 0, "clear (0x6b8878)");
}

void testMapping() {
    std::uint8_t vertexData[32];
    std::uint8_t indexData[16];
    for (int i = 0; i < 32; ++i) vertexData[i] = static_cast<std::uint8_t>(i);
    for (int i = 0; i < 16; ++i) indexData[i] = static_cast<std::uint8_t>(100 + i);
    CAppendMeshBuffer buffer;
    buffer.vertexBuffer = makeBuffer(0, 32, vertexData);
    buffer.indexBuffer = makeBuffer(1, 16, indexData);
    buffer.vertexUsedBytes = 8;
    buffer.indexUsedBytes = 4;

    buffer.beginAppend();
    check(buffer.mappedVertices == vertexData && buffer.mappedIndices == indexData, "beginAppend maps both buffers");
    check((buffer.vertexBuffer->m_mapCount13 & 0x1f) == 1, "one map reference on the vertex buffer");
    buffer.beginAppend();
    check((buffer.vertexBuffer->m_mapCount13 & 0x1f) == 1, "a second beginAppend maps nothing more");
    buffer.endAppend();
    check(buffer.mappedVertices == nullptr && buffer.mappedIndices == nullptr && buffer.vertexBuffer->m_mapCount13 == 0 &&
              buffer.indexBuffer->m_mapCount13 == 0,
          "endAppend releases the mappings");
    buffer.endAppend();  // nothing mapped: no effect

    std::uint8_t out[8] = {};
    buffer.copyVertexData(out);
    check(std::memcmp(out, vertexData, 8) == 0 && buffer.vertexBuffer->m_mapCount13 == 0, "copyVertexData copies the used bytes and unmaps");
    buffer.copyIndexData(out);
    check(std::memcmp(out, indexData, 4) == 0 && buffer.indexBuffer->m_mapCount13 == 0, "copyIndexData copies the used bytes and unmaps");

    // The destructor ends an open append.
    {
        auto* open = new CAppendMeshBuffer();
        open->vertexBuffer = makeBuffer(0, 32, vertexData);
        open->indexBuffer = makeBuffer(1, 16, indexData);
        open->beginAppend();
        boost::intrusive_ptr<IBuffer> keep = open->vertexBuffer;
        check((keep->m_mapCount13 & 0x1f) == 1, "the append is open");
        delete open;
        check(keep->m_mapCount13 == 0, "the destructor ends the append");
    }
}

void testStreams() {
    std::uint8_t vertexData[32] = {};
    CAppendMeshBuffer buffer;
    buffer.vertexBuffer = makeBuffer(0, 32, vertexData);
    buffer.indexBuffer = makeBuffer(1, 16, vertexData);
    buffer.vertexStreams = CVertexStreams::allocate(0x7u);
    buffer.vertexUsedBytes = 96;

    buffer.configureStream(1, 12, 5, 3);
    const auto& stream = buffer.vertexStreams->m_streams[1];
    check(stream.buffer.get() == buffer.vertexBuffer.get() && stream.offset == 12 && stream.field0a == 5 && stream.field0c == 3 &&
              stream.field0e == 0,
          "configureStream fills the entry (0x6b8950)");
    buffer.configureStream(2, 0, 4, 2);
    check(buffer.streamIndices.size() == 2 && buffer.streamIndices[0] == 1 && buffer.streamIndices[1] == 2, "the stream indices are recorded");

    buffer.adjustStride(32);
    check(buffer.vertexStreams->m_streams[1].field0e == 32 && buffer.vertexStreams->m_streams[2].field0e == 32 &&
              buffer.vertexStreams->m_streams[0].field0e == 0 && buffer.vertexStride == 32,
          "adjustStride sets the configured streams and the vertex stride (0x6b8834)");

    boost::intrusive_ptr<IBuffer> other = makeBuffer(0, 64, vertexData);
    boost::intrusive_ptr<CVertexStreams> table = buffer.allocateConfiguredVertexStreams(other);
    check(table && table->m_streams.size() == 3, "the configured table covers the mask of the stream indices");
    int bound = 0;
    for (const auto& entry : table->m_streams) {
        if (entry.buffer.get() == other.get()) ++bound;
    }
    check(bound == 2, "the two configured entries read from the new buffer");
    check(table->m_field08 == 3, "the count word is the vertex count (96 / 32)");

    buffer.resize(64, 40);
    check(buffer.vertexBuffer->m_size == 64 && buffer.indexBuffer->m_size == 40, "resize resets both capacities (0x6b8b74)");

    buffer.vertexUsedBytes = 5;
    buffer.indexUsedBytes = 6;
    buffer.reset();
    check(buffer.vertexUsedBytes == 0 && buffer.indexUsedBytes == 0 && buffer.streamIndices.empty(), "reset clears the counters and the indices");
    check(!buffer.vertexStreams->m_streams[0].buffer && !buffer.vertexStreams->m_streams[1].buffer,
          "reset drops the buffers of the first n entries (n = number of configured streams)");
}

void testBatchConfig() {
    boost::intrusive_ptr<CMaterial> material(new CMaterial(), true);
    boost::intrusive_ptr<CMeshBuffer> mesh(new CMeshBuffer(), true);
    SBatchConfig from;
    from.material = material;
    from.meshBuffer = mesh;
    for (int i = 0; i < 9; ++i) from.renderState[i] = 10 + i;
    check(material->m_refCount == 2 && mesh->referenceCounter == 2, "the source holds a use of each");

    SBatchConfig to;
    to.renderState[8] = 99;
    to = from;
    check(to.material.get() == material.get() && material->m_refCount == 3, "operator= takes a use of the new material");
    check(to.meshBuffer.get() == mesh.get() && mesh->referenceCounter == 3, "operator= takes a use of the new mesh buffer");
    check(to.renderState[0] == 10 && to.renderState[7] == 17, "the first eight render-state words are copied");
    check(to.renderState[8] == 99, "the ninth word is not copied (0x58f2a8)");

    to = SBatchConfig();
    check(!to.material && material->m_refCount == 2 && mesh->referenceCounter == 2, "assigning an empty config releases the uses");

    // The callback owns its configurations.
    {
        SDefaultEndOfBatchCallback callback;
        callback.configs[3] = from;
        check(material->m_refCount == 3, "the map holds a use");
    }
    check(material->m_refCount == 2, "the destructor releases the configurations (0x58fa04)");
}

}  // namespace

int main() {
    testMeshBuffer();
    testCapacityAndCounters();
    testMapping();
    testStreams();
    testBatchConfig();
    std::printf("%s\n", failures ? "scene_append_mesh_buffer: FAILED" : "scene_append_mesh_buffer: ok");
    return failures != 0;
}
