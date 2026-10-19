// glitch::scene::CShadowVolumeSceneNode (scene/CShadowVolumeSceneNode.hpp): the stencil shadow volume node, its volumes and silhouettes.
#include "glitch-scene-collada-gui/scene/CShadowVolumeSceneNode.hpp"

#include <algorithm>
#include <cstring>

#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

constexpr std::uint32_t kTagShadowVolume = 0x77646873;  // "shdw"

core::vector3d<float> v3(float x, float y, float z) {
    core::vector3d<float> v;
    v.X = x;
    v.Y = y;
    v.Z = z;
    return v;
}

float floatOf(std::uint32_t bits) {
    float f;
    std::memcpy(&f, &bits, sizeof f);
    return f;
}

std::uint32_t bitsOf(float f) {
    std::uint32_t bits;
    std::memcpy(&bits, &f, sizeof bits);
    return bits;
}

// The mapped position array of a mesh buffer (stream 0); the caller unmaps through the returned buffer.
struct SPositions {
    const video::IBuffer* buffer = nullptr;
    const std::uint8_t* base = nullptr;
    std::uint32_t stride = 0;
    const float* at(std::uint32_t index) const { return reinterpret_cast<const float*>(base + static_cast<std::size_t>(stride) * index); }
};

SPositions mapPositions(const CMeshBuffer& meshBuffer) {
    SPositions result;
    const video::SVertexStream& stream = meshBuffer.vertexStreams->m_streams[0];
    result.buffer = stream.buffer.get();
    result.base = result.buffer->map(static_cast<video::E_BUFFER_READ_MAP_ACCESS>(1)) + stream.offset;
    result.stride = stream.field0e;
    return result;
}

// The vertex pushed away from the light by the bias factor (the cap vertices are moved after their projection was taken).
void biasVertex(float* vertex, const float* light, float bias) {
    auto direction = v3(vertex[0] - light[0], vertex[1] - light[1], vertex[2] - light[2]);
    direction.normalize();
    vertex[0] += bias * direction.X;
    vertex[1] += bias * direction.Y;
    vertex[2] += bias * direction.Z;
}

void growVertexRange(CShadowVolumeSceneNode::SShadowVolume* volume, std::uint32_t low, std::uint32_t high) {
    volume->minVertex = static_cast<std::uint16_t>(std::min<std::uint32_t>(volume->minVertex, low));
    volume->maxVertex = static_cast<std::uint16_t>(std::max<std::uint32_t>(volume->maxVertex, high));
}

}  // namespace

// ---- SShadowVolume ----

// 0x6fe860 (C2) / 0x6fe8cc (C1)
CShadowVolumeSceneNode::SShadowVolume::SShadowVolume() = default;

// 0x6fe98c
CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(const SShadowVolume& other) = default;

// 0x700ce4
CShadowVolumeSceneNode::SShadowVolume& CShadowVolumeSceneNode::SShadowVolume::operator=(const SShadowVolume& other) {
    silhouette = other.silhouette;
    unk_04 = other.unk_04;
    unk_08 = other.unk_08;
    unk_0c = other.unk_0c;
    vertices = other.vertices;
    indices = other.indices;
    indexCount = other.indexCount;
    vertexCount = other.vertexCount;
    streams = other.streams;
    unk_24 = other.unk_24;
    unk_28 = other.unk_28;
    primitives = other.primitives;
    unk_44 = other.unk_44;
    minVertex = other.minVertex;
    maxVertex = other.maxVertex;
    return *this;
}

CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(SShadowVolume&& other) noexcept {
    *this = other;
    other.silhouette = nullptr;
    other.vertices = nullptr;
    other.indices = nullptr;
}

CShadowVolumeSceneNode::SShadowVolume& CShadowVolumeSceneNode::SShadowVolume::operator=(SShadowVolume&& other) noexcept {
    if (this != &other) {
        delete silhouette;
        delete[] vertices;
        delete[] indices;
        *this = static_cast<const SShadowVolume&>(other);
        other.silhouette = nullptr;
        other.vertices = nullptr;
        other.indices = nullptr;
    }
    return *this;
}

