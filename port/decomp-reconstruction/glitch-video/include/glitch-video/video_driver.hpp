// glitch::video::IVideoDriver: the video driver interface (the Irrlicht IVideoDriver of the glitch engine). Canonical
// definition (engine unification wave u1-video); the stand-in in glitch-core-io (deps/glitch_core_objects.hpp) and the
// forward declarations in glitch-scene-collada-gui and game/ are replaced by this header.
//
// Object layout (32-bit; constructors 0x5aaf1c C2 / 0x5ab2f8 C1 with (IDevice*, IShaderManager*, CMaterialRendererManager*,
// CTextureManager*, CGlobalMaterialParameterManager*, intrusive_ptr<CLight> const&); size 0x160, CNullDriver and
// CCommonGLDriverBase continue at +0x160). Names come from the accessors, the attribute strings and the callers noted:
//   +0x00 vptr (vtable 0x977338, 134 slots)    +0x04 reference count (IReferenceCounted; the constructor stores 1)
//   +0x08 std::string (0x18)  +0x20 std::string (0x18)         both are empty after construction; not used by any caller seen
//   +0x38 u16 dynamic-light parameter base  +0x3a u16 dynamic-light count  +0x3c u16 dynamic-light limit  +0x3e u16 init arg
//   +0x40 intrusive_ptr<CLight> default dynamic light          +0x44 dimension2d max texture size
//   +0x4c u32 texture unit count (8)           +0x50 CFPSCounter (0x28)
//   +0x78..+0x84 per-frame counters (primitives, draw calls, 2D draw calls, texture bindings), cleared by beginScene
//   +0x88 u32 option flags (16)                +0x9c u32 capability word (64): bit (6 + texture type) = type supported,
//                                               0x10 non-square textures, 0x20 non-power-of-two textures, bit 24 (0x1000000)
//                                               and others read by ITexture::bind
//   +0xa4 CVertexStreams* immediate-mode streams for single lines and quads   +0xa8 streams for indexed lines
//   +0xac CVertexStreams* (cleared and rebuilt with the others)  +0xb0 IBuffer immediate vertices  +0xb4 IBuffer colours
//   +0xb8 IBuffer indices  +0xbc vector<intrusive_ptr<IBuffer>> process-buffer heap  +0xc8 vector<intrusive_ptr<IRenderTarget>>
//   +0xd4 IDevice* owner   +0xd8 IShaderManager*   +0xdc CMaterialRendererManager*   +0xe0 CTextureManager*
//   +0xe4 CGlobalMaterialParameterManager*   +0xe8 intrusive_ptr<CVertexAttributeMap> const* of the current material
//   +0xec CMaterial* current   +0xf0 CMaterial* last committed   +0xf4 IShader*   +0xf8/+0xf9 their technique bytes
//   +0xfa u16[4] FogColor global parameter ids   +0x104 CMaterialRendererManager* (copy)   +0x108 technique remap tables
//   +0x10c u32 largest batched index count (1024)   +0x110 vector<intrusive_ptr<CAppendMeshBuffer>>   +0x120 current batch buffer
//   +0x124 batch material   +0x128 IBatchBaker   +0x12c/+0x130/+0x134 heap copy of the batched material, its source and technique
//   +0x135 u8 init arg   +0x136 u16 SceneAmbientLight global parameter id   +0x138 u32 state flags   +0x13c E_ORIENTATION
//   +0x140 CVertexStreams*   +0x144 four counted blocks   +0x154 vector<IRenderBuffer*>
//
// Vtable (tools/decomp_vtable.py glitch::video::IVideoDriver): 134 slots. Slots the base implements keep their
// bodies in video_driver.cpp; the other 100-odd slots are pure here and implemented by CNullDriver (the names and
// signatures of those come from the CNullDriver overrides 0x5b8d88..0x5b90fc). CNullDriver adds four slots
// (+0x218 setRenderTarget, +0x21c beginCompile, +0x220 endCompile, +0x224 commitCurrentMaterial(bool)).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-shared/glitch_core.hpp"
#include "glitch-video/batch_baker.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/driver_binding.hpp"
#include "glitch-video/fps_counter.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/light.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/vertex_attribute_map.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::scene {
class CAppendMeshBuffer;
}  // namespace glitch::scene

