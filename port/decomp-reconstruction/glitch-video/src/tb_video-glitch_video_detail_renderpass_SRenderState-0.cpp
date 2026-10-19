#include "glitch-video/tb/renderpass_srenderstate.hpp"

#include <cstddef>
#include <cstring>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-video/render_state.hpp"
#include "glitch-video/video_names.hpp"

namespace glitch::video::detail::renderpass {

// Layout checks for the offsets named in the header.
static_assert(offsetof(SRenderState, m_word00) == 0x00, "SRenderState +0x00");
static_assert(offsetof(SRenderState, m_word04) == 0x04, "SRenderState +0x04");
static_assert(offsetof(SRenderState, m_byte08) == 0x08, "SRenderState +0x08");
static_assert(offsetof(SRenderState, m_byte09) == 0x09, "SRenderState +0x09");
static_assert(offsetof(SRenderState, m_byte0a) == 0x0a, "SRenderState +0x0a");
static_assert(offsetof(SRenderState, m_byte0b) == 0x0b, "SRenderState +0x0b");
static_assert(offsetof(SRenderState, m_float0c) == 0x0c, "SRenderState +0x0c");
static_assert(offsetof(SRenderState, m_float10) == 0x10, "SRenderState +0x10");
static_assert(offsetof(SRenderState, m_word14) == 0x14, "SRenderState +0x14");
static_assert(offsetof(SRenderState, m_float18) == 0x18, "SRenderState +0x18");
static_assert(offsetof(SRenderState, m_float1c) == 0x1c, "SRenderState +0x1c");

// 0x588ddc _ZN6glitch5video6detail10renderpass12SRenderStateC1Ev
// Writes the default words in the order of the original. Fields after +0x1c are not
// written here and are not named.
SRenderState::SRenderState() {
    m_word00 = 0x18ff0001u;
    m_byte0b = 0;
    m_word14 = 0;
    m_float1c = 1.0f;
    m_word04 = 0x00180007u;
    m_byte08 = 0;
    m_byte09 = 0;
    m_byte0a = 0;
    m_float0c = 1.0f;
    m_float10 = 1.0f;
    m_float18 = 1.0f;
}

namespace {

// A flag bit set or cleared by a boolean.
void setBit(uint32_t& word, uint32_t bit, bool value) { word = value ? (word | bit) : (word & ~bit); }

float wordAsFloat(uint32_t word) {
    float value;
    std::memcpy(&value, &word, sizeof value);
    return value;
}

uint32_t floatAsWord(float value) {
    uint32_t word;
    std::memcpy(&word, &value, sizeof word);
    return word;
}

}  // namespace

// 0x5d7a10 _ZN6glitch5video6detail10renderpass12SRenderStateC1ERKNS0_12SRenderStateE
// Packs the full render state: the four blend-colour bytes (+0x14..+0x17 of the source) and the scalars (+0x28, +0x2c, +0x30,
// +0x34, +0x38 -> +0x0c, +0x10, +0x14, +0x18, +0x1c) are copied; word 0 gets the low byte of the source's first word (the blend
// factors), the stencil reference and mask bytes (source bytes 2 and 3), the blend equation (source word 2 bits 12-14), the cull
// face (its bits 30-31) and the depth function (word 3 bits 12-14); word 1 gets the enables and the two-bit and three-bit fields as
// listed in the header (the sources are the bits of the source's words 3 and 4 and bits 15-16, 17-18, 18-20, 21-23 and 24-26 of
// its word 2).
SRenderState::SRenderState(const glitch::video::SRenderState& source) {
    m_byte08 = source.m_bytes14[0];
    m_byte09 = source.m_bytes14[1];
    m_byte0a = source.m_bytes14[2];
    m_byte0b = source.m_bytes14[3];
    m_float0c = source.m_float28;
    m_float10 = source.m_float2c;
    std::memcpy(&m_word14, &source.m_word30, sizeof m_word14);
    m_float18 = source.m_float34;
    m_float1c = source.m_float38;
    m_word04 = 0;
    m_word00 = 0;
    if ((source.m_word0c & 0x80000u) != 0) m_word04 = 0x10000u;
    m_word00 = ((source.m_word08 >> 12) & 7u) << 24;
    m_word00 |= source.m_word00 & 0xffu;
    setBit(m_word04, 0x20000u, (source.m_word0c & 0x100000u) != 0);
    m_word00 |= source.m_word08 & 0xc0000000u;
    m_word04 = (m_word04 & 0xfffbffffu) | (((source.m_word0c >> 21) & 1u) << 18);
    setBit(m_word04, 0x80000u, (source.m_word0c & 0x400000u) != 0);
    m_word00 |= ((source.m_word0c >> 12) & 7u) << 27;
    setBit(m_word04, 0x100000u, (source.m_word0c & 0x800000u) != 0);
    m_word04 = (m_word04 & 0xffffcfffu) | (((source.m_word0c >> 15) & 3u) << 12);
    m_word04 = (m_word04 & 0xffff3fffu) | (((source.m_word0c >> 17) & 3u) << 14);
    setBit(m_word04, 0x200000u, (source.m_word0c & 0x2000000u) != 0);
    setBit(m_word04, 0x400000u, (source.m_word0c & 0x4000000u) != 0);
    setBit(m_word04, 0x800000u, (source.m_word0c & 0x8000000u) != 0);
    setBit(m_word04, 0x1000000u, (source.m_word0c & 0x10000000u) != 0);
    setBit(m_word04, 0x2000000u, (source.m_word0c & 0x20000000u) != 0);
    setBit(m_word04, 0x4000000u, (source.m_word0c & 0x40000000u) != 0);
    setBit(m_word04, 0x8000000u, (source.m_word10 & 1u) != 0);
    m_word04 = (m_word04 & 0xfffffff8u) | ((source.m_word08 >> 18) & 7u);
    m_word00 = (m_word00 & 0xffff00ffu) | (((source.m_word00 >> 16) & 0xffu) << 8);
    m_word00 = (m_word00 & 0xff00ffffu) | (((source.m_word00 >> 24) & 0xffu) << 16);
    m_word04 = (m_word04 & 0xffffffc7u) | (8u * ((source.m_word08 >> 21) & 7u));
    m_word04 = (m_word04 & 0xfffffe3fu) | (((source.m_word08 >> 24) & 7u) << 6);
    m_word04 = (m_word04 & 0xfffff1ffu) | (((source.m_word08 >> 27) & 7u) << 9);
}

// 0x5e0bac _ZNK6glitch5video6detail10renderpass12SRenderState19serializeAttributesEPNS_2io11IAttributesE
// One attribute per field, in this order: BlendEnable, BlendColor, BlendEquation, BlendFactorSrc, BlendFactorDest, CullFaceEnable,
// CullFace, FrontFace, DepthTestEnable, DepthFunc, DepthMask, LineWidth, PointSize, PolygonModeFront, PolygonModeBack,
// PolygonOffsetFillEnable / LineEnable / PointEnable, PolygonOffsetFactor, PolygonOffsetUnits, SampleAlphaToCoverageEnable,
// SampleCoverageEnable, SampleCoverageInvert, SampleCoverageValue, StencilTestEnable, StencilFunc, StencilFuncRef,
// StencilFuncMask, StencilOpFail, StencilOpZFail, StencilOpZPass. Enums go in as their choice names.
void SRenderState::serializeAttributes(glitch::io::IAttributes* attributes) const {
    attributes->addBool("BlendEnable", (m_word04 >> 16) & 1u, false);
    glitch::video::SColor blendColor;
    blendColor.color = static_cast<uint32_t>(m_byte08) | (static_cast<uint32_t>(m_byte09) << 8) |
                       (static_cast<uint32_t>(m_byte0a) << 16) | (static_cast<uint32_t>(m_byte0b) << 24);
    attributes->addColor("BlendColor", blendColor, false);
    attributes->addEnum("BlendEquation", static_cast<int>((m_word00 >> 24) & 7u), blendEquationNames(), false);
    attributes->addEnum("BlendFactorSrc", static_cast<int>(m_word00 & 0xfu), blendFactorNames(), false);
    attributes->addEnum("BlendFactorDest", static_cast<int>((m_word00 & 0xffu) >> 4), blendFactorNames(), false);
    attributes->addBool("CullFaceEnable", (m_word04 >> 17) & 1u, false);
    attributes->addEnum("CullFace", static_cast<int>(m_word00 >> 30), faceSideNames(), false);
    attributes->addEnum("FrontFace", static_cast<int>((m_word04 >> 18) & 1u), faceWindingNames(), false);
    attributes->addBool("DepthTestEnable", (m_word04 >> 19) & 1u, false);
    attributes->addEnum("DepthFunc", static_cast<int>((m_word00 >> 27) & 7u), compareFuncNames(), false);
    attributes->addBool("DepthMask", (m_word04 >> 20) & 1u, false);
    attributes->addFloat("LineWidth", m_float0c, false);
    attributes->addFloat("PointSize", m_float10, false);
    attributes->addEnum("PolygonModeFront", static_cast<int>((m_word04 >> 12) & 3u), polygonModeNames(), false);
    attributes->addEnum("PolygonModeBack", static_cast<int>((m_word04 & 0xffffu) >> 14), polygonModeNames(), false);
    attributes->addBool("PolygonOffsetFillEnable", (m_word04 >> 21) & 1u, false);
    attributes->addBool("PolygonOffsetLineEnable", (m_word04 >> 22) & 1u, false);
    attributes->addBool("PolygonOffsetPointEnable", (m_word04 >> 23) & 1u, false);
    attributes->addFloat("PolygonOffsetFactor", wordAsFloat(m_word14), false);
    attributes->addFloat("PolygonOffsetUnits", m_float18, false);
    attributes->addBool("SampleAlphaToCoverageEnable", (m_word04 >> 24) & 1u, false);
    attributes->addBool("SampleCoverageEnable", (m_word04 >> 25) & 1u, false);
    attributes->addBool("SampleCoverageInvert", (m_word04 >> 26) & 1u, false);
    attributes->addFloat("SampleCoverageValue", m_float1c, false);
    attributes->addBool("StencilTestEnable", (m_word04 >> 27) & 1u, false);
    attributes->addEnum("StencilFunc", static_cast<int>(m_word04 & 7u), compareFuncNames(), false);
    attributes->addInt("StencilFuncRef", static_cast<int>((m_word00 >> 8) & 0xffu), false);
    attributes->addInt("StencilFuncMask", static_cast<int>((m_word00 >> 16) & 0xffu), false);
    attributes->addEnum("StencilOpFail", static_cast<int>((m_word04 >> 3) & 7u), stencilOpNames(), false);
    attributes->addEnum("StencilOpZFail", static_cast<int>((m_word04 >> 6) & 7u), stencilOpNames(), false);
    attributes->addEnum("StencilOpZPass", static_cast<int>((m_word04 >> 9) & 7u), stencilOpNames(), false);
}

// 0x5e1104 _ZN6glitch5video6detail10renderpass12SRenderState21deserializeAttributesEPNS_2io11IAttributesE
// The inverse of serializeAttributes, field by field in the same order, each value merged into its bits of the two words (an
// enum value is not masked to its width, as in the binary).
void SRenderState::deserializeAttributes(glitch::io::IAttributes* attributes) {
    setBit(m_word04, 0x10000u, attributes->getBool("BlendEnable"));
    const glitch::video::SColor blendColor = attributes->getColor("BlendColor");
    m_byte08 = static_cast<uint8_t>(blendColor.color);
    m_byte09 = static_cast<uint8_t>(blendColor.color >> 8);
    m_byte0a = static_cast<uint8_t>(blendColor.color >> 16);
    m_byte0b = static_cast<uint8_t>(blendColor.color >> 24);
    m_word00 = (m_word00 & 0xf8ffffffu) | (static_cast<uint32_t>(attributes->getEnum("BlendEquation", blendEquationNames())) << 24);
    const uint32_t source = static_cast<uint32_t>(attributes->getEnum("BlendFactorSrc", blendFactorNames()));
    const uint32_t destination = static_cast<uint32_t>(attributes->getEnum("BlendFactorDest", blendFactorNames()));
    m_word00 = source | (16u * destination) | (m_word00 & 0xffffff00u);
    setBit(m_word04, 0x20000u, attributes->getBool("CullFaceEnable"));
    m_word00 = (m_word00 & 0x3fffffffu) | (static_cast<uint32_t>(attributes->getEnum("CullFace", faceSideNames())) << 30);
    m_word04 = (m_word04 & 0xfffbffffu) | (static_cast<uint32_t>(attributes->getEnum("FrontFace", faceWindingNames())) << 18);
    setBit(m_word04, 0x80000u, attributes->getBool("DepthTestEnable"));
    m_word00 = (m_word00 & 0xc7ffffffu) | (static_cast<uint32_t>(attributes->getEnum("DepthFunc", compareFuncNames())) << 27);
    setBit(m_word04, 0x100000u, attributes->getBool("DepthMask"));
    m_float0c = attributes->getFloat("LineWidth");
    m_float10 = attributes->getFloat("PointSize");
    m_word04 = (m_word04 & 0xffffcfffu) | (static_cast<uint32_t>(attributes->getEnum("PolygonModeFront", polygonModeNames())) << 12);
    m_word04 = (m_word04 & 0xffff3fffu) | (static_cast<uint32_t>(attributes->getEnum("PolygonModeBack", polygonModeNames())) << 14);
    setBit(m_word04, 0x200000u, attributes->getBool("PolygonOffsetFillEnable"));
    setBit(m_word04, 0x400000u, attributes->getBool("PolygonOffsetLineEnable"));
    setBit(m_word04, 0x800000u, attributes->getBool("PolygonOffsetPointEnable"));
    const float factor = attributes->getFloat("PolygonOffsetFactor");
    m_float18 = attributes->getFloat("PolygonOffsetUnits");
    m_word14 = floatAsWord(factor);
    setBit(m_word04, 0x1000000u, attributes->getBool("SampleAlphaToCoverageEnable"));
    setBit(m_word04, 0x2000000u, attributes->getBool("SampleCoverageEnable"));
    setBit(m_word04, 0x4000000u, attributes->getBool("SampleCoverageInvert"));
    m_float1c = attributes->getFloat("SampleCoverageValue");
    setBit(m_word04, 0x8000000u, attributes->getBool("StencilTestEnable"));
    m_word04 = static_cast<uint32_t>(attributes->getEnum("StencilFunc", compareFuncNames())) | (m_word04 & 0xfffffff8u);
    m_word00 = (m_word00 & 0xffff00ffu) | ((static_cast<uint32_t>(attributes->getInt("StencilFuncRef")) & 0xffu) << 8);
    m_word00 = (m_word00 & 0xff00ffffu) | ((static_cast<uint32_t>(attributes->getInt("StencilFuncMask")) & 0xffu) << 16);
    m_word04 = (m_word04 & 0xffffffc7u) | (8u * static_cast<uint32_t>(attributes->getEnum("StencilOpFail", stencilOpNames())));
    m_word04 = (m_word04 & 0xfffffe3fu) | (static_cast<uint32_t>(attributes->getEnum("StencilOpZFail", stencilOpNames())) << 6);
    m_word04 = (m_word04 & 0xfffff1ffu) | (static_cast<uint32_t>(attributes->getEnum("StencilOpZPass", stencilOpNames())) << 9);
}

}  // namespace glitch::video::detail::renderpass
