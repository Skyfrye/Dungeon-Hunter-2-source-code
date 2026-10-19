#include "glitch-video/ccommon_gl_driver_base.hpp"

#include <cstdio>
#include <cstring>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/gl_extension.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::video {

// 0x6dcac0 _ZN6glitch5video19CCommonGLDriverBase18SShadowRenderStateC1Ev
// The defaults are the member initialisers (see the header): every cached value the constructor writes, including the
// depth test and depth mask being on, depth function 3, stencil function 7, clear colour opaque black and the unit floats.
CCommonGLDriverBase::SShadowRenderState::SShadowRenderState() = default;

// 0x6dcfb4 _ZNK6glitch5video19CCommonGLDriverBase18SShadowRenderState14getRenderStateINS0_6detail6driver12SRenderStateEEEvRT_
void CCommonGLDriverBase::SShadowRenderState::getRenderState(detail::driver::SRenderState& out) const {
    uint32_t word = out.m_word00 & 0xfff0ffffu;
    if ((m_colorMask & 0xffu) != 0) word |= 0x10000u;
    if (((m_colorMask >> 8) & 0xffu) != 0) word |= 0x20000u;
    if (((m_colorMask >> 16) & 0xffu) != 0) word |= 0x40000u;
    if (((m_colorMask >> 24) & 0xffu) != 0) word |= 0x80000u;
    word = m_ditherEnable ? (word | 0x100000u) : (word & 0xffefffffu);
    word = m_scissorEnable ? (word | 0x200000u) : (word & 0xffdfffffu);
    word = (word & 0xffffff00u) | m_stencilMask;
    word = (word & 0xffff00ffu) | (static_cast<uint32_t>(m_clearStencil) << 8);
    out.m_word00 = word;
    out.m_word04 = m_clearColor;  // the four colour bytes at +0x04..+0x07
    out.m_clearDepth = m_clearDepth;
    out.m_depthRangeNear = m_depthRangeNear;
    out.m_depthRangeFar = m_depthRangeFar;
    out.m_scissor[0] = m_scissor.UpperLeftCorner.X;
    out.m_scissor[1] = m_scissor.UpperLeftCorner.Y;
    out.m_scissor[2] = m_scissor.LowerRightCorner.X;
    out.m_scissor[3] = m_scissor.LowerRightCorner.Y;
}

