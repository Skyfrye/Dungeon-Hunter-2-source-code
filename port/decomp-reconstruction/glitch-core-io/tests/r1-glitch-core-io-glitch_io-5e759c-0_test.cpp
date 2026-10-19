// Test for batch r1-glitch-core-io-glitch_io-5e759c-0: stream stride, primitive stream save and load.
// Build and run with:
//   bash tools/trackb/check_tu.sh --test <this file> <r1 src> <stream_itr_writer.cpp> <reference_counted.cpp>
// getPrimitiveCount is glitch-video's definition (the primitive-type rules of 0x5a0300). Buffers are the
// test fakes of io_video_fakes.hpp; loadPS gets a CNullDriver, which creates the index buffer.
#include <cstdint>
#include <algorithm>
#include <cstdio>
#include <cstring>
#include <utility>
#include <vector>

#include "glitch-core-io/tb/glitch_io.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "io_stub_files.hpp"
#include "io_video_fakes.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// Read file over a byte vector (little-endian data is handed out as stored).
class MemReadFile : public glitch::io::testing::StubReadFile {
public:
    explicit MemReadFile(std::vector<std::uint8_t> bytes) : data(std::move(bytes)) {}
    std::int32_t read(void* buffer, std::uint32_t count) override {
        for (unsigned int i = 0; i < count; ++i) {
            static_cast<std::uint8_t*>(buffer)[i] = pos < data.size() ? data[pos] : 0;
            ++pos;
        }
        return static_cast<std::int32_t>(count);
    }
    bool seek(long offset, bool relative) override {
        pos = static_cast<std::size_t>(relative ? static_cast<long>(pos) + offset : offset);
        return true;
    }
    long getPos() const override { return static_cast<long>(pos); }

    std::vector<std::uint8_t> data;
    std::size_t pos = 0;
};

// Write file that keeps every byte written.
class MemWriteFile : public glitch::io::testing::StubWriteFile {
public:
    std::size_t write(const void* bytes, unsigned int count) override {
        const auto* p = static_cast<const std::uint8_t*>(bytes);
        out.insert(out.end(), p, p + count);
        return count;
    }
    std::vector<std::uint8_t> out;
};

// Four little-endian bytes of a 32-bit value.
void appendLE32(std::vector<std::uint8_t>& v, std::uint32_t x) {
    for (int i = 0; i < 4; ++i) v.push_back(static_cast<std::uint8_t>(x >> (8 * i)));
}

// Four big-endian bytes of a 32-bit value.
void appendBE32(std::vector<std::uint8_t>& v, std::uint32_t x) {
    for (int i = 3; i >= 0; --i) v.push_back(static_cast<std::uint8_t>(x >> (8 * i)));
}

// A stream entry that owns its buffer (a fake buffer; the stride does not read it).
void setEntry(glitch::video::CVertexStreams& table, std::size_t index, bool bound, std::uint16_t valueType,
              std::uint16_t count) {
    if (table.m_streams.size() <= index) table.m_streams.resize(index + 1);
    auto& entry = table.m_streams[index];
    entry.buffer = bound ? boost::intrusive_ptr<glitch::video::IBuffer>(new io_test_fakes::FakeBuffer(), true)
                         : boost::intrusive_ptr<glitch::video::IBuffer>();
    entry.field0a = valueType;
    entry.field0c = count;
    entry.field0e = 0;
}

// Heap tables, so the intrusive pointer that wraps them releases them with delete. The table is born with
// count 0, so the (table, true) form takes the first use.
boost::intrusive_ptr<const glitch::video::CVertexStreams> makeTable() {
    return boost::intrusive_ptr<const glitch::video::CVertexStreams>(new glitch::video::CVertexStreams(), true);
}

void testStride() {
    auto empty = makeTable();
    CHECK(glitch::io::getVertexStreamsStride(empty) == 0);

    // One bound stream of three 4-byte values: 12 bytes. An unbound entry adds nothing.
    auto one = makeTable();
    auto* oneMut = const_cast<glitch::video::CVertexStreams*>(one.get());
    setEntry(*oneMut, 0, true, 4, 3);
    setEntry(*oneMut, 1, false, 4, 5);
    CHECK(glitch::io::getVertexStreamsStride(one) == 12);

    // 1-byte x3 (total 3), then 4-byte x2: pad to 4, total 12. The first bound size (1) aligns nothing more.
    auto two = makeTable();
    auto* twoMut = const_cast<glitch::video::CVertexStreams*>(two.get());
    setEntry(*twoMut, 0, true, 0, 3);
    setEntry(*twoMut, 1, true, 4, 2);
    CHECK(glitch::io::getVertexStreamsStride(two) == 12);

    // 2-byte x1 (total 2), 1-byte x1 (total 3), then the final pad to the first bound size (2): 4.
    auto three = makeTable();
    auto* threeMut = const_cast<glitch::video::CVertexStreams*>(three.get());
    setEntry(*threeMut, 0, true, 2, 1);
    setEntry(*threeMut, 1, true, 0, 1);
    CHECK(glitch::io::getVertexStreamsStride(three) == 4);
}

