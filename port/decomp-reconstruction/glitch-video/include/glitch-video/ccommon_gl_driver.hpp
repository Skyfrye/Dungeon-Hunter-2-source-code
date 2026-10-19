// glitch::video::CCommonGLDriver: the GL driver. The original is the template instance
//   CCommonGLDriver<CProgrammableGLDriver<CGLSLShaderHandler>, detail::CProgrammableGLFunctionPointerSet>
// whose base is CCommonGLDriverBase (which derives from IVideoDriver). Only this instance is modelled, so the template is not
// reproduced. The state cache is CCommonGLDriverBase's m_shadow. Each setter follows the original pattern: compare with the
// cached value, call flush() (IVideoDriver::flush, vtable +0x1fc), call GL, then store.
//
// Members past CCommonGLDriverBase (which ends at +0x7f0):
//   +0x7f0 uint32 index of the next texture to reload   +0x7f4 uint32 texture count   +0x7f8 the texture name-map iterator
//   +0x7fc the shader name-map iterator (reloadShaders)   +0x800 the buffer map (std::map header) with its node count at +0x810
// CProgrammableGLDriver continues from +0x820. The pure slots the derived class implements are setTransform (+0x6c),
// restoreShadowState (+0x74), onMaterialDestroyed (+0x210) and swapBuffersImpl (+0x218); getDriverType, getMaxUserClipPlanes and
// onShaderDestroyed are also its own.
#pragma once

#include <cstddef>
#include <cstdint>
#include <map>

#include "glitch-video/ccommon_gl_driver_base.hpp"
#include "glitch-video/deps/glitch_core.hpp"
#include "glitch-video/deps/glitch_video_types.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/shader_manager.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/tb/renderpass_srenderstate.hpp"

namespace glitch::video {

class CProgrammableGLDriver;

class CCommonGLDriver : public CCommonGLDriverBase {
public:
    // The GL buffer: CCommonGLDriver<...>::CBuffer in the original (vtable 0x9779b8: bindImpl .. cloneImpl, getMappedPtr is
    // the base's).
    class CBuffer : public CBufferBase {
    public:
        using CBufferBase::CBufferBase;
        ~CBuffer() override = default;                             // 0x5b24c8 (D1) / 0x5b253c (D0)
        void bindImpl(bool) override;                              // +0x0c  0x5b67b0
        void unbindImpl() override;                                // +0x10  0x5b051c
        uint8_t* mapImpl(uint32_t) const override;                 // +0x14  0x5b3a1c
        void unmapImpl() const override;                           // +0x18  0x5b2468
        boost::intrusive_ptr<IBuffer> cloneImpl() const override;  // +0x20  0x5b1480
        // 0x5b6374: uploads the buffer's data when it is dirty. Declared only.
        void update();
    };

    // The GL texture (0x5c bytes: CTextureBase plus the GL name at +0x54 ... vtable 0x977798).
    class CTexture : public CTextureBase {
    public:
        using CTextureBase::CTextureBase;
        ~CTexture() override = default;           // 0x5b2a30 (D1) / 0x5b2aa4 (D0)
        bool bindImpl(bool) override;             // +0x0c  0x5b5610
        void unbindImpl() override;               // +0x10  0x5b28dc
        void generateMipmapsImpl() override;      // +0x20  0x5b280c
        // 0x5afd40 / 0x5afff0 / 0x5b044c: the parameter, data and combined updates.
        void updateParameters() const;
        int32_t updateData(bool) const;
        int32_t update(bool) const;
    };

    // The GL render buffer: CRenderBufferBase (the pixel format and the size) plus the driver and the GL name. Vtable 0x977848:
    // one slot after the reference-counted ones, unbind (+0x0c).
    class CRenderBuffer : public CRenderBufferBase {
    public:
        CRenderBuffer(CCommonGLDriver* driver, E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size);
        ~CRenderBuffer() override = default;  // 0x5b1398 (D1) / 0x5b13d8 (D0)
        void unbind() override;               // +0x0c  0x5b130c
        void bind();                          // 0x5b11ec: creates the GL render buffer and its storage. Declared only.
        CCommonGLDriver* m_driver = nullptr;  // +0x14
        uint32_t m_glName = 0;                // +0x18, the GL render buffer name (0 until bound)
    };

    // The GL framebuffer target (vtable 0x9777f8, 0x34 bytes + the GL name). Declared only apart from the constructor.
    class CFramebuffer : public CFramebufferBase {
    public:
        CFramebuffer(CCommonGLDriver* driver, const core::dimension2d<int32_t>& size);  // 0x5b1bd8
        ~CFramebuffer() override = default;                                              // 0x5af1d0 / 0x5b04d4
        void bind() override;                                                            // +0x10  0x5b1244
        uint32_t m_screenBinding = 0;  // +0x34: GL_FRAMEBUFFER_BINDING read by the constructor when framebuffer objects exist
    };