// 0x6de3a8 _ZN6glitch5video19CCommonGLDriverBaseC1EPNS_7IDeviceEPNS0_14IShaderManagerE / 0x6de5f8 C2
// IVideoDriver's constructor with the shader manager and a null default light (it creates the managers and the light); then
// the cached state: the byte at +0x160, the four records, the shadow render state and the common shadow state, the colour
// format 10, the six matrices as identities, and the zeroed texture table, anisotropy, capability rows and words. All of these
// are member initialisers except the matrices.
CCommonGLDriverBase::CCommonGLDriverBase(glitch::IDevice* device, IShaderManager* shaderManager)
    : IVideoDriver(device, shaderManager, nullptr, nullptr, nullptr, boost::intrusive_ptr<CLight>()) {
    for (core::CMatrix4<float>& matrix : m_matrices) {
        matrix = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
}

// 0x6ddaa8 _ZN6glitch5video19CCommonGLDriverBaseD2Ev / 0x6ddadc D1 / 0x6ddaf8 D0: the vtable is set and IVideoDriver's destructor runs.
CCommonGLDriverBase::~CCommonGLDriverBase() = default;

// 0x6ddcac _ZN6glitch5video19CCommonGLDriverBase16CFramebufferBaseC2EPS1_RKNS_4core11dimension2dIiEE / 0x6ddcf8 C1
// The IRenderTarget base, then the screen offset and margins zeroed (the members of IFramebuffer).
CCommonGLDriverBase::CFramebufferBase::CFramebufferBase(CCommonGLDriverBase* driver, const core::dimension2d<int32_t>& size)
    : IVideoDriver::IFramebuffer(driver, size) {}

// 0x6dcdd4 _ZNK6glitch5video19CCommonGLDriverBase12getTransformENS0_22E_TRANSFORMATION_STATEE: &matrix[state] (68 bytes each from +0x288).
const core::CMatrix4<float>& CCommonGLDriverBase::getTransform(E_TRANSFORMATION_STATE state) const { return m_matrices[state]; }

// 0x6dd0ac _ZNK6glitch5video19CCommonGLDriverBase14getRenderStateERNS0_6detail6driver12SRenderStateE
void CCommonGLDriverBase::getRenderState(detail::driver::SRenderState& state) const { m_shadow.getRenderState(state); }

// 0x6de260 _ZN6glitch5video19CCommonGLDriverBase15set2DProjectionEv
// An orthographic projection over the current target's viewport: scale 2/w and -2/h, the half-pixel-corrected translation
// (-1 + 0.375 * 2/w, 1 - 0.375 * 2/h) and a depth scale of 0.5; set as transform 2 (driver slot +0x6c).
void CCommonGLDriverBase::set2DProjection() {
    const IRenderTarget* target = m_renderTargets.back().get();
    const float width = static_cast<float>(target->m_viewport.LowerRightCorner.X - target->m_viewport.UpperLeftCorner.X);
    const float height = static_cast<float>(target->m_viewport.LowerRightCorner.Y - target->m_viewport.UpperLeftCorner.Y);
    core::CMatrix4<float> projection;
    projection.flag = false;
    for (float& element : projection.M) element = 0.0f;
    projection.M[0] = 2.0f / width;
    const float yScale = 2.0f / (0.0f - height);
    projection.M[5] = yScale;
    projection.M[10] = 0.5f;
    projection.M[14] = 0.5f;
    projection.M[15] = 1.0f;
    projection.M[12] = (2.0f / width) * 0.375f + (-(width + 0.0f)) / width;
    projection.M[13] = yScale * 0.375f + (-(height + 0.0f)) / (0.0f - height);
    setTransform(2, projection);
}

// 0x6dd9d0 _ZNK6glitch5video19CCommonGLDriverBase21fixUpProjectionMatrixERNS_4core8CMatrix4IfEE
void CCommonGLDriverBase::fixUpProjectionMatrix(core::CMatrix4<float>& projection) const {
    float* m = projection.M;
    projection.flag = false;
    if (m[11] == 0.0f) {
        const float scale = m[10];
        m[14] = (m[14] + m[14]) - 1.0f;
        m[10] = scale + scale;
    } else {
        const float translation = m[14];
        m[10] = (m[10] + m[10]) - 1.0f;
        m[14] = translation + translation;
    }
    if (m_frontFaceFlip) {
        m[1] = -m[1];
        m[5] = -m[5];
        m[9] = -m[9];
        m[13] = -m[13];
        projection.flag = false;
    }
    fixUpProjectionMatrixOrientation(projection);
}

// 0x6dd884 _ZNK6glitch5video19CCommonGLDriverBase15fixUpScreenAreaERKNS_4core4rectIiEERiS7_S7_S7_bb
// Turns a screen rectangle into GL window coordinates. The size is the rectangle's; an empty rectangle fails unless `scissor`
// is set. With only the screen target on the stack (or `flip`), the rectangle goes through screen2Device and the y origin is
// flipped against the framebuffer (its height plus margin, or for odd orientations its width plus margin with the size's
// width and height exchanged); otherwise the position is the rectangle's corner.
bool CCommonGLDriverBase::fixUpScreenArea(const core::rect<int32_t>& area, int32_t& x, int32_t& y, int32_t& width,
                                          int32_t& height, bool scissor, bool flip) const {
    width = area.LowerRightCorner.X - area.UpperLeftCorner.X;
    height = area.LowerRightCorner.Y - area.UpperLeftCorner.Y;
    if (!scissor && (width <= 0 || height <= 0)) return false;
    if (m_renderTargets.size() == 1 || flip) {
        core::rect<int32_t> device = area;
        screen2Device<int32_t>(device);
        const IFramebuffer* framebuffer = static_cast<const IFramebuffer*>(m_renderTargets.front().get());
        int32_t top;
        if (m_renderTargets.size() <= 1 && (m_orientation & 1) != 0) {
            const int32_t oldWidth = width;
            width = height;
            height = oldWidth;
            top = framebuffer->m_screenMarginX + framebuffer->m_width;
        } else {
            top = framebuffer->m_screenMarginY + framebuffer->m_height;
        }
        x = device.UpperLeftCorner.X;
        y = top - device.UpperLeftCorner.Y - height;
        return true;
    }
    x = area.UpperLeftCorner.X;
    y = area.UpperLeftCorner.Y;
    return true;
}

// 0x6dcbe4 _ZNK6glitch5video19CCommonGLDriverBase11CBufferBase12getMappedPtrEv
uint8_t* CCommonGLDriverBase::CBufferBase::getMappedPtr() const { return m_mappedPtr; }

// 0x6dcbec _ZNK6glitch5video19CCommonGLDriverBase12CTextureBase12getMappedPtrEv
uint8_t* CCommonGLDriverBase::CTextureBase::getMappedPtr() const { return nullptr; }

// 0x6dcbf4 _ZNK6glitch5video19CCommonGLDriverBase12CTextureBase9unmapImplEv
void CCommonGLDriverBase::CTextureBase::unmapImpl() const {}

// 0x6dd734 _ZN6glitch5video19CCommonGLDriverBase14initExtensionsEPKh
// The extension string is copied token by token into a process buffer (each token ended with a NUL where the space was), looked
// up in the extension table (glitch::core::getValue<E_GL_EXTENSION> 0x6dd6dc) and logged with a tab. The scan stops at the end of
// the string without handling the last token, as in the binary. The binary formats the line into a 0x400-byte stack buffer
// unbounded; here it is bounded to that size.
void CCommonGLDriverBase::initExtensions(const uint8_t* extensions) {
    const char* text = reinterpret_cast<const char*>(extensions);
    if (text == nullptr) return;
    char* buffer = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(static_cast<int>(std::strlen(text) + 1)));
    glitch::os::Printer::log("Available OpenGL extensions:", glitch::os::ELL_INFORMATION);
    char current = *text;
    if (current != '\0') {
        char* write = buffer + 1;
        char* token = buffer;
        do {
            for (;;) {
                *(write - 1) = current;
                if (*text == ' ') break;
                current = *++text;
                ++write;
                if (current == '\0') goto done;
            }
            *(write - 1) = '\0';
            const uint32_t index = static_cast<uint32_t>(glitch::core::getValue<E_GL_EXTENSION>(token));
            if (index != 0xFFFFu) m_unk7b8[index >> 5] |= 1u << (index & 31u);
            char line[0x400];
            std::snprintf(line, sizeof line, "	%s", token);
            glitch::os::Printer::log(line, glitch::os::ELL_INFORMATION);
            current = *++text;
            token = write++;
        } while (current != '\0');
    }
done:
    if (buffer != nullptr) glitch::core::releaseProcessBuffer(buffer);
}