namespace glitch::video {

namespace detail {
struct SGlobalParameterOwner;  // material_parameters_bind_g.hpp; the global parameter owner at +0xe4
}  // namespace detail

class IVideoDriver : public glitch::IReferenceCounted {
public:
    // Compile-time data record used by beginCompile. Layout not reconstructed. Vtable: dtor (D1 0x5a8ae0 / D2 0x5a8ae4 /
    // D0 0x5aa438) and one pure slot at +0x08.
    class ICompileData {
    public:
        virtual ~ICompileData() = default;
    };

    // The screen framebuffer target (the first entry of the target stack). Derives from IRenderTarget (0x24 bytes) and adds
    // the screen offset and margins that setFramebufferScreenInternal maintains. Vtable: dtor (0x5aef9c, D0 0x5b0508),
    // setViewport inherited, bind / unbind still pure.
    class IFramebuffer : public IRenderTarget {
    public:
        using IRenderTarget::IRenderTarget;
        ~IFramebuffer() override = default;  // 0x5aef9c (D1) / 0x5b0508 (D0)
        int32_t m_screenX = 0;       // +0x24, x offset of the screen inside the device
        int32_t m_screenY = 0;       // +0x28, y offset
        int32_t m_screenMarginX = 0; // +0x2c, device width minus screen width
        int32_t m_screenMarginY = 0; // +0x30, device height minus screen height
    };

    // 0x5aaf1c (C2) / 0x5ab2f8 (C1). Partial: the original creates the material renderer manager, the texture manager
    // and the global parameter manager when the argument is null, and tells the shader manager about the driver
    // (IShaderManager::init, vtable +0x08); the port keeps whatever the caller passes and does neither.
    IVideoDriver(glitch::IDevice* device, IShaderManager* shaderManager, CMaterialRendererManager* rendererManager,
                 CTextureManager* textureManager, CGlobalMaterialParameterManager* globalParameters,
                 const boost::intrusive_ptr<CLight>& defaultLight);
    // 0x5ad5b4 (D2) / 0x5ae2dc (D1) / 0x5ae5d4 (D0). Partial: the owned managers are not deleted (see the constructor).
    ~IVideoDriver() override;

