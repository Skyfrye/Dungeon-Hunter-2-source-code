// Checks for the glitch::scene mesh manipulation functions (src/scene/mesh_functions.cpp): flipSurfaces, setVertexColors,
// setVertexColorAlpha, makePlanarTextureMapping, scale, recalculateNormals, transform, createMeshCopy, createMeshWith2TCoords and
// createMeshWithTangents. The meshes are built over buffers of the null driver, once with one interleaved vertex buffer (the shared
// map path) and once with one buffer per stream. Exit status is non-zero when a check fails.
#include <cmath>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"  // its intrusive_ptr_release, found by ADL only when complete
#include "glitch-video/null_driver.hpp"
#include "glitch-video/vertex_streams.hpp"

using namespace glitch::scene;
namespace video = glitch::video;
namespace core = glitch::core;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

class TestDriver : public video::CNullDriver {
public:
    TestDriver() : CNullDriver(static_cast<glitch::IDevice*>(nullptr)) {}
};

bool near(float a, float b, float eps = 1e-5f) {
    return std::fabs(a - b) <= eps;
}

constexpr std::uint32_t kPosition = 1u << 0;
constexpr std::uint32_t kUv0 = 1u << 1;
constexpr std::uint32_t kUv1 = 1u << 2;
constexpr std::uint32_t kNormal = 1u << 17;
constexpr std::uint32_t kColor = 1u << 18;
constexpr std::uint32_t kTangent = 1u << 20;
constexpr std::uint32_t kBinormal = 1u << 24;

boost::intrusive_ptr<video::IBuffer> makeBuffer(TestDriver& driver, std::uint32_t type, std::size_t size) {
    boost::intrusive_ptr<video::IBuffer> buffer = driver.createBuffer(type, 0, 0, nullptr, true);
    auto* storage = new std::uint8_t[size];
    std::memset(storage, 0, size);
    buffer->reset(static_cast<std::uint32_t>(size), storage, true);
    return buffer;
}

// A float stream description.
struct StreamValues {
    std::uint32_t attribute;
    std::vector<float> values;   // components per vertex, vertex after vertex (colour: bytes in the low bytes, see setColor)
};

// A mesh buffer with the streams of `mask` (position, texture coordinates, normal, colour, tangent, binormal in this order), the
// listed 16-bit indices and the primitive type. `interleaved` puts all streams in one vertex buffer.
struct Built {
    boost::intrusive_ptr<CMeshBuffer> buffer;
    std::vector<boost::intrusive_ptr<video::IBuffer>> vertexBuffers;
    std::vector<std::uint16_t> indexStorage;   // the index buffer does not own its data (a clone of an owning null-driver buffer would alias it)
};

std::uint16_t componentsOf(std::uint32_t attribute) {
    return video::detail::SVertexAttributeTypeInspection::Defaults[attribute].componentCount;
}

std::uint16_t typeOf(std::uint32_t attribute) {
    return video::detail::SVertexAttributeTypeInspection::Defaults[attribute].valueType;
}

std::size_t sizeOf(std::uint32_t attribute) {
    return static_cast<std::size_t>(componentsOf(attribute)) * video::detail::SVertexAttributeTypeInspection::ValueTypeSize[typeOf(attribute)];
}