// 0x700e44 (D1) / 0x7012a4 (D2)
CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume() {
    delete silhouette;
    delete[] vertices;
    delete[] indices;
}

// ---- SSilhouette ----

// 0x6ffdf8 (C1) / 0x6ffe20 (C2)
CShadowVolumeSceneNode::SSilhouette::SSilhouette(const boost::intrusive_ptr<const CMeshBuffer>& meshBuffer) : CMeshConnectivity(meshBuffer) {}

// 0x6ffd88 (D1) / 0x6ffdc0 (D2)
CShadowVolumeSceneNode::SSilhouette::~SSilhouette() {
    delete[] backFacing;
}

// 0x701358
void CShadowVolumeSceneNode::SSilhouette::createSilhouette(core::vector3d<float> light, video::E_LIGHT_TYPE type,
                                                           const boost::intrusive_ptr<const CMeshBuffer>& meshBuffer) {
    const SPositions positions = mapPositions(*meshBuffer);
    const std::uint16_t* tri = triangles;
    const std::uint32_t count = triangleCount;
    delete[] backFacing;
    backFacing = new std::uint8_t[count];
    float lx = light.X;
    float ly = light.Y;
    float lz = light.Z;
    for (std::uint32_t face = 0; face < count; ++face, tri += 3) {
        const float* p0 = positions.at(tri[0]);
        if (type != 2) {  // a positional light: the vector from the first vertex to the light
            lx = light.X - p0[0];
            ly = light.Y - p0[1];
            lz = light.Z - p0[2];
        }
        const float* p2 = positions.at(tri[2]);
        const float* p1 = positions.at(tri[1]);
        const float ax = p1[0] - p0[0], ay = p1[1] - p0[1], az = p1[2] - p0[2];
        const float bx = p2[0] - p0[0], by = p2[1] - p0[1], bz = p2[2] - p0[2];
        backFacing[face] = 0;
        if (lx * (bz * -ay + az * by) + ly * (bx * -az + ax * bz) + lz * (by * -ax + ay * bx) <= 0.0f) {
            backFacing[face] = 1;
        }
    }
    // The orientation of an edge in the flagged triangle: (a, b) when the triangle runs a -> b, else (b, a).
    const auto orient = [&](std::uint32_t face, std::uint16_t a, std::uint16_t b) {
        const std::uint16_t* t = triangles + 3 * face;
        std::pair<std::uint16_t, std::uint16_t> result(a, b);
        for (int k = 0; k < 3; ++k) {
            if (t[k] == a) {
                result = (t[k == 2 ? 0 : k + 1] == b) ? std::make_pair(a, b) : std::make_pair(b, a);
            }
        }
        return result;
    };
    for (const SEdge& edge : edges) {
        if (edge.faceCount == 1) {
            if (backFacing[edge.faces[0]]) {
                silhouetteEdges.push_back(orient(edge.faces[0], edge.vertexA, edge.vertexB));
            }
        } else if (edge.faceCount == 2) {
            const bool first = backFacing[edge.faces[0]] != 0;
            if (first != (backFacing[edge.faces[1]] != 0)) {
                silhouetteEdges.push_back(orient(first ? edge.faces[0] : edge.faces[1], edge.vertexA, edge.vertexB));
            }
        }
    }
    positions.buffer->unmap();
}

// ---- CShadowVolumeSceneNode ----

// 0x6ffb1c (C1) / 0x6ffc70 (C2)
CShadowVolumeSceneNode::CShadowVolumeSceneNode(video::IVideoDriver* driver, const boost::intrusive_ptr<const IMesh>& mesh, int id,
                                               E_SHADOW_VOLUME_TYPE type, float projectionDistance)
    : IShadowVolumeSceneNode(id), shadowMesh(mesh), infinity(projectionDistance) {
    const bool derived = (type & 0xF) != 0;
    unk_187 = (type & 0xCC) != 0;
    needsUpdate = derived;
    zFail = (type & 0xAA) != 0;
    unk_184 = derived;
    setAutomaticCulling(0);
    IShadowVolumeSceneNode::setupMaterials(driver);
}

