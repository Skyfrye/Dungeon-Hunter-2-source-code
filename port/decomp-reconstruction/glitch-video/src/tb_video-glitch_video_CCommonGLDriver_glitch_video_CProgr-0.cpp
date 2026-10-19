// Batch e1-glitch-video-glitch_video_CCommonGLDriver_glitch_video_CProgr-0.
// Render-state apply paths of CCommonGLDriver<CProgrammableGLDriver<CGLSLShaderHandler>,
// detail::CProgrammableGLFunctionPointerSet>, instantiated for detail::renderpass::SRenderState.

#include <cstdint>

#include "glitch-video/ccommon_gl_driver.hpp"
#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/tb/renderpass_srenderstate.hpp"

namespace glitch::video {

namespace {

// GL enum lookup tables, read from the .rodata of libDungeonHunter2.so.
// BlendFactorMap at 0x8e003c (60 bytes, 15 words).
constexpr uint32_t kBlendFactorMap[15] = {
    0x0000, 0x0001, 0x0300, 0x0301, 0x0302, 0x0303, 0x0306, 0x0307,
    0x0304, 0x0305, 0x8001, 0x8002, 0x8003, 0x8004, 0x0308,
};
// BlendEquationMap at 0x8e0078 (20 bytes, 5 words).
constexpr uint32_t kBlendEquationMap[5] = {0x8006, 0x800a, 0x800b, 0x8007, 0x8008};
// CompareFuncMap at 0x8e0098 (32 bytes, 8 words).
constexpr uint32_t kCompareFuncMap[8] = {0x0200, 0x0201, 0x0202, 0x0203, 0x0204, 0x0205, 0x0206, 0x0207};

constexpr uint32_t kGLBlend = 0x0be2;     // GL_BLEND
constexpr uint32_t kGLDepthTest = 0x0b71;  // GL_DEPTH_TEST

// Float constant 1/255 for the byte-to-float colour conversion (the original uses 0.0039216).
constexpr float kInv255 = 1.0f / 255.0f;

// Entries of the GL table are optional; a null entry is skipped.
void glEnableCap(uint32_t cap) {
    auto& t = deps::activeGLFunctionTable();
    if (t.enable) t.enable(cap);
}

}  // namespace

// 0x5af3f8 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE20applyRenderStateBlendINS2_9renderpass12SRenderStateEEEvRKS9_
// Partial: BlendFactorMap has 15 entries, but the 4-bit factor fields can hold 15 and the
// 3-bit equation field can hold 5..7. The original reads past the end of the table there
// (the bytes after BlendEquationMap are not in the repo). This port skips the GL call for
// those indices and still stores the cache, so the out-of-range case is not exact.
void CCommonGLDriver::applyRenderStateBlend(const detail::renderpass::SRenderState& state) {
    const uint32_t word0 = state.m_word00;

    // +0x1c4 (452): blend enable cache. Enable GL_BLEND once.
    if (!m_shadow.m_blendEnable) {
        glEnableCap(kGLBlend);
        m_shadow.m_blendEnable = true;
    }

    // Blend equation: bits 24..26 of word0.
    const uint32_t equation = (word0 >> 24) & 0x7u;
    if (static_cast<int32_t>(equation) != m_shadow.m_blendEquation) {
        auto& t = deps::activeGLFunctionTable();
        if (equation < 5u && t.blendEquation) t.blendEquation(kBlendEquationMap[equation]);
        m_shadow.m_blendEquation = static_cast<E_BLEND_EQUATION>(equation);  // +0x1fc
    }

    // Blend factors: src = bits 0..3, dst = bits 4..7 of word0. The cache holds src at
    // +0x200 and dst at +0x201, which is the same as the original's 16-bit src | dst << 8.
    const uint32_t src = word0 & 0xFu;
    const uint32_t dst = (word0 >> 4) & 0xFu;
    const uint32_t cachedFactors = static_cast<uint32_t>(m_shadow.m_blendSrc) | (static_cast<uint32_t>(m_shadow.m_blendDst) << 8);
    if ((src | (dst << 8)) != cachedFactors) {
        auto& t = deps::activeGLFunctionTable();
        if (src < 15u && dst < 15u && t.blendFunc) {
            t.blendFunc(kBlendFactorMap[src], kBlendFactorMap[dst]);
        }
        m_shadow.m_blendSrc = static_cast<uint8_t>(src);
        m_shadow.m_blendDst = static_cast<uint8_t>(dst);
    }

    // Blend colour: four bytes of the render state (r, g, b, a at +0x08..+0x0b). The cache at
    // +0x204 holds the same bytes in the same order (packed SColor).
    const uint32_t r = state.m_byte08;
    const uint32_t g = state.m_byte09;
    const uint32_t b = state.m_byte0a;
    const uint32_t a = state.m_byte0b;
    const uint32_t packed = r | (g << 8) | (b << 16) | (a << 24);
    if (packed != m_shadow.m_blendColor) {
        auto& t = deps::activeGLFunctionTable();
        if (t.blendColor) {
            t.blendColor(static_cast<float>(r) * kInv255, static_cast<float>(g) * kInv255,
                         static_cast<float>(b) * kInv255, static_cast<float>(a) * kInv255);
        }
        m_shadow.m_blendColor = packed;
    }
}

// 0x5af6fc _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE20applyRenderStateDepthTestINS2_9renderpass12SRenderStateEEEvRKS9_
// Complete: the 3-bit depth function index is 0..7 and CompareFuncMap has 8 entries.
void CCommonGLDriver::applyRenderStateDepthTest(const detail::renderpass::SRenderState& state) {
    // +0x1c6 (454): depth test enable cache. Enable GL_DEPTH_TEST once.
    if (!m_shadow.m_depthTestEnable) {
        glEnableCap(kGLDepthTest);
        m_shadow.m_depthTestEnable = true;
    }

    // Depth function: bits 27..29 of word0.
    const uint32_t func = (state.m_word00 >> 27) & 0x7u;
    if (static_cast<int32_t>(func) != m_shadow.m_depthFunc) {
        m_shadow.m_depthFunc = static_cast<E_COMPARE_FUNC>(func);  // +0x1e0, stored before the GL call
        auto& t = deps::activeGLFunctionTable();
        if (t.depthFunc) t.depthFunc(kCompareFuncMap[func]);
    }
}

}  // namespace glitch::video