Built build(TestDriver& driver, std::uint32_t mask, std::uint32_t vertexCount, const std::vector<std::uint16_t>& indices,
            std::uint16_t primitiveType, bool interleaved) {
    Built built;
    video::CPrimitiveStream primitives;
    if (!indices.empty()) {
        built.indexStorage = indices;
        primitives.m_indexBuffer = driver.createBuffer(1, 0, static_cast<std::uint32_t>(indices.size() * 2), built.indexStorage.data(), false);
        primitives.m_count = static_cast<std::uint32_t>(indices.size());
        primitives.m_indexType = 1;
    }
    primitives.m_vertexStart = 0;
    primitives.m_vertexEnd = vertexCount;
    primitives.m_primitiveType = primitiveType;
    built.buffer = boost::intrusive_ptr<CMeshBuffer>(new CMeshBuffer(mask, primitives, false), true);
    video::CVertexStreams& streams = *built.buffer->vertexStreams;
    streams.m_field08 = vertexCount;
    std::size_t total = 0;
    for (const video::SVertexStream& stream : streams.m_streams) {
        total += sizeOf(stream.attribute);
    }
    boost::intrusive_ptr<video::IBuffer> shared;
    if (interleaved) {
        shared = makeBuffer(driver, 0, total * vertexCount);
        built.vertexBuffers.push_back(shared);
    }
    std::size_t offset = 0;
    for (video::SVertexStream& stream : streams.m_streams) {
        stream.buffer = interleaved ? shared : makeBuffer(driver, 0, sizeOf(stream.attribute) * vertexCount);
        if (!interleaved) {
            built.vertexBuffers.push_back(stream.buffer);
        }
        stream.offset = static_cast<std::uint32_t>(interleaved ? offset : 0);
        stream.field0a = typeOf(stream.attribute);
        stream.field0c = componentsOf(stream.attribute);
        stream.field0e = static_cast<std::uint16_t>(interleaved ? total : sizeOf(stream.attribute));
        offset += sizeOf(stream.attribute);
    }
    return built;
}

video::SVertexStream* streamOf(const Built& built, std::uint32_t attribute) {
    for (video::SVertexStream& stream : built.buffer->vertexStreams->m_streams) {
        if (stream.attribute == attribute) return &stream;
    }
    return nullptr;
}

float* floatAt(const Built& built, std::uint32_t attribute, std::uint32_t vertex, int component = 0) {
    video::SVertexStream* stream = streamOf(built, attribute);
    return reinterpret_cast<float*>(stream->buffer->m_data + stream->offset + static_cast<std::size_t>(stream->field0e) * vertex) + component;
}

std::uint8_t* bytesAt(const Built& built, std::uint32_t attribute, std::uint32_t vertex) {
    video::SVertexStream* stream = streamOf(built, attribute);
    return stream->buffer->m_data + stream->offset + static_cast<std::size_t>(stream->field0e) * vertex;
}

void setVec(const Built& built, std::uint32_t attribute, std::uint32_t vertex, float x, float y, float z = 0.0f) {
    float* p = floatAt(built, attribute, vertex);
    p[0] = x;
    p[1] = y;
    if (componentsOf(attribute) > 2) p[2] = z;
}

std::uint16_t* indicesOf(const Built& built) {
    return reinterpret_cast<std::uint16_t*>(built.buffer->primitiveStream.m_indexBuffer->m_data);
}

boost::intrusive_ptr<CMesh> meshOf(const Built& built) {
    boost::intrusive_ptr<CMesh> mesh(new CMesh(), true);
    mesh->addMeshBuffer(built.buffer, boost::intrusive_ptr<video::CMaterial>(), boost::intrusive_ptr<video::CMaterialVertexAttributeMap>());
    return mesh;
}

