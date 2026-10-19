#if defined(__ANDROID__)
#include <android/log.h>
#endif
#include "glitch-video/ccommon_gl_driver.hpp"

#include <cctype>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/gl_small.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/pixel_format.hpp"
#include "glitch-video/programmable_gl_driver.hpp"
#include "glitch-video/tb/glitch_video_detail.hpp"
#include "glitch-video/vertex_attribute_map.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-video/video_names.hpp"

namespace glitch::video {

namespace {

// Entries of the GL table are optional; a null entry is skipped.
void glEnableCap(uint32_t cap) {
    auto& t = deps::activeGLFunctionTable();
    if (t.enable) t.enable(cap);
}

void glDisableCap(uint32_t cap) {
    auto& t = deps::activeGLFunctionTable();
    if (t.disable) t.disable(cap);
}

// Packs the low byte of a value into one byte lane of a word.
uint32_t lane(uint32_t value, unsigned shift) {
    return (value & 0xffu) << shift;
}

// Float constant 1/255 (bit pattern 0x3b808081 in the original).
constexpr float kInv255 = 1.0f / 255.0f;

// The GL enum tables of the original (.rodata, the anonymous-namespace arrays BlendFactorMap, BlendEquationMap, FaceCullingMap,
// CompareFuncMap, StencilOpMap and FaceWindingMap, read from the ELF at 0x8e0e3c and the following addresses). They are indexed by the
// engine's enumerators.
constexpr uint32_t kBlendFactorMap[15] = {0x0,    0x1,    0x300,  0x301,  0x302, 0x303, 0x306, 0x307,
                                          0x304,  0x305,  0x8001, 0x8002, 0x8003, 0x8004, 0x308};
constexpr uint32_t kBlendEquationMap[5] = {0x8006, 0x800a, 0x800b, 0x8007, 0x8008};
constexpr uint32_t kFaceCullingMap[3] = {0x405, 0x404, 0x408};
constexpr uint32_t kCompareFuncMap[8] = {0x200, 0x201, 0x202, 0x203, 0x204, 0x205, 0x206, 0x207};
constexpr uint32_t kStencilOpMap[8] = {0x1e00, 0x0, 0x1e01, 0x1e02, 0x8507, 0x1e03, 0x8508, 0x150a};
constexpr uint32_t kFaceWindingMap[2] = {0x901, 0x900};

// The remaining GL enum tables of the original (.rodata): TextureTypeMap (0x8e00e0), BufferTypeMap (0x8e014c), IndexTypeMap
// (0x8e011c) and PrimitiveTypeMap (0x8e0128).
constexpr uint32_t kTextureTypeMap[4] = {0x0de1, 0x806f, 0x8513, 0x84f5};
constexpr uint32_t kBufferTypeMap[5] = {0x8892, 0x8893, 0, 0, 0};
constexpr uint32_t kIndexTypeMap[3] = {0x1401, 0x1403, 0};
constexpr uint32_t kPrimitiveTypeMap[9] = {0, 3, 2, 1, 5, 6, 4, 5, 0};
// Word indices of the common shadow state (+0x254): the bound buffer per target is words 0..4, then the active texture unit
// (+0x268) and the unpack alignment (+0x26c).
constexpr uint32_t kActiveTextureWord = 5;

// The shared body of the capability setters: compare, flush, glEnable or glDisable, store.
void setCap(IVideoDriver* driver, bool& state, bool enable, uint32_t cap) {
    if (state == enable) return;
    driver->flush();
    if (enable) {
        glEnableCap(cap);
    } else {
        glDisableCap(cap);
    }
    state = enable;
}

}  // namespace

// 0x5b7080 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE14setBlendEnableEb
void CCommonGLDriver::setBlendEnable(bool enable) { setCap(this, m_shadow.m_blendEnable, enable, 0xbe2); }

// 0x5b7034 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17setCullFaceEnableEb
void CCommonGLDriver::setCullFaceEnable(bool enable) { setCap(this, m_shadow.m_cullFaceEnable, enable, 0xb44); }

// 0x5b6fe8 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18setDepthTestEnableEb
void CCommonGLDriver::setDepthTestEnable(bool enable) { setCap(this, m_shadow.m_depthTestEnable, enable, 0xb71); }

// 0x5b6f9c _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE15setDitherEnableEb
void CCommonGLDriver::setDitherEnable(bool enable) { setCap(this, m_shadow.m_ditherEnable, enable, 0xbd0); }

// 0x5b6f50 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE26setPolygonOffsetFillEnableEb
void CCommonGLDriver::setPolygonOffsetFillEnable(bool enable) {
    setCap(this, m_shadow.m_polygonOffsetFillEnable, enable, 0x8037);
}

// 0x5b6f04 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE30setSampleAlphaToCoverageEnableEb
void CCommonGLDriver::setSampleAlphaToCoverageEnable(bool enable) {
    setCap(this, m_shadow.m_sampleAlphaToCoverageEnable, enable, 0x809e);
}

// 0x5b6eb8 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE23setSampleCoverageEnableEb
void CCommonGLDriver::setSampleCoverageEnable(bool enable) {
    setCap(this, m_shadow.m_sampleCoverageEnable, enable, 0x80a0);
}

// 0x5b6e6c _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE16setScissorEnableEb
void CCommonGLDriver::setScissorEnable(bool enable) { setCap(this, m_shadow.m_scissorEnable, enable, 0xc11); }

// 0x5b6e20 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE20setStencilTestEnableEb
void CCommonGLDriver::setStencilTestEnable(bool enable) {
    setCap(this, m_shadow.m_stencilTestEnable, enable, 0xb90);
}

// 0x5af2b0 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE26setPolygonOffsetLineEnableEb
// Empty in the original.
void CCommonGLDriver::setPolygonOffsetLineEnable(bool) {}

// 0x5af2b4 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE27setPolygonOffsetPointEnableEb
// Empty in the original.
void CCommonGLDriver::setPolygonOffsetPointEnable(bool) {}

// 0x5afccc _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setDepthMaskEb
void CCommonGLDriver::setDepthMask(bool flag) {
    if (m_shadow.m_depthMask == flag) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.depthMask) t.depthMask(flag ? 1 : 0);
    m_shadow.m_depthMask = flag;
}

// 0x5afd00 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setLineWidthEf
void CCommonGLDriver::setLineWidth(float width) {
    if (width == m_shadow.m_lineWidth) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.lineWidth) t.lineWidth(width);
    m_shadow.m_lineWidth = width;
}

// 0x5af220 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setPointSizeEf
// The original stores the value without a GL call (point size is not set on GLES).
void CCommonGLDriver::setPointSize(float size) {
    if (size == m_shadow.m_pointSize) return;
    flush();
    m_shadow.m_pointSize = size;
}

// 0x5b0e94 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13setClearDepthEf
// The original compares with the cached clear depth but never stores the new
// value (confirmed in the ARM listing: the GL call is a tail branch, no store).
void CCommonGLDriver::setClearDepth(float depth) {
    if (depth == m_shadow.m_clearDepth) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.clearDepthf) t.clearDepthf(depth);
}

// 0x5b0ed4 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13setDepthRangeEff
void CCommonGLDriver::setDepthRange(float nearValue, float farValue) {
    if (nearValue == m_shadow.m_depthRangeNear && farValue == m_shadow.m_depthRangeFar) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.depthRangef) t.depthRangef(nearValue, farValue);
    m_shadow.m_depthRangeFar = farValue;
    m_shadow.m_depthRangeNear = nearValue;
}

// 0x5af828 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE16setPolygonOffsetEff
void CCommonGLDriver::setPolygonOffset(float factor, float units) {
    if (factor == m_shadow.m_polygonOffsetFactor && units == m_shadow.m_polygonOffsetUnits) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.polygonOffset) t.polygonOffset(factor, units);
    m_shadow.m_polygonOffsetUnits = units;
    m_shadow.m_polygonOffsetFactor = factor;
}

// 0x5af8f8 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE22setSampleCoverageValueEf
void CCommonGLDriver::setSampleCoverageValue(float value) {
    if (value == m_shadow.m_sampleCoverageValue) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.sampleCoverage) t.sampleCoverage(value, m_shadow.m_sampleCoverageInvert ? 1 : 0);
    m_shadow.m_sampleCoverageValue = value;
}

// 0x5af93c _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE23setSampleCoverageInvertEb
void CCommonGLDriver::setSampleCoverageInvert(bool invert) {
    if (m_shadow.m_sampleCoverageInvert == invert) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.sampleCoverage) t.sampleCoverage(m_shadow.m_sampleCoverageValue, invert ? 1 : 0);
    m_shadow.m_sampleCoverageInvert = invert;
}

// 0x5b0e2c _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE14setStencilMaskEh
void CCommonGLDriver::setStencilMask(uint8_t mask) {
    if (m_shadow.m_stencilMask == mask) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.stencilMask) t.stencilMask(mask);
    m_shadow.m_stencilMask = mask;
}

// 0x5b0e60 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE15setClearStencilEh
void CCommonGLDriver::setClearStencil(uint8_t value) {
    if (m_shadow.m_clearStencil == value) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.clearStencil) t.clearStencil(value);
    m_shadow.m_clearStencil = value;
}

// 0x5b0cec _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setColorMaskEbbbb
void CCommonGLDriver::setColorMask(bool r, bool g, bool b, bool a) {
    uint32_t packed = lane(r, 0) | lane(g, 8) | lane(b, 16) | (static_cast<uint32_t>(a) << 24);
    if (packed == m_shadow.m_colorMask) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.colorMask) t.colorMask(r ? 1 : 0, g ? 1 : 0, b ? 1 : 0, a ? 1 : 0);
    m_shadow.m_colorMask = packed;
}

// 0x5af258 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE19setPolygonModeFrontENS0_14E_POLYGON_MODEE
void CCommonGLDriver::setPolygonModeFront(E_POLYGON_MODE mode) {
    if (mode == m_shadow.m_polygonModeFront) return;
    flush();
    m_shadow.m_polygonModeFront = mode;
}

// 0x5af284 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18setPolygonModeBackENS0_14E_POLYGON_MODEE
void CCommonGLDriver::setPolygonModeBack(E_POLYGON_MODE mode) {
    if (mode == m_shadow.m_polygonModeBack) return;
    flush();
    m_shadow.m_polygonModeBack = mode;
}

// 0x5af1fc _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE24getMaximalPrimitiveCountEv
uint32_t CCommonGLDriver::getMaximalPrimitiveCount() const { return 0xffff; }

// 0x5af204 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE22captureFramebufferImplERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNSE_4rectIiEEhNS0_23E_TEXTURE_CUBE_MAP_FACEEb
bool CCommonGLDriver::captureFramebufferImpl(const boost::intrusive_ptr<ITexture>&, const core::position2d<int32_t>&,
                                             const core::rect<int32_t>&, uint8_t, E_TEXTURE_CUBE_MAP_FACE, bool) {
    return false;
}

// 0x5af20c _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE11swapBuffersEi
bool CCommonGLDriver::swapBuffers(int32_t mode) { return swapBuffersImpl(mode); }

// 0x5af35c _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setBlendFuncENS0_14E_BLEND_FACTORES8_
// Compares the packed (src | dst << 8) pair with the cache, flushes, glBlendFunc(BlendFactorMap[src], BlendFactorMap[dst]), stores.
void CCommonGLDriver::setBlendFunc(E_BLEND_FACTOR src, E_BLEND_FACTOR dst) {
    uint8_t s = static_cast<uint8_t>(src & 0xff);
    uint8_t d = static_cast<uint8_t>(dst & 0xff);
    if (s == m_shadow.m_blendSrc && d == m_shadow.m_blendDst) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.blendFunc) t.blendFunc(kBlendFactorMap[s], kBlendFactorMap[d]);
    m_shadow.m_blendSrc = s;
    m_shadow.m_blendDst = d;
}

// 0x5af3b4 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE16setBlendEquationENS0_16E_BLEND_EQUATIONE
void CCommonGLDriver::setBlendEquation(E_BLEND_EQUATION mode) {
    if (mode == m_shadow.m_blendEquation) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.blendEquation) t.blendEquation(kBlendEquationMap[mode]);
    m_shadow.m_blendEquation = mode;
}

// 0x5af6b8 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE11setCullFaceENS0_11E_FACE_SIDEE
void CCommonGLDriver::setCullFace(E_FACE_SIDE side) {
    if (side == m_shadow.m_cullFace) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.cullFace) t.cullFace(kFaceCullingMap[side]);
    m_shadow.m_cullFace = side;
}

// 0x5afc78 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setFrontFaceENS0_14E_FACE_WINDINGE
// The winding is flipped (1 - winding) when the byte at +0x4a0 is set; the cache keeps the unflipped value.
void CCommonGLDriver::setFrontFace(E_FACE_WINDING winding) {
    if (winding == m_shadow.m_frontFace) return;
    flush();
    const int32_t index = m_frontFaceFlip ? 1 - winding : winding;
    auto& t = deps::activeGLFunctionTable();
    if (t.frontFace) t.frontFace(kFaceWindingMap[index]);
    m_shadow.m_frontFace = winding;
}

// 0x5af760 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE12setDepthFuncENS0_14E_COMPARE_FUNCE
void CCommonGLDriver::setDepthFunc(E_COMPARE_FUNC func) {
    if (func == m_shadow.m_depthFunc) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.depthFunc) t.depthFunc(kCompareFuncMap[func]);
    m_shadow.m_depthFunc = func;
}

// 0x5afa24 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE14setStencilFuncENS0_14E_COMPARE_FUNCE
// The function, reference and mask are the bytes +0x1f0, +0x1f1 and +0x1f2 of one cached word; the call passes all three.
void CCommonGLDriver::setStencilFunc(E_COMPARE_FUNC func) {
    uint8_t f = static_cast<uint8_t>(func & 0xff);
    if (f == m_shadow.m_stencilFunc) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.stencilFunc) t.stencilFunc(kCompareFuncMap[f], m_shadow.m_stencilFuncRef, m_shadow.m_stencilFuncMask);
    m_shadow.m_stencilFunc = f;
}

// 0x5af9cc _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17setStencilFuncRefEh
void CCommonGLDriver::setStencilFuncRef(uint8_t ref) {
    if (ref == m_shadow.m_stencilFuncRef) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.stencilFunc) t.stencilFunc(kCompareFuncMap[m_shadow.m_stencilFunc], ref, m_shadow.m_stencilFuncMask);
    m_shadow.m_stencilFuncRef = ref;
}

// 0x5af974 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE18setStencilFuncMaskEh
void CCommonGLDriver::setStencilFuncMask(uint8_t mask) {
    if (mask == m_shadow.m_stencilFuncMask) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.stencilFunc) t.stencilFunc(kCompareFuncMap[m_shadow.m_stencilFunc], m_shadow.m_stencilFuncRef, mask);
    m_shadow.m_stencilFuncMask = mask;
}

// 0x5afc14 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE16setStencilOpFailENS0_12E_STENCIL_OPE
// The fail, z-fail and z-pass operations are the bytes +0x1f4, +0x1f5 and +0x1f6 of one cached word; the call passes all three.
void CCommonGLDriver::setStencilOpFail(E_STENCIL_OP op) {
    uint8_t v = static_cast<uint8_t>(op & 0xff);
    if (v == m_shadow.m_stencilOpFail) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.stencilOp) t.stencilOp(kStencilOpMap[v], kStencilOpMap[m_shadow.m_stencilOpZFail], kStencilOpMap[m_shadow.m_stencilOpZPass]);
    m_shadow.m_stencilOpFail = v;
}

// 0x5afbb0 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17setStencilOpZFailENS0_12E_STENCIL_OPE
void CCommonGLDriver::setStencilOpZFail(E_STENCIL_OP op) {
    uint8_t v = static_cast<uint8_t>(op & 0xff);
    if (v == m_shadow.m_stencilOpZFail) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.stencilOp) t.stencilOp(kStencilOpMap[m_shadow.m_stencilOpFail], kStencilOpMap[v], kStencilOpMap[m_shadow.m_stencilOpZPass]);
    m_shadow.m_stencilOpZFail = v;
}

// 0x5afb4c _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17setStencilOpZPassENS0_12E_STENCIL_OPE
void CCommonGLDriver::setStencilOpZPass(E_STENCIL_OP op) {
    uint8_t v = static_cast<uint8_t>(op & 0xff);
    if (v == m_shadow.m_stencilOpZPass) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.stencilOp) t.stencilOp(kStencilOpMap[m_shadow.m_stencilOpFail], kStencilOpMap[m_shadow.m_stencilOpZFail], kStencilOpMap[v]);
    m_shadow.m_stencilOpZPass = v;
}

// 0x5af574 _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13setBlendColorENS0_6SColorE
// glBlendColor with each byte times 1/255, then the four bytes are cached (the word at +0x204).
void CCommonGLDriver::setBlendColor(SColor color) {
    if (color.color == m_shadow.m_blendColor) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.blendColor) {
        t.blendColor(static_cast<float>(color.color & 0xff) * kInv255,
                     static_cast<float>((color.color >> 8) & 0xff) * kInv255,
                     static_cast<float>((color.color >> 16) & 0xff) * kInv255,
                     static_cast<float>((color.color >> 24) & 0xff) * kInv255);
    }
    m_shadow.m_blendColor = color.color;
}

// 0x5b0d4c _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE13setClearColorENS0_6SColorE
// The same for glClearColor and the word at +0x208.
void CCommonGLDriver::setClearColor(SColor color) {
    if (color.color == m_shadow.m_clearColor) return;
    flush();
    auto& t = deps::activeGLFunctionTable();
    if (t.clearColor) {
        t.clearColor(static_cast<float>(color.color & 0xff) * kInv255,
                     static_cast<float>((color.color >> 8) & 0xff) * kInv255,
                     static_cast<float>((color.color >> 16) & 0xff) * kInv255,
                     static_cast<float>((color.color >> 24) & 0xff) * kInv255);
    }
    m_shadow.m_clearColor = color.color;
}
// ---------------------------------------------------------------------------------------------------------------------
// Scene control, targets and textures. (Everything below is the part of the class that reads IVideoDriver and the driver's
// own state; the render-state setters above need only the cache.)
// ---------------------------------------------------------------------------------------------------------------------

