#include <cstring>

#include "glitch-core-io/core/material_copy.hpp"
#include "glitch-video/primitive_stream.hpp"

namespace glitch::core {

// 0x6a1eb4 _ZN6glitch4core23overridePrimitiveStreamERKNS_5video16CPrimitiveStreamEjjRS2_ji
// Writes the triangles of `source` into the 16-bit index buffer of `destination`, starting at triangle `destinationStart`, every index
// raised by `vertexOffset`. Triangle lists, strips and fans are converted to triangle lists.
//
// Without a source index buffer the triangles come from the vertex range itself: a fan (type 5) gives (v0, v0 + 1 + i, v0 + 2 + i), a
// triangle list (type 6) (v0 + 3i, +1, +2) and a strip (type 4) (v0 + i, v0 + i + 1, v0 + i + 2) with the last two swapped for odd i,
// for the (vertex end - vertex start) of the stream; any other type writes nothing. With one, `first` .. `last` is a range of
// triangles of the index data: a list with a zero offset is one block copy; otherwise a fan reads (idx[0], the previous triangle's last index, idx[i + 1]) - the first triangle repeats idx[first + 1] -, a
// list (idx[3i], +1, +2) and a strip (idx[i], idx[i + 1], idx[i + 2]) with the first two swapped for odd i (as the listing does).
// The destination buffer is mapped for writing (access 2), the source for reading; both are released at the end. The value returned is
// what the listing leaves in r0 (the bytes written for a fan or a list without an index buffer, 0 otherwise).
int overridePrimitiveStream(const glitch::video::CPrimitiveStream& source, unsigned first, unsigned last,
                            glitch::video::CPrimitiveStream& destination, unsigned destinationStart, int vertexOffset) {
    std::uint8_t* destinationMap = destination.m_indexBuffer->map(2);
    std::uint8_t* destinationBase = destinationMap + destination.m_offset;
    std::uint16_t* out = reinterpret_cast<std::uint16_t*>(destinationBase + 6 * destinationStart);
    const std::uint16_t offset = static_cast<std::uint16_t>(vertexOffset);
    int result = 0;

    if (source.m_indexBuffer.get() == nullptr) {
        const std::uint32_t start = source.m_vertexStart;
        const std::uint32_t end = source.m_vertexEnd;
        switch (source.m_primitiveType) {
            case 5: {
                const std::uint32_t triangles = end - 2 - start;
                std::uint16_t next = static_cast<std::uint16_t>(offset + 1);
                for (std::uint32_t i = 0; i < triangles; ++i) {
                    out[3 * i + 1] = next;
                    out[3 * i] = offset;
                    next = static_cast<std::uint16_t>(next + 1);
                    out[3 * i + 2] = next;
                }
                result = static_cast<int>(6 * triangles);
                break;
            }
            case 6: {
                const std::uint32_t triangles = (end - start) / 3u;
                std::uint32_t v = static_cast<std::uint16_t>(offset);
                for (std::uint32_t i = 0; i < triangles; ++i) {
                    out[3 * i] = static_cast<std::uint16_t>(v);
                    out[3 * i + 1] = static_cast<std::uint16_t>(v + 1);
                    out[3 * i + 2] = static_cast<std::uint16_t>(v + 2);
                    v = static_cast<std::uint16_t>(v + 3);
                }
                result = static_cast<int>(6 * triangles);
                break;
            }
            case 4: {
                const std::uint32_t triangles = end - 2 - start;
                std::uint16_t second = static_cast<std::uint16_t>(offset + 2);
                std::uint16_t firstIndex = static_cast<std::uint16_t>(offset + 1);
                for (std::uint32_t i = 0; i < triangles; ++i) {
                    out[3 * i] = static_cast<std::uint16_t>(firstIndex - 1);
                    if ((i & 1u) == 0) {
                        out[3 * i + 1] = firstIndex;
                        out[3 * i + 2] = second;
                    } else {
                        out[3 * i + 1] = second;
                        out[3 * i + 2] = firstIndex;
                    }
                    firstIndex = static_cast<std::uint16_t>(firstIndex + 1);
                    second = static_cast<std::uint16_t>(second + 1);
                }
                result = triangles == 0 ? 0 : static_cast<int>(6 * (triangles - 1));
                break;
            }
            default:
                break;
        }
    } else {
        const glitch::video::IBuffer* sourceBuffer = source.m_indexBuffer.get();
        const std::uint8_t* sourceMap = sourceBuffer->map(static_cast<glitch::video::E_BUFFER_READ_MAP_ACCESS>(0));
        const std::uint8_t* sourceBase = sourceMap + source.m_offset;
        const std::uint16_t* indices = reinterpret_cast<const std::uint16_t*>(sourceBase);
        const std::uint32_t triangles = last - first;
        if (vertexOffset == 0 && source.m_primitiveType == 6) {
            std::memcpy(out, sourceBase + 6 * first, 6 * triangles);
        } else {
            switch (source.m_primitiveType) {
                case 5: {
                    // The listing keeps the middle index of the previous triangle in a register that starts as idx[first + 1] and
                    // then loads idx[first + 1], idx[first + 2], ...: the first triangle repeats idx[first + 1].
                    const std::uint16_t anchor = static_cast<std::uint16_t>(offset + indices[0]);
                    std::uint16_t middle = static_cast<std::uint16_t>(indices[first + 1] + offset);
                    const std::uint16_t* next = indices + first + 1;
                    if (last > first) {
                        std::uint32_t i = first;
                        do {
                            out[1] = middle;
                            out[0] = anchor;
                            const std::uint16_t value = *next++;
                            ++i;
                            middle = static_cast<std::uint16_t>(offset + value);
                            out[2] = middle;
                            out += 3;
                        } while (last > i);
                    }
                    break;
                }
                case 6: {
                    const std::uint16_t* triple = indices + 3 * first;
                    for (std::uint32_t i = 0; i < triangles; ++i) {
                        out[0] = static_cast<std::uint16_t>(offset + triple[0]);
                        out[1] = static_cast<std::uint16_t>(offset + triple[1]);
                        out[2] = static_cast<std::uint16_t>(offset + triple[2]);
                        triple += 3;
                        out += 3;
                    }
                    break;
                }
                case 4:
                    for (std::uint32_t i = first; i < last; ++i) {
                        const bool even = (i & 1u) == 0;
                        out[0] = static_cast<std::uint16_t>(offset + (even ? indices[i] : indices[i + 1]));
                        out[1] = static_cast<std::uint16_t>(offset + (even ? indices[i + 1] : indices[i]));
                        out[2] = static_cast<std::uint16_t>(offset + indices[i + 2]);
                        out += 3;
                    }
                    break;
                default:
                    break;
            }
        }
        if (sourceMap != nullptr) sourceBuffer->unmap();
    }
    if (destinationBase != nullptr) destination.m_indexBuffer->unmap();
    return result;
}

}  // namespace glitch::core
