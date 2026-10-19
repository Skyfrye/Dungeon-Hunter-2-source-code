// glitch::video::CVertexStreams: the vertex stream table of a mesh.
//
// Layout of the original object (from the constructor 0x5a113c / 0x5a148c, allocate 0x5a1270,
// copyVertex 0x5a2b18, isVertexStreamHomolaced 0x5a23f4, getActiveAttributeMask 0x5a0a58):
//   +0x00  intrusive reference count (allocate 0x5a1270 does ++*(obj))
//   +0x04  attribute mask (ctor argument 3)
//   +0x08  field08 (ctor argument 2), meaning not identified
//   +0x0c  count0c: count of the trailing block, which is 24 * count0c + 24 bytes (ctor, memcpy/memset of a4)
//   +0x0d  streamCount: number of SVertexStream entries (ctor: end = this + 20 + 16 * streamCount)
//   +0x0e  flags, 16 bits; the constructor stores 3 (kFlagHomogeneous | kFlagHasData)
//   +0x10  end pointer of the entry array (ctor: stored as this + 20 + 16 * streamCount)
//   +0x14  SVertexStream entries, 16 bytes each, inline (begin = this + 20, so entry i is at +0x14 + 16 * i)
//   after the entries: trailing block of 24 * count0c + 24 bytes (not modelled; see the class comment)
//   +0x22  vertex stride word: this is SVertexStream[0].field0e (entry 0 at +0x14, field0e at +0x0e).
//          Both copyVertex (0x5a2b18, LDRH r4,[r2,#0x22] at 0x5a2c00) and isVertexStreamHomolaced
//          (0x5a23f4, LDRH at 0x5a2410) read it, and the constructor writes it as entry 0's field0e.
//   *(+0x10)  trailing block: count0c + 1 records of 24 bytes (scale vector3d, offset vector3d) that dequantize
//          positions when flag bit 2 (0x4) of +0x0e is set (computeBoundingBox 0x5a0ec0: box = box * scale + offset).
//          Its size, 24 * count0c + 24, is the constructor's memcpy/memset length.
// The port stores the entries and the trailing block in std::vectors, so these offsets are comments, not the
// memory layout. The reference count is at +0x00 and the class has no vtable; intrusive_ptr_add_ref and
// intrusive_ptr_release below are the original's inline count updates (the last release runs the destructor and
// frees the block, 0x5a09e0 / 0x5a0a1c).
// Canonical definition (engine unification wave u1-video); the stand-in in glitch-core-io
// (deps/glitch_core_objects.hpp) and the forward declarations elsewhere are replaced by this header.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-video/buffer.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

// 16 bytes in the original.
struct SVertexStream {
    boost::intrusive_ptr<IBuffer> buffer;  // +0x00
    int32_t offset = 0;                    // +0x04, changed by CVertexStreams::addOffset (signed: the original wraps a 32-bit unsigned, which a 64-bit pointer sum must see as negative)
    uint16_t attribute = 0;                // +0x08, E_VERTEX_ATTRIBUTE index (ctor 0x5a113c, getActiveAttributeMask 0x5a0a58)
    uint16_t field0a = 0;                  // +0x0a, value type: index into SVertexAttributeTypeInspection::ValueTypeSize
                                           //        (copyVertex 0x5a2b18, ValueTypeSize[*(u16*)(entry+10)]); 0xff = unset
    uint16_t field0c = 0;                  // +0x0c, component count: bytes copied = count * ValueTypeSize[field0a]
                                           //        (copyVertex 0x5a2b18, v11 = *(u16*)(entry+12))
    uint16_t field0e = 0;                  // +0x0e, per-vertex stride in bytes (copyVertex 0x5a2b18, v12 = *(u16*)(entry+14):
                                           //        source = map + offset + stride * vertex). Entry 0's field0e is the
                                           //        table word at +0x22, see getVertexStride.

    // 0x62fe18 SVertexStream::unmapBuffer() const: releases one map reference on buffer.
    void unmapBuffer() const;

    // 0x5a1ed8: copies count vertices starting at `first` from another stream of the same layout, with `delta` added
    // to the source offset. Not reconstructed (declared).
    void copyStream(const SVertexStream& source, uint32_t first, uint32_t count, int32_t delta);
    // 0x5a203c: an empty body (4 bytes) in the original.
    void append(const SVertexStream& source, uint32_t first, uint32_t count, uint32_t unused);

    // Mapped view of one stream (SVertexStream::SMapBuffer<T> in the original). The
    // original stores the stream pointer at +0x00 (the buffer is its first word) and
    // the mapped pointer, already offset by the stream offset, at +0x04.
    template <typename T>
    struct SMapBuffer {
        SVertexStream* stream = nullptr;  // +0x00
        T* data = nullptr;                // +0x04

