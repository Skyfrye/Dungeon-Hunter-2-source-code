// glitch::video::CCommonGLDriverBase: GL driver state shared by the GLES1/GLES2 back ends. In the original it derives
// from IVideoDriver directly (constructor 0x6de3a8 C1 / 0x6de5f8 C2 calls IVideoDriver::IVideoDriver at 0x5aaf1c with
// (device, shader manager, 0, 0, 0, null light), which makes the three managers and the default light), and its object
// continues IVideoDriver's 0x160 bytes:
//   +0x160 byte (the 2D-mode option saved by beginScene2D)   +0x164..+0x1c3 four 24-byte records (not identified)
//   +0x1c4 SShadowRenderState (0x90 bytes, the cached GL render state)   +0x254 SCommonShadowState (0x30 bytes, the
//   bound buffer name per buffer target)   +0x284 colour format (10)   +0x288 six CMatrix4 (68 bytes each): the three
//   transform states and, at +0x354 / +0x398 / +0x3dc, the copies beginScene2D saves   +0x420 bound texture table
//   (4 texture types x 8 units)   +0x4a0 front-face flip   +0x4a8 maximum anisotropy   +0x4ac 39 pixel-format rows of
//   20 bytes   +0x7b8 14 words (+0x7ec capability word 2), the object ends at +0x7f0. Derived classes continue there.
// Member names come from the accessor names; the offsets are the original ones.
#pragma once

#include <cstdint>

#include "glitch-video/buffer.hpp"
#include "glitch-video/deps/glitch_core.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/deps/glitch_video_types.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

class CCommonGLDriverBase : public IVideoDriver {
public:
    // The cached GL render state (0x90 bytes at +0x1c4 of the driver; offsets below are relative to the struct). The
    // constructor 0x6dcac0 gives the defaults: depth test and depth mask on, depth function 3, all four colour-mask
    // channels on, stencil function 7 with mask 0xff, blend source 1, clear colour opaque black, unit clear depth,
    // depth range 0..1, line width, point size, polygon-offset units and sample-coverage value 1.
    struct SShadowRenderState {
        SShadowRenderState();  // 0x6dcac0
        bool m_blendEnable = false;                  // +0x00
        bool m_cullFaceEnable = false;               // +0x01
        bool m_depthTestEnable = true;               // +0x02
        bool m_depthMask = true;                     // +0x03
        bool m_ditherEnable = false;                 // +0x04
        uint8_t m_pad05[3] = {};                     // +0x05 .. +0x07 (not accessed)
        bool m_polygonOffsetFillEnable = false;      // +0x08
        bool m_polygonOffsetLineEnable = false;      // +0x09
        bool m_polygonOffsetPointEnable = false;     // +0x0a
        bool m_unk0b = false;                        // +0x0b, written 0 by the constructor
        bool m_sampleAlphaToCoverageEnable = false;  // +0x0c
        bool m_sampleCoverageEnable = false;         // +0x0d
        bool m_sampleCoverageInvert = false;         // +0x0e
        bool m_scissorEnable = false;                // +0x0f
        bool m_stencilTestEnable = false;            // +0x10
        E_FACE_SIDE m_cullFace = 0;                  // +0x14
        E_FACE_WINDING m_frontFace = 0;              // +0x18
        E_COMPARE_FUNC m_depthFunc = 3;              // +0x1c
        E_POLYGON_MODE m_polygonModeFront = 0;       // +0x20
        E_POLYGON_MODE m_polygonModeBack = 0;        // +0x24
        uint32_t m_colorMask = 0x01010101u;          // +0x28, packed R | G<<8 | B<<16 | A<<24 (one byte per channel)
        uint8_t m_stencilFunc = 7;                   // +0x2c
        uint8_t m_stencilFuncRef = 0;                // +0x2d
        uint8_t m_stencilFuncMask = 0xff;            // +0x2e
        uint8_t m_unk2f = 0;                         // +0x2f
        uint8_t m_stencilOpFail = 0;                 // +0x30
        uint8_t m_stencilOpZFail = 0;                // +0x31
        uint8_t m_stencilOpZPass = 0;                // +0x32
        uint8_t m_unk33 = 0;                         // +0x33
        uint8_t m_stencilMask = 0xff;                // +0x34
        uint8_t m_clearStencil = 0;                  // +0x35
        E_BLEND_EQUATION m_blendEquation = 0;        // +0x38
        uint8_t m_blendSrc = 1;                      // +0x3c
        uint8_t m_blendDst = 0;                      // +0x3d
        uint16_t m_unk3e = 0;                        // +0x3e
        uint32_t m_blendColor = 0;                   // +0x40, packed SColor
        uint32_t m_clearColor = 0xff000000u;         // +0x44, packed SColor (alpha 0xff)
        float m_clearDepth = 1.0f;                   // +0x48
        float m_depthRangeNear = 0.0f;               // +0x4c
        float m_depthRangeFar = 1.0f;                // +0x50
        float m_lineWidth = 1.0f;                    // +0x54
        float m_pointSize = 1.0f;                    // +0x58
        float m_polygonOffsetFactor = 0.0f;          // +0x5c
        float m_polygonOffsetUnits = 1.0f;           // +0x60
        float m_sampleCoverageValue = 1.0f;          // +0x64
        core::rect<int32_t> m_scissor{};             // +0x68
        int32_t m_scissorFlag = 0;                   // +0x78, the render-target key cached with the scissor
        core::rect<int32_t> m_viewport{};            // +0x7c
        int32_t m_viewportFlag = 0;                  // +0x8c, the same key cached with the viewport