void testSavePrimitiveLE() {
    // The index bytes stay in this vector; the buffer does not own them.
    std::vector<std::uint8_t> storage = {1, 0, 2, 0, 3, 0};
    glitch::video::CPrimitiveStream stream;
    stream.m_indexBuffer = boost::intrusive_ptr<glitch::video::IBuffer>(
        new io_test_fakes::FakeBuffer(static_cast<std::uint32_t>(storage.size()), storage.data(), false), true);
    stream.m_primitiveType = 5;  // triangle fan: count 3 gives 1 primitive
    stream.m_indexType = 1;
    stream.m_count = 3;
    stream.m_vertexStart = 7;
    stream.m_vertexEnd = 9;

    MemWriteFile file;
    const int returned = glitch::io::save(stream, &file, false);
    CHECK(returned == 24);

    std::vector<std::uint8_t> expected;
    for (std::uint32_t w : {5u, 1u, 3u, 1u, 7u, 9u}) appendLE32(expected, w);
    for (std::uint8_t b : {1, 0, 2, 0, 3, 0}) expected.push_back(b);
    CHECK(file.out == expected);
}

void testSavePrimitiveBE() {
    std::vector<std::uint8_t> storage = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08};
    glitch::video::CPrimitiveStream stream;
    stream.m_indexBuffer = boost::intrusive_ptr<glitch::video::IBuffer>(
        new io_test_fakes::FakeBuffer(static_cast<std::uint32_t>(storage.size()), storage.data(), false), true);
    stream.m_primitiveType = 4;  // triangle strip: count 2 gives 0 primitives
    stream.m_indexType = 2;
    stream.m_count = 2;

    MemWriteFile file;
    glitch::io::save(stream, &file, true);

    std::vector<std::uint8_t> expected;
    for (std::uint32_t w : {4u, 2u, 2u, 0u, 0u, 0u}) appendBE32(expected, w);
    // Each 32-bit index is written byte-reversed: 01 02 03 04 becomes 04 03 02 01.
    for (std::uint8_t b : {0x04, 0x03, 0x02, 0x01, 0x08, 0x07, 0x06, 0x05}) expected.push_back(b);
    CHECK(file.out == expected);
}

void testLoadPrimitive() {
    std::vector<std::uint8_t> bytes;
    for (std::uint32_t w : {5u, 1u, 2u, 2u, 7u, 9u}) appendLE32(bytes, w);
    for (std::uint8_t b : {0xAA, 0xBB, 0xCC, 0xDD}) bytes.push_back(b);
    MemReadFile file(bytes);
    io_test_fakes::TestNullDriver driver;
    glitch::video::CPrimitiveStream stream = glitch::io::loadPS(&file, false, &driver.get());
    CHECK(stream.m_primitiveType == 5);
    CHECK(stream.m_indexType == 1);
    CHECK(stream.m_count == 2);
    CHECK(stream.m_vertexStart == 7);
    CHECK(stream.m_vertexEnd == 9);
    CHECK(stream.m_offset == 0);
    CHECK(stream.m_indexBuffer.get() != nullptr);
    if (stream.m_indexBuffer) {
        CHECK(stream.m_indexBuffer->m_size == 4);
        CHECK(stream.m_indexBuffer->m_data[0] == 0xAA && stream.m_indexBuffer->m_data[3] == 0xDD);
    }
    CHECK(file.pos == 28);
}

// PARTIAL path: with no driver the index bytes are skipped, so the stream has no buffer and the file
// position still moves past the indices.
void testLoadPrimitiveWithoutDriver() {
    std::vector<std::uint8_t> bytes;
    for (std::uint32_t w : {5u, 1u, 2u, 2u, 7u, 9u}) appendLE32(bytes, w);
    for (std::uint8_t b : {0xAA, 0xBB, 0xCC, 0xDD}) bytes.push_back(b);
    MemReadFile file(bytes);
    glitch::video::CPrimitiveStream stream = glitch::io::loadPS(&file, false, nullptr);
    CHECK(stream.m_indexBuffer.get() == nullptr);
    CHECK(stream.m_count == 2 && stream.m_indexType == 1);
    CHECK(file.pos == 28);
}

