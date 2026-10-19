// Batch e1-glitch-video-glitch_video_detail-0.
// glitch::video::detail::apply<true, renderpass::SRenderState, CCommonGLDriver<...>> (0x5b71d8).
//
// The body follows the Hex-Rays pseudocode; every group's apply path is a member of CCommonGLDriver (ccommon_gl_driver.hpp), the
// GL enable / disable calls go through the function table, and the cache flags are the driver's m_shadow members. The one
// instantiation the binary has (the programmable GL driver) is explicitly instantiated at the end of the file.
#include "glitch-video/tb/glitch_video_detail.hpp"

#include <cstdint>

#include "glitch-video/ccommon_gl_driver.hpp"
#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/tb/renderpass_srenderstate.hpp"

namespace glitch::video::detail {

namespace {

constexpr uint32_t kGLBlend = 0x0be2;              // GL_BLEND
constexpr uint32_t kGLCullFace = 0x0b44;           // GL_CULL_FACE
constexpr uint32_t kGLDepthTest = 0x0b71;          // GL_DEPTH_TEST
constexpr uint32_t kGLStencilTest = 0x0b90;        // GL_STENCIL_TEST
constexpr uint32_t kGLSampleCoverage = 0x80a0;     // GL_SAMPLE_COVERAGE
constexpr uint32_t kGLPolygonOffsetFill = 0x8037;  // GL_POLYGON_OFFSET_FILL

// Entries of the GL table are optional; a null entry is skipped.
void glDisableCap(uint32_t cap) {
    auto& t = deps::activeGLFunctionTable();
    if (t.disable) t.disable(cap);
}

// Bit n of the render-state word.
bool testBit(uint32_t word, unsigned n) { return ((word >> n) & 1u) != 0; }

}  // namespace

// 0x5b71d8 _ZN6glitch5video6detail5applyILb1ENS1_10renderpass12SRenderStateENS0_15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS1_33CProgrammableGLFunctionPointerSetEEEEEvRKT0_PT1_
//
// Word bits used (SRenderState +0x04): 16 blend group, 17 cull-face group, 19 depth-test group,
// 21/22/23 polygon-offset group, 25 sample-coverage group, 27 stencil group.
// Each group is either applied through the driver, or, when the bit is clear, its GL capability
// is disabled if the driver cache says it is on. The final call always runs.
//
// The Hex-Rays body re-reads the word after each call. The state is taken by const reference,
// so one read gives the same bits here.
//
// Cache flags (driver offsets from the original):
//   +0x1c4 blend enable, +0x1c5 cull-face enable, +0x1c6 depth-test enable,
//   +0x1cc polygon-offset fill enable (the original reads a dword at +0x1cc; the line and point bytes at
//          +0x1cd/+0x1ce are never written by the setters, so testing the fill byte is equivalent),
//   +0x1d1 sample-coverage enable, +0x1d4 stencil-test enable.
// The original writes these flags to the bit value (always 0 on the path that writes them);
// the port writes false.
template <bool, typename State, typename Driver>
void apply(const State& state, Driver* driver) {
    const uint32_t word = state.m_word04;

    // Blend group (bit 16). Applied: CCommonGLDriver::applyRenderStateBlend (0x5af3f8).
    if (testBit(word, 16)) {
        driver->applyRenderStateBlend(state);
    } else if (driver->m_shadow.m_blendEnable) {
        glDisableCap(kGLBlend);
        driver->m_shadow.m_blendEnable = false;
    }

    // Cull-face group (bit 17). Applied: applyRenderStateCullFace (0x5af654).
    if (testBit(word, 17)) {
        driver->applyRenderStateCullFace(state);
    } else if (driver->m_shadow.m_cullFaceEnable) {
        glDisableCap(kGLCullFace);
        driver->m_shadow.m_cullFaceEnable = false;
    }

    // Depth-test group (bit 19). Applied: CCommonGLDriver::applyRenderStateDepthTest (0x5af6fc).
    if (testBit(word, 19)) {
        driver->applyRenderStateDepthTest(state);
    } else if (driver->m_shadow.m_depthTestEnable) {
        glDisableCap(kGLDepthTest);
        driver->m_shadow.m_depthTestEnable = false;
    }

    // Polygon-offset group (bits 21, 22, 23). Applied: applyRenderStatePolygonOffset (0x5af7a4).
    if (testBit(word, 21) || testBit(word, 22) || testBit(word, 23)) {
        driver->applyRenderStatePolygonOffset(state);
    } else if (driver->m_shadow.m_polygonOffsetFillEnable) {
        glDisableCap(kGLPolygonOffsetFill);
        driver->m_shadow.m_polygonOffsetFillEnable = false;
    }

    // Sample-coverage group (bit 25). Applied: applyRenderStateSampleCoverage (0x5af88c).
    if (testBit(word, 25)) {
        driver->applyRenderStateSampleCoverage(state);
    } else if (driver->m_shadow.m_sampleCoverageEnable) {
        glDisableCap(kGLSampleCoverage);
        driver->m_shadow.m_sampleCoverageEnable = false;
    }

    // Stencil group (bit 27). Applied: applyRenderStateStencil (0x5afa78).
    if (testBit(word, 27)) {
        driver->applyRenderStateStencil(state);
    } else if (driver->m_shadow.m_stencilTestEnable) {
        glDisableCap(kGLStencilTest);
        driver->m_shadow.m_stencilTestEnable = false;
    }

    // Always runs. applyRenderStateNonGrouped (0x5b70cc).
    driver->applyRenderStateNonGrouped(state);
}

template void apply<true, renderpass::SRenderState, CCommonGLDriver>(const renderpass::SRenderState& state,
                                                                      CCommonGLDriver* driver);

}  // namespace glitch::video::detail