    // The GL render target (0x5c bytes, vtable 0x9777c8). Declared only apart from the constructor.
    class CRenderTarget : public CRenderTargetBase {
    public:
        using CRenderTargetBase::CRenderTargetBase;
        ~CRenderTarget() override = default;  // 0x5b2684 (D1) / 0x5b26d4 (D0)
        void bind() override;                 // +0x10  0x5b2c8c
        void unbind() override;               // +0x14  0x5b2ac0
        // 0x5b2ba8.
        void compileAttachment(int32_t slot, const SAttachment& attachment) const;
    };

    CCommonGLDriver(glitch::IDevice* device, IShaderManager* shaderManager);
    ~CCommonGLDriver() override;  // 0x5b3688 (D2) / 0x5b3808 (D1) / 0x5b3870 (D0)

    // ---- IVideoDriver slots, in vtable order ----
    bool beginScene() override;                                                       // +0x0c  0x5b1860
    bool endScene() override;                                                         // +0x10  0x5b1838
    bool beginScene2D() override;                                                     // +0x14  0x5b1734
    bool endScene2D() override;                                                       // +0x18  0x5af2d8
    void draw2DRectangle(const core::rect<int32_t>& position, const core::rect<int32_t>& clip, const SColor* colors,
                         const core::rect<int32_t>* clipRect) override;               // +0x34  0x5b2244
    bool ReinitDriver() override;                                                     // +0x38  0x5b1b10
    bool reloadTexturesData() override;                                               // +0x3c  0x5b1fe4
    void reloadShaders() override;                                                    // +0x40  0x5b15f0
    void resetTexturesLoader() override;                                              // +0x44  0x5af1dc
    void registerBufferMap(uint32_t a, uint32_t b, uint32_t c, uint32_t d, const void* data) override;  // +0x48  0x5b5be4
    void ReloadbufferMap() override;                                                  // +0x4c  0x5b0594
    void unregisterBufferMap(uint32_t id) override;                                   // +0x50  0x5b1f5c
    void clearBufferMap() override;                                                   // +0x54  0x5b35d8
    uint32_t getMaximalPrimitiveCount() const override;                               // +0x60  0x5af1fc
    boost::intrusive_ptr<IBuffer> createBuffer(E_BUFFER_TYPE type, E_BUFFER_USAGE usage, uint32_t size, void* data,
                                               bool flag) override;                   // +0x78  0x5b13f4
    boost::intrusive_ptr<IRenderBuffer> createRenderBuffer(const core::dimension2d<int32_t>& size,
                                                           E_PIXEL_FORMAT format) override;  // +0x80  0x5b5390
    boost::intrusive_ptr<IRenderTarget> createRenderTarget(const boost::intrusive_ptr<ITexture>& texture,
                                                           uint32_t flags) override;  // +0x84  0x5b388c
    boost::intrusive_ptr<IRenderTarget> createMultipleRenderTarget() override;        // +0x88  0x5b1190
    boost::intrusive_ptr<CImage> createScreenShot() override;                         // +0x98  0x5b1c48
    bool captureFramebufferImpl(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& position,
                                const core::rect<int32_t>& area, uint8_t level, E_TEXTURE_CUBE_MAP_FACE face,
                                bool flag) override;                                  // +0x9c  0x5af204
    bool swapBuffers(int32_t mode) override;                                          // +0xa4  0x5af20c
    void clearBuffers(int32_t mask) override;                                         // +0xa8  0x5b0f38