        // 0x6dcfb4: fills the driver-level render state block from this cache.
        void getRenderState(detail::driver::SRenderState& out) const;
    };

    // Shadow copy of the driver state: the bound buffer name per buffer target (0x30 bytes at +0x254). The constructor
    // 0x6dcd54 (C2) / 0x6dcd90 (C1) zeroes it and stores 4 in the word at +0x18.
    struct SCommonShadowState {
        SCommonShadowState();  // 0x6dcd54 (C2) / 0x6dcd90 (C1)
        uint32_t m_words[12];  // +0x00..+0x2c
    };

    // One pixel-format row of the capability table at +0x4ac (20 bytes): two halfwords set to 39 by the constructor, then
    // the GL internal format, format and type (read by the texture upload) and a fourth word.
    struct SFormatRow {
        uint16_t m_unk00 = 39;
        uint16_t m_unk02 = 39;
        uint32_t m_internalFormat = 0;
        uint32_t m_format = 0;
        uint32_t m_type = 0;
        uint32_t m_unk10 = 0;
    };

    // The four 24-byte vertices at +0x164 that drawQuads fills: texture coordinates, colour, position (the constructor zeroes all
    // but the colour word).
    struct SQuadVertex {
        float m_u = 0.0f;       // +0x00
        float m_v = 0.0f;       // +0x04
        SColor m_color{};       // +0x08
        float m_x = 0.0f;       // +0x0c
        float m_y = 0.0f;       // +0x10
        float m_z = 0.0f;       // +0x14
    };

    class CBufferBase : public IBuffer {
    public:
        // 0x6ddf18 (C2) / 0x6ddf84 (C1): IBuffer base, then the driver and a zeroed word.
        CBufferBase(CCommonGLDriverBase* driver, E_BUFFER_TYPE type, E_BUFFER_USAGE usage,
                    uint32_t size, void* data, bool flag);
        // The class stays abstract (bindImpl, unbindImpl, mapImpl, unmapImpl and cloneImpl are pure in the base; the
        // GL buffer CCommonGLDriver<...>::CBuffer implements them). Vtable: the IBuffer slots with +0x1c overridden.
        uint8_t* getMappedPtr() const override;  // +0x1c  0x6dcbe4
        ~CBufferBase() override = default;       // 0x6dd160 (D1) / 0x6de1e8 (D0)
        CCommonGLDriverBase* m_driver = nullptr;  // +0x14
        uint32_t m_glName = 0;                    // +0x18, zeroed by the constructor: the GL buffer name (CBuffer::update, setBuffer)
        uint8_t* m_mappedPtr = nullptr;           // +0x1c
    };

    // Derives from glitch::video::ITexture (texture.hpp, 0x54 bytes). The base constructor (0x5fe404) provides
    // the name, the descriptor fields, the level table, the dirty bitmap and the driver pointer, so only the two
    // words at +0x54 and +0x58 are kept here. The class stays abstract: bindImpl, unbindImpl, mapImpl and
    // generateMipmapsImpl are pure in ITexture and are overridden by the GL texture classes.
    class CTextureBase : public ITexture {
    public:
        // 0x6dded8 (C2) / 0x6dde98 (C1). The driver is passed to the ITexture base as its IVideoDriver.
        CTextureBase(const char* name, CCommonGLDriverBase* driver, const STextureDesc& desc);
        uint8_t* mapImpl(uint8_t access, E_TEXTURE_CUBE_MAP_FACE face, uint8_t level) override;  // +0x14, 0x6ddd44
        uint8_t* getMappedPtr() const override;  // +0x1c, 0x6dcbec
        void unmapImpl() const override;         // +0x18, 0x6dcbf4
        uint32_t m_glName = 0;     // +0x54, zeroed by the constructor: the GL texture name (setTexture, reloadTexturesData)
        uint8_t m_reloading = 0;   // +0x58, zeroed by the constructor: raised while reloadTexturesData unbinds the texture
    };