void testFlipSurfaces(TestDriver& driver) {
    {
        Built triangles = build(driver, kPosition, 6, {0, 1, 2, 3, 4, 5}, 6, false);
        boost::intrusive_ptr<CMesh> mesh = meshOf(triangles);
        flipSurfaces(mesh);
        const std::uint16_t* i = indicesOf(triangles);
        CHECK(i[0] == 0 && i[1] == 2 && i[2] == 1 && i[3] == 3 && i[4] == 5 && i[5] == 4);
        flipSurfaces(mesh);   // flipping again restores the order
        CHECK(i[1] == 1 && i[2] == 2 && i[4] == 4 && i[5] == 5);
    }
    {
        Built quads = build(driver, kPosition, 4, {0, 1, 2, 3}, 8, false);
        flipSurfaces(meshOf(quads));
        const std::uint16_t* i = indicesOf(quads);
        CHECK(i[0] == 0 && i[1] == 3 && i[2] == 2 && i[3] == 1);
    }
    {
        Built strip = build(driver, kPosition, 6, {0, 1, 2, 3, 4, 5}, 4, false);
        flipSurfaces(meshOf(strip));
        const std::uint16_t* i = indicesOf(strip);
        CHECK(i[0] == 1 && i[1] == 0 && i[2] == 3 && i[3] == 2 && i[4] == 5 && i[5] == 4);
    }
    {
        Built fan = build(driver, kPosition, 6, {0, 1, 2, 3, 4, 5}, 5, false);
        flipSurfaces(meshOf(fan));
        const std::uint16_t* i = indicesOf(fan);
        CHECK(i[0] == 0 && i[1] == 5 && i[2] == 4 && i[3] == 3 && i[4] == 2 && i[5] == 1);
    }
    {
        // Two buffers: the binary flips buffer 0 twice and leaves buffer 1 alone.
        Built a = build(driver, kPosition, 3, {0, 1, 2}, 6, false);
        Built b = build(driver, kPosition, 3, {0, 1, 2}, 6, false);
        boost::intrusive_ptr<CMesh> mesh = meshOf(a);
        mesh->addMeshBuffer(b.buffer, boost::intrusive_ptr<video::CMaterial>(), boost::intrusive_ptr<video::CMaterialVertexAttributeMap>());
        flipSurfaces(mesh);
        CHECK(indicesOf(a)[1] == 1 && indicesOf(a)[2] == 2);
        CHECK(indicesOf(b)[1] == 1 && indicesOf(b)[2] == 2);
    }
    {
        Built unindexed = build(driver, kPosition, 3, {}, 6, false);
        flipSurfaces(meshOf(unindexed));   // logs and returns
        CHECK(true);
    }
}

void testColors(TestDriver& driver) {
    for (const bool interleaved : {true, false}) {
        Built built = build(driver, kPosition | kColor, 3, {0, 1, 2}, 6, interleaved);
        boost::intrusive_ptr<CMesh> mesh = meshOf(built);
        video::SColor color;
        color.color = 0x80402010u;   // bytes 0x10 0x20 0x40 0x80
        setVertexColors(mesh, color);
        for (std::uint32_t v = 0; v < 3; ++v) {
            const std::uint8_t* p = bytesAt(built, 18, v);
            CHECK(p[0] == 0x10 && p[1] == 0x20 && p[2] == 0x40 && p[3] == 0x80);
        }
        setVertexColorAlpha(mesh, 0x33);
        for (std::uint32_t v = 0; v < 3; ++v) {
            const std::uint8_t* p = bytesAt(built, 18, v);
            CHECK(p[0] == 0x10 && p[1] == 0x20 && p[2] == 0x40 && p[3] == 0x33);
        }
    }
}

