// Port addition (remaster, not in the binary; REMASTER.md "Normal maps"): vertex tangents for the static meshes that use a
// normal map.
//
// The remaster shaders first built the normal map's tangent frame per pixel from screen-space derivatives. That frame is
// constant over a triangle and changes where the texture mapping changes direction, so on floors whose mapping is stretched
// unevenly (swamp water, ice) the relief drew lines along the triangle edges. Real per-vertex tangents interpolate smoothly.
//
// CColladaDatabase::constructGeometry calls the hook for each material binding of a static geometry instance before its
// vertex-attribute map is built. When the material has a normal map (NormalSampler set by the material hook) and the mesh
// buffer has positions, texture coordinates and triangles, the buffer's stream table is replaced by a copy with two more
// streams, Tangent0 (attribute 20, float4: the unit tangent and w = 2) and Binormal0 (24, float3) in a new vertex buffer: dP/du
// and dP/dv of every triangle, area weighted and summed per vertex, then normalised. The existing streams, the vertex count, the quantisation block and
// the flags are carried over; a buffer shared by several instances is extended once. The world shader reads the attributes
// "Tangent" and "Binormal". The w = 2 marks these tangents: a mesh without them gets the attribute default (1, 0, 0, 1), and the
// original meshes that carry their own 3-component tangents (for the specular variants) read w = 1, so for both the shader keeps
// the derivative frame. A buffer that already has tangents is left as it is.
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <utility>
#include <vector>

#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_parameters.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada {
extern void (*g_dh2GeometryBindingHook)(video::IVideoDriver* driver, scene::CMeshBuffer* buffer, video::CMaterial* material);
}

