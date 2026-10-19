#include <cstring>
#include <map>
#include <vector>

#include "glitch-core-io/core/material_copy.hpp"
#include "glitch-core-io/core/quantize.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::core {

namespace {

// The new buffer one source buffer is repacked into, with the bytes one vertex takes in it and the strictest element size placed in it
// (glitch::core::SBufferData; 8 bytes in the original: the buffer, then two 16-bit counters at +4 and +6).
struct SBufferData {
    boost::intrusive_ptr<glitch::video::IBuffer> buffer;  // +0x00
    std::uint16_t size = 0;                                // +0x04, bytes of one vertex (grows as streams are placed, then rounded up)
    std::uint16_t alignment = 0;                           // +0x06, the largest element size placed
};

// One stream to repack (glitch::core::SQuantizationOpData; 20 bytes): the source stream, the new buffer, the offset of the stream in
// the new vertex, the new value type, the component count and the stride (the new vertex size, filled in when the stream is copied).
struct SQuantizationOpData {
    const glitch::video::SVertexStream* source = nullptr;  // +0x00
    boost::intrusive_ptr<glitch::video::IBuffer> buffer;  // +0x04
    std::uint32_t offset = 0;                              // +0x08
    std::uint32_t valueType = 255;                         // +0x0c
    std::uint16_t count = 0;                               // +0x10
    std::uint16_t stride = 0;                              // +0x12
};

// SVertexAttributeTypeInspection::ValueTypeSize (0x8e4ca4).
constexpr std::uint32_t kElementSize[7] = {1, 1, 2, 2, 4, 4, 4};

}  // namespace