// 0x700fd4 (D1) / 0x7010b0 (D2) / 0x701094 (D0)
CShadowVolumeSceneNode::~CShadowVolumeSceneNode() {
    delete[] scratchIndices;
    shadowVolumes.clear();
    IShadowVolumeSceneNode::unSetupMaterials();
}

// 0x6fe854
E_SCENE_NODE_TYPE CShadowVolumeSceneNode::getType() const {
    return static_cast<E_SCENE_NODE_TYPE>(kTagShadowVolume);
}

// 0x6fe97c
const core::aabbox3d<float>& CShadowVolumeSceneNode::getBoundingBox() const {
    return boundingBox;
}

// 0x6fe938
void CShadowVolumeSceneNode::setShadowMesh(const boost::intrusive_ptr<const IMesh>& mesh) {
    shadowMesh = mesh;
    needsUpdate = true;
}

// 0x6fe984
void CShadowVolumeSceneNode::SetBiasFactor(float factor) {
    biasFactor = factor;
}

// 0x6fe974
std::uint32_t CShadowVolumeSceneNode::load(io::IReadFile*) {
    return 0;
}

// 0x6ffa7c
int CShadowVolumeSceneNode::onRegisterSceneNode() {
    const boost::intrusive_ptr<video::CMaterial> none;
    sceneManager->registerNodeForRendering(this, none, nullptr, 1, nullptr, 0x7FFFFFFF);
    if (!unk_130) {
        sceneManager->registerNodeForRendering(this, none, nullptr, 2, nullptr, 0x7FFFFFFF);
    }
    return 1;
}

// 0x6feaa0
core::vector3d<float> CShadowVolumeSceneNode::getProjectedVertex(const core::vector3d<float>& vertex, const core::vector3d<float>& light,
                                                                  video::E_LIGHT_TYPE type, bool normalize) {
    core::vector3d<float> result;
    if (type == 2) {  // directional: the light is the direction already
        result = v3(vertex.X - light.X, vertex.Y - light.Y, vertex.Z - light.Z);
    } else {
        core::vector3d<float> direction = v3(light.X - vertex.X, light.Y - vertex.Y, light.Z - vertex.Z);
        if (normalize) {
            direction.normalize();
        }
        result = v3(vertex.X - infinity * direction.X, vertex.Y - infinity * direction.Y, vertex.Z - infinity * direction.Z);
    }
    for (const core::plane3d<float>& plane : clippingPlanes) {
        core::vector3d<float> hit;
        if (plane.getIntersectionWithLimitedLine(vertex, result, hit)) {
            result = hit;
        }
    }
    return result;
}

