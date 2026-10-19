// Owner K2: CVertexAttributeMap constructed from a stream table.
#include <cstring>

#include "glitch-video/vertex_attribute_map.hpp"

namespace glitch::video {

// 0x5a0958 _ZN6glitch5video19CVertexAttributeMapC1ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEE
// 0x5a099c _ZN6glitch5video19CVertexAttributeMapC2ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEE
// The count word (+0x00) starts at 0. A non-null stream table gives the default map (makeDefaultAttributeMap into +0x04),
// otherwise the 30 bytes are 0xff.
CVertexAttributeMap::CVertexAttributeMap(const boost::intrusive_ptr<const CVertexStreams>& streams) {
    m_refCount = 0;  // +0x00
    if (streams.get() != nullptr) {
        makeDefaultAttributeMap(streams.get(), m_map);  // +0x04
    } else {
        std::memset(m_map, 0xff, kMapSize);
    }
}

}  // namespace glitch::video
