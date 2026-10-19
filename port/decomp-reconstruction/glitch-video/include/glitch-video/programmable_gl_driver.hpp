// glitch::video::CProgrammableGLDriver: the programmable (GLSL) GL driver. The original is the template instance
// CProgrammableGLDriver<CGLSLShaderHandler>, which derives from CCommonGLDriver<CProgrammableGLDriver<...>, ...> (so the port's
// CCommonGLDriver). Size 0xdc0 (3520).
//
// Members past CCommonGLDriver (which ends at +0x820 with its buffer map):
//   +0x820 CGLSLShaderHandler (its first word is the shader language version)   +0x824 uint32 vertex attribute count
//   +0x828 three CMatrix4 (68 bytes each): the transforms as the shaders see them (0 and 1 as set, 2 as the fixed-up projection)
//   +0x8f4 eighteen CMatrix4: the derived matrices the automatic shader parameters read   +0xdbc uint32 dirty mask of those, -1
// The constructor (0x5b5c40 C1 / 0x5b5e34 C2) makes the CGLSLShaderManager (0x84 bytes) and gives it to CCommonGLDriverBase.
// Vtable 0x977570: the slots this class implements are getDriverType (+0x5c), setTransform (+0x6c), restoreShadowState (+0x74),
// getMaxUserClipPlanes (+0x1ec), onMaterialDestroyed (+0x210), onShaderDestroyed (+0x214) and swapBuffersImpl (+0x218).
#pragma once

#include <cstdint>

#include "glitch-video/ccommon_gl_driver.hpp"
#include "glitch-video/deps/glitch_video_types.hpp"
#include "glitch-video/gl_small.hpp"
#include "glitch-video/shader_attributes.hpp"

namespace glitch::video {

class IShaderManager;
class CGLSLShader;

class CProgrammableGLDriver : public CCommonGLDriver {
public:
    // 0x5b5c40 (C1) / 0x5b5e34 (C2). The device may be null (the shader manager then has no file system).
    explicit CProgrammableGLDriver(glitch::IDevice* device = nullptr);
    ~CProgrammableGLDriver() override;  // 0x5b36f0 (D1) / 0x5b3724 (D0) / 0x5b3740 (D2)

    // ---- IVideoDriver slots ----
    E_DRIVER_TYPE getDriverType() const override;                                      // +0x5c   0x5af04c, 0x78
    void setTransform(E_TRANSFORMATION_STATE state, const core::CMatrix4<float>& matrix) override;  // +0x6c  0x5b1e14
    void restoreShadowState() override;                                                // +0x74   0x5b6ccc
    uint32_t getMaxUserClipPlanes() const override;                                    // +0x1ec  0x5af03c, 6
    void onMaterialDestroyed(CMaterial* material) override;                            // +0x210  0x5b1aa0
    void onShaderDestroyed(IShader* shader) override;                                  // +0x214  0x5b1aa4
    bool swapBuffersImpl(int32_t mask) override;                                       // +0x218  0x5af06c

    // 0x5af030: empty in the original.
    void onSet3DMode();
    // 0x5af034: the original returns 8.
    uint32_t queryMaxLightCount() const;
    // 0x5af044: the shader manager pointer at +0xd8.
    IShaderManager* getShaderManager() const;
    // 0x5af054: the transform as the shaders see it (+0x828 + 68 * state).
    const core::CMatrix4<float>& getTransformForShader(E_TRANSFORMATION_STATE state) const;
    // 0x5af08c: the first word of the shader handler.
    uint32_t getShaderLanguageVersion() const;
    // 0x5af094: empty in the original.
    void setTextureLODBiasTexEnv(const ITexture*);

    // 0x5b1a84: glUseProgram on the shader's GL program, then the current shader is recorded.
    void commitShader(const IShader* shader);
    // 0x5b1ab4: initialises the shader handler, reads the vertex attribute count (GL_MAX_VERTEX_ATTRIBS) and switches on the
    // driver's fixed GL state (multisample, nicest line smoothing).
    bool driverInit(const core::dimension2d<int32_t>& screenSize);
    // 0x5b187c: sends one light property to the uniform a definition names.
    void commitLightParameter(const CGLSLShader* shader, const CLight* light, const SShaderParameterDef& definition);
    // 0x5b6584 / 0x5b8acc / 0x5b5340 / 0x5b78b8: vertex array setup and parameter commits. Declared only.
    void setupArrays(const CGLSLShader* shader, const CVertexStreams* streams, const uint8_t* attributeMap);
    // 0x5b1870: the shader handler's version check (src/ok1b-CProgrammableGLDriver.cpp), with the GL version number of the driver (+0x4a4).
    bool doVersionCheck();
    // 0x5b5340: commits the material parameters of one pass bound directly (the first group of the pass's binding table).
    void commitCurrentMaterialDirectParameters(uint8_t pass);
    // 0x5b78b8: sends the automatic shader parameters (matrices and the like, the shader's parameter types 0x22..0x3e).
    void commitCurrentMaterialAutomaticParameters(const CGLSLShader* shader, const CVertexStreams* streams,
                                                  const uint8_t* attributeMap);
    // 0x5b6768 (C1) / 0x5b678c (C2): the draw set-up object; its constructor sets up the vertex arrays for the current shader.
    struct SDrawSetup {
        SDrawSetup(CProgrammableGLDriver* driver, const CVertexStreams* streams, const CPrimitiveStream& primitives,
                   const uint8_t* attributeMap, uint32_t unused);
        CProgrammableGLDriver* m_driver;  // +0x00
    };
    void commitCurrentMaterialIndirectParameters(uint8_t pass, const CVertexStreams* streams, const uint8_t* attributeMap);
    // 0x5b4da0 / 0x5b2fac commitCurrentMaterialParametersAux<CMaterial> / <CGlobalMaterialParameterManager>: walks the binding
    // table and sends every bound parameter of the owner to the shader's uniform.
    template <class Parameters>
    void commitCurrentMaterialParametersAux(const CGLSLShader* shader, const Parameters* parameters,
                                            const SShaderParameterBinding* begin, const SShaderParameterBinding* end);

    // Test helper, not in the original: whether a current shader is recorded.
    bool hasCurrentShader() const { return m_shaderF4 != nullptr; }

    // ---- data members past CCommonGLDriver ----
    CGLSLShaderHandler m_handler;                // +0x820
    uint32_t m_vertexAttribCount = 0;            // +0x824
    core::CMatrix4<float> m_shaderMatrices[3];   // +0x828, +0x86c, +0x8b0
    core::CMatrix4<float> m_derivedMatrices[18]; // +0x8f4
    uint32_t m_matrixDirtyMask = 0xffffffffu;    // +0xdbc
};

}  // namespace glitch::video