// 0x6fec78
void CShadowVolumeSceneNode::createFacingTriangleVolume(const video::CPrimitiveStream::SMapBuffer<const std::uint16_t>& indices,
                                                        std::uint32_t triangleCount, const core::vector3d<float>& light,
                                                        video::E_LIGHT_TYPE type, SShadowVolume* volume, bool cap) {
    if (scratchIndices == nullptr || 6 * triangleCount > scratchCapacity) {
        delete[] scratchIndices;
        scratchCapacity = 6 * triangleCount;
        scratchIndices = new std::uint16_t[scratchCapacity];
    }
    // The projection source: a directional light is scaled by the projection distance.
    core::vector3d<float> source = light;
    if (type == 2) {
        source = v3(infinity * light.X, infinity * light.Y, infinity * light.Z);
    }
    float* const vertices = volume->vertices;
    const auto vertexAt = [&](std::uint32_t index) { return vertices + 3 * index; };
    std::uint32_t edgeCount = 0;
    for (std::uint32_t face = 0; face < triangleCount; ++face) {
        const std::uint16_t* tri = indices.data + 3 * face;
        const std::uint16_t a = static_cast<std::uint16_t>(2 * tri[0]);
        const std::uint16_t b = static_cast<std::uint16_t>(2 * tri[1]);
        const std::uint16_t c = static_cast<std::uint16_t>(2 * tri[2]);
        const float* p0 = vertexAt(a);
        const float* p1 = vertexAt(b);
        const float* p2 = vertexAt(c);
        const float ex = p2[0] - p0[0], ey = p2[1] - p0[1], ez = p2[2] - p0[2];
        const float fx = p1[0] - p0[0], fy = p1[1] - p0[1], fz = p1[2] - p0[2];
        float lx = light.X, ly = light.Y, lz = light.Z;
        if (type != 2) {
            lx -= p0[0];
            ly -= p0[1];
            lz -= p0[2];
        }
        const float dot = lx * (fz * -ey + ez * fy) + ly * (fx * -ez + ex * fz) + lz * (fy * -ex + ey * fx);
        if (!(dot >= 0.0f)) {
            continue;
        }
        scratchIndices[2 * edgeCount] = a;
        scratchIndices[2 * edgeCount + 1] = b;
        scratchIndices[2 * edgeCount + 2] = b;
        scratchIndices[2 * edgeCount + 3] = c;
        scratchIndices[2 * edgeCount + 4] = c;
        scratchIndices[2 * edgeCount + 5] = a;
        edgeCount += 3;
        if (cap && volume->vertices != nullptr && volume->indices != nullptr) {
            const std::uint16_t index[3] = {a, b, c};
            for (int k = 0; k < 3; ++k) {
                const float* v = vertexAt(index[k]);
                const core::vector3d<float> projected = getProjectedVertex(v3(v[0], v[1], v[2]), source, type, true);
                float* destination = vertexAt(index[k] + 1u);
                destination[0] = projected.X;
                destination[1] = projected.Y;
                destination[2] = projected.Z;
            }
            const float sourceArray[3] = {source.X, source.Y, source.Z};
            for (int k = 0; k < 3; ++k) {
                biasVertex(vertexAt(index[k]), sourceArray, biasFactor);
            }
            std::uint16_t* out = volume->indices + volume->indexCount;
            out[0] = a;
            out[1] = b;
            out[2] = c;
            out[3] = static_cast<std::uint16_t>(a + 1);
            out[4] = static_cast<std::uint16_t>(c + 1);
            out[5] = static_cast<std::uint16_t>(b + 1);
            volume->indexCount += 6;
            growVertexRange(volume, std::min({a, b, c}), std::max({a + 1u, b + 1u, c + 1u}));
        }
    }
    for (std::uint32_t e = 0; e < edgeCount; ++e) {
        const std::uint16_t a = scratchIndices[2 * e];
        const std::uint16_t b = scratchIndices[2 * e + 1];
        const std::uint16_t ends[2] = {a, b};
        for (const std::uint16_t end : ends) {
            const float* v = vertexAt(end);
            const core::vector3d<float> projected = getProjectedVertex(v3(v[0], v[1], v[2]), source, type, cap);
            float* destination = vertexAt(end + 1u);
            destination[0] = projected.X;
            destination[1] = projected.Y;
            destination[2] = projected.Z;
        }
        if (volume->vertices != nullptr && volume->indices != nullptr) {
            std::uint16_t* out = volume->indices + volume->indexCount;
            out[0] = a;
            out[1] = static_cast<std::uint16_t>(a + 1);
            out[2] = b;
            out[3] = b;
            out[4] = static_cast<std::uint16_t>(a + 1);
            out[5] = static_cast<std::uint16_t>(b + 1);
            volume->indexCount += 6;
        }
        growVertexRange(volume, std::min(a, b), std::max(a + 2u, b + 2u));
    }
}

