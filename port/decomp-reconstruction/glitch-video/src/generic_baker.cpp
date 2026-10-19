#include "glitch-video/generic_baker.hpp"

#include "glitch-video/material.hpp"
#include "glitch-video/vertex_attribute_map.hpp"

namespace glitch::video {

// 0x609d28 _ZN6glitch5video13CGenericBakerC1EPKNS0_7IShaderE
// 0x609db4 _ZN6glitch5video13CGenericBakerC2EPKNS0_7IShaderE
// The original passes a null streams pointer to the streams constructor (0x5a0958). Its null
// branch only leaves the map unset, which the streams constructor here does with a null
// stream and a count of zero.
CGenericBaker::CGenericBaker(const IShader* shader) : m_shader(shader) {
    referenceCounter = 0;  // +0x04
    m_attributeMap = boost::intrusive_ptr<CVertexAttributeMap>(
        new CVertexAttributeMap(boost::intrusive_ptr<const CVertexStreams>(), 0, nullptr, false), true);
}

// 0x60ab18 bake, 0x609e40 getBatchMaterial, 0x609ba4 configureAppendBuffer, 0x60a188 isCompatible, 0x609a8c initParameters and the
// destructor are in src/ok1b-CGenericBaker.cpp.
// 0x608958: returns the address of the attribute map slot at +0x0c.
const boost::intrusive_ptr<CVertexAttributeMap>& CGenericBaker::getVertexAttributeMap() const { return m_attributeMap; }

}  // namespace glitch::video
