// Owner K2: CPrimitiveStream attribute (de)serialization.
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-video/primitive_stream.hpp"

namespace glitch::video {

namespace {
// getStringsInternal(E_PRIMITIVE_TYPE*) 0x5a18d8 returns the function-local static names (ELF 0x99b610), null terminated.
const char* const kPrimitiveTypeNames[] = {"Points",         "Line Strip", "Line Loop", "Lines", "Triangle Strip",
                                           "Triangle Fan", "Triangles", "Quad Strip", "Quads", nullptr};
// getStringsInternal(E_INDEX_TYPE*) 0x5a1878 (ELF 0x99b5ec).
const char* const kIndexTypeNames[] = {"u8", "u16", "u32", nullptr};
}  // namespace

// 0x5a03fc _ZN6glitch5video16CPrimitiveStream21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The primitive type, the index count and the first vertex are always read; with an index buffer the index type, the byte
// offset and the last vertex are read too, each only when the attribute exists. Slots used: getEnum(name, choices) +0x100,
// getInt(name) +0x58, findAttribute +0x28, getEnum(index, choices) +0x104, getInt(index) +0x5c.
void CPrimitiveStream::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    m_primitiveType = static_cast<uint16_t>(attributes->getEnum("PrimitiveType", kPrimitiveTypeNames));  // +0x16
    m_count = static_cast<uint32_t>(attributes->getInt("IndexCount"));                                   // +0x08
    m_vertexStart = static_cast<uint32_t>(attributes->getInt("VertexStart"));                            // +0x0c
    if (m_indexBuffer.get() != nullptr) {  // +0x00
        int index = static_cast<int>(attributes->findAttribute("IndexType"));
        if (index >= 0) m_indexType = static_cast<uint16_t>(attributes->getEnum(index, kIndexTypeNames));  // +0x14
        index = static_cast<int>(attributes->findAttribute("Offset"));
        if (index >= 0) m_offset = static_cast<uint32_t>(attributes->getInt(index));  // +0x04
        index = static_cast<int>(attributes->findAttribute("VertexEnd"));
        if (index >= 0) m_vertexEnd = static_cast<uint32_t>(attributes->getInt(index));  // +0x10
    }
}

// 0x5a0524 _ZNK6glitch5video16CPrimitiveStream19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// addEnum is slot +0xf4, addInt +0x4c. "PrimitiveCount" is written with the flag set (derived value). Without an index
// buffer the flag of "VertexStart" is the index buffer word itself, which is null there, i.e. false.
void CPrimitiveStream::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) const {
    attributes->addEnum("PrimitiveType", static_cast<int>(m_primitiveType), kPrimitiveTypeNames, false);
    if (m_indexBuffer.get() != nullptr) {
        attributes->addEnum("IndexType", static_cast<int>(m_indexType), kIndexTypeNames, false);
        attributes->addInt("Offset", static_cast<int>(m_offset), false);
        attributes->addInt("IndexCount", static_cast<int>(m_count), false);
        attributes->addInt("PrimitiveCount", static_cast<int>(getPrimitiveCount()), true);
        attributes->addInt("VertexStart", static_cast<int>(m_vertexStart), false);
        attributes->addInt("VertexEnd", static_cast<int>(m_vertexEnd), false);
    } else {
        attributes->addInt("VertexStart", static_cast<int>(m_vertexStart), m_indexBuffer.get() != nullptr);
        attributes->addInt("IndexCount", static_cast<int>(m_count), false);
        attributes->addInt("PrimitiveCount", static_cast<int>(getPrimitiveCount()), true);
    }
}

}  // namespace glitch::video