    // ---- vtable slots after the IReferenceCounted ones, in slot order ----
    virtual bool beginScene();                                              // +0x0c  0x5a8b74
    virtual bool endScene();                                                // +0x10  0x5aab20
    virtual bool beginScene2D() = 0;                                        // +0x14
    virtual bool endScene2D() = 0;                                          // +0x18
    virtual void draw3DLine(const core::vector3d<float>& start, const core::vector3d<float>& end, SColor color);  // +0x1c  0x5ac430
    virtual void draw3DLines(core::vector3d<float>* positions, uint16_t* indices, SColor* colors, uint32_t count,
                             uint32_t indexCount);                          // +0x20  0x5ac2a8
    virtual void draw3DTriangle(const core::triangle3d<float>& triangle, SColor color);  // +0x24  0x5a8bdc
    virtual void draw3DBox(const core::aabbox3d<float>& box, SColor color);  // +0x28  0x5a9990
    virtual void draw2DLine(const core::position2d<int32_t>& start, const core::position2d<int32_t>& end,
                            SColor color);                                  // +0x2c  0x5ac7bc
    virtual void draw2DLines(core::position2d<int32_t>* positions, uint16_t* indices, SColor* colors, uint32_t count,
                             uint32_t indexCount);                          // +0x30  0x5ac5b8
    virtual void draw2DRectangle(const core::rect<int32_t>& position, const core::rect<int32_t>& clip,
                                 const SColor* colors, const core::rect<int32_t>* clipRect) = 0;  // +0x34
    virtual bool ReinitDriver() = 0;                                        // +0x38
    virtual bool reloadTexturesData() = 0;                                  // +0x3c
    virtual void reloadShaders() = 0;                                       // +0x40
    virtual void resetTexturesLoader() = 0;                                 // +0x44
    virtual void registerBufferMap(uint32_t a, uint32_t b, uint32_t c, uint32_t d, const void* data) = 0;  // +0x48
    virtual void ReloadbufferMap() = 0;                                     // +0x4c
    virtual void unregisterBufferMap(uint32_t id) = 0;                      // +0x50
    virtual void clearBufferMap() = 0;                                      // +0x54
    virtual void draw(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                      CDriverBinding** binding, const boost::intrusive_ptr<const scene::CMeshBuffer>& meshBuffer);  // +0x58  0x5adfa8
    virtual E_DRIVER_TYPE getDriverType() const = 0;                        // +0x5c
    virtual uint32_t getMaximalPrimitiveCount() const;                      // +0x60  0x5a90f4
    virtual bool checkDriverReset();                                        // +0x64  0x5a8cc8
    virtual E_PIXEL_FORMAT getColorFormat() const = 0;                      // +0x68
    virtual void setTransform(E_TRANSFORMATION_STATE state, const core::CMatrix4<float>& matrix) = 0;  // +0x6c
    virtual const core::CMatrix4<float>& getTransform(E_TRANSFORMATION_STATE state) const = 0;  // +0x70
    virtual void restoreShadowState() = 0;                                  // +0x74
    virtual boost::intrusive_ptr<IBuffer> createBuffer(E_BUFFER_TYPE type, E_BUFFER_USAGE usage, uint32_t size, void* data,
                                                       bool flag) = 0;      // +0x78
    virtual void setMaxTextureSize(const core::dimension2d<int32_t>& size);  // +0x7c  0x5a909c
    virtual boost::intrusive_ptr<IRenderBuffer> createRenderBuffer(const core::dimension2d<int32_t>& size,
                                                                   E_PIXEL_FORMAT format) = 0;  // +0x80
    virtual boost::intrusive_ptr<IRenderTarget> createRenderTarget(const boost::intrusive_ptr<ITexture>& texture,
                                                                   uint32_t flags) = 0;  // +0x84
    virtual boost::intrusive_ptr<IRenderTarget> createMultipleRenderTarget() = 0;  // +0x88
    virtual void pushRenderTarget(const boost::intrusive_ptr<IRenderTarget>& target);  // +0x8c  0x5ab6d4
    virtual boost::intrusive_ptr<IRenderTarget> popRenderTarget();          // +0x90  0x5a953c
    virtual void onResize(const core::dimension2d<int32_t>& size);          // +0x94  0x5a8cd0
    virtual boost::intrusive_ptr<CImage> createScreenShot() = 0;            // +0x98
    virtual bool captureFramebufferImpl(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& position,
                                        const core::rect<int32_t>& area, uint8_t level, E_TEXTURE_CUBE_MAP_FACE face,
                                        bool flag) = 0;                     // +0x9c
    virtual void setOption(uint32_t option, bool enable);                   // +0xa0  0x5a90b0
    virtual bool swapBuffers(int32_t mode) = 0;                             // +0xa4
    virtual void clearBuffers(int32_t mask) = 0;                            // +0xa8
    virtual void removeUnused();                                            // +0xac  0x5aa290
    virtual bool getBlendEnable() const = 0;                                // +0xb0
    virtual void setBlendEnable(bool enable) = 0;                           // +0xb4
    virtual SColor getBlendColor() const = 0;                               // +0xb8
    virtual void setBlendColor(SColor color) = 0;                           // +0xbc
    virtual E_BLEND_EQUATION getBlendEquation() const = 0;                  // +0xc0
    virtual void setBlendEquation(E_BLEND_EQUATION equation) = 0;           // +0xc4
    virtual void getBlendFunc(E_BLEND_FACTOR& source, E_BLEND_FACTOR& destination) const = 0;  // +0xc8
    virtual void setBlendFunc(E_BLEND_FACTOR source, E_BLEND_FACTOR destination) = 0;  // +0xcc
    virtual void getColorMask(bool& r, bool& g, bool& b, bool& a) const = 0;  // +0xd0
    virtual void setColorMask(bool r, bool g, bool b, bool a) = 0;          // +0xd4
    virtual SColor getClearColor() const = 0;                               // +0xd8
    virtual void setClearColor(SColor color) = 0;                           // +0xdc
    virtual bool getCullFaceEnable() const = 0;                             // +0xe0
    virtual void setCullFaceEnable(bool enable) = 0;                        // +0xe4
    virtual E_FACE_SIDE getCullFace() const = 0;                            // +0xe8
    virtual void setCullFace(E_FACE_SIDE side) = 0;                         // +0xec
    virtual E_FACE_WINDING getFrontFace() const = 0;                        // +0xf0
    virtual void setFrontFace(E_FACE_WINDING winding) = 0;                  // +0xf4
    virtual bool getDepthTestEnable() const = 0;                            // +0xf8
    virtual void setDepthTestEnable(bool enable) = 0;                       // +0xfc
    virtual E_COMPARE_FUNC getDepthFunc() const = 0;                        // +0x100
    virtual void setDepthFunc(E_COMPARE_FUNC func) = 0;                     // +0x104
    virtual bool getDepthMask() const = 0;                                  // +0x108
    virtual void setDepthMask(bool mask) = 0;                               // +0x10c
    virtual float getClearDepth() const = 0;                                // +0x110
    virtual void setClearDepth(float depth) = 0;                            // +0x114
    virtual void getDepthRange(float& nearValue, float& farValue) const = 0;  // +0x118
    virtual void setDepthRange(float nearValue, float farValue) = 0;        // +0x11c
    virtual bool getDitherEnable() const = 0;                               // +0x120
    virtual void setDitherEnable(bool enable) = 0;                          // +0x124
    virtual float getLineWidth() const = 0;                                 // +0x128
    virtual void setLineWidth(float width) = 0;                             // +0x12c
    virtual float getPointSize() const = 0;                                 // +0x130
    virtual void setPointSize(float size) = 0;                              // +0x134
    virtual E_POLYGON_MODE getPolygonModeFront() const = 0;                 // +0x138
    virtual void setPolygonModeFront(E_POLYGON_MODE mode) = 0;              // +0x13c
    virtual E_POLYGON_MODE getPolygonModeBack() const = 0;                  // +0x140
    virtual void setPolygonModeBack(E_POLYGON_MODE mode) = 0;               // +0x144
    virtual bool getPolygonOffsetFillEnable() const = 0;                    // +0x148
    virtual void setPolygonOffsetFillEnable(bool enable) = 0;               // +0x14c
    virtual bool getPolygonOffsetLineEnable() const = 0;                    // +0x150
    virtual void setPolygonOffsetLineEnable(bool enable) = 0;               // +0x154
    virtual bool getPolygonOffsetPointEnable() const = 0;                   // +0x158
    virtual void setPolygonOffsetPointEnable(bool enable) = 0;              // +0x15c
    virtual void getPolygonOffset(float& factor, float& units) const = 0;   // +0x160
    virtual void setPolygonOffset(float factor, float units) = 0;           // +0x164
    virtual bool getSampleAlphaToCoverageEnable() const = 0;                // +0x168
    virtual void setSampleAlphaToCoverageEnable(bool enable) = 0;           // +0x16c
    virtual bool getSampleCoverageEnable() const = 0;                       // +0x170
    virtual void setSampleCoverageEnable(bool enable) = 0;                  // +0x174
    virtual bool getSampleCoverageInvert() const = 0;                       // +0x178
    virtual void setSampleCoverageInvert(bool invert) = 0;                  // +0x17c
    virtual float getSampleCoverageValue() const = 0;                       // +0x180
    virtual void setSampleCoverageValue(float value) = 0;                   // +0x184
    virtual bool getScissorEnable() const = 0;                              // +0x188
    virtual void setScissorEnable(bool enable) = 0;                         // +0x18c
    virtual const core::rect<int32_t>& getScissor() const = 0;              // +0x190
    virtual void setScissor(const core::rect<int32_t>& rect) = 0;           // +0x194
    virtual bool getStencilTestEnable() const = 0;                          // +0x198
    virtual void setStencilTestEnable(bool enable) = 0;                     // +0x19c
    virtual E_COMPARE_FUNC getStencilFunc() const = 0;                      // +0x1a0
    virtual void setStencilFunc(E_COMPARE_FUNC func) = 0;                   // +0x1a4
    virtual uint8_t getStencilFuncRef(bool* flag) const = 0;                // +0x1a8
    virtual void setStencilFuncRef(uint8_t ref) = 0;                        // +0x1ac
    virtual uint8_t getStencilFuncMask(bool* flag) const = 0;               // +0x1b0
    virtual void setStencilFuncMask(uint8_t mask) = 0;                      // +0x1b4
    virtual E_STENCIL_OP getStencilOpFail() const = 0;                      // +0x1b8
    virtual void setStencilOpFail(E_STENCIL_OP op) = 0;                     // +0x1bc
    virtual E_STENCIL_OP getStencilOpZFail() const = 0;                     // +0x1c0
    virtual void setStencilOpZFail(E_STENCIL_OP op) = 0;                    // +0x1c4
    virtual E_STENCIL_OP getStencilOpZPass() const = 0;                     // +0x1c8
    virtual void setStencilOpZPass(E_STENCIL_OP op) = 0;                    // +0x1cc
    virtual uint8_t getStencilMask(bool* flag) const = 0;                   // +0x1d0
    virtual void setStencilMask(uint8_t mask) = 0;                          // +0x1d4
    virtual uint8_t getClearStencil() const = 0;                            // +0x1d8
    virtual void setClearStencil(uint8_t value) = 0;                        // +0x1dc
    virtual void getRenderState(detail::driver::SRenderState& state) const = 0;  // +0x1e0
    virtual void setRenderState(const detail::driver::SRenderState& state) = 0;  // +0x1e4
    virtual void setViewportImpl(const core::rect<int32_t>& rect) = 0;      // +0x1e8
    virtual uint32_t getMaxUserClipPlanes() const = 0;                      // +0x1ec
    virtual E_DRIVER_ALLOCATION_RESULT getProcessBuffer(E_PROCESS_BUFFER_TYPE type, uint32_t vertexCount, uint32_t indexCount,
                                                        uint32_t flags, const boost::intrusive_ptr<CVertexStreams>& streams,
                                                        CDriverBinding** binding, bool create);  // +0x1f0  0x5acc34
    virtual void releaseProcessBuffer(E_PROCESS_BUFFER_TYPE type, const boost::intrusive_ptr<CVertexStreams>& streams,
                                      uint32_t vertexCount, uint32_t indexCount, CDriverBinding* binding);  // +0x1f4  0x5ac158
    virtual CDriverBinding* createBinding();                                // +0x1f8  0x5aa2e0
    virtual void flush();                                                   // +0x1fc  0x5adb9c, a 4-byte branch to drawPendingBatch
    virtual bool drawImpl(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                          CDriverBinding** binding) = 0;                    // +0x200
    virtual boost::intrusive_ptr<ITexture> createTextureImpl(const char* name, const STextureDesc& desc) = 0;  // +0x204
    virtual void commitCurrentMaterial() = 0;                               // +0x208
    virtual void commitMaterialRenderer(CMaterialRenderer* renderer) = 0;   // +0x20c
    virtual void onMaterialDestroyed(CMaterial* material);                  // +0x210  0x5a8ba4
    virtual void onShaderDestroyed(IShader* shader);                        // +0x214  0x5a8b90

