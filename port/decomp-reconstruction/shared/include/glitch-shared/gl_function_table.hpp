// Minimal GL function table. GL calls in the reconstructed code are routed
// through this table, so tests need no GL context: a test replaces entries with
// recorders, and the Windows/Android build fills it with the real entry points.
// Only the calls the reconstructed render-state, shader and driver-init code needs are listed. Every
// entry defaults to a no-op so that an unset entry is harmless.
#pragma once

#include <cstdint>

namespace glitch::video::deps {

struct GLFunctionTable {
    void (*enable)(uint32_t cap) = nullptr;
    void (*disable)(uint32_t cap) = nullptr;
    void (*blendFunc)(uint32_t src, uint32_t dst) = nullptr;
    void (*blendEquation)(uint32_t mode) = nullptr;
    void (*blendColor)(float r, float g, float b, float a) = nullptr;
    void (*clearColor)(float r, float g, float b, float a) = nullptr;
    uint32_t (*createProgram)() = nullptr;
    void (*deleteProgram)(uint32_t program) = nullptr;
    void (*useProgram)(uint32_t program) = nullptr;
    void (*cullFace)(uint32_t mode) = nullptr;
    void (*depthFunc)(uint32_t func) = nullptr;
    void (*depthMask)(uint8_t flag) = nullptr;
    void (*depthRangef)(float nearValue, float farValue) = nullptr;
    void (*clearDepthf)(float depth) = nullptr;
    void (*frontFace)(uint32_t mode) = nullptr;
    void (*lineWidth)(float width) = nullptr;
    void (*polygonOffset)(float factor, float units) = nullptr;
    void (*sampleCoverage)(float value, uint8_t invert) = nullptr;
    void (*stencilFunc)(uint32_t func, int32_t ref, uint32_t mask) = nullptr;
    void (*stencilMask)(uint32_t mask) = nullptr;
    void (*stencilOp)(uint32_t fail, uint32_t zfail, uint32_t zpass) = nullptr;
    void (*clearStencil)(int32_t s) = nullptr;
    void (*colorMask)(uint8_t r, uint8_t g, uint8_t b, uint8_t a) = nullptr;
    void (*scissor)(int32_t x, int32_t y, int32_t width, int32_t height) = nullptr;
    void (*flush)() = nullptr;
    void (*finish)() = nullptr;
    void (*clear)(uint32_t mask) = nullptr;

    // Shader compile and link path (CGLSLShaderCode::createShader/compileShader,
    // CGLSLShader::linkProgram/rmRegenerateShader). Original call sites: see NOTES.md
    // section "GL function table (dependency worker)".
    uint32_t (*createShader)(uint32_t type) = nullptr;
    void (*shaderSource)(uint32_t shader, int32_t count, const char* const* string,
                         const int32_t* length) = nullptr;
    void (*compileShader)(uint32_t shader) = nullptr;
    void (*deleteShader)(uint32_t shader) = nullptr;
    void (*getShaderiv)(uint32_t shader, uint32_t pname, int32_t* params) = nullptr;
    void (*getShaderInfoLog)(uint32_t shader, int32_t bufSize, int32_t* length,
                             char* infoLog) = nullptr;
    void (*attachShader)(uint32_t program, uint32_t shader) = nullptr;
    void (*linkProgram)(uint32_t program) = nullptr;
    void (*getProgramiv)(uint32_t program, uint32_t pname, int32_t* params) = nullptr;
    void (*getProgramInfoLog)(uint32_t program, int32_t bufSize, int32_t* length,
                              char* infoLog) = nullptr;
    int32_t (*getUniformLocation)(uint32_t program, const char* name) = nullptr;
    int32_t (*getAttribLocation)(uint32_t program, const char* name) = nullptr;
    void (*getActiveUniform)(uint32_t program, uint32_t index, int32_t bufSize,
                             int32_t* length, int32_t* size, uint32_t* type,
                             char* name) = nullptr;
    void (*getActiveAttrib)(uint32_t program, uint32_t index, int32_t bufSize,
                            int32_t* length, int32_t* size, uint32_t* type,
                            char* name) = nullptr;

    // Driver init and state queries (CProgrammableGLDriver::driverInit,
    // CCommonGLDriver extension and version queries).
    void (*getIntegerv)(uint32_t pname, int32_t* data) = nullptr;
    void (*getFloatv)(uint32_t pname, float* data) = nullptr;
    void (*hint)(uint32_t target, uint32_t mode) = nullptr;
    void (*pixelStorei)(uint32_t pname, int32_t param) = nullptr;
    const uint8_t* (*getString)(uint32_t name) = nullptr;
    uint32_t (*getError)() = nullptr;

    // Buffer objects (CCommonGLDriver::ReloadbufferMap, the CBuffer slots).
    void (*bindBuffer)(uint32_t target, uint32_t buffer) = nullptr;
    void (*bufferData)(uint32_t target, int32_t size, const void* data, uint32_t usage) = nullptr;
    void (*genBuffers)(int32_t count, uint32_t* names) = nullptr;                                       // glGenBuffers
    void (*deleteBuffers)(int32_t count, const uint32_t* names) = nullptr;                              // glDeleteBuffers
    void (*bufferSubData)(uint32_t target, int32_t offset, int32_t size, const void* data) = nullptr;  // glBufferSubData
    void (*vertexAttribPointer)(uint32_t index, int32_t size, uint32_t type, uint8_t normalized, int32_t stride,
                                const void* pointer) = nullptr;                                         // glVertexAttribPointer
    void (*vertexAttrib4f)(uint32_t index, float x, float y, float z, float w) = nullptr;              // glVertexAttrib4f

