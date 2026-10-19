#include "glitch-video/gl_small.hpp"

namespace glitch::video {

// 0x6df9b8 _ZN6glitch5video18CGLSLShaderHandlerC2Ev
// 0x6df9c4 _ZN6glitch5video18CGLSLShaderHandlerC1Ev
CGLSLShaderHandler::CGLSLShaderHandler() = default;

// 0x6df9d0 _ZN6glitch5video18CGLSLShaderHandler17initShaderHandlerEPNS0_14IShaderManagerE
bool CGLSLShaderHandler::initShaderHandler(IShaderManager*) { return true; }

// COpenGLES2Driver::getDriverType (0x5aefa4) and swapBuffersImpl (0x5aefac): src/ok2-COpenGLES2Driver.cpp.

}  // namespace glitch::video