void testPlanarMapping(TestDriver& driver) {
    for (const bool interleaved : {true, false}) {
        Built built = build(driver, kPosition | kUv0, 3, {0, 1, 2}, 6, interleaved);
        setVec(built, 0, 0, 0, 0, 0);
        setVec(built, 0, 1, 1, 0, 0);
        setVec(built, 0, 2, 0, 2, 0);
        makePlanarTextureMapping(meshOf(built), 3.0f);
        // The normal is along z: the coordinates are (x, y) * scale.
        CHECK(near(*floatAt(built, 1, 0, 0), 0.0f) && near(*floatAt(built, 1, 0, 1), 0.0f));
        CHECK(near(*floatAt(built, 1, 1, 0), 3.0f) && near(*floatAt(built, 1, 1, 1), 0.0f));
        CHECK(near(*floatAt(built, 1, 2, 0), 0.0f) && near(*floatAt(built, 1, 2, 1), 6.0f));
    }
    {
        // A triangle in the YZ plane maps (y, z); in the XZ plane (x, z).
        Built yz = build(driver, kPosition | kUv0, 3, {0, 1, 2}, 6, false);
        setVec(yz, 0, 0, 0, 0, 0);
        setVec(yz, 0, 1, 0, 1, 0);
        setVec(yz, 0, 2, 0, 0, 2);
        makePlanarTextureMapping(meshOf(yz), 1.0f);
        CHECK(near(*floatAt(yz, 1, 1, 0), 1.0f) && near(*floatAt(yz, 1, 1, 1), 0.0f));
        CHECK(near(*floatAt(yz, 1, 2, 0), 0.0f) && near(*floatAt(yz, 1, 2, 1), 2.0f));
        Built xz = build(driver, kPosition | kUv0, 3, {0, 1, 2}, 6, false);
        setVec(xz, 0, 0, 0, 0, 0);
        setVec(xz, 0, 1, 1, 0, 0);
        setVec(xz, 0, 2, 0, 0, 2);
        makePlanarTextureMapping(meshOf(xz), 1.0f);
        CHECK(near(*floatAt(xz, 1, 1, 0), 1.0f) && near(*floatAt(xz, 1, 1, 1), 0.0f));
        CHECK(near(*floatAt(xz, 1, 2, 0), 0.0f) && near(*floatAt(xz, 1, 2, 1), 2.0f));
    }
}

void testNormals(TestDriver& driver) {
    for (const bool interleaved : {true, false}) {
        // Triangle A (0 1 2) in the z = 0 plane with the normal (0, 0, -1), and triangle B (1 0 3) in the y = 0 plane with the normal
        // (0, -1, 0) ((c - a) x (b - a) of the corners in order).
        Built built = build(driver, kPosition | kUv0 | kNormal, 4, {0, 1, 2, 1, 0, 3}, 6, interleaved);
        setVec(built, 0, 0, 0, 0, 0);
        setVec(built, 0, 1, 1, 0, 0);
        setVec(built, 0, 2, 0, 1, 0);
        setVec(built, 0, 3, 0, 0, 1);
        for (std::uint32_t v = 0; v < 4; ++v) setVec(built, 17, v, 5, 5, 5);
        boost::intrusive_ptr<CMesh> mesh = meshOf(built);
        recalculateNormals(mesh, false, false);
        // Flat: each triangle assigns its normal to its corners; the shared vertices 0 and 1 keep the last (triangle B).
        CHECK(near(*floatAt(built, 17, 2, 0), 0.0f) && near(*floatAt(built, 17, 2, 1), 0.0f) && near(*floatAt(built, 17, 2, 2), -1.0f));
        CHECK(near(*floatAt(built, 17, 3, 0), 0.0f) && near(*floatAt(built, 17, 3, 1), -1.0f) && near(*floatAt(built, 17, 3, 2), 0.0f));
        CHECK(near(*floatAt(built, 17, 0, 1), -1.0f) && near(*floatAt(built, 17, 0, 2), 0.0f));
        CHECK(near(*floatAt(built, 17, 1, 1), -1.0f) && near(*floatAt(built, 17, 1, 2), 0.0f));
        recalculateNormals(mesh, true, false);
        // Smooth: the shared vertices get the normalized sum (0, -1, -1) / sqrt(2); the others keep their triangle's normal.
        const float h = std::sqrt(0.5f);
        CHECK(near(*floatAt(built, 17, 0, 1), -h) && near(*floatAt(built, 17, 0, 2), -h));
        CHECK(near(*floatAt(built, 17, 1, 1), -h) && near(*floatAt(built, 17, 1, 2), -h));
        CHECK(near(*floatAt(built, 17, 2, 2), -1.0f) && near(*floatAt(built, 17, 3, 1), -1.0f));
        // Angle weighted: the angles multiply the components of the triangle normal; the single-triangle vertices stay unit length
        // along their axis, and every normal is renormalized.
        recalculateNormals(mesh, true, true);
        CHECK(near(*floatAt(built, 17, 2, 2), -1.0f) && near(*floatAt(built, 17, 3, 1), -1.0f));
        for (std::uint32_t v = 0; v < 4; ++v) {
            const float x = *floatAt(built, 17, v, 0);
            const float y = *floatAt(built, 17, v, 1);
            const float z = *floatAt(built, 17, v, 2);
            CHECK(near(x * x + y * y + z * z, 1.0f, 1e-4f));
        }
        // An unindexed buffer logs and is left alone.
        Built unindexed = build(driver, kPosition | kNormal, 3, {}, 6, interleaved);
        recalculateNormals(meshOf(unindexed), false, false);
        // A buffer without a normal stream does nothing.
        Built plain = build(driver, kPosition, 3, {0, 1, 2}, 6, interleaved);
        recalculateNormals(meshOf(plain), true, false);
    }
}