    // ---- non-virtual members of the queue ----
    // 0x5aab60: second-stage init: stores the init byte (+0x135), the +0x3e halfword and the dynamic-light limit (+0x3c),
    // then registers the DynamicLight<n>, SceneAmbientLight, FogColor<n> and FogDensity<n> global parameters. Partial: the
    // registration needs the global parameter manager, which is not reconstructed, so only the stores are done.
    void init(uint16_t unk3e, uint16_t lightLimit, uint8_t flag);
    // 0x5a8ae8: zeroes the default dynamic light's colours and attenuation, sets its type to 3 and cast-shadows to 0.
    void resetDefaultDynamicLight();
    // 0x5aab18, 0x5aaae8, 0x5aaae0, 0x5aaad8: the FPS counter's readings.
    uint32_t getFPS() const;
    uint32_t getDrawCallCount() const;
    uint32_t getDrawCall2DCount() const;
    uint32_t getTextureBindingCount() const;
    // 0x5aaaf0: 0 = this frame, 1 = average, anything else = total.
    uint32_t getPrimitiveCountDrawn(uint32_t which) const;
    // 0x5aa8a0: true when count fits the maximal primitive count. The original logs
    // "Could not draw triangles, too many primitives" through os::Printer, which is not ported.
    // Partial: the log call is omitted.
    bool checkPrimitiveCount(uint32_t count) const;
    // 0x5aab20 with an explicit time stamp (the original reads os::Timer::getRealTime): registers the frame with the FPS
    // counter. Port helper, not in the original.
    bool endScene(uint32_t now);
    // Test helper, not in the original: exposes the option word (+0x88).
    uint32_t getOptionFlags() const { return m_options; }