namespace {

using glitch::video::CVertexStreams;
using glitch::video::SVertexStream;

constexpr uint32_t kTangentBit = 20, kBinormalBit = 24;
constexpr uint16_t kFloat = 6;
int g_built = 0, g_skipped = 0;

struct V3 {
    float x = 0, y = 0, z = 0;
};

// One component of a stream element. Integer texture coordinates are normalised (the driver passes them normalised, all but the
// position stream); positions are raw and dequantised by the table's block when the quantised flag is set.
float component(const uint8_t* p, uint16_t type, bool normalised) {
    switch (type) {
        case 0: { int8_t v; std::memcpy(&v, p, 1); return normalised ? v / 127.0f : v; }
        case 1: { uint8_t v; std::memcpy(&v, p, 1); return normalised ? v / 255.0f : v; }
        case 2: { int16_t v; std::memcpy(&v, p, 2); return normalised ? v / 32767.0f : v; }
        case 3: { uint16_t v; std::memcpy(&v, p, 2); return normalised ? v / 65535.0f : v; }
        case 6: { float v; std::memcpy(&v, p, 4); return v; }
        default: return 0.0f;
    }
}

bool supported(uint16_t type) { return type <= 3 || type == kFloat; }

uint32_t typeSize(uint16_t type) { return type == kFloat ? 4u : (type <= 1 ? 1u : 2u); }

const SVertexStream* findStream(const CVertexStreams& streams, uint32_t attribute) {
    for (const SVertexStream& s : streams.m_streams) {
        if (s.attribute == attribute) return &s;
    }
    return nullptr;
}

bool hasNormalMap(glitch::video::CMaterial* material) {
    glitch::video::CMaterialRenderer* renderer = material->m_renderer.get();
    if (renderer == nullptr) return false;
    const uint16_t id = renderer->getParameterID("NormalSampler", 0);
    if (id == 0xffff) return false;
    boost::intrusive_ptr<glitch::video::ITexture> texture;
    return material->parameters.getParameter(id, 0u, texture) && texture;
}

void BuildTangents(glitch::video::IVideoDriver* driver, glitch::scene::CMeshBuffer* buffer, glitch::video::CMaterial* material) {
    if (driver == nullptr || buffer == nullptr || material == nullptr || !buffer->vertexStreams || !hasNormalMap(material)) return;
    const boost::intrusive_ptr<CVertexStreams> old = buffer->vertexStreams;
    if ((old->m_attributeMask & (1u << kTangentBit)) != 0) return;  // a shared buffer already extended
    const glitch::video::CPrimitiveStream& prim = buffer->primitiveStream;
    const SVertexStream* pos = findStream(*old, 0);
    const SVertexStream* uv = findStream(*old, 1);
    const uint32_t vertexCount = old->m_field08;
    if (pos == nullptr || uv == nullptr || !pos->buffer || !uv->buffer || vertexCount == 0 || pos->field0c < 3 || uv->field0c < 2 ||
        !supported(pos->field0a) || !supported(uv->field0a) || (prim.m_primitiveType != 6 && prim.m_primitiveType != 4)) {
        ++g_skipped;
        return;
    }

    // dequantisation: record 0 (scale, offset) for the positions, record 1 for the first texture coordinate set
    const bool quantised = (old->m_flags & CVertexStreams::kFlagQuantized) != 0;
    V3 pScale{1, 1, 1}, pOffset, tScale{1, 1, 1}, tOffset;
    if (quantised && old->m_quantization.size() >= 2) {
        pScale = {old->m_quantization[0].X, old->m_quantization[0].Y, old->m_quantization[0].Z};
        pOffset = {old->m_quantization[1].X, old->m_quantization[1].Y, old->m_quantization[1].Z};
        if (old->m_quantization.size() >= 4) {
            tScale = {old->m_quantization[2].X, old->m_quantization[2].Y, old->m_quantization[2].Z};
            tOffset = {old->m_quantization[3].X, old->m_quantization[3].Y, old->m_quantization[3].Z};
        }
    }

    const uint8_t* pBase = static_cast<const glitch::video::IBuffer*>(pos->buffer.get())->map(static_cast<glitch::video::E_BUFFER_READ_MAP_ACCESS>(1));
    const uint8_t* tBase = static_cast<const glitch::video::IBuffer*>(uv->buffer.get())->map(static_cast<glitch::video::E_BUFFER_READ_MAP_ACCESS>(1));
    const uint8_t* iBase = prim.m_indexBuffer
                               ? static_cast<const glitch::video::IBuffer*>(prim.m_indexBuffer.get())->map(static_cast<glitch::video::E_BUFFER_READ_MAP_ACCESS>(1))
                               : nullptr;
    auto unmapAll = [&]() {
        if (pBase) pos->buffer->unmap();
        if (tBase) uv->buffer->unmap();
        if (iBase) prim.m_indexBuffer->unmap();
    };
    if (pBase == nullptr || tBase == nullptr || (prim.m_indexBuffer && iBase == nullptr)) {
        unmapAll();
        ++g_skipped;
        return;
    }

    std::vector<V3> P(vertexCount), T(vertexCount), B(vertexCount);
    std::vector<float> U(vertexCount * 2u);
    const uint32_t ps = typeSize(pos->field0a), ts = typeSize(uv->field0a);
    for (uint32_t i = 0; i < vertexCount; ++i) {
        const uint8_t* p = pBase + pos->offset + static_cast<size_t>(pos->field0e) * i;
        P[i] = {component(p, pos->field0a, false) * pScale.x + pOffset.x, component(p + ps, pos->field0a, false) * pScale.y + pOffset.y,
                component(p + 2 * ps, pos->field0a, false) * pScale.z + pOffset.z};
        const uint8_t* t = tBase + uv->offset + static_cast<size_t>(uv->field0e) * i;
        U[2 * i] = component(t, uv->field0a, true) * tScale.x + tOffset.x;
        U[2 * i + 1] = component(t + ts, uv->field0a, true) * tScale.y + tOffset.y;
    }
    auto index = [&](uint32_t k) -> uint32_t {
        if (iBase == nullptr) return prim.m_vertexStart + k;
        const uint8_t* q = iBase + prim.m_offset;
        switch (prim.m_indexType) {
            case 0: return q[k];
            case 1: { uint16_t v; std::memcpy(&v, q + 2 * k, 2); return v; }
            default: { uint32_t v; std::memcpy(&v, q + 4 * k, 4); return v; }
        }
    };
    const uint32_t count = prim.m_count;
    const uint32_t triangles = prim.m_primitiveType == 6 ? count / 3 : (count >= 3 ? count - 2 : 0);
    for (uint32_t tri = 0; tri < triangles; ++tri) {
        uint32_t a, b, c;
        if (prim.m_primitiveType == 6) {
            a = index(3 * tri); b = index(3 * tri + 1); c = index(3 * tri + 2);
        } else {
            a = index(tri); b = index(tri + 1); c = index(tri + 2);
            if (tri & 1u) std::swap(b, c);
        }
        if (a >= vertexCount || b >= vertexCount || c >= vertexCount || a == b || b == c || a == c) continue;
        const V3 e1{P[b].x - P[a].x, P[b].y - P[a].y, P[b].z - P[a].z}, e2{P[c].x - P[a].x, P[c].y - P[a].y, P[c].z - P[a].z};
        const float du1 = U[2 * b] - U[2 * a], dv1 = U[2 * b + 1] - U[2 * a + 1];
        const float du2 = U[2 * c] - U[2 * a], dv2 = U[2 * c + 1] - U[2 * a + 1];
        const float det = du1 * dv2 - du2 * dv1;
        if (std::fabs(det) < 1e-12f) continue;
        const float r = 1.0f / det;
        V3 t{(e1.x * dv2 - e2.x * dv1) * r, (e1.y * dv2 - e2.y * dv1) * r, (e1.z * dv2 - e2.z * dv1) * r};
        V3 bn{(e2.x * du1 - e1.x * du2) * r, (e2.y * du1 - e1.y * du2) * r, (e2.z * du1 - e1.z * du2) * r};
        // weight: the triangle's area, with the per-triangle frame normalised (a stretched mapping must not dominate)
        const V3 n{e1.y * e2.z - e1.z * e2.y, e1.z * e2.x - e1.x * e2.z, e1.x * e2.y - e1.y * e2.x};
        const float area = std::sqrt(n.x * n.x + n.y * n.y + n.z * n.z);
        const float lt = std::sqrt(t.x * t.x + t.y * t.y + t.z * t.z), lb = std::sqrt(bn.x * bn.x + bn.y * bn.y + bn.z * bn.z);
        if (lt < 1e-20f || lb < 1e-20f || !(area > 0.0f)) continue;
        const float wt = area / lt, wb = area / lb;
        for (uint32_t v : {a, b, c}) {
            T[v].x += t.x * wt; T[v].y += t.y * wt; T[v].z += t.z * wt;
            B[v].x += bn.x * wb; B[v].y += bn.y * wb; B[v].z += bn.z * wb;
        }
    }
    unmapAll();

    // the new vertex buffer: float4 tangent (w = 2) + float3 binormal per vertex, normalised (zero where no triangle gave a frame)
    const uint32_t stride = 28;
    auto* storage = new uint8_t[static_cast<size_t>(vertexCount) * stride];
    for (uint32_t i = 0; i < vertexCount; ++i) {
        float t[3] = {T[i].x, T[i].y, T[i].z}, bn[3] = {B[i].x, B[i].y, B[i].z};
        const float lt = std::sqrt(t[0] * t[0] + t[1] * t[1] + t[2] * t[2]), lb = std::sqrt(bn[0] * bn[0] + bn[1] * bn[1] + bn[2] * bn[2]);
        for (int k = 0; k < 3; ++k) {
            t[k] = lt > 1e-20f ? t[k] / lt : 0.0f;
            bn[k] = lb > 1e-20f ? bn[k] / lb : 0.0f;
        }
        const float marker = 2.0f;
        std::memcpy(storage + static_cast<size_t>(i) * stride, t, 12);
        std::memcpy(storage + static_cast<size_t>(i) * stride + 12, &marker, 4);
        std::memcpy(storage + static_cast<size_t>(i) * stride + 16, bn, 12);
    }
    boost::intrusive_ptr<glitch::video::IBuffer> data = driver->createBuffer(static_cast<glitch::video::E_BUFFER_TYPE>(0),
                                                                             static_cast<glitch::video::E_BUFFER_USAGE>(4), 0, nullptr, true);
    if (!data) {
        delete[] storage;
        ++g_skipped;
        return;
    }
    data->reset(vertexCount * stride, storage, true);

    const uint32_t mask = old->m_attributeMask | (1u << kTangentBit) | (1u << kBinormalBit);
    uint8_t streamCount = 0;
    for (uint32_t m = mask; m != 0; m &= m - 1) ++streamCount;
    boost::intrusive_ptr<CVertexStreams> fresh = CVertexStreams::allocate(
        old->m_field08, mask, old->m_count0c, streamCount, nullptr, old->m_quantization.empty() ? nullptr : old->m_quantization.data());
    fresh->setStreams(old, old->m_attributeMask, 0, false);
    for (SVertexStream& s : fresh->m_streams) {
        if (s.attribute == kTangentBit || s.attribute == kBinormalBit) {
            glitch::video::SVertexStreamData d;
            d.buffer = data;
            d.offset = s.attribute == kTangentBit ? 0u : 16u;
            d.field08 = kFloat;
            d.field0c = s.attribute == kTangentBit ? 4 : 3;
            d.field0e = static_cast<uint16_t>(stride);
            fresh->setStream(&s, d, false);
        }
    }
    fresh->m_flags = static_cast<uint16_t>(fresh->m_flags | (old->m_flags & CVertexStreams::kFlagQuantized));
    buffer->vertexStreams = fresh;
    ++g_built;
#ifdef DH2_HOST_RUNNER
    if (std::getenv("DH2_NM_LOG") != nullptr) {
        std::fprintf(stdout, "TANGENTS built %d skipped %d: %u vertices, %u indices, pos type %u x%u quant %d, uv type %u, prim %u\n", g_built,
                     g_skipped, vertexCount, count, pos->field0a, pos->field0c, quantised ? 1 : 0, uv->field0a, prim.m_primitiveType);
    }
#endif
}

}  // namespace

void Dh2InstallTangents() { glitch::collada::g_dh2GeometryBindingHook = &BuildTangents; }
