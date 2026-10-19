// glitch::video::CNullDriver: the null video driver (every state is a constant, nothing is drawn). Derives from
// IVideoDriver and implements its pure slots; the nested CBuffer, CTexture and CFramebuffer derive from IBuffer,
// ITexture and IVideoDriver::IFramebuffer. The class and its slot order are checked by the `override` on every
// declaration below (the signatures come from the vtable listing, tools/decomp_vtable.py glitch::video::CNullDriver).
//
// Layout of the original object (32-bit; constructors 0x5b9840 C1 / 0x5b99bc C2 with an IDevice*, and 0x5b9610 / 0x5b9764
// with another driver): IVideoDriver (0x160 bytes), then
//   +0x160  CMatrix4<float> x3 (68 bytes each, identity after construction): the view, world and projection transforms
//           setTransform / getTransform index (E_TRANSFORMATION_STATE) *68 + 0x160. The object ends at +0x22c.
// The constructor assigns the strings "NullDriver" (IVideoDriver +0x08) and "Not available on this driver." (+0x20),
// calls initDriver (0x5b942c: zeroes IVideoDriver +0x8c..+0x98, creates the 0x34-byte screen framebuffer sized from the
// device and pushes it on the target stack) and IVideoDriver::init(1, 1, 0).
#pragma once

#include <cstdint>

#include "glitch-shared/glitch_core.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

class CNullDriver : public IVideoDriver {
public:
    // Vtable of the nested buffer (0x977fa8): the six IBuffer slots, nothing else. Object size 0x14 (IBuffer itself).
    class CBuffer : public IBuffer {
    public:
        using IBuffer::IBuffer;
        ~CBuffer() override = default;                      // 0x5b9188 (D1) / 0x5b96ec (D0)
        void bindImpl(bool) override;                       // +0x0c  0x5b8d88
        void unbindImpl() override;                         // +0x10  0x5b8d8c
        uint8_t* mapImpl(uint32_t) const override;          // +0x14  0x5b8d90
        void unmapImpl() const override;                    // +0x18  0x5b8d98
        uint8_t* getMappedPtr() const override;             // +0x1c  0x5b8d9c
        boost::intrusive_ptr<IBuffer> cloneImpl() const override;  // +0x20  0x5b934c
    };

    // Vtable of the nested texture: the six ITexture slots; object size 0x54 (ITexture itself).
    class CTexture : public ITexture {
    public:
        // 0x5b9558 (C1) / 0x5b95dc (C2): the ITexture base constructor.
        CTexture(const char* name, CNullDriver* driver, const STextureDesc& desc);
        ~CTexture() override = default;                     // 0x5b91bc (D1) / 0x5b9728 (D0)
        bool bindImpl(bool) override;                       // +0x0c  0x5b8da4
        void unbindImpl() override;                         // +0x10  0x5b8dbc
        uint8_t* mapImpl(uint8_t, E_TEXTURE_CUBE_MAP_FACE, uint8_t) override;  // +0x14  0x5b8dc0
        void unmapImpl() const override;                    // +0x18  0x5b8dc8
        uint8_t* getMappedPtr() const override;             // +0x1c  0x5b8dcc
        void generateMipmapsImpl() override;                // +0x20  0x5b8dd4
    };

    // Vtable of the nested framebuffer: IFramebuffer plus bind / unbind. Object size 0x34.
    class CFramebuffer : public IVideoDriver::IFramebuffer {
    public:
        using IFramebuffer::IFramebuffer;
        ~CFramebuffer() override = default;                 // 0x5b9100 (D1) / 0x5b9104 (D0)
        void bind() override;                               // +0x10  0x5b8dd8
        void unbind() override;                             // +0x14  0x5b8ddc
    };

    // 0x5b9840 (C1) / 0x5b99bc (C2). Partial: the original creates a CNullShaderManager (0x54 bytes) and passes it to
    // the IVideoDriver constructor, and reads the screen size from the device (IDevice +0x60); the port has neither the
    // shader manager base (IShaderManager's constructor is not reconstructed) nor an IDevice layout, so the shader manager
    // stays null and the screen framebuffer is 0 x 0.
    explicit CNullDriver(glitch::IDevice* device);
    // 0x5b9610 (C1) / 0x5b9764 (C2): a null driver sharing the device, managers and default light of another driver.
    // Declared only.
    explicit CNullDriver(IVideoDriver* other);
    // 0x5b94d4 (D1) / 0x5b9524 (D2) / 0x5b9508 (D0).
    ~CNullDriver() override;