    // 0x5aa940 / 0x5aaa40 / 0x5aaa84: the dynamic-light pool in the global parameter table (getDynamicLight returns a
    // null light for ids past the count). Partial: the element setter of IMaterialParameters<G> (0x5be68c) is skipped.
    const boost::intrusive_ptr<CLight>& getDynamicLight(uint16_t index) const;
    uint32_t addDynamicLight(const boost::intrusive_ptr<CLight>& light);
    void deleteAllDynamicLights();

    // 0x5a8e3c: clamps the rectangle to the device area and stores it as the screen framebuffer's screen offset, size and
    // margins; returns the size the framebuffer had before. 0x5a8ef0 does that, resets the framebuffer's viewport to its whole
    // size when the size did not change, and sets bit 0 of the state flags. 0x5a8f88 flips a projection matrix for the current
    // orientation, 0x5a9fd4 changes the orientation.
    core::dimension2d<int32_t> setFramebufferScreenInternal(const core::rect<int32_t>& rect);
    void setFramebufferScreen(const core::rect<int32_t>& rect);
    void fixUpProjectionMatrixOrientation(core::CMatrix4<float>& projection) const;
    void setOrientation(E_ORIENTATION orientation);
    // 0x5a90fc: clips a rectangle (and its texture coordinates and corner colours) against another.
    static bool clip(core::rect<int32_t>& target, core::rect<float>& texture, const core::rect<int32_t>& clipRect,
                     SColor* colors);
    // 0x5a97e4 .. 0x5aa114: converts positions and rectangles between screen and device space for the current orientation
    // (instances for int and float).
    template <typename T> void screen2DevicePos(T& x, T& y) const;
    template <typename T> void device2ScreenPos(T& x, T& y) const;
    template <typename T> void screen2Device(core::rect<T>& rect) const;
    template <typename T> void device2Screen(core::rect<T>& rect) const;