namespace {

// The GL call wrappers: a null entry of the function table is skipped.
deps::GLFunctionTable& gl() { return deps::activeGLFunctionTable(); }

// The names of the pixel formats, texture types and layouts the creation functions log (the original reads the tables of
// glitch::video::getStringsInternal(E_PIXEL_FORMAT*) 0x5ed944, (E_TEXTURE_TYPE*) 0x5fda68 and (E_TEXTURE_LAYOUT*) 0x5fda78).
// Port note: the E_* types are int32_t aliases, so the three overloads cannot be declared side by side; the names the
// lookups need are file-local here. An unknown value (the sentinels 39 and 255) prints "unknown".
}  // namespace

// 0x5b0594's neighbour: CCommonGLDriver constructor. The original has no out-of-line constructor (it is inlined into
// CProgrammableGLDriver's, which sets the members at +0x7f0.. as the in-class initialisers here do).
CCommonGLDriver::CCommonGLDriver(glitch::IDevice* device, IShaderManager* shaderManager)
    : CCommonGLDriverBase(device, shaderManager) {}

// 0x5b3688 _ZN6glitch5video15CCommonGLDriverI...ED2Ev / 0x5b3808 D1 / 0x5b3870 D0: the buffer map is released.
CCommonGLDriver::~CCommonGLDriver() { clearBufferMap(); }

// 0x5b1860 _ZN6glitch5video15CCommonGLDriverI...10beginSceneEv: IVideoDriver::beginScene, then true.
bool CCommonGLDriver::beginScene() {
    IVideoDriver::beginScene();
    return true;
}

// 0x5b1838 _ZN6glitch5video15CCommonGLDriverI...8endSceneEv: flush, glFlush, IVideoDriver::endScene, true.
bool CCommonGLDriver::endScene() {
    flush();
    if (gl().flush) gl().flush();
    IVideoDriver::endScene();
    return true;
}

// 0x5b1734 _ZN6glitch5video15CCommonGLDriverI...12beginScene2DEv
// Flushes, remembers whether the 2D option (bit 8 of the option word) was on and turns it on, saves the three transforms in
// the spare matrices (the copies at +0x354, +0x398 and +0x3dc) and resets transforms 0 and 1 to identity, marks the driver
// as in 2D mode (+0xa0 = 1) and sets the 2D projection.
bool CCommonGLDriver::beginScene2D() {
    flush();
    m_saved2DOption = ((m_options >> 8) & 1u) != 0;
    if (!m_saved2DOption) {
        setOption(0x100, true);
    }
    std::memcpy(static_cast<void*>(&m_matrices[3]), &getTransform(2), 0x41);
    std::memcpy(static_cast<void*>(&m_matrices[4]), &getTransform(1), 0x41);
    std::memcpy(static_cast<void*>(&m_matrices[5]), &getTransform(0), 0x41);
    const core::CMatrix4<float> identity(core::CMatrix4<float>::EM4CONST_IDENTITY);  // glitch::core::IdentityMatrix
    setTransform(0, identity);
    setTransform(1, identity);
    unk_a0 = 1;
    set2DProjection();
    return true;
}

// 0x5af2d8 _ZN6glitch5video15CCommonGLDriverI...10endScene2DEv
// Flushes, turns the 2D option off again when beginScene2D turned it on, marks the driver as in 3D mode (+0xa0 = 2) and puts
// the three saved transforms back.
bool CCommonGLDriver::endScene2D() {
    flush();
    if (!m_saved2DOption) {
        setOption(0x100, m_saved2DOption);
    }
    unk_a0 = 2;
    setTransform(1, m_matrices[4]);
    setTransform(0, m_matrices[5]);
    setTransform(2, m_matrices[3]);
    return true;
}

// 0x5af1dc _ZN6glitch5video15CCommonGLDriverI...19resetTexturesLoaderEv
// Restarts the reload walk: index 0, the texture count and the first name of the texture manager's name map.
void CCommonGLDriver::resetTexturesLoader() {
    CTextureManager* manager = m_textureManager;
    m_reloadIndex = 0;
    m_reloadCount = manager->size();
    m_textureCursor = manager->idBegin();
}

// 0x5b0a9c _ZN6glitch5video15CCommonGLDriverI...15setViewportImplERKNS_4core4rectIiEE
// With more than one target on the stack the cache key is 0, otherwise the orientation; when the key or the rectangle changed
// and the rectangle maps to a window area, glViewport is called, the 2D projection is rebuilt if the size changed while in 2D
// mode, and the cache is updated.
void CCommonGLDriver::setViewportImpl(const core::rect<int32_t>& rect) {
    flush();
    const int32_t key = m_renderTargets.size() > 1 ? 0 : m_orientation;
    const core::rect<int32_t>& cached = m_shadow.m_viewport;
    int32_t x = 0, y = 0, width = 0, height = 0;
    if ((key != m_shadow.m_viewportFlag || cached.UpperLeftCorner.X != rect.UpperLeftCorner.X ||
         cached.UpperLeftCorner.Y != rect.UpperLeftCorner.Y || cached.LowerRightCorner.X != rect.LowerRightCorner.X ||
         cached.LowerRightCorner.Y != rect.LowerRightCorner.Y) &&
        fixUpScreenArea(rect, x, y, width, height, false, false)) {
        if (gl().viewport) gl().viewport(x, y, width, height);
        if (unk_a0 == 1 && (width != cached.LowerRightCorner.X - cached.UpperLeftCorner.X ||
                            height != cached.LowerRightCorner.Y - cached.UpperLeftCorner.Y)) {
            set2DProjection();
        }
        m_shadow.m_viewport = rect;
        m_shadow.m_viewportFlag = key;
    }
}

// 0x5b0bec _ZN6glitch5video15CCommonGLDriverI...10setScissorERKNS_4core4rectIiEE
void CCommonGLDriver::setScissor(const core::rect<int32_t>& rect) {
    const int32_t key = m_renderTargets.size() > 1 ? 0 : m_orientation;
    const core::rect<int32_t>& cached = m_shadow.m_scissor;
    if (key != m_shadow.m_scissorFlag || cached.UpperLeftCorner.X != rect.UpperLeftCorner.X ||
        cached.UpperLeftCorner.Y != rect.UpperLeftCorner.Y || cached.LowerRightCorner.X != rect.LowerRightCorner.X ||
        cached.LowerRightCorner.Y != rect.LowerRightCorner.Y) {
        flush();
        int32_t x = 0, y = 0, width = 0, height = 0;
        fixUpScreenArea(rect, x, y, width, height, true, false);
        if (gl().scissor) gl().scissor(x, y, width, height);
        m_shadow.m_scissor = rect;
        m_shadow.m_scissorFlag = key;
    }
}

// 0x5b0f38 _ZN6glitch5video15CCommonGLDriverI...12clearBuffersEi
// Mask bit 0 clears colour, bit 1 depth and bit 2 stencil. The depth and stencil masks are opened for the clear when needed. With
// the screen flag (bit 0 of the state flags) set, a pending colour clear of the whole buffer is done first with the scissor test
// off (the clear colour is set to transparent black for it and restored afterwards when it was not already black); for a single
// target with screen margins the scissor test is switched on over the target's viewport. The scissor test, depth mask and stencil
// mask are put back as they were.
void CCommonGLDriver::clearBuffers(int32_t mask) {
    flush();
    uint32_t bits = (mask & 1) != 0 ? 0x4000u : 0u;
    const bool depthMask = m_shadow.m_depthMask;  // byte at +0x1c7
    if ((mask & 2) != 0) {
        if (!depthMask && gl().depthMask) gl().depthMask(1);
        bits |= 0x100u;
    }
    const uint32_t stencilMask = m_shadow.m_stencilMask;  // byte at +0x1f8
    if ((mask & 4) != 0) {
        if (stencilMask != 255 && gl().stencilMask) gl().stencilMask(0xff);
        bits |= 0x400u;
    }
    const bool scissorWas = m_shadow.m_scissorEnable;  // byte at +0x1d3
    bool scissorOn;
    if ((m_stateFlags & 1u) == 0) {
        scissorOn = scissorWas;
    } else {
        if (scissorWas && gl().disable) gl().disable(0xc11);
        const uint32_t r = m_shadow.m_clearColor & 0xffu;
        const uint32_t g = (m_shadow.m_clearColor >> 8) & 0xffu;
        const uint32_t b = (m_shadow.m_clearColor >> 16) & 0xffu;
        const uint32_t a = (m_shadow.m_clearColor >> 24) & 0xffu;
        if (scissorWas || r != 0 || g != 0 || b != 0) {
            // The original takes the "set the colour" path when the red byte is non-zero and, after the plain clear test, when
            // green or blue is non-zero; both reach the same code.
        }
        if (r != 0 || g != 0 || b != 0) {
            if (gl().clearColor) gl().clearColor(0.0f, 0.0f, 0.0f, 0.0f);
            if (gl().clear) gl().clear(0x4000);
            if (gl().clearColor) {
                gl().clearColor(static_cast<float>(r) / 255.0f, static_cast<float>(g) / 255.0f,
                                static_cast<float>(b) / 255.0f, static_cast<float>(a) / 255.0f);
            }
        } else {
            if (gl().clear) gl().clear(0x4000);
        }
        scissorOn = false;
        m_stateFlags &= ~1u;
    }
    if (bits != 0) {
        if (m_renderTargets.size() == 1) {
            IRenderTarget* target = m_renderTargets.back().get();
            const IFramebuffer* framebuffer = static_cast<const IFramebuffer*>(target);
            if (framebuffer->m_screenMarginX != 0 || framebuffer->m_screenMarginY != 0) {
                if (!scissorOn) {
                    if (gl().enable) gl().enable(0xc11);
                    scissorOn = true;
                }
                setScissor(target->m_viewport);  // vtable +0x194
            }
        }
        if (gl().clear) gl().clear(bits);
    }
    if (scissorOn != scissorWas) {
        if (scissorWas) {
            if (gl().enable) gl().enable(0xc11);
        } else {
            if (gl().disable) gl().disable(0xc11);
        }
    }
    if (!depthMask && gl().depthMask) gl().depthMask(0);
    if (stencilMask != 255 && gl().stencilMask) gl().stencilMask(stencilMask);
}

// 0x5b1190 _ZN6glitch5video15CCommonGLDriverI...25createMultipleRenderTargetEv
// A new GL render target (0x5c bytes) on this driver, returned with one use.
boost::intrusive_ptr<IRenderTarget> CCommonGLDriver::createMultipleRenderTarget() {
    return boost::intrusive_ptr<IRenderTarget>(new CRenderTarget(this), true);  // a new target has count 0
}

// 0x5b15f0 _ZN6glitch5video15CCommonGLDriverI...13reloadShadersEv
// Logs the shader count, then walks the shader manager's name map and regenerates every shader's program
// (CGLSLShader::rmRegenerateShader with the manager's driver); each shader is held across its call.
void CCommonGLDriver::reloadShaders() {
    IShaderManager* manager = m_shaderManager;
    glitch::os::Printer::print("COUNT SHADERS ---> %d", static_cast<int>(manager->m_shaders.size()));
    m_shaderCursor = manager->m_shaders.idBegin();
    boost::intrusive_ptr<IShader> held;
    while (m_shaderCursor != manager->m_shaders.idEnd()) {
        boost::intrusive_ptr<IShader> shader = manager->m_shaders.get(m_shaderCursor->second.id)->value;
        held = shader;
        static_cast<CGLSLShader*>(shader.get())->rmRegenerateShader(static_cast<CProgrammableGLDriver*>(manager->m_driver));
        ++m_shaderCursor;
    }
}

// 0x5b1b10 _ZN6glitch5video15CCommonGLDriverI...12ReinitDriverEv
// The shaders are reloaded (driver slot +0x40), the first target is bound, the viewport is set to the device's size, the
// unpack alignment to 1, the derived driver's driverInit runs, the buffer bindings are restored from the bound-buffer words,
// the shadow state is restored (slot +0x74) and the colour buffer is cleared (slot +0xa8).
bool CCommonGLDriver::ReinitDriver() {
    glitch::IDevice* device = m_device;
    reloadShaders();
    m_renderTargets.front()->bind();
    int32_t width = 0, height = 0;
    if (device != nullptr) {
        std::memcpy(&width, device->creationParameters.bytes + 4, sizeof width);    // device +0x60
        std::memcpy(&height, device->creationParameters.bytes + 8, sizeof height);  // device +0x64
    }
    if (gl().viewport) gl().viewport(0, 0, width, height);
    if (gl().pixelStorei) gl().pixelStorei(0xd05, 1);
    static_cast<CProgrammableGLDriver*>(this)->driverInit(core::dimension2d<int32_t>{width, height});
    for (uint32_t i = 0; i != 5; ++i) {
        if (kBufferTypeMap[i] != 0 && gl().bindBuffer) gl().bindBuffer(kBufferTypeMap[i], m_common.m_words[i]);
    }
    restoreShadowState();
    clearBuffers(1);
    return true;
}

// 0x5b1c48 _ZN6glitch5video15CCommonGLDriverI...16createScreenShotEv
// With only the screen target on the stack the orientation is reset to 0 for the capture and put back afterwards. An RGB image
// (format 10) of the target's size is filled from glReadPixels over the device-space rectangle and flipped vertically through a
// process buffer.
boost::intrusive_ptr<CImage> CCommonGLDriver::createScreenShot() {
    flush();
    IVideoDriver* restoreOn = nullptr;
    E_ORIENTATION savedOrientation = 255;
    if (m_renderTargets.size() == 1) {
        savedOrientation = m_orientation;
        setOrientation(0);
        restoreOn = this;
    }
    IRenderTarget* target = m_renderTargets.back().get();
    boost::intrusive_ptr<CImage> image(new CImage(10, core::dimension2d<int32_t>{target->m_width, target->m_height}), true);
    boost::intrusive_ptr<CImage> result;
    uint8_t* pixels = image->m_data;
    if (pixels != nullptr) {
        core::rect<int32_t> area;
        area.UpperLeftCorner.X = 0;
        area.UpperLeftCorner.Y = 0;
        area.LowerRightCorner.X = m_renderTargets.back()->m_width;
        area.LowerRightCorner.Y = m_renderTargets.back()->m_height;
        screen2Device<int32_t>(area);
        if (gl().readPixels) {
            gl().readPixels(area.UpperLeftCorner.X, area.UpperLeftCorner.Y, area.LowerRightCorner.X - area.UpperLeftCorner.X,
                            area.LowerRightCorner.Y - area.UpperLeftCorner.Y, 0x1907, 0x1401, pixels);
        }
        const size_t pitch = image->m_pitch;
        const int32_t rows = static_cast<int32_t>(image->m_height);
        uint8_t* scratch = reinterpret_cast<uint8_t*>(glitch::core::allocProcessBuffer(static_cast<int>(pitch)));
        if (rows > 0) {
            uint8_t* top = pixels;
            uint8_t* bottom = pixels + pitch * (rows - 1);
            int32_t done = 0;
            do {
                std::memcpy(scratch, top, pitch);
                std::memcpy(top, bottom, pitch);
                done += 2;
                std::memcpy(bottom, scratch, pitch);
                top += pitch;
                bottom -= pitch;
            } while (rows > done);
        }
        result = image;
        if (scratch != nullptr) glitch::core::releaseProcessBuffer(scratch);
    }
    image = nullptr;
    if (restoreOn != nullptr) {
        restoreOn->setOrientation(savedOrientation);
    }
    return result;
}

// 0x5b1fe4 _ZN6glitch5video15CCommonGLDriverI...18reloadTexturesDataEv
// Reloads one texture per call. The texture at the walk's cursor is held. Its GL name is read, its reload flag (CTexture +0x58)
// is raised while a texture that has data and the bound flag is unbound (slot +0x10), and its file name (the entry's property
// string, empty or null when it has none) is logged. A texture without data of its own is logged ("RELOAD Index ...", "NO HAS
// DATA") and, when the property string names a file, unbound and reloaded through CTextureManager::rmReloadDataTexture;
// otherwise "ERROR LOADING" is logged. The cursor then moves to the next name and the walk reports whether one is left.
// A null entry at the cursor ends the walk with false and does not advance.
bool CCommonGLDriver::reloadTexturesData() {
    CTextureManager* manager = m_textureManager;
    boost::intrusive_ptr<ITexture> texture = manager->get(m_textureCursor->second.id)->value;
    if (!texture) {
        return false;
    }
    ITexture* held = texture.get();
    CTexture* gltexture = static_cast<CTexture*>(held);
    const uint32_t glName = gltexture->m_glName;  // +0x54
    gltexture->m_reloading = 1;                   // +0x58
    if (held->m_data != nullptr && (held->m_flags3f & ITexture::kFlagBound) != 0) {
        held->unbindImpl();  // vtable +0x10
    }
    gltexture->m_reloading = 0;
    const char* file = nullptr;
    {
        const auto* entry = manager->get(held->m_id);
        if (entry->value) {
            const std::string& property = manager->getProperties(held->m_id)->unk00;
            if (!property.empty()) file = property.c_str();
        }
    }
    glitch::os::Printer::print("TEXTURE FILE [%s] ", file);
    if (held->m_data == nullptr) {
        glitch::os::Printer::print("RELOAD Index [%d] OpenGlID[%d] Name [%s] \n", static_cast<int>(held->m_id),
                                   static_cast<int>(glName), held->m_name.c_str());
        glitch::os::Printer::print("NO HAS DATA ");
        const char* name = nullptr;
        {
            const auto* entry = manager->get(held->m_id);
            if (entry->value) {
                const std::string& property = manager->getProperties(held->m_id)->unk00;
                if (!property.empty()) name = property.c_str();
            }
        }
        if (name != nullptr) {
            if ((held->m_flags3f & ITexture::kFlagBound) != 0) {
                held->unbindImpl();
            }
            manager->rmReloadDataTexture(CTextureManager::SIterator{m_textureCursor}, name);
        } else {
            glitch::os::Printer::print("ERROR LOADING");
        }
    }
    ++m_reloadIndex;
    ++m_textureCursor;
    return m_textureCursor != manager->idEnd();
}