// 0x701998
void CShadowVolumeSceneNode::createSilhouetteVolume(const boost::intrusive_ptr<const CMeshBuffer>& meshBuffer,
                                                    const video::CPrimitiveStream::SMapBuffer<const std::uint16_t>&, std::uint32_t,
                                                    const core::vector3d<float>& light, video::E_LIGHT_TYPE type, SShadowVolume* volume,
                                                    bool cap) {
    if (volume->silhouette == nullptr) {
        volume->silhouette = new SSilhouette(meshBuffer);
        volume->silhouette->creatEdgeList(unk_184);
    }
    SSilhouette& silhouette = *volume->silhouette;
    const bool sameLight = floatOf(volume->unk_04) == light.X && floatOf(volume->unk_08) == light.Y && floatOf(volume->unk_0c) == light.Z;
    if (!(sameLight && !needsUpdate && unk_184)) {
        silhouette.silhouetteEdges.clear();
        silhouette.createSilhouette(light, type, meshBuffer);
        volume->unk_04 = bitsOf(light.X);
        volume->unk_08 = bitsOf(light.Y);
        volume->unk_0c = bitsOf(light.Z);
    }
    core::vector3d<float> source = light;
    if (type == 2) {
        source = v3(infinity * light.X, infinity * light.Y, infinity * light.Z);
    }
    const float sourceArray[3] = {source.X, source.Y, source.Z};
    float* const vertices = volume->vertices;
    const auto vertexAt = [&](std::uint32_t index) { return vertices + 3 * index; };
    const auto project = [&](std::uint32_t index, bool normalize) {
        const float* v = vertexAt(index);
        const core::vector3d<float> projected = getProjectedVertex(v3(v[0], v[1], v[2]), source, type, normalize);
        float* destination = vertexAt(index + 1u);
        destination[0] = projected.X;
        destination[1] = projected.Y;
        destination[2] = projected.Z;
    };
    if (cap) {
        for (std::uint32_t face = 0; face < silhouette.triangleCount; ++face) {
            if (!silhouette.backFacing[face]) {
                continue;
            }
            const std::uint16_t* tri = silhouette.triangles + 3 * face;
            const std::uint16_t a = static_cast<std::uint16_t>(2 * tri[0]);
            const std::uint16_t b = static_cast<std::uint16_t>(2 * tri[1]);
            const std::uint16_t c = static_cast<std::uint16_t>(2 * tri[2]);
            project(a, true);
            project(b, true);
            project(c, true);
            biasVertex(vertexAt(a), sourceArray, biasFactor);
            biasVertex(vertexAt(b), sourceArray, biasFactor);
            biasVertex(vertexAt(c), sourceArray, biasFactor);
            std::uint16_t* out = volume->indices + volume->indexCount;
            out[0] = a;
            out[1] = b;
            out[2] = c;
            out[3] = static_cast<std::uint16_t>(a + 1);
            out[4] = static_cast<std::uint16_t>(c + 1);
            out[5] = static_cast<std::uint16_t>(b + 1);
            volume->indexCount += 6;
            growVertexRange(volume, std::min({a, b, c}), std::max({a + 1u, b + 1u, c + 1u}));
        }
    }
    for (const auto& edge : silhouette.silhouetteEdges) {
        const std::uint32_t a = 2u * edge.first;
        const std::uint32_t b = 2u * edge.second;
        project(a, cap);
        project(b, cap);
        if (volume->vertices != nullptr) {
            std::uint16_t* out = volume->indices + volume->indexCount;
            out[0] = static_cast<std::uint16_t>(a);
            out[1] = static_cast<std::uint16_t>(a + 1);
            out[2] = static_cast<std::uint16_t>(b);
            out[3] = static_cast<std::uint16_t>(b);
            out[4] = static_cast<std::uint16_t>(a + 1);
            out[5] = static_cast<std::uint16_t>(b + 1);
            volume->indexCount += 6;
        }
        growVertexRange(volume, std::min(a, b), std::max(a + 2u, b + 2u));
    }
}