    void setBlendEnable(bool enable) override;                                        // +0xb4  0x5b7080, GL_BLEND 0x0be2
    void setBlendColor(SColor color) override;                                        // +0xbc  0x5af574
    void setBlendEquation(E_BLEND_EQUATION mode) override;                            // +0xc4  0x5af3b4
    void setBlendFunc(E_BLEND_FACTOR src, E_BLEND_FACTOR dst) override;               // +0xcc  0x5af35c
    void setColorMask(bool r, bool g, bool b, bool a) override;                       // +0xd4  0x5b0cec
    void setClearColor(SColor color) override;                                        // +0xdc  0x5b0d4c
    void setCullFaceEnable(bool enable) override;                                     // +0xe4  0x5b7034, GL_CULL_FACE 0x0b44
    void setCullFace(E_FACE_SIDE side) override;                                      // +0xec  0x5af6b8
    void setFrontFace(E_FACE_WINDING winding) override;                               // +0xf4  0x5afc78
    void setDepthTestEnable(bool enable) override;                                    // +0xfc  0x5b6fe8, GL_DEPTH_TEST 0x0b71
    void setDepthFunc(E_COMPARE_FUNC func) override;                                  // +0x104 0x5af760
    void setDepthMask(bool flag) override;                                            // +0x10c 0x5afccc
    void setClearDepth(float depth) override;                                         // +0x114 0x5b0e94, no store (see notes)
    void setDepthRange(float nearValue, float farValue) override;                     // +0x11c 0x5b0ed4
    void setDitherEnable(bool enable) override;                                       // +0x124 0x5b6f9c, GL_DITHER 0x0bd0
    void setLineWidth(float width) override;                                          // +0x12c 0x5afd00
    void setPointSize(float size) override;                                           // +0x134 0x5af220, no GL call
    void setPolygonModeFront(E_POLYGON_MODE mode) override;                           // +0x13c 0x5af258, no GL call
    void setPolygonModeBack(E_POLYGON_MODE mode) override;                            // +0x144 0x5af284, no GL call
    void setPolygonOffsetFillEnable(bool enable) override;                            // +0x14c 0x5b6f50, GL_POLYGON_OFFSET_FILL 0x8037
    void setPolygonOffsetLineEnable(bool enable) override;                            // +0x154 0x5af2b0, empty
    void setPolygonOffsetPointEnable(bool enable) override;                           // +0x15c 0x5af2b4, empty
    void setPolygonOffset(float factor, float units) override;                        // +0x164 0x5af828
    void setSampleAlphaToCoverageEnable(bool enable) override;                        // +0x16c 0x5b6f04, GL_SAMPLE_ALPHA_TO_COVERAGE 0x809e
    void setSampleCoverageEnable(bool enable) override;                               // +0x174 0x5b6eb8, GL_SAMPLE_COVERAGE 0x80a0
    void setSampleCoverageInvert(bool invert) override;                               // +0x17c 0x5af93c
    void setSampleCoverageValue(float value) override;                                // +0x184 0x5af8f8
    void setScissorEnable(bool enable) override;                                      // +0x18c 0x5b6e6c, GL_SCISSOR_TEST 0x0c11
    void setScissor(const core::rect<int32_t>& rect) override;                        // +0x194 0x5b0bec
    void setStencilTestEnable(bool enable) override;                                  // +0x19c 0x5b6e20, GL_STENCIL_TEST 0x0b90
    void setStencilFunc(E_COMPARE_FUNC func) override;                                // +0x1a4 0x5afa24
    void setStencilFuncRef(uint8_t ref) override;                                     // +0x1ac 0x5af9cc
    void setStencilFuncMask(uint8_t mask) override;                                   // +0x1b4 0x5af974
    void setStencilOpFail(E_STENCIL_OP op) override;                                  // +0x1bc 0x5afc14
    void setStencilOpZFail(E_STENCIL_OP op) override;                                 // +0x1c4 0x5afbb0
    void setStencilOpZPass(E_STENCIL_OP op) override;                                 // +0x1cc 0x5afb4c
    void setStencilMask(uint8_t mask) override;                                       // +0x1d4 0x5b0e2c
    void setClearStencil(uint8_t value) override;                                     // +0x1dc 0x5b0e60
    void setRenderState(const detail::driver::SRenderState& state) override;          // +0x1e4 0x5b7898
    void setViewportImpl(const core::rect<int32_t>& rect) override;                   // +0x1e8 0x5b0a9c
    bool drawImpl(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                  CDriverBinding** binding) override;                                 // +0x200 0x5b8bc8
    boost::intrusive_ptr<ITexture> createTextureImpl(const char* name, const STextureDesc& desc) override;  // +0x204 0x5b5f6c
    void commitCurrentMaterial() override;                                            // +0x208 0x5b7594
    void commitMaterialRenderer(CMaterialRenderer* renderer) override;                // +0x20c 0x5b739c
    // +0x218 0x5af06c in CProgrammableGLDriver: presents the frame. Pure here; swapBuffers calls it.
    virtual bool swapBuffersImpl(int32_t mode) = 0;