// 0x6ddd44 _ZN6glitch5video19CCommonGLDriverBase12CTextureBase7mapImplEh24E_TEXTURE_CUBE_MAP_FACEh
// Maps one (face, level) for CPU access and returns its pointer. With client data the (face, level) is marked dirty; without it a
// zeroed-size copy is allocated first (the whole texture including the cube faces, the level table giving the size) and the
// event is logged. The map bookkeeping bytes get the access (shifted into the top bits, with the first-map marker) and the
// (face, level) pair; mapping level 0 of face 0 raises the locked flag.
uint8_t* CCommonGLDriverBase::CTextureBase::mapImpl(uint8_t access, E_TEXTURE_CUBE_MAP_FACE face, uint8_t level) {
    const uint8_t mode = static_cast<uint8_t>((access & 1u) | 4u);
    const bool range = (m_flags3f & kFlagRangeSizes) != 0;
    if (m_data != nullptr) {
        const uint32_t index = level + static_cast<uint32_t>(m_mipCount3e) * face;
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyData);
        uint32_t* bits = reinterpret_cast<uint32_t*>(m_levelSizes + (m_mipCount3e + 1));
        bits[index >> 5] |= 1u << (index & 31u);
    }
    if (m_data == nullptr) {
        const uint32_t faces = (m_flags38 & 3u) == 2 ? 5u : 0u;  // extra faces
        uint32_t size;
        if (range) {
            size = static_cast<uint32_t>(m_levelSizes[1] - m_levelSizes[0]);
        } else {
            size = static_cast<uint32_t>(m_levelSizes[m_mipCount3e]);
        }
        uint8_t* block = new uint8_t[size + ((size + 127u) & 0xffffff80u) * faces];
        setData(block, true, range);
        glitch::os::Printer::log("CTexture::mapImpl", "reallocating client data", glitch::os::ELL_WARNING);
    }
    uint32_t offset;
    if (range) {
        const uint32_t span = static_cast<uint32_t>(m_levelSizes[1] - m_levelSizes[0]);
        offset = span * face;
    } else {
        offset = ((static_cast<uint32_t>(m_levelSizes[m_mipCount3e]) + 127u) & 0xffffff80u) * face + static_cast<uint32_t>(m_levelSizes[level]);
    }
    uint8_t flags = m_flags3f;
    if (level == 0 && face == 0) flags = static_cast<uint8_t>(flags | kFlagLocked);
    m_lockCount42 = static_cast<uint8_t>((mode << 5) | 1u);
    m_lockFlags43 = static_cast<uint8_t>(face | (8u * level));
    if (level == 0 && face == 0) m_flags3f = flags;
    return m_data + offset;
}

// 0x6dcd54 _ZN6glitch5video19CCommonGLDriverBase18SCommonShadowStateC2Ev
// 0x6dcd90 _ZN6glitch5video19CCommonGLDriverBase18SCommonShadowStateC1Ev
// Word names are not identified; the constructor values (word +0x18 = 4, rest zero) are reproduced.
CCommonGLDriverBase::SCommonShadowState::SCommonShadowState() : m_words{} {
    m_words[6] = 4;
}

// 0x6ddf84 _ZN6glitch5video19CCommonGLDriverBase11CBufferBaseC2EPS1_NS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvb
// 0x6ddf18 _ZN6glitch5video19CCommonGLDriverBase11CBufferBaseC1EPS1_NS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvb
CCommonGLDriverBase::CBufferBase::CBufferBase(CCommonGLDriverBase* driver, E_BUFFER_TYPE type,
                                              E_BUFFER_USAGE usage, uint32_t size, void* data,
                                              bool flag)
    : IBuffer(type, usage, size, data, static_cast<uint8_t>(flag)), m_driver(driver) {}

// 0x6dded8 _ZN6glitch5video19CCommonGLDriverBase12CTextureBaseC2EPKcPS1_RKNS0_12STextureDescE
// 0x6dde98 _ZN6glitch5video19CCommonGLDriverBase12CTextureBaseC1EPKcPS1_RKNS0_12STextureDescE
// The ITexture base constructor (0x5fe404) does the copy of the name and descriptor; the two words after it are
// zeroed by the member initialisers.
CCommonGLDriverBase::CTextureBase::CTextureBase(const char* name, CCommonGLDriverBase* driver,
                                                const STextureDesc& desc)
    : ITexture(name, driver, desc) {}