void testScaleAndTransform(TestDriver& driver) {
    for (const bool interleaved : {true, false}) {
        Built built = build(driver, kPosition | kNormal, 2, {0, 1}, 3, interleaved);
        setVec(built, 0, 0, 1, 2, 3);
        setVec(built, 0, 1, -1, 0, 4);
        setVec(built, 17, 0, 0, 0, 1);
        setVec(built, 17, 1, 1, 0, 0);
        boost::intrusive_ptr<CMesh> mesh = meshOf(built);
        mesh->setBoundingBox(core::aabbox3d<float>{{-1.0f, -2.0f, -3.0f}, {1.0f, 2.0f, 3.0f}});
        scale(mesh, core::vector3d<float>{2.0f, 3.0f, 4.0f});
        CHECK(near(*floatAt(built, 0, 0, 0), 2.0f) && near(*floatAt(built, 0, 0, 1), 6.0f) && near(*floatAt(built, 0, 0, 2), 12.0f));
        CHECK(near(*floatAt(built, 0, 1, 0), -2.0f) && near(*floatAt(built, 0, 1, 2), 16.0f));
        // Normals are multiplied by the inverse scale and renormalized: unit vectors along an axis stay unit vectors.
        CHECK(near(*floatAt(built, 17, 0, 2), 1.0f) && near(*floatAt(built, 17, 1, 0), 1.0f));
        const core::aabbox3d<float>& box = mesh->getBoundingBox();
        CHECK(near(box.MinEdge.X, -2.0f) && near(box.MinEdge.Y, -6.0f) && near(box.MinEdge.Z, -12.0f));
        CHECK(near(box.MaxEdge.X, 2.0f) && near(box.MaxEdge.Y, 6.0f) && near(box.MaxEdge.Z, 12.0f));

        // A translation by (1, 2, 3) and a rotation of the normals by 90 degrees about z: x' = -y, y' = x in the row layout
        // (x' = x * M[0] + y * M[4] + ..., so M[0] = 0, M[1] = 1, M[4] = -1, M[5] = 0).
        core::CMatrix4<float> matrix(core::CMatrix4<float>::EM4CONST_IDENTITY);
        matrix.M[0] = 0.0f;
        matrix.M[1] = 1.0f;
        matrix.M[4] = -1.0f;
        matrix.M[5] = 0.0f;
        matrix.M[12] = 1.0f;
        matrix.M[13] = 2.0f;
        matrix.M[14] = 3.0f;
        matrix.flag = false;
        transform(mesh, matrix);
        // Vertex 0 (2, 6, 12) -> (2 * 0 + 6 * -1 + 1, 2 * 1 + 6 * 0 + 2, 12 + 3) = (-5, 4, 15); vertex 1 (-2, 0, 16) -> (1, 0, 19).
        CHECK(near(*floatAt(built, 0, 0, 0), -5.0f) && near(*floatAt(built, 0, 0, 1), 4.0f) && near(*floatAt(built, 0, 0, 2), 15.0f));
        CHECK(near(*floatAt(built, 0, 1, 0), 1.0f) && near(*floatAt(built, 0, 1, 1), 0.0f) && near(*floatAt(built, 0, 1, 2), 19.0f));
        // Normal (0, 0, 1) is unchanged by the rotation about z; normal (1, 0, 0) -> (0, 1, 0).
        CHECK(near(*floatAt(built, 17, 0, 2), 1.0f));
        CHECK(near(*floatAt(built, 17, 1, 0), 0.0f) && near(*floatAt(built, 17, 1, 1), 1.0f));
        // The mesh box is the box of the (last vertex of the) buffer: the binary resets the box per vertex.
        CHECK(near(mesh->getBoundingBox().MinEdge.X, 1.0f) && near(mesh->getBoundingBox().MaxEdge.Z, 19.0f));
    }
}

