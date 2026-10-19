#include <cstring>

#include "glitch-core-io/core/material_copy.hpp"
#include "glitch-core-io/core/vertex_transform.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::core {

namespace {

// A mapped stream (SVertexStream::SMapBuffer<void>): the stream and the mapped pointer already moved by the stream offset.
struct SStreamMap {
    const glitch::video::SVertexStream* stream = nullptr;
    std::uint8_t* data = nullptr;

    // The release of the map (the inline unmap of the listing's cleanup loops).
    void release() {
        if (data != nullptr) {
            stream->buffer->unmap();
            stream = nullptr;
            data = nullptr;
        }
    }
};

CMatrix4<float> flaggedIdentity() {
    CMatrix4<float> m{};
    m.M[0] = m.M[5] = m.M[10] = m.M[15] = 1.0f;
    m.flag = true;
    return m;
}

}  // namespace

// 0x60a384 _ZN6glitch4core21overrideVertexStreamsILb1ELb0ELb1EEEvPKhRKN5boost13intrusive_ptrIKNS_5video14CVertexStreamsEEEttS3_RKNS5_IS7_EEPKNS6_9CMaterialEhPKNS6_12IVideoDriverEtj
// The shader of the material's technique (first pass) lists the vertex attributes it reads (8-byte definitions, the attribute at +4);
// only attributes in (destination mask & shader mask & `mask`) are handled, in the shader's order. An attribute present in both tables
// is converted/copied for `last - first` vertices: the source stream is read-mapped (access 1) at vertex `first`, the destination
// stream mapped (access 5) at vertex `destinationFirst`. Position (0): the driver's transform 1 (world) as the position component, with
// the stream's quantization block as scale and offset when the table is flagged quantized (bit 2); the same pointer serves as both, as
// in the listing. Texture coordinates 1..8: an identity component with the set's scale and offset when flag bit 3 + set is set.
// Normals and tangents (17, 20..27): the driver's transform 1. Color 0 (18): four bytes copied per vertex. Any other attribute:
// nothing. An attribute the source lacks but the destination has is filled: 17 and 20..27 with (0, 1, 0), 18 with the diffuse color
// (shader parameter type 6, fetched once; white when the material has none), 1..8 with (0, 0); the others are left.
template <>
void overrideVertexStreams<true, false, true>(const unsigned char* sourceMap,
                                              const boost::intrusive_ptr<const glitch::video::CVertexStreams>& source,
                                              unsigned short first, unsigned short last, const unsigned char* destinationMap,
                                              const boost::intrusive_ptr<glitch::video::CVertexStreams>& destination,
                                              const glitch::video::CMaterial* material, unsigned char technique,
                                              const glitch::video::IVideoDriver* driver, unsigned short destinationFirst,
                                              unsigned mask) {
    using glitch::video::SVertexStream;

    const auto* shader = static_cast<const glitch::video::IShader*>(
        material->m_renderer->m_techniques[technique].passes[0].shader);
    const boost::intrusive_ptr<const glitch::video::IShader> shaderHold(shader, true);
    const unsigned attributeCount = shader->m_vertexAttributeDefCount;
    const unsigned active = destination->m_attributeMask & shader->m_vertexAttributeMask & mask;

    SStreamMap destinationMaps[30];
    SStreamMap sourceMaps[30];
    std::uint8_t color[4] = {0xFF, 0xFF, 0xFF, 0xFF};
    const unsigned short vertexCount = static_cast<unsigned short>(last - first);
    bool colorFetched = false;

    for (unsigned slot = 0; slot < attributeCount; ++slot) {
        const unsigned attribute = shader->m_vertexAttributeDefs[slot].attribute;
        if (((active >> attribute) & 1u) == 0) continue;
        const unsigned s = sourceMap[attribute];
        const unsigned d = destinationMap[attribute];

        if (s != 255) {
            const SVertexStream& sourceStream = source->m_streams[s];
            if (sourceStream.buffer) {
                SVertexStream& destinationStream = destination->m_streams[d];
                // Deviation (W2, HOST-RUNNER finding 7): the listing maps the destination stream unconditionally. CGenericBaker::configureAppendBuffer
                // (0x609ba4, checked) configures attributes 0..0x1b only, so an attribute 0x1c/0x1d that is in the shader's mask and in the append
                // buffer's attribute mask has no buffer and the map is a null call (latent in the original; reached when a driver reports such an
                // attribute active). It is skipped here, as the default-fill path below already does for a stream without a buffer.
                if (!destinationStream.buffer) continue;
                if (destinationMaps[d].data == nullptr) {
                    destinationMaps[d].stream = &destinationStream;
                    destinationMaps[d].data = destinationStream.buffer->map(5) + destinationStream.offset;
                }
                if (sourceMaps[s].data == nullptr) {
                    sourceMaps[s].stream = &sourceStream;
                    sourceMaps[s].data = const_cast<std::uint8_t*>(
                        static_cast<const glitch::video::IBuffer*>(sourceStream.buffer.get())
                            ->map(static_cast<glitch::video::E_BUFFER_READ_MAP_ACCESS>(1))) +
                                         sourceStream.offset;
                }
                const std::uint8_t* from = sourceMaps[s].data + sourceStream.field0e * first;
                std::uint8_t* to = destinationMaps[d].data + destinationStream.field0e * destinationFirst;
                const unsigned destinationStride = destinationStream.field0e;
                const unsigned sourceStride = sourceStream.field0e;
                const auto valueType = static_cast<glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE>(sourceStream.field0a);
                switch (attribute) {
                    case 0: {
                        const CMatrix4<float> world(driver->getTransform(1));
                        const bool quantized = (source->m_flags & 4u) != 0;
                        const glitch::core::vector3d<float>* block = quantized ? source->m_quantization.data() : nullptr;
                        STransformPositionComponent component(world, block, block);
                        copyComponentSF<vector3d<float>, STransformPositionComponent>(reinterpret_cast<vector3d<float>*>(to),
                                                                                      destinationStride, from, sourceStride,
                                                                                      valueType, vertexCount, component);
                        break;
                    }
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8: {
                        const unsigned set = static_cast<std::uint8_t>(sourceStream.attribute - 1);
                        const glitch::core::vector3d<float>* scale = nullptr;
                        const glitch::core::vector3d<float>* offset = nullptr;
                        if ((source->m_flags & (8u << set)) != 0) {
                            scale = &source->m_quantization[2 * set + 2];
                            offset = &source->m_quantization[2 * set + 3];
                        }
                        STransformTexCoordComponent component(flaggedIdentity(), scale, offset);
                        copyComponentSF<vector2d<float>, STransformTexCoordComponent>(reinterpret_cast<vector2d<float>*>(to),
                                                                                      destinationStride, from, sourceStride,
                                                                                      valueType, vertexCount, component);
                        break;
                    }
                    case 17:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27: {
                        STransformNormalComponent component{CMatrix4<float>(driver->getTransform(1))};
                        copyComponentBSF<vector3d<float>, STransformNormalComponent>(reinterpret_cast<vector3d<float>*>(to),
                                                                                     destinationStride, from, sourceStride,
                                                                                     valueType, vertexCount, component);
                        break;
                    }
                    case 18:
                        for (unsigned short v = 0; v != vertexCount; ++v) {
                            std::memcpy(to, from, sizeof(float));
                            from += sourceStride;
                            to += destinationStride;
                        }
                        break;
                    default:
                        break;
                }
                continue;
            }
        }

        // The source has no such stream: fill what the destination has with a default.
        if (d == 255) continue;
        SVertexStream& destinationStream = destination->m_streams[d];
        if (!destinationStream.buffer) continue;
        if (destinationMaps[d].data == nullptr) {
            destinationMaps[d].stream = &destinationStream;
            destinationMaps[d].data = destinationStream.buffer->map(5) + destinationStream.offset;
        }
        const unsigned destinationStride = destinationStream.field0e;
        std::uint8_t* to = destinationMaps[d].data + destinationStride * destinationFirst;
        if (attribute > 0x1B) continue;
        const unsigned bit = 1u << attribute;
        if ((bit & 0xFF20000u) != 0) {
            for (unsigned short v = 0; v != vertexCount; ++v) {
                float* f = reinterpret_cast<float*>(to);
                f[0] = 0.0f;
                f[1] = 1.0f;
                f[2] = 0.0f;
                to += destinationStride;
            }
        } else if ((bit & 0x40000u) != 0) {
            if (!colorFetched) {
                const unsigned id = material->m_renderer->getParameterID(6, 0);
                if (id != 0xFFFFu) {
                    // The listing keeps the four colour bytes as -1 and getParameter<SColor> only overwrites them when it succeeds, so a material whose
                    // diffuse colour is not stored as a byte colour leaves the vertices white (the port had zero-initialised the value: black vertices).
                    glitch::video::SColor value{};
                    std::memcpy(&value, color, 4);
                    material->parameters.getParameter<glitch::video::SColor>(static_cast<std::uint16_t>(id), 0, value);
                    std::memcpy(color, &value, 4);
                }
                colorFetched = true;
            }
            for (unsigned short v = 0; v != vertexCount; ++v) {
                to[0] = color[0];
                to[1] = color[1];
                to[2] = color[2];
                to[3] = color[3];
                to += destinationStride;
            }
        } else if ((bit & 0x1FEu) != 0) {
            for (unsigned short v = 0; v != vertexCount; ++v) {
                float* f = reinterpret_cast<float*>(to);
                f[0] = 0.0f;
                f[1] = 0.0f;
                to += destinationStride;
            }
        }
    }

    // Every map taken is released (the destination maps first, then the source maps).
    for (int i = 29; i >= 0; --i) destinationMaps[i].release();
    for (int i = 29; i >= 0; --i) sourceMaps[i].release();
}

}  // namespace glitch::core
