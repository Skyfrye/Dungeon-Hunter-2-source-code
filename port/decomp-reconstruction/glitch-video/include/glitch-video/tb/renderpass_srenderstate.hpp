// glitch::video::detail::renderpass::SRenderState: the render-state block that a render
// pass carries. Only the words written by the default constructor (0x588ddc) are named.
// Members are named by offset because the field meanings are not identified yet. The
// total size of the original block is not recovered; more members are expected later.
#pragma once

#include <cstdint>

namespace glitch::io {
class IAttributes;
}  // namespace glitch::io

namespace glitch::video {
struct SRenderState;
}  // namespace glitch::video

namespace glitch::video::detail::renderpass {

struct SRenderState {
    SRenderState();  // 0x588ddc
    // 0x5d7a10: packs a full glitch::video::SRenderState (render_state.hpp) into the two flag words and the scalar members:
    //   word 0: bits 0-3 blend factor source, 4-7 destination (byte 0 of the source), bits 8-15 stencil reference (source byte 2),
    //   16-23 stencil mask (byte 3), 24-26 blend equation, 27-29 depth function, 30-31 cull face;
    //   word 1: bits 0-2 stencil function, 3-5 / 6-8 / 9-11 stencil operations fail / z-fail / z-pass, 12-13 / 14-15 polygon modes
    //   front / back, 16 blend, 17 cull face, 18 front face, 19 depth test, 20 depth mask, 21-23 polygon offset fill / line / point,
    //   24 sample alpha to coverage, 25 sample coverage, 26 coverage invert, 27 stencil test.
    explicit SRenderState(const glitch::video::SRenderState& source);
    // 0x5e0bac: writes the state as named attributes (the enums as their choice names).
    void serializeAttributes(glitch::io::IAttributes* attributes) const;
    // 0x5e1104: reads the same attributes back into the words.
    void deserializeAttributes(glitch::io::IAttributes* attributes);

    uint32_t m_word00;  // +0x00, set to 0x18ff0001 by the constructor
    uint32_t m_word04;  // +0x04, set to 0x00180007 by the constructor
    uint8_t m_byte08;   // +0x08, set to 0
    uint8_t m_byte09;   // +0x09, set to 0
    uint8_t m_byte0a;   // +0x0a, set to 0
    uint8_t m_byte0b;   // +0x0b, set to 0
    float m_float0c;    // +0x0c, set to 1.0f
    float m_float10;    // +0x10, set to 1.0f
    uint32_t m_word14;  // +0x14, set to 0
    float m_float18;    // +0x18, set to 1.0f
    float m_float1c;    // +0x1c, set to 1.0f
};

}  // namespace glitch::video::detail::renderpass