// 0x6dcbf8 _ZN6glitch5video19CCommonGLDriverBase16CFramebufferBase6unbindEv
void CCommonGLDriverBase::CFramebufferBase::unbind() {}

// 0x6dcd4c _ZNK6glitch5video19CCommonGLDriverBase17CRenderTargetBase14getColorFormatEv
E_PIXEL_FORMAT CCommonGLDriverBase::CRenderTargetBase::getColorFormat() const {
    return m_colorFormat;
}

// 0x6ddbec _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBaseC2EPS1_
// 0x6ddb2c _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBaseC1EPS1_
// The IMultipleRenderTarget / IRenderTarget base takes the driver and the size {-1, -1}. The four slots and the two
// single attachments start empty (kind 255), the colour format is 39, the target count is 0 and the byte at +0x5a
// is 1, all by member initialisers.
CCommonGLDriverBase::CRenderTargetBase::CRenderTargetBase(CCommonGLDriverBase* driver)
    : IMultipleRenderTarget(driver, core::dimension2d<int32_t>{-1, -1}) {}

// 0x6dcbfc _ZNK6glitch5video19CCommonGLDriverBase17CRenderTargetBase14getTargetCountENS0_13IRenderTarget17E_ATTACHMENT_TYPEE
int32_t CCommonGLDriverBase::CRenderTargetBase::getTargetCount(E_ATTACHMENT_TYPE attachmentType) const {
    switch (attachmentType) {
        case 0:
            return m_targetCount;
        case 1:
            return m_attachment0.object != nullptr ? 1 : 0;
        case 2:
            return m_attachment1.object != nullptr ? 1 : 0;
        case 3:
            if (m_attachment0.object == nullptr) {
                return 0;
            }
            return m_attachment0.object == m_attachment1.object ? 1 : 0;
        default:
            return 0;
    }
}

// 0x6dcdcc _ZNK6glitch5video19CCommonGLDriverBase14getColorFormatEv
E_PIXEL_FORMAT CCommonGLDriverBase::getColorFormat() const { return m_colorFormat; }

// 0x6dcde8 _ZNK6glitch5video19CCommonGLDriverBase14getBlendEnableEv
bool CCommonGLDriverBase::getBlendEnable() const { return m_shadow.m_blendEnable; }

// 0x6dce24 _ZNK6glitch5video19CCommonGLDriverBase16getBlendEquationEv
E_BLEND_EQUATION CCommonGLDriverBase::getBlendEquation() const { return m_shadow.m_blendEquation; }

// 0x6dce2c _ZNK6glitch5video19CCommonGLDriverBase12getBlendFuncERNS0_14E_BLEND_FACTORES3_
void CCommonGLDriverBase::getBlendFunc(E_BLEND_FACTOR& src, E_BLEND_FACTOR& dst) const {
    src = m_shadow.m_blendSrc;
    dst = m_shadow.m_blendDst;
}

// 0x6dce9c _ZNK6glitch5video19CCommonGLDriverBase17getCullFaceEnableEv
bool CCommonGLDriverBase::getCullFaceEnable() const { return m_shadow.m_cullFaceEnable; }

// 0x6dcea4 _ZNK6glitch5video19CCommonGLDriverBase11getCullFaceEv
E_FACE_SIDE CCommonGLDriverBase::getCullFace() const { return m_shadow.m_cullFace; }

// 0x6dceac _ZNK6glitch5video19CCommonGLDriverBase12getFrontFaceEv
E_FACE_WINDING CCommonGLDriverBase::getFrontFace() const { return m_shadow.m_frontFace; }

// 0x6dceb4 _ZNK6glitch5video19CCommonGLDriverBase18getDepthTestEnableEv
bool CCommonGLDriverBase::getDepthTestEnable() const { return m_shadow.m_depthTestEnable; }

// 0x6dcebc _ZNK6glitch5video19CCommonGLDriverBase12getDepthFuncEv
E_COMPARE_FUNC CCommonGLDriverBase::getDepthFunc() const { return m_shadow.m_depthFunc; }

// 0x6dcec4 _ZNK6glitch5video19CCommonGLDriverBase12getDepthMaskEv
bool CCommonGLDriverBase::getDepthMask() const { return m_shadow.m_depthMask; }

// 0x6dcecc _ZNK6glitch5video19CCommonGLDriverBase13getClearDepthEv
float CCommonGLDriverBase::getClearDepth() const { return m_shadow.m_clearDepth; }

// 0x6dced4 _ZNK6glitch5video19CCommonGLDriverBase13getDepthRangeERfS2_
void CCommonGLDriverBase::getDepthRange(float& nearValue, float& farValue) const {
    nearValue = m_shadow.m_depthRangeNear;
    farValue = m_shadow.m_depthRangeFar;
}

// 0x6dcee8 _ZNK6glitch5video19CCommonGLDriverBase15getDitherEnableEv
bool CCommonGLDriverBase::getDitherEnable() const { return m_shadow.m_ditherEnable; }