    // The screen-style framebuffer target: IFramebuffer (IRenderTarget plus the screen offset and margins, 0x34 bytes) with the
    // unbind slot filled in. Constructors 0x6ddcac (C2) / 0x6ddcf8 (C1), vtable 0x98b0c8; D1 0x6dd10c / D2 0x6dd130.
    class CFramebufferBase : public IVideoDriver::IFramebuffer {
    public:
        CFramebufferBase(CCommonGLDriverBase* driver, const core::dimension2d<int32_t>& size);  // 0x6ddcac / 0x6ddcf8
        ~CFramebufferBase() override = default;
        void unbind() override;  // +0x14  0x6dcbf8
    };

    // The GL render buffer base (vtable 0x977878): IRenderBuffer plus the pixel format and the size. D1 0x5af1d4 / D0 0x5b04ac.
    class CRenderBufferBase : public IRenderBuffer {
    public:
        CRenderBufferBase(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size)
            : m_format(format), m_width(size.Width), m_height(size.Height) {}
        ~CRenderBufferBase() override = default;
        E_PIXEL_FORMAT m_format = 0;  // +0x08
        int32_t m_width = 0;          // +0x0c
        int32_t m_height = 0;         // +0x10
    };

    // Derives from IMultipleRenderTarget (render_target.hpp), which derives from IRenderTarget (0x24 bytes), so the
    // base supplies the vptr, the driver, the target size and the viewport that the original keeps at +0x08..+0x23.
    // The class stays abstract: bind, unbind, the two addTarget and setTarget overloads and removeTarget are pure in
    // the bases and are not reconstructed for this class.
    class CRenderTargetBase : public IMultipleRenderTarget {
    public:
        // One attachment slot, 8 bytes in the original: a 16-bit kind (255 = empty), two flag
        // bytes, then a reference-counted object pointer at +4.
        // kind: 0 = texture (flagA = cube face, flagB = level), 1 = render buffer, 255 = empty. The destructor (0x5b25e4) drops
        // the object and resets the slot.
        struct SAttachment {
            uint16_t kind = 255;      // +0x00
            uint8_t flagA = 0;        // +0x02
            uint8_t flagB = 0;        // +0x03
            glitch::IReferenceCounted* object = nullptr;  // +0x04, reference-counted
            SAttachment() = default;
            SAttachment(const SAttachment&) = delete;
            SAttachment& operator=(const SAttachment&) = delete;
            ~SAttachment() { release(); }
            void release();  // 0x5b25e4
        };
        // 0x6dca20: the destination takes (and counts) the source's object; the kind-1 flags are cleared.
        static void copyAttachment(SAttachment& destination, const SAttachment& source);
        // 0x6dd1c8: validates the slot request against the target's size, format and attachments and returns the slot (or null).
        SAttachment* setTarget(E_ATTACHMENT_TYPE type, E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size,
                               IReferenceCounted* object, uint32_t index);
        // 0x6dd534 (texture) / 0x6dd628 (render buffer).
        bool setTargetInternal(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<ITexture>& texture, E_TEXTURE_CUBE_MAP_FACE face,
                               uint32_t level, uint32_t index);
        bool setTargetInternal(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<IRenderBuffer>& buffer, uint32_t index);