// 0x5b26f0 _ZN6glitch5video15CCommonGLDriverI...10setTextureEjPNS0_8ITextureENS0_14E_TEXTURE_TYPEE
// A unit past the texture unit count fails. A changed binding is stored in the bound-texture table; a non-null texture counts a
// texture binding, selects the unit when it is not the current one (glActiveTexture) and is bound: a driver-bound texture is
// glBindTexture'd to its GL name and updated, any other goes through ITexture::bind. An unchanged non-null binding whose dirty
// bits (other than the two low ones) are set is updated on its unit.
bool CCommonGLDriver::setTexture(uint32_t unit, ITexture* texture, E_TEXTURE_TYPE type) {
    if (unit >= m_textureUnitCount) {
        return false;
    }
    ITexture*& slot = m_textureTable[type][unit];
    ITexture* previous = slot;
    if (previous != texture) {
        slot = texture;
        if (texture != nullptr) {
            ++m_frameTextureBindings;
            if (unit != m_common.m_words[kActiveTextureWord]) {
                if (gl().activeTexture) gl().activeTexture(unit + 0x84c0);
                m_common.m_words[kActiveTextureWord] = unit;
            }
            if ((texture->m_flags3f & ITexture::kFlagBound) != 0) {
                if (gl().bindTexture) gl().bindTexture(kTextureTypeMap[type], static_cast<CTexture*>(texture)->m_glName);
                static_cast<CTexture*>(texture)->update(false);
            } else {
                texture->bind(false);
            }
        }
        return true;
    }
    if (previous == nullptr || (previous->m_dirtyFlags40 & 0x1ffdu) == 0) {
        return true;
    }
    if (unit != m_common.m_words[kActiveTextureWord]) {
        if (gl().activeTexture) gl().activeTexture(unit + 0x84c0);
        m_common.m_words[kActiveTextureWord] = unit;
    }
    static_cast<CTexture*>(previous)->update(false);
    return true;
}

// 0x5b64c0 _ZN6glitch5video15CCommonGLDriverI...13updateBindingEPNS0_7IBufferE
// A buffer that has data: when it is driver-mapped it is updated, otherwise (unless it is a usage-4 buffer) its bind slot is run.
// Returns the buffer.
IBuffer* CCommonGLDriver::updateBinding(IBuffer* buffer) {
    if (buffer == nullptr) return buffer;
    if ((buffer->m_flags12 & IBuffer::kFlagHasData) == 0) return buffer;
    if ((buffer->m_flags12 & IBuffer::kFlagDriverMapped) == 0) {
        if (buffer->m_usage != 4) {
            buffer->bindImpl(false);  // buffer vtable +0x0c
        }
        return buffer;
    }
    static_cast<CBuffer*>(buffer)->update();
    return buffer;
}

// 0x5b6514 _ZN6glitch5video15CCommonGLDriverI...9setBufferEPNS0_7IBufferE
// Makes the buffer current for its target and returns the client-memory pointer to draw from: the buffer is updated; a usage-4
// buffer is drawn from its data pointer (GL name 0), any other from its GL name; the target's bound name is rebound when it
// differs.
const void* CCommonGLDriver::setBuffer(IBuffer* buffer) {
    IBuffer* updated = updateBinding(buffer);
    if (updated == nullptr) return nullptr;
    uint32_t name;
    const void* data;
    if (updated->m_usage == 4) {
        name = 0;
        data = updated->m_data;
    } else {
        name = static_cast<CBuffer*>(updated)->m_glName;
        data = nullptr;
    }
    uint32_t& bound = m_common.m_words[updated->m_type];
    if (name != bound) {
        if (gl().bindBuffer) gl().bindBuffer(kBufferTypeMap[updated->m_type], name);
        bound = name;
    }
    return data;
}

// CRenderBuffer constructor (inlined into createRenderBuffer 0x5b5390): the base takes the format and the size, the driver is
// kept at +0x14 and the GL name (+0x18) is 0; the count is 1.
CCommonGLDriver::CRenderBuffer::CRenderBuffer(CCommonGLDriver* driver, E_PIXEL_FORMAT format,
                                              const core::dimension2d<int32_t>& size)
    : CRenderBufferBase(format, size), m_driver(driver) {}

// 0x5b130c _ZN6glitch5video15CCommonGLDriverI...13CRenderBuffer6unbindEv: deletes the GL render buffer, if there is one.
void CCommonGLDriver::CRenderBuffer::unbind() {
    if (m_glName != 0) {
        if (gl().deleteRenderbuffers) gl().deleteRenderbuffers(1, &m_glName);
        m_glName = 0;
    }
}

// 0x5b5390 _ZN6glitch5video15CCommonGLDriverI...18createRenderBufferERKNS_4core11dimension2dIiEENS0_14E_PIXEL_FORMATE
// Needs framebuffer object support (capability bit 0x800). The pixel format is looked up in the driver's table (the render-target
// format at +2 of the row); an unsupported one (39) logs an error and gives no buffer, a different one is logged and used. A GL
// render buffer (0x1c bytes) is created on that format and size. Whether it was created or not, the result (possibly null) is
// appended to the driver's list of render buffers (+0x154).
boost::intrusive_ptr<IRenderBuffer> CCommonGLDriver::createRenderBuffer(const core::dimension2d<int32_t>& size,
                                                                        E_PIXEL_FORMAT format) {
    boost::intrusive_ptr<IRenderBuffer> result;
    CRenderBuffer* buffer = nullptr;
    if ((m_capabilities & 0x800u) != 0) {
        const E_PIXEL_FORMAT supported = m_formatTable[format].m_unk02;
        if (supported == 39) {
            glitch::os::Printer::log("Render buffer format not supported", pixelFormatName(format), glitch::os::ELL_ERROR);
        } else {
            if (format != supported) {
                char message[128];
                std::snprintf(message, 0x7f, "using %s instead of %s", pixelFormatName(supported), pixelFormatName(format));
                glitch::os::Printer::log("Render buffer format not supported", message, glitch::os::ELL_ERROR);
                format = m_formatTable[format].m_unk02;
            }
            buffer = new CRenderBuffer(this, format, size);  // count 1
            result = boost::intrusive_ptr<IRenderBuffer>(buffer);
        }
    }
    m_renderBuffers.push_back(buffer);
    return result;
}

// 0x5b388c _ZN6glitch5video15CCommonGLDriverI...18createRenderTargetERKN5boost13intrusive_ptrINS0_8ITextureEEEj
// The texture's pixel format (bits 4-9 of its state word) must be one the driver can render to (the format at +2 of its table
// row equals it); then a render target gets the texture as its colour attachment (type 0, face 0, the level argument). Otherwise
// an error names the format and the suggested one and no target is made.
boost::intrusive_ptr<IRenderTarget> CCommonGLDriver::createRenderTarget(const boost::intrusive_ptr<ITexture>& texture,
                                                                        uint32_t flags) {
    const E_PIXEL_FORMAT format = static_cast<E_PIXEL_FORMAT>((texture->m_flags38 >> 4) & 0x3f);
    const E_PIXEL_FORMAT suggested = m_formatTable[format].m_unk02;
    if (format == suggested) {
        boost::intrusive_ptr<IRenderTarget> target(new CRenderTarget(this), true);  // count 0 -> 1
        static_cast<CRenderTarget*>(target.get())->addTarget(0, texture, 0, flags);
        return target;
    }
    char message[128];
    std::snprintf(message, 0x7f, "%s (%s is suggested instead)", pixelFormatName(format), pixelFormatName(suggested));
    glitch::os::Printer::log("Texture has an unsupported render target pixel format", message, glitch::os::ELL_ERROR);
    return boost::intrusive_ptr<IRenderTarget>();
}

// 0x5b5f6c _ZN6glitch5video15CCommonGLDriverI...17createTextureImplEPKcRKNS0_12STextureDescE
// Checks the descriptor against the driver: a non-power-of-two size needs the NPOT capability (except for rectangle textures),
// compressed formats only exist as 2D textures, the pixel format must be supported (the texture or render-target column of the
// table; a substitute is logged and used), tiled layouts are refused and the others fall back to linear (swizzled ones need a
// power-of-two size). Each refusal logs an error and returns no texture. Otherwise a GL texture (0x5c bytes) is built on the
// adjusted descriptor.
boost::intrusive_ptr<ITexture> CCommonGLDriver::createTextureImpl(const char* name, const STextureDesc& original) {
    STextureDesc desc = original;
    const uint32_t width = desc.width;
    const uint32_t height = desc.height;
    const uint32_t depth = desc.depth;
    bool powerOfTwo;
    if (((width - 1) & width) != 0 || ((height - 1) & height) != 0) {
        powerOfTwo = false;
    } else {
        powerOfTwo = desc.type != 1 || ((depth - 1) & depth) == 0;
    }
    if ((m_unk7b8[13] & 8u) != 0 && desc.type != 0 && desc.type != 3 && !powerOfTwo) {
        glitch::os::Printer::logf(glitch::os::ELL_ERROR, "creating %s: %s NPOT (%dx%dx%u) texture not supported", name,
                                  textureTypeName(desc.type), static_cast<int>(width), static_cast<int>(height), depth);
        return boost::intrusive_ptr<ITexture>();
    }
    if ((pixel_format::detail::PFDTable[desc.format].flags & 0x30u) != 0 && desc.type != 0 && desc.type != 2) {
        glitch::os::Printer::logf(glitch::os::ELL_ERROR, "creating %s: %s formats can only be used with 2D textures", name,
                                  pixelFormatName(static_cast<E_PIXEL_FORMAT>(desc.format)));
        return boost::intrusive_ptr<ITexture>();
    }
    const bool renderTarget = desc.flag1d != 0;
    const uint32_t wanted = desc.format;
    const uint32_t usable = renderTarget ? m_formatTable[wanted].m_unk02 : m_formatTable[wanted].m_unk00;
    desc.format = usable;
    if (usable != wanted) {
        if (usable == 39) {
            glitch::os::Printer::logf(glitch::os::ELL_ERROR, "creating %s: pixel format %s not supported", name,
                                      pixelFormatName(static_cast<E_PIXEL_FORMAT>(wanted)));
            return boost::intrusive_ptr<ITexture>();
        }
        glitch::os::Printer::logf(glitch::os::ELL_WARNING, "creating %s: %s is not a supported %s pixel format; using %s instead",
                                  name, pixelFormatName(static_cast<E_PIXEL_FORMAT>(wanted)),
                                  renderTarget ? "render target" : "texture", pixelFormatName(static_cast<E_PIXEL_FORMAT>(usable)));
    }
    switch (desc.unknown08) {
        case 2:
            glitch::os::Printer::logf(glitch::os::ELL_ERROR, "creating %s: %s layout not supported", name, textureLayoutName(2));
            return boost::intrusive_ptr<ITexture>();
        case 3:
            if (!powerOfTwo) {
                glitch::os::Printer::logf(glitch::os::ELL_ERROR,
                                          "creating %s: swizzled textures must have power-of-two size (provided: %dx%dx%u)", name,
                                          static_cast<int>(width), static_cast<int>(height), depth);
                return boost::intrusive_ptr<ITexture>();
            }
            glitch::os::Printer::logf(glitch::os::ELL_WARNING, "creating %s: %s layout not supported (will convert to linear)",
                                      name, textureLayoutName(3));
            desc.unknown08 = 0;
            break;
        case 0:
            break;
        default:
            glitch::os::Printer::logf(glitch::os::ELL_WARNING, "creating %s: %s layout not supported (will convert to linear)",
                                      name, ((desc.unknown08 & 0xffffu) == 255 ? textureLayoutName(255) : textureLayoutName(desc.unknown08 & 3)));
            desc.unknown08 = 0;
            break;
    }
    return boost::intrusive_ptr<ITexture>(new CTexture(name, this, desc), true);  // count 0 -> 1
}

// 0x5b69c0 _ZN6glitch5video15CCommonGLDriverI...18restoreRenderStateEv
// Re-applies every cached value to GL: blend (the equation only with capability bit 0x40000), colour mask, clear colour, culling,
// winding (flipped when the flip byte is set), depth test / function / mask / clear value / range, dither, line width, polygon
// offset, sample coverage, scissor (through fixUpScreenArea), stencil test, and the array / element buffer bindings.
void CCommonGLDriver::restoreRenderState() {
    auto setCap = [](bool on, uint32_t cap) {
        if (on) {
            if (gl().enable) gl().enable(cap);
        } else {
            if (gl().disable) gl().disable(cap);
        }
    };
    setCap(m_shadow.m_blendEnable, 0xbe2);
    if ((m_capabilities & 0x40000u) != 0 && gl().blendEquation) gl().blendEquation(kBlendEquationMap[m_shadow.m_blendEquation]);
    if (gl().blendFunc) gl().blendFunc(kBlendFactorMap[m_shadow.m_blendSrc], kBlendFactorMap[m_shadow.m_blendDst]);
    if (gl().colorMask) {
        gl().colorMask(m_shadow.m_colorMask & 0xffu, (m_shadow.m_colorMask >> 8) & 0xffu, (m_shadow.m_colorMask >> 16) & 0xffu,
                       (m_shadow.m_colorMask >> 24) & 0xffu);
    }
    if (gl().clearColor) {
        gl().clearColor(static_cast<float>(m_shadow.m_clearColor & 0xffu) * kInv255,
                        static_cast<float>((m_shadow.m_clearColor >> 8) & 0xffu) * kInv255,
                        static_cast<float>((m_shadow.m_clearColor >> 16) & 0xffu) * kInv255,
                        static_cast<float>((m_shadow.m_clearColor >> 24) & 0xffu) * kInv255);
    }
    setCap(m_shadow.m_cullFaceEnable, 0xb44);
    if (gl().cullFace) gl().cullFace(kFaceCullingMap[m_shadow.m_cullFace]);
    int32_t winding = m_shadow.m_frontFace;
    if (m_frontFaceFlip) winding = 1 - winding;
    if (gl().frontFace) gl().frontFace(kFaceWindingMap[winding]);
    setCap(m_shadow.m_depthTestEnable, 0xb71);
    if (gl().depthFunc) gl().depthFunc(kCompareFuncMap[m_shadow.m_depthFunc]);
    if (gl().depthMask) gl().depthMask(m_shadow.m_depthMask ? 1 : 0);
    if (gl().clearDepthf) gl().clearDepthf(m_shadow.m_clearDepth);
    if (gl().depthRangef) gl().depthRangef(m_shadow.m_depthRangeNear, m_shadow.m_depthRangeFar);
    setCap(m_shadow.m_ditherEnable, 0xbd0);
    if (gl().lineWidth) gl().lineWidth(m_shadow.m_lineWidth);
    setCap(m_shadow.m_polygonOffsetFillEnable, 0x8037);
    if (gl().polygonOffset) gl().polygonOffset(m_shadow.m_polygonOffsetFactor, m_shadow.m_polygonOffsetUnits);
    setCap(m_shadow.m_sampleAlphaToCoverageEnable, 0x809e);
    setCap(m_shadow.m_sampleCoverageEnable, 0x80a0);
    if (gl().sampleCoverage) gl().sampleCoverage(m_shadow.m_sampleCoverageValue, m_shadow.m_sampleCoverageInvert ? 1 : 0);
    setCap(m_shadow.m_scissorEnable, 0xc11);
    int32_t x = 0, y = 0, width = 0, height = 0;
    fixUpScreenArea(m_shadow.m_scissor, x, y, width, height, true, false);
    if (gl().scissor) gl().scissor(x, y, width, height);
    setCap(m_shadow.m_stencilTestEnable, 0xb90);
    if (gl().bindBuffer) {
        gl().bindBuffer(0x8892, m_common.m_words[0]);
        gl().bindBuffer(0x8893, m_common.m_words[1]);
    }
}

// 0x5b759c applyRenderStateScissor<detail::driver::SRenderState>: the scissor test follows bit 21 of the state word; the
// rectangle (state +0x14) is applied through fixUpScreenArea when it or the cache key changed.
void CCommonGLDriver::applyRenderStateScissor(const detail::driver::SRenderState& state) {
    const bool wanted = ((state.m_word00 >> 21) & 1u) != 0;
    if (m_shadow.m_scissorEnable != wanted) {
        if (wanted) {
            if (gl().enable) gl().enable(0xc11);
            m_shadow.m_scissorEnable = wanted;
        } else {
            if (gl().disable) gl().disable(0xc11);
            m_shadow.m_scissorEnable = false;
        }
    }
    const int32_t key = m_renderTargets.size() > 1 ? 0 : m_orientation;
    const core::rect<int32_t>& cached = m_shadow.m_scissor;
    if (key != m_shadow.m_scissorFlag || state.m_scissor[0] != cached.UpperLeftCorner.X ||
        state.m_scissor[1] != cached.UpperLeftCorner.Y || state.m_scissor[2] != cached.LowerRightCorner.X ||
        state.m_scissor[3] != cached.LowerRightCorner.Y) {
        core::rect<int32_t> rect;
        rect.UpperLeftCorner.X = state.m_scissor[0];
        rect.UpperLeftCorner.Y = state.m_scissor[1];
        rect.LowerRightCorner.X = state.m_scissor[2];
        rect.LowerRightCorner.Y = state.m_scissor[3];
        int32_t x = 0, y = 0, width = 0, height = 0;
        fixUpScreenArea(rect, x, y, width, height, true, false);
        if (gl().scissor) gl().scissor(x, y, width, height);
        m_shadow.m_scissor = rect;
        m_shadow.m_scissorFlag = key;
    }
}

// 0x5b76c4 applyRenderStateNonGrouped<detail::driver::SRenderState>: colour mask (bits 16-19), clear colour (the four bytes at
// +0x04; the original hands the byte values to glClearColor as floats without scaling them), clear depth, depth range, dither
// (bit 20), stencil mask (low byte) and clear stencil (second byte).
void CCommonGLDriver::applyRenderStateNonGrouped(const detail::driver::SRenderState& state) {
    const uint32_t word = state.m_word00;
    const uint32_t r = (word >> 16) & 1u;
    const uint32_t g = (word >> 17) & 1u;
    const uint32_t b = (word >> 18) & 1u;
    const uint32_t a = (word >> 19) & 1u;
    const uint32_t packed = r | (g << 8) | (b << 16) | (a << 24);
    if (m_shadow.m_colorMask != packed) {
        m_shadow.m_colorMask = packed;
        if (gl().colorMask) gl().colorMask(r, g, b, a);
    }
    if (m_shadow.m_clearColor != state.m_word04) {
        m_shadow.m_clearColor = state.m_word04;
        if (gl().clearColor) {
            gl().clearColor(static_cast<float>(state.m_word04 & 0xffu), static_cast<float>((state.m_word04 >> 8) & 0xffu),
                            static_cast<float>((state.m_word04 >> 16) & 0xffu), static_cast<float>((state.m_word04 >> 24) & 0xffu));
        }
    }
    if (state.m_clearDepth != m_shadow.m_clearDepth) {
        m_shadow.m_clearDepth = state.m_clearDepth;
        if (gl().clearDepthf) gl().clearDepthf(state.m_clearDepth);
    }
    if (state.m_depthRangeNear != m_shadow.m_depthRangeNear || state.m_depthRangeFar != m_shadow.m_depthRangeFar) {
        if (gl().depthRangef) gl().depthRangef(state.m_depthRangeNear, state.m_depthRangeFar);
        m_shadow.m_depthRangeNear = state.m_depthRangeNear;
        m_shadow.m_depthRangeFar = state.m_depthRangeFar;
    }
    const bool dither = ((word >> 20) & 1u) != 0;
    if (m_shadow.m_ditherEnable != dither) {
        m_shadow.m_ditherEnable = dither;
        if (dither) {
            if (gl().enable) gl().enable(0xbd0);
        } else {
            if (gl().disable) gl().disable(0xbd0);
        }
    }
    if (m_shadow.m_stencilMask != (word & 0xffu)) {
        m_shadow.m_stencilMask = static_cast<uint8_t>(word);
        if (gl().stencilMask) gl().stencilMask(word & 0xffu);
    }
    if (m_shadow.m_clearStencil != ((word >> 8) & 0xffu)) {
        m_shadow.m_clearStencil = static_cast<uint8_t>(word >> 8);
        if (gl().clearStencil) gl().clearStencil(static_cast<int32_t>((word >> 8) & 0xffu));
    }
}