// 0x70225c
void CShadowVolumeSceneNode::createShadowVolume(const boost::intrusive_ptr<const CMeshBuffer>& meshBuffer, const core::vector3d<float>& light,
                                                video::E_LIGHT_TYPE type) {
    const video::CPrimitiveStream& primitiveStream = meshBuffer->primitiveStream;
    video::CPrimitiveStream::SMapBuffer<const std::uint16_t> indices;
    indices.reset(primitiveStream, static_cast<video::E_BUFFER_READ_MAP_ACCESS>(1));
    const std::uint32_t triangleCount = primitiveStream.m_count / 3;
    const std::uint32_t sourceVertices = meshBuffer->vertexStreams->m_field08;
    bool fresh = false;
    SShadowVolume* volume;
    const auto allocateArrays = [&](SShadowVolume* v) {
        v->vertexCount = 2 * sourceVertices;
        v->indexCount = 0;
        delete[] v->vertices;
        v->vertices = new float[3u * v->vertexCount]();
        delete[] v->indices;
        v->indices = new std::uint16_t[24u * triangleCount];
        v->minVertex = 0xFFFF;
        v->maxVertex = 0;
    };
    if (usedVolumes < shadowVolumes.size()) {
        volume = &shadowVolumes[usedVolumes];
        if (volume->vertexCount >= 2 * sourceVertices) {
            volume->indexCount = 0;
        } else {
            allocateArrays(volume);
            fresh = true;
        }
    } else {
        shadowVolumes.push_back(SShadowVolume());
        volume = &shadowVolumes.back();
        allocateArrays(volume);
        fresh = true;
    }
    ++usedVolumes;
    if (!unk_184 || needsUpdate || fresh) {
        const SPositions positions = mapPositions(*meshBuffer);
        for (std::uint32_t i = 0; i < sourceVertices; ++i) {
            const float* position = positions.at(i);
            float* destination = volume->vertices + 6u * i;
            destination[0] = position[0];
            destination[1] = position[1];
            destination[2] = position[2];
        }
        positions.buffer->unmap();
    }
    if (unk_187) {
        createSilhouetteVolume(meshBuffer, indices, triangleCount, light, type, volume, zFail);
    } else {
        createFacingTriangleVolume(indices, triangleCount, light, type, volume, zFail);
    }
    if (volume->streams) {
        if (volume->streams->m_field08 != volume->vertexCount) {
            volume->streams->m_field08 = volume->vertexCount;
        }
        // Port: the buffers keep pointing at the arrays; a reallocation above moves them.
        if (volume->unk_24) {
            auto* vertexBuffer = static_cast<video::IBuffer*>(volume->unk_24.get());
            vertexBuffer->m_data = reinterpret_cast<std::uint8_t*>(volume->vertices);
            vertexBuffer->m_size = 12u * volume->vertexCount;
            if (vertexBuffer->m_usage != 4 && vertexBuffer->m_data != nullptr) {
                vertexBuffer->m_flags12 |= video::IBuffer::kFlagHasData;
            }
        }
        if (volume->unk_28) {
            auto* indexBuffer = static_cast<video::IBuffer*>(volume->unk_28.get());
            indexBuffer->m_data = reinterpret_cast<std::uint8_t*>(volume->indices);
            if (indexBuffer->m_usage != 4 && indexBuffer->m_data != nullptr) {
                indexBuffer->m_flags12 |= video::IBuffer::kFlagHasData;
            }
        }
        volume->primitives.m_vertexStart = volume->minVertex;
        volume->primitives.m_count = volume->indexCount;
        volume->primitives.m_vertexEnd = volume->maxVertex;
    } else {
        video::IVideoDriver* driver = sceneManager->driver;
        volume->streams = video::CVertexStreams::allocate(1u);
        auto vertexBuffer = driver->createBuffer(static_cast<video::E_BUFFER_TYPE>(0), static_cast<video::E_BUFFER_USAGE>(4),
                                                 12u * volume->vertexCount, volume->vertices, false);
        volume->unk_24 = vertexBuffer;
        volume->streams->setupStreams(vertexBuffer, ~0u);
        volume->streams->m_field08 = volume->vertexCount;
        auto indexBuffer = driver->createBuffer(static_cast<video::E_BUFFER_TYPE>(1), static_cast<video::E_BUFFER_USAGE>(4),
                                                6u * volume->vertexCount, volume->indices, false);
        volume->unk_28 = indexBuffer;
        video::CPrimitiveStream stream;
        stream.m_indexBuffer = indexBuffer;
        stream.m_offset = 0;
        stream.m_count = volume->indexCount;
        stream.m_vertexStart = volume->minVertex;
        stream.m_vertexEnd = volume->maxVertex;
        stream.m_indexType = 1;
        stream.m_primitiveType = 6;
        volume->primitives = stream;
    }
    if (indices.data != nullptr) {
        primitiveStream.m_indexBuffer->unmap();
    }
}

