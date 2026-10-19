#include "glitch-video/vertex_streams.hpp"

#include <cstring>

#include "glitch-core-io/core/bounding_box.hpp"

namespace glitch::video {

// 0x647f54 _ZN6glitch5video17SVertexStreamDataaSERNS0_13SVertexStreamE
SVertexStreamData& SVertexStreamData::operator=(const SVertexStream& stream) {
    buffer = stream.buffer;
    offset = stream.offset;
    field08 = stream.field0a;
    field0c = stream.field0c;
    field0e = stream.field0e;
    return *this;
}

// 0x5a0a58 _ZNK6glitch5video14CVertexStreams22getActiveAttributeMaskEv
uint32_t CVertexStreams::getActiveAttributeMask() const {
    uint32_t mask = 0;
    for (const SVertexStream& s : m_streams) {
        if (s.buffer.get() != nullptr) {
            mask |= 1u << (s.attribute & 0xff);
        }
    }
    return mask;
}

// 0x5a0aac _ZNK6glitch5video14CVertexStreams9getStreamENS0_18E_VERTEX_ATTRIBUTEEPKNS0_13SVertexStreamES5_
const SVertexStream* CVertexStreams::getStream(uint32_t attribute, const SVertexStream* first,
                                               const SVertexStream* end) const {
    for (const SVertexStream* p = first; p != end; ++p) {
        if (static_cast<int>(attribute) <= static_cast<int>(p->attribute)) {
            return attribute == p->attribute ? p : end;
        }
    }
    return end;
}

// 0x5a0af0 _ZN6glitch5video14CVertexStreams9getStreamENS0_18E_VERTEX_ATTRIBUTEEPNS0_13SVertexStreamES4_
SVertexStream* CVertexStreams::getStream(uint32_t attribute, SVertexStream* first, SVertexStream* end) {
    for (SVertexStream* p = first; p != end; ++p) {
        if (static_cast<int>(attribute) <= static_cast<int>(p->attribute)) {
            return attribute == p->attribute ? p : end;
        }
    }
    return end;
}

// Vertex stride word at +0x22: entry 0's field0e (see the header layout comment).
// 0x5a2c00 (copyVertex) and 0x5a2410 (isVertexStreamHomolaced) read it as LDRH [entry0 + 0x0e].
uint16_t CVertexStreams::getVertexStride() const {
    return m_streams.empty() ? static_cast<uint16_t>(0) : m_streams.front().field0e;
}

// 0x5a0b34 _ZN6glitch5video14CVertexStreams9addOffsetEi
void CVertexStreams::addOffset(int32_t delta) {
    for (SVertexStream& s : m_streams) {
        s.offset += static_cast<uint32_t>(delta);
    }
}

// 0x5a0b74 _ZNK6glitch5video14CVertexStreams13isHomogeneousEj
// The original scans the bits of (mask & +0x04) and reads the buffer of each
// matching stream. When a lookup misses, the original reads the sentinel
// after the array; here a miss is treated as a null buffer. Partial for that
// reason.
bool CVertexStreams::isHomogeneous(uint32_t mask) const {
    mask &= m_attributeMask;
    if (mask == 0) return true;
    const SVertexStream* first = m_streams.data();
    const SVertexStream* end = first + m_streams.size();
    IBuffer* common = nullptr;
    for (uint32_t bit = 0; mask != 0; ++bit) {
        uint32_t b = 1u << (bit & 0x1f);
        if ((b & mask) != 0) {
            const SVertexStream* found = getStream(bit, first, end);
            IBuffer* buf = (found == end) ? nullptr : found->buffer.get();
            if (common == nullptr) {
                common = buf;
            } else if (common != buf) {
                return false;
            }
            if (found != end) first = found + 1;  // original advances past the sentinel; clamped here
            mask &= ~b;
        }
    }
    return true;
}

// 0x5a0bfc _ZN6glitch5video14CVertexStreams25updateHomogeneityInternalEb
// Only consecutive pairs of non-null buffers are compared, so a null entry
// between two streams never makes the table inhomogeneous. With no streams the
// original reads past the end of its inline array; this port treats the table
// as homogeneous, which is the only reading that does not touch memory it does
// not own.
void CVertexStreams::updateHomogeneityInternal(bool flag) {
    if (!flag) {
        bool homogeneous = true;
        for (size_t i = 0; i + 1 < m_streams.size(); ++i) {
            IBuffer* a = m_streams[i].buffer.get();
            IBuffer* b = m_streams[i + 1].buffer.get();
            if (a != nullptr && b != nullptr && a != b) {
                homogeneous = false;
                break;
            }
        }
        if (homogeneous) {
            m_flags = static_cast<uint16_t>(m_flags | kFlagHomogeneous);
            return;
        }
    }
    m_flags = static_cast<uint16_t>(m_flags & ~kFlagHomogeneous);
}

// 0x5a0d80 _ZN6glitch5video14CVertexStreams20updateStatesInternalEb
void CVertexStreams::updateStatesInternal(bool flag) {
    uint16_t flags = flag ? static_cast<uint16_t>(m_flags & ~kFlagHomogeneous)
                          : static_cast<uint16_t>(m_flags | kFlagHomogeneous);
    m_flags = static_cast<uint16_t>(flags | kFlagHasData);

    IBuffer* prev = nullptr;
    for (const SVertexStream& s : m_streams) {
        IBuffer* cur = s.buffer.get();
        if (cur != nullptr) {
            if (cur->m_data == nullptr) {
                m_flags = static_cast<uint16_t>(m_flags & ~kFlagHasData);
            }
            if (prev != nullptr && prev != cur) {
                m_flags = static_cast<uint16_t>(m_flags & ~kFlagHomogeneous);
            }
        }
        prev = cur;
    }
}

// 0x7d46fc _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb
void CVertexStreams::setStream(SVertexStream* stream, const SVertexStreamData& data, bool flag) {
    stream->buffer = data.buffer;
    stream->offset = data.offset;
    stream->field0a = data.field08;
    stream->field0c = data.field0c;
    stream->field0e = data.field0e;
    updateHomogeneityInternal(flag);
}

// 0x5a0e24 _ZN6glitch5video14CVertexStreams12updateStatesEb
// Thunk: the ARM body is `b #0x5a0d80`, so this forwards to updateStatesInternal.
void CVertexStreams::updateStates(bool flag) { updateStatesInternal(flag); }

// 0x5a0ec0 _ZNK6glitch5video14CVertexStreams18computeBoundingBoxEjjRNS_4core8aabbox3dIfEE
// The position stream is entry 0 (this + 0x14): IBuffer::map(entry.buffer, 0) is the const read map 0x5a1adc
// (LDR R0,[R0,#0x14] then BL _ZNK...map...READ_MAP_ACCESS at 0x5a0ee0), the first element is at
// base + entry.offset + entry.field0e * first (0x5a0ee8..0x5a0efc) and the box is computed over
// last - first elements of entry.field0c components of value type entry.field0a through
// glitch::core::computeBoundingBox 0x6a48cc (0x5a0f00..0x5a0f14). The listing then releases the mapping
// (the SMapBuffer release 0x5a0e28 at 0x5a0f1c) and, when bit 2 of m_flags is set, dequantizes both corners
// with the trailing block: box = box * block[0] + block[1] (0x5a0f2c..0x5a0fd8).
void CVertexStreams::computeBoundingBox(uint32_t first, uint32_t last, core::aabbox3d<float>& box) const {
    const SVertexStream& position = m_streams.front();
    const IBuffer* buffer = position.buffer.get();
    // The listing inlines SVertexStream::SMapBuffer<const void>::reset(SVertexStream&, int) here and keeps the
    // stream pointer and base + offset on the stack for the release below. The two calls are written out
    // because the map call is the const read form (0x5a1adc) and the port's SMapBuffer::reset cannot select it:
    // E_BUFFER_MAP_ACCESS and E_BUFFER_READ_MAP_ACCESS are both int32_t aliases, so overload resolution on a
    // non-const buffer picks 0x5a19f0 instead.
    uint8_t* base = buffer->map(0);
    core::computeBoundingBox(base + position.offset + static_cast<uint32_t>(position.field0e) * first,
                             position.field0a, position.field0c, position.field0e, last - first, box);
    // The release half (0x5a0e28) unmaps when its mapped pointer is non-null. The port's SMapBuffer keeps that
    // pointer null when the map itself returned null, so the offset is not added to a null base here.
    if (base != nullptr) {
        buffer->unmap();
    }
    // Host guard on the size: the original reads the two leading records of its trailing block, which its
    // constructor always allocates (2 * (count0c + 1) vectors).
    if ((m_flags & kFlagQuantized) != 0 && m_quantization.size() >= 2) {
        const core::vector3d<float>& scale = m_quantization[0];
        const core::vector3d<float>& offset = m_quantization[1];
        box.MinEdge.X = box.MinEdge.X * scale.X + offset.X;
        box.MinEdge.Y = box.MinEdge.Y * scale.Y + offset.Y;
        box.MinEdge.Z = box.MinEdge.Z * scale.Z + offset.Z;
        box.MaxEdge.X = box.MaxEdge.X * scale.X + offset.X;
        box.MaxEdge.Y = box.MaxEdge.Y * scale.Y + offset.Y;
        box.MaxEdge.Z = box.MaxEdge.Z * scale.Z + offset.Z;
    }
}

namespace {
uint32_t popcount32(uint32_t value) {
    uint32_t count = 0;
    for (; value != 0; value &= value - 1) ++count;
    return count;
}
}  // namespace

// 0x62fe18 _ZNK6glitch5video13SVertexStream12unmapBufferEv
void SVertexStream::unmapBuffer() const { buffer->unmap(); }

// 0x5a113c _ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE
// 0x5a148c _ZN6glitch5video14CVertexStreamsC2EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE
// The trailing block of 24 * count0c + 24 bytes is copied from `trailing`, or zeroed when it is null.
CVertexStreams::CVertexStreams(uint32_t field08, uint32_t attributeMask, uint8_t count0c, uint8_t streamCount,
                               const SVertexStream* source, const core::vector3d<float>* trailing)
    : m_attributeMask(attributeMask),
      m_field08(field08),
      m_count0c(count0c),
      m_streamCount0d(streamCount),
      m_flags(3) {
    m_streams.resize(streamCount);
    m_quantization.resize(2u * (static_cast<size_t>(count0c) + 1u));
    if (trailing != nullptr) {
        for (size_t i = 0; i < m_quantization.size(); ++i) m_quantization[i] = trailing[i];
    }
    uint32_t bit = 0;
    for (size_t i = 0; i < streamCount; ++i) {
        SVertexStream& entry = m_streams[i];
        if (source != nullptr) {
            entry.buffer = source[i].buffer;
            entry.offset = source[i].offset;
            entry.attribute = source[i].attribute;
            entry.field0a = source[i].field0a;
            entry.field0c = source[i].field0c;
            entry.field0e = source[i].field0e;
        } else {
            while (bit < 32 && ((attributeMask >> bit) & 1u) == 0) ++bit;
            entry.buffer = nullptr;
            entry.offset = 0;
            entry.attribute = static_cast<uint16_t>(bit);
            entry.field0a = 0xff;
            entry.field0c = 0;
            entry.field0e = 0;
            ++bit;
        }
    }
}

// ~CVertexStreams (0x5a0a1c D1) is defined in src/tb_video-glitch_video_CVertexStreams-0.cpp.

// 0x5a1270 _ZN6glitch5video14CVertexStreams8allocateEjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE
boost::intrusive_ptr<CVertexStreams> CVertexStreams::allocate(uint32_t field08, uint32_t attributeMask,
                                                              uint8_t count0c, uint8_t streamCount,
                                                              const SVertexStream* source,
                                                              const core::vector3d<float>* trailing) {
    // The constructor leaves the count at 0; allocate adds the first use (++*obj).
    return boost::intrusive_ptr<CVertexStreams>(
        new CVertexStreams(field08, attributeMask, count0c, streamCount, source, trailing), true);
}

// 0x5a135c _ZN6glitch5video14CVertexStreams8allocateEj
boost::intrusive_ptr<CVertexStreams> CVertexStreams::allocate(uint32_t attributeMask) {
    const uint32_t mask = attributeMask | 1u;
    const uint8_t count0c = static_cast<uint8_t>(popcount32(mask & 0x1fffeu));
    const uint8_t streamCount = static_cast<uint8_t>(popcount32(mask));
    return allocate(0, mask, count0c, streamCount, nullptr);
}

// 0x5a1404 _ZN6glitch5video14CVertexStreams8allocateEhj
boost::intrusive_ptr<CVertexStreams> CVertexStreams::allocate(uint8_t count, uint32_t attributeMask) {
    uint32_t mask = (attributeMask & 0x3ffffffeu) | 1u;
    for (uint32_t k = 0; k < count; ++k) {
        mask |= 2u << k;
    }
    const uint8_t streamCount = static_cast<uint8_t>(popcount32(mask));
    return allocate(0, mask, count, streamCount, nullptr);
}

// 0x5a1310 _ZNK6glitch5video14CVertexStreams5cloneEv
boost::intrusive_ptr<CVertexStreams> CVertexStreams::clone() const {
    boost::intrusive_ptr<CVertexStreams> result = allocate(m_field08, m_attributeMask, m_count0c,
                                                           m_streamCount0d, m_streams.data(), m_quantization.data());
    result->m_flags = m_flags;
    return result;
}

// 0x5a0c60 _ZN6glitch5video14CVertexStreams10setStreamsERKN5boost13intrusive_ptrIS1_EEjib
// The buffer assignments take a use of the source buffer and drop the old one, as the original does by hand.
uint32_t CVertexStreams::setStreams(const boost::intrusive_ptr<CVertexStreams>& source, uint32_t mask,
                                    int32_t offsetDelta, bool flag) {
    const CVertexStreams* src = source.get();
    const uint32_t common = m_attributeMask & src->m_attributeMask & mask;
    if (common == 0) return 0;

    SVertexStream* dst = m_streams.data();
    SVertexStream* dstEnd = dst + m_streams.size();
    const SVertexStream* from = src->m_streams.data();
    const SVertexStream* fromEnd = from + src->m_streams.size();
    uint32_t remaining = common;
    for (uint32_t bit = 0; remaining != 0 && bit < 32; ++bit) {
        const uint32_t b = 1u << bit;
        if ((remaining & b) == 0) continue;
        remaining &= ~b;
        SVertexStream* d = getStream(bit, dst, dstEnd);
        const SVertexStream* s = src->getStream(bit, from, fromEnd);
        if (d == dstEnd || s == fromEnd) continue;
        d->buffer = s->buffer;
        d->offset = s->offset + static_cast<uint32_t>(offsetDelta);
        d->field0a = s->field0a;
        d->field0c = s->field0c;
        d->field0e = s->field0e;
        dst = d + 1;
        from = s + 1;
    }
    updateHomogeneityInternal(flag);
    return common;
}

// 0x5a178c _ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb
// Homogeneity is recomputed once after the loop; the original recomputes it after each entry, which gives the same
// final flags.
uint32_t CVertexStreams::setupStreams(const SVertexStreamData* data, uint32_t mask, bool flag) {
    const uint32_t active = m_attributeMask & mask;
    for (SVertexStream& entry : m_streams) {
        if ((active & (1u << (entry.attribute & 0x1f))) != 0) {
            entry.buffer = data->buffer;
            entry.offset = data->offset;
            entry.field0a = data->field08;
            entry.field0c = data->field0c;
            entry.field0e = data->field0e;
        } else {
            entry.buffer = nullptr;
            entry.offset = 0;
            entry.field0a = 0xff;
            entry.field0c = 0;
            entry.field0e = 0;
        }
        ++data;
    }
    updateHomogeneityInternal(flag);
    return active;
}

// 0x5a15c0 _ZN6glitch5video14CVertexStreams12setupStreamsERKN5boost13intrusive_ptrINS0_7IBufferEEEj
// Every entry whose attribute is in the mask points at the one buffer and takes the attribute's default value type and component count
// (SVertexAttributeTypeInspection::Defaults); the offsets run on from 0 by count * ValueTypeSize[type] in table order, and every other
// entry is cleared (no buffer, offset 0, type 0xff, no components, no stride). The streams that were set up get the total as their stride
// (the sum of their component sizes). Sets the homogeneous bit and answers the total vertex size in bytes (16 bits).
uint32_t CVertexStreams::setupStreams(const boost::intrusive_ptr<IBuffer>& buffer, uint32_t mask) {
    uint32_t running = 0;
    for (SVertexStream& entry : m_streams) {
        if ((mask & (1u << entry.attribute)) == 0) {
            entry.buffer = nullptr;
            entry.offset = 0;
            entry.field0a = 0xff;
            entry.field0c = 0;
            entry.field0e = 0;
            continue;
        }
        const detail::SVertexAttributeTypeInspection::SDefault& defaults = detail::SVertexAttributeTypeInspection::Defaults[entry.attribute];
        const uint16_t size = static_cast<uint16_t>(detail::SVertexAttributeTypeInspection::ValueTypeSize[defaults.valueType] *
                                                    defaults.componentCount);
        entry.buffer = buffer;
        entry.offset = running;
        entry.field0a = defaults.valueType;
        entry.field0c = defaults.componentCount;
        entry.field0e = 0;
        running = static_cast<uint16_t>(running + size);
    }
    for (SVertexStream& entry : m_streams) {
        if ((mask & (1u << entry.attribute)) != 0) {
            entry.field0e = static_cast<uint16_t>(running);
        }
    }
    m_flags |= 1u;
    return running;
}

// 0x5a08f4 _ZN6glitch5video23makeDefaultAttributeMapEPKNS0_14CVertexStreamsEPh
uint8_t* makeDefaultAttributeMap(const CVertexStreams* streams, uint8_t* map) {
    constexpr uint32_t kMapSize = 0x1e;
    std::memset(map, 0xff, kMapSize);
    for (size_t index = 0; index < streams->m_streams.size(); ++index) {
        const uint32_t attribute = streams->m_streams[index].attribute;
        if (attribute < kMapSize) {
            map[attribute] = static_cast<uint8_t>(index);
        }
    }
    return map;
}

namespace detail {

// 0x8e4ca4 in the original (see the header).
const uint8_t SVertexAttributeTypeInspection::ValueTypeSize[7] = {1, 1, 2, 2, 4, 4, 4};

// 0x8e4cac in the original (see the header).
const SVertexAttributeTypeInspection::SDefault SVertexAttributeTypeInspection::Defaults[30] = {
    {6, 3},                                                                                                    // 0 position
    {6, 2}, {6, 2}, {6, 2}, {6, 2}, {6, 2}, {6, 2}, {6, 2}, {6, 2},                                           // 1..8 texture coordinates
    {6, 2}, {6, 2}, {6, 2}, {6, 2}, {6, 2}, {6, 2}, {6, 2}, {6, 2},                                           // 9..16
    {6, 3},                                                                                                    // 17 normal
    {1, 4}, {1, 4},                                                                                            // 18, 19 colours
    {6, 3}, {6, 3}, {6, 3}, {6, 3}, {6, 3}, {6, 3}, {6, 3}, {6, 3},                                           // 20..27
    {6, 4},                                                                                                    // 28
    {1, 4},                                                                                                    // 29
};

}  // namespace detail

// 0x5a2b18 _ZN6glitch5video10copyVertexEtRKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS2_IS3_EEPKhRPhb
// Both branches written. The per-stream branch's add-ref/map/drop of each buffer nets to zero use count here.
void copyVertex(uint16_t vertex, const boost::intrusive_ptr<const CVertexStreams>& src,
                const boost::intrusive_ptr<CVertexStreams>& /*dst*/, const uint8_t* base, uint8_t*& out,
                bool wholeVertex) {
    if (wholeVertex) {
        // 0x5a2bf4: n = *(u16*)(*src + 0x22) (the vertex stride, entry 0's field0e); memcpy(*out, base + n * vertex, n);
        // *out += n.
        const size_t stride = src->getVertexStride();
        std::memcpy(out, base + stride * vertex, stride);
        out += stride;
        return;
    }
    for (const SVertexStream& stream : src->m_streams) {
        // The original calls IBuffer::map(buffer, 1) without a null check, and does not unmap.
        const uint8_t* mapped = stream.buffer->map(1);
        const uint32_t byteCount = static_cast<uint32_t>(stream.field0c) *
                                   detail::SVertexAttributeTypeInspection::ValueTypeSize[stream.field0a];
        std::memcpy(out, mapped + stream.offset + static_cast<uint32_t>(stream.field0e) * vertex, byteCount);
        out += byteCount;
    }
}

// 0x5a23f4 _ZN6glitch5video23isVertexStreamHomolacedERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERi
// Partial: the empty-table case is not the original's behaviour (see the header).
bool isVertexStreamHomolaced(const boost::intrusive_ptr<const CVertexStreams>& streams, int32_t& minOffset) {
    const std::vector<SVertexStream>& entries = streams->m_streams;
    if (entries.empty()) {
        minOffset = 0x7fffffff;
        return false;
    }
    const uint16_t stride = streams->getVertexStride();
    int32_t lowest = 0x7fffffff;       // v5
    int32_t running = -2147483647;     // v8, running maximum (starts at the original's sentinel)
    const SVertexStream* widest = nullptr;  // v6, the entry that last raised the running maximum
    for (size_t i = 0; i < entries.size(); ++i) {
        const SVertexStream& entry = entries[i];
        // Entry 0 defines the stride; every later entry must match it, checked before it is read.
        if (i > 0 && entry.field0e != stride) {
            minOffset = 0;
            return false;
        }
        const int32_t offset = static_cast<int32_t>(entry.offset);
        if (lowest >= offset) lowest = offset;
        if (offset > running) widest = &entry;
        if (offset > running) running = offset;
    }
    minOffset = lowest;
    if (widest == nullptr) {
        // Only reachable when the offset is 0x80000000 (not greater than the sentinel). The original
        // dereferences a null entry there.
        return false;
    }
    // (running + count * ValueTypeSize[type] - lowest) <= stride, in 32-bit two's complement as in the original.
    const uint32_t span = static_cast<uint32_t>(running) +
                          static_cast<uint32_t>(widest->field0c) *
                              detail::SVertexAttributeTypeInspection::ValueTypeSize[widest->field0a] -
                          static_cast<uint32_t>(lowest);
    return static_cast<int32_t>(span) <= static_cast<int32_t>(stride);
}

}  // namespace glitch::video