// 0x5b7898 _ZN6glitch5video15CCommonGLDriverI...14setRenderStateERKNS0_6detail6driver12SRenderStateE
void CCommonGLDriver::setRenderState(const detail::driver::SRenderState& state) {
    applyRenderStateScissor(state);
    applyRenderStateNonGrouped(state);
}

// 0x5af654 applyRenderStateCullFace<detail::renderpass::SRenderState>: culling on, and the face side from the top two bits of
// the first word.
void CCommonGLDriver::applyRenderStateCullFace(const detail::renderpass::SRenderState& state) {
    if (!m_shadow.m_cullFaceEnable) {
        if (gl().enable) gl().enable(0xb44);
        m_shadow.m_cullFaceEnable = true;
    }
    const int32_t side = static_cast<int32_t>(state.m_word00 >> 30);
    if (side != m_shadow.m_cullFace) {
        m_shadow.m_cullFace = side;
        if (gl().cullFace) gl().cullFace(kFaceCullingMap[side]);
    }
}

// 0x5af7a4 applyRenderStatePolygonOffset<detail::renderpass::SRenderState>: the fill offset is switched on when the second word
// asks for it (bit 21); the factor and units (state +0x14 and +0x18, floats) are applied when they changed.
void CCommonGLDriver::applyRenderStatePolygonOffset(const detail::renderpass::SRenderState& state) {
    if (!m_shadow.m_polygonOffsetFillEnable && (state.m_word04 & 0x200000u) != 0) {
        if (gl().enable) gl().enable(0x8037);
        m_shadow.m_polygonOffsetFillEnable = true;
    }
    float factor;
    std::memcpy(&factor, &state.m_word14, sizeof factor);
    const float units = state.m_float18;
    if (factor != m_shadow.m_polygonOffsetFactor || units != m_shadow.m_polygonOffsetUnits) {
        if (gl().polygonOffset) gl().polygonOffset(factor, units);
        m_shadow.m_polygonOffsetUnits = units;
        m_shadow.m_polygonOffsetFactor = factor;
    }
}

// 0x5af88c applyRenderStateSampleCoverage<detail::renderpass::SRenderState>: sample coverage is enabled when it was off (the cache
// byte is not written); the value (state +0x1c) and the invert bit (bit 26 of the second word) are applied when they changed.
void CCommonGLDriver::applyRenderStateSampleCoverage(const detail::renderpass::SRenderState& state) {
    if (!m_shadow.m_sampleCoverageEnable && gl().enable) gl().enable(0x80a0);
    const float value = state.m_float1c;
    const bool invert = ((state.m_word04 >> 26) & 1u) != 0;
    if (value != m_shadow.m_sampleCoverageValue || m_shadow.m_sampleCoverageInvert != invert) {
        m_shadow.m_sampleCoverageInvert = invert;
        m_shadow.m_sampleCoverageValue = value;
        if (gl().sampleCoverage) gl().sampleCoverage(value, invert ? 1 : 0);
    }
}

// 0x5afa78 applyRenderStateStencil<detail::renderpass::SRenderState>: stencil test on; the function (low three bits of the second
// word), reference (second byte of the first word) and mask (third byte) are applied when they differ from the cached function word,
// then the three operations (bits 3-5, 6-8 and 9-11 of the second word). The original stores the operation word over the
// function word (+0x1f0, not +0x1f4); that is reproduced, so the operation bytes of the cache are not updated here.
void CCommonGLDriver::applyRenderStateStencil(const detail::renderpass::SRenderState& state) {
    if (!m_shadow.m_stencilTestEnable) {
        if (gl().enable) gl().enable(0xb90);
        m_shadow.m_stencilTestEnable = true;
    }
    uint32_t funcWord;
    std::memcpy(&funcWord, &m_shadow.m_stencilFunc, sizeof funcWord);  // +0x1f0: function, reference, mask, spare
    const uint32_t second = state.m_word04;
    const uint32_t newFunc = (funcWord & 0xff000000u) | (second & 7u) | (((state.m_word00 >> 8) & 0xffu) << 8) |
                             (((state.m_word00 >> 16) & 0xffu) << 16);
    if (newFunc != funcWord) {
        if (gl().stencilFunc) {
            gl().stencilFunc(kCompareFuncMap[second & 7u], static_cast<int32_t>((state.m_word00 >> 8) & 0xffu),
                             (state.m_word00 >> 16) & 0xffu);
        }
        std::memcpy(&m_shadow.m_stencilFunc, &newFunc, sizeof newFunc);
        funcWord = newFunc;
    }
    const uint32_t fail = (second >> 3) & 7u;
    const uint32_t zfail = (second >> 6) & 7u;
    const uint32_t zpass = (second >> 9) & 7u;
    uint32_t opWord;
    std::memcpy(&opWord, &m_shadow.m_stencilOpFail, sizeof opWord);  // +0x1f4: fail, z-fail, z-pass, spare
    const uint32_t newOps = (opWord & 0xff000000u) | (fail & 0xff00ffffu) | ((zfail << 8) & 0xff00ffffu) | ((zpass & 0xffu) << 16);
    if (newOps != opWord) {
        if (gl().stencilOp) gl().stencilOp(kStencilOpMap[fail], kStencilOpMap[zfail], kStencilOpMap[zpass]);
        std::memcpy(&m_shadow.m_stencilFunc, &newOps, sizeof newOps);  // stored at +0x1f0, as in the original
    }
}

// 0x5b70cc applyRenderStateNonGrouped<detail::renderpass::SRenderState>: the winding (bit 18 of the second word, flipped when the
// flip byte is set), depth mask (bit 20), line width (+0x0c), point size (+0x10, cached only), polygon modes (bits 12-13 and
// 14-15, cached only) and the alpha-to-coverage enable (bit 24).
void CCommonGLDriver::applyRenderStateNonGrouped(const detail::renderpass::SRenderState& state) {
    const uint32_t word = state.m_word04;
    const int32_t winding = static_cast<int32_t>((word >> 18) & 1u);
    if (winding != m_shadow.m_frontFace) {
        const int32_t index = m_frontFaceFlip ? 1 - winding : winding;
        if (gl().frontFace) gl().frontFace(kFaceWindingMap[index]);
        m_shadow.m_frontFace = winding;
    }
    const bool depthMask = ((word >> 20) & 1u) != 0;
    if (m_shadow.m_depthMask != depthMask) {
        m_shadow.m_depthMask = depthMask;
        if (gl().depthMask) gl().depthMask(depthMask ? 1 : 0);
    }
    if (state.m_float0c != m_shadow.m_lineWidth) {
        m_shadow.m_lineWidth = state.m_float0c;
        if (gl().lineWidth) gl().lineWidth(state.m_float0c);
    }
    if (state.m_float10 != m_shadow.m_pointSize) m_shadow.m_pointSize = state.m_float10;
    const int32_t front = static_cast<int32_t>((word >> 12) & 3u);
    if (front != m_shadow.m_polygonModeFront) m_shadow.m_polygonModeFront = front;
    const int32_t back = static_cast<int32_t>((word & 0xffffu) >> 14);
    if (back != m_shadow.m_polygonModeBack) m_shadow.m_polygonModeBack = back;
    const bool alphaToCoverage = ((word >> 24) & 1u) != 0;
    if (m_shadow.m_sampleAlphaToCoverageEnable != alphaToCoverage) {
        m_shadow.m_sampleAlphaToCoverageEnable = alphaToCoverage;
        if (alphaToCoverage) {
            if (gl().enable) gl().enable(0x809e);
        } else {
            if (gl().disable) gl().disable(0x809e);
        }
    }
}

// 0x5b73e0 detail::applyRenderStates<CCommonGLDriver>(CMaterial*, unsigned char technique, unsigned char pass, driver*)
// Applies the pass's render state unless the previous commit was the same renderer, the same technique and pass, and the
// technique's first pass has not changed since (its flag byte at +0x30 is clear). The last technique and pass are kept in
// function-local statics, as in the original.
namespace detail {
void applyRenderStates(CMaterial* material, uint8_t technique, uint8_t pass, CCommonGLDriver* driver) {
    static uint8_t lastTechnique = 0;
    static uint8_t lastPass = 0;
    CMaterialRenderer* renderer = material->m_renderer.get();
    const CMaterial* last = driver->m_materialF0;
    const STechnique* entry = &renderer->m_techniques[technique];
    bool shouldApply = false;
    if (last == nullptr || renderer != last->m_renderer.get()) {
        shouldApply = true;
    } else if (entry->passCount > 1) {
        shouldApply = true;
    } else {
        const SRenderPass* first = entry->passes;
        shouldApply = first->flag30 != 0 || lastPass != pass || lastTechnique != technique;
    }
    if (shouldApply) {
        renderpass::SRenderState state;
        std::memcpy(&state, entry->passes[pass].stateWords, sizeof state);
        apply<true, renderpass::SRenderState, CCommonGLDriver>(state, driver);
        const_cast<SRenderPass*>(renderer->m_techniques[technique].passes)->flag30 = 0;
    }
    lastTechnique = technique;
    lastPass = pass;
}
}  // namespace detail

// 0x5b739c _ZN6glitch5video15CCommonGLDriverI...21commitMaterialRendererEPNS0_17CMaterialRendererE
// Applies the first pass of the current technique and clears its flag byte.
void CCommonGLDriver::commitMaterialRenderer(CMaterialRenderer* renderer) {
    const SRenderPass* first = renderer->m_techniques[m_flagF8].passes;
    detail::renderpass::SRenderState state;
    std::memcpy(&state, first->stateWords, sizeof state);
    detail::apply<true, detail::renderpass::SRenderState, CCommonGLDriver>(state, this);
    const_cast<SRenderPass*>(renderer->m_techniques[m_flagF8].passes)->flag30 = 0;
}

// 0x5b7594 _ZN6glitch5video15CCommonGLDriverI...21commitCurrentMaterialEv: commitCurrentMaterialImpl(0).
void CCommonGLDriver::commitCurrentMaterial() { commitCurrentMaterialImpl(0); }

// 0x5b8b8c _ZN6glitch5video15CCommonGLDriverI...20commitPassParametersEhPKNS0_14CVertexStreamsEPKh
// For passes after the first the pass's state and program are committed; then the indirect parameters are.
void CCommonGLDriver::commitPassParameters(uint8_t pass, const CVertexStreams* streams, const uint8_t* attributeMap) {
    if (pass != 0) {
        commitCurrentMaterialImpl(pass);
    }
    static_cast<CProgrammableGLDriver*>(this)->commitCurrentMaterialIndirectParameters(pass, streams, attributeMap);
}

// 0x5b8bc8 _ZN6glitch5video15CCommonGLDriverI...8drawImplERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE
// Counts the draw call (2D or 3D) and the primitives, makes the index buffer current, and for every pass of the current technique
// builds the attribute map (the material's, or the default one from the stream order), commits the pass parameters, sets up the
// vertex arrays and issues the primitives; the result is true when every pass drew. Bit 1 of the state flags is held during
// the call.
bool CCommonGLDriver::drawImpl(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                               CDriverBinding**) {
    m_stateFlags |= 2u;
    if (unk_a0 == 1) {
        ++m_frameDrawCalls2D;
    } else {
        unk_a0 = 2;
        ++m_frameDrawCalls;
    }
    m_framePrimitives += primitives.getPrimitiveCount();
    const void* indices = setBuffer(primitives.m_indexBuffer.get());
    const STechnique& technique = m_materialEc->m_renderer->m_techniques[m_flagF8];
    const uint32_t passCount = technique.passCount;
    bool result = true;
    for (uint32_t pass = 0; pass < passCount; ++pass) {
        const uint8_t* attributeMap;
        if (m_stateE8 != nullptr) {
            attributeMap = m_stateE8[pass]->m_map;
        } else {
            std::memset(IVideoDriver::DefaultAttribMap, 0xff, sizeof IVideoDriver::DefaultAttribMap);
            uint32_t streamIndex = 0;
            for (const SVertexStream& entry : streams->m_streams) {
                IVideoDriver::DefaultAttribMap[entry.attribute] = static_cast<uint8_t>(streamIndex++);
            }
            attributeMap = IVideoDriver::DefaultAttribMap;
        }
        commitPassParameters(static_cast<uint8_t>(pass), streams.get(), attributeMap);
        static_cast<CProgrammableGLDriver*>(this)->setupArrays(static_cast<const CGLSLShader*>(m_shaderF4), streams.get(),
                                                               attributeMap);
        result &= detail::drawPrimitives(primitives, m_shadow.m_polygonModeFront, indices);
    }
    m_stateFlags &= ~2u;
    return result;
}

// ---- the draw helpers (detail::drawPrimitives<CProgrammableGLDriver<CGLSLShaderHandler>> and its four callees) ----

namespace detail {

// The strides in indices (or vertices) a primitive type of the soft polygon modes advances by: triangle strip, fan, triangles,
// quad strip, quads (the table both soft paths read, 0x8dfff4 / 0x8e0008).
static const int32_t kSoftStrides[5] = {1, 1, 3, 2, 4};
// getIndexTypeSize(E_INDEX_TYPE)::sizes (0x99b5d8): bytes of an index of type 0, 1 and 2.
static const int32_t kIndexTypeSizes[3] = {1, 2, 4};

// 0x5b0638 drawIndexedSoftPolygonMode: point mode (2) and point / line primitives are drawn directly; the strip / fan / triangle /
// quad kinds are drawn one primitive at a time as line loops (mode 2 of GL, a loop) with 3 or 4 indices each.
bool drawIndexedSoftPolygonMode(const CPrimitiveStream& stream, E_POLYGON_MODE mode, const void* indices) {
    const uint32_t indexType = stream.m_indexType;
    const uint8_t* start = static_cast<const uint8_t*>(indices) + stream.m_offset;
    const uint32_t glIndexType = kIndexTypeMap[indexType];
    if (mode == 2) {
        if (gl().drawElements) gl().drawElements(0, stream.m_count, glIndexType, start);
        return true;
    }
    const uint32_t kind = stream.m_primitiveType;
    switch (kind) {
        case 0:
            if (gl().drawElements) gl().drawElements(0, stream.m_count, glIndexType, start);
            break;
        case 1:
        case 2:
        case 3:
            if (gl().drawElements) gl().drawElements(kPrimitiveTypeMap[kind], stream.m_count, glIndexType, start);
            break;
        case 4:
        case 5:
        case 6:
        case 7:
        case 8: {
            const uint32_t stride = static_cast<uint32_t>(kSoftStrides[kind - 4]);
            const int32_t perPrimitive = kind > 6 ? 4 : 3;
            const uint32_t indexSize = static_cast<uint32_t>(kIndexTypeSizes[indexType]);
            const uint32_t step = indexSize * stride;
            const uint8_t* end = start + step * (stream.m_count * indexSize / step);
            const uint8_t* at = start;
            uint32_t advance = 0;
            while (at != end) {
                advance += step;
                if (gl().drawElements) gl().drawElements(2, perPrimitive, glIndexType, at);
                at = start + advance;
            }
            break;
        }
        default:
            break;
    }
    return true;
}

// 0x5b076c drawIndexedSoftQuads: every quad is drawn as a 4-index triangle strip.
bool drawIndexedSoftQuads(const CPrimitiveStream& stream, const void* indices) {
    const uint32_t indexType = stream.m_indexType;
    const uint8_t* start = static_cast<const uint8_t*>(indices) + stream.m_offset;
    const uint32_t step = 4u * static_cast<uint32_t>(kIndexTypeSizes[indexType]);
    const uint8_t* end = start + step * stream.getPrimitiveCount();
    const uint8_t* at = start;
    uint32_t advance = 0;
    while (at != end) {
        advance += step;
        if (gl().drawElements) gl().drawElements(5, 4, kIndexTypeMap[indexType], at);
        at = start + advance;
    }
    return true;
}

// 0x5b07f0 drawUnindexedSoftPolygonMode
bool drawUnindexedSoftPolygonMode(const CPrimitiveStream& stream, E_POLYGON_MODE mode) {
    if (mode == 2) {
        if (gl().drawArrays) gl().drawArrays(0, stream.m_vertexStart, stream.m_count);
        return true;
    }
    const uint32_t kind = stream.m_primitiveType;
    switch (kind) {
        case 0:
            if (gl().drawArrays) gl().drawArrays(0, stream.m_vertexStart, stream.m_count);
            break;
        case 1:
        case 2:
        case 3:
            if (gl().drawArrays) gl().drawArrays(kPrimitiveTypeMap[kind], stream.m_vertexStart, stream.m_count);
            break;
        case 4:
        case 5:
        case 6:
        case 7:
        case 8: {
            const uint32_t end = stream.m_vertexEnd;
            uint32_t first = stream.m_vertexStart;
            const int32_t perPrimitive = kind > 6 ? 4 : 3;
            const int32_t stride = kSoftStrides[kind - 4];
            if (first < end) {
                uint32_t next = stride + first;
                uint32_t counter = stride + first;
                while (true) {
                    counter += stride;
                    if (gl().drawArrays) gl().drawArrays(2, first, perPrimitive);
                    first = next;
                    if (end <= counter - stride) break;
                    next += stride;
                }
            }
            break;
        }
        default:
            break;
    }
    return true;
}

// 0x5b08e8 drawUnindexedSoftQuads: an index list of two triangles per quad (or one pair per two vertices for the strip kind) is
// built in a process buffer and drawn as triangles.
bool drawUnindexedSoftQuads(const CPrimitiveStream& stream) {
    const uint32_t count = stream.m_count;
    uint16_t* indices = reinterpret_cast<uint16_t*>(glitch::core::allocProcessBuffer(static_cast<int>(4 * kIndexTypeSizes[1] * count)));
    uint32_t quads;
    uint32_t step;
    if (stream.m_primitiveType == 8) {
        quads = count & 0xfffffffcu;
        step = 4;
    } else {
        quads = count & 0xfffffffeu;
        if (quads <= 3) quads = 0;
        step = 2;
    }
    if (quads != 0) {
        uint32_t counter = quads + step;
        uint16_t* at = indices;
        do {
            at[0] = 0;
            at[1] = 1;
            at[2] = 3;
            at[3] = 3;
            counter += step;
            at[4] = 1;
            at[5] = 2;
            at += 6;
        } while (counter != step);
    }
    if (gl().drawElements) gl().drawElements(4, 6 * stream.getPrimitiveCount(), 0x1403, indices);
    if (indices != nullptr) glitch::core::releaseProcessBuffer(indices);
    return true;
}

// 0x5b09c8 drawPrimitives<CProgrammableGLDriver<CGLSLShaderHandler>>: an indexed stream goes through glDrawElements (quads and
// the soft polygon mode through their helpers), a non-indexed one through glDrawArrays (quads and strips of quads, and the soft
// polygon mode, through theirs). Returns the helper's result, or true for the direct draws.
bool drawPrimitives(const CPrimitiveStream& stream, E_POLYGON_MODE mode, const void* indices) {
    if (stream.m_indexBuffer) {
        if (mode != 0) {
            return drawIndexedSoftPolygonMode(stream, mode, indices);
        }
        const uint32_t kind = stream.m_primitiveType;
        if (kind == 8) {
            return drawIndexedSoftQuads(stream, indices);
        }
        if (gl().drawElements) {
            gl().drawElements(kPrimitiveTypeMap[kind], stream.m_count, kIndexTypeMap[stream.m_indexType],
                              static_cast<const uint8_t*>(indices) + stream.m_offset);
        }
        return true;
    }
    if (mode != 0) {
        return drawUnindexedSoftPolygonMode(stream, mode);
    }
    const uint32_t kind = stream.m_primitiveType;
    if (kind == 8 || kind == 7) {
        return drawUnindexedSoftQuads(stream);
    }
    if (gl().drawArrays) gl().drawArrays(kPrimitiveTypeMap[kind], stream.m_vertexStart, stream.m_count);
    return true;
}

}  // namespace detail

