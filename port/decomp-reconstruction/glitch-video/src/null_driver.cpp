#include "glitch-video/null_driver.hpp"

#include <cstring>
#include <string>
#include <utility>

#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/null_shader_manager.hpp"

namespace glitch::video {

// 0x5b9840 _ZN6glitch5video11CNullDriverC1EPNS_7IDeviceE / 0x5b99bc C2
// A CNullShaderManager (0x54 bytes) is created and handed to the IVideoDriver constructor with the device; the three managers
// and the default light are left to that constructor. The transforms start as identity matrices, the driver's name and message
// strings are set, the screen framebuffer is pushed (initDriver) and the dynamic-light parameters are registered with one
// light (init(1, 1, 0)).
CNullDriver::CNullDriver(glitch::IDevice* device)
    : IVideoDriver(device, new CNullShaderManager(), nullptr, nullptr, nullptr, boost::intrusive_ptr<CLight>()) {
    for (core::CMatrix4<float>& matrix : m_transforms) {
        matrix = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
    unk_08 = "NullDriver";
    unk_20 = "Not available on this driver.";
    initDriver();
    init(1, 1, 0);
}

// 0x5b9610 _ZN6glitch5video11CNullDriverC1EPNS0_12IVideoDriverE / 0x5b9764 C2
// A null driver on another driver's device, material renderer manager, texture manager, global parameter manager and default
// light, with a new CNullShaderManager. The transforms are identity matrices and the screen framebuffer is pushed; no name
// strings are set and nothing is registered (the other driver's parameters are reused).
CNullDriver::CNullDriver(IVideoDriver* other)
    : IVideoDriver(other->m_device, new CNullShaderManager(), other->m_materialRendererManager, other->m_textureManager,
                   other->m_globalParameters, other->m_defaultDynamicLight) {
    for (core::CMatrix4<float>& matrix : m_transforms) {
        matrix = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
    initDriver();
}

// 0x5b94d4 _ZN6glitch5video11CNullDriverD1Ev / 0x5b9524 D2 / 0x5b9508 D0: the IVideoDriver destructor follows.
CNullDriver::~CNullDriver() = default;

// 0x5b942c _ZN6glitch5video11CNullDriver10initDriverEv
// Zeroes the four words at +0x8c, builds the screen framebuffer (a CFramebuffer, 0x34 bytes) on the device's screen size (the
// creation parameters' width and height, device +0x60 / +0x64) and pushes it on the target stack.
// Port guard: without a device the screen is 0 x 0 (the original reads the device).
void CNullDriver::initDriver() {
    for (uint32_t& word : unk_8c) word = 0;
    core::dimension2d<int32_t> screen{0, 0};
    if (m_device != nullptr) {
        std::memcpy(&screen.Width, m_device->creationParameters.bytes + 4, sizeof(int32_t));   // device +0x60
        std::memcpy(&screen.Height, m_device->creationParameters.bytes + 8, sizeof(int32_t));  // device +0x64
    }
    boost::intrusive_ptr<IRenderTarget> framebuffer(new CFramebuffer(this, screen), true);
    pushRenderTarget(framebuffer);
}

// 0x5b9240 _ZN6glitch5video11CNullDriver12printVersionEv
// Logs "Using renderer: " and the driver's name (+0x08) at level 1.
void CNullDriver::printVersion() {
    std::wstring text = L"Using renderer: ";
    for (char c : unk_08) text.push_back(static_cast<wchar_t>(static_cast<unsigned char>(c)));
    glitch::os::Printer::log(text.c_str(), glitch::os::ELL_INFORMATION);
}

// 0x5b9064 _ZNK6glitch5video11CNullDriver12getTransformENS0_22E_TRANSFORMATION_STATEE: &m_transforms[state].
const core::CMatrix4<float>& CNullDriver::getTransform(E_TRANSFORMATION_STATE state) const {
    return m_transforms[state];
}

// 0x5b93d0 _ZN6glitch5video11CNullDriver12setTransformENS0_22E_TRANSFORMATION_STATEERKNS_4core9CMatrix4IfEE
// The original copies 0x41 bytes (the sixteen floats and the identity flag).
void CNullDriver::setTransform(E_TRANSFORMATION_STATE state, const core::CMatrix4<float>& matrix) {
    std::memcpy(static_cast<void*>(&m_transforms[state]), static_cast<const void*>(&matrix), 0x41);
}

// 0x5b8f5c _ZNK6glitch5video11CNullDriver10getScissorEv: the viewport rectangle of the top render target (+0x14).
const core::rect<int32_t>& CNullDriver::getScissor() const { return m_renderTargets.back()->m_viewport; }

// 0x5b92cc _ZN6glitch5video11CNullDriver12createBufferENS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvb
// A CBuffer (the IBuffer base object, 0x14 bytes), returned with the count raised to 1.
boost::intrusive_ptr<IBuffer> CNullDriver::createBuffer(E_BUFFER_TYPE type, E_BUFFER_USAGE usage, uint32_t size, void* data,
                                                        bool flag) {
    return boost::intrusive_ptr<IBuffer>(new CBuffer(type, usage, size, data, flag ? 1 : 0), true);
}

// 0x5b934c _ZNK6glitch5video11CNullDriver7CBuffer9cloneImplEv
// A new buffer with the same type, usage, size and data pointer, and only the owns-data bit of the flags.
boost::intrusive_ptr<IBuffer> CNullDriver::CBuffer::cloneImpl() const {
    return boost::intrusive_ptr<IBuffer>(
        new CBuffer(m_type, m_usage, m_size, m_data, static_cast<uint8_t>(m_flags12 & kFlagOwnsData)), true);
}

// 0x5b958c _ZN6glitch5video11CNullDriver15createTextureImplEPKcRKNS0_12STextureDescE
boost::intrusive_ptr<ITexture> CNullDriver::createTextureImpl(const char* name, const STextureDesc& desc) {
    return boost::intrusive_ptr<ITexture>(new CTexture(name, this, desc), true);
}


// 0x5a20b4 _ZN6glitch5video11CNullDriver16checkDriverResetEv
bool CNullDriver::checkDriverReset() { return false; }


// 0x5b8d88 _ZN6glitch5video11CNullDriver7CBuffer8bindImplEb
void CNullDriver::CBuffer::bindImpl(bool) {}


// 0x5b8d8c _ZN6glitch5video11CNullDriver7CBuffer10unbindImplEv
void CNullDriver::CBuffer::unbindImpl() {}


// 0x5b8d90 _ZNK6glitch5video11CNullDriver7CBuffer7mapImplEj
uint8_t* CNullDriver::CBuffer::mapImpl(uint32_t) const { return nullptr; }


// 0x5b8d98 _ZNK6glitch5video11CNullDriver7CBuffer9unmapImplEv
void CNullDriver::CBuffer::unmapImpl() const {}


// 0x5b8d9c _ZNK6glitch5video11CNullDriver7CBuffer12getMappedPtrEv
uint8_t* CNullDriver::CBuffer::getMappedPtr() const { return nullptr; }


// 0x5b9558 _ZN6glitch5video11CNullDriver8CTextureC1EPKcPS1_RKNS0_12STextureDescE
// 0x5b95dc _ZN6glitch5video11CNullDriver8CTextureC2EPKcPS1_RKNS0_12STextureDescE
CNullDriver::CTexture::CTexture(const char* name, CNullDriver* driver, const STextureDesc& desc)
    : ITexture(name, driver, desc) {}


// 0x5b8da4 _ZN6glitch5video11CNullDriver8CTexture8bindImplEb
// Clears the data and mipmap dirty bits and reports that nothing was bound.
bool CNullDriver::CTexture::bindImpl(bool) { m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 & 0xfffcu); return false; }


// 0x5b8dbc _ZN6glitch5video11CNullDriver8CTexture10unbindImplEv
void CNullDriver::CTexture::unbindImpl() {}


// 0x5b8dc0 _ZN6glitch5video11CNullDriver8CTexture7mapImplEhNS0_23E_TEXTURE_CUBE_MAP_FACEEh
uint8_t* CNullDriver::CTexture::mapImpl(uint8_t, E_TEXTURE_CUBE_MAP_FACE, uint8_t) { return nullptr; }


// 0x5b8dc8 _ZNK6glitch5video11CNullDriver8CTexture9unmapImplEv
void CNullDriver::CTexture::unmapImpl() const {}


// 0x5b8dcc _ZNK6glitch5video11CNullDriver8CTexture12getMappedPtrEv
uint8_t* CNullDriver::CTexture::getMappedPtr() const { return nullptr; }


// 0x5b8dd4 _ZN6glitch5video11CNullDriver8CTexture19generateMipmapsImplEv
void CNullDriver::CTexture::generateMipmapsImpl() {}


// 0x5b8dd8 _ZN6glitch5video11CNullDriver12CFramebuffer4bindEv
void CNullDriver::CFramebuffer::bind() {}


// 0x5b8ddc _ZN6glitch5video11CNullDriver12CFramebuffer6unbindEv
void CNullDriver::CFramebuffer::unbind() {}


// 0x5b9b38 _ZN6glitch5video16createNullDriverEPNS_7IDeviceE
// Partial: see the constructor (no shader manager, 0 x 0 screen).
CNullDriver* createNullDriver(IDevice* device) { return new CNullDriver(device); }

// 0x5b8de0 _ZN6glitch5video11CNullDriver10beginSceneEv
bool CNullDriver::beginScene() { return true; }


// 0x5b8de8 _ZN6glitch5video11CNullDriver22captureFramebufferImplERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNS8_4rectIiEEhNS0_23E_TEXTURE_CUBE_MAP_FACEEb
bool CNullDriver::captureFramebufferImpl(const boost::intrusive_ptr<ITexture>&, const core::position2d<int32_t>&, const core::rect<int32_t>&, uint8_t, E_TEXTURE_CUBE_MAP_FACE, bool) { return false; }


// 0x5b8df0 _ZN6glitch5video11CNullDriver11swapBuffersEi
bool CNullDriver::swapBuffers(int32_t) { return true; }


// 0x5b8df8 _ZN6glitch5video11CNullDriver12clearBuffersEi
void CNullDriver::clearBuffers(int32_t) {}


// 0x5b93ec _ZN6glitch5video11CNullDriver8endSceneEv
// The same body as IVideoDriver::endScene: the timer value and the four frame counters (this+0x78..+0x84) go to
// CFPSCounter::registerFrame.
bool CNullDriver::endScene() { return IVideoDriver::endScene(); }

// 0x5b8dfc _ZN6glitch5video11CNullDriver12beginScene2DEv
bool CNullDriver::beginScene2D() { return true; }


// 0x5b8e04 _ZN6glitch5video11CNullDriver10endScene2DEv
bool CNullDriver::endScene2D() { return true; }


// 0x5b8e0c _ZN6glitch5video11CNullDriver12ReinitDriverEv
bool CNullDriver::ReinitDriver() { return true; }


// 0x5b8e14 _ZN6glitch5video11CNullDriver17registerBufferMapEjjjjPKv
void CNullDriver::registerBufferMap(uint32_t, uint32_t, uint32_t, uint32_t, const void*) {}


// 0x5b8e18 _ZN6glitch5video11CNullDriver15ReloadbufferMapEv
void CNullDriver::ReloadbufferMap() {}


// 0x5b8e1c _ZN6glitch5video11CNullDriver19unregisterBufferMapEj
void CNullDriver::unregisterBufferMap(uint32_t) {}


// 0x5b8e20 _ZN6glitch5video11CNullDriver14clearBufferMapEv
void CNullDriver::clearBufferMap() {}


// 0x5b8e24 _ZN6glitch5video11CNullDriver19resetTexturesLoaderEv
void CNullDriver::resetTexturesLoader() {}


// 0x5b8e28 _ZN6glitch5video11CNullDriver18reloadTexturesDataEv
bool CNullDriver::reloadTexturesData() { return true; }


// 0x5b8e30 _ZN6glitch5video11CNullDriver13reloadShadersEv
void CNullDriver::reloadShaders() {}


// 0x5b8e34 _ZNK6glitch5video11CNullDriver14getBlendEnableEv
bool CNullDriver::getBlendEnable() const { return false; }


// 0x5b8e3c _ZNK6glitch5video11CNullDriver13getBlendColorEv
SColor CNullDriver::getBlendColor() const { return SColor{}; }


// 0x5b8e4c _ZNK6glitch5video11CNullDriver16getBlendEquationEv
E_BLEND_EQUATION CNullDriver::getBlendEquation() const { return 0; }


// 0x5b8e54 _ZNK6glitch5video11CNullDriver12getBlendFuncERNS0_14E_BLEND_FACTORES3_
void CNullDriver::getBlendFunc(E_BLEND_FACTOR& src, E_BLEND_FACTOR& dst) const { src = 1; dst = 0; }


// 0x5b8e68 _ZNK6glitch5video11CNullDriver12getColorMaskERbS2_S2_S2_
void CNullDriver::getColorMask(bool& r, bool& g, bool& b, bool& a) const { r = g = b = a = true; }


// 0x5b8e84 _ZNK6glitch5video11CNullDriver13getClearColorEv
SColor CNullDriver::getClearColor() const { return SColor{}; }


// 0x5b8e94 _ZNK6glitch5video11CNullDriver17getCullFaceEnableEv
bool CNullDriver::getCullFaceEnable() const { return false; }


// 0x5b8e9c _ZNK6glitch5video11CNullDriver11getCullFaceEv
E_FACE_SIDE CNullDriver::getCullFace() const { return 0; }


// 0x5b8ea4 _ZNK6glitch5video11CNullDriver12getFrontFaceEv
E_FACE_WINDING CNullDriver::getFrontFace() const { return 0; }


// 0x5b8eac _ZNK6glitch5video11CNullDriver18getDepthTestEnableEv
bool CNullDriver::getDepthTestEnable() const { return false; }


// 0x5b8eb4 _ZNK6glitch5video11CNullDriver12getDepthFuncEv
E_COMPARE_FUNC CNullDriver::getDepthFunc() const { return 1; }


// 0x5b8ebc _ZNK6glitch5video11CNullDriver12getDepthMaskEv
bool CNullDriver::getDepthMask() const { return true; }


// 0x5b8ec4 _ZNK6glitch5video11CNullDriver13getClearDepthEv
float CNullDriver::getClearDepth() const { return 0.0f; }


// 0x5b8ecc _ZNK6glitch5video11CNullDriver13getDepthRangeERfS2_
void CNullDriver::getDepthRange(float& nearValue, float& farValue) const { nearValue = 0.0f; farValue = 1.0f; }


// 0x5b8ee0 _ZNK6glitch5video11CNullDriver15getDitherEnableEv
bool CNullDriver::getDitherEnable() const { return false; }


// 0x5b8ee8 _ZNK6glitch5video11CNullDriver12getLineWidthEv
float CNullDriver::getLineWidth() const { return 1.0f; }


// 0x5b8ef0 _ZNK6glitch5video11CNullDriver12getPointSizeEv
float CNullDriver::getPointSize() const { return 1.0f; }


// 0x5b8ef8 _ZNK6glitch5video11CNullDriver19getPolygonModeFrontEv
E_POLYGON_MODE CNullDriver::getPolygonModeFront() const { return 0; }


// 0x5b8f00 _ZNK6glitch5video11CNullDriver18getPolygonModeBackEv
E_POLYGON_MODE CNullDriver::getPolygonModeBack() const { return 0; }


// 0x5b8f08 _ZNK6glitch5video11CNullDriver26getPolygonOffsetFillEnableEv
bool CNullDriver::getPolygonOffsetFillEnable() const { return false; }


// 0x5b8f10 _ZNK6glitch5video11CNullDriver26getPolygonOffsetLineEnableEv
bool CNullDriver::getPolygonOffsetLineEnable() const { return false; }


// 0x5b8f18 _ZNK6glitch5video11CNullDriver27getPolygonOffsetPointEnableEv
bool CNullDriver::getPolygonOffsetPointEnable() const { return false; }


// 0x5b8f20 _ZNK6glitch5video11CNullDriver16getPolygonOffsetERfS2_
void CNullDriver::getPolygonOffset(float& factor, float& units) const { factor = 0.0f; units = 1.0f; }


// 0x5b8f34 _ZNK6glitch5video11CNullDriver30getSampleAlphaToCoverageEnableEv
bool CNullDriver::getSampleAlphaToCoverageEnable() const { return false; }


// 0x5b8f3c _ZNK6glitch5video11CNullDriver23getSampleCoverageEnableEv
bool CNullDriver::getSampleCoverageEnable() const { return false; }


// 0x5b8f44 _ZNK6glitch5video11CNullDriver23getSampleCoverageInvertEv
bool CNullDriver::getSampleCoverageInvert() const { return false; }


// 0x5b8f4c _ZNK6glitch5video11CNullDriver22getSampleCoverageValueEv
float CNullDriver::getSampleCoverageValue() const { return 0.0f; }


// 0x5b8f54 _ZNK6glitch5video11CNullDriver16getScissorEnableEv
bool CNullDriver::getScissorEnable() const { return false; }


// 0x5b8f6c _ZNK6glitch5video11CNullDriver20getStencilTestEnableEv
bool CNullDriver::getStencilTestEnable() const { return false; }


// 0x5b8f74 _ZNK6glitch5video11CNullDriver14getStencilFuncEv
E_COMPARE_FUNC CNullDriver::getStencilFunc() const { return 7; }


// 0x5b8f7c _ZNK6glitch5video11CNullDriver17getStencilFuncRefEPb
uint8_t CNullDriver::getStencilFuncRef(bool*) const { return 0; }


// 0x5b8f84 _ZNK6glitch5video11CNullDriver18getStencilFuncMaskEPb
uint8_t CNullDriver::getStencilFuncMask(bool*) const { return 0xff; }


// 0x5b8f8c _ZNK6glitch5video11CNullDriver16getStencilOpFailEv
E_STENCIL_OP CNullDriver::getStencilOpFail() const { return 0; }


// 0x5b8f94 _ZNK6glitch5video11CNullDriver17getStencilOpZFailEv
E_STENCIL_OP CNullDriver::getStencilOpZFail() const { return 0; }


// 0x5b8f9c _ZNK6glitch5video11CNullDriver17getStencilOpZPassEv
E_STENCIL_OP CNullDriver::getStencilOpZPass() const { return 0; }


// 0x5b8fa4 _ZNK6glitch5video11CNullDriver14getStencilMaskEPb
uint8_t CNullDriver::getStencilMask(bool*) const { return 0xff; }


// 0x5b8fac _ZNK6glitch5video11CNullDriver15getClearStencilEv
uint8_t CNullDriver::getClearStencil() const { return 0; }


// 0x5b8fb4 _ZN6glitch5video11CNullDriver14setBlendEnableEb
void CNullDriver::setBlendEnable(bool) {}


// 0x5b8fc4 _ZN6glitch5video11CNullDriver16setBlendEquationENS0_16E_BLEND_EQUATIONE
void CNullDriver::setBlendEquation(E_BLEND_EQUATION) {}


// 0x5b8fc8 _ZN6glitch5video11CNullDriver12setBlendFuncENS0_14E_BLEND_FACTORES2_
void CNullDriver::setBlendFunc(E_BLEND_FACTOR, E_BLEND_FACTOR) {}


// 0x5b8fcc _ZN6glitch5video11CNullDriver12setColorMaskEbbbb
void CNullDriver::setColorMask(bool, bool, bool, bool) {}


// 0x5b8fdc _ZN6glitch5video11CNullDriver17setCullFaceEnableEb
void CNullDriver::setCullFaceEnable(bool) {}


// 0x5b8fe0 _ZN6glitch5video11CNullDriver11setCullFaceENS0_11E_FACE_SIDEE
void CNullDriver::setCullFace(E_FACE_SIDE) {}


// 0x5b8fe4 _ZN6glitch5video11CNullDriver12setFrontFaceENS0_14E_FACE_WINDINGE
void CNullDriver::setFrontFace(E_FACE_WINDING) {}


// 0x5b8fe8 _ZN6glitch5video11CNullDriver18setDepthTestEnableEb
void CNullDriver::setDepthTestEnable(bool) {}


// 0x5b8fec _ZN6glitch5video11CNullDriver12setDepthFuncENS0_14E_COMPARE_FUNCE
void CNullDriver::setDepthFunc(E_COMPARE_FUNC) {}


// 0x5b8ff0 _ZN6glitch5video11CNullDriver12setDepthMaskEb
void CNullDriver::setDepthMask(bool) {}


// 0x5b8ff4 _ZN6glitch5video11CNullDriver13setClearDepthEf
void CNullDriver::setClearDepth(float) {}


// 0x5b8ff8 _ZN6glitch5video11CNullDriver13setDepthRangeEff
void CNullDriver::setDepthRange(float, float) {}


// 0x5b8ffc _ZN6glitch5video11CNullDriver15setDitherEnableEb
void CNullDriver::setDitherEnable(bool) {}


// 0x5b9000 _ZN6glitch5video11CNullDriver12setLineWidthEf
void CNullDriver::setLineWidth(float) {}


// 0x5b9004 _ZN6glitch5video11CNullDriver12setPointSizeEf
void CNullDriver::setPointSize(float) {}


// 0x5b9008 _ZN6glitch5video11CNullDriver19setPolygonModeFrontENS0_14E_POLYGON_MODEE
void CNullDriver::setPolygonModeFront(E_POLYGON_MODE) {}


// 0x5b900c _ZN6glitch5video11CNullDriver18setPolygonModeBackENS0_14E_POLYGON_MODEE
void CNullDriver::setPolygonModeBack(E_POLYGON_MODE) {}


// 0x5b9010 _ZN6glitch5video11CNullDriver26setPolygonOffsetFillEnableEb
void CNullDriver::setPolygonOffsetFillEnable(bool) {}


// 0x5b9014 _ZN6glitch5video11CNullDriver26setPolygonOffsetLineEnableEb
void CNullDriver::setPolygonOffsetLineEnable(bool) {}


// 0x5b9018 _ZN6glitch5video11CNullDriver27setPolygonOffsetPointEnableEb
void CNullDriver::setPolygonOffsetPointEnable(bool) {}


// 0x5b901c _ZN6glitch5video11CNullDriver16setPolygonOffsetEff
void CNullDriver::setPolygonOffset(float, float) {}


// 0x5b9020 _ZN6glitch5video11CNullDriver30setSampleAlphaToCoverageEnableEb
void CNullDriver::setSampleAlphaToCoverageEnable(bool) {}


// 0x5b9024 _ZN6glitch5video11CNullDriver23setSampleCoverageEnableEb
void CNullDriver::setSampleCoverageEnable(bool) {}


// 0x5b9028 _ZN6glitch5video11CNullDriver23setSampleCoverageInvertEb
void CNullDriver::setSampleCoverageInvert(bool) {}


// 0x5b902c _ZN6glitch5video11CNullDriver22setSampleCoverageValueEf
void CNullDriver::setSampleCoverageValue(float) {}


// 0x5b9030 _ZN6glitch5video11CNullDriver16setScissorEnableEb
void CNullDriver::setScissorEnable(bool) {}


// 0x5b9034 _ZN6glitch5video11CNullDriver10setScissorERKNS_4core4rectIiEE
void CNullDriver::setScissor(const core::rect<int32_t>&) {}


// 0x5b9038 _ZN6glitch5video11CNullDriver20setStencilTestEnableEb
void CNullDriver::setStencilTestEnable(bool) {}


// 0x5b903c _ZN6glitch5video11CNullDriver14setStencilFuncENS0_14E_COMPARE_FUNCE
void CNullDriver::setStencilFunc(E_COMPARE_FUNC) {}


// 0x5b9040 _ZN6glitch5video11CNullDriver17setStencilFuncRefEh
void CNullDriver::setStencilFuncRef(uint8_t) {}


// 0x5b9044 _ZN6glitch5video11CNullDriver18setStencilFuncMaskEh
void CNullDriver::setStencilFuncMask(uint8_t) {}


// 0x5b9048 _ZN6glitch5video11CNullDriver16setStencilOpFailENS0_12E_STENCIL_OPE
void CNullDriver::setStencilOpFail(E_STENCIL_OP) {}


// 0x5b904c _ZN6glitch5video11CNullDriver17setStencilOpZFailENS0_12E_STENCIL_OPE
void CNullDriver::setStencilOpZFail(E_STENCIL_OP) {}


// 0x5b9050 _ZN6glitch5video11CNullDriver17setStencilOpZPassENS0_12E_STENCIL_OPE
void CNullDriver::setStencilOpZPass(E_STENCIL_OP) {}


// 0x5b9054 _ZN6glitch5video11CNullDriver14setStencilMaskEh
void CNullDriver::setStencilMask(uint8_t) {}


// 0x5b9058 _ZN6glitch5video11CNullDriver15setClearStencilEh
void CNullDriver::setClearStencil(uint8_t) {}


// 0x5b905c _ZNK6glitch5video11CNullDriver14getRenderStateERNS0_6detail6driver12SRenderStateE
void CNullDriver::getRenderState(detail::driver::SRenderState&) const {}


// 0x5b9060 _ZN6glitch5video11CNullDriver14setRenderStateERKNS0_6detail6driver12SRenderStateE
void CNullDriver::setRenderState(const detail::driver::SRenderState&) {}


// 0x5b9078 _ZN6glitch5video11CNullDriver21commitCurrentMaterialEv
void CNullDriver::commitCurrentMaterial() {}


// 0x5b907c _ZN6glitch5video11CNullDriver22commitMaterialRendererEPNS0_17CMaterialRendererE
void CNullDriver::commitMaterialRenderer(CMaterialRenderer*) {}


// 0x5b9080 _ZN6glitch5video11CNullDriver15setRenderTargetERKN5boost13intrusive_ptrINS0_8ITextureEEEi
bool CNullDriver::setRenderTarget(const boost::intrusive_ptr<ITexture>&, int32_t) { return false; }


// 0x5b9088 _ZN6glitch5video11CNullDriver15setViewportImplERKNS_4core4rectIiEE
void CNullDriver::setViewportImpl(const core::rect<int32_t>&) {}


// 0x5b908c _ZNK6glitch5video11CNullDriver20getMaxUserClipPlanesEv
uint32_t CNullDriver::getMaxUserClipPlanes() const { return 0; }


// 0x5b90a4 _ZNK6glitch5video11CNullDriver14getColorFormatEv
E_PIXEL_FORMAT CNullDriver::getColorFormat() const { return 5; }


// 0x5b90ac _ZNK6glitch5video11CNullDriver13getDriverTypeEv
E_DRIVER_TYPE CNullDriver::getDriverType() const { return 0; }


// 0x5b90b4 _ZN6glitch5video11CNullDriver16createScreenShotEv
boost::intrusive_ptr<CImage> CNullDriver::createScreenShot() { return {}; }


// 0x5b90c0 _ZN6glitch5video11CNullDriver19onMaterialDestroyedEPNS0_9CMaterialE
void CNullDriver::onMaterialDestroyed(CMaterial*) {}


// 0x5b90c4 _ZN6glitch5video11CNullDriver12beginCompileEPNS0_12IVideoDriver12ICompileDataE
void CNullDriver::beginCompile(IVideoDriver::ICompileData*) {}


// 0x5b90c8 _ZN6glitch5video11CNullDriver10endCompileEv
void CNullDriver::endCompile() {}


// 0x5b90cc _ZN6glitch5video11CNullDriver18createRenderBufferERKNS_4core11dimension2dIiEENS0_14E_PIXEL_FORMATE
boost::intrusive_ptr<IRenderBuffer> CNullDriver::createRenderBuffer(const core::dimension2d<int32_t>&, E_PIXEL_FORMAT) { return {}; }


// 0x5b90d8 _ZN6glitch5video11CNullDriver18createRenderTargetERKN5boost13intrusive_ptrINS0_8ITextureEEEj
boost::intrusive_ptr<IRenderTarget> CNullDriver::createRenderTarget(const boost::intrusive_ptr<ITexture>&, uint32_t) { return {}; }


// 0x5b90e4 _ZN6glitch5video11CNullDriver26createMultipleRenderTargetEv
boost::intrusive_ptr<IRenderTarget> CNullDriver::createMultipleRenderTarget() { return {}; }


// 0x5b90f0 _ZN6glitch5video11CNullDriver18restoreShadowStateEv
void CNullDriver::restoreShadowState() {}


// 0x5b90f4 _ZN6glitch5video11CNullDriver8drawImplERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE
bool CNullDriver::drawImpl(const boost::intrusive_ptr<const CVertexStreams>&, const CPrimitiveStream&, CDriverBinding**) { return false; }


// 0x5b90fc _ZN6glitch5video11CNullDriver21commitCurrentMaterialEb
void CNullDriver::commitCurrentMaterial(bool) {}


// 0x5b8fb8 _ZN6glitch5video11CNullDriver13setBlendColorENS0_6SColorE
void CNullDriver::setBlendColor(SColor) {}


// 0x5b8fd0 _ZN6glitch5video11CNullDriver13setClearColorENS0_6SColorE
void CNullDriver::setClearColor(SColor) {}


// 0x5b9094 _ZN6glitch5video11CNullDriver10draw2DLineERKNS_4core10position2dIiEES6_NS0_6SColorE
void CNullDriver::draw2DLine(const core::position2d<int32_t>&, const core::position2d<int32_t>&, SColor) {}


// 0x5b90a0 _ZN6glitch5video11CNullDriver15draw2DRectangleERKNS_4core4rectIiEES6_PKNS0_6SColorEPS5_
void CNullDriver::draw2DRectangle(const core::rect<int32_t>&, const core::rect<int32_t>&, const SColor*, const core::rect<int32_t>*) {}


}  // namespace glitch::video
