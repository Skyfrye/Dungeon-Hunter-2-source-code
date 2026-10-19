// glitch::video::CBatchDriver::thisAppendBatch (0x5a6fe0), run for real: one record straight from the arguments, and a
// two-cluster batch (spatial grid clustering) that is re-indexed into new streams and an index buffer. The batch baker
// is a recording double (the seam the original also has: vtable +0x0c of m_batchBaker); everything else is the library.
//
// One seam besides the baker: CNullDriver::CNullDriver(IVideoDriver*) (0x5b9764) is declared only in the port, so the
// base subobject of CBatchDriver needs a definition (same shape as batch_driver_test.cpp).
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-scene-collada-gui/scene/CAppendMeshBuffer.hpp"
#include "glitch-video/batch_baker.hpp"
#include "glitch-video/batch_driver.hpp"
#include "glitch-video/vertex_attribute_map.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::video {
CNullDriver::CNullDriver(IVideoDriver* other)
    : IVideoDriver(other != nullptr ? other->m_device : nullptr, nullptr, nullptr, nullptr, nullptr,
                   boost::intrusive_ptr<CLight>()) {
    for (core::CMatrix4<float>& matrix : m_transforms) {
        matrix = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
    unk_08 = "NullDriver";
    unk_20 = "Not available on this driver.";
    initDriver();
    init(1, 1, 0);
}
}  // namespace glitch::video

namespace {

using namespace glitch::video;

int failures = 0;
void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}

struct BakeCall {
    std::vector<uint16_t> indices;  // the record's index data
    std::vector<float> positionsX;  // x of every vertex of the record's streams
    uint32_t vertexStart = 0, vertexEnd = 0, c = 0, d = 0, e = 0, f = 0, g = 0;
    uint32_t indexCount = 0;
    uint8_t technique = 0;
    const void* material = nullptr;
    const uint8_t* attributeMap = nullptr;
};

class FakeBaker : public IBatchBaker {
public:
    mutable std::vector<BakeCall> calls;
    static const uint8_t* unsetMap() {
        static uint8_t bytes[30];
        std::memset(bytes, 0xff, sizeof bytes);
        return bytes;
    }
    boost::intrusive_ptr<CVertexAttributeMap> map{new CVertexAttributeMap(unsetMap())};

    void bake(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
              const CMaterial* material, uint8_t technique, const uint8_t* parameters,
              const boost::intrusive_ptr<CVertexStreams>&, CPrimitiveStream&, const CMaterial*, const uint8_t*,
              const IVideoDriver*, uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t f,
              uint32_t g) const override {
        BakeCall call;
        call.vertexStart = a;
        call.vertexEnd = b;
        call.c = c;
        call.d = d;
        call.e = e;
        call.f = f;
        call.g = g;
        call.technique = technique;
        call.material = material;
        call.attributeMap = parameters;
        call.indexCount = primitives.m_count;
        const IBuffer* indexBuffer = primitives.m_indexBuffer.get();
        const uint16_t* in = reinterpret_cast<const uint16_t*>(indexBuffer->map(1) + primitives.m_offset);
        call.indices.assign(in, in + primitives.m_count);
        indexBuffer->unmap();
        const SVertexStream& position = streams->m_streams.front();
        const IBuffer* vertexBuffer = position.buffer.get();
        const uint8_t* base = vertexBuffer->map(1) + position.offset;
        for (uint32_t v = 0; v < b - a; ++v) {
            float x;
            std::memcpy(&x, base + (a + v) * position.field0e, sizeof x);
            call.positionsX.push_back(x);
        }
        vertexBuffer->unmap();
        calls.push_back(call);
    }
    boost::intrusive_ptr<CMaterial> getBatchMaterial(const boost::intrusive_ptr<const CMaterial>&, uint8_t) const override {
        return {};
    }
    const boost::intrusive_ptr<CVertexAttributeMap>& getVertexAttributeMap() const override { return map; }
    void configureAppendBuffer(const boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>&) const override {}
    bool isCompatible(const boost::intrusive_ptr<const CMaterial>&, uint8_t) const override { return true; }
};