// ---- buffers ----

// 0x5b13f4 _ZN6glitch5video15CCommonGLDriverI...12createBufferENS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvb
boost::intrusive_ptr<IBuffer> CCommonGLDriver::createBuffer(E_BUFFER_TYPE type, E_BUFFER_USAGE usage, uint32_t size,
                                                            void* data, bool flag) {
    return boost::intrusive_ptr<IBuffer>(new CBuffer(this, type, usage, size, data, flag), true);  // a new buffer has count 0
}

// The GL buffer slots (bindImpl, unbindImpl, update, mapImpl, unmapImpl, cloneImpl) are in src/ok1b-CBuffer.cpp.

// 0x5b5be4 _ZN6glitch5video15CCommonGLDriverI...17registerBufferMapEjjjjPKv
// Copies the byte count bytes of data (malloc) and inserts an entry keyed by the first argument (also stored as the entry's first
// field) with the next two arguments and the byte count and copy (insert_unique: an existing key is kept and the new copy is
// left allocated, as in the original).
void CCommonGLDriver::registerBufferMap(uint32_t a, uint32_t b, uint32_t c, uint32_t byteCount, const void* data) {
    BufferInfo info;
    info.arg1 = a;
    info.arg2 = b;
    info.arg3 = c;
    info.byteCount = byteCount;
    info.data = std::malloc(byteCount);
    std::memcpy(info.data, data, byteCount);
    m_bufferMap.insert(std::make_pair(a, info));
}

// 0x5b1f5c _ZN6glitch5video15CCommonGLDriverI...19unregisterBufferMapEj
void CCommonGLDriver::unregisterBufferMap(uint32_t key) {
    auto it = m_bufferMap.find(key);
    if (it == m_bufferMap.end()) return;
    std::free(it->second.data);
    m_bufferMap.erase(it);
}

// 0x5b35d8 _ZN6glitch5video15CCommonGLDriverI...14clearBufferMapEv
void CCommonGLDriver::clearBufferMap() {
    for (auto& entry : m_bufferMap) std::free(entry.second.data);
    m_bufferMap.clear();
}

// 0x5b0594 _ZN6glitch5video15CCommonGLDriverI...15ReloadbufferMapEv
// The entry fields are the registerBufferMap arguments: arg1 is the GL buffer name, arg2 the target and arg3 the usage.
void CCommonGLDriver::ReloadbufferMap() {
    auto& t = deps::activeGLFunctionTable();
    for (auto& entry : m_bufferMap) {
        const BufferInfo& info = entry.second;
        if (t.bindBuffer) t.bindBuffer(info.arg2, info.arg1);
        if (t.bufferData) t.bufferData(info.arg2, static_cast<int32_t>(info.byteCount), info.data, info.arg3);
        if (t.bindBuffer) t.bindBuffer(info.arg2, 0);
    }
}

// ---------------------------------------------------------------------------------------------------------------------------
// CCommonGLDriver::CTexture, CFramebuffer, CRenderTarget and CRenderBuffer::bind
// ---------------------------------------------------------------------------------------------------------------------------

namespace {

// TextureFilterMap (ELF 0x8e00f0) and TextureWrapModeMap (0x8e0108).
constexpr uint32_t kTextureFilterMap[6] = {0x2600, 0x2601, 0x2700, 0x2701, 0x2702, 0x2703};
constexpr uint32_t kTextureWrapModeMap[5] = {0x2901, 0x812f, 0x812f, 0x812f, 0x2901};

constexpr uint16_t kUpdatableDirtyMask = 0x1ffd;  // everything but the "mipmaps" bit
constexpr uint32_t kGLFramebuffer = 0x8d40;
constexpr uint32_t kGLRenderbuffer = 0x8d41;

bool isCompressed(uint32_t format) { return (pixel_format::detail::PFDTable[format].flags & 8u) != 0; }

}  // namespace

// Port addition (remaster, not in the binary): textures sampled with mipmaps get trilinear minification (the data asks for
// one-level-at-a-time filters, which show a seam where the level changes) and anisotropic filtering at least
// g_dh2Anisotropy (floors and walls at grazing angles stay sharp instead of blurring). Set by Dh2InstallRemaster from the
// port settings "trilinear" and "anisotropy"; off (the binary's filters) until then.
bool g_dh2Trilinear = false;
float g_dh2Anisotropy = 0.0f;

// 0x5afd40 _ZNK...8CTexture16updateParametersEv
// Pushes the sampler state that changed since the last update: the minification filter (a level-0-only compressed texture falls
// back to nearest, with an error), the magnification filter, the S and T wrap modes, the R wrap (written through the T bits and
// the T pname, as in the binary), the anisotropy clamped to the driver maximum and the maximum mip level. The dirty bits for the
// sampler state are then cleared.
void CCommonGLDriver::CTexture::updateParameters() const {
    auto* driver = static_cast<CCommonGLDriver*>(m_driver);
    const uint32_t target = kTextureTypeMap[m_flags38 & 3u];
    uint16_t dirty = m_dirtyFlags40;
    if ((dirty & kDirtyMinFilter) != 0) {
        uint32_t filter;
        if ((m_flags3f & kFlagRangeSizes) != 0 && isCompressed((m_flags38 >> 4) & 0x3fu)) {
            glitch::os::Printer::logf(glitch::os::ELL_ERROR,
                                      "texture %s: mipmap filtering with level 0 only data and %s not supported; using %s instead",
                                      m_name.c_str(), "compressed pixel format", "Nearest");
            filter = (m_flags38 >> 12) & 7u;
            if (filter != 0) {
                const_cast<CTexture*>(this)->m_flags38 &= 0xffff8fffu;
                m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyMinFilter);
                filter = 0;
            }
        } else {
            filter = (m_flags38 >> 12) & 7u;
            if (g_dh2Trilinear && filter >= 2) filter = 5;  // port (remaster): GL_LINEAR_MIPMAP_LINEAR
        }
        if (gl().texParameteri) gl().texParameteri(target, 0x2801, static_cast<int32_t>(kTextureFilterMap[filter]));
        dirty = m_dirtyFlags40;
    }
    if ((dirty & kDirtyMagFilter) != 0) {
        if (gl().texParameteri) gl().texParameteri(target, 0x2800, static_cast<int32_t>(kTextureFilterMap[(m_flags38 >> 15) & 7u]));
        dirty = m_dirtyFlags40;
    }
    if ((dirty & kDirtyWrapS) != 0) {
        if (gl().texParameteri) gl().texParameteri(target, 0x2802, static_cast<int32_t>(kTextureWrapModeMap[(m_flags38 >> 18) & 7u]));
        dirty = m_dirtyFlags40;
    }
    if ((dirty & kDirtyWrapT) != 0) {
        if (gl().texParameteri) gl().texParameteri(target, 0x2803, static_cast<int32_t>(kTextureWrapModeMap[(m_flags38 >> 21) & 7u]));
        dirty = m_dirtyFlags40;
    }
    if ((dirty & kDirtyWrapR) != 0 && (driver->m_capabilities & 0x80u) != 0) {
        if (gl().texParameteri) gl().texParameteri(target, 0x2803, static_cast<int32_t>(kTextureWrapModeMap[(m_flags38 >> 21) & 7u]));
        dirty = m_dirtyFlags40;
    }
    // port (remaster): a mipmapped texture also gets its anisotropy pushed with its min filter, at least g_dh2Anisotropy
    const bool portAniso = g_dh2Anisotropy > 1.0f && ((m_flags38 >> 12) & 7u) >= 2;
    if (((dirty & kDirtyAnisotropy) != 0 || (portAniso && (dirty & kDirtyMinFilter) != 0)) && (driver->m_capabilities & 0x20000u) != 0) {
        const float wanted = portAniso && g_dh2Anisotropy > m_anisotropy ? g_dh2Anisotropy : m_anisotropy;
        float anisotropy = driver->m_maxAnisotropy;
        if (anisotropy >= wanted) anisotropy = wanted;
        if (gl().texParameterf) gl().texParameterf(target, 0x84fe, anisotropy);
        dirty = m_dirtyFlags40;
    }
    if ((driver->m_unk7b8[13] & 0x80000u) != 0 && (dirty & kDirtyMaxLod) != 0) {
        const int32_t level = ((m_flags38 >> 12) & 7u) > 3 ? static_cast<int32_t>(std::ceil(m_maxLod))
                                                          : static_cast<int32_t>(m_maxLod + 0.5f);
        if (gl().texParameteri) gl().texParameteri(target, 0x813d, level);
        dirty = m_dirtyFlags40;
    }
    m_dirtyFlags40 = static_cast<uint16_t>(dirty & 0xe003u);
}

// 0x5afff0 _ZNK...8CTexture10updateDataEb
// Uploads every dirty (face, level) of the client data: the unpack alignment follows the pitch of level 0; a dirty bit is looked
// up in the bitmap that follows the level table (one bit per level and face, or per face when the table holds a size range),
// uploaded as a full image (`full`) or as a sub image, compressed or not, and cleared. A GL error raises the failed flag. A
// texture with more than one level and only level-0 data then gets its mip chain generated (never for a compressed format).
int32_t CCommonGLDriver::CTexture::updateData(bool full) const {
    auto* driver = static_cast<CCommonGLDriver*>(m_driver);
    const bool range = (m_flags3f & kFlagRangeSizes) != 0;
    const uint32_t mipCount = m_mipCount3e;
    const uint32_t levelsPerFace = range ? 1u : mipCount;
    const uint32_t bitStride = range ? mipCount : 1u;
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
    __android_log_print(ANDROID_LOG_ERROR, "DH2DBG", "updateData tex=%p name=%s levelSizes=%p mips=%u w=%u h=%u flags=%x data=%p", (const void*)this, m_name.c_str(), (void*)m_levelSizes, mipCount, (unsigned)m_width, (unsigned)m_height, (unsigned)m_flags38, (const void*)m_data);
#endif
    uint32_t* bits = reinterpret_cast<uint32_t*>(m_levelSizes + (mipCount + 1));
    const uint32_t format = (m_flags38 >> 4) & 0x3fu;
    const SFormatRow& row = driver->m_formatTable[format];

    if (m_data != nullptr) {
        const uint32_t pitch = pixel_format::computePitch(static_cast<E_PIXEL_FORMAT>(format), m_width);
        const uint32_t alignment = (pitch & 1u) == 0 ? 4u - (pitch & 3u) : 1u;
        if (alignment != driver->m_common.m_words[6]) {
            if (gl().pixelStorei) gl().pixelStorei(0xcf5, static_cast<int32_t>(alignment));
            driver->m_common.m_words[6] = alignment;
        }
    }
    if (gl().getError) gl().getError();

    const uint32_t type = m_flags38 & 3u;
    const uint32_t faces = type == 2 ? 6u : 1u;
    uint32_t cursor = 0;
    for (uint32_t face = 0; face < faces; ++face) {
        int32_t level = 0;
        for (uint32_t index = 0; index < levelsPerFace; ++index, ++level) {
            if ((*bits & (1u << cursor)) != 0) {
                const uint8_t* data = m_data;
                if (data != nullptr) {
                    uint32_t offset;
                    if (range) {
                        offset = static_cast<uint32_t>(m_levelSizes[1] - m_levelSizes[0]) * face;
                    } else {
                        offset = static_cast<uint32_t>(m_levelSizes[level]) +
                                 ((static_cast<uint32_t>(m_levelSizes[mipCount]) + 127u) & 0xffffff80u) * face;
                    }
                    data += offset;
                }
                int32_t width = static_cast<int32_t>(m_width) >> level;
                int32_t height = static_cast<int32_t>(m_height) >> level;
                if (width < 1) width = 1;
                if (height < 1) height = 1;
                if (type != 1) {
                    const uint32_t target = type == 2 ? 0x8515u + face : kTextureTypeMap[type];
                    if (isCompressed(format)) {
                        const int32_t size = m_levelSizes[level + 1] - m_levelSizes[level];
                        if (full) {
                            if (gl().compressedTexImage2D) gl().compressedTexImage2D(target, level, row.m_internalFormat, width, height, 0, size, data);
                        } else {
                            if (gl().compressedTexSubImage2D) gl().compressedTexSubImage2D(target, level, 0, 0, width, height, row.m_internalFormat, size, data);
                        }
                    } else if (full) {
                        if (gl().texImage2D) gl().texImage2D(target, level, static_cast<int32_t>(row.m_internalFormat), width, height, 0, row.m_format, row.m_type, data);
                    } else {
                        if (gl().texSubImage2D) gl().texSubImage2D(target, level, 0, 0, width, height, row.m_format, row.m_type, data);
                    }
                }
                if (gl().getError) {
                    const uint32_t glErr = gl().getError();
                    if (glErr != 0) {
#if defined(__ANDROID__)
                        static int s_uploadErrorsLogged = 0;   // always on, capped: real drivers reject formats the emulator accepts
                        if (s_uploadErrorsLogged++ < 60)
                        __android_log_print(ANDROID_LOG_ERROR, "DH2GL", "texture %s upload error %x: internal=%x format=%x type=%x %dx%d level=%d compressed=%d", m_name.c_str(), glErr, (unsigned)row.m_internalFormat, (unsigned)row.m_format, (unsigned)row.m_type, (int)width, (int)height, (int)level, (int)isCompressed(format));
#endif
                        m_flags3f = static_cast<uint8_t>(m_flags3f | kFlagBindFailed);
                    }
                }
            }
            cursor += bitStride;
            if (cursor > 31) {
                *bits++ = 0;
                cursor -= 32;
            }
        }
    }
    if (cursor != 0) *bits = 0;

    m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 & 0xfffcu);
    if ((m_flags3f & kFlagBindFailed) == 0 && m_mipCount3e > 1 && (m_flags3f & kFlagRangeSizes) != 0) {
        if (m_data == nullptr) {
            if (!isCompressed(format)) return 1;
        } else if (!isCompressed(format)) {
            if ((driver->m_capabilities & 4u) != 0) const_cast<CTexture*>(this)->generateMipmapsImpl();
            return 1;
        }
        glitch::os::Printer::logf(glitch::os::ELL_WARNING,
                                  "texture %s: mipmap generation with compressed pixel format not supported; provide full data",
                                  m_name.c_str());
    }
    return 1;
}

// 0x5b044c _ZNK...8CTexture6updateEb: the sampler parameters, then the data, whichever is dirty.
int32_t CCommonGLDriver::CTexture::update(bool full) const {
    uint16_t dirty = m_dirtyFlags40;
    if ((dirty & 0x1ffcu) != 0) {
        updateParameters();
        dirty = m_dirtyFlags40;
    }
    const int32_t result = dirty & 1;
    if ((dirty & 1u) != 0) return updateData(full);
    return result;
}