        // 0x5a0e28 (T = void const): releases the mapping, if any.
        // Partial: see unmapBuffer.
        void reset() {
            if (data != nullptr) {
                stream->buffer->unmap();
                stream = nullptr;
                data = nullptr;
            }
        }

        // 0x6d6fe0 (vector2d<float>), 0x6d7088 (vector3d<float>), 0x6d7130 (SColor):
        // releases the old mapping, then maps stream with access. Returns the base
        // pointer of the mapping (before the stream offset is added). Partial: see
        // unmapBuffer. The original adds the offset to a null base as well; this
        // port keeps data null in that case.
        uint8_t* reset(SVertexStream& s, int32_t access) {
            reset();
            stream = &s;
            uint8_t* base = s.buffer->map(access);
            // 0x6d6fe0: the original stores map() + stream offset with no null test (a1[1] = result + a2[1]).
            data = reinterpret_cast<T*>(base + s.offset);
            return base;
        }
    };
};

// Stream description passed to CVertexStreams::setStream (SVertexStreamData in the original).
struct SVertexStreamData {
    boost::intrusive_ptr<IBuffer> buffer;  // +0x00
    uint32_t offset = 0;                   // +0x04
    uint16_t field08 = 0;                  // +0x08, copied to SVertexStream::field0a
    uint16_t field0a = 0;                  // +0x0a, not read by setStream
    uint16_t field0c = 0;                  // +0x0c, copied to SVertexStream::field0c
    uint16_t field0e = 0;                  // +0x0e, copied to SVertexStream::field0e

    // 0x647f54 SVertexStreamData::operator=(SVertexStream&): copies buffer, offset and the
    // three fields from the stream. field0a is not written. Partial: the buffer is an
    // intrusive_ptr copy, without the reference-count updates of the original.
    SVertexStreamData& operator=(const SVertexStream& stream);
};

class CVertexStreams {
public:
    CVertexStreams() = default;
    // Not part of the original: the stream table is not copyable (the original copies through clone()).
    CVertexStreams(const CVertexStreams&) = delete;
    CVertexStreams& operator=(const CVertexStreams&) = delete;

    // 0x5a113c (C1) / 0x5a148c (C2): one constructor body. The count is 0 (allocate adds the first use). A source table
    // copies buffer (taking a use), offset, attribute and the three fields; without one, the attributes come from the mask
    // bits in order, with field0a set to 0xff. The trailing block of 24 * count0c + 24 bytes (copied from the caller's
    // vector3d array, or zeroed) is m_quantization; the original keeps it in the same allocation after the entries.
    CVertexStreams(uint32_t field08, uint32_t attributeMask, uint8_t count0c, uint8_t streamCount,
                   const SVertexStream* source, const core::vector3d<float>* trailing = nullptr);

    // 0x5a0a1c (D1, body in src/tb_video-glitch_video_CVertexStreams-0.cpp): releases the buffer
    // of each entry that has one (IReferenceCounted::drop, here the counting intrusive_ptr); the vectors free the rest.
    ~CVertexStreams();

    // 0x5a1270 (7-argument allocate): creates a table and returns it with count 1 (the original hands it back through an
    // out pointer; the constructor leaves the count at 0 and allocate adds the first use).
    static boost::intrusive_ptr<CVertexStreams> allocate(uint32_t field08, uint32_t attributeMask,
                                                         uint8_t count0c, uint8_t streamCount,
                                                         const SVertexStream* source,
                                                         const core::vector3d<float>* trailing = nullptr);

    // 0x5a135c (allocate(unsigned int)): table for the mask. Bit 0 is always set. count0c
    // is the number of set bits in 1..16 and streamCount the number of set bits.
    static boost::intrusive_ptr<CVertexStreams> allocate(uint32_t attributeMask);

    // 0x5a1404 (allocate(unsigned char, unsigned int)): bits 1..count are set in addition to the mask.
    static boost::intrusive_ptr<CVertexStreams> allocate(uint8_t count, uint32_t attributeMask);

    // 0x5a1310 (clone): copies the table, the trailing block and the flags.
    boost::intrusive_ptr<CVertexStreams> clone() const;

    // 0x5a0c60: copies the masked streams from source into this table, with offsetDelta
    // added to each copied offset, then recomputes homogeneity with flag. Returns the mask
    // of copied attributes. Each copied entry takes a use of the source buffer and drops the old one.
    uint32_t setStreams(const boost::intrusive_ptr<CVertexStreams>& source, uint32_t mask, int32_t offsetDelta,
                        bool flag);

    // 0x5a178c: assigns each entry from data (in order) when its attribute is in the mask,
    // clears the others, then recomputes homogeneity with flag. Returns the masked attributes.
    // Each assigned entry takes a use of the new buffer and drops the old one.
    uint32_t setupStreams(const SVertexStreamData* data, uint32_t mask, bool flag);

