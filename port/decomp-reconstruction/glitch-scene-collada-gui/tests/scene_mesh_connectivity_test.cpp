// Checks for glitch::scene::CMeshConnectivity: the edge table of a two-triangle quad (with and without welding), the shared-edge face
// bookkeeping, the third-face warning, and the save / load round trip through a memory file. Exit status is non-zero when a check fails.
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-scene-collada-gui/scene/CMeshConnectivity.hpp"

using namespace glitch::scene;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// A buffer over caller-owned memory: the driver parts do nothing.
class MemoryBuffer : public glitch::video::IBuffer {
public:
    MemoryBuffer(void* data, std::uint32_t size) : IBuffer(0, 0, size, data, 0) {}
    void bindImpl(bool) override {}
    void unbindImpl() override {}
    std::uint8_t* mapImpl(std::uint32_t) const override { return m_data; }
    void unmapImpl() const override {}
    std::uint8_t* getMappedPtr() const override { return m_data; }
    boost::intrusive_ptr<glitch::video::IBuffer> cloneImpl() const override { return {}; }
};

class VectorWriteFile : public glitch::io::IWriteFile {
public:
    std::size_t write(const void* data, unsigned int count) override {
        const auto* bytes = static_cast<const std::uint8_t*>(data);
        content.insert(content.end(), bytes, bytes + count);
        return count;
    }
    void flush() override {}
    bool seek(long, bool) override { return false; }
    long getPos() const override { return static_cast<long>(content.size()); }
    const char* getFileName() const override { return "test"; }
    const char* getFullPath() const override { return "test"; }
    std::vector<std::uint8_t> content;
};

class VectorReadFile : public glitch::io::IReadFile {
public:
    explicit VectorReadFile(std::vector<std::uint8_t> bytes) : content(std::move(bytes)) {}
    std::int32_t read(void* buffer, std::uint32_t count) override {
        const std::uint32_t available = static_cast<std::uint32_t>(content.size()) - position;
        const std::uint32_t n = count < available ? count : available;
        std::memcpy(buffer, content.data() + position, n);
        position += n;
        return static_cast<std::int32_t>(n);
    }
    bool readAsync(void*, std::uint32_t, glitch::io::ReadAsyncCallBack, void*) override { return false; }
    bool readAsync(void*, std::uint32_t, long, glitch::io::ReadAsyncCallBack, void*) override { return false; }
    bool seek(long, bool) override { return false; }
    glitch::io::IReadFile* clone() const override { return nullptr; }
    long getSize() const override { return static_cast<long>(content.size()); }
    long getPos() const override { return position; }
    const char* getFileName() const override { return "test"; }
    const char* getFullPath() const override { return "test"; }
    std::vector<std::uint8_t> content;
    std::uint32_t position = 0;
};

// Builds a buffer with `vertexCount` vertices (x, y, z floats, stride 12) and the given 16-bit indices.
struct Fixture {
    Fixture(const std::vector<float>& vertices, const std::vector<std::uint16_t>& indexValues)
        : vertexData(vertices), indices(indexValues) {
        auto vertexBuffer = boost::intrusive_ptr<glitch::video::IBuffer>(
            new MemoryBuffer(vertexData.data(), static_cast<std::uint32_t>(vertexData.size() * sizeof(float))), true);
        auto indexBuffer = boost::intrusive_ptr<glitch::video::IBuffer>(
            new MemoryBuffer(indices.data(), static_cast<std::uint32_t>(indices.size() * sizeof(std::uint16_t))), true);
        boost::intrusive_ptr<CMeshBuffer> mesh(new CMeshBuffer(), true);
        mesh->vertexStreams = glitch::video::CVertexStreams::allocate(1u);
        mesh->vertexStreams->m_field08 = static_cast<std::uint32_t>(vertices.size() / 3);
        mesh->vertexStreams->m_streams[0].buffer = vertexBuffer;
        mesh->vertexStreams->m_streams[0].offset = 0;
        mesh->vertexStreams->m_streams[0].field0e = 12;
        mesh->primitiveStream.m_indexBuffer = indexBuffer;
        mesh->primitiveStream.m_count = static_cast<std::uint32_t>(indices.size());
        mesh->primitiveStream.m_indexType = 1;
        mesh->primitiveStream.m_primitiveType = 6;
        buffer = mesh;
    }
    std::vector<float> vertexData;
    std::vector<std::uint16_t> indices;
    boost::intrusive_ptr<CMeshBuffer> buffer;
};