// 0x5b5610 _ZN...8CTexture8bindImplEb
// Makes the texture current on the last texture unit. A texture without a GL name gets one (a failure raises the failed flag),
// is bound and fully uploaded; one with a mip chain requested but only level-0 data is temporarily switched to nearest
// minification so the upload does not wait for the chain. A texture that already has a name is re-bound if it is not current and
// updated when something is dirty. A failed texture is unbound again; with `release` set a good one frees its client copy.
bool CCommonGLDriver::CTexture::bindImpl(bool release) {
    auto* driver = static_cast<CCommonGLDriver*>(m_driver);
    ITexture** row = driver->m_textureTable[m_flags38 & 3u];
    int32_t result;
    uint8_t flags;
    if (m_glName == 0) {
        m_flags3f = static_cast<uint8_t>(m_flags3f & ~kFlagBindFailed);
        if (gl().genTextures) gl().genTextures(1, &m_glName);
        if (m_glName == 0) {
            result = 0;
            flags = static_cast<uint8_t>(m_flags3f | kFlagBindFailed);
            m_flags3f = flags;
        } else {
            const uint32_t unit = driver->m_textureUnitCount - 1;
            if (row[driver->m_common.m_words[kActiveTextureWord]] != this) {
                if (driver->m_common.m_words[kActiveTextureWord] != unit) {
                    if (gl().activeTexture) gl().activeTexture(0x84c0 + unit);
                    driver->m_common.m_words[kActiveTextureWord] = unit;
                }
                row[unit] = this;
            }
            if (gl().bindTexture) gl().bindTexture(kTextureTypeMap[m_flags38 & 3u], m_glName);
            const uint32_t state = m_flags38;
            if (m_mipCount3e <= 1) {
                flags = m_flags3f;
                m_flags3f = static_cast<uint8_t>(flags | kFlagBound);
                result = update(true);
            } else {
                flags = m_flags3f;
                if ((flags & kFlagRangeSizes) == 0 || !isCompressed((state >> 4) & 0x3fu)) {
                    const uint32_t minFilter = (state >> 12) & 7u;
                    if (minFilter <= 1) {
                        m_flags38 = (state & 0xffff8fffu) | 0x2000u;
                        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyMinFilter);
                        m_flags3f = static_cast<uint8_t>(flags | kFlagBound);
                        result = update(true);
                    } else {
                        m_flags3f = static_cast<uint8_t>(flags | kFlagBound);
                        result = update(true);
                    }
                    if (minFilter != 2) {
                        const uint32_t current = m_flags38;
                        if (minFilter != ((current >> 12) & 7u) && (m_mipCount3e > 1 || minFilter <= 1)) {
                            m_flags38 = (current & 0xffff8fffu) | (minFilter << 12);
                            m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyMinFilter);
                        }
                    }
                } else {
                    m_flags3f = static_cast<uint8_t>(flags | kFlagBound);
                    result = update(true);
                }
            }
            flags = m_flags3f;
        }
    } else {
        if (row[driver->m_common.m_words[kActiveTextureWord]] != this) {
            const uint32_t unit = driver->m_textureUnitCount - 1;
            if (driver->m_common.m_words[kActiveTextureWord] != unit) {
                if (gl().activeTexture) gl().activeTexture(0x84c0 + unit);
                driver->m_common.m_words[kActiveTextureWord] = unit;
            }
            if (this != row[unit]) {
                if (gl().bindTexture) gl().bindTexture(kTextureTypeMap[m_flags38 & 3u], m_glName);
                row[unit] = this;
            }
        }
        if (m_reloading != 0) {
            result = update(true);
        } else {
            result = m_dirtyFlags40 & kUpdatableDirtyMask;
            if (result != 0) result = update(m_reloading != 0);
        }
        flags = m_flags3f;
    }
    if ((flags & kFlagBindFailed) != 0) {
        if (m_glName != 0) {
            unbindImpl();
            m_flags3f = static_cast<uint8_t>(m_flags3f | kFlagBindFailed);
        }
    } else if (release && m_data != nullptr) {
        setData(nullptr, true, (flags & kFlagRangeSizes) != 0);
    }
    return result != 0;
}

// 0x5b28dc _ZN...8CTexture10unbindImplEv
// Takes the texture off every unit that holds it, deletes the GL texture and marks everything dirty again (the sampler bits and
// every (face, level) of the data) so a later bind uploads it all.
void CCommonGLDriver::CTexture::unbindImpl() {
    auto* driver = static_cast<CCommonGLDriver*>(m_driver);
    ITexture** row = driver->m_textureTable[m_flags38 & 3u];
    const uint32_t units = driver->m_textureUnitCount;
    for (uint32_t unit = 0; unit != units; ++unit) {
        if (row[unit] == this) driver->setTexture(unit, nullptr, m_flags38 & 3u);
    }
    if (gl().deleteTextures) gl().deleteTextures(1, &m_glName);
    m_glName = 0;
    const uint8_t oldFlags = m_flags3f;
    m_flags3f = static_cast<uint8_t>(oldFlags & 0xe7u);
    uint16_t dirty = static_cast<uint16_t>((m_dirtyFlags40 & 0xe001u) | 0x1ffcu);
    m_dirtyFlags40 = dirty;
    const uint32_t mipCount = m_mipCount3e;
    uint32_t* bits = reinterpret_cast<uint32_t*>(m_levelSizes + (mipCount + 1));
    const uint32_t faces = (m_flags38 & 3u) == 2 ? 6u : 1u;
    if ((oldFlags & kFlagRangeSizes) == 0) {
        m_dirtyFlags40 = static_cast<uint16_t>(dirty | 1u);
        const uint32_t words = (mipCount * faces + 31u) >> 5;
        for (uint32_t word = 0; word != words; ++word) bits[word] = 0xffffffffu;
    } else {
        m_dirtyFlags40 = static_cast<uint16_t>(dirty | 1u);
        uint32_t bit = 0;
        for (uint32_t face = 0; face < faces; ++face) {
            bits[bit >> 5] |= 1u << (bit & 31u);
            bit += m_mipCount3e;
        }
    }
}

// 0x5b280c _ZN...8CTexture18generateMipmapsImplEv
// Binds the texture on the last unit and has GL build the chain; with nearest/linear minification the filter is switched to
// "nearest mipmap nearest" for the call and restored.
void CCommonGLDriver::CTexture::generateMipmapsImpl() {
    auto* driver = static_cast<CCommonGLDriver*>(m_driver);
    const uint32_t unit = driver->m_textureUnitCount - 1;
    driver->setTexture(unit, this, m_flags38 & 3u);
    if (unit != driver->m_common.m_words[kActiveTextureWord]) {
        if (gl().activeTexture) gl().activeTexture(0x84c0 + unit);
        driver->m_common.m_words[kActiveTextureWord] = unit;
    }
    const uint32_t target = kTextureTypeMap[m_flags38 & 3u];
    if (((m_flags38 >> 12) & 7u) <= 1) {
        if (gl().texParameteri) gl().texParameteri(target, 0x2801, 0x2700);
        if (gl().generateMipmap) gl().generateMipmap(target);
        if (gl().texParameteri) gl().texParameteri(target, 0x2801, static_cast<int32_t>(kTextureFilterMap[(m_flags38 >> 12) & 7u]));
    } else {
        if (gl().generateMipmap) gl().generateMipmap(target);
    }
    if ((m_flags3f & kFlagRangeSizes) == 0) m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyMipmaps);
}

// 0x5b1bd8 _ZN...12CFramebufferC1EPS...RKNS_4core11dimension2dIiEE: the base, then (with framebuffer objects) the current
// GL_FRAMEBUFFER_BINDING is remembered as the screen binding.
CCommonGLDriver::CFramebuffer::CFramebuffer(CCommonGLDriver* driver, const core::dimension2d<int32_t>& size)
    : CFramebufferBase(driver, size) {
    if ((driver->m_capabilities & 0x800u) != 0 && gl().getIntegerv) {
        int32_t binding = 0;
        gl().getIntegerv(0x8ca6, &binding);
        m_screenBinding = static_cast<uint32_t>(binding);
    }
}

// 0x5b1244 _ZN...12CFramebuffer4bindEv
// Binds the screen framebuffer (without framebuffer objects the pending buffers are cleared with the whole mask), restores the
// screen viewport and, if a render target had flipped the winding, restores the winding and re-sets the projection.
void CCommonGLDriver::CFramebuffer::bind() {
    auto* driver = static_cast<CCommonGLDriver*>(m_driver);
    if ((driver->m_capabilities & 0x800u) != 0) {
        if (gl().bindFramebuffer) gl().bindFramebuffer(kGLFramebuffer, m_screenBinding);
    } else {
        driver->clearBuffers(-1);
    }
    driver->setViewportImpl(m_viewport);
    if (driver->m_frontFaceFlip) {
        driver->m_frontFaceFlip = false;
        const core::CMatrix4<float> projection = driver->getTransform(2);
        if (gl().frontFace) gl().frontFace(kFaceWindingMap[driver->m_shadow.m_frontFace]);
        driver->setTransform(2, projection);
    }
}

// 0x5b2ba8 _ZNK...13CRenderTarget17compileAttachmentEiRKNS...SAttachmentE
// Attaches one slot to the bound framebuffer: a render buffer is created if needed and attached, a texture is made current if it
// is dirty and attached with its cube face and level.
void CCommonGLDriver::CRenderTarget::compileAttachment(int32_t point, const SAttachment& attachment) const {
    auto* driver = static_cast<CCommonGLDriver*>(m_driver);
    if (attachment.kind != 0) {
        auto* buffer = static_cast<CRenderBuffer*>(attachment.object);
        buffer->bind();
        if (gl().framebufferRenderbuffer) gl().framebufferRenderbuffer(kGLFramebuffer, static_cast<uint32_t>(point), kGLRenderbuffer, buffer->m_glName);
        return;
    }
    auto* texture = static_cast<CTexture*>(attachment.object);
    if ((texture->m_dirtyFlags40 & kUpdatableDirtyMask) != 0) {
        driver->setTexture(driver->m_textureUnitCount - 1, texture, texture->m_flags38 & 3u);
    }
    const uint32_t type = texture->m_flags38 & 3u;
    const uint32_t textarget = type == 2 ? 0x8515u + attachment.flagA : kTextureTypeMap[type];
    if (gl().framebufferTexture2D) gl().framebufferTexture2D(kGLFramebuffer, static_cast<uint32_t>(point), textarget, texture->m_glName, attachment.flagB);
}

// 0x5b2c8c _ZN...13CRenderTarget4bindEv
// Sets the viewport. With framebuffer objects the GL framebuffer is (re)built when the target changed or any attachment is
// missing its GL object (colour slots must all be present and ready; depth and stencil only when present): colour attachments
// 0..n, depth, stencil, then the completeness status is logged if it is not complete. The framebuffer is bound, and the winding
// is flipped (upside-down render) if that has not been done.
void CCommonGLDriver::CRenderTarget::bind() {
    auto* driver = static_cast<CCommonGLDriver*>(m_driver);
    driver->setViewportImpl(m_viewport);
    if ((driver->m_capabilities & 0x800u) != 0) {
        bool dirty = false;
        for (uint32_t i = 0; i < m_targetCount; ++i) {
            const SAttachment& slot = m_slots[i];
            if (slot.object == nullptr) {
                dirty = true;
            } else if (slot.kind != 0) {
                if (static_cast<const CRenderBuffer*>(slot.object)->m_glName == 0) dirty = true;
            } else if ((static_cast<const ITexture*>(slot.object)->m_flags3f & ITexture::kFlagBound) == 0) {
                dirty = true;
            }
        }
        for (const SAttachment* single : {&m_attachment0, &m_attachment1}) {
            if (single->object == nullptr) continue;
            if (single->kind != 0) {
                if (static_cast<const CRenderBuffer*>(single->object)->m_glName == 0) dirty = true;
            } else if ((static_cast<const ITexture*>(single->object)->m_flags3f & ITexture::kFlagBound) == 0) {
                dirty = true;
            }
        }
        if (m_flag5a != 0 || dirty) {
            if (m_glName == 0 && gl().genFramebuffers) gl().genFramebuffers(1, &m_glName);
            if (gl().bindFramebuffer) gl().bindFramebuffer(kGLFramebuffer, m_glName);
            for (uint32_t i = 0; i < m_targetCount; ++i) compileAttachment(static_cast<int32_t>(0x8ce0 + i), m_slots[i]);
            if (m_attachment0.object != nullptr) compileAttachment(0x8d00, m_attachment0);
            if (m_attachment1.object != nullptr) compileAttachment(0x8d20, m_attachment1);
            const char* message = nullptr;
            switch (gl().checkFramebufferStatus ? gl().checkFramebufferStatus(kGLFramebuffer) : 0x8cd5u) {
                case 0x8cd6: message = "Some attachments are incomplete"; break;
                case 0x8cd7: message = "Some attachments are missing"; break;
                case 0x8cd9: message = "Dimensions are not the same"; break;
                case 0x8cda: message = "Some attachments formats are not legal"; break;
                case 0x8cdb: message = "Draw buffer is not set"; break;
                case 0x8cdc: message = "Read buffer is not set"; break;
                case 0x8cdd: message = "Framebuffer objects are not supported"; break;
                default: break;
            }
            if (message != nullptr) glitch::os::Printer::log(message, glitch::os::ELL_ERROR);
            m_flag5a = 0;
        }
        if (gl().bindFramebuffer) gl().bindFramebuffer(kGLFramebuffer, m_glName);
    }
    if (!driver->m_frontFaceFlip) {
        driver->m_frontFaceFlip = true;
        if (gl().frontFace) gl().frontFace(kFaceWindingMap[1 - driver->m_shadow.m_frontFace]);
        const core::CMatrix4<float> projection = driver->getTransform(2);
        driver->setTransform(2, projection);
    }
}

// 0x5b2ac0 _ZN...13CRenderTarget6unbindEv
// Without framebuffer objects the frame is rendered to the screen: the first texture attachment receives a copy of the
// framebuffer (glCopyTexSubImage2D on the last texture unit).
void CCommonGLDriver::CRenderTarget::unbind() {
    auto* driver = static_cast<CCommonGLDriver*>(m_driver);
    if ((driver->m_capabilities & 0x800u) != 0 || m_targetCount == 0) return;
    int32_t found = -1;
    for (uint32_t i = 0; i < m_targetCount; ++i) {
        if (m_slots[i].kind == 0) {
            found = static_cast<int32_t>(i);
            break;
        }
    }
    if (found < 0) return;
    auto* texture = static_cast<CTexture*>(m_slots[found].object);
    if (texture == nullptr) return;
    const uint32_t unit = driver->m_textureUnitCount - 1;
    driver->setTexture(unit, texture, texture->m_flags38 & 3u);
    if (unit != driver->m_common.m_words[kActiveTextureWord]) {
        if (gl().activeTexture) gl().activeTexture(0x84c0 + unit);
        driver->m_common.m_words[kActiveTextureWord] = unit;
    }
    if (gl().copyTexSubImage2D) gl().copyTexSubImage2D(0x0de1, 0, 0, 0, 0, 0, static_cast<int32_t>(texture->m_width), static_cast<int32_t>(texture->m_height));
}

// 0x5b11ec _ZN...13CRenderBuffer4bindEv: creates the GL render buffer and its storage (the format's render-buffer internal format
// from the driver's table) once.
void CCommonGLDriver::CRenderBuffer::bind() {
    if (m_glName != 0) return;
    if (gl().genRenderbuffers) gl().genRenderbuffers(1, &m_glName);
    if (gl().bindRenderbuffer) gl().bindRenderbuffer(kGLRenderbuffer, m_glName);
    if (gl().renderbufferStorage) gl().renderbufferStorage(kGLRenderbuffer, m_driver->m_formatTable[m_format].m_unk10, m_width, m_height);
}