// 0x6a2cdc _ZN6glitch4core21createQuantizedBufferERKN5boost13intrusive_ptrIKNS_5scene11CMeshBufferEEEbbPNS_5video12IVideoDriverE
// A copy of a mesh buffer whose streams are stored in smaller types. Every source buffer gets one new buffer (created empty with the
// source's usage), and each stream is placed in it: the texture coordinate streams (attributes 1..16) become shorts; the normal (17)
// becomes shorts with `normalsAsShorts` and signed bytes without it; the position (0) becomes shorts with `positionsAsShorts`; every
// other stream keeps its type. Each stream's offset in the new vertex is rounded up to its element size, the vertex size to the
// strictest element size. Then the new buffers are sized for the vertex count and the data is converted: unchanged streams are copied
// per vertex, a normal is scaled to the signed range (x 32767 or x 127), and positions and texture coordinates go through
// quantizeScaleOffset, the scale and offset of which land in the new table's quantization block (the position's as vectors 0 and 1 and
// the quantization flag, texture set n as vectors 2n + 2 and 2n + 3 and flag bit 3 + n). The new table is made for the source's active
// attribute mask with the same vertex count; the primitive stream and the flag byte of the mesh buffer are carried over.
boost::intrusive_ptr<glitch::scene::CMeshBuffer> createQuantizedBuffer(
    const boost::intrusive_ptr<const glitch::scene::CMeshBuffer>& mesh, bool normalsAsShorts, bool positionsAsShorts,
    glitch::video::IVideoDriver* driver) {
    using glitch::video::CVertexStreams;
    using glitch::video::IBuffer;
    using glitch::video::SVertexStream;
    using glitch::video::SVertexStreamData;

    const boost::intrusive_ptr<CVertexStreams> hold(const_cast<CVertexStreams*>(mesh->vertexStreams.get()), true);
    const CVertexStreams* streams = hold.get();
    const std::uint32_t vertexCount = streams->m_field08;

    std::map<const IBuffer*, SBufferData> buffers;
    std::vector<SQuantizationOpData> operations;

    for (const SVertexStream& entry : streams->m_streams) {
        const IBuffer* key = entry.buffer.get();
        boost::intrusive_ptr<IBuffer> target;
        std::uint32_t alignment = 0;
        std::uint32_t size = 0;
        const auto found = buffers.find(key);
        if (found == buffers.end()) {
            target = driver->createBuffer(0, entry.buffer->m_usage, 0, nullptr, true);
            SBufferData& data = buffers[key];
            data.buffer = target;
            data.size = 0;
            data.alignment = 0;
        } else {
            target = found->second.buffer;
            alignment = found->second.alignment;
            size = found->second.size;
        }

        SQuantizationOpData operation;
        operation.source = &entry;
        const std::uint32_t attribute = entry.attribute;
        std::uint32_t valueType = entry.field0a;
        if (((1u << attribute) & 0x1FFFEu) != 0) {
            valueType = 2;
        } else if (attribute == 17) {
            valueType = normalsAsShorts ? 2 : 0;
        } else if (attribute == 0 && positionsAsShorts) {
            valueType = 2;
        }
        const std::uint32_t elementSize = valueType < 7 ? kElementSize[valueType] : 0;
        if (elementSize >= alignment) alignment = elementSize;

        std::uint32_t offset = size;
        if (size != 0 && (((1u << elementSize) - 1u) & size) != 0) {
            offset = static_cast<std::uint16_t>(static_cast<std::int32_t>(size - 1 + elementSize) /
                                                static_cast<std::int32_t>(elementSize) * static_cast<std::int32_t>(elementSize));
        }
        operation.buffer = target;
        operation.valueType = valueType;
        operation.count = entry.field0c;
        operation.offset = offset;
        operation.stride = 0;

        SBufferData& data = buffers[key];
        data.buffer = target;
        data.alignment = static_cast<std::uint16_t>(alignment);
        data.size = static_cast<std::uint16_t>(offset + entry.field0c * elementSize);
        operations.push_back(operation);
    }

    // Each new buffer: the vertex size rounded up to the strictest element size, storage for every vertex.
    for (auto& item : buffers) {
        SBufferData& data = item.second;
        data.size = static_cast<std::uint16_t>((data.size + data.alignment - 1u) / data.alignment * data.alignment);
        const std::uint32_t bytes = vertexCount * data.size;
        data.buffer->reset(bytes, new std::uint8_t[bytes], true);
    }

    boost::intrusive_ptr<CVertexStreams> result = CVertexStreams::allocate(streams->getActiveAttributeMask());
    result->m_field08 = vertexCount;

    unsigned slot = 0;
    for (SQuantizationOpData& operation : operations) {
        const SVertexStream& source = *operation.source;
        SBufferData& data = buffers[source.buffer.get()];
        const IBuffer* sourceBuffer = source.buffer.get();
        const std::uint8_t* sourceMap = sourceBuffer->map(static_cast<glitch::video::E_BUFFER_READ_MAP_ACCESS>(1));
        std::uint8_t* targetMap = data.buffer->map(4);
        operation.stride = data.size;
        std::uint8_t* destination = operation.offset + targetMap;
        const std::uint8_t* origin = sourceMap + source.offset;
        const unsigned sourceStride = source.field0e;

        if (operation.valueType == source.field0a) {
            const std::uint32_t bytes = operation.count * (operation.valueType < 7 ? kElementSize[operation.valueType] : 0u);
            for (std::uint32_t vertex = 0; vertex < vertexCount; ++vertex) {
                std::memcpy(destination, origin, bytes);
                destination += operation.stride;
                origin += sourceStride;
            }
        } else if (source.attribute != 0) {
            if (source.attribute == 17) {
                if (operation.valueType != 0) {
                    for (std::uint32_t vertex = 0; vertex < vertexCount; ++vertex) {
                        const float* v = reinterpret_cast<const float*>(origin);
                        std::int16_t* out = reinterpret_cast<std::int16_t*>(destination);
                        out[0] = static_cast<std::int16_t>(static_cast<int>(v[0] * 32767.0f));
                        out[1] = static_cast<std::int16_t>(static_cast<int>(v[1] * 32767.0f));
                        out[2] = static_cast<std::int16_t>(static_cast<int>(v[2] * 32767.0f));
                        destination += operation.stride;
                        origin += sourceStride;
                    }
                } else {
                    for (std::uint32_t vertex = 0; vertex < vertexCount; ++vertex) {
                        const float* v = reinterpret_cast<const float*>(origin);
                        auto* out = reinterpret_cast<std::int8_t*>(destination);
                        out[0] = static_cast<std::int8_t>(static_cast<int>(v[0] * 127.0f));
                        out[1] = static_cast<std::int8_t>(static_cast<int>(v[1] * 127.0f));
                        out[2] = static_cast<std::int8_t>(static_cast<int>(v[2] * 127.0f));
                        destination += operation.stride;
                        origin += sourceStride;
                    }
                }
            } else {
                glitch::core::vector2d<float> scale{};
                glitch::core::vector2d<float> shift{};
                quantizeScaleOffset(reinterpret_cast<glitch::core::vector2d<std::int16_t>*>(destination), operation.stride,
                                    reinterpret_cast<const glitch::core::vector2d<float>*>(origin), sourceStride, vertexCount, scale,
                                    shift);
                const unsigned set = static_cast<std::uint8_t>(source.attribute - 1);
                result->m_flags = static_cast<std::uint16_t>(result->m_flags | (8u << set));
                glitch::core::vector3d<float>& scaleSlot = result->m_quantization[2 * set + 2];
                glitch::core::vector3d<float>& shiftSlot = result->m_quantization[2 * set + 3];
                scaleSlot.X = scale.X;
                scaleSlot.Y = scale.Y;
                shiftSlot.X = shift.X;
                shiftSlot.Y = shift.Y;
            }
        } else {
            glitch::core::vector3d<float> scale{};
            glitch::core::vector3d<float> shift{};
            quantizeScaleOffset(reinterpret_cast<glitch::core::vector3d<std::int16_t>*>(destination), operation.stride,
                                reinterpret_cast<const glitch::core::vector3d<float>*>(origin), sourceStride, vertexCount, scale,
                                shift);
            result->m_flags = static_cast<std::uint16_t>(result->m_flags | 4u);
            result->m_quantization[0] = scale;
            result->m_quantization[1] = shift;
        }

        SVertexStreamData placed;
        placed.buffer = operation.buffer;
        placed.offset = operation.offset;
        placed.field08 = static_cast<std::uint16_t>(operation.valueType);
        placed.field0c = operation.count;
        placed.field0e = operation.stride;
        result->setStream(&result->m_streams[slot], placed, false);
        ++slot;

        if (targetMap != nullptr) data.buffer->unmap();
        if (sourceMap != nullptr) sourceBuffer->unmap();
    }

    auto* created = new glitch::scene::CMeshBuffer();
    created->vertexStreams = result;
    created->primitiveStream = mesh->primitiveStream;
    created->flag_34 = mesh->flag_34;
    created->owner = nullptr;
    return boost::intrusive_ptr<glitch::scene::CMeshBuffer>(created, true);
}

}  // namespace glitch::core