// 0x6dcef0 _ZNK6glitch5video19CCommonGLDriverBase12getLineWidthEv
float CCommonGLDriverBase::getLineWidth() const { return m_shadow.m_lineWidth; }

// 0x6dcef8 _ZNK6glitch5video19CCommonGLDriverBase12getPointSizeEv
float CCommonGLDriverBase::getPointSize() const { return m_shadow.m_pointSize; }

// 0x6dcf00 _ZNK6glitch5video19CCommonGLDriverBase19getPolygonModeFrontEv
E_POLYGON_MODE CCommonGLDriverBase::getPolygonModeFront() const { return m_shadow.m_polygonModeFront; }

// 0x6dcf08 _ZNK6glitch5video19CCommonGLDriverBase18getPolygonModeBackEv
E_POLYGON_MODE CCommonGLDriverBase::getPolygonModeBack() const { return m_shadow.m_polygonModeBack; }

// 0x6dcf10 _ZNK6glitch5video19CCommonGLDriverBase26getPolygonOffsetFillEnableEv
bool CCommonGLDriverBase::getPolygonOffsetFillEnable() const { return m_shadow.m_polygonOffsetFillEnable; }

// 0x6dcf18 _ZNK6glitch5video19CCommonGLDriverBase26getPolygonOffsetLineEnableEv
bool CCommonGLDriverBase::getPolygonOffsetLineEnable() const { return m_shadow.m_polygonOffsetLineEnable; }

// 0x6dcf20 _ZNK6glitch5video19CCommonGLDriverBase27getPolygonOffsetPointEnableEv
bool CCommonGLDriverBase::getPolygonOffsetPointEnable() const { return m_shadow.m_polygonOffsetPointEnable; }

// 0x6dcf28 _ZNK6glitch5video19CCommonGLDriverBase16getPolygonOffsetERfS2_
void CCommonGLDriverBase::getPolygonOffset(float& factor, float& units) const {
    factor = m_shadow.m_polygonOffsetFactor;
    units = m_shadow.m_polygonOffsetUnits;
}

// 0x6dcf3c _ZNK6glitch5video19CCommonGLDriverBase30getSampleAlphaToCoverageEnableEv
bool CCommonGLDriverBase::getSampleAlphaToCoverageEnable() const {
    return m_shadow.m_sampleAlphaToCoverageEnable;
}

// 0x6dcf44 _ZNK6glitch5video19CCommonGLDriverBase23getSampleCoverageEnableEv
bool CCommonGLDriverBase::getSampleCoverageEnable() const { return m_shadow.m_sampleCoverageEnable; }

// 0x6dcf4c _ZNK6glitch5video19CCommonGLDriverBase23getSampleCoverageInvertEv
bool CCommonGLDriverBase::getSampleCoverageInvert() const { return m_shadow.m_sampleCoverageInvert; }

// 0x6dcf54 _ZNK6glitch5video19CCommonGLDriverBase22getSampleCoverageValueEv
float CCommonGLDriverBase::getSampleCoverageValue() const { return m_shadow.m_sampleCoverageValue; }

// 0x6dcf5c _ZNK6glitch5video19CCommonGLDriverBase16getScissorEnableEv
bool CCommonGLDriverBase::getScissorEnable() const { return m_shadow.m_scissorEnable; }

// 0x6dcf64 _ZNK6glitch5video19CCommonGLDriverBase10getScissorEv
const core::rect<int32_t>& CCommonGLDriverBase::getScissor() const { return m_shadow.m_scissor; }

// 0x6dcf6c _ZNK6glitch5video19CCommonGLDriverBase20getStencilTestEnableEv
bool CCommonGLDriverBase::getStencilTestEnable() const { return m_shadow.m_stencilTestEnable; }

// 0x6dcf74 _ZNK6glitch5video19CCommonGLDriverBase14getStencilFuncEv
E_COMPARE_FUNC CCommonGLDriverBase::getStencilFunc() const { return m_shadow.m_stencilFunc; }

// 0x6dcf7c _ZNK6glitch5video19CCommonGLDriverBase17getStencilFuncRefEPb
uint8_t CCommonGLDriverBase::getStencilFuncRef(bool*) const { return m_shadow.m_stencilFuncRef; }

// 0x6dcf84 _ZNK6glitch5video19CCommonGLDriverBase18getStencilFuncMaskEPb
uint8_t CCommonGLDriverBase::getStencilFuncMask(bool*) const { return m_shadow.m_stencilFuncMask; }

// 0x6dcf8c _ZNK6glitch5video19CCommonGLDriverBase16getStencilOpFailEv
E_STENCIL_OP CCommonGLDriverBase::getStencilOpFail() const { return m_shadow.m_stencilOpFail; }

// 0x6dcf94 _ZNK6glitch5video19CCommonGLDriverBase17getStencilOpZFailEv
E_STENCIL_OP CCommonGLDriverBase::getStencilOpZFail() const { return m_shadow.m_stencilOpZFail; }

// 0x6dcf9c _ZNK6glitch5video19CCommonGLDriverBase17getStencilOpZPassEv
E_STENCIL_OP CCommonGLDriverBase::getStencilOpZPass() const { return m_shadow.m_stencilOpZPass; }