// 0x5b3afc _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE17genericDriverInitERKNS_4core11dimension2dIiEEb
// The common GL driver set-up. The GL version string gives the version number (100 x major + minor, at +0x4a4); the extension string
// fills the extension bit words (initExtensions, words +0x7b8..); the texture unit count, the capability word (+0x9c), the
// pixel-format capability table (39 rows of 20 bytes at +0x4ac: render-target format, GL internal format, format, type and
// render-buffer format, picked from the extensions that are present) and the colour attachment limit follow. The driver
// description is logged, IVideoDriver::init runs, the screen framebuffer is created and pushed, the derived driver's driverInit runs,
// the buffer bindings are cleared, the shadow state is restored and the colour buffer cleared. Returns whether driverInit succeeded.
// The pixel-format table body below is the decompiled control flow kept as it is: the variables are the registers' values, the
// extension words are named by the extension each tested bit stands for. The bool argument is unused.
bool CCommonGLDriver::genericDriverInit(const core::dimension2d<int32_t>& screenSize, bool) {
    const uint8_t* versionText = gl().getString ? gl().getString(0x1f02) : nullptr;
    const char* digits = reinterpret_cast<const char*>(versionText);
    if (digits != nullptr) {
        while (*digits != '\0' && !std::isdigit(static_cast<unsigned char>(*digits))) ++digits;
    }
    int32_t v121 = 0;
    int32_t v122 = 0;
    int32_t v5 = 0;
    if (digits != nullptr) {
        const int matched = std::sscanf(digits, "%u.%u", reinterpret_cast<unsigned*>(&v122), reinterpret_cast<unsigned*>(&v121));
        v5 = v122;
        if (matched > 0) {
            v5 = 100 * v122;
            v122 *= 100;
        }
    }
    const uint32_t v6 = static_cast<uint32_t>(v5 + v121);
    m_glVersion = v6;  // +0x4a4
    if (v6 <= 0x64) {
        glitch::os::Printer::log("    Warning: OpenGL|ES driver version is not 1.1 or better.", glitch::os::ELL_WARNING);
    } else {
        glitch::os::Printer::log("    OpenGL|ES driver version is 1.1 or better.", glitch::os::ELL_INFORMATION);
    }
    initExtensions(gl().getString ? gl().getString(0x1f03) : nullptr);
    if ((m_unk7b8[6] & 0x20) != 0 && gl().getFloatv) gl().getFloatv(0x84ff, &m_maxAnisotropy);
    uint32_t v120 = 0;
    int32_t v119 = 0;
    uint32_t v8 = 0;
    int32_t v9 = 0;
    int32_t v10 = 0;
    int32_t v11 = 0;
    int32_t v12 = 0;
    int32_t v13 = 0;
    int32_t v14 = 0;
    int32_t v15 = 0;
    int32_t v16 = 0;
    int32_t v17 = 0;
    int32_t v18 = 0;
    int16_t v19 = 0;
    int16_t v20 = 0;
    int16_t v21 = 0;
    int16_t v22 = 0;
    int32_t v23 = 0;
    int16_t v24 = 0;
    int16_t v25 = 0;
    int32_t v26 = 0;
    int16_t v27 = 0;
    int32_t v28 = 0;
    int32_t v29 = 0;
    int32_t v30 = 0;
    int16_t v31 = 0;
    int32_t v32 = 0;
    int16_t v33 = 0;
    int16_t v34 = 0;
    bool v35 = 0;
    int32_t v36 = 0;
    int32_t v37 = 0;
    int32_t v38 = 0;
    int16_t v39 = 0;
    int16_t v40 = 0;
    int32_t v41 = 0;
    int16_t v42 = 0;
    int16_t v43 = 0;
    int32_t v44 = 0;
    int32_t v45 = 0;
    int32_t v46 = 0;
    int32_t v47 = 0;
    int32_t v48 = 0;
    int16_t v49 = 0;
    int16_t v50 = 0;
    int16_t v51 = 0;
    int32_t v52 = 0;
    int16_t v53 = 0;
    int32_t v54 = 0;
    int32_t v55 = 0;
    int32_t v56 = 0;
    int16_t v57 = 0;
    int16_t v58 = 0;
    bool v59 = 0;
    int32_t v60 = 0;
    int32_t v61 = 0;
    int32_t v62 = 0;
    int16_t v63 = 0;
    int16_t v64 = 0;
    bool v65 = 0;
    int32_t v66 = 0;
    int32_t v67 = 0;
    int16_t v68 = 0;
    int32_t v69 = 0;
    int16_t v70 = 0;
    int32_t v71 = 0;
    int32_t v72 = 0;
    int32_t v73 = 0;
    int16_t v74 = 0;
    int32_t v75 = 0;
    int32_t v76 = 0;
    int32_t v77 = 0;
    int32_t v78 = 0;
    int16_t v79 = 0;
    int32_t v80 = 0;
    int32_t v81 = 0;
    int32_t v82 = 0;
    int32_t v83 = 0;
    int16_t v84 = 0;
    int16_t v85 = 0;
    bool v86 = 0;
    int16_t v87 = 0;
    int16_t v88 = 0;
    int16_t v117 = 0;
  v120 = 0;
  if (gl().getIntegerv) gl().getIntegerv(0x8872, reinterpret_cast<int32_t*>(&v120));
  v8 = v120;
  v9 = m_capabilities;
  if ( v120 >= 8 )
    v8 = 8;
  v10 = v9 | 1;
  m_capabilities = v9 | 1;
  if ( v8 > 1 )
  {
    v10 = v9 | 3;
    m_capabilities = v9 | 3;
  }
  m_textureUnitCount = v8;
  v119 = 0;
  m_capabilities = v10 | 0x804;
  if (gl().getIntegerv) gl().getIntegerv(0xd57, &v119);
  v11 = m_unk7b8[0];
  v12 = m_capabilities | 0x18;
  m_capabilities = v12;
  if ( (v11 & 0x4000000) /* GL_ARB_texture_non_power_of_two */ != 0 )
  {
    v13 = m_unk7b8[12];
    v14 = m_unk7b8[13];
  }
  else
  {
    v13 = m_unk7b8[12];
    if ( (v13 & 0x20000) /* GL_OES_texture_npot */ != 0 )
    {
      v14 = m_unk7b8[13];
    }
    else
    {
      v14 = m_unk7b8[13];
      if ( (v14 & 8) == 0 )
        goto LABEL_16;
    }
  }
  v12 |= 0x20u;
  m_capabilities = v12;
LABEL_16:
  if ( (m_unk7b8[2] & 0x800000) /* GL_EXT_texture3D */ != 0 || (v13 & 0x1000) /* GL_OES_texture_3D */ != 0 )
  {
    v15 = v12 | 0x80;
    m_capabilities = v15;
  }
  else
  {
    v15 = m_capabilities;
  }
  v16 = v15 | 0x100;
  m_capabilities = v16;
  if ( (v11 & 0x40000000) /* GL_ARB_texture_rectangle */ != 0 || (m_unk7b8[7] & 0x80) /* GL_NV_texture_rectangle */ != 0 )
  {
    v16 |= 0x200u;
    m_capabilities = v16;
  }
  v17 = m_unk7b8[6];
  v18 = v16 | 0x1000;
  m_capabilities = v16 | 0x1000;
  if ( (v17 & 0x20) /* GL_EXT_texture_filter_anisotropic */ != 0 )
  {
    v18 = v16 | 0x21000;
    m_capabilities = v16 | 0x21000;
  }
  m_capabilities = v18 | 0x12C0000;
  m_maxColorAttachments = 1;
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 || (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
    v19 = 14;
  else
    v19 = 5;
  m_formatTable[0].m_unk02 = v19;
  m_formatTable[0].m_unk00 = 0;
  m_formatTable[0].m_format = 6409;
  m_formatTable[0].m_type = 5121;
  m_formatTable[0].m_unk10 = 0;
  m_formatTable[0].m_internalFormat = 6409;
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 || (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
    v20 = 14;
  else
    v20 = 5;
  m_formatTable[1].m_unk02 = v20;
  m_formatTable[1].m_unk00 = 0;
  m_formatTable[2].m_unk00 = 2;
  m_formatTable[2].m_unk02 = 14;
  m_formatTable[2].m_format = 6406;
  m_formatTable[2].m_type = 5121;
  m_formatTable[2].m_unk10 = 0;
  m_formatTable[1].m_internalFormat = 0;
  m_formatTable[1].m_format = 0;
  m_formatTable[1].m_type = 0;
  m_formatTable[1].m_unk10 = 0;
  m_formatTable[2].m_internalFormat = 6406;
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 || (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
    v21 = 14;
  else
    v21 = 7;
  m_formatTable[3].m_unk02 = v21;
  m_formatTable[3].m_unk00 = 4;
  m_formatTable[3].m_type = -1;
  m_formatTable[3].m_unk10 = 0;
  m_formatTable[3].m_internalFormat = -1;
  m_formatTable[3].m_format = -1;
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 || (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
    v22 = 14;
  else
    v22 = 7;
  m_formatTable[4].m_unk02 = v22;
  m_formatTable[4].m_unk00 = 4;
  m_formatTable[4].m_format = 6410;
  m_formatTable[5].m_unk00 = 5;
  m_formatTable[5].m_unk02 = 5;
  m_formatTable[5].m_type = 33635;
  m_formatTable[5].m_unk10 = 36194;
  m_formatTable[6].m_unk00 = 7;
  m_formatTable[6].m_unk02 = 7;
  m_formatTable[7].m_unk00 = 7;
  m_formatTable[7].m_unk02 = 7;
  m_formatTable[7].m_type = 32819;
  m_formatTable[7].m_unk10 = 32854;
  m_formatTable[8].m_unk00 = 9;
  m_formatTable[8].m_unk02 = 9;
  m_formatTable[8].m_unk10 = 0;
  m_formatTable[9].m_unk00 = 9;
  m_formatTable[9].m_unk02 = 9;
  m_formatTable[4].m_unk10 = 0;
  m_formatTable[6].m_internalFormat = 0;
  m_formatTable[6].m_format = 0;
  m_formatTable[6].m_type = 0;
  m_formatTable[6].m_unk10 = 0;
  m_formatTable[8].m_internalFormat = 0;
  m_formatTable[8].m_format = 0;
  m_formatTable[8].m_type = 0;
  m_formatTable[4].m_internalFormat = 6410;
  m_formatTable[4].m_type = 5121;
  m_formatTable[5].m_internalFormat = 6407;
  m_formatTable[5].m_format = 6407;
  m_formatTable[7].m_internalFormat = 6408;
  m_formatTable[7].m_format = 6408;
  m_formatTable[9].m_internalFormat = 6408;
  v23 = v13 & 0x100;
  m_formatTable[9].m_format = 6408;
  m_formatTable[9].m_type = 32820;
  m_formatTable[9].m_unk10 = 32855;
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 )
  {
    m_formatTable[10].m_unk00 = 10;
    m_formatTable[10].m_unk02 = 10;
    m_formatTable[10].m_format = 6407;
    m_formatTable[10].m_type = 5121;
    m_formatTable[10].m_unk10 = 32849;
    m_formatTable[10].m_internalFormat = 6407;
  }
  else
  {
    if ( (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
      v24 = 14;
    else
      v24 = 5;
    m_formatTable[10].m_unk02 = v24;
    m_formatTable[10].m_unk00 = 10;
    m_formatTable[10].m_format = 6407;
    m_formatTable[10].m_type = 5121;
    m_formatTable[10].m_unk10 = v23;
    m_formatTable[10].m_internalFormat = 6407;
  }
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 )
  {
    v25 = 10;
  }
  else if ( (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
  {
    v25 = 14;
  }
  else
  {
    v25 = 5;
  }
  m_formatTable[11].m_unk02 = v25;
  m_formatTable[11].m_unk00 = 10;
  m_formatTable[12].m_unk00 = 14;
  m_formatTable[12].m_unk02 = 14;
  if ( (v13 & 0x10000000) /* GL_EXT_texture_format_BGRA8888 */ != 0 )
    v25 = 13;
  m_formatTable[12].m_unk10 = 0;
  m_formatTable[11].m_internalFormat = 0;
  m_formatTable[11].m_format = 0;
  m_formatTable[11].m_type = 0;
  m_formatTable[11].m_unk10 = 0;
  m_formatTable[12].m_internalFormat = 0;
  m_formatTable[12].m_format = 0;
  m_formatTable[12].m_type = 0;
  if ( (v13 & 0x10000000) /* GL_EXT_texture_format_BGRA8888 */ != 0 )
  {
    v26 = 1;
  }
  else
  {
    v26 = v14 & 0x440000;
    if ( (v14 & 0x440000) != 0 )
    {
      v26 = 1;
      v25 = 13;
    }
    else
    {
      v25 = 14;
    }
  }
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 || (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
  {
    v27 = 14;
    if ( (v14 & 0x40000) /* GL_APPLE_texture_format_BGRA8888 */ == 0 )
    {
LABEL_60:
      if ( v26 )
      {
        v28 = 32993;
LABEL_63:
        v29 = 32993;
        v30 = 5121;
        goto LABEL_64;
      }
      v28 = 0;
      goto LABEL_280;
    }
  }
  else
  {
    v27 = 6;
    if ( (v14 & 0x40000) /* GL_APPLE_texture_format_BGRA8888 */ == 0 )
      goto LABEL_60;
  }
  if ( v26 )
  {
    v28 = 6408;
    goto LABEL_63;
  }
  v28 = 6408;
LABEL_280:
  v29 = 0;
  v30 = 0;
LABEL_64:
  m_formatTable[13].m_unk00 = v25;
  m_formatTable[13].m_unk02 = v27;
  m_formatTable[13].m_format = v29;
  m_formatTable[13].m_internalFormat = v28;
  m_formatTable[13].m_type = v30;
  m_formatTable[13].m_unk10 = 0;
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 || (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
  {
    m_formatTable[14].m_unk00 = 14;
    m_formatTable[14].m_unk02 = 14;
    m_formatTable[14].m_type = 5121;
    m_formatTable[14].m_format = 6408;
    m_formatTable[14].m_unk10 = 32856;
    m_formatTable[14].m_internalFormat = 6408;
  }
  else
  {
    m_formatTable[14].m_unk00 = 14;
    m_formatTable[14].m_unk02 = 7;
    m_formatTable[14].m_format = 6408;
    m_formatTable[14].m_type = 5121;
    m_formatTable[14].m_unk10 = 0;
    m_formatTable[14].m_internalFormat = 6408;
  }
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 || (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
    v31 = 14;
  else
    v31 = 7;
  v32 = v13 & 0x200000;
  m_formatTable[15].m_unk02 = v31;
  if ( (v13 & 0x200000) /* GL_EXT_texture_type_2_10_10_10_REV */ != 0 )
    v33 = 16;
  else
    v33 = 14;
  m_formatTable[15].m_unk00 = 14;
  m_formatTable[15].m_unk10 = 0;
  m_formatTable[15].m_internalFormat = 0;
  m_formatTable[15].m_format = 0;
  m_formatTable[15].m_type = 0;
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 || (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
    v34 = 14;
  else
    v34 = 9;
  v35 = v32 == 0;
  v36 = m_unk7b8[9];
  m_formatTable[16].m_unk00 = v33;
  if ( v32 )
    v37 = 6408;
  else
    v37 = 0;
  m_formatTable[16].m_unk02 = v34;
  if ( !v32 )
    v32 = v37;
  m_formatTable[16].m_internalFormat = v37;
  if ( !v35 )
    v32 = 33640;
  m_formatTable[16].m_format = 6408;
  m_formatTable[16].m_type = v32;
  m_formatTable[16].m_unk10 = 0;
  if ( (v36 & 2) != 0 || (v38 = v17 & 0x10000, (v17 & 0x10000) /* GL_EXT_texture_compression_s3tc */ != 0) )
  {
    v39 = 17;
    v38 = 33776;
  }
  else
  {
    v39 = 5;
  }
  m_formatTable[17].m_unk00 = v39;
  v40 = 5;
  m_formatTable[17].m_unk02 = 5;
  m_formatTable[17].m_internalFormat = v38;
  m_formatTable[17].m_unk10 = 0;
  m_formatTable[17].m_format = 0;
  m_formatTable[17].m_type = 0;
  if ( (v36 & 2) != 0 || (v41 = v17 & 0x10000) != 0 )
  {
    v42 = 18;
    v41 = 33777;
  }
  else
  {
    v42 = 9;
  }
  m_formatTable[18].m_unk00 = v42;
  v43 = 9;
  m_formatTable[18].m_unk02 = 9;
  m_formatTable[18].m_internalFormat = v41;
  m_formatTable[18].m_unk10 = 0;
  m_formatTable[18].m_format = 0;
  m_formatTable[18].m_type = 0;
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 || (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
    v117 = 14;
  else
    v117 = 7;
  v44 = 34798;
  if ( (v13 & 0x100000) /* GL_AMD_compressed_ATC_texture */ == 0 )
    v44 = 0;
  m_formatTable[23].m_internalFormat = v44;
  v45 = v13 & 0x40000000;
  v46 = 35986;
  v47 = 35987;
  if ( (v13 & 0x100000) /* GL_AMD_compressed_ATC_texture */ != 0 )
  {
    v23 = static_cast<int32_t>((static_cast<uint32_t>(v23) & 0xffff0000u) | 21);
  }
  else
  {
    v46 = v13 & 0x100000;
    v47 = v13 & 0x100000;
  }
  if ( (v13 & 0x100000) /* GL_AMD_compressed_ATC_texture */ != 0 )
    v43 = 22;
  else
    v23 = static_cast<int32_t>((static_cast<uint32_t>(v23) & 0xffff0000u) | 14);
  if ( (v13 & 0x100000) /* GL_AMD_compressed_ATC_texture */ != 0 )
    v40 = 23;
  else
    v43 = 14;
  if ( (v13 & 0x100000) /* GL_AMD_compressed_ATC_texture */ == 0 )
    v40 = 14;
  v48 = 35841;
  if ( !v45 )
    v48 = 0;
  m_formatTable[24].m_internalFormat = v48;
  m_formatTable[22].m_internalFormat = v47;
  if ( v45 )
    v49 = 24;
  else
    v49 = 14;
  m_formatTable[19].m_unk02 = v117;
  m_formatTable[21].m_unk00 = v23;
  m_formatTable[22].m_unk00 = v43;
  m_formatTable[23].m_unk00 = v40;
  m_formatTable[24].m_unk00 = v49;
  m_formatTable[19].m_unk00 = 14;
  m_formatTable[20].m_unk00 = 20;
  m_formatTable[20].m_unk02 = 12;
  m_formatTable[20].m_internalFormat = 33779;
  m_formatTable[21].m_unk02 = 14;
  m_formatTable[21].m_internalFormat = v46;
  m_formatTable[22].m_unk02 = 14;
  if ( v45 )
    v50 = 25;
  else
    v50 = 14;
  m_formatTable[23].m_unk02 = 14;
  m_formatTable[24].m_unk02 = 5;
  if ( v45 )
    v51 = 26;
  else
    v51 = 14;
  m_formatTable[19].m_internalFormat = 0;
  m_formatTable[19].m_format = 0;
  m_formatTable[19].m_type = 0;
  m_formatTable[19].m_unk10 = 0;
  m_formatTable[20].m_format = 0;
  m_formatTable[20].m_type = 0;
  m_formatTable[20].m_unk10 = 0;
  m_formatTable[21].m_format = 0;
  m_formatTable[21].m_type = 0;
  m_formatTable[21].m_unk10 = 0;
  m_formatTable[22].m_format = 0;
  m_formatTable[22].m_type = 0;
  m_formatTable[22].m_unk10 = 0;
  m_formatTable[23].m_format = 0;
  m_formatTable[23].m_type = 0;
  m_formatTable[23].m_unk10 = 0;
  v52 = m_unk7b8[1];
  m_formatTable[24].m_format = 0;
  m_formatTable[25].m_unk00 = v50;
  m_formatTable[26].m_unk00 = v51;
  if ( v45 )
    v53 = 27;
  else
    v53 = 14;
  v54 = 35843;
  m_formatTable[27].m_unk00 = v53;
  if ( !v45 )
    v54 = v13 & 0x40000000;
  v55 = 35842;
  m_formatTable[25].m_unk02 = 7;
  if ( !v45 )
    v55 = v13 & 0x40000000;
  m_formatTable[25].m_internalFormat = v54;
  if ( v45 )
    v45 = 35840;
  m_formatTable[26].m_unk02 = 5;
  m_formatTable[26].m_internalFormat = v45;
  m_formatTable[27].m_unk02 = 7;
  m_formatTable[27].m_internalFormat = v55;
  m_formatTable[27].m_unk10 = 0;
  m_formatTable[24].m_type = 0;
  m_formatTable[24].m_unk10 = 0;
  m_formatTable[25].m_format = 0;
  m_formatTable[25].m_type = 0;
  m_formatTable[25].m_unk10 = 0;
  m_formatTable[26].m_format = 0;
  m_formatTable[26].m_type = 0;
  m_formatTable[26].m_unk10 = 0;
  m_formatTable[27].m_format = 0;
  m_formatTable[27].m_type = 0;
  if ( (v52 & 2) != 0 && ((v52 & 1) != 0 || (m_unk7b8[8] & 0x8000) /* GL_NV_half_float */ != 0) )
  {
    v57 = 28;
    v56 = v13 & 0x10000;
  }
  else
  {
    v56 = v13 & 0x10000;
    if ( (v13 & 0x10000) /* GL_OES_texture_half_float */ != 0 )
    {
      v57 = 28;
    }
    else if ( (v13 & 0x8000) /* GL_OES_texture_float */ != 0 )
    {
      v57 = 30;
    }
    else
    {
      v57 = 14;
    }
  }
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 )
  {
    v58 = 10;
  }
  else if ( (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
  {
    v58 = 14;
  }
  else
  {
    v58 = 5;
  }
  v59 = v56 == 0;
  m_formatTable[28].m_unk00 = v57;
  if ( v56 )
    v56 = 6407;
  m_formatTable[28].m_unk02 = v58;
  if ( v59 )
  {
    v60 = v56;
    v61 = v56;
  }
  else
  {
    v60 = 34843;
    v61 = 36193;
  }
  m_formatTable[28].m_format = v56;
  m_formatTable[28].m_internalFormat = v60;
  m_formatTable[28].m_type = v61;
  m_formatTable[28].m_unk10 = 0;
  if ( (v52 & 2) != 0 && ((v52 & 1) != 0 || (m_unk7b8[8] & 0x8000) /* GL_NV_half_float */ != 0) )
  {
    v63 = 29;
    v62 = v13 & 0x10000;
  }
  else
  {
    v62 = v13 & 0x10000;
    if ( (v13 & 0x10000) /* GL_OES_texture_half_float */ != 0 )
    {
      v63 = 29;
    }
    else if ( (v13 & 0x8000) /* GL_OES_texture_float */ != 0 )
    {
      v63 = 31;
    }
    else
    {
      v63 = 14;
    }
  }
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 )
  {
    v64 = 10;
  }
  else if ( (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
  {
    v64 = 14;
  }
  else
  {
    v64 = 7;
  }
  v65 = v62 == 0;
  m_formatTable[29].m_unk00 = v63;
  if ( v62 )
    v62 = 6408;
  m_formatTable[29].m_unk02 = v64;
  if ( v65 )
  {
    v66 = v62;
    v67 = v62;
  }
  else
  {
    v66 = 34842;
    v67 = 36193;
  }
  m_formatTable[29].m_format = v62;
  m_formatTable[29].m_unk10 = 0;
  m_formatTable[29].m_internalFormat = v66;
  m_formatTable[29].m_type = v67;
  if ( (v52 & 2) != 0 )
  {
    v68 = 31;
    v69 = v13 & 0x8000;
  }
  else
  {
    v69 = v13 & 0x8000;
    if ( (v13 & 0x8000) /* GL_OES_texture_float */ != 0 )
    {
      v68 = 31;
    }
    else if ( (v13 & 0x10000) /* GL_OES_texture_half_float */ != 0 )
    {
      v68 = 29;
    }
    else
    {
      v68 = 14;
    }
  }
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 )
  {
    v70 = 10;
  }
  else if ( (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
  {
    v70 = 14;
  }
  else
  {
    v70 = 5;
  }
  v71 = 34837;
  if ( !v69 )
    v71 = 0;
  if ( (v52 & 2) != 0 || v69 )
  {
    v69 = 6407;
    v72 = 5126;
  }
  else
  {
    v72 = 0;
  }
  m_formatTable[30].m_unk00 = v68;
  m_formatTable[30].m_unk02 = v70;
  v73 = v52 & 2;
  m_formatTable[30].m_format = v69;
  m_formatTable[30].m_internalFormat = v71;
  m_formatTable[30].m_type = v72;
  m_formatTable[30].m_unk10 = 0;
  if ( v73 || (v13 & 0x8000) /* GL_OES_texture_float */ != 0 )
  {
    v74 = 31;
  }
  else if ( (v13 & 0x10000) /* GL_OES_texture_half_float */ != 0 )
  {
    v74 = 29;
  }
  else
  {
    v74 = 14;
  }
  if ( (v13 & 0x100) /* GL_OES_rgb8_rgba8 */ != 0 || (v14 & 0x200000) /* GL_ARM_rgba8 */ != 0 )
    v75 = 14;
  else
    v75 = 7;
  if ( v73 || (v13 & 0x8000) /* GL_OES_texture_float */ != 0 )
  {
    v73 = 6408;
    v76 = 34836;
    v77 = 5126;
  }
  else
  {
    v76 = 0;
    v77 = 0;
  }
  m_formatTable[31].m_unk00 = v74;
  v78 = v13 & 0x400000;
  m_formatTable[31].m_unk02 = v75;
  if ( (v13 & 0x400000) /* GL_OES_depth_texture */ != 0 )
    v78 = 6402;
  m_formatTable[31].m_internalFormat = v76;
  if ( (v13 & 0x400000) /* GL_OES_depth_texture */ != 0 )
    v79 = 32;
  else
    v79 = 39;
  m_formatTable[31].m_format = v73;
  m_formatTable[31].m_type = v77;
  m_formatTable[31].m_unk10 = 0;
  if ( (v13 & 0x400000) /* GL_OES_depth_texture */ == 0 )
    v75 = v78;
  m_formatTable[32].m_unk00 = v79;
  if ( (v13 & 0x400000) /* GL_OES_depth_texture */ != 0 )
  {
    v75 = v78;
    v80 = 5123;
  }
  else
  {
    v80 = v78;
  }
  m_formatTable[32].m_unk02 = 32;
  if ( (v13 & 0x400000) /* GL_OES_depth_texture */ != 0 )
    v81 = 32;
  else
    v81 = 39;
  m_formatTable[32].m_format = v78;
  v82 = v13 & 4;
  m_formatTable[32].m_internalFormat = v75;
  m_formatTable[32].m_type = v80;
  m_formatTable[32].m_unk10 = 33189;
  m_formatTable[33].m_unk00 = v81;
  if ( (v13 & 4) != 0 )
  {
    v80 = 33;
    m_formatTable[33].m_unk02 = 33;
    m_formatTable[33].m_type = 0;
    m_formatTable[33].m_unk10 = 33190;
    m_formatTable[33].m_internalFormat = 0;
    m_formatTable[33].m_format = 0;
  }
  else
  {
    m_formatTable[33].m_unk02 = 32;
    m_formatTable[33].m_unk10 = v82;
    m_formatTable[33].m_internalFormat = v82;
    m_formatTable[33].m_format = v82;
    m_formatTable[33].m_type = v82;
  }
  v83 = v13 & 0x400000;
  if ( (v13 & 0x400000) /* GL_OES_depth_texture */ != 0 )
    v84 = 34;
  else
    v84 = 39;
  if ( (v13 & 8) != 0 )
  {
    v85 = 34;
  }
  else if ( (v13 & 4) != 0 )
  {
    v85 = 33;
  }
  else
  {
    v85 = 32;
  }
  v86 = v83 == 0;
  if ( v83 )
  {
    v83 = 6402;
  }
  else
  {
    v80 = 0;
    v81 = 0;
  }
  if ( !v86 )
  {
    v80 = v83;
    v81 = 5125;
  }
  m_formatTable[34].m_unk00 = v84;
  m_formatTable[34].m_unk02 = v85;
  if ( (v13 & 8) != 0 )
  {
    m_formatTable[34].m_format = v83;
    m_formatTable[34].m_internalFormat = v80;
    m_formatTable[34].m_type = v81;
    m_formatTable[34].m_unk10 = 33191;
  }
  else
  {
    m_formatTable[34].m_internalFormat = v80;
    m_formatTable[34].m_format = v83;
    m_formatTable[34].m_type = v81;
    m_formatTable[34].m_unk10 = 0;
  }
  if ( (v36 & 0x10) /* GL_EXT_packed_depth_stencil */ != 0 || (m_unk7b8[7] & 0x10) /* GL_NV_packed_depth_stencil */ != 0 || (v13 & 0x800000) /* GL_OES_packed_depth_stencil */ != 0 )
  {
    m_formatTable[35].m_unk00 = 39;
    m_formatTable[35].m_unk02 = 35;
    m_formatTable[35].m_type = 0;
    m_formatTable[35].m_unk10 = 35056;
    m_formatTable[35].m_internalFormat = 0;
    m_formatTable[35].m_format = 0;
  }
  else
  {
    m_formatTable[35].m_unk00 = 39;
    m_formatTable[35].m_unk02 = 39;
    m_formatTable[35].m_unk10 = 0;
    m_formatTable[35].m_internalFormat = 0;
    m_formatTable[35].m_format = 0;
    m_formatTable[35].m_type = 0;
  }
  if ( (v13 & 0x200) /* GL_OES_stencil1 */ != 0 )
  {
    m_formatTable[36].m_unk00 = 39;
    m_formatTable[36].m_unk02 = 36;
    m_formatTable[36].m_type = 0;
    m_formatTable[36].m_unk10 = 36166;
    m_formatTable[36].m_internalFormat = 0;
    m_formatTable[36].m_format = 0;
  }
  else
  {
    if ( (v13 & 0x400) /* GL_OES_stencil4 */ != 0 )
    {
      v87 = 37;
    }
    else if ( (v13 & 0x800) /* GL_OES_stencil8 */ != 0 )
    {
      v87 = 38;
    }
    else
    {
      v87 = 39;
    }
    m_formatTable[36].m_unk02 = v87;
    m_formatTable[36].m_unk00 = 39;
    m_formatTable[36].m_unk10 = 0;
    m_formatTable[36].m_internalFormat = 0;
    m_formatTable[36].m_format = 0;
    m_formatTable[36].m_type = 0;
  }
  if ( (v13 & 0x400) /* GL_OES_stencil4 */ != 0 )
  {
    m_formatTable[37].m_unk00 = 39;
    m_formatTable[37].m_unk02 = 37;
    m_formatTable[37].m_type = 0;
    m_formatTable[37].m_unk10 = 36167;
    m_formatTable[37].m_internalFormat = 0;
    m_formatTable[37].m_format = 0;
  }
  else
  {
    if ( (v13 & 0x800) /* GL_OES_stencil8 */ != 0 )
    {
      v88 = 38;
    }
    else if ( (v13 & 0x200) /* GL_OES_stencil1 */ != 0 )
    {
      v88 = 36;
    }
    else
    {
      v88 = 39;
    }
    m_formatTable[37].m_unk02 = v88;
    m_formatTable[37].m_unk00 = 39;
    m_formatTable[37].m_unk10 = 0;
    m_formatTable[37].m_internalFormat = 0;
    m_formatTable[37].m_format = 0;
    m_formatTable[37].m_type = 0;
  }
  m_formatTable[38].m_unk00 = 39;
  m_formatTable[38].m_unk02 = 38;
  m_formatTable[38].m_type = 0;
  m_formatTable[38].m_internalFormat = 0;
  m_formatTable[38].m_format = 0;
  m_formatTable[38].m_unk10 = 36168;
  // Port addition (remaster, not in the binary): the ETC2 rows. ETC2/EAC is core in OpenGL ES 3.0 (the Fold reports 3.2; ANGLE
  // decodes it itself on Direct3D), so a 3.x context or an ETC2 extension makes them usable as they are; otherwise 39 (not usable:
  // the remaster layer then keeps the original textures). Compressed formats are not render targets (+2 = 39).
  {
      const char* version = reinterpret_cast<const char*>(gl().getString ? gl().getString(0x1f02) : nullptr);
      const char* extensions = reinterpret_cast<const char*>(gl().getString ? gl().getString(0x1f03) : nullptr);
      const bool etc2 = (version != nullptr && std::strstr(version, "OpenGL ES 3") != nullptr) ||
                        (extensions != nullptr && (std::strstr(extensions, "GL_OES_compressed_ETC2_RGB8_texture") != nullptr ||
                                                   std::strstr(extensions, "GL_ANGLE_compressed_texture_etc") != nullptr));
      const uint32_t formats[2] = {0x9274u, 0x9278u};
      for (int i = 0; i < 2; ++i) {
          SFormatRow& row = m_formatTable[pixel_format::detail::kFormatETC2RGB8 + i];
          row.m_unk00 = static_cast<uint16_t>(etc2 ? pixel_format::detail::kFormatETC2RGB8 + i : 39);
          row.m_unk02 = 39;
          row.m_internalFormat = formats[i];
          row.m_format = 0;
          row.m_type = 0;
          row.m_unk10 = 0;
      }
      glitch::os::Printer::log("ETC2 textures", etc2 ? "supported" : "not supported", glitch::os::ELL_INFORMATION);
  }

    glitch::os::Printer::log("Driver informations:", glitch::os::ELL_INFORMATION);
    const char* glVersion = reinterpret_cast<const char*>(gl().getString ? gl().getString(0x1f02) : nullptr);
    unk_08.assign(glVersion != nullptr ? glVersion : "");  // +0x08
    if (unk_08.size() <= 6 || unk_08.find("OpenGL ") == std::string::npos) unk_08 = "OpenGL " + unk_08;
    glitch::os::Printer::log("    Driver ", unk_08.c_str(), glitch::os::ELL_INFORMATION);
    const char* renderer = reinterpret_cast<const char*>(gl().getString ? gl().getString(0x1f01) : nullptr);
    const char* vendor = reinterpret_cast<const char*>(gl().getString ? gl().getString(0x1f00) : nullptr);
    if (vendor != nullptr && renderer != nullptr) {
        glitch::os::Printer::log("    Renderer ", renderer, glitch::os::ELL_INFORMATION);
        glitch::os::Printer::log("    Vendor ", vendor, glitch::os::ELL_INFORMATION);
        unk_20.assign(vendor);  // +0x20
    }
    const uint16_t maxLights = static_cast<CProgrammableGLDriver*>(this)->queryMaxLightCount();
    init(maxLights, maxLights > 7u ? 8 : maxLights, static_cast<uint8_t>(v119));
    boost::intrusive_ptr<IRenderTarget> framebuffer(new CFramebuffer(this, screenSize), true);
    pushRenderTarget(framebuffer);  // +0x8c
    if (gl().pixelStorei) gl().pixelStorei(0xd05, 1);
    bool succeeded;
    if (static_cast<CProgrammableGLDriver*>(this)->driverInit(screenSize)) {
        for (uint32_t i = 0; i != 5; ++i) {
            if (kBufferTypeMap[i] != 0 && gl().bindBuffer) gl().bindBuffer(kBufferTypeMap[i], m_common.m_words[i]);
        }
        restoreShadowState();  // +0x74
        clearBuffers(1);       // +0xa8
        initImplementationDependentData();
        succeeded = true;
    } else {
        succeeded = false;
    }
    return succeeded;
}

// 0x5b74e8 _ZN6glitch5video15CCommonGLDriverI...25commitCurrentMaterialImplEh
// Applies the render states of the current material's pass (technique m_flagF8), makes the pass's shader current if it is not,
// and sends the pass's parameter bindings to the shader's uniforms.
void CCommonGLDriver::commitCurrentMaterialImpl(uint8_t pass) {
    detail::applyRenderStates(m_materialEc, m_flagF8, pass, this);
    const SRenderPass& renderPass = m_materialEc->m_renderer->m_techniques[m_flagF8].passes[pass];
    IShader* shader = static_cast<IShader*>(renderPass.shader);
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
    if (shader == nullptr) __android_log_print(ANDROID_LOG_ERROR, "DH2DBG", "commitCurrentMaterialImpl: pass %d of technique %d has no shader (renderer %p passCount %d)", (int)pass, (int)m_flagF8, (void*)m_materialEc->m_renderer.get(), (int)m_materialEc->m_renderer->m_techniques[m_flagF8].passCount);
#endif
    if (shader != m_shaderF4) {
        if (gl().useProgram) gl().useProgram(static_cast<const CGLSLShader*>(shader)->m_glProgram);
        m_shaderF4 = shader;
    }
    static_cast<CProgrammableGLDriver*>(this)->commitCurrentMaterialParametersAux<CMaterial>(
        static_cast<const CGLSLShader*>(m_shaderF4), m_materialEc, renderPass.unknown28, renderPass.unknown28 + renderPass.unknown2c);
}

// 0x5b2244 _ZN6glitch5video15CCommonGLDriverI...15draw2DRectangleERKNS_4core4rectIiEES9_PKNS0_6SColorEPS8_
// Draws a (coloured) rectangle with the texture of the current material (its first texture parameter): the source rectangle is
// in texels, scaled to texture coordinates, and the quad clipped to the optional clip rectangle with its texture coordinates; the
// drawQuads call does the rest. Without a texture the rectangle is only clamped to the clip rectangle (and made non-negative in
// size) and drawn with zero texture coordinates.
void CCommonGLDriver::draw2DRectangle(const core::rect<int32_t>& position, const core::rect<int32_t>& source, const SColor* colors,
                                      const core::rect<int32_t>* clipRect) {
    boost::intrusive_ptr<ITexture> texture;
    if (m_materialEc != nullptr) {
        const uint16_t id = m_materialEc->m_renderer->getParameterID(2, 0);
        m_materialEc->parameters.getParameter(id, 0u, texture);
    }
    core::rect<int32_t> target = position;
    if (texture) {
        const float invWidth = 1.0f / static_cast<float>(static_cast<int32_t>(texture->m_width));
        const float invHeight = 1.0f / static_cast<float>(static_cast<int32_t>(texture->m_height));
        core::rect<float> coordinates;
        coordinates.UpperLeftCorner.X = static_cast<float>(source.UpperLeftCorner.X) * invWidth;
        coordinates.UpperLeftCorner.Y = static_cast<float>(source.UpperLeftCorner.Y) * invHeight;
        coordinates.LowerRightCorner.X = static_cast<float>(source.LowerRightCorner.X) * invWidth;
        coordinates.LowerRightCorner.Y = static_cast<float>(source.LowerRightCorner.Y) * invHeight;
        if (clipRect == nullptr || IVideoDriver::clip(target, coordinates, *clipRect, nullptr)) {
            drawQuads(target, coordinates, colors);
        }
        return;
    }
    if (clipRect != nullptr) {
        if (target.LowerRightCorner.X > clipRect->LowerRightCorner.X) target.LowerRightCorner.X = clipRect->LowerRightCorner.X;
        if (target.LowerRightCorner.Y > clipRect->LowerRightCorner.Y) target.LowerRightCorner.Y = clipRect->LowerRightCorner.Y;
        int32_t left = target.UpperLeftCorner.X;
        if (clipRect->UpperLeftCorner.X > target.UpperLeftCorner.X) {
            target.UpperLeftCorner.X = clipRect->UpperLeftCorner.X;
            left = clipRect->UpperLeftCorner.X;
        }
        int32_t top = target.UpperLeftCorner.Y;
        if (clipRect->UpperLeftCorner.Y > target.UpperLeftCorner.Y) {
            target.UpperLeftCorner.Y = clipRect->UpperLeftCorner.Y;
            top = clipRect->UpperLeftCorner.Y;
        }
        if (target.LowerRightCorner.Y < top) target.UpperLeftCorner.Y = target.LowerRightCorner.Y;
        if (left > target.LowerRightCorner.X) target.UpperLeftCorner.X = target.LowerRightCorner.X;
    }
    const core::rect<float> noCoordinates{};
    drawQuads(target, noCoordinates, colors);
}

}  // namespace glitch::video