void testCopy(TestDriver& driver) {
    for (const bool interleaved : {true, false}) {
        Built source = build(driver, kPosition | kUv0 | kNormal, 3, {0, 1, 2}, 6, interleaved);
        for (std::uint32_t v = 0; v < 3; ++v) {
            setVec(source, 0, v, static_cast<float>(v), static_cast<float>(v) + 0.5f, static_cast<float>(v) + 0.25f);
            setVec(source, 1, v, 0.1f * v, 0.2f * v);
            setVec(source, 17, v, 0, 0, 1);
        }
        boost::intrusive_ptr<CMesh> sourceMesh = meshOf(source);
        sourceMesh->setBoundingBox(core::aabbox3d<float>{{-5.0f, -5.0f, -5.0f}, {5.0f, 5.0f, 5.0f}});

        boost::intrusive_ptr<IMesh> copy = createMeshWith2TCoords(sourceMesh, &driver);
        CHECK(copy);
        CHECK(copy && copy->getMeshBufferCount() == 1);
        boost::intrusive_ptr<CMeshBuffer> copied = copy->getMeshBuffer(0);
        CHECK(copied && copied != source.buffer);
        video::CVertexStreams& streams = *copied->vertexStreams;
        CHECK(streams.m_attributeMask == (kPosition | kUv0 | kUv1 | kNormal));
        CHECK(streams.m_field08 == 3);
        CHECK(streams.m_streams.size() == 4);
        // The copy has one vertex buffer holding all streams: position (12) + uv0 (8) + uv1 (8) + normal (12) = 40 bytes per vertex.
        CHECK(streams.m_streams[0].field0e == 40 && streams.m_streams[3].field0e == 40);
        CHECK(streams.m_streams[0].buffer == streams.m_streams[3].buffer);
        CHECK(streams.m_streams[0].offset == 0 && streams.m_streams[1].offset == 12 && streams.m_streams[2].offset == 20 &&
              streams.m_streams[3].offset == 28);
        Built asBuilt;
        asBuilt.buffer = copied;
        for (std::uint32_t v = 0; v < 3; ++v) {
            CHECK(near(*floatAt(asBuilt, 0, v, 0), static_cast<float>(v)));
            CHECK(near(*floatAt(asBuilt, 0, v, 2), static_cast<float>(v) + 0.25f));
            CHECK(near(*floatAt(asBuilt, 1, v, 1), 0.2f * v));
            CHECK(near(*floatAt(asBuilt, 2, v, 0), 0.0f) && near(*floatAt(asBuilt, 2, v, 1), 0.0f));   // the new set is zero
            CHECK(near(*floatAt(asBuilt, 17, v, 2), 1.0f));
        }
        // The index buffer is a copy with the same contents.
        CHECK(copied->primitiveStream.m_indexBuffer && copied->primitiveStream.m_indexBuffer != source.buffer->primitiveStream.m_indexBuffer);
        const std::uint16_t* copiedIndices = reinterpret_cast<const std::uint16_t*>(copied->primitiveStream.m_indexBuffer->m_data);
        CHECK(copiedIndices != indicesOf(source) && copiedIndices[0] == 0 && copiedIndices[1] == 1 && copiedIndices[2] == 2);
        CHECK(copied->primitiveStream.m_count == 3 && copied->primitiveStream.m_primitiveType == 6 && copied->primitiveStream.m_indexType == 1);
        CHECK(near(copy->getBoundingBox().MaxEdge.X, 5.0f));
        // The source is untouched.
        CHECK(source.buffer->vertexStreams->m_attributeMask == (kPosition | kUv0 | kNormal));
        // A null mesh copies to null.
        CHECK(!createMeshCopy(boost::intrusive_ptr<IMesh>(), &driver, 0xFFFFFFFFu, 0));
    }
}