// 0x6dcfa4 _ZNK6glitch5video19CCommonGLDriverBase14getStencilMaskEPb
uint8_t CCommonGLDriverBase::getStencilMask(bool*) const { return m_shadow.m_stencilMask; }

// 0x6dcfac _ZNK6glitch5video19CCommonGLDriverBase15getClearStencilEv
uint8_t CCommonGLDriverBase::getClearStencil() const { return m_shadow.m_clearStencil; }

// 0x6dce40 _ZNK6glitch5video19CCommonGLDriverBase12getColorMaskERbS2_S2_S2_
// Each channel is one byte of the packed mask (R in the lowest byte).
void CCommonGLDriverBase::getColorMask(bool& r, bool& g, bool& b, bool& a) const {
    r = (m_shadow.m_colorMask & 0xffu) != 0;
    g = ((m_shadow.m_colorMask >> 8) & 0xffu) != 0;
    b = ((m_shadow.m_colorMask >> 16) & 0xffu) != 0;
    a = ((m_shadow.m_colorMask >> 24) & 0xffu) != 0;
}

// 0x6dcdf0 _ZNK6glitch5video19CCommonGLDriverBase13getBlendColorEv
SColor CCommonGLDriverBase::getBlendColor() const {
    SColor color;
    color.color = m_shadow.m_blendColor;
    return color;
}

// 0x6dce68 _ZNK6glitch5video19CCommonGLDriverBase13getClearColorEv
SColor CCommonGLDriverBase::getClearColor() const {
    SColor color;
    color.color = m_shadow.m_clearColor;
    return color;
}

// 0x5b25e4 _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase11SAttachmentD1Ev
// Drops the held object and resets the slot to the empty state (kind 255).
void CCommonGLDriverBase::CRenderTargetBase::SAttachment::release() {
    if (object != nullptr) {
        glitch::IReferenceCounted* held = object;
        object = nullptr;
        held->drop();
        flagB = 0;
        kind = 255;
        flagA = 0;
    }
}

// 0x6dca20 _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase14copyAttachmentERNS2_11SAttachmentERKS3_
// The destination is released, then takes a counted reference to the source's object. A texture source (kind 0) keeps its face
// and level; a render buffer source (any other kind) copies as kind 1 with both flags cleared. An empty source leaves the
// destination empty.
void CCommonGLDriverBase::CRenderTargetBase::copyAttachment(SAttachment& destination, const SAttachment& source) {
    if (destination.object != nullptr) destination.release();
    if (source.object == nullptr) return;
    ++source.object->referenceCounter;
    if (source.kind != 0) {
        destination.flagB = 0;
        destination.object = source.object;
        destination.kind = 1;
        destination.flagA = 0;
    } else {
        destination.kind = 0;
        destination.flagB = source.flagB;
        destination.flagA = source.flagA;
        destination.object = source.object;
    }
}

namespace {
constexpr uint32_t kPackedDepthStencil = 35;
constexpr uint32_t kCapMultipleTargets = 0x800;

// The pixel format of an attachment: the packed format of a texture (kind 0), the stored format of a render buffer.
uint32_t attachmentFormat(const CCommonGLDriverBase::CRenderTargetBase::SAttachment& attachment) {
    if (attachment.kind != 0) {
        return static_cast<uint32_t>(static_cast<const CCommonGLDriverBase::CRenderBufferBase*>(attachment.object)->m_format);
    }
    return (static_cast<const ITexture*>(attachment.object)->m_flags38 >> 4) & 0x3fu;
}
}  // namespace

