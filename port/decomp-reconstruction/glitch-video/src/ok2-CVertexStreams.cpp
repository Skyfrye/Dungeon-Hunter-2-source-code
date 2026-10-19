// Owner K2: CVertexStreams / SVertexStream copying, the setStreamBuffer clones and the detail:: stream helpers the process
// buffer allocators use.
#include <cstring>

#include "glitch-video/vertex_streams.hpp"

namespace glitch::video {

// 0x5a1ed8 _ZN6glitch5video13SVertexStream10copyStreamERKS1_jji
// Copies the vertices [first, last) of the source stream into this stream, starting at vertex `destination`: both buffers are
// mapped (the source for reading with access 1, this one with access 4), each vertex copies componentCount * value type size
// bytes from the source stride to this stream's stride, then both maps are released again (the inlined IBuffer::unmap).
void SVertexStream::copyStream(const SVertexStream& source, uint32_t first, uint32_t last, int32_t destination) {
    const IBuffer* sourceBuffer = source.buffer.get();
    uint8_t* sourceBase = sourceBuffer->map(static_cast<E_BUFFER_READ_MAP_ACCESS>(1));
    // The original adds the stream offset without a null test (v9 = map() + source +0x04).
    uint8_t* sourceData = sourceBase + source.offset;
    uint8_t* destinationBase = buffer->map(static_cast<E_BUFFER_MAP_ACCESS>(4));
    const uint32_t sourceStride = source.field0e;  // +0x0e
    uint8_t* read = sourceData + sourceStride * first;
    uint8_t* readEnd = read + sourceStride * (last - first);
    uint8_t* destinationData = destinationBase + offset;  // +0x04
    const size_t vertexBytes = static_cast<size_t>(field0c) * detail::SVertexAttributeTypeInspection::ValueTypeSize[field0a];
    if (read != readEnd) {
        uint8_t* write = destinationData + static_cast<uint32_t>(field0e) * static_cast<uint32_t>(destination);
        do {
            std::memcpy(write, read, vertexBytes);
            read += source.field0e;
            write += field0e;
        } while (readEnd != read);
    }
    if (destinationData != nullptr) buffer->unmap();
    if (sourceData != nullptr) sourceBuffer->unmap();
}

// 0x5a0fe4 _ZN6glitch5video14CVertexStreams11copyStreamsERKN5boost13intrusive_ptrIKS1_EEjjij
// The attributes both tables have, restricted to `mask`: for each one, when both streams have a buffer and the same value
// type and component count, SVertexStream::copyStream copies the vertices; otherwise the attribute is dropped from the
// result. The streams are found with getStream, continuing after the previous stream in each table. Returns the mask copied.
uint32_t CVertexStreams::copyStreams(const boost::intrusive_ptr<const CVertexStreams>& source, uint32_t first, uint32_t last,
                                     int32_t destination, uint32_t mask) {
    uint32_t result = m_attributeMask & source->m_attributeMask & mask;  // +0x04
    if (result != 0) {
        const CVertexStreams* other = source.get();
        const SVertexStream* otherNext = other->m_streams.data();  // +0x14
        SVertexStream* next = m_streams.data();                     // +0x14
        uint32_t remaining = result;
        for (int32_t i = 0;; ++i) {
            const uint32_t bit = 1u << i;
            if ((bit & remaining) != 0) {
                SVertexStream* stream = getStream(static_cast<uint32_t>(i), next, m_streams.data() + m_streams.size());
                const SVertexStream* otherStream =
                    other->getStream(static_cast<uint32_t>(i), otherNext, other->m_streams.data() + other->m_streams.size());
                if (stream->buffer.get() != nullptr && otherStream->buffer.get() != nullptr &&
                    stream->field0a == otherStream->field0a && stream->field0c == otherStream->field0c) {
                    remaining &= ~bit;
                    stream->copyStream(*otherStream, first, last, destination);
                } else {
                    remaining &= ~bit;
                    result &= ~bit;
                }
                next = stream + 1;
                otherNext = otherStream + 1;
                if (remaining == 0) break;
            }
        }
    }
    return result;
}

// 0x5abb58 / 0x647ee0 _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKS2_ib
// Takes the source stream's buffer, offset, value type, component count and stride; the offset gets delta added. The
// binary only has clones with the flag folded to true (updateHomogeneityInternal(1)); every caller passes true.
void CVertexStreams::setStream(SVertexStream* stream, const SVertexStream& source, int32_t delta, bool flag) {
    stream->buffer = source.buffer;
    stream->offset = source.offset;
    stream->field0a = source.field0a;
    stream->field0c = source.field0c;
    stream->offset = source.offset + static_cast<uint32_t>(delta);
    stream->field0e = source.field0e;
    updateHomogeneityInternal(flag);
}

// 0x5a15c0 is elsewhere. The three setStreamBuffer bodies below are the same code: the buffer pointer is taken (one use added),
// the old buffer of the stream is dropped, and the homogeneity flag is recomputed with flag = true.
// 0x663ca8 / 0x6dc848 are the compiler's clones of the general function with the flag argument folded to true; the clone
// symbols are given to the two bodies below through asm labels, since C++ source cannot spell them.
void CVertexStreams::setStreamBuffer(SVertexStream* stream, const boost::intrusive_ptr<IBuffer>& buffer, bool flag) {
    stream->buffer = buffer;
    updateHomogeneityInternal(flag);
}

void setStreamBufferClone1(CVertexStreams* self, SVertexStream* stream, const boost::intrusive_ptr<IBuffer>* buffer)
    __asm__("_ZN6glitch5video14CVertexStreams15setStreamBufferEPNS0_13SVertexStreamERKN5boost13intrusive_ptrINS0_7IBufferEEEb.clone.1");
void setStreamBufferClone0(CVertexStreams* self, SVertexStream* stream, const boost::intrusive_ptr<IBuffer>* buffer)
    __asm__("_ZN6glitch5video14CVertexStreams15setStreamBufferEPNS0_13SVertexStreamERKN5boost13intrusive_ptrINS0_7IBufferEEEb.clone.0");

// 0x663ca8 _ZN6glitch5video14CVertexStreams15setStreamBufferEPNS0_13SVertexStreamERKN5boost13intrusive_ptrINS0_7IBufferEEEb.clone.1
void setStreamBufferClone1(CVertexStreams* self, SVertexStream* stream, const boost::intrusive_ptr<IBuffer>* buffer) {
    stream->buffer = *buffer;
    self->updateHomogeneityInternal(true);
}

// 0x6dc848 _ZN6glitch5video14CVertexStreams15setStreamBufferEPNS0_13SVertexStreamERKN5boost13intrusive_ptrINS0_7IBufferEEEb.clone.0
void setStreamBufferClone0(CVertexStreams* self, SVertexStream* stream, const boost::intrusive_ptr<IBuffer>* buffer) {
    stream->buffer = *buffer;
    self->updateHomogeneityInternal(true);
}

namespace detail {

// 0x6dc688 _ZN6glitch5video6detail10getStridesEjRKN5boost13intrusive_ptrINS0_14CVertexStreamsEEE
// Walks the entries in order: an entry whose attribute is in the mask gets its offset set to the running size, and the size
// grows by componentCount * value type size (kept in 16 bits). Stops when the mask is used up. The walk is bounded by the
// table here; the original runs on when the mask holds an attribute the table lacks.
uint32_t getStrides(uint32_t mask, const boost::intrusive_ptr<CVertexStreams>& streams) {
    if (mask == 0) return 0;
    uint32_t result = 0;
    CVertexStreams* table = streams.get();
    for (SVertexStream& entry : table->m_streams) {
        const uint32_t bit = 1u << entry.attribute;  // +0x08
        if ((mask & bit) != 0) {
            entry.offset = result;  // +0x04
            mask &= ~bit;
            result = static_cast<uint16_t>(result + entry.field0c * SVertexAttributeTypeInspection::ValueTypeSize[entry.field0a]);
        }
        if (mask == 0) break;
    }
    return result;
}

// 0x6dc888 _ZN6glitch5video6detail12assignBufferERKN5boost13intrusive_ptrINS0_7IBufferEEEjijRKNS3_INS0_14CVertexStreamsEEE
void assignBuffer(const boost::intrusive_ptr<IBuffer>& buffer, uint32_t stride, int32_t offsetDelta, uint32_t mask,
                  const boost::intrusive_ptr<CVertexStreams>& streams) {
    if (mask == 0) return;
    CVertexStreams* table = streams.get();
    for (SVertexStream& entry : table->m_streams) {
        const uint32_t bit = 1u << entry.attribute;
        if ((mask & bit) != 0) {
            table->setStreamBuffer(&entry, buffer, true);
            mask &= ~bit;
            entry.offset += static_cast<uint32_t>(offsetDelta);  // +0x04
            entry.field0e = static_cast<uint16_t>(stride);       // +0x0e
        }
        if (mask == 0) return;
    }
}

// 0x6dc900 _ZN6glitch5video6detail11clearBufferEjjRKN5boost13intrusive_ptrINS0_14CVertexStreamsEEE
// The buffer of the first stream in the mask is returned; every stream of the mask loses its buffer, gets stride 0 and has
// its offset moved back by (the first stream's stride * vertexCount).
boost::intrusive_ptr<IBuffer> clearBuffer(uint32_t vertexCount, uint32_t mask,
                                          const boost::intrusive_ptr<CVertexStreams>& streams) {
    CVertexStreams* table = streams.get();
    SVertexStream* entry = table->m_streams.data();
    uint32_t bit = 1u << entry->attribute;
    while ((bit & mask) == 0) {
        ++entry;
        bit = 1u << entry->attribute;
    }
    boost::intrusive_ptr<IBuffer> result = entry->buffer;
    uint32_t rest = mask & ~bit;
    const uint32_t delta = static_cast<uint32_t>(entry->field0e) * vertexCount;
    table->setStreamBuffer(entry, boost::intrusive_ptr<IBuffer>(), true);
    entry->field0e = 0;
    entry->offset -= delta;
    if (rest != 0) {
        while (true) {
            const uint32_t entryBit = 1u << entry->attribute;
            if ((rest & entryBit) != 0) {
                rest &= ~entryBit;
                table->setStreamBuffer(entry, boost::intrusive_ptr<IBuffer>(), true);
                entry->field0e = 0;
                entry->offset -= delta;
            }
            if (rest == 0) break;
            ++entry;
        }
    }
    return result;
}

}  // namespace detail

}  // namespace glitch::video
