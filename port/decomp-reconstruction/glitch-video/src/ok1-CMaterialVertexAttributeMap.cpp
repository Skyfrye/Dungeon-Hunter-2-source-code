// Owner K1: CMaterialVertexAttributeMap::allocateBase (0x5df31c), the renderer + vertex streams constructor (0x5df59c) and the
// matching allocate (0x5df624).
#include <new>

#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::video {

// 0x5df31c _ZN6glitch5video27CMaterialVertexAttributeMap12allocateBaseERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEE
// The block the original builds a map in: the count word, the renderer and one word per slot (4 * (slots + 2) bytes). The port keeps
// the slots in a vector, so the block is not used by allocate below.
void* CMaterialVertexAttributeMap::allocateBase(const boost::intrusive_ptr<CMaterialRenderer>& renderer) {
    return ::operator new[](4u * static_cast<size_t>(totalMapCount(*renderer) + 2));
}

// 0x5df59c _ZN6glitch5video27CMaterialVertexAttributeMapC1ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEERKNS3_IKNS0_14CVertexStreamsEEE
// The reference count starts at zero, the renderer is kept (a use is taken) and every slot is a new CVertexAttributeMap over the streams
// (its count is 1 once the slot holds it).
CMaterialVertexAttributeMap::CMaterialVertexAttributeMap(const boost::intrusive_ptr<CMaterialRenderer>& renderer,
                                                         const boost::intrusive_ptr<const CVertexStreams>& streams)
    : m_renderer(renderer) {
    const int32_t count = totalMapCount(*renderer);
    m_maps.resize(count > 0 ? static_cast<size_t>(count) : 0);
    for (auto& slot : m_maps) {
        slot = boost::intrusive_ptr<CVertexAttributeMap>(new CVertexAttributeMap(streams), true);
    }
}

// 0x5df624 _ZN6glitch5video27CMaterialVertexAttributeMap8allocateERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEERKNS3_IKNS0_14CVertexStreamsEEE
boost::intrusive_ptr<CMaterialVertexAttributeMap> CMaterialVertexAttributeMap::allocate(
    const boost::intrusive_ptr<CMaterialRenderer>& renderer, const boost::intrusive_ptr<const CVertexStreams>& streams) {
    return boost::intrusive_ptr<CMaterialVertexAttributeMap>(new CMaterialVertexAttributeMap(renderer, streams), true);
}

}  // namespace glitch::video