// 0x6dd1c8 _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase9setTargetENS0_13IRenderTarget17E_ATTACHMENT_TYPEENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvj
// The first attachment fixes the target's size (and the viewport); later ones must match it. Type 0 is a colour attachment: an
// index of -1 appends (up to the driver's colour attachment limit), any other index replaces and must keep the colour format.
// Type 1 is the depth slot (+0x48), 2 the stencil slot (+0x50), 3 a packed depth-stencil (format 35): it goes into the depth
// slot, and the caller copies it into the stencil slot. A packed format and a separate depth or stencil attachment exclude each
// other. The returned slot is released and the target marked dirty; null when the request is refused.
CCommonGLDriverBase::CRenderTargetBase::SAttachment* CCommonGLDriverBase::CRenderTargetBase::setTarget(
    E_ATTACHMENT_TYPE type, E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size, IReferenceCounted* object,
    uint32_t index) {
    using glitch::os::Printer;
    if (m_width == -1) {
        m_width = size.Width;
        m_height = size.Height;
        setViewport(core::rect<int32_t>{{0, 0}, {size.Width, size.Height}});
    } else if (m_width != size.Width || m_height != size.Height) {
        return nullptr;
    }
    SAttachment* slot = nullptr;
    switch (type) {
        case 0:
            if (index != 0xffffffffu) {
                if (index >= m_targetCount) {
                    Printer::log("color attachment index out of bounds", glitch::os::ELL_INFORMATION);
                    return nullptr;
                }
                if (m_targetCount == 1) {
                    m_colorFormat = format;
                } else if (m_colorFormat != format) {
                    return nullptr;
                }
                slot = &m_slots[index];
            } else {
                const uint32_t count = m_targetCount;
                if (static_cast<CCommonGLDriverBase*>(m_driver)->m_maxColorAttachments <= count) {
                    Printer::log("Color attachment overflow!", glitch::os::ELL_WARNING);
                    return nullptr;
                }
                if (count != 0) {
                    if (m_colorFormat != format) return nullptr;
                } else {
                    m_colorFormat = format;
                }
                m_targetCount = static_cast<uint8_t>(count + 1);
                slot = &m_slots[count];
            }
            break;
        case 1:
            if (m_attachment0.object != nullptr && index == 0xffffffffu) {
                Printer::log("depth attachement already added", glitch::os::ELL_ERROR);
                return nullptr;
            }
            if (format == kPackedDepthStencil) {
                if (m_attachment1.object != nullptr && object != m_attachment1.object) {
                    Printer::log("invalid packed depth stencil attachment (does not match added stencil attachment)",
                                 glitch::os::ELL_ERROR);
                    return nullptr;
                }
            } else if (m_attachment1.object != nullptr && attachmentFormat(m_attachment1) == kPackedDepthStencil) {
                Printer::log("invalid depth attachment (does not match added packed depth stencil attachment)",
                             glitch::os::ELL_ERROR);
                return nullptr;
            }
            slot = &m_attachment0;
            break;
        case 2:
            if (m_attachment1.object != nullptr && index == 0xffffffffu) {
                Printer::log("depth attachement already added", glitch::os::ELL_ERROR);
                return nullptr;
            }
            if (format == kPackedDepthStencil) {
                if (m_attachment0.object != nullptr && object != m_attachment0.object) {
                    Printer::log("invalid packed depth stencil attachment (does not match added depth attachment)",
                                 glitch::os::ELL_ERROR);
                    return nullptr;
                }
            } else if (m_attachment0.object != nullptr && attachmentFormat(m_attachment0) == kPackedDepthStencil) {
                Printer::log("invalid stencil attachment (does not match added packed depth stencil attachment)",
                             glitch::os::ELL_ERROR);
                return nullptr;
            }
            slot = &m_attachment1;
            break;
        case 3:
            if (format != kPackedDepthStencil) {
                Printer::log("invalid depth stencil pixel format", glitch::os::ELL_ERROR);
                return nullptr;
            }
            if (m_attachment0.object != nullptr || m_attachment1.object != nullptr) {
                if (index == 0xffffffffu) {
                    Printer::log("depth or stencil attachment already added", glitch::os::ELL_ERROR);
                    return nullptr;
                }
                if (m_attachment1.object != nullptr) m_attachment1.release();
            }
            slot = &m_attachment0;
            break;
        default:
            return nullptr;
    }
    if (slot->object != nullptr) slot->release();
    m_flag5a = 1;
    return slot;
}

// 0x6dd534 _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase17setTargetInternalENS0_13IRenderTarget17E_ATTACHMENT_TYPEERKN5boost13intrusive_ptrINS0_8ITextureEEENS0_23E_TEXTURE_CUBE_MAP_FACEEjj
// Refused for a null texture, a texture of type 1, and any non-colour type on a driver without the multiple-target capability.
// The slot takes a counted reference with the face and level; a packed depth-stencil (type 3) is then copied into the stencil
// slot.
bool CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<ITexture>& texture,
                                                               E_TEXTURE_CUBE_MAP_FACE face, uint32_t level, uint32_t index) {
    ITexture* t = texture.get();
    if (t == nullptr || (t->m_flags38 & 3u) == 1u ||
        (type != 0 && (m_driver->m_capabilities & kCapMultipleTargets) == 0)) {
        return false;
    }
    SAttachment* slot = setTarget(type, static_cast<E_PIXEL_FORMAT>((t->m_flags38 >> 4) & 0x3fu),
                                  core::dimension2d<int32_t>{static_cast<int32_t>(t->m_width), static_cast<int32_t>(t->m_height)}, t,
                                  index);
    if (slot == nullptr) return false;
    slot->flagA = static_cast<uint8_t>(face);
    slot->flagB = static_cast<uint8_t>(level);
    slot->kind = 0;
    slot->object = t;
    ++t->referenceCounter;
    if (type == 3) copyAttachment(m_attachment1, m_attachment0);
    return true;
}

// 0x6dd628 _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase17setTargetInternalENS0_13IRenderTarget17E_ATTACHMENT_TYPEERKN5boost13intrusive_ptrINS0_13IRenderBufferEEEj
bool CCommonGLDriverBase::CRenderTargetBase::setTargetInternal(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<IRenderBuffer>& buffer,
                                                               uint32_t index) {
    IRenderBuffer* b = buffer.get();
    if (b == nullptr || (m_driver->m_capabilities & kCapMultipleTargets) == 0) return false;
    CRenderBufferBase* base = static_cast<CRenderBufferBase*>(b);
    SAttachment* slot = setTarget(type, base->m_format, core::dimension2d<int32_t>{base->m_width, base->m_height}, b, index);
    if (slot == nullptr) return false;
    slot->kind = 1;
    slot->flagB = 0;
    slot->flagA = 0;
    slot->object = b;
    ++b->referenceCounter;
    if (type == 3) copyAttachment(m_attachment1, m_attachment0);
    return true;
}

