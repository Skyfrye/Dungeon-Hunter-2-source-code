#include "glitch-video/material_vertex_attribute_map.hpp"

#include <cstddef>

namespace glitch::video {


// 0x5df264 _ZN6glitch5video27CMaterialVertexAttributeMap13totalMapCountERKNS0_17CMaterialRendererE
// The original's first argument is the renderer (the call passes *renderer as this); the second is unused.
// (count +0x10 - 1) selects the technique entry; the slot count is its count byte plus the number of
// 52-byte blocks from the renderer's block base to the entry's block list (exact division, as in the original).
int32_t CMaterialVertexAttributeMap::totalMapCount(const CMaterialRenderer& renderer) {
    const STechniqueEntry& entry =
        renderer.m_techniques[static_cast<uint8_t>(renderer.m_techniqueCount - 1)];
    return static_cast<int32_t>(entry.passCount) + static_cast<int32_t>(entry.passes - renderer.m_passBase);
}

// 0x5df7b8 _ZN6glitch5video27CMaterialVertexAttributeMapC2ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEE
// 0x5df2c0 _ZN6glitch5video27CMaterialVertexAttributeMapC1ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEE
// Null renderer: the original dereferences it in totalMapCount; this port makes no slots.
CMaterialVertexAttributeMap::CMaterialVertexAttributeMap(
    const boost::intrusive_ptr<CMaterialRenderer>& renderer)
    : m_renderer(renderer) {  // the copy adds the renderer's use
    const int32_t count = renderer.get() != nullptr ? totalMapCount(*renderer) : 0;
    m_maps.resize(count > 0 ? static_cast<std::size_t>(count) : 0);
}

// 0x5df4b0 _ZN6glitch5video27CMaterialVertexAttributeMapC2ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKNS3_INS0_19CVertexAttributeMapEEEb
// 0x5df378 _ZN6glitch5video27CMaterialVertexAttributeMapC1ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKNS3_INS0_19CVertexAttributeMapEEEb
// copy == true: the copy constructor is applied to each source map (a null source is dereferenced, as in the
// original). Each copy starts with reference count 1.
CMaterialVertexAttributeMap::CMaterialVertexAttributeMap(const boost::intrusive_ptr<CMaterialRenderer>& renderer,
                                                         const boost::intrusive_ptr<CVertexAttributeMap>* maps,
                                                         bool copy)
    : m_renderer(renderer) {  // the copy adds the renderer's use
    const int32_t count = renderer.get() != nullptr ? totalMapCount(*renderer) : 0;
    const std::size_t slotCount = count > 0 ? static_cast<std::size_t>(count) : 0;
    m_maps.resize(slotCount);
    for (std::size_t i = 0; i < slotCount; ++i) {
        if (copy) {
            // The copy constructor leaves the count at 0; the slot takes the first use.
            m_maps[i] = boost::intrusive_ptr<CVertexAttributeMap>(new CVertexAttributeMap(*maps[i].get()), true);
        } else {
            m_maps[i] = maps[i];  // shares the map: the assignment adds a use
        }
    }
}

// 0x5df33c _ZN6glitch5video27CMaterialVertexAttributeMap8allocateERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEE
// The original's allocateBase (0x5df31c) returns a raw block of 4 * (count + 2) bytes; the port's
// vector-backed slots make that helper unnecessary, so the block is not reproduced here.
boost::intrusive_ptr<CMaterialVertexAttributeMap> CMaterialVertexAttributeMap::allocate(
    const boost::intrusive_ptr<CMaterialRenderer>& renderer) {
    // The constructor leaves the count at 0; allocate takes the first use.
    return boost::intrusive_ptr<CMaterialVertexAttributeMap>(new CMaterialVertexAttributeMap(renderer), true);
}

// 0x5df464 _ZNK6glitch5video27CMaterialVertexAttributeMap5cloneEb
boost::intrusive_ptr<CMaterialVertexAttributeMap> CMaterialVertexAttributeMap::clone(bool copy) const {
    return boost::intrusive_ptr<CMaterialVertexAttributeMap>(
        new CMaterialVertexAttributeMap(m_renderer, m_maps.data(), copy), true);
}

// 0x5df814 _ZN6glitch5video27CMaterialVertexAttributeMap3setEhhRKN5boost13intrusive_ptrINS0_19CVertexAttributeMapEEE
// The technique index here is 0-based (12 * technique), unlike totalMapCount, which subtracts one.
void CMaterialVertexAttributeMap::set(uint8_t technique, uint8_t parameterIndex,
                                      const boost::intrusive_ptr<CVertexAttributeMap>& map) {
    const CMaterialRenderer& renderer = *m_renderer;
    const STechniqueEntry& entry = renderer.m_techniques[technique];
    const SRenderPass* block = entry.passes + parameterIndex;
    const std::ptrdiff_t slot = block - renderer.m_passBase;
    if (slot < 0 || static_cast<std::size_t>(slot) >= m_maps.size()) {
        // The original writes without a check; the slot is ignored here.
        return;
    }
    // The assignment adds a use to the new map and drops the old one (deleting it when it was the last).
    m_maps[static_cast<std::size_t>(slot)] = map;
}

}  // namespace glitch::video