// Eight vertices (two quads of four, at x = 0..3 and x = 100..103) and four triangles (two per quad).
struct Scene {
    boost::intrusive_ptr<CVertexStreams> streams;
    CPrimitiveStream primitives;
};

Scene makeScene(CBatchDriver& driver) {
    Scene scene;
    const uint32_t vertexCount = 8;
    float* vertices = new float[vertexCount * 3];
    for (uint32_t i = 0; i < vertexCount; ++i) {
        const uint32_t quad = i / 4;
        vertices[i * 3 + 0] = (quad == 0 ? 0.0f : 100.0f) + static_cast<float>(i % 4);
        vertices[i * 3 + 1] = (i % 2) ? 1.0f : 0.0f;
        vertices[i * 3 + 2] = 0.0f;
    }
    boost::intrusive_ptr<IBuffer> vertexBuffer =
        driver.createBuffer(0, 4, vertexCount * 12, reinterpret_cast<uint8_t*>(vertices), true);
    scene.streams = CVertexStreams::allocate(1u);
    SVertexStreamData data;
    data.buffer = vertexBuffer;
    data.offset = 0;
    data.field08 = 6;   // float
    data.field0c = 3;   // components
    data.field0e = 12;  // stride
    scene.streams->setStream(&scene.streams->m_streams[0], data, false);

    const uint32_t indexCount = 12;
    uint16_t* indices = new uint16_t[indexCount]{0, 1, 2, 1, 2, 3, 4, 5, 6, 5, 6, 7};
    boost::intrusive_ptr<IBuffer> indexBuffer =
        driver.createBuffer(1, 4, indexCount * 2, reinterpret_cast<uint8_t*>(indices), true);
    scene.primitives.m_indexBuffer = indexBuffer;
    scene.primitives.m_offset = 0;
    scene.primitives.m_count = indexCount;
    scene.primitives.m_vertexStart = 0;
    scene.primitives.m_vertexEnd = vertexCount;
    scene.primitives.m_indexType = 1;
    scene.primitives.m_primitiveType = 6;
    return scene;
}

}  // namespace