    // 0x5b942c: zeroes IVideoDriver +0x8c..+0x98, builds the screen framebuffer and pushes it on the target stack.
    void initDriver();
    // 0x5b9240: logs the driver name and version through os::Printer. Declared only.
    void printVersion();

    // ---- vtable slots in order (overrides of IVideoDriver) ----
    bool beginScene() override;  // +0xc  0x5b8de0
    bool endScene() override;  // +0x10  0x5b93ec
    bool beginScene2D() override;  // +0x14  0x5b8dfc
    bool endScene2D() override;  // +0x18  0x5b8e04
    void draw2DLine(const core::position2d<int32_t>& start, const core::position2d<int32_t>& end, SColor color) override;  // +0x2c  0x5b9094
    void draw2DRectangle(const core::rect<int32_t>& position, const core::rect<int32_t>& clip, const SColor* colors, const core::rect<int32_t>* clipRect) override;  // +0x34  0x5b90a0
    bool ReinitDriver() override;  // +0x38  0x5b8e0c
    bool reloadTexturesData() override;  // +0x3c  0x5b8e28
    void reloadShaders() override;  // +0x40  0x5b8e30
    void resetTexturesLoader() override;  // +0x44  0x5b8e24
    void registerBufferMap(uint32_t a, uint32_t b, uint32_t c, uint32_t d, const void* data) override;  // +0x48  0x5b8e14
    void ReloadbufferMap() override;  // +0x4c  0x5b8e18
    void unregisterBufferMap(uint32_t id) override;  // +0x50  0x5b8e1c
    void clearBufferMap() override;  // +0x54  0x5b8e20
    E_DRIVER_TYPE getDriverType() const override;  // +0x5c  0x5b90ac
    bool checkDriverReset() override;  // +0x64  0x5a20b4
    E_PIXEL_FORMAT getColorFormat() const override;  // +0x68  0x5b90a4
    void setTransform(E_TRANSFORMATION_STATE state, const core::CMatrix4<float>& matrix) override;  // +0x6c  0x5b93d0
    const core::CMatrix4<float>& getTransform(E_TRANSFORMATION_STATE state) const override  // +0x70  0x5b9064
        asm("_ZNK6glitch5video11CNullDriver12getTransformENS0_22E_TRANSFORMATION_STATEE");
    void restoreShadowState() override;  // +0x74  0x5b90f0
    boost::intrusive_ptr<IBuffer> createBuffer(E_BUFFER_TYPE type, E_BUFFER_USAGE usage, uint32_t size, void* data, bool flag) override;  // +0x78  0x5b92cc
    boost::intrusive_ptr<IRenderBuffer> createRenderBuffer(const core::dimension2d<int32_t>& size, E_PIXEL_FORMAT format) override;  // +0x80  0x5b90cc
    boost::intrusive_ptr<IRenderTarget> createRenderTarget(const boost::intrusive_ptr<ITexture>& texture, uint32_t flags) override;  // +0x84  0x5b90d8
    boost::intrusive_ptr<IRenderTarget> createMultipleRenderTarget() override;  // +0x88  0x5b90e4
    boost::intrusive_ptr<CImage> createScreenShot() override;  // +0x98  0x5b90b4
    bool captureFramebufferImpl(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& position, const core::rect<int32_t>& area, uint8_t level, E_TEXTURE_CUBE_MAP_FACE face, bool flag) override;  // +0x9c  0x5b8de8
    bool swapBuffers(int32_t mode) override;  // +0xa4  0x5b8df0
    void clearBuffers(int32_t mask) override;  // +0xa8  0x5b8df8
    bool getBlendEnable() const override;  // +0xb0  0x5b8e34
    void setBlendEnable(bool enable) override;  // +0xb4  0x5b8fb4
    SColor getBlendColor() const override;  // +0xb8  0x5b8e3c
    void setBlendColor(SColor color) override;  // +0xbc  0x5b8fb8
    E_BLEND_EQUATION getBlendEquation() const override;  // +0xc0  0x5b8e4c
    void setBlendEquation(E_BLEND_EQUATION equation) override;  // +0xc4  0x5b8fc4
    void getBlendFunc(E_BLEND_FACTOR& source, E_BLEND_FACTOR& destination) const override;  // +0xc8  0x5b8e54
    void setBlendFunc(E_BLEND_FACTOR source, E_BLEND_FACTOR destination) override;  // +0xcc  0x5b8fc8
    void getColorMask(bool& r, bool& g, bool& b, bool& a) const override;  // +0xd0  0x5b8e68
    void setColorMask(bool r, bool g, bool b, bool a) override;  // +0xd4  0x5b8fcc
    SColor getClearColor() const override;  // +0xd8  0x5b8e84
    void setClearColor(SColor color) override;  // +0xdc  0x5b8fd0
    bool getCullFaceEnable() const override;  // +0xe0  0x5b8e94
    void setCullFaceEnable(bool enable) override;  // +0xe4  0x5b8fdc
    E_FACE_SIDE getCullFace() const override;  // +0xe8  0x5b8e9c
    void setCullFace(E_FACE_SIDE side) override;  // +0xec  0x5b8fe0
    E_FACE_WINDING getFrontFace() const override;  // +0xf0  0x5b8ea4
    void setFrontFace(E_FACE_WINDING winding) override;  // +0xf4  0x5b8fe4
    bool getDepthTestEnable() const override;  // +0xf8  0x5b8eac
    void setDepthTestEnable(bool enable) override;  // +0xfc  0x5b8fe8
    E_COMPARE_FUNC getDepthFunc() const override;  // +0x100  0x5b8eb4
    void setDepthFunc(E_COMPARE_FUNC func) override;  // +0x104  0x5b8fec
    bool getDepthMask() const override;  // +0x108  0x5b8ebc
    void setDepthMask(bool mask) override;  // +0x10c  0x5b8ff0
    float getClearDepth() const override;  // +0x110  0x5b8ec4
    void setClearDepth(float depth) override;  // +0x114  0x5b8ff4
    void getDepthRange(float& nearValue, float& farValue) const override;  // +0x118  0x5b8ecc
    void setDepthRange(float nearValue, float farValue) override;  // +0x11c  0x5b8ff8
    bool getDitherEnable() const override;  // +0x120  0x5b8ee0
    void setDitherEnable(bool enable) override;  // +0x124  0x5b8ffc
    float getLineWidth() const override;  // +0x128  0x5b8ee8
    void setLineWidth(float width) override;  // +0x12c  0x5b9000
    float getPointSize() const override;  // +0x130  0x5b8ef0
    void setPointSize(float size) override;  // +0x134  0x5b9004
    E_POLYGON_MODE getPolygonModeFront() const override;  // +0x138  0x5b8ef8
    void setPolygonModeFront(E_POLYGON_MODE mode) override;  // +0x13c  0x5b9008
    E_POLYGON_MODE getPolygonModeBack() const override;  // +0x140  0x5b8f00
    void setPolygonModeBack(E_POLYGON_MODE mode) override;  // +0x144  0x5b900c
    bool getPolygonOffsetFillEnable() const override;  // +0x148  0x5b8f08
    void setPolygonOffsetFillEnable(bool enable) override;  // +0x14c  0x5b9010
    bool getPolygonOffsetLineEnable() const override;  // +0x150  0x5b8f10
    void setPolygonOffsetLineEnable(bool enable) override;  // +0x154  0x5b9014
    bool getPolygonOffsetPointEnable() const override;  // +0x158  0x5b8f18
    void setPolygonOffsetPointEnable(bool enable) override;  // +0x15c  0x5b9018
    void getPolygonOffset(float& factor, float& units) const override;  // +0x160  0x5b8f20
    void setPolygonOffset(float factor, float units) override;  // +0x164  0x5b901c
    bool getSampleAlphaToCoverageEnable() const override;  // +0x168  0x5b8f34
    void setSampleAlphaToCoverageEnable(bool enable) override;  // +0x16c  0x5b9020
    bool getSampleCoverageEnable() const override;  // +0x170  0x5b8f3c
    void setSampleCoverageEnable(bool enable) override;  // +0x174  0x5b9024
    bool getSampleCoverageInvert() const override;  // +0x178  0x5b8f44
    void setSampleCoverageInvert(bool invert) override;  // +0x17c  0x5b9028
    float getSampleCoverageValue() const override;  // +0x180  0x5b8f4c
    void setSampleCoverageValue(float value) override;  // +0x184  0x5b902c
    bool getScissorEnable() const override;  // +0x188  0x5b8f54
    void setScissorEnable(bool enable) override;  // +0x18c  0x5b9030
    const core::rect<int32_t>& getScissor() const override;  // +0x190  0x5b8f5c
    void setScissor(const core::rect<int32_t>& rect) override;  // +0x194  0x5b9034
    bool getStencilTestEnable() const override;  // +0x198  0x5b8f6c
    void setStencilTestEnable(bool enable) override;  // +0x19c  0x5b9038
    E_COMPARE_FUNC getStencilFunc() const override;  // +0x1a0  0x5b8f74
    void setStencilFunc(E_COMPARE_FUNC func) override;  // +0x1a4  0x5b903c
    uint8_t getStencilFuncRef(bool* flag) const override;  // +0x1a8  0x5b8f7c
    void setStencilFuncRef(uint8_t ref) override;  // +0x1ac  0x5b9040
    uint8_t getStencilFuncMask(bool* flag) const override;  // +0x1b0  0x5b8f84
    void setStencilFuncMask(uint8_t mask) override;  // +0x1b4  0x5b9044
    E_STENCIL_OP getStencilOpFail() const override;  // +0x1b8  0x5b8f8c
    void setStencilOpFail(E_STENCIL_OP op) override;  // +0x1bc  0x5b9048
    E_STENCIL_OP getStencilOpZFail() const override;  // +0x1c0  0x5b8f94
    void setStencilOpZFail(E_STENCIL_OP op) override;  // +0x1c4  0x5b904c
    E_STENCIL_OP getStencilOpZPass() const override;  // +0x1c8  0x5b8f9c
    void setStencilOpZPass(E_STENCIL_OP op) override;  // +0x1cc  0x5b9050
    uint8_t getStencilMask(bool* flag) const override;  // +0x1d0  0x5b8fa4
    void setStencilMask(uint8_t mask) override;  // +0x1d4  0x5b9054
    uint8_t getClearStencil() const override;  // +0x1d8  0x5b8fac
    void setClearStencil(uint8_t value) override;  // +0x1dc  0x5b9058
    void getRenderState(detail::driver::SRenderState& state) const override;  // +0x1e0  0x5b905c
    void setRenderState(const detail::driver::SRenderState& state) override;  // +0x1e4  0x5b9060
    void setViewportImpl(const core::rect<int32_t>& rect) override;  // +0x1e8  0x5b9088
    uint32_t getMaxUserClipPlanes() const override;  // +0x1ec  0x5b908c
    bool drawImpl(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives, CDriverBinding** binding) override;  // +0x200  0x5b90f4
    boost::intrusive_ptr<ITexture> createTextureImpl(const char* name, const STextureDesc& desc) override;  // +0x204  0x5b958c
    void commitCurrentMaterial() override;  // +0x208  0x5b9078
    void commitMaterialRenderer(CMaterialRenderer* renderer) override;  // +0x20c  0x5b907c
    void onMaterialDestroyed(CMaterial* material) override;  // +0x210  0x5b90c0

    // ---- slots CNullDriver adds after the IVideoDriver ones ----
    virtual bool setRenderTarget(const boost::intrusive_ptr<ITexture>& texture, int32_t face);  // +0x218  0x5b9080
    virtual void beginCompile(IVideoDriver::ICompileData* data);                                   // +0x21c  0x5b90c4
    virtual void endCompile();                                                                     // +0x220  0x5b90c8
    virtual void commitCurrentMaterial(bool flag);                                                 // +0x224  0x5b90fc

    // Data members (original 32-bit offsets, after the IVideoDriver ones).
    core::CMatrix4<float> m_transforms[3];  // +0x160, +0x1a4, +0x1e8 (68 bytes each)
};

// 0x5b9b38: partial, see null_driver.cpp.
CNullDriver* createNullDriver(IDevice* device);

}  // namespace glitch::video

// glitch::video::CBatchDriver is defined at the end of this header, after CNullDriver is complete (it derives from it
// and takes an IVideoDriver*). batch_driver.hpp includes this header back, which is safe here: by this point
// null_driver.hpp is at its last line, so the re-include is a no-op and CBatchDriver sees the finished class.
#include "glitch-video/batch_driver.hpp"