    // 0x7d46fc: copies the description into one stream entry, then recomputes
    // homogeneity with flag. The buffer assignment takes a use of the new buffer and drops the old one.
    void setStream(SVertexStream* stream, const SVertexStreamData& data, bool flag);

    // 0x5a0ec0: bounding box of vertices [first, last) of the position stream (entry 0). The stream's buffer is
    // read-mapped as IBuffer::map 0x5a1adc (access 0) and the elements start at base + entry.offset +
    // entry.field0e * first, with entry.field0a as the value type and entry.field0c as the component count; the
    // mapping is released before the quantized branch. With the quantized flag (bit 2 of m_flags) set, both
    // corners become box * scale + offset, with the trailing block's first vector as the scale and the second as
    // the offset. Body in src/vertex_streams.cpp.
    void computeBoundingBox(uint32_t first, uint32_t last, core::aabbox3d<float>& box) const;
    // 0x5a0fe4: copies the streams of the common attributes of this table, the source and `mask` (SVertexStream::copyStream
    // per stream; streams that differ in value type or component count are dropped from the result). Returns the
    // attribute mask that was copied. Not reconstructed (declared).
    uint32_t copyStreams(const boost::intrusive_ptr<const CVertexStreams>& source, uint32_t first, uint32_t count,
                         int32_t delta, uint32_t mask);
    // 0x5a15c0: points every stream whose attribute is in the mask at one shared buffer and lays the streams out one
    // after the other with the default value type and component count of each attribute
    // (SVertexAttributeTypeInspection::Defaults, a .rodata table that is not in the repo). Not reconstructed (declared).
    uint32_t setupStreams(const boost::intrusive_ptr<IBuffer>& buffer, uint32_t mask);
    // 0x5abb58 / 0x647ee0: setStream from another stream with an offset delta. Not reconstructed (declared).
    void setStream(SVertexStream* stream, const SVertexStream& source, int32_t delta, bool flag);
    // 0x663ca8 / 0x6dc848: replaces the buffer of one stream. Not reconstructed (declared).
    void setStreamBuffer(SVertexStream* stream, const boost::intrusive_ptr<IBuffer>& buffer, bool flag);

    // 0x5a0a58: bit mask of the attributes whose stream has a buffer.
    uint32_t getActiveAttributeMask() const;

    // Vertex stride word at +0x22 of the original object. It is SVertexStream[0].field0e
    // (entry 0 at +0x14), so the value is the stride of the first stream. Read by copyVertex
    // (0x5a2b18, the wholeVertex branch: memcpy length and vertex offset) and
    // isVertexStreamHomolaced (0x5a23f4: stride every later entry must match). Returns 0
    // for an empty table. Open: the original reads the first byte pair of the trailing
    // block there, which is not modelled.
    uint16_t getVertexStride() const;

    // 0x5a0aac / 0x5a0af0: first stream in [first, end) with attribute >= wanted; the
    // end pointer when the attribute is not present.
    const SVertexStream* getStream(uint32_t attribute, const SVertexStream* first, const SVertexStream* end) const;
    SVertexStream* getStream(uint32_t attribute, SVertexStream* first, SVertexStream* end);

    // 0x5a0b34: adds delta to the offset of every stream.
    void addOffset(int32_t delta);

    // 0x5a0b74: true when every attribute in mask (restricted to the attribute
    // mask +0x04) reads from the same buffer.
    bool isHomogeneous(uint32_t mask) const;

    // 0x5a0bfc: flag == false sets kFlagHomogeneous when no two neighbouring
    // streams hold different non-null buffers. flag == true clears it.
    void updateHomogeneityInternal(bool flag);

    // 0x5a0d80: rebuilds m_flags. Sets kFlagHasData on entry, then clears it when
    // a bound buffer has no data pointer. Homogeneity follows the same rule as
    // updateHomogeneityInternal.
    void updateStatesInternal(bool flag);

    // 0x5a0e24: thunk, `b #0x5a0d80`. Forwards to updateStatesInternal.
    void updateStates(bool flag);

    // Bits of m_flags, named by what the code tests them for.
    static constexpr uint16_t kFlagHomogeneous = 0x0001;  // bit 0, every bound stream shares one buffer
    static constexpr uint16_t kFlagHasData = 0x0002;      // bit 1, set on entry, cleared on a data-less buffer
    static constexpr uint16_t kFlagQuantized = 0x0004;    // bit 2, the trailing block dequantizes the positions
                                                          // (computeBoundingBox 0x5a0ec0: box * scale + offset)