const CMeshConnectivity::SEdge* findEdge(const CMeshConnectivity& c, std::uint16_t a, std::uint16_t b) {
    for (const auto& e : c.edges) {
        if (e.vertexA == a && e.vertexB == b) return &e;
    }
    return nullptr;
}

}  // namespace

int main() {
    // A quad: vertices 0..3, triangles (0,1,2) and (2,1,3), then a duplicate vertex 4 at the position of 0.
    const std::vector<float> quad = {0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0};
    Fixture quadFixture(quad, {0, 1, 2, 2, 1, 3});
    {
        CMeshConnectivity connectivity(boost::intrusive_ptr<const CMeshBuffer>(quadFixture.buffer.get(), true));
        connectivity.creatEdgeList(false);
        CHECK(connectivity.triangleCount == 2);
        CHECK(connectivity.edges.size() == 5);
        CHECK(connectivity.triangles[0] == 0 && connectivity.triangles[1] == 1 && connectivity.triangles[2] == 2);
        CHECK(connectivity.triangles[3] == 2 && connectivity.triangles[4] == 1 && connectivity.triangles[5] == 3);
        const auto* shared = findEdge(connectivity, 1, 2);
        CHECK(shared != nullptr && shared->faceCount == 2 && shared->faces[0] == 0 && shared->faces[1] == 1);
        const auto* single = findEdge(connectivity, 0, 1);
        CHECK(single != nullptr && single->faceCount == 1 && single->faces[0] == 0);
        CHECK(findEdge(connectivity, 0, 2) != nullptr && findEdge(connectivity, 1, 3) != nullptr && findEdge(connectivity, 2, 3) != nullptr);
        CHECK(findEdge(connectivity, 0, 3) == nullptr);

        // Round trip through a memory file.
        VectorWriteFile out;
        const int written = connectivity.save(&out);
        CHECK(written == static_cast<int>(out.content.size()));
        CHECK(written == 4 + 4 + 4 + 5 * 16 + 4 + 6 * 2 + 4);
        std::uint32_t marker = 0;
        std::memcpy(&marker, out.content.data() + out.content.size() - 4, 4);
        CHECK(marker == 0xC0FFE808u);
        CMeshConnectivity loaded(boost::intrusive_ptr<const CMeshBuffer>(quadFixture.buffer.get(), true));
        VectorReadFile in(out.content);
        const int read = loaded.load(&in);
        CHECK(read == written);
        CHECK(loaded.edges.size() == 5 && loaded.triangleCount == 2);
        CHECK(std::memcmp(loaded.triangles, connectivity.triangles, 12) == 0);
        const auto* loadedShared = findEdge(loaded, 1, 2);
        CHECK(loadedShared != nullptr && loadedShared->faceCount == 2 && loadedShared->faces[1] == 1);
    }

    // Welding: vertex 4 sits at the position of vertex 0, so a triangle that uses it becomes a neighbour of the first triangle.
    {
        Fixture weldFixture(quad, {0, 1, 2, 4, 1, 3});
        CMeshConnectivity plain(boost::intrusive_ptr<const CMeshBuffer>(weldFixture.buffer.get(), true));
        plain.creatEdgeList(false);
        CHECK(plain.edges.size() == 6 && findEdge(plain, 1, 4) != nullptr);
        CMeshConnectivity welded(boost::intrusive_ptr<const CMeshBuffer>(weldFixture.buffer.get(), true));
        welded.creatEdgeList(true);
        CHECK(welded.triangles[3] == 0);                          // index 4 became 0
        CHECK(findEdge(welded, 1, 4) == nullptr && findEdge(welded, 0, 1) != nullptr);
        CHECK(findEdge(welded, 0, 1)->faceCount == 2);            // both triangles have the edge (0, 1)
    }

    // A third face on an edge is not stored.
    {
        CMeshConnectivity::SEdge edge;
        edge.addFace(4);
        edge.addFace(5);
        edge.addFace(6);
        CHECK(edge.faceCount == 2 && edge.faces[0] == 4 && edge.faces[1] == 5);
    }

    std::printf("%s\n", failures ? "scene_mesh_connectivity: FAILED" : "scene_mesh_connectivity: ok");
    return failures != 0;
}
