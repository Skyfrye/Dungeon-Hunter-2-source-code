// glitch::video::SRenderState: the default render-state block of the programmable
// driver. Members are named by offset because the original field meanings are not
// identified yet; defaults are the values the constructor writes.
#pragma once

#include <cstdint>

namespace glitch::video {

// 0x4c bytes in the original.
struct SRenderState {
    SRenderState();  // 0x5d797c

    uint32_t m_word00 = 0xff000101u;  // +0x00
    uint32_t m_word04 = 0xffff00ffu;  // +0x04
    uint32_t m_word08 = 0x001c0f00u;  // +0x08
    uint32_t m_word0c = 0x01c03007u;  // +0x0c
    uint32_t m_word10 = 0;            // +0x10
    uint8_t m_bytes14[8] = {};        // +0x14..+0x1b, zeroed
    float m_float1c = 1.0f;           // +0x1c
    uint32_t m_word20 = 0;            // +0x20
    float m_float24 = 1.0f;           // +0x24
    float m_float28 = 1.0f;           // +0x28
    float m_float2c = 1.0f;           // +0x2c
    uint32_t m_word30 = 0;            // +0x30
    float m_float34 = 1.0f;           // +0x34
    float m_float38 = 1.0f;           // +0x38
    uint32_t m_word3c = 0;            // +0x3c
    uint32_t m_word40 = 0;            // +0x40
    uint32_t m_word44 = 0;            // +0x44
    uint32_t m_word48 = 0;            // +0x48
};

}  // namespace glitch::video