void testLoadPrimitiveEmpty() {
    std::vector<std::uint8_t> bytes;
    for (std::uint32_t w : {5u, 0xffu, 0u, 0u, 4u, 10u}) appendLE32(bytes, w);
    MemReadFile file(bytes);
    glitch::video::CPrimitiveStream stream = glitch::io::loadPS(&file, false, nullptr);
    CHECK(stream.m_indexBuffer.get() == nullptr);
    CHECK(stream.m_indexType == 0xff);
    CHECK(file.pos == 24);  // the empty stream reads only its header
}

// loadPS sizes the index data with getIndexTypeSize (1, 2, 4 bytes for u8, u16, u32): a u8 stream (type 0) keeps its bytes.
void testLoadPrimitiveByteIndices() {
    std::vector<std::uint8_t> bytes;
    for (std::uint32_t w : {4u, 0u, 3u, 1u, 0u, 3u}) appendLE32(bytes, w);
    for (std::uint8_t b : {1, 2, 3}) bytes.push_back(b);
    MemReadFile file(bytes);
    io_test_fakes::TestNullDriver driver;
    glitch::video::CPrimitiveStream stream = glitch::io::loadPS(&file, false, &driver.get());
    CHECK(stream.m_indexType == 0 && stream.m_count == 3);
    CHECK(stream.m_indexBuffer.get() != nullptr && stream.m_indexBuffer->m_size == 3);
    if (stream.m_indexBuffer) CHECK(stream.m_indexBuffer->m_data[0] == 1 && stream.m_indexBuffer->m_data[2] == 3);
    CHECK(file.pos == 27);
}

// A stream table of a float position (3) and a float texture coordinate (2) over one buffer, two vertices: saved and loaded back for
// both byte orders; the data, the headers, the quantization vectors and the vertex count must survive.
void roundTripVertexStreams(bool bigEndian) {
    io_test_fakes::TestNullDriver driver;
    auto buffer = driver.get().createBuffer(0, 4, 40, new std::uint8_t[40](), true);
    float values[10] = {1.f, 2.f, 3.f, 0.25f, 0.5f, 4.f, 5.f, 6.f, 0.75f, 1.f};
    std::memcpy(buffer->m_data, values, 40);

    auto table = glitch::video::CVertexStreams::allocate(0x3u);  // position and texture coordinate 0
    CHECK(table->m_streams.size() == 2 && table->m_count0c == 1 && table->m_quantization.size() == 4);
    glitch::video::SVertexStreamData position;
    position.buffer = buffer;
    position.offset = 0;
    position.field08 = 6;
    position.field0c = 3;
    position.field0e = 20;
    table->setStream(&table->m_streams[0], position, false);
    glitch::video::SVertexStreamData texture = position;
    texture.offset = 12;
    texture.field0c = 2;
    table->setStream(&table->m_streams[1], texture, false);
    table->m_field08 = 2;
    for (std::size_t i = 0; i < table->m_quantization.size(); ++i) {
        table->m_quantization[i].X = 1.f + static_cast<float>(i);
        table->m_quantization[i].Y = 10.f + static_cast<float>(i);
        table->m_quantization[i].Z = 20.f + static_cast<float>(i);
    }

    MemWriteFile out;
    const boost::intrusive_ptr<const glitch::video::CVertexStreams> constTable(table.get());
    const int written = glitch::io::save(constTable, &out, bigEndian);
    CHECK(written == 12 * 2 + 24 * 1 + 32);
    // count, two 12-byte headers, four 12-byte vectors, the vertex count, 2 vertices of 20 bytes.
    CHECK(out.out.size() == 4 + 24 + 48 + 4 + 40);

    // The vertex count is saved byte-swapped for a big-endian file but loaded as it stands (the original does not swap it on load): the
    // word is turned back to native order for the load.
    if (bigEndian) std::reverse(out.out.begin() + 76, out.out.begin() + 80);
    MemReadFile in(out.out);
    auto loaded = glitch::io::loadVS(&in, bigEndian, &driver.get());
    CHECK(loaded.get() != nullptr);
    if (!loaded) return;
    CHECK(in.pos == out.out.size());
    CHECK(loaded->m_field08 == 2 && loaded->m_streams.size() == 2 && loaded->m_count0c == 1);
    CHECK(loaded->m_streams[0].attribute == 0 && loaded->m_streams[0].field0a == 6 && loaded->m_streams[0].field0c == 3);
    CHECK(loaded->m_streams[0].field0e == 20 && loaded->m_streams[0].offset == 0);
    CHECK(loaded->m_streams[1].attribute == 1 && loaded->m_streams[1].field0c == 2 && loaded->m_streams[1].offset == 12);
    CHECK(loaded->m_streams[0].buffer.get() != nullptr && loaded->m_streams[0].buffer == loaded->m_streams[1].buffer);
    if (loaded->m_streams[0].buffer) CHECK(std::memcmp(loaded->m_streams[0].buffer->m_data, values, 40) == 0);
    CHECK((loaded->m_flags & 4u) == 0 && (loaded->m_flags & 8u) == 0);  // float streams: not quantized
    for (std::size_t i = 0; i < 4; ++i) {
        CHECK(loaded->m_quantization[i].X == table->m_quantization[i].X && loaded->m_quantization[i].Z == table->m_quantization[i].Z);
    }

    // loadHeadersAndSkipData reads the same block (after a flag byte) without the vertex data, then the primitive header and skips the indices.
    std::vector<std::uint8_t> block;
    block.push_back(7);
    block.insert(block.end(), out.out.begin(), out.out.end());
    for (std::uint32_t w : {5u, 1u, 2u, 2u, 7u, 9u}) {
        if (bigEndian) appendBE32(block, w); else appendLE32(block, w);
    }
    block.push_back(0xAA);
    block.push_back(0xBB);
    block.push_back(0xCC);
    block.push_back(0xDD);
    MemReadFile skip(block);
    glitch::io::SPrimitiveStreamDesc desc;
    auto headers = glitch::io::loadHeadersAndSkipData(&skip, desc, bigEndian);
    CHECK(headers.get() != nullptr && headers->m_streams.size() == 2);
    if (headers) CHECK(headers->m_streams[0].buffer.get() == nullptr);
    CHECK(desc.primitiveType == 5 && desc.indexType == 1 && desc.count == 2 && desc.unk_10 == 7 && desc.unk_14 == 9);
    CHECK(skip.pos == block.size());
}