        // 0x6ddbec (C2) / 0x6ddb2c (C1). The IRenderTarget base takes the driver and the size {-1, -1}. The member
        // initialisers below give the state that the constructor writes after the base call.
        explicit CRenderTargetBase(CCommonGLDriverBase* driver);
        E_PIXEL_FORMAT getColorFormat() const override;  // +0x18, 0x6dcd4c
        // 0x6dcbfc: number of targets for an IRenderTarget::E_ATTACHMENT_TYPE (int32 alias).
        // Type 0 returns the byte at +0x59, types 1 and 2 test the two handles, and type 3
        // tests that the first handle is set and equal to the second.
        int32_t getTargetCount(E_ATTACHMENT_TYPE attachmentType) const override;  // +0x2c
        // The attachment interface (declared only): 0x6dd6d4 / 0x6dd604 addTarget, 0x6dd6d0 / 0x6dd600 setTarget, 0x6dcc68 removeTarget.
        void addTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<IRenderBuffer>& buffer) override;  // +0x1c
        void addTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<ITexture>& texture, E_TEXTURE_CUBE_MAP_FACE face,
                       uint32_t level) override;                                                               // +0x20
        void setTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<IRenderBuffer>& buffer, uint32_t index) override;  // +0x24
        void setTarget(E_ATTACHMENT_TYPE type, const boost::intrusive_ptr<ITexture>& texture, E_TEXTURE_CUBE_MAP_FACE face,
                       uint32_t level, uint32_t index) override;                                               // +0x28
        void removeTarget(E_ATTACHMENT_TYPE type, uint32_t index) override;                                    // +0x30
        // Test helper, not in the original: sets the three fields that getTargetCount reads.
        void setTargetStateForTest(glitch::IReferenceCounted* attachment0, glitch::IReferenceCounted* attachment1, uint8_t count) {
            m_attachment0.release();
            m_attachment1.release();
            if (attachment0 != nullptr) { ++attachment0->referenceCounter; m_attachment0.kind = 1; m_attachment0.object = attachment0; }
            if (attachment1 != nullptr) { ++attachment1->referenceCounter; m_attachment1.kind = 1; m_attachment1.object = attachment1; }
            m_targetCount = count;
        }
        uint32_t m_glName = 0;                 // +0x24, the GL framebuffer name (0 until the first bind)
        SAttachment m_slots[4];                // +0x28..+0x47, four attachment slots
        SAttachment m_attachment0;             // +0x48, object pointer at +0x4c
        SAttachment m_attachment1;             // +0x50, object pointer at +0x54
        E_PIXEL_FORMAT m_colorFormat = static_cast<E_PIXEL_FORMAT>(39);  // +0x58, set by the constructor
        uint8_t m_targetCount = 0;             // +0x59, byte
        uint8_t m_flag5a = 1;                  // +0x5a, set by the constructor (meaning not named)
    };

    // 0x6de3a8 (C1) / 0x6de5f8 (C2): IVideoDriver's constructor with the three managers left null (so it creates them),
    // then the cached state.
    CCommonGLDriverBase(glitch::IDevice* device, IShaderManager* shaderManager);
    // 0x6ddaa8 (D2) / 0x6ddadc (D1) / 0x6ddaf8 (D0).
    ~CCommonGLDriverBase() override;
    // 0x6dd734: logs the extension string and sets the bit of every recognised extension (E_GL_EXTENSION index: bit index & 31
    // of word m_unk7b8[index >> 5]). A name is only recognised when a space follows it, so the last extension in the string is
    // skipped, as in the binary.
    void initExtensions(const uint8_t* extensions);
    // 0x6ddff0: draws one textured quad (a triangle strip right-bottom, right-top, left-bottom, left-top) from the rectangle, its
    // texture rectangle and its four corner colours (upper left, lower left, lower right, upper right) through the driver's
    // immediate vertex buffer.
    void drawQuads(const core::rect<int32_t>& position, const core::rect<float>& texture, const SColor* colors);

    // ---- IVideoDriver slots this class implements (the getters; the setters are in the derived class) ----
    E_PIXEL_FORMAT getColorFormat() const override;                                // +0x68  0x6dcdcc
    const core::CMatrix4<float>& getTransform(E_TRANSFORMATION_STATE state) const override;  // +0x70  0x6dcdd4
    bool getBlendEnable() const override;                                          // +0xb0  0x6dcde8
    SColor getBlendColor() const override;                                         // +0xb8  0x6dcdf0
    E_BLEND_EQUATION getBlendEquation() const override;                            // +0xc0  0x6dce24
    void getBlendFunc(E_BLEND_FACTOR& src, E_BLEND_FACTOR& dst) const override;    // +0xc8  0x6dce2c
    void getColorMask(bool& r, bool& g, bool& b, bool& a) const override;          // +0xd0  0x6dce40
    SColor getClearColor() const override;                                         // +0xd8  0x6dce68
    bool getCullFaceEnable() const override;                                       // +0xe0  0x6dce9c
    E_FACE_SIDE getCullFace() const override;                                      // +0xe8  0x6dcea4
    E_FACE_WINDING getFrontFace() const override;                                  // +0xf0  0x6dceac
    bool getDepthTestEnable() const override;                                      // +0xf8  0x6dceb4
    E_COMPARE_FUNC getDepthFunc() const override;                                  // +0x100 0x6dcebc
    bool getDepthMask() const override;                                            // +0x108 0x6dcec4
    float getClearDepth() const override;                                          // +0x110 0x6dcecc
    void getDepthRange(float& nearValue, float& farValue) const override;          // +0x118 0x6dced4
    bool getDitherEnable() const override;                                         // +0x120 0x6dcee8
    float getLineWidth() const override;                                           // +0x128 0x6dcef0
    float getPointSize() const override;                                           // +0x130 0x6dcef8
    E_POLYGON_MODE getPolygonModeFront() const override;                           // +0x138 0x6dcf00
    E_POLYGON_MODE getPolygonModeBack() const override;                            // +0x140 0x6dcf08
    bool getPolygonOffsetFillEnable() const override;                              // +0x148 0x6dcf10
    bool getPolygonOffsetLineEnable() const override;                              // +0x150 0x6dcf18
    bool getPolygonOffsetPointEnable() const override;                             // +0x158 0x6dcf20
    void getPolygonOffset(float& factor, float& units) const override;             // +0x160 0x6dcf28
    bool getSampleAlphaToCoverageEnable() const override;                          // +0x168 0x6dcf3c
    bool getSampleCoverageEnable() const override;                                 // +0x170 0x6dcf44
    bool getSampleCoverageInvert() const override;                                 // +0x178 0x6dcf4c
    float getSampleCoverageValue() const override;                                 // +0x180 0x6dcf54
    bool getScissorEnable() const override;                                        // +0x188 0x6dcf5c
    const core::rect<int32_t>& getScissor() const override;                        // +0x190 0x6dcf64
    bool getStencilTestEnable() const override;                                    // +0x198 0x6dcf6c
    E_COMPARE_FUNC getStencilFunc() const override;                                // +0x1a0 0x6dcf74
    uint8_t getStencilFuncRef(bool* flag) const override;                          // +0x1a8 0x6dcf7c
    uint8_t getStencilFuncMask(bool* flag) const override;                         // +0x1b0 0x6dcf84
    E_STENCIL_OP getStencilOpFail() const override;                                // +0x1b8 0x6dcf8c
    E_STENCIL_OP getStencilOpZFail() const override;                               // +0x1c0 0x6dcf94
    E_STENCIL_OP getStencilOpZPass() const override;                               // +0x1c8 0x6dcf9c
    uint8_t getStencilMask(bool* flag) const override;                             // +0x1d0 0x6dcfa4
    uint8_t getClearStencil() const override;                                      // +0x1d8 0x6dcfac
    void getRenderState(detail::driver::SRenderState& state) const override;       // +0x1e0 0x6dd0ac

    // ---- non-virtual members ----
    // 0x6de260: sets the 2D projection for the current target.
    void set2DProjection();
    // 0x6dd9d0: converts a projection matrix for GL's clip space: the depth row is remapped (z' = 2z - 1 on the element that carries
    // the depth scale, doubled on the translation otherwise), the y column is negated when the front-face flip byte is set, and
    // the orientation fix-up follows.
    void fixUpProjectionMatrix(core::CMatrix4<float>& projection) const;
    // 0x6dd884: converts a screen rectangle into GL window coordinates for the current target and orientation.
    bool fixUpScreenArea(const core::rect<int32_t>& area, int32_t& x, int32_t& y, int32_t& width, int32_t& height,
                         bool scissor, bool flip) const;

    // ---- data members (the object continues IVideoDriver's 0x160 bytes; names come from the accessors) ----
    bool m_saved2DOption = false;              // +0x160
    SQuadVertex m_quadVertices[4];             // +0x164..+0x1c3
    SShadowRenderState m_shadow;               // +0x1c4..+0x253
    SCommonShadowState m_common;               // +0x254..+0x283
    E_PIXEL_FORMAT m_colorFormat = 10;         // +0x284, set by the constructor
    core::CMatrix4<float> m_matrices[6];       // +0x288, +0x2cc, +0x310 (the transform states); +0x354 / +0x398 / +0x3dc (beginScene2D copies)
    ITexture* m_textureTable[4][8] = {};       // +0x420, bound texture per (texture type, unit); 4-byte pointers in the original
    bool m_frontFaceFlip = false;              // +0x4a0, byte at word index 0x128: inverts the winding map
    uint8_t m_maxColorAttachments = 0;         // +0x4a1: the colour attachment limit of a render target (setTarget)
    uint32_t m_glVersion = 0;                  // +0x4a4: 100 x major + minor of the GL version string (genericDriverInit)
    float m_maxAnisotropy = 0.0f;              // +0x4a8
    SFormatRow m_formatTable[42];              // +0x4ac..+0x7b7 in the original (39 rows); the port adds row 39 (unused) and the ETC2 rows 40, 41
    uint32_t m_unk7b8[14] = {};                // +0x7b8..+0x7ef; word 13 (+0x7ec) is capability word 2
};

}  // namespace glitch::video
