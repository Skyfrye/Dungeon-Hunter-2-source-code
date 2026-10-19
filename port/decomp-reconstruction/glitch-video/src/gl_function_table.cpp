#include "glitch-video/deps/gl_function_table.hpp"

#ifdef __ANDROID__
#include <GLES2/gl2.h>
#include "core-platform/frame_prof.hpp"
#include <android/log.h>
#include <cstring>
#include <utility>
#include <vector>
#endif

namespace glitch::video::deps {

#ifdef __ANDROID__
namespace {

// The table is the port's indirection over the GL calls the original makes directly (it resolves them through the EGL/GLES libraries the
// shared object links). On Android every entry is bound to the GLES2 function of the same meaning; all argument types are 32-bit integers,
// floats or pointers, which the AArch64 calling convention passes identically, so the function pointers are reinterpreted. The two entries
// whose size parameters are pointer-sized in GLES2 (glBufferData, glBufferSubData) go through wrappers.
#define BIND(field, function) t.field = reinterpret_cast<decltype(t.field)>(function)

// Real-device diagnostics (always on, logged once at the first texture upload, when a context is current): GL identity, limits and
// extensions end up in logcat tag DH2GLINFO. Also reports whether GL_EXT_texture_format_BGRA8888 exists: the emulator's host GL always has it,
// real Adreno/Mali/PowerVR parts mostly do, but a driver without it would reject the BGRA uploads of the TGA textures.
bool s_haveBgra = true;
void logGlInfoOnce() {
    static bool done = false;
    if (done) return;
    done = true;
    auto s = [](GLenum n) { const GLubyte* v = glGetString(n); return v ? reinterpret_cast<const char*>(v) : "(null)"; };
    GLint tex = 0, units = 0, vunits = 0, vu = 0, fu = 0, attribs = 0, rb = 0;
    glGetIntegerv(GL_MAX_TEXTURE_SIZE, &tex);
    glGetIntegerv(GL_MAX_TEXTURE_IMAGE_UNITS, &units);
    glGetIntegerv(GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS, &vunits);
    glGetIntegerv(GL_MAX_VERTEX_UNIFORM_VECTORS, &vu);
    glGetIntegerv(GL_MAX_FRAGMENT_UNIFORM_VECTORS, &fu);
    glGetIntegerv(GL_MAX_VERTEX_ATTRIBS, &attribs);
    glGetIntegerv(GL_MAX_RENDERBUFFER_SIZE, &rb);
    const char* ext = s(GL_EXTENSIONS);
    s_haveBgra = std::strstr(ext, "GL_EXT_texture_format_BGRA8888") != nullptr || std::strstr(ext, "GL_APPLE_texture_format_BGRA8888") != nullptr;
    __android_log_print(ANDROID_LOG_INFO, "DH2GLINFO", "vendor=%s renderer=%s version=%s glsl=%s", s(GL_VENDOR), s(GL_RENDERER), s(GL_VERSION), s(GL_SHADING_LANGUAGE_VERSION));
    __android_log_print(ANDROID_LOG_INFO, "DH2GLINFO", "maxTex=%d texUnits=%d vtxTexUnits=%d vtxUniVec=%d fragUniVec=%d attribs=%d rb=%d bgra=%d", tex, units, vunits, vu, fu, attribs, rb, (int)s_haveBgra);
    for (size_t i = 0, n = std::strlen(ext); i < n; i += 900) {   // logcat lines are limited to ~1000 bytes
        char chunk[901]; std::strncpy(chunk, ext + i, 900); chunk[900] = 0;
        __android_log_print(ANDROID_LOG_INFO, "DH2GLINFO", "ext: %s", chunk);
    }
}

// BGRA bytes -> RGBA bytes (only used when the driver lacks the BGRA extension).
std::vector<unsigned char> swizzleBgra(const void* pixels, int w, int h) {
    std::vector<unsigned char> v(static_cast<const unsigned char*>(pixels), static_cast<const unsigned char*>(pixels) + static_cast<size_t>(w) * h * 4);
    for (size_t i = 0; i + 3 < v.size(); i += 4) std::swap(v[i], v[i + 2]);
    return v;
}

void bindGLES2(GLFunctionTable& t) {
    BIND(enable, glEnable);
    BIND(disable, glDisable);
    BIND(blendFunc, glBlendFunc);
    BIND(blendEquation, glBlendEquation);
    BIND(blendColor, glBlendColor);
    BIND(clearColor, glClearColor);
    BIND(createProgram, glCreateProgram);
    BIND(deleteProgram, glDeleteProgram);
    BIND(useProgram, glUseProgram);
    BIND(cullFace, glCullFace);
    BIND(depthFunc, glDepthFunc);
    BIND(depthMask, glDepthMask);
    BIND(depthRangef, glDepthRangef);
    BIND(clearDepthf, glClearDepthf);
    BIND(frontFace, glFrontFace);
    BIND(lineWidth, glLineWidth);
    BIND(polygonOffset, glPolygonOffset);
    BIND(sampleCoverage, glSampleCoverage);
    BIND(stencilFunc, glStencilFunc);
    BIND(stencilMask, glStencilMask);
    BIND(stencilOp, glStencilOp);
    BIND(clearStencil, glClearStencil);
    BIND(colorMask, glColorMask);
    BIND(scissor, glScissor);
    BIND(flush, glFlush);
    BIND(finish, glFinish);
    BIND(clear, glClear);
    BIND(createShader, glCreateShader);
    BIND(shaderSource, glShaderSource);
    BIND(compileShader, glCompileShader);
    BIND(deleteShader, glDeleteShader);
    BIND(getShaderiv, glGetShaderiv);
    BIND(getShaderInfoLog, glGetShaderInfoLog);
    BIND(attachShader, glAttachShader);
    BIND(linkProgram, glLinkProgram);
    BIND(getProgramiv, glGetProgramiv);
    BIND(getProgramInfoLog, glGetProgramInfoLog);
    BIND(getUniformLocation, glGetUniformLocation);
    BIND(getAttribLocation, glGetAttribLocation);
    BIND(getActiveUniform, glGetActiveUniform);
    BIND(getActiveAttrib, glGetActiveAttrib);
    BIND(getIntegerv, glGetIntegerv);
    BIND(getFloatv, glGetFloatv);
    BIND(hint, glHint);
    BIND(pixelStorei, glPixelStorei);
    BIND(getString, glGetString);
    BIND(getError, glGetError);
    BIND(bindBuffer, glBindBuffer);
    BIND(genBuffers, glGenBuffers);
    BIND(deleteBuffers, glDeleteBuffers);
    BIND(vertexAttribPointer, glVertexAttribPointer);
    BIND(vertexAttrib4f, glVertexAttrib4f);
    BIND(viewport, glViewport);
    BIND(activeTexture, glActiveTexture);
    BIND(bindTexture, glBindTexture);
    BIND(readPixels, glReadPixels);
    BIND(bindFramebuffer, glBindFramebuffer);
    BIND(enableVertexAttribArray, glEnableVertexAttribArray);
    BIND(disableVertexAttribArray, glDisableVertexAttribArray);
    BIND(drawElements, glDrawElements);
    BIND(drawArrays, glDrawArrays);
    BIND(genRenderbuffers, glGenRenderbuffers);
    BIND(deleteRenderbuffers, glDeleteRenderbuffers);
    BIND(genTextures, glGenTextures);
    BIND(deleteTextures, glDeleteTextures);
    BIND(texParameteri, glTexParameteri);
    BIND(texParameterf, glTexParameterf);
    BIND(texImage2D, glTexImage2D);
    t.texSubImage2D = [](uint32_t target, int32_t level, int32_t x, int32_t y, int32_t width, int32_t height, uint32_t format, uint32_t type, const void* pixels) {
        dh2prof::Scope prof(dh2prof::kTexUpload);
        if (format == 0x80E1 && !s_haveBgra && pixels && type == GL_UNSIGNED_BYTE) {
            std::vector<unsigned char> rgba = swizzleBgra(pixels, width, height);
            glTexSubImage2D(target, level, x, y, width, height, GL_RGBA, type, rgba.data());
            return;
        }
        glTexSubImage2D(target, level, x, y, width, height, format, type, pixels);
    };
    BIND(compressedTexImage2D, glCompressedTexImage2D);
    BIND(compressedTexSubImage2D, glCompressedTexSubImage2D);
    BIND(generateMipmap, glGenerateMipmap);
    BIND(copyTexSubImage2D, glCopyTexSubImage2D);
    BIND(genFramebuffers, glGenFramebuffers);
    BIND(framebufferTexture2D, glFramebufferTexture2D);
    BIND(framebufferRenderbuffer, glFramebufferRenderbuffer);
    BIND(checkFramebufferStatus, glCheckFramebufferStatus);
    BIND(bindRenderbuffer, glBindRenderbuffer);
    BIND(renderbufferStorage, glRenderbufferStorage);
    BIND(uniform1f, glUniform1f);
    BIND(uniform1i, glUniform1i);
    BIND(uniform1iv, glUniform1iv);
    BIND(uniform2iv, glUniform2iv);
    BIND(uniform3iv, glUniform3iv);
    BIND(uniform4iv, glUniform4iv);
    BIND(uniform1fv, glUniform1fv);
    BIND(uniform2fv, glUniform2fv);
    BIND(uniform3fv, glUniform3fv);
    BIND(uniform4fv, glUniform4fv);
    BIND(uniformMatrix4fv, glUniformMatrix4fv);
    // GLES2 wants internalformat == format; the BGRA upload of the original (GL_RGBA internal, GL_BGRA_EXT data, accepted by its drivers) is
    // given the extension format as its internal format.
    t.texImage2D = [](uint32_t target, int32_t level, int32_t internalFormat, int32_t width, int32_t height, int32_t border, uint32_t format, uint32_t type, const void* pixels) {
        dh2prof::Scope prof(dh2prof::kTexUpload);
        logGlInfoOnce();
        if (format == 0x80E1 && !s_haveBgra && pixels && type == GL_UNSIGNED_BYTE) {   // no BGRA extension: swap on the CPU
            std::vector<unsigned char> rgba = swizzleBgra(pixels, width, height);
            glTexImage2D(target, level, GL_RGBA, width, height, border, GL_RGBA, type, rgba.data());
            return;
        }
        if (format == 0x80E1 && internalFormat == 0x1908) internalFormat = 0x80E1;
        glTexImage2D(target, level, internalFormat, width, height, border, format, type, pixels);
    };
    t.bufferData = [](uint32_t target, int32_t size, const void* data, uint32_t usage) { glBufferData(target, static_cast<GLsizeiptr>(size), data, usage); };
    t.bufferSubData = [](uint32_t target, int32_t offset, int32_t size, const void* data) {
        glBufferSubData(target, static_cast<GLintptr>(offset), static_cast<GLsizeiptr>(size), data);
    };
    // Frame-time profiler scopes (core-platform/frame_prof.hpp): the GL calls that can stall the game thread.
    t.compileShader = [](uint32_t s) { dh2prof::Scope prof(dh2prof::kGlCompile); glCompileShader(s); };
    t.linkProgram = [](uint32_t p) { dh2prof::Scope prof(dh2prof::kGlLink); glLinkProgram(p); };
    t.getShaderiv = [](uint32_t s, uint32_t n, int32_t* v) { dh2prof::Scope prof(dh2prof::kGlCompile); glGetShaderiv(s, n, v); };
    t.getProgramiv = [](uint32_t p, uint32_t n, int32_t* v) { dh2prof::Scope prof(dh2prof::kGlLink); glGetProgramiv(p, n, v); };
    t.compressedTexImage2D = [](uint32_t tg, int32_t lv, uint32_t f, int32_t w, int32_t h, int32_t b, int32_t sz, const void* d) {
        dh2prof::Scope prof(dh2prof::kTexUpload);
        glCompressedTexImage2D(tg, lv, f, w, h, b, sz, d);
    };
    t.generateMipmap = [](uint32_t tg) { dh2prof::Scope prof(dh2prof::kTexUpload); glGenerateMipmap(tg); };
    t.readPixels = [](int32_t x, int32_t y, int32_t w, int32_t h, uint32_t f, uint32_t ty, void* d) { dh2prof::Scope prof(dh2prof::kOther); glReadPixels(x, y, w, h, f, ty, d); };
    t.finish = []() { dh2prof::Scope prof(dh2prof::kOther); glFinish(); };
#ifdef DH2_BOOT_DEBUG
    // Boot diagnostic: counts of the calls that decide whether a frame is drawn, logged for the first calls and then every 500th.
    static GLFunctionTable real;
    real = t;
    static int nClear, nElems, nArrays, nViewport, nFbo, nUse;
    t.clear = [](uint32_t m) { if (nClear++ < 5 || nClear % 500 == 0) __android_log_print(ANDROID_LOG_INFO, "DH2GLT", "clear mask=%x n=%d", m, nClear); real.clear(m); };
    t.clearColor = [](float r, float g, float b, float a) { __android_log_print(ANDROID_LOG_INFO, "DH2GLT", "clearColor %f %f %f %f", r, g, b, a); real.clearColor(r, g, b, a); };
    t.viewport = [](int32_t x, int32_t y, int32_t w, int32_t h) { if (nViewport++ < 10) __android_log_print(ANDROID_LOG_INFO, "DH2GLT", "viewport %d %d %d %d", x, y, w, h); real.viewport(x, y, w, h); };
    t.drawElements = [](uint32_t mode, int32_t c, uint32_t ty, const void* i) {
        if (nElems++ < 5 || nElems % 500 == 0) __android_log_print(ANDROID_LOG_INFO, "DH2GLT", "drawElements mode=%u count=%d n=%d err=%x", mode, c, nElems, glGetError());
        real.drawElements(mode, c, ty, i);
        if (nElems % 500 == 1) {  // read back a 9x5 grid of the framebuffer after the draw: is anything non-black on screen?
            GLint vp[4]; glGetIntegerv(GL_VIEWPORT, vp); GLint prog = 0; glGetIntegerv(GL_CURRENT_PROGRAM, &prog);
            GLint blend = glIsEnabled(GL_BLEND), scissor = glIsEnabled(GL_SCISSOR_TEST), depth = glIsEnabled(GL_DEPTH_TEST);
            GLint sb[4]; glGetIntegerv(GL_SCISSOR_BOX, sb); GLint fbo = 0; glGetIntegerv(GL_FRAMEBUFFER_BINDING, &fbo);
            GLboolean cm[4]; glGetBooleanv(GL_COLOR_WRITEMASK, cm);
            int nonBlack = 0; unsigned char px[4] = {0, 0, 0, 0};
            for (int gy = 1; gy < 6; ++gy) for (int gx = 1; gx < 10; ++gx) { glReadPixels(vp[0] + vp[2] * gx / 10, vp[1] + vp[3] * gy / 6, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, px); if (px[0] | px[1] | px[2]) ++nonBlack; }
            __android_log_print(ANDROID_LOG_INFO, "DH2GLT", "readback n=%d vp=%d,%d,%d,%d prog=%d fbo=%d blend=%d scissor=%d box=%d,%d,%d,%d depth=%d colormask=%d%d%d%d nonblack=%d/45 lastpx=%d,%d,%d,%d", nElems, vp[0], vp[1], vp[2], vp[3], prog, fbo, blend, scissor, sb[0], sb[1], sb[2], sb[3], depth, cm[0], cm[1], cm[2], cm[3], nonBlack, px[0], px[1], px[2], px[3]);
            if (nElems > 1 && nElems % 2000 == 1) {  // active uniforms and the bound texture of the draw
                GLint nu = 0; glGetProgramiv(prog, GL_ACTIVE_UNIFORMS, &nu);
                for (GLint u = 0; u < nu; ++u) {
                    char nm[64]; GLsizei len = 0; GLint sz = 0; GLenum ty2 = 0; glGetActiveUniform(prog, u, sizeof nm, &len, &sz, &ty2, nm);
                    GLint loc = glGetUniformLocation(prog, nm); float v[16] = {0}; if (ty2 == GL_FLOAT_MAT4 || ty2 == GL_FLOAT_VEC4 || ty2 == GL_FLOAT_VEC3 || ty2 == GL_FLOAT_VEC2 || ty2 == GL_FLOAT) glGetUniformfv(prog, loc, v);
                    __android_log_print(ANDROID_LOG_INFO, "DH2GLT", "uniform %s type=%x loc=%d v=%g %g %g %g | %g %g %g %g | %g %g %g %g | %g %g %g %g", nm, ty2, loc, v[0], v[1], v[2], v[3], v[4], v[5], v[6], v[7], v[8], v[9], v[10], v[11], v[12], v[13], v[14], v[15]);
                }
                GLint tex = 0; glGetIntegerv(GL_TEXTURE_BINDING_2D, &tex);
                GLuint tf = 0; glGenFramebuffers(1, &tf); glBindFramebuffer(GL_FRAMEBUFFER, tf); glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, tex, 0);
                int tn = 0; unsigned char tp[4] = {0}; if (glCheckFramebufferStatus(GL_FRAMEBUFFER) == GL_FRAMEBUFFER_COMPLETE) { for (int k = 0; k < 16; ++k) { glReadPixels(k * 16, k * 16, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, tp); if (tp[0] | tp[1] | tp[2] | tp[3]) { ++tn; } } }
                __android_log_print(ANDROID_LOG_INFO, "DH2GLT", "bound texture %d: nonzero diag texels %d/16 last=%d,%d,%d,%d status=%x", tex, tn, tp[0], tp[1], tp[2], tp[3], glCheckFramebufferStatus(GL_FRAMEBUFFER));
                glBindFramebuffer(GL_FRAMEBUFFER, fbo); glDeleteFramebuffers(1, &tf);
            }
        }
    };
    t.drawArrays = [](uint32_t mode, int32_t f, int32_t c) { if (nArrays++ < 5 || nArrays % 500 == 0) __android_log_print(ANDROID_LOG_INFO, "DH2GLT", "drawArrays mode=%u count=%d n=%d", mode, c, nArrays); real.drawArrays(mode, f, c); };
    t.bindFramebuffer = [](uint32_t tg, uint32_t fb) { if (nFbo++ < 10) __android_log_print(ANDROID_LOG_INFO, "DH2GLT", "bindFramebuffer %u", fb); real.bindFramebuffer(tg, fb); };
    t.useProgram = [](uint32_t p) { if (nUse++ < 10) __android_log_print(ANDROID_LOG_INFO, "DH2GLT", "useProgram %u", p); real.useProgram(p); };
#endif
}

#undef BIND

}  // namespace
#endif

GLFunctionTable& activeGLFunctionTable() {
    static GLFunctionTable table = [] {
        GLFunctionTable t;
#ifdef __ANDROID__
        bindGLES2(t);
#endif
        return t;
    }();
    return table;
}

}  // namespace glitch::video::deps