    // 0x5a95f8: the binding for a stream table, created through createBinding when none exists yet.
    CDriverBinding* ensureBinding(CDriverBinding** binding);
    // 0x5a9638: clamps the capture area to the texture and the current target, then calls captureFramebufferImpl. Declared only.
    bool captureFramebuffer(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& position,
                            const core::rect<int32_t>& area, uint8_t level, E_TEXTURE_CUBE_MAP_FACE face, bool flag);
    // 0x5a97a8: calls unbind on every registered render buffer. 0x5b1338: removes one from the list.
    void clearRenderBuffers();
    void unregisterRenderBuffer(IRenderBuffer* buffer);
    // 0x5aa5f8: validates the descriptor against the driver capabilities (logging the reason on failure) and calls
    // createTextureImpl.
    boost::intrusive_ptr<ITexture> createTexture(const char* name, const STextureDesc& desc);
    // 0x5acfd0: renders a texture through the default material so it is uploaded. Declared only.
    void forceCommitTexture(const boost::intrusive_ptr<ITexture>& texture);

    // Materials. 0x5aa51c / 0x5ad368 / 0x35eb10 / 0x5244ac / 0x7d4ef8: set the current material (with or without a
    // technique and a vertex attribute map). 0x5ad15c: switches the batch material. Declared only.
    void setMaterialInternal(CMaterial* material, uint8_t technique, const boost::intrusive_ptr<CVertexAttributeMap>* attributes);
    void setMaterial(const boost::intrusive_ptr<CMaterial>& material, uint8_t technique,
                     const boost::intrusive_ptr<CVertexAttributeMap>* attributes);
    void setMaterial(const boost::intrusive_ptr<CMaterial>& material,
                     const boost::intrusive_ptr<CVertexAttributeMap>* attributes);
    void setMaterial(const boost::intrusive_ptr<CMaterial>& material,
                     const boost::intrusive_ptr<const CMaterialVertexAttributeMap>& attributes);
    void resetBatchMaterial(const boost::intrusive_ptr<CMaterial>& material, uint8_t technique);