// A mesh buffer: flag byte, vertex streams, primitive stream; saved and loaded back.
void testMeshBufferRoundTrip() {
    io_test_fakes::TestNullDriver driver;
    auto buffer = driver.get().createBuffer(0, 4, 12, new std::uint8_t[12](), true);
    auto table = glitch::video::CVertexStreams::allocate(0x1u);
    glitch::video::SVertexStreamData position;
    position.buffer = buffer;
    position.field08 = 6;
    position.field0c = 3;
    position.field0e = 12;
    table->setStream(&table->m_streams[0], position, false);
    table->m_field08 = 1;
    auto* mesh = new glitch::scene::CMeshBuffer();
    mesh->vertexStreams = table;
    mesh->primitiveStream.m_primitiveType = 6;
    mesh->primitiveStream.m_indexType = 0xff;
    mesh->primitiveStream.m_count = 3;
    mesh->primitiveStream.m_vertexStart = 0;
    mesh->primitiveStream.m_vertexEnd = 3;
    mesh->flag_34 = 1;
    const boost::intrusive_ptr<const glitch::scene::CMeshBuffer> constMesh(mesh, true);
    MemWriteFile out;
    unsigned int vertexResult = 0;
    unsigned int indexResult = 0;
    const int result = glitch::io::save(constMesh, &out, false, &vertexResult, &indexResult);
    CHECK(result == 24 && indexResult == 24);
    CHECK(vertexResult == 12 * 1 + 24 * 0 + 32 + 1);  // streams: 12 per header + 24 per texture set + 32, plus the flag byte
    MemReadFile in(out.out);
    auto loaded = glitch::io::loadMB(&in, false, &driver.get());
    CHECK(loaded.get() != nullptr);
    if (!loaded) return;
    CHECK(loaded->flag_34 == 1 && loaded->vertexStreams.get() != nullptr && loaded->vertexStreams->m_field08 == 1);
    CHECK(loaded->primitiveStream.m_primitiveType == 6 && loaded->primitiveStream.m_indexType == 0xff);
    CHECK(loaded->referenceCounter == 1);
}

}  // namespace

int main() {
    testStride();
    testSavePrimitiveLE();
    testSavePrimitiveBE();
    testLoadPrimitive();
    testLoadPrimitiveWithoutDriver();
    testLoadPrimitiveEmpty();
    testLoadPrimitiveByteIndices();
    roundTripVertexStreams(false);
    roundTripVertexStreams(true);
    testMeshBufferRoundTrip();
    if (failures == 0) std::printf("all r1-glitch-core-io-glitch_io-5e759c-0 tests passed\n");
    return failures == 0 ? 0 : 1;
}
