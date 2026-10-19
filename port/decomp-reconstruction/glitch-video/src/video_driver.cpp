#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#include <dlfcn.h>
#include <unwind.h>
static _Unwind_Reason_Code dh2BtCb(struct _Unwind_Context* c, void*) { uintptr_t pc = _Unwind_GetIP(c); Dl_info i; if (dladdr((void*)pc, &i)) __android_log_print(ANDROID_LOG_ERROR, "DH2DBG", "  bt off 0x%lx", (unsigned long)(pc - (uintptr_t)i.dli_fbase)); return _URC_NO_REASON; }
#endif
#include "glitch-video/video_driver.hpp"

#include <cstdio>
#include <utility>

#include "glitch-scene-collada-gui/scene/CAppendMeshBuffer.hpp"
#include "glitch-video/batch_baker.hpp"
#include "glitch-video/deps/os_logging.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/material_parameters_part_1b.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/shader_manager.hpp"
#include "glitch-video/pixel_format.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/unreconstructed.hpp"
#include "glitch-video/video_names.hpp"

namespace glitch::video {

// 0x5aaf1c _ZN6glitch5video12IVideoDriverC2EPNS_7IDeviceEPNS0_14IShaderManagerEPNS0_24CMaterialRendererManagerEPNS0_15CTextureManagerEPNS0_31CGlobalMaterialParameterManagerERKN5boost13intrusive_ptrINS0_6CLightEEE
// 0x5ab2f8 _ZN6glitch5video12IVideoDriverC1EPNS_7IDeviceEPNS0_14IShaderManagerEPNS0_24CMaterialRendererManagerEPNS0_15CTextureManagerEPNS0_31CGlobalMaterialParameterManagerERKN5boost13intrusive_ptrINS0_6CLightEEE
// The members start as the constructor writes them (in-class initialisers: count 1, empty names, the dynamic-light ids
// 0xffff, texture units 8, options 16, capability word 64, the batch limit 1024, the fog ids 0xffff, ...). The shader
// manager is told about the driver (IShaderManager::init, vtable +0x08). A missing default light is allocated and reset. A
// missing material renderer manager (0x98 bytes), texture manager (0x78) or global parameter manager (0x3c) is created
// and the state flags record it (0x10 for the renderer manager, 0x20 for the other two). When the global parameter manager
// was passed in, the DynamicLight0, FogColor0..3 and SceneAmbientLight ids are looked up in it; a manager created here is
// empty and nothing is looked up. The renderer manager pointer is copied to +0x104 and +0x108 is cleared.
// Port guard: the shader manager call is skipped for a null shader manager (the original calls it unconditionally).
IVideoDriver::IVideoDriver(glitch::IDevice* device, IShaderManager* shaderManager,
                           CMaterialRendererManager* rendererManager, CTextureManager* textureManager,
                           CGlobalMaterialParameterManager* globalParameters,
                           const boost::intrusive_ptr<CLight>& defaultLight)
    : m_defaultDynamicLight(defaultLight),
      m_device(device),
      m_shaderManager(shaderManager),
      m_materialRendererManager(rendererManager),
      m_textureManager(textureManager),
      m_globalParameters(globalParameters) {
    referenceCounter = 1;  // +0x04
    if (m_shaderManager != nullptr) {
        m_shaderManager->init(this, true);  // vtable +0x08 of the shader manager
    }
    if (!m_defaultDynamicLight) {
        m_defaultDynamicLight = CLight::allocate(nullptr);
        resetDefaultDynamicLight();
    }
    if (m_materialRendererManager == nullptr) {
        m_materialRendererManager = new CMaterialRendererManager(this);
        m_stateFlags |= 0x10;
    }
    if (m_textureManager == nullptr) {
        m_textureManager = new CTextureManager(this);
        m_stateFlags |= 0x20;
    }
    if (m_globalParameters != nullptr) {
        char name[256];
        std::snprintf(name, sizeof name, "%s0", "DynamicLight");
        m_dynamicLightBase = m_globalParameters->getId(name);
        if (m_dynamicLightBase != 0xffff) {
            for (uint32_t i = 0; i != 4; ++i) {
                std::snprintf(name, sizeof name, "%s%u", "FogColor", i);
                m_fogColorIds[i] = m_globalParameters->getId(name);
            }
            m_ambientLightId = m_globalParameters->getId("SceneAmbientLight");
        }
    } else {
        m_globalParameters = new CGlobalMaterialParameterManager(this);
        m_stateFlags |= 0x20;
    }
    m_rendererManagerCopy = m_materialRendererManager;  // +0x104
    m_techniqueRemap = nullptr;                          // +0x108
}

// 0x5ad5b4 _ZN6glitch5video12IVideoDriverD2Ev / 0x5ae2dc D1 / 0x5ae5d4 D0
// The managers the constructor created are deleted: the material renderer manager when bit 0x10 is set; the texture
// manager and then the global parameter manager when bit 0x20 is set (the flag covers both, as in the original). The
// remaining members (intrusive pointers, vectors, strings) release themselves. The shader manager is not touched, as in the
// original (the driver that creates it does not delete it either).
IVideoDriver::~IVideoDriver() {
    if ((m_stateFlags & 0x10) != 0) {
        delete m_materialRendererManager;
    }
    if ((m_stateFlags & 0x20) != 0) {
        delete m_textureManager;
        delete m_globalParameters;
    }
    m_materialRendererManager = nullptr;
    m_textureManager = nullptr;
    m_globalParameters = nullptr;
}

// 0x5aab60 _ZN6glitch5video12IVideoDriver4initEttah
// Second-stage init: stores the init byte (+0x135), the +0x3e halfword and the dynamic-light limit (+0x3c), then registers
// the global parameters in the manager: DynamicLight<n> (light type 18, one element, size argument n), each set to the
// default light; SceneAmbientLight (type 28, SColorf); and for the four fog units FogColor<n> (SColor 0xff8000ff, set before
// its use is grabbed), FogDensity<n> (float 1.0, set and then grabbed) and FogStartEnd<n> (vector2d (0, 1)).
void IVideoDriver::init(uint16_t unk3e, uint16_t lightLimit, uint8_t flag) {
    unk_135 = flag;
    unk_3e = unk3e;
    m_dynamicLightLimit = lightLimit;
    CGlobalMaterialParameterManager* globals = m_globalParameters;
    char name[32];
    if (lightLimit != 0) {
        std::snprintf(name, sizeof name, "%s0", "DynamicLight");
        uint16_t id = globals->addParameter(name, 18, 18, 1, 0);
        m_dynamicLightBase = id;
        globals->grabInternal(id);
        detail::part1b::setParameter(globals->store(), m_dynamicLightBase, 0, m_defaultDynamicLight.get());
        for (uint32_t i = 1; i < lightLimit; ++i) {
            std::snprintf(name, sizeof name, "%s%u", "DynamicLight", i);
            id = globals->addParameter(name, 18, 18, 1, static_cast<uint8_t>(i));
            globals->grabInternal(id);
            detail::part1b::setParameter(globals->store(), id, 0, m_defaultDynamicLight.get());
        }
    }
    m_ambientLightId = globals->addParameter("SceneAmbientLight", 28, 17, 1, 255);
    globals->grabInternal(m_ambientLightId);
    for (uint32_t i = 0; i != 4; ++i) {
        std::snprintf(name, sizeof name, "%s%u", "FogColor", i);
        m_fogColorIds[i] = globals->addParameter(name, 31, 16, 1, 255);
        globals->grabInternal(m_fogColorIds[i]);
        SColor fogColor;
        fogColor.color = 0xff8000ffu;  // the bytes ff 00 80 ff
        detail::part1b::setParameter(globals->store(), m_fogColorIds[i], 0, fogColor);
        std::snprintf(name, sizeof name, "%s%u", "FogDensity", i);
        const uint16_t density = globals->addParameter(name, 29, 5, 1, 255);
        const float one = 1.0f;
        detail::part1b::setParameter(globals->store(), density, 0, one);
        globals->grabInternal(density);
        std::snprintf(name, sizeof name, "%s%u", "FogStartEnd", i);
        const uint16_t startEnd = globals->addParameter(name, 30, 6, 1, 255);
        const core::vector2d<float> range{0.0f, 1.0f};
        detail::part1b::setParameter(globals->store(), startEnd, 0, range);
        globals->grabInternal(startEnd);
    }
}

// IVideoDriver::DefaultAttribMap: .bss in the original (zero until thisAppendBatch fills it).
uint8_t IVideoDriver::DefaultAttribMap[30] = {};

// 0x5aab18 _ZNK6glitch5video12IVideoDriver6getFPSEv
uint32_t IVideoDriver::getFPS() const { return m_fpsCounter.getFPS(); }

// 0x5aaae8 _ZNK6glitch5video12IVideoDriver16getDrawCallCountEv
uint32_t IVideoDriver::getDrawCallCount() const { return m_fpsCounter.getDrawCalls(); }

// 0x5aaae0 _ZNK6glitch5video12IVideoDriver18getDrawCall2DCountEv
uint32_t IVideoDriver::getDrawCall2DCount() const { return m_fpsCounter.getDrawCalls2D(); }

// 0x5aaad8 _ZNK6glitch5video12IVideoDriver22getTextureBindingCountEv
uint32_t IVideoDriver::getTextureBindingCount() const { return m_fpsCounter.getTextureBindings(); }

// 0x5a8cc8 _ZN6glitch5video12IVideoDriver16checkDriverResetEv
bool IVideoDriver::checkDriverReset() { return false; }

// 0x5a90f4 _ZNK6glitch5video12IVideoDriver24getMaximalPrimitiveCountEv
uint32_t IVideoDriver::getMaximalPrimitiveCount() const { return 0xffffffffu; }

// 0x5aa8a0 _ZNK6glitch5video12IVideoDriver19checkPrimitiveCountEj
// Reconstructed: the maximal count is read through the virtual accessor (the listing's vtable slot
// +0x60), a count within it passes, otherwise the failure line is formatted and logged at level 3
// (ELL_ERROR) and the call fails. Deviation: the original sprintf's the message into a 1 KiB stack
// buffer; the port snprintf's into a buffer of the same size, which cannot differ for this message.
bool IVideoDriver::checkPrimitiveCount(uint32_t count) const {
    const uint32_t maxCount = getMaximalPrimitiveCount();
    if (maxCount >= count) return true;
    char buffer[1024];
    std::snprintf(buffer, sizeof buffer,
                  "Could not draw triangles, too many primitives(%u), maxium is %u.", count, maxCount);
    glitch::os::Printer::log(buffer, glitch::ELL_ERROR);
    return false;
}

// 0x5a909c _ZN6glitch5video12IVideoDriver17setMaxTextureSizeERKNS_4core11dimension2dIiEE
void IVideoDriver::setMaxTextureSize(const core::dimension2d<int32_t>& size) {
    m_maxTextureSize = size;
}

// 0x5a8b90 _ZN6glitch5video12IVideoDriver17onShaderDestroyedEPNS0_7IShaderE
void IVideoDriver::onShaderDestroyed(IShader* shader) {
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
    __android_log_print(ANDROID_LOG_ERROR, "DH2DBG", "onShaderDestroyed %p current=%p name=%s", (void*)shader, (void*)m_shaderF4, shader->m_name.c_str());
    _Unwind_Backtrace(dh2BtCb, nullptr);
#endif
    if (m_shaderF4 == shader) {
        m_shaderF4 = nullptr;
    }
}

// 0x5a8b74 _ZN6glitch5video12IVideoDriver10beginSceneEv
bool IVideoDriver::beginScene() {
    m_framePrimitives = 0;
    m_frameDrawCalls = 0;
    m_frameDrawCalls2D = 0;
    m_frameTextureBindings = 0;
    return true;
}

// 0x5aab20 _ZN6glitch5video12IVideoDriver8endSceneEv
// The original reads os::Timer::getRealTime() and registers the frame with the FPS counter.
bool IVideoDriver::endScene() { return endScene(os::Timer::getRealTime()); }

// Port helper: the same registration with an explicit time stamp (os::Timer::getRealTime in the original).
bool IVideoDriver::endScene(uint32_t now) {
    m_fpsCounter.registerFrame(now, m_framePrimitives, m_frameDrawCalls, m_frameDrawCalls2D,
                               m_frameTextureBindings);
    return true;
}

// 0x5aaaf0 _ZNK6glitch5video12IVideoDriver22getPrimitiveCountDrawnEj
uint32_t IVideoDriver::getPrimitiveCountDrawn(uint32_t which) const {
    if (which == 0) return m_fpsCounter.getPrimitive();
    if (which != 1) return m_fpsCounter.getPrimitiveTotal();
    return m_fpsCounter.getPrimitiveAverage();
}

// 0x5a8ba4 _ZN6glitch5video12IVideoDriver19onMaterialDestroyedEPNS0_9CMaterialE
void IVideoDriver::onMaterialDestroyed(CMaterial* material) {
    bool matchedEc = material == m_materialEc;
    if (matchedEc) {
        m_stateE8 = nullptr;
        m_materialEc = nullptr;
    }
    if (matchedEc) {
        m_flagF8 = 0xff;
    }
    if (material == m_materialF0) {
        m_flagF9 = 0xff;
        m_materialF0 = nullptr;
    }
}

// 0x5b1338 _ZN6glitch5video12IVideoDriver22unregisterRenderBufferEPNS0_13IRenderBufferE
void IVideoDriver::unregisterRenderBuffer(IRenderBuffer* buffer) {
    for (auto it = m_renderBuffers.begin(); it != m_renderBuffers.end(); ++it) {
        if (*it == buffer) {
            m_renderBuffers.erase(it);
            return;
        }
    }
}

// 0x5a90b0 _ZN6glitch5video12IVideoDriver9setOptionEjb
void IVideoDriver::setOption(uint32_t option, bool enable) {
    if (enable) {
        m_options |= option;
        return;
    }
    m_options &= ~option;
    if ((option & 0x100) != 0) {
        flush();  // vtable +0x1fc
    }
}

// 0x5a8ae8 _ZN6glitch5video12IVideoDriver23resetDefaultDynamicLightEv
void IVideoDriver::resetDefaultDynamicLight() {
    CLight* light = m_defaultDynamicLight.get();
    light->m_ambientColor = SColorf{0.0f, 0.0f, 0.0f, 0.0f};
    light->m_diffuseColor = SColorf{0.0f, 0.0f, 0.0f, 0.0f};
    light->m_specularColor = SColorf{0.0f, 0.0f, 0.0f, 0.0f};
    light->m_attenuation.X = 1.0f;
    light->m_attenuation.Y = 0.0f;
    light->m_attenuation.Z = 0.0f;
    light->m_radius = 0.0f;
    light->m_innerConeAngle = 0.0f;
    light->m_outerConeAngle = 0.0f;
    light->m_falloff = 0.0f;
    light->m_type = static_cast<uint16_t>(kLightTypeDefaultDynamic);
    light->m_castShadows = 0;
}

// 0x5aa940 _ZNK6glitch5video12IVideoDriver15getDynamicLightEt
// The slot of dynamic light `index` in the global parameter manager's value buffer (the DynamicLight0 entry's offset plus the
// pointer width per light); an index past the count gives a shared null light.
const boost::intrusive_ptr<CLight>& IVideoDriver::getDynamicLight(uint16_t index) const {
    static const boost::intrusive_ptr<CLight> nullLight;  // getDynamicLight::nullLight
    if (m_dynamicLightCount <= index) {
        return nullLight;
    }
    const auto* entry = m_globalParameters->m_defs.get(m_dynamicLightBase);
    if (!detail::globalmaterialparametermanager::SValueTraits::isSet(entry->value)) {
        return nullLight;  // port guard: the original reads through the null entry
    }
    const uint8_t* slot = m_globalParameters->store().values.data() + entry->value.offset + sizeof(void*) * index;
    return *reinterpret_cast<const boost::intrusive_ptr<CLight>*>(slot);
}

// 0x5aaa40 _ZN6glitch5video12IVideoDriver15addDynamicLightERKN5boost13intrusive_ptrINS0_6CLightEEE
// When the limit (+0x3c) exceeds the count (+0x3a), the light is stored in the parameter DynamicLight0 + count (index 0) and
// the count grows; the result is the setter's result in that case and the limit otherwise.
uint32_t IVideoDriver::addDynamicLight(const boost::intrusive_ptr<CLight>& light) {
    const uint16_t count = m_dynamicLightCount;  // +0x3a
    uint32_t result = m_dynamicLightLimit;       // +0x3c
    if (result > count) {
        result = detail::part1b::setParameter(m_globalParameters->store(), static_cast<uint16_t>(count + m_dynamicLightBase), 0u,
                                              light.get());
        ++m_dynamicLightCount;                   // +0x3a, read again after the call as in the listing
    }
    return result;
}

// 0x5aaa84 _ZN6glitch5video12IVideoDriver21deleteAllDynamicLightsEv
// Every stored light is replaced by the default light and the count is cleared.
void IVideoDriver::deleteAllDynamicLights() {
    const uint16_t first = m_dynamicLightBase;
    const uint16_t end = static_cast<uint16_t>(first + m_dynamicLightCount);
    for (uint16_t id = first; id < end; ++id) {
        detail::part1b::setParameter(m_globalParameters->store(), id, 0u, m_defaultDynamicLight.get());
    }
    m_dynamicLightCount = 0;
}

// 0x5a8e3c _ZN6glitch5video12IVideoDriver28setFramebufferScreenInternalERKNS_4core4rectIiEE
// The rectangle is clamped to the device area (the screen framebuffer's margins plus its size); the framebuffer then takes the
// clamped size, the screen offset and the margins that are left. The size it had before is returned.
core::dimension2d<int32_t> IVideoDriver::setFramebufferScreenInternal(const core::rect<int32_t>& rect) {
    IFramebuffer* framebuffer = static_cast<IFramebuffer*>(m_renderTargets.front().get());
    const core::dimension2d<int32_t> previous{framebuffer->m_width, framebuffer->m_height};
    const int32_t deviceWidth = framebuffer->m_screenMarginX + framebuffer->m_width;
    const int32_t deviceHeight = framebuffer->m_screenMarginY + framebuffer->m_height;
    int32_t left = rect.UpperLeftCorner.X > 0 ? rect.UpperLeftCorner.X : 0;
    int32_t right = rect.LowerRightCorner.X;
    int32_t bottom = rect.LowerRightCorner.Y;
    int32_t top = rect.UpperLeftCorner.Y > 0 ? rect.UpperLeftCorner.Y : 0;
    if (deviceWidth < right) right = deviceWidth;
    if (deviceHeight < bottom) bottom = deviceHeight;
    if (bottom < top) top = bottom;
    if (right < left) left = right;
    const int32_t width = right - left;
    const int32_t height = bottom - top;
    framebuffer->m_width = width;
    framebuffer->m_screenMarginX = deviceWidth - width;
    framebuffer->m_screenMarginY = deviceHeight - height;
    framebuffer->m_height = height;
    framebuffer->m_screenX = left;
    framebuffer->m_screenY = top;
    return previous;
}

// 0x5a8ef0 _ZN6glitch5video12IVideoDriver19setFramebufferScreenERKNS_4core4rectIiEE
// When the framebuffer's viewport still has the size it had before the change, the viewport is reset to the whole new size
// through its setViewport slot (+0x0c). Bit 0 of the state flags records that a screen was set.
void IVideoDriver::setFramebufferScreen(const core::rect<int32_t>& rect) {
    const core::dimension2d<int32_t> previous = setFramebufferScreenInternal(rect);
    IRenderTarget* framebuffer = m_renderTargets.front().get();
    const core::rect<int32_t>& viewport = framebuffer->m_viewport;
    if (viewport.LowerRightCorner.X - viewport.UpperLeftCorner.X == previous.Width &&
        viewport.LowerRightCorner.Y - viewport.UpperLeftCorner.Y == previous.Height) {
        core::rect<int32_t> whole;
        whole.UpperLeftCorner.X = 0;
        whole.UpperLeftCorner.Y = 0;
        whole.LowerRightCorner.X = framebuffer->m_width;
        whole.LowerRightCorner.Y = framebuffer->m_height;
        framebuffer->setViewport(whole);
    }
    m_stateFlags |= 1u;
}

// 0x5a8f88 _ZNK6glitch5video12IVideoDriver32fixUpProjectionMatrixOrientationERNS_4core8CMatrix4IfEE
// With only the screen framebuffer on the stack, a quarter-turn orientation rotates the projection: orientations 1 and 3 swap
// the row elements in pairs (0<->1, 4<->5, 8<->9, 12<->13); orientations 2 and 3 negate the odd elements of the first row of
// each pair (1, 5, 9, 13) and orientations 1 and 2 the even ones (0, 4, 8, 12). The identity flag is cleared by each step.
void IVideoDriver::fixUpProjectionMatrixOrientation(core::CMatrix4<float>& projection) const {
    if (m_renderTargets.size() > 1) return;
    const int32_t orientation = m_orientation;
    if (orientation == 0) return;
    float* m = projection.M;
    if (orientation == 1 || orientation == 3) {
        std::swap(m[0], m[1]);
        std::swap(m[4], m[5]);
        std::swap(m[8], m[9]);
        std::swap(m[12], m[13]);
        projection.flag = false;
    }
    if (static_cast<uint32_t>(orientation - 2) <= 1u) {
        m[1] = -m[1];
        m[5] = -m[5];
        m[9] = -m[9];
        m[13] = -m[13];
        projection.flag = false;
    }
    if (static_cast<uint32_t>(orientation - 1) <= 1u) {
        m[0] = -m[0];
        m[4] = -m[4];
        m[8] = -m[8];
        m[12] = -m[12];
        projection.flag = false;
    }
}

// 0x5a97e4 / 0x5a9ac4 _ZNK6glitch5video12IVideoDriver16screen2DevicePosI{i,f}EEN5boost9enable_ifI...
// Moves a screen position into device space: the screen offset is added and the position is mirrored / swapped for the
// orientation. Nothing happens for orientation 0 when the framebuffer has no margins.
template <typename T>
void IVideoDriver::screen2DevicePos(T& x, T& y) const {
    const IFramebuffer* framebuffer = static_cast<const IFramebuffer*>(m_renderTargets.front().get());
    if (m_orientation == 0 && framebuffer->m_screenMarginX == 0 && framebuffer->m_screenMarginY == 0) return;
    const T deviceWidth = static_cast<T>(framebuffer->m_screenMarginX + framebuffer->m_width);
    const T deviceHeight = static_cast<T>(framebuffer->m_screenMarginY + framebuffer->m_height);
    x += static_cast<T>(framebuffer->m_screenX);
    y += static_cast<T>(framebuffer->m_screenY);
    switch (m_orientation) {
        case 2:
            y = deviceHeight - y;
            x = deviceWidth - x;
            break;
        case 3: {
            const T oldY = y;
            y = x;
            x = deviceHeight - oldY;
            break;
        }
        case 1: {
            const T oldY = y;
            y = deviceWidth - x;
            x = oldY;
            break;
        }
        default:
            break;
    }
}

// 0x5a98b4 / 0x5a9bd4 _ZNK6glitch5video12IVideoDriver16device2ScreenPosI{i,f}EEN5boost9enable_ifI...
// The inverse of screen2DevicePos.
template <typename T>
void IVideoDriver::device2ScreenPos(T& x, T& y) const {
    const IFramebuffer* framebuffer = static_cast<const IFramebuffer*>(m_renderTargets.front().get());
    if (m_orientation == 0) {
        if (framebuffer->m_screenMarginX == 0 && framebuffer->m_screenMarginY == 0) return;
    } else {
        const T deviceWidth = static_cast<T>(framebuffer->m_width + framebuffer->m_screenMarginX);
        const T deviceHeight = static_cast<T>(framebuffer->m_screenMarginY + framebuffer->m_height);
        switch (m_orientation) {
            case 2:
                y = deviceHeight - y;
                x = deviceWidth - x;
                break;
            case 3: {
                const T newX = deviceHeight - x;
                x = y;
                y = newX;
                break;
            }
            case 1: {
                const T oldX = x;
                x = deviceWidth - y;
                y = oldX;
                break;
            }
            default:
                break;
        }
    }
    x -= static_cast<T>(framebuffer->m_screenX);
    y -= static_cast<T>(framebuffer->m_screenY);
}

// 0x5a9ce8 / 0x5a9ddc _ZNK6glitch5video12IVideoDriver13screen2DeviceI{i,f}EEN5boost9enable_ifI...
// Converts both corners of a rectangle with screen2DevicePos and then swaps the corner coordinates the orientation turns
// around.
template <typename T>
void IVideoDriver::screen2Device(core::rect<T>& rect) const {
    const IFramebuffer* framebuffer = static_cast<const IFramebuffer*>(m_renderTargets.front().get());
    if (m_orientation == 0 && framebuffer->m_screenMarginX == 0 && framebuffer->m_screenMarginY == 0) return;
    T x = rect.UpperLeftCorner.X;
    T y = rect.UpperLeftCorner.Y;
    screen2DevicePos(x, y);
    rect.UpperLeftCorner.X = x;
    rect.UpperLeftCorner.Y = y;
    T bottom = rect.LowerRightCorner.Y;
    T right = rect.LowerRightCorner.X;
    screen2DevicePos(right, bottom);
    rect.LowerRightCorner.X = right;
    rect.LowerRightCorner.Y = bottom;
    switch (m_orientation) {
        case 2:
            std::swap(rect.UpperLeftCorner.X, rect.LowerRightCorner.X);
            std::swap(rect.UpperLeftCorner.Y, rect.LowerRightCorner.Y);
            break;
        case 3:
            std::swap(rect.UpperLeftCorner.X, rect.LowerRightCorner.X);
            break;
        case 1:
            std::swap(rect.UpperLeftCorner.Y, rect.LowerRightCorner.Y);
            break;
        default:
            break;
    }
}

// 0x5a9ee0 / 0x5aa114 _ZNK6glitch5video12IVideoDriver13device2ScreenI{i,f}EEN5boost9enable_ifI...
template <typename T>
void IVideoDriver::device2Screen(core::rect<T>& rect) const {
    const IFramebuffer* framebuffer = static_cast<const IFramebuffer*>(m_renderTargets.front().get());
    if (m_orientation == 0 && framebuffer->m_screenMarginX == 0 && framebuffer->m_screenMarginY == 0) return;
    T x = rect.UpperLeftCorner.X;
    T y = rect.UpperLeftCorner.Y;
    device2ScreenPos(x, y);
    rect.UpperLeftCorner.X = x;
    rect.UpperLeftCorner.Y = y;
    T bottom = rect.LowerRightCorner.Y;
    T right = rect.LowerRightCorner.X;
    device2ScreenPos(right, bottom);
    rect.LowerRightCorner.X = right;
    rect.LowerRightCorner.Y = bottom;
    switch (m_orientation) {
        case 2:
            std::swap(rect.UpperLeftCorner.X, rect.LowerRightCorner.X);
            std::swap(rect.UpperLeftCorner.Y, rect.LowerRightCorner.Y);
            break;
        case 3:
            std::swap(rect.UpperLeftCorner.Y, rect.LowerRightCorner.Y);
            break;
        case 1:
            std::swap(rect.UpperLeftCorner.X, rect.LowerRightCorner.X);
            break;
        default:
            break;
    }
}

template void IVideoDriver::screen2DevicePos<int32_t>(int32_t&, int32_t&) const;
template void IVideoDriver::screen2DevicePos<float>(float&, float&) const;
template void IVideoDriver::device2ScreenPos<int32_t>(int32_t&, int32_t&) const;
template void IVideoDriver::device2ScreenPos<float>(float&, float&) const;
template void IVideoDriver::screen2Device<int32_t>(core::rect<int32_t>&) const;
template void IVideoDriver::screen2Device<float>(core::rect<float>&) const;
template void IVideoDriver::device2Screen<int32_t>(core::rect<int32_t>&) const;
template void IVideoDriver::device2Screen<float>(core::rect<float>&) const;

// 0x5a9fd4 _ZN6glitch5video12IVideoDriver14setOrientationENS0_13E_ORIENTATIONE
// A changed orientation keeps the screen content: the viewport and the screen rectangle are taken in device space, the
// framebuffer is reset to the whole device, the width and height are exchanged when the quarter-turn parity changes, and the
// viewport and screen rectangle are put back in the new orientation's screen space.
void IVideoDriver::setOrientation(E_ORIENTATION orientation) {
    if (m_orientation == orientation) return;
    IFramebuffer* framebuffer = static_cast<IFramebuffer*>(m_renderTargets.front().get());
    core::rect<int32_t> viewport = framebuffer->m_viewport;
    screen2Device<int32_t>(viewport);
    IFramebuffer* current = static_cast<IFramebuffer*>(m_renderTargets.front().get());
    core::rect<int32_t> screen;
    screen.UpperLeftCorner.X = current->m_screenX;
    screen.UpperLeftCorner.Y = current->m_screenY;
    screen.LowerRightCorner.X = current->m_width + current->m_screenX;
    screen.LowerRightCorner.Y = current->m_height + current->m_screenY;
    core::rect<int32_t> whole;
    whole.UpperLeftCorner.X = 0;
    whole.UpperLeftCorner.Y = 0;
    whole.LowerRightCorner.X = framebuffer->m_screenMarginX + framebuffer->m_width;
    whole.LowerRightCorner.Y = framebuffer->m_screenMarginY + framebuffer->m_height;
    setFramebufferScreenInternal(whole);
    screen2Device<int32_t>(screen);
    if ((orientation & 1) != (m_orientation & 1)) {
        std::swap(framebuffer->m_width, framebuffer->m_height);
    }
    m_orientation = orientation;
    device2Screen<int32_t>(screen);
    setFramebufferScreenInternal(screen);
    device2Screen<int32_t>(viewport);
    framebuffer->setViewport(viewport);
}

// 0x5aa2e0 _ZN6glitch5video12IVideoDriver13createBindingEv
CDriverBinding* IVideoDriver::createBinding() { return new CDriverBinding(this); }

// 0x5a95f8 _ZN6glitch5video12IVideoDriver13ensureBindingEPPNS0_14CDriverBindingE
CDriverBinding* IVideoDriver::ensureBinding(CDriverBinding** binding) {
    if (*binding == nullptr) {
        *binding = createBinding();  // vtable +0x1f8
    }
    return *binding;
}

// 0x5a97a8 _ZN6glitch5video12IVideoDriver18clearRenderBuffersEv
void IVideoDriver::clearRenderBuffers() {
    for (IRenderBuffer* buffer : m_renderBuffers) {
        buffer->unbind();  // vtable +0x0c
    }
}

// 0x5ab6d4 _ZN6glitch5video12IVideoDriver16pushRenderTargetERKN5boost13intrusive_ptrINS0_13IRenderTargetEEE
void IVideoDriver::pushRenderTarget(const boost::intrusive_ptr<IRenderTarget>& target) {
    m_stateFlags |= 4u;
    m_renderTargets.push_back(target);
    target->bind();  // vtable +0x10
    m_stateFlags &= ~4u;
}

// 0x5a953c _ZN6glitch5video12IVideoDriver15popRenderTargetEv
// Returns the top target. With two or more targets it unbinds the top one (vtable +0x14), pops it and binds the one under
// it (vtable +0x10); with a single target that target is returned and the stack stays as it is; with none a null pointer
// is returned.
boost::intrusive_ptr<IRenderTarget> IVideoDriver::popRenderTarget() {
    if (m_renderTargets.empty()) {
        return boost::intrusive_ptr<IRenderTarget>();
    }
    boost::intrusive_ptr<IRenderTarget> top = m_renderTargets.back();
    if (m_renderTargets.size() > 1) {
        top->unbind();                // vtable +0x14
        m_renderTargets.pop_back();
        m_renderTargets.back()->bind();  // vtable +0x10 of the target underneath
    }
    return top;
}

// 0x5a8bdc _ZN6glitch5video12IVideoDriver14draw3DTriangleERKNS_4core9triangle3dIfEENS0_6SColorE
// The three edges as lines: draw3DLines (vtable +0x20) with the index pairs (0, 1), (1, 2), (2, 0).
void IVideoDriver::draw3DTriangle(const core::triangle3d<float>& triangle, SColor color) {
    core::vector3d<float> positions[3] = {triangle.A, triangle.B, triangle.C};
    uint16_t indices[6] = {0, 1, 1, 2, 2, 0};
    SColor colors[3] = {color, color, color};
    draw3DLines(positions, indices, colors, 3, 3);
}

// 0x5a9990 _ZN6glitch5video12IVideoDriver9draw3DBoxERKNS_4core9aabbox3dIfEENS0_6SColorE
// The twelve edges of the box as lines: draw3DLines (vtable +0x20) with the eight corners from aabbox3d::getEdges.
void IVideoDriver::draw3DBox(const core::aabbox3d<float>& box, SColor color) {
    core::vector3d<float> corners[8];
    box.getEdges(corners);
    static const uint16_t kEdges[24] = {5, 1, 1, 3, 3, 7, 7, 5, 0, 2, 2, 6, 6, 4, 4, 0, 1, 0, 3, 2, 7, 6, 5, 4};
    uint16_t indices[24];
    for (int i = 0; i < 24; ++i) indices[i] = kEdges[i];
    SColor colors[8] = {color, color, color, color, color, color, color, color};
    draw3DLines(corners, indices, colors, 8, 12);
}

// draw3DLine .. releaseProcessBuffer: src/ok2-IVideoDriver.cpp.
// 0x5aa290 IVideoDriver::removeUnused: defined in ok1-IVideoDriver.cpp.
// 0x5adb9c _ZN6glitch5video12IVideoDriver5flushEv: a 4-byte branch to drawPendingBatch (0x5ad8ac).
void IVideoDriver::flush() { drawPendingBatch(); }

// 0x5ad8ac _ZN6glitch5video12IVideoDriver16drawPendingBatchEv
// Draws what the current batch buffer has collected: an open append is ended; a buffer with vertices and indices is set up
// (CAppendMeshBuffer::setup), drawn through the +0x200 slot with the world transform 1 temporarily the identity (unless it
// already is) and the baker's vertex attribute map, then cleared. The next buffer of the ring becomes current; when its stream
// layout differs from the old one the "batch pending" state flag (0x8) is raised. Always true.
bool IVideoDriver::drawPendingBatch() {
    auto* buffer = static_cast<scene::CAppendMeshBuffer*>(m_batchBuffer.get());
    if (buffer == nullptr) {
        return true;
    }
    if (buffer->mappedVertices != nullptr) {
        buffer->endAppend();
        buffer = static_cast<scene::CAppendMeshBuffer*>(m_batchBuffer.get());
    }
    if (buffer->vertexUsedBytes / buffer->vertexStride == 0 || buffer->indexUsedBytes / buffer->indexStride == 0) {
        return true;
    }
    buffer->setup();
    const core::CMatrix4<float> savedTransform(getTransform(1));  // +0x70
    bool restoreTransform = false;
    if (!savedTransform.flag) {
        restoreTransform = true;
        core::CMatrix4<float> identity(core::CMatrix4<float>::EM4CONST_IDENTITY);
        setTransform(1, identity);  // +0x6c
    }
    const boost::intrusive_ptr<CVertexAttributeMap>* const savedAttributeMap = m_stateE8;
    m_stateE8 = &m_batchBaker->getVertexAttributeMap();  // baker slot +0x14
    {
        boost::intrusive_ptr<const CVertexStreams> streams(buffer->vertexStreams.get(), true);
        drawImpl(streams, buffer->primitiveStream, nullptr);  // +0x200
    }
    m_stateE8 = savedAttributeMap;
    if (restoreTransform) {
        setTransform(1, savedTransform);
    }
    static_cast<scene::CAppendMeshBuffer*>(m_batchBuffer.get())->clear();
    // The next buffer of the ring.
    m_batchBufferIndex = (m_batchBufferIndex + 1) % static_cast<uint32_t>(m_batchBuffers.size());
    auto* next = static_cast<scene::CAppendMeshBuffer*>(m_batchBuffers[m_batchBufferIndex].get());
    auto* old = static_cast<scene::CAppendMeshBuffer*>(m_batchBuffer.get());
    if (old->streamIndices != next->streamIndices) {
        m_stateFlags |= 8u;
    }
    m_batchBuffer = m_batchBuffers[m_batchBufferIndex];
    return true;
}

// 0x5aa5f8 _ZN6glitch5video12IVideoDriver13createTextureEPKcRKNS0_12STextureDescE
// Validates the descriptor against the driver capabilities and hands it to the driver's createTextureImpl (slot +0x204): the type
// must be supported (capability bit 6 + type); no dimension may be zero; unless capability 0x10 allows it the texture must be
// square (and a 3D one a cube); unless capability 0x20 allows it the dimensions must be powers of two (not tested for type 3);
// and each dimension must be a multiple of the pixel format's block size. A refusal logs the reason (an error) and gives no
// texture.
boost::intrusive_ptr<ITexture> IVideoDriver::createTexture(const char* name, const STextureDesc& desc) {
    using glitch::os::ELL_ERROR;
    using glitch::os::Printer;
    const uint32_t type = desc.type;
    const uint32_t capabilities = m_capabilities;
    if ((capabilities & (1u << ((type + 6) & 0x1f))) == 0) {
        Printer::logf(ELL_ERROR, "adding texture %s: %s type not supported", name, textureTypeName(type));
        return {};
    }
    const uint32_t width = desc.width;
    const uint32_t height = desc.height;
    const uint32_t depth = desc.depth;
    if (width == 0 || height == 0 || depth == 0) {
        Printer::logf(ELL_ERROR, "adding texture %s: null dimension not supported (provided: %dx%dx%u)", name,
                      static_cast<int>(width), static_cast<int>(height), depth);
        return {};
    }
    bool powerOfTwoCheck = true;
    bool squareFailed = false;
    if ((capabilities & 0x10u) == 0) {
        if (width != height) {
            squareFailed = true;
        } else if (type == 1 && depth != width) {
            squareFailed = true;
        }
    }
    if (squareFailed) {
        Printer::logf(ELL_ERROR, "adding texture %s: non square dimension not supported (provided: %dx%dx%u)", name,
                      static_cast<int>(width), static_cast<int>(height), depth);
        return {};
    }
    if (type == 3) powerOfTwoCheck = false;  // rectangle textures are exempt
    if (powerOfTwoCheck && (capabilities & 0x20u) == 0 &&
        (((width - 1) & width) != 0 || ((height - 1) & height) != 0 || (type == 1 && ((depth - 1) & depth) != 0))) {
        Printer::logf(ELL_ERROR, "adding texture %s: non power-of-two dimension not supported (provided: %dx%dx%u)", name,
                      static_cast<int>(width), static_cast<int>(height), depth);
        return {};
    }
    const pixel_format::detail::SFormatEntry& row = pixel_format::detail::PFDTable[desc.format];
    if (width % row.blockWidth != 0 || height % row.blockHeight != 0 || depth % row.unknown26 != 0) {
        Printer::logf(ELL_ERROR,
                      "adding texture %s: texture size is not a multiple of its pixel format's (%s) block size (%ux%ux%u)", name,
                      pixelFormatName(static_cast<int32_t>(desc.format)), static_cast<unsigned>(row.blockWidth),
                      static_cast<unsigned>(row.blockHeight), static_cast<unsigned>(row.unknown26));
        return {};
    }
    return createTextureImpl(name, desc);  // slot +0x204
}

// 0x5a90fc _ZN6glitch5video12IVideoDriver4clipERNS_4core4rectIiEERNS3_IfEERKS4_PNS0_6SColorE
// Clips `target` against `clipRect`, moving the texture rectangle and the four corner colours (upper left, lower left, lower
// right, upper right) along: false when they do not overlap. Each cut side takes the fraction of the target it removed: the right
// and bottom cuts pull the texture rectangle's far corner towards its near corner, the left and top cuts the other way; the
// two colours on the cut side are interpolated towards the colours on the far side by the same fraction.
bool IVideoDriver::clip(core::rect<int32_t>& target, core::rect<float>& texture, const core::rect<int32_t>& clipRect,
                        SColor* colors) {
    if (target.UpperLeftCorner.X > clipRect.LowerRightCorner.X) return false;
    if (target.UpperLeftCorner.Y > clipRect.LowerRightCorner.Y) return false;
    if (target.LowerRightCorner.X < clipRect.UpperLeftCorner.X) return false;
    if (target.LowerRightCorner.Y < clipRect.UpperLeftCorner.Y) return false;
    if (clipRect.LowerRightCorner.X < target.LowerRightCorner.X) {
        const float t = static_cast<float>(target.LowerRightCorner.X - clipRect.LowerRightCorner.X) /
                        static_cast<float>(target.LowerRightCorner.X - target.UpperLeftCorner.X);
        texture.LowerRightCorner.X += t * (texture.UpperLeftCorner.X - texture.LowerRightCorner.X);
        if (colors != nullptr) {
            colors[3] = colors[0].getInterpolated(colors[3], t);
            colors[2] = colors[1].getInterpolated(colors[2], t);
        }
        target.LowerRightCorner.X = clipRect.LowerRightCorner.X;
    }
    if (target.LowerRightCorner.Y > clipRect.LowerRightCorner.Y) {
        const float t = static_cast<float>(target.LowerRightCorner.Y - clipRect.LowerRightCorner.Y) /
                        static_cast<float>(target.LowerRightCorner.Y - target.UpperLeftCorner.Y);
        texture.LowerRightCorner.Y += t * (texture.UpperLeftCorner.Y - texture.LowerRightCorner.Y);
        if (colors != nullptr) {
            colors[1] = colors[0].getInterpolated(colors[1], t);
            colors[2] = colors[3].getInterpolated(colors[2], t);
        }
        target.LowerRightCorner.Y = clipRect.LowerRightCorner.Y;
    }
    if (clipRect.UpperLeftCorner.X > target.UpperLeftCorner.X) {
        const float t = static_cast<float>(clipRect.UpperLeftCorner.X - target.UpperLeftCorner.X) /
                        static_cast<float>(target.LowerRightCorner.X - target.UpperLeftCorner.X);
        texture.UpperLeftCorner.X += t * (texture.LowerRightCorner.X - texture.UpperLeftCorner.X);
        if (colors != nullptr) {
            colors[0] = colors[3].getInterpolated(colors[0], t);
            colors[1] = colors[2].getInterpolated(colors[1], t);
        }
        target.UpperLeftCorner.X = clipRect.UpperLeftCorner.X;
    }
    if (clipRect.UpperLeftCorner.Y > target.UpperLeftCorner.Y) {
        const float t = static_cast<float>(clipRect.UpperLeftCorner.Y - target.UpperLeftCorner.Y) /
                        static_cast<float>(target.LowerRightCorner.Y - target.UpperLeftCorner.Y);
        texture.UpperLeftCorner.Y += t * (texture.LowerRightCorner.Y - texture.UpperLeftCorner.Y);
        if (colors != nullptr) {
            colors[0] = colors[1].getInterpolated(colors[0], t);
            colors[3] = colors[2].getInterpolated(colors[3], t);
        }
        target.UpperLeftCorner.Y = clipRect.UpperLeftCorner.Y;
    }
    return true;
}

}  // namespace glitch::video
