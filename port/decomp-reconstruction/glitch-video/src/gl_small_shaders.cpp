// CGLSLShader and CGLSLShaderCode members that the reconstructed driver uses.
#include "glitch-video/gl_small.hpp"

#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/programmable_gl_driver.hpp"

namespace glitch::video {

// 0x6df0d4 _ZN6glitch5video11CGLSLShaderC1EPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE
// 0x6df130 _ZN6glitch5video11CGLSLShaderC2EPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE
// IShader(0, "", driver); the two codes, the program and the byte at +0x50 start empty (member initialisers).
CGLSLShader::CGLSLShader(CProgrammableGLDriver* driver) : IShader(0, "", driver) {}

// 0x6de878 _ZNK6glitch5video11CGLSLShader19serializeAttributesEPNS_2io11IAttributesE
void CGLSLShader::serializeAttributes(io::IAttributes*) const {}

// 0x6de87c _ZN6glitch5video11CGLSLShader21deserializeAttributesEPNS_2io11IAttributesE
void CGLSLShader::deserializeAttributes(io::IAttributes*) {}

// 0x6df1f0 _ZN6glitch5video11CGLSLShaderC1EtPKcRKN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES9_PNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEb
// 0x6df2c4 _ZN6glitch5video11CGLSLShaderC2EtPKcRKN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES9_PNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEb
CGLSLShader::CGLSLShader(uint16_t id, const char* name, const boost::intrusive_ptr<CGLSLShaderCode>& first,
                         const boost::intrusive_ptr<CGLSLShaderCode>& second, CProgrammableGLDriver* driver,
                         bool link)
    : IShader(id, name, driver), m_firstCode(first), m_secondCode(second) {
    m_unknown50 = 0;
    m_glProgram = 0;
    createProgram();
    auto& t = deps::activeGLFunctionTable();
    if (t.attachShader) {
        t.attachShader(m_glProgram, m_firstCode->m_glShader);
        t.attachShader(m_glProgram, m_secondCode->m_glShader);
    }
    if (link && !linkProgram()) {
        if (t.deleteProgram) t.deleteProgram(m_glProgram);
        m_glProgram = 0;
    }
}

// 0x6df18c _ZN6glitch5video11CGLSLShader18rmRegenerateShaderEPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE
void CGLSLShader::rmRegenerateShader(CProgrammableGLDriver*) {
    m_firstCode->rmRecompileShader();
    m_secondCode->rmRecompileShader();
    auto& t = deps::activeGLFunctionTable();
    m_glProgram = t.createProgram ? t.createProgram() : 0;
    if (t.attachShader) {
        t.attachShader(m_glProgram, m_firstCode->m_glShader);
        t.attachShader(m_glProgram, m_secondCode->m_glShader);
    }
    m_vertexAttributeMask = 0;
    if (!linkProgram()) {
        if (t.deleteProgram) t.deleteProgram(m_glProgram);
        m_glProgram = 0;
    }
}

// 0x6de880 _ZN6glitch5video11CGLSLShader17releaseShaderCodeEv
void CGLSLShader::releaseShaderCode() {
    m_firstCode = boost::intrusive_ptr<CGLSLShaderCode>();
    m_secondCode = boost::intrusive_ptr<CGLSLShaderCode>();
}

// 0x6de8f8 _ZN6glitch5video11CGLSLShader30releaseDriverSpecificResourcesEv
void CGLSLShader::releaseDriverSpecificResources() {
    if (m_glProgram != 0) {
        auto& t = deps::activeGLFunctionTable();
        if (t.deleteProgram) t.deleteProgram(m_glProgram);
        m_glProgram = 0;
    }
    releaseShaderCode();
}

// 0x6de8e0 _ZN6glitch5video11CGLSLShader13createProgramEv
bool CGLSLShader::createProgram() {
    auto& t = deps::activeGLFunctionTable();
    m_glProgram = t.createProgram ? t.createProgram() : 0;
    return true;
}

// 0x6e04ec _ZN6glitch5video18CGLSLShaderManagerC1Ev / 0x6e0520 C2: the ICodeShaderManager constructor and the vtable.
CGLSLShaderManager::CGLSLShaderManager() = default;

// 0x6e0468 _ZN6glitch5video18CGLSLShaderManagerD1Ev / 0x6e049c / 0x6e04b8: the ICodeShaderManager destructor follows.
CGLSLShaderManager::~CGLSLShaderManager() = default;

// 0x6dfd4c _ZN6glitch5video18CGLSLShaderManager17createEmptyShaderEPKc
boost::intrusive_ptr<IShader> CGLSLShaderManager::createEmptyShader(const char*) {
    return boost::intrusive_ptr<IShader>(new CGLSLShader(static_cast<CProgrammableGLDriver*>(m_driver)), true);  // count 0 -> 1
}

}  // namespace glitch::video