    // Viewport, texture units, pixel read-back, framebuffers, vertex attribute arrays and draw calls (CCommonGLDriver:
    // setViewportImpl, setTexture, createScreenShot, CFramebuffer::bind, restoreShadowState, drawPrimitives).
    void (*viewport)(int32_t x, int32_t y, int32_t width, int32_t height) = nullptr;
    void (*activeTexture)(uint32_t texture) = nullptr;
    void (*bindTexture)(uint32_t target, uint32_t texture) = nullptr;
    void (*readPixels)(int32_t x, int32_t y, int32_t width, int32_t height, uint32_t format, uint32_t type,
                       void* pixels) = nullptr;
    void (*bindFramebuffer)(uint32_t target, uint32_t framebuffer) = nullptr;
    void (*enableVertexAttribArray)(uint32_t index) = nullptr;
    void (*disableVertexAttribArray)(uint32_t index) = nullptr;
    void (*drawElements)(uint32_t mode, int32_t count, uint32_t type, const void* indices) = nullptr;
    void (*drawArrays)(uint32_t mode, int32_t first, int32_t count) = nullptr;
    void (*genRenderbuffers)(int32_t count, uint32_t* names) = nullptr;
    void (*deleteRenderbuffers)(int32_t count, const uint32_t* names) = nullptr;

    // Textures and framebuffer objects (CCommonGLDriver::CTexture bind / update / unbind, CRenderTarget bind, CRenderBuffer bind).
    void (*genTextures)(int32_t count, uint32_t* names) = nullptr;
    void (*deleteTextures)(int32_t count, const uint32_t* names) = nullptr;
    void (*texParameteri)(uint32_t target, uint32_t pname, int32_t param) = nullptr;
    void (*texParameterf)(uint32_t target, uint32_t pname, float param) = nullptr;
    void (*texImage2D)(uint32_t target, int32_t level, int32_t internalFormat, int32_t width, int32_t height, int32_t border,
                       uint32_t format, uint32_t type, const void* pixels) = nullptr;
    void (*texSubImage2D)(uint32_t target, int32_t level, int32_t xoffset, int32_t yoffset, int32_t width, int32_t height,
                          uint32_t format, uint32_t type, const void* pixels) = nullptr;
    void (*compressedTexImage2D)(uint32_t target, int32_t level, uint32_t internalFormat, int32_t width, int32_t height,
                                 int32_t border, int32_t imageSize, const void* data) = nullptr;
    void (*compressedTexSubImage2D)(uint32_t target, int32_t level, int32_t xoffset, int32_t yoffset, int32_t width,
                                    int32_t height, uint32_t format, int32_t imageSize, const void* data) = nullptr;
    void (*generateMipmap)(uint32_t target) = nullptr;
    void (*copyTexSubImage2D)(uint32_t target, int32_t level, int32_t xoffset, int32_t yoffset, int32_t x, int32_t y,
                              int32_t width, int32_t height) = nullptr;
    void (*genFramebuffers)(int32_t count, uint32_t* names) = nullptr;
    void (*framebufferTexture2D)(uint32_t target, uint32_t attachment, uint32_t textarget, uint32_t texture, int32_t level) = nullptr;
    void (*framebufferRenderbuffer)(uint32_t target, uint32_t attachment, uint32_t renderbufferTarget, uint32_t renderbuffer) = nullptr;
    uint32_t (*checkFramebufferStatus)(uint32_t target) = nullptr;
    void (*bindRenderbuffer)(uint32_t target, uint32_t renderbuffer) = nullptr;
    void (*renderbufferStorage)(uint32_t target, uint32_t internalFormat, int32_t width, int32_t height) = nullptr;

    // Uniforms (CProgrammableGLDriver::commitCurrentMaterialParametersAux, commitLightParameter).
    void (*uniform1f)(int32_t location, float value) = nullptr;
    void (*uniform1i)(int32_t location, int32_t value) = nullptr;
    void (*uniform1iv)(int32_t location, int32_t count, const int32_t* values) = nullptr;
    void (*uniform2iv)(int32_t location, int32_t count, const int32_t* values) = nullptr;
    void (*uniform3iv)(int32_t location, int32_t count, const int32_t* values) = nullptr;
    void (*uniform4iv)(int32_t location, int32_t count, const int32_t* values) = nullptr;
    void (*uniform1fv)(int32_t location, int32_t count, const float* values) = nullptr;
    void (*uniform2fv)(int32_t location, int32_t count, const float* values) = nullptr;
    void (*uniform3fv)(int32_t location, int32_t count, const float* values) = nullptr;
    void (*uniform4fv)(int32_t location, int32_t count, const float* values) = nullptr;
    void (*uniformMatrix4fv)(int32_t location, int32_t count, uint8_t transpose, const float* values) = nullptr;
};

// Active table. Entries that are still null are skipped by the callers.
GLFunctionTable& activeGLFunctionTable();

}  // namespace glitch::video::deps