    mutable uint32_t m_refCount = 0;       // +0x00, intrusive reference count (0 after the constructor; allocate adds the first use)
    std::vector<SVertexStream> m_streams;  // entries at +0x14 (16 bytes each), end pointer at +0x10 in the original
    std::vector<core::vector3d<float>> m_quantization;  // trailing block at *(+0x10): 2 * (count0c + 1) vectors
    uint32_t m_attributeMask = 0;          // +0x04, attributes present in the table
    uint32_t m_field08 = 0;                // +0x08, set by the constructor; meaning not identified
    uint8_t m_count0c = 0;                 // +0x0c, count of the trailing block (24 * count + 24 bytes)
    uint8_t m_streamCount0d = 0;           // +0x0d, number of stream entries (constructor: a5)
    uint16_t m_flags = 0;                  // +0x0e, see kFlag* above (constructor stores 3)
};

// The original's inline count updates (CVertexStreams keeps its count at +0x00, not in IReferenceCounted).
inline void intrusive_ptr_add_ref(const CVertexStreams* p) { ++p->m_refCount; }
inline void intrusive_ptr_release(const CVertexStreams* p) {
    if (p->m_refCount-- == 1) delete p;  // the original runs ~CVertexStreams (0x5a09e0) then LC_API_FREE_0
}

namespace detail {

// .rodata table at 0x8e4ca4 in libDungeonHunter2.so (7 bytes, read from the ELF):
// element size in bytes of each vertex attribute value type: 1 1 2 2 4 4 4.
struct SVertexAttributeTypeInspection {
    static const uint8_t ValueTypeSize[7];
    // .rodata table at 0x8e4cac (read from the ELF): the default value type (index into ValueTypeSize) and component count of
    // each of the 30 vertex attributes, four bytes each: 0 position 6 x 3, 1..16 texture coordinates 6 x 2, 17 normal 6 x 3,
    // 18 and 19 colours 1 x 4, 20..27 6 x 3, 28 6 x 4, 29 1 x 4. createMeshCopy (0x59b2a4) reads it for the attributes a copy
    // adds; CVertexStreams::setupStreams (0x5a15c0) is the other reader.
    struct SDefault {
        uint16_t valueType;
        uint16_t componentCount;
    };
    static const SDefault Defaults[30];
};

// 0x6dc688: lays the streams of `mask` out one after the other (each stream's offset becomes the running size, the
// stream's component count times its value type size) and returns the stride of one vertex.
uint32_t getStrides(uint32_t mask, const boost::intrusive_ptr<CVertexStreams>& streams);
// 0x6dc888: points every stream of `mask` at `buffer`, sets its stride and adds `offsetDelta` to its offset.
void assignBuffer(const boost::intrusive_ptr<IBuffer>& buffer, uint32_t stride, int32_t offsetDelta, uint32_t mask,
                  const boost::intrusive_ptr<CVertexStreams>& streams);
// 0x6dc900: removes the buffer from the streams of `mask` (stride 0, offset moved back by the first stream's stride times
// `vertexCount`) and returns the buffer the first of them held.
boost::intrusive_ptr<IBuffer> clearBuffer(uint32_t vertexCount, uint32_t mask,
                                          const boost::intrusive_ptr<CVertexStreams>& streams);

}  // namespace detail

// 0x5a2b18 copyVertex(vertex, src, dst, base, out, wholeVertex). With wholeVertex false, each
// stream of src copies count * ValueTypeSize[type] bytes of vertex number `vertex` from its
// mapped buffer (offset + stride * vertex) to out, and advances out. dst is not used by the
// original. Partial: the wholeVertex branch (one memcpy of the table's vertex size, a
// CVertexStreams word at +0x22 that is not in this layout) is not written. The mapping is not
// released, as in the original.
void copyVertex(uint16_t vertex, const boost::intrusive_ptr<const CVertexStreams>& src,
                const boost::intrusive_ptr<CVertexStreams>& dst, const uint8_t* base, uint8_t*& out,
                bool wholeVertex);

// 0x5a23f4 isVertexStreamHomolaced(streams, minOffset): true when every stream after the first has
// the same stride as entry 0 (getVertexStride) and all streams fit in one vertex. minOffset receives
// the smallest stream offset (0 when a stride differs). Partial: the original reads the entry
// at null + 12 when the table is empty (crash on device); this port returns false with minOffset
// INT32_MAX for an empty table. A field0a value past the 7-entry ValueTypeSize table reads past it
// in the original and is not guarded here.
bool isVertexStreamHomolaced(const boost::intrusive_ptr<const CVertexStreams>& streams, int32_t& minOffset);

// 0x5a08f4: fills the 30-byte attribute map (0xff = unset) with the index of each
// stream whose attribute is the map slot. Attributes past the map are skipped here;
// the original writes without a check.
uint8_t* makeDefaultAttributeMap(const CVertexStreams* streams, uint8_t* map);

}  // namespace glitch::video