// 0x6dd6d4 addTarget(render buffer) / 0x6dd604 addTarget(texture) / 0x6dd6d0 setTarget(render buffer) / 0x6dd600 setTarget(texture):
// thunks into setTargetInternal, an add being a set with index -1.
void CCommonGLDriverBase::CRenderTargetBase::addTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<IRenderBuffer>& buffer) {
    setTargetInternal(type, buffer, 0xffffffffu);
}
void CCommonGLDriverBase::CRenderTargetBase::addTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<ITexture>& texture,
                                                       E_TEXTURE_CUBE_MAP_FACE face, uint32_t level) {
    setTargetInternal(type, texture, face, level, 0xffffffffu);
}
void CCommonGLDriverBase::CRenderTargetBase::setTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<IRenderBuffer>& buffer,
                                                       uint32_t index) {
    setTargetInternal(type, buffer, index);
}
void CCommonGLDriverBase::CRenderTargetBase::setTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<ITexture>& texture,
                                                       E_TEXTURE_CUBE_MAP_FACE face, uint32_t level, uint32_t index) {
    setTargetInternal(type, texture, face, level, index);
}

// 0x6dcc68 _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase12removeTargetENS0_13IRenderTarget17E_ATTACHMENT_TYPEEj
// Type 0 removes a colour slot and shifts the later ones down; 1 clears the depth slot, 2 the stencil slot, 3 the stencil slot
// only when it holds the same object as the depth slot, then both. The target is marked dirty.
void CCommonGLDriverBase::CRenderTargetBase::removeTarget(E_ATTACHMENT_TYPE type, uint32_t index) {
    switch (type) {
        case 0: {
            // The decompiled shift loop (while index > (uint8_t)index) never runs for a byte index, so only the slot itself and
            // then the last remaining slot are released.
            m_slots[index].release();
            const uint32_t remaining = static_cast<uint8_t>(m_targetCount - 1);
            m_targetCount = static_cast<uint8_t>(remaining);
            if (remaining != 0) m_slots[remaining - 1].release();
            break;
        }
        case 1:
            m_attachment0.release();
            break;
        case 2:
            m_attachment1.release();
            break;
        case 3:
            if (m_attachment0.object != m_attachment1.object) return;
            m_attachment0.release();
            m_attachment1.release();
            break;
        default:
            break;
    }
    m_flag5a = 1;
}

// 0x6ddff0 _ZN6glitch5video19CCommonGLDriverBase9drawQuadsERKNS_4core4rectIiEERKNS3_IfEEPKNS0_6SColorE
// The four vertices (right-bottom, right-top, left-bottom, left-top, each with its texture coordinate, corner colour and z 0) are
// written into the staging records and uploaded into the immediate vertex buffer (0x60 bytes, marked updated unless the
// buffer's usage is 4); the immediate stream table is set to four vertices and drawn as a triangle strip of four vertices
// through the draw slot (+0x58).
void CCommonGLDriverBase::drawQuads(const core::rect<int32_t>& position, const core::rect<float>& texture, const SColor* colors) {
    const float left = static_cast<float>(position.UpperLeftCorner.X);
    const float top = static_cast<float>(position.UpperLeftCorner.Y);
    const float right = static_cast<float>(position.LowerRightCorner.X);
    const float bottom = static_cast<float>(position.LowerRightCorner.Y);
    m_quadVertices[0] = {texture.LowerRightCorner.X, texture.LowerRightCorner.Y, colors[2], right, bottom, 0.0f};
    m_quadVertices[1] = {texture.LowerRightCorner.X, texture.UpperLeftCorner.Y, colors[3], right, top, 0.0f};
    m_quadVertices[2] = {texture.UpperLeftCorner.X, texture.LowerRightCorner.Y, colors[1], left, bottom, 0.0f};
    m_quadVertices[3] = {texture.UpperLeftCorner.X, texture.UpperLeftCorner.Y, colors[0], left, top, 0.0f};
    m_immediateVertices->reset(sizeof m_quadVertices, m_quadVertices, false);
    if (m_immediateVertices->m_usage != 4 && m_immediateVertices->m_data != nullptr) {
        m_immediateVertices->m_flags12 |= IBuffer::kFlagHasData;
    }
    unk_ac->m_field08 = 4;
    boost::intrusive_ptr<const CVertexStreams> streams(unk_ac.get(), true);
    CPrimitiveStream strip;
    strip.m_count = 4;
    strip.m_vertexEnd = 4;
    strip.m_indexType = 255;
    strip.m_primitiveType = 4;
    boost::intrusive_ptr<const scene::CMeshBuffer> noMeshBuffer;
    draw(streams, strip, nullptr, noMeshBuffer);  // +0x58
}

}  // namespace glitch::video