int main() {
    CNullDriver owner(static_cast<glitch::IDevice*>(nullptr));
    boost::intrusive_ptr<const glitch::scene::CMeshBuffer> noMesh;

    // ---- one record: no clustering (segment size zero) ---------------------------------------------------------
    {
        CBatchDriver driver(1u << 16, 1u << 16, &owner);
        driver.initBuffer();
        FakeBaker* baker = new FakeBaker();
        driver.m_batchBaker = boost::intrusive_ptr<IBatchBaker>(baker);
        driver.m_batchTechnique = 3;
        Scene scene = makeScene(driver);
        // draw (0x5a8a80) is the tail call into thisAppendBatch: the third parameter is never read.
        glitch::video::CDriverBinding* binding = reinterpret_cast<glitch::video::CDriverBinding*>(0x1234);
        driver.draw(scene.streams, scene.primitives, &binding, noMesh);
        check(binding == reinterpret_cast<glitch::video::CDriverBinding*>(0x1234), "draw does not write through the binding");

        check(baker->calls.size() == 1u, "no clustering: the baker runs once");
        if (baker->calls.size() == 1u) {
            const BakeCall& call = baker->calls[0];
            check(call.vertexStart == 0 && call.vertexEnd == 8, "the record keeps the argument's vertex range");
            check(call.indexCount == 12 && call.indices.size() == 12u && call.indices[2] == 2 && call.indices[11] == 7,
                  "the record keeps the argument's index data");
            check(call.c == 0 && call.d == 4, "bake c = 0, d = the primitive count (4 triangles)");
            check(call.e == 0 && call.f == 0, "bake e/f: the buffer is empty, so used vertices and triangles are 0");
            check(call.g == 0xffffffffu, "bake g = -1");
            check(call.technique == 3, "the batch technique byte is passed");
            check(call.attributeMap != nullptr && call.attributeMap[0] == 0 && call.attributeMap[1] == 0xff,
                  "no bound material map: the default map has stream 0 at attribute 0 and 0xff elsewhere");
        }
        auto* buffer = static_cast<glitch::scene::CAppendMeshBuffer*>(driver.m_batchBuffer.get());
        // vertexUsedBytes = stride(1) * (uint16(end - start) + uint16(used / stride)) = 1 * (8 + 0).
        check(buffer->vertexUsedBytes == 8u, "vertexUsedBytes advances by the record's vertex count (stride 1)");
        // indexUsedBytes = (4 + 0 / 3) * 3 * indexStride(2) = 24.
        check(buffer->indexUsedBytes == 24u, "indexUsedBytes advances by 3 * triangles * indexStride");
        check(buffer->primitiveStream.m_count == 24u, "the buffer's primitive count word follows indexUsedBytes");
        check(buffer->primitiveStream.m_vertexEnd == 8u && buffer->primitiveStream.m_vertexStart == 0,
              "the buffer's vertex range is [0, vertexUsedBytes)");
        check(buffer->vertexStreams->m_field08 == 8u, "the buffer's vertex stream table count word is updated");
    }

    // ---- two clusters: the spatial grid splits the quads; each cluster is re-indexed ---------------------------
    {
        CBatchDriver driver(1u << 16, 1u << 16, &owner);
        driver.initBuffer();
        FakeBaker* baker = new FakeBaker();
        driver.m_batchBaker = boost::intrusive_ptr<IBatchBaker>(baker);
        driver.segmentSize.X = 10.0f;
        driver.segmentSize.Y = 10.0f;
        driver.segmentSize.Z = 10.0f;
        Scene scene = makeScene(driver);
        driver.thisAppendBatch(scene.streams, scene.primitives, noMesh);

        check(baker->calls.size() == 2u, "two clusters: two records, two bakes");
        for (const BakeCall& call : baker->calls) {
            check(call.vertexStart == 0 && call.vertexEnd == 4, "a cluster record owns 4 distinct vertices");
            check(call.indexCount == 6 && call.d == 2, "a cluster record is 2 triangles");
            // The two triangles share an edge: (0,1,2) and (1,2,3) in the cluster's own numbering.
            check(call.indices.size() == 6u && call.indices[0] == 0 && call.indices[1] == 1 && call.indices[2] == 2 &&
                      call.indices[3] == 1 && call.indices[4] == 2 && call.indices[5] == 3,
                  "indices are de-duplicated into first-use order");
        }
        if (baker->calls.size() == 2u) {
            // Whichever cluster is first, one holds the x = 0..3 quad and the other x = 100..103.
            const BakeCall& a = baker->calls[0];
            const BakeCall& b = baker->calls[1];
            const bool aLow = a.positionsX.size() == 4u && a.positionsX[0] == 0.0f;
            const BakeCall& low = aLow ? a : b;
            const BakeCall& high = aLow ? b : a;
            check(low.positionsX.size() == 4u && low.positionsX[3] == 3.0f, "the low cluster's vertices were copied");
            check(high.positionsX.size() == 4u && high.positionsX[0] == 100.0f && high.positionsX[3] == 103.0f,
                  "the high cluster's vertices were copied");
        }
        auto* buffer = static_cast<glitch::scene::CAppendMeshBuffer*>(driver.m_batchBuffer.get());
        check(buffer->vertexUsedBytes == 8u, "both clusters advance the append buffer (4 + 4 vertices)");
        check(buffer->indexUsedBytes == 24u, "and 2 * 2 triangles");
    }

    std::printf("%s\n", failures == 0 ? "batch_append: ok" : "batch_append: FAILED");
    return failures == 0 ? 0 : 1;
}