void testTangents(TestDriver& driver) {
    for (const bool interleaved : {true, false}) {
        for (const bool smooth : {false, true}) {
            Built built = build(driver, kPosition | kUv0 | kNormal | kTangent | kBinormal, 3, {0, 1, 2}, 6, interleaved);
            setVec(built, 0, 0, 0, 0, 0);
            setVec(built, 0, 1, 1, 0, 0);
            setVec(built, 0, 2, 0, 1, 0);
            setVec(built, 1, 0, 0, 0);
            setVec(built, 1, 1, 1, 0);
            setVec(built, 1, 2, 0, 1);
            boost::intrusive_ptr<CMesh> mesh = meshOf(built);
            boost::intrusive_ptr<IMesh> result = createMeshWithTangents(mesh, &driver, true, smooth, false);
            CHECK(result && result->getMeshBufferCount() == 1);
            // The tangents are written into the argument mesh. Per vertex: normal (0, 0, -1), tangent (1, 0, 0), binormal (0, -1, 0)
            // (the frame is mirrored, so the tangent and binormal are negated).
            for (std::uint32_t v = 0; v < 3; ++v) {
                CHECK(near(*floatAt(built, 17, v, 2), -1.0f) && near(*floatAt(built, 17, v, 0), 0.0f));
                CHECK(near(*floatAt(built, 20, v, 0), 1.0f) && near(*floatAt(built, 20, v, 1), 0.0f) && near(*floatAt(built, 20, v, 2), 0.0f));
                CHECK(near(*floatAt(built, 24, v, 1), -1.0f) && near(*floatAt(built, 24, v, 0), 0.0f) && near(*floatAt(built, 24, v, 2), 0.0f));
            }
            // The copy has the same attributes plus the two streams (already present here) and zeroed tangents.
            boost::intrusive_ptr<CMeshBuffer> copied = result->getMeshBuffer(0);
            CHECK(copied->vertexStreams->m_attributeMask == (kPosition | kUv0 | kNormal | kTangent | kBinormal));
        }
    }
    {
        // Without tangent streams the call logs for the buffer and the argument is untouched; the copy gains the streams.
        Built built = build(driver, kPosition | kUv0, 3, {0, 1, 2}, 6, false);
        boost::intrusive_ptr<IMesh> result = createMeshWithTangents(meshOf(built), &driver, false, false, false);
        CHECK(result);
        CHECK(result->getMeshBuffer(0)->vertexStreams->m_attributeMask == (kPosition | kUv0 | kTangent | kBinormal));
        CHECK(built.buffer->vertexStreams->m_attributeMask == (kPosition | kUv0));
    }
}

}  // namespace

int main() {
    TestDriver driver;
    testFlipSurfaces(driver);
    testColors(driver);
    testPlanarMapping(driver);
    testNormals(driver);
    testScaleAndTransform(driver);
    testCopy(driver);
    testTangents(driver);
    std::printf("%s\n", failures ? "scene_mesh_functions: FAILED" : "scene_mesh_functions: ok");
    return failures != 0;
}