// 0x7029d4
void CShadowVolumeSceneNode::updateShadowVolumes() {
    usedVolumes = 0;
    if (!shadowMesh) {
        return;
    }
    const bool ownLights = !lights.empty();
    video::IVideoDriver* driver = sceneManager->driver;
    const std::uint32_t bufferCount = shadowMesh->getMeshBufferCount();
    const std::uint32_t lightCount = ownLights ? static_cast<std::uint32_t>(lights.size()) : driver->m_dynamicLightCount;
    core::CMatrix4<float> inverse = parent->getAbsoluteTransformation();
    const core::vector3d<float> parentPosition = parent->getAbsolutePosition();
    inverse.makeInverse();
    // Every mesh buffer of the shadow mesh gets a volume for a light that casts one. (The decompilation advances the light index in
    // a way that depends on the buffer count; this is the plain increment.)
    const auto build = [&](core::vector3d<float> where, video::E_LIGHT_TYPE type) {
        for (std::uint32_t i = 0; i < bufferCount; ++i) {
            const boost::intrusive_ptr<const CMeshBuffer> meshBuffer = shadowMesh->getMeshBuffer(i);
            createShadowVolume(meshBuffer, where, type);
        }
    };
    for (std::uint32_t index = 0; index < lightCount; ++index) {
        const boost::intrusive_ptr<video::CLight> light = ownLights ? lights[index] : driver->getDynamicLight(static_cast<std::uint16_t>(index));
        const video::E_LIGHT_TYPE type = light->m_type;
        if (type == 3) {
            continue;
        }
        const float* m = light->m_transformationSource.matrix->M;
        const float* inv = inverse.M;
        if (type <= 1) {
            if (!light->m_castShadows) {
                continue;
            }
            const float x = m[12], y = m[13], z = m[14];
            const float dx = x - parentPosition.X, dy = y - parentPosition.Y, dz = z - parentPosition.Z;
            if (light->m_radius * light->m_radius * 4.0f >= std::fabs(dx * dx + dy * dy) + dz * dz) {
                const core::vector3d<float> where = v3((x * inv[0] + y * inv[4] + z * inv[8]) + inv[12], (x * inv[1] + y * inv[5] + z * inv[9]) + inv[13],
                                                  (x * inv[2] + y * inv[6] + z * inv[10]) + inv[14]);
                if (where.X != 0.0f || where.Y != 0.0f || where.Z != 0.0f) {
                    build(where, type);
                }
            }
        } else if (type == 2) {
            const float x = m[8], y = m[9], z = m[10];
            const core::vector3d<float> where = v3(x * inv[0] + y * inv[4] + z * inv[8], x * inv[1] + y * inv[5] + z * inv[9],
                                              x * inv[2] + y * inv[6] + z * inv[10]);
            if (where.X != 0.0f || where.Y != 0.0f || where.Z != 0.0f) {
                build(where, 2);
            }
        }
    }
    needsUpdate = false;
}

// 0x700ad4
void CShadowVolumeSceneNode::render(void* renderPass) {
    video::IVideoDriver* driver = sceneManager->driver;
    if (usedVolumes == 0 || driver == nullptr) {
        return;
    }
    driver->setTransform(1, parent->getAbsoluteTransformation());
    const auto pass = reinterpret_cast<std::uintptr_t>(renderPass);
    if (pass == 1) {
        IShadowVolumeSceneNode::Material->m_technique = zFail ? TechniqueZFail : TechniqueZPass;
    } else if (pass == 2) {
        IShadowVolumeSceneNode::Material->m_technique = zFail ? TechniqueZFailSecond : TechniqueZPassSecond;
    }
    const std::uint8_t technique = IShadowVolumeSceneNode::Material ? IShadowVolumeSceneNode::Material->getTechnique() : 255;
    driver->setMaterial(IShadowVolumeSceneNode::Material, technique, nullptr);
    for (std::uint32_t i = 0; i < usedVolumes; ++i) {
        const SShadowVolume& volume = shadowVolumes[i];
        const boost::intrusive_ptr<const video::CVertexStreams> streams = volume.streams;
        const boost::intrusive_ptr<const CMeshBuffer> none;
        driver->draw(streams, volume.primitives, nullptr, none);
    }
}

}  // namespace glitch::scene
