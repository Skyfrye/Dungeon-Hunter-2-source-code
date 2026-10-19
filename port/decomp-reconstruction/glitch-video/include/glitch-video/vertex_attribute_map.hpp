// glitch::video::CVertexAttributeMap: a 30-byte table that maps each slot to
// the index of a stream in a CVertexStreams table (0xff when unset). Layout
// from the original: +0x00 is zeroed by every constructor and not copied by the
// assignment; +0x04..+0x21 holds the map.
#pragma once

#include <cstdint>

#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::video {

class CVertexAttributeMap {
public:
    static constexpr uint32_t kMapSize = 0x1e;  // 30 bytes at +0x04

    // 0x5a07bc, 0x5a07d8: copy constructor. Copies the map, not the +0x00 word.
    CVertexAttributeMap(const CVertexAttributeMap& other);

    // 0x5a07f4, 0x5a0814: copies kMapSize bytes from data.
    explicit CVertexAttributeMap(const uint8_t* data);

    // 0x5a0834, 0x5a0894: starts with every slot unset, then calls set when the
    // streams pointer is not null.
    CVertexAttributeMap(const boost::intrusive_ptr<const CVertexStreams>& streams, uint32_t count,
                        const uint8_t* pairs, bool sorted);

    // 0x5a0958 (C1), 0x5a099c (C2): the default map of a stream table (makeDefaultAttributeMap), or every slot unset
    // when the pointer is null.
    explicit CVertexAttributeMap(const boost::intrusive_ptr<const CVertexStreams>& streams);

    // 0x5a0788: copies the map.
    CVertexAttributeMap& operator=(const CVertexAttributeMap& other);

    // 0x5a0708: pairs holds count (slot, attribute) byte pairs. For each pair,
    // finds the first stream whose attribute is at least `attribute` and stores
    // its index in the slot. When sorted is true, the next search starts at the
    // stream just found.
    void set(const boost::intrusive_ptr<const CVertexStreams>& streams, uint32_t count, const uint8_t* pairs,
             bool sorted);

    mutable uint32_t m_refCount = 0;      // +0x00, intrusive reference count, zeroed by the constructors and not copied
    uint8_t m_map[kMapSize] = {};         // +0x04..+0x21, stream index per slot, 0xff when unset
};

// The original's inline count updates (CVertexAttributeMap keeps its count at +0x00, not in IReferenceCounted).
inline void intrusive_ptr_add_ref(const CVertexAttributeMap* p) { ++p->m_refCount; }
inline void intrusive_ptr_release(const CVertexAttributeMap* p) {
    if (p->m_refCount-- == 1) delete p;
}

}  // namespace glitch::video