    // ---- non-virtual members ----
    // 0x5b26f0: binds a texture to a unit and texture type; false for a unit past the unit count.
    bool setTexture(uint32_t unit, ITexture* texture, E_TEXTURE_TYPE type);
    // 0x5b3afc: reads the GL version, capabilities and extensions into the capability word, the pixel-format table and the
    // option words, then builds the screen framebuffer and runs the derived driver's init. True when that init succeeded.
    bool genericDriverInit(const core::dimension2d<int32_t>& screenSize, bool flag);
    // 0x5b64c0: updates a buffer that has data and returns it. 0x5b6514: makes the buffer current for its target and returns the
    // client-memory pointer to draw from (null unless the buffer is a usage-4 one).
    IBuffer* updateBinding(IBuffer* buffer);
    const void* setBuffer(IBuffer* buffer);
    // 0x5b69c0: re-applies the cached render state to GL.
    void restoreRenderState();
    // 0x5b74e8: applies the pass's render state, makes its program current and commits the material's parameters for it.
    // Partial: the parameter commit (commitCurrentMaterialParametersAux<CMaterial>) is called with the pass's binding table.
    void commitCurrentMaterialImpl(uint8_t pass);
    // 0x5b8b8c
    void commitPassParameters(uint8_t pass, const CVertexStreams* streams, const uint8_t* attributeMap);

    // The scissor and non-grouped parts of IVideoDriver::setRenderState (0x5b759c, 0x5b76c4) for detail::driver::SRenderState.
    void applyRenderStateScissor(const detail::driver::SRenderState& state);
    void applyRenderStateNonGrouped(const detail::driver::SRenderState& state);
    // The grouped render-pass apply paths for detail::renderpass::SRenderState (0x5af654, 0x5af7a4, 0x5af88c, 0x5afa78,
    // 0x5b70cc), next to applyRenderStateBlend (0x5af3f8) and applyRenderStateDepthTest (0x5af6fc) below.
    void applyRenderStateCullFace(const detail::renderpass::SRenderState& state);
    void applyRenderStatePolygonOffset(const detail::renderpass::SRenderState& state);
    void applyRenderStateSampleCoverage(const detail::renderpass::SRenderState& state);
    void applyRenderStateStencil(const detail::renderpass::SRenderState& state);
    void applyRenderStateNonGrouped(const detail::renderpass::SRenderState& state);

    // Render-state apply paths. In the original these are members of the template instance, applied to
    // detail::renderpass::SRenderState only, so they are declared here for that one argument type.
    // 0x5af3f8 applyRenderStateBlend<SRenderState>: blend enable, equation, factors, colour.
    void applyRenderStateBlend(const detail::renderpass::SRenderState& state);
    // 0x5af6fc applyRenderStateDepthTest<SRenderState>: depth test enable and depth function.
    void applyRenderStateDepthTest(const detail::renderpass::SRenderState& state);

    // Test helpers, not in the original.
    uint32_t getColorMaskBits() const { return m_shadow.m_colorMask; }
    int32_t getScissorFlag() const { return m_shadow.m_scissorFlag; }
    size_t getBufferMapSize() const { return m_bufferMap.size(); }

    // ---- data members past CCommonGLDriverBase ----
    uint32_t m_reloadIndex = 0;  // +0x7f0
    uint32_t m_reloadCount = 0;  // +0x7f4
    // +0x7f8 the texture name-map iterator and +0x7fc the shader name-map iterator (reloadShaders); the map iterators of the
    // port's SIDedCollection are the cursors.
    CTextureManager::Map::const_iterator m_textureCursor{};
    decltype(IShaderManager::m_shaders)::Map::const_iterator m_shaderCursor{};
    // BufferInfo entries; field names are not identified (arg1..arg3 are the three uint32 arguments of registerBufferMap; the key is
    // not stored again).
    struct BufferInfo {
        uint32_t arg1 = 0;     // +0x14 in the node
        uint32_t arg2 = 0;     // +0x18
        uint32_t arg3 = 0;     // +0x1c
        size_t byteCount = 0;  // +0x20
        void* data = nullptr;  // +0x24, malloc copy, freed on unregister and clear
    };
    std::map<uint32_t, BufferInfo> m_bufferMap;  // +0x800 in the original
};

namespace detail {
// 0x5b73e0 applyRenderStates<CCommonGLDriver>(CMaterial*, unsigned char, unsigned char, CCommonGLDriver*)
void applyRenderStates(CMaterial* material, uint8_t technique, uint8_t pass, CCommonGLDriver* driver);
// The draw helpers of CProgrammableGLDriver<CGLSLShaderHandler> (0x5b09c8, 0x5b0638, 0x5b076c, 0x5b07f0, 0x5b08e8).
bool drawPrimitives(const CPrimitiveStream& stream, E_POLYGON_MODE mode, const void* indices);
bool drawIndexedSoftPolygonMode(const CPrimitiveStream& stream, E_POLYGON_MODE mode, const void* indices);
bool drawIndexedSoftQuads(const CPrimitiveStream& stream, const void* indices);
bool drawUnindexedSoftPolygonMode(const CPrimitiveStream& stream, E_POLYGON_MODE mode);
bool drawUnindexedSoftQuads(const CPrimitiveStream& stream);
}  // namespace detail

}  // namespace glitch::video