    // Drawing. 0x57f308 / 0x5aaebc / 0x7d4ebc: the three-argument draw forwards to the four-argument slot (+0x58);
    // 0x35ebd0 draws a mesh buffer's streams; 0x5ad8ac / 0x5adba0 flush and append the draw batch; 0x5ac950 draws a
    // full-screen quad. Declared only (the batch buffer, CAppendMeshBuffer, is the scene's).
    void draw(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
              CDriverBinding** binding);
    void drawMeshBuffer(const boost::intrusive_ptr<const scene::CMeshBuffer>& meshBuffer);
    bool drawPendingBatch();
    bool appendBatch(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                     CDriverBinding** binding);
    void drawFullScreenQuad(const SColor* colors);
    // 0x6498a0: process buffer for a mesh buffer. Declared only.
    E_DRIVER_ALLOCATION_RESULT getProcessBuffer(E_PROCESS_BUFFER_TYPE type, uint32_t flags,
                                                const boost::intrusive_ptr<scene::CMeshBuffer>& meshBuffer, bool create);
    // 0x5d8624: drops the batch baker and the batch materials.
    void removeBatchBaker();
    // 0x5adfe0 / 0x5ae5f0: drops and rebuilds the immediate-mode streams and buffers. Declared only.
    void clearImplementationDependentData();
    void initImplementationDependentData();

