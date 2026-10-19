#include "glitch-video/vertex_attribute_map.hpp"

#include <algorithm>
#include <cstring>

namespace glitch::video {

// 0x5a07bc _ZN6glitch5video19CVertexAttributeMapC1ERKS1_
// 0x5a07d8 _ZN6glitch5video19CVertexAttributeMapC2ERKS1_
CVertexAttributeMap::CVertexAttributeMap(const CVertexAttributeMap& other) { *this = other; }

// 0x5a07f4 _ZN6glitch5video19CVertexAttributeMapC1EPKh
// 0x5a0814 _ZN6glitch5video19CVertexAttributeMapC2EPKh
CVertexAttributeMap::CVertexAttributeMap(const uint8_t* data) {
    std::memcpy(m_map, data, kMapSize);
}

// 0x5a0834 _ZN6glitch5video19CVertexAttributeMapC1ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb
// 0x5a0894 _ZN6glitch5video19CVertexAttributeMapC2ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb
CVertexAttributeMap::CVertexAttributeMap(const boost::intrusive_ptr<const CVertexStreams>& streams, uint32_t count,
                                         const uint8_t* pairs, bool sorted) {
    std::memset(m_map, 0xff, kMapSize);
    if (streams.get() != nullptr) {
        set(streams, count, pairs, sorted);
    }
}

// 0x5a0788 _ZN6glitch5video19CVertexAttributeMapaSERKS1_
// The original copies the 30 bytes in pieces (16, 12 and 2 bytes). The +0x00 word is not copied.
CVertexAttributeMap& CVertexAttributeMap::operator=(const CVertexAttributeMap& other) {
    std::copy(other.m_map, other.m_map + kMapSize, m_map);
    return *this;
}

// 0x5a0708 _ZN6glitch5video19CVertexAttributeMap3setERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb
void CVertexAttributeMap::set(const boost::intrusive_ptr<const CVertexStreams>& streams, uint32_t count,
                              const uint8_t* pairs, bool sorted) {
    const CVertexStreams* s = streams.get();
    if (s == nullptr || count == 0) return;
    const SVertexStream* begin = s->m_streams.data();
    const SVertexStream* end = begin + s->m_streams.size();
    const SVertexStream* first = begin;
    for (uint32_t i = 0; i < count; ++i) {
        const uint8_t slot = pairs[2 * i];
        const uint8_t attribute = pairs[2 * i + 1];
        const SVertexStream* found = s->getStream(attribute, first, end);
        if (found != end) {
            if (sorted) first = found;
            // The original writes the slot without a check; slots past the map are ignored here.
            if (slot < kMapSize) m_map[slot] = static_cast<uint8_t>(found - begin);
        }
    }
}

}  // namespace glitch::video