    // ---- data members (original 32-bit offsets; +0x04 is IReferenceCounted::referenceCounter) ----
    std::string unk_08;                                   // +0x08 (0x18 bytes in the original)
    std::string unk_20;                                   // +0x20
    uint16_t m_dynamicLightBase = 0xffff;                 // +0x38, global parameter id of DynamicLight0; the id of light n is base + n
    uint16_t m_dynamicLightCount = 0;                     // +0x3a, lights stored so far
    uint16_t m_dynamicLightLimit = 0;                     // +0x3c, maximum number of dynamic lights
    uint16_t unk_3e = 0;                                  // +0x3e, init argument
    boost::intrusive_ptr<CLight> m_defaultDynamicLight;   // +0x40
    core::dimension2d<int32_t> m_maxTextureSize{};        // +0x44
    uint32_t m_textureUnitCount = 8;                      // +0x4c
    CFPSCounter m_fpsCounter;                             // +0x50 (CFPSCounter is 0x28 bytes)
    uint32_t m_framePrimitives = 0;                       // +0x78, cleared by beginScene
    uint32_t m_frameDrawCalls = 0;                        // +0x7c
    uint32_t m_frameDrawCalls2D = 0;                      // +0x80
    uint32_t m_frameTextureBindings = 0;                  // +0x84
    uint32_t m_options = 16;                              // +0x88
    uint32_t unk_8c[4] = {};                              // +0x8c..+0x9b, not touched by the constructor; CNullDriver::initDriver zeroes them
    uint32_t m_capabilities = 64;                         // +0x9c
    uint32_t unk_a0 = 0;                                  // +0xa0
    boost::intrusive_ptr<CVertexStreams> m_immediateStreams;  // +0xa4, interleaved position and colour
    boost::intrusive_ptr<CVertexStreams> m_lineStreams;   // +0xa8, separate position / colour streams for indexed lines
    boost::intrusive_ptr<CVertexStreams> unk_ac;          // +0xac
    boost::intrusive_ptr<IBuffer> m_immediateVertices;    // +0xb0
    boost::intrusive_ptr<IBuffer> m_immediateColors;      // +0xb4
    boost::intrusive_ptr<IBuffer> m_immediateIndices;     // +0xb8
    std::vector<boost::intrusive_ptr<IBuffer>> m_processBufferHeap;  // +0xbc..+0xc4
    std::vector<boost::intrusive_ptr<IRenderTarget>> m_renderTargets;  // +0xc8..+0xd0, the target stack (entry 0 is the screen)
    glitch::IDevice* m_device = nullptr;                  // +0xd4, owner
    IShaderManager* m_shaderManager = nullptr;            // +0xd8
    CMaterialRendererManager* m_materialRendererManager = nullptr;  // +0xdc
    CTextureManager* m_textureManager = nullptr;          // +0xe0
    CGlobalMaterialParameterManager* m_globalParameters = nullptr;  // +0xe4
    const boost::intrusive_ptr<CVertexAttributeMap>* m_stateE8 = nullptr;  // +0xe8, attribute map of the current material
    CMaterial* m_materialEc = nullptr;                    // +0xec, current material (cleared by onMaterialDestroyed)
    CMaterial* m_materialF0 = nullptr;                    // +0xf0, last committed material
    IShader* m_shaderF4 = nullptr;                        // +0xf4, cleared when that shader is destroyed
    uint8_t m_flagF8 = 0xff;                              // +0xf8, technique of m_materialEc; 0xff when cleared
    uint8_t m_flagF9 = 0xff;                              // +0xf9, technique of m_materialF0; 0xff when cleared
    uint16_t m_fogColorIds[4] = {0xffff, 0xffff, 0xffff, 0xffff};  // +0xfa, FogColor0..3 global parameter ids
    uint8_t pad_102[2] = {};                              // +0x102
    CMaterialRendererManager* m_rendererManagerCopy = nullptr;  // +0x104
    const uint8_t* const* m_techniqueRemap = nullptr;     // +0x108, remap tables read by CMaterial::getTechnique
    uint32_t m_maxBatchIndices = 1024;                    // +0x10c
    std::vector<boost::intrusive_ptr<glitch::IReferenceCounted>> m_batchBuffers;  // +0x110..+0x118, CAppendMeshBuffer (scene)
    uint32_t m_batchBufferIndex = 0;                      // +0x11c, index of the current buffer in m_batchBuffers (drawPendingBatch)
    boost::intrusive_ptr<glitch::IReferenceCounted> m_batchBuffer;  // +0x120, current CAppendMeshBuffer
    boost::intrusive_ptr<CMaterial> m_batchMaterial;      // +0x124
    boost::intrusive_ptr<IBatchBaker> m_batchBaker;       // +0x128
    CMaterial* m_batchMaterialHeap = nullptr;             // +0x12c, cloneHeap copy of the source material
    CMaterial* m_batchSourceMaterial = nullptr;           // +0x130
    uint8_t m_batchTechnique = 0xff;                      // +0x134
    uint8_t unk_135 = 0;                                  // +0x135, init argument
    uint16_t m_ambientLightId = 0xffff;                   // +0x136, SceneAmbientLight global parameter id
    uint32_t m_stateFlags = 0;                            // +0x138, 0x1 screen set, 0x4 pushing a target, 0x8 batch pending, 0x10 / 0x20 own managers
    E_ORIENTATION m_orientation = 0;                      // +0x13c
    boost::intrusive_ptr<CVertexStreams> unk_140;         // +0x140
    boost::intrusive_ptr<CVertexAttributeMap> unk_144[4];  // +0x144..+0x153, the vertex attribute map of the full-screen quad (shared by the four slots; count at +0x00)
    std::vector<IRenderBuffer*> m_renderBuffers;          // +0x154..+0x15c

    // _ZN6glitch5video12IVideoDriver16DefaultAttribMapE: the 30-byte stream-index-per-attribute map (0xff = unset) that
    // CBatchDriver::thisAppendBatch (0x5a6fe0) rebuilds for each record when no material map (+0xe8) is bound.
    static uint8_t DefaultAttribMap[30];
};

}  // namespace glitch::video
