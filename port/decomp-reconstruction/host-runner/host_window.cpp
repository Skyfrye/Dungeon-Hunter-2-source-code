#include <map>
#include <algorithm>
// Windowed host runner: a Win32 window, an EGL/GLES2 context from ANGLE (libEGL.dll / libGLESv2.dll loaded at run time, never linked or committed),
// the game's GL function table bound to the ANGLE entry points, mouse = touch, F12 / script "shot" = BMP screenshot.
#include <windows.h>

#include <cstdlib>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "glitch-shared/gl_function_table.hpp"
#include "host_runner.hpp"

extern void* (*g_dh2GLGetProc)(const char* name);  // game-app remaster_postfx.cpp

namespace dh2host { void rtCharDump(); }
extern "C" int appOnTouch(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8);

namespace dh2host {
namespace {

using deps_table = glitch::video::deps::GLFunctionTable;

HWND g_hwnd = nullptr;
bool g_closed = false;
bool g_mouseDown = false;
int g_width = 1280, g_height = 720;
bool g_wantShot = false;

typedef void* EGLDisplay;
typedef void* EGLSurface;
typedef void* EGLContext;
typedef void* EGLConfig;
HMODULE g_libEGL = nullptr, g_libGLES = nullptr;
EGLDisplay g_dpy = nullptr;
EGLSurface g_surf = nullptr;
EGLContext g_ctx = nullptr;
int (*p_eglInitialize)(EGLDisplay, int*, int*);
EGLDisplay (*p_eglGetDisplay)(void*);
int (*p_eglChooseConfig)(EGLDisplay, const int*, EGLConfig*, int, int*);
EGLSurface (*p_eglCreateWindowSurface)(EGLDisplay, EGLConfig, HWND, const int*);
EGLContext (*p_eglCreateContext)(EGLDisplay, EGLConfig, EGLContext, const int*);
int (*p_eglMakeCurrent)(EGLDisplay, EGLSurface, EGLSurface, EGLContext);
int (*p_eglSwapBuffers)(EGLDisplay, EGLSurface);
int (*p_eglSwapInterval)(EGLDisplay, int);
int (*p_eglBindAPI)(unsigned);
int (*p_eglGetError)();
void (*p_glReadPixels)(int, int, int, int, unsigned, unsigned, void*);

template <typename T>
bool load(HMODULE m, const char* name, T& out) {
    out = reinterpret_cast<T>(GetProcAddress(m, name));
    if (!out) std::fprintf(g_runnerOut, "missing %s\n", name);
    return out != nullptr;
}

LRESULT CALLBACK wndProc(HWND h, UINT msg, WPARAM w, LPARAM l) {
    switch (msg) {
        case WM_CLOSE:
            g_closed = true;
            return 0;
        case WM_DESTROY:
            g_closed = true;
            PostQuitMessage(0);
            return 0;
        case WM_LBUTTONDOWN:
            g_mouseDown = true;
            SetCapture(h);
            appOnTouch(1, (short)LOWORD(l), (short)HIWORD(l), 0, 1, 0, 0, 0);
            return 0;
        case WM_MOUSEMOVE:
            if (g_mouseDown) appOnTouch(2, (short)LOWORD(l), (short)HIWORD(l), 0, 1, 0, 0, 0);
            return 0;
        case WM_LBUTTONUP:
            if (g_mouseDown) {
                g_mouseDown = false;
                ReleaseCapture();
                appOnTouch(0, (short)LOWORD(l), (short)HIWORD(l), 0, 1, 0, 0, 0);
            }
            return 0;
        case WM_KEYDOWN:
            if (w == VK_ESCAPE) g_closed = true;
            if (w == VK_F12) g_wantShot = true;
            return 0;
    }
    return DefWindowProcA(h, msg, w, l);
}

void saveBmp(const char* path) {
    std::vector<unsigned char> px(static_cast<size_t>(g_width) * g_height * 4);
    p_glReadPixels(0, 0, g_width, g_height, 0x1908 /*GL_RGBA*/, 0x1401 /*GL_UNSIGNED_BYTE*/, px.data());
    for (size_t i = 0; i < px.size(); i += 4) std::swap(px[i], px[i + 2]);   // BGRA; rows are bottom-up as GL delivers them, as BMP stores them
    BITMAPFILEHEADER fh{};
    BITMAPINFOHEADER ih{};
    ih.biSize = sizeof(ih);
    ih.biWidth = g_width;
    ih.biHeight = g_height;
    ih.biPlanes = 1;
    ih.biBitCount = 32;
    ih.biCompression = BI_RGB;
    ih.biSizeImage = (DWORD)px.size();
    fh.bfType = 0x4d42;
    fh.bfOffBits = sizeof(fh) + sizeof(ih);
    fh.bfSize = fh.bfOffBits + ih.biSizeImage;
    FILE* f = std::fopen(path, "wb");
    if (!f) {
        std::fprintf(g_runnerOut, "cannot write %s\n", path);
        return;
    }
    std::fwrite(&fh, sizeof(fh), 1, f);
    std::fwrite(&ih, sizeof(ih), 1, f);
    std::fwrite(px.data(), 1, px.size(), f);
    std::fclose(f);
    std::fprintf(g_runnerOut, "[window] screenshot %s\n", path);
}

// Binds the game's GL function table to the ANGLE entry points: the same table the Android build binds to libGLESv2.
#define BIND(field, fn) t.field = reinterpret_cast<decltype(t.field)>(GetProcAddress(g_libGLES, fn))
void bindTable(deps_table& t) {
    BIND(enable, "glEnable"); BIND(disable, "glDisable"); BIND(blendFunc, "glBlendFunc"); BIND(blendEquation, "glBlendEquation");
    BIND(blendColor, "glBlendColor"); BIND(clearColor, "glClearColor"); BIND(createProgram, "glCreateProgram"); BIND(deleteProgram, "glDeleteProgram");
    BIND(useProgram, "glUseProgram"); BIND(cullFace, "glCullFace"); BIND(depthFunc, "glDepthFunc"); BIND(depthMask, "glDepthMask");
    BIND(depthRangef, "glDepthRangef"); BIND(clearDepthf, "glClearDepthf"); BIND(frontFace, "glFrontFace"); BIND(lineWidth, "glLineWidth");
    BIND(polygonOffset, "glPolygonOffset"); BIND(sampleCoverage, "glSampleCoverage"); BIND(stencilFunc, "glStencilFunc"); BIND(stencilMask, "glStencilMask");
    BIND(stencilOp, "glStencilOp"); BIND(clearStencil, "glClearStencil"); BIND(colorMask, "glColorMask"); BIND(scissor, "glScissor");
    BIND(flush, "glFlush"); BIND(finish, "glFinish"); BIND(clear, "glClear"); BIND(createShader, "glCreateShader"); BIND(shaderSource, "glShaderSource");
    BIND(compileShader, "glCompileShader"); BIND(deleteShader, "glDeleteShader"); BIND(getShaderiv, "glGetShaderiv"); BIND(getShaderInfoLog, "glGetShaderInfoLog");
    BIND(attachShader, "glAttachShader"); BIND(linkProgram, "glLinkProgram"); BIND(getProgramiv, "glGetProgramiv"); BIND(getProgramInfoLog, "glGetProgramInfoLog");
    BIND(getUniformLocation, "glGetUniformLocation"); BIND(getAttribLocation, "glGetAttribLocation"); BIND(getActiveUniform, "glGetActiveUniform");
    BIND(getActiveAttrib, "glGetActiveAttrib"); BIND(getIntegerv, "glGetIntegerv"); BIND(getFloatv, "glGetFloatv"); BIND(hint, "glHint");
    BIND(pixelStorei, "glPixelStorei"); BIND(getString, "glGetString"); BIND(getError, "glGetError"); BIND(bindBuffer, "glBindBuffer");
    BIND(genBuffers, "glGenBuffers"); BIND(deleteBuffers, "glDeleteBuffers"); BIND(vertexAttribPointer, "glVertexAttribPointer");
    BIND(vertexAttrib4f, "glVertexAttrib4f"); BIND(viewport, "glViewport"); BIND(activeTexture, "glActiveTexture"); BIND(bindTexture, "glBindTexture");
    BIND(readPixels, "glReadPixels"); BIND(bindFramebuffer, "glBindFramebuffer"); BIND(enableVertexAttribArray, "glEnableVertexAttribArray");
    BIND(disableVertexAttribArray, "glDisableVertexAttribArray"); BIND(drawElements, "glDrawElements"); BIND(drawArrays, "glDrawArrays");
    BIND(genRenderbuffers, "glGenRenderbuffers"); BIND(deleteRenderbuffers, "glDeleteRenderbuffers"); BIND(genTextures, "glGenTextures");
    BIND(deleteTextures, "glDeleteTextures"); BIND(texParameteri, "glTexParameteri"); BIND(texParameterf, "glTexParameterf");
    BIND(texSubImage2D, "glTexSubImage2D"); BIND(compressedTexImage2D, "glCompressedTexImage2D"); BIND(compressedTexSubImage2D, "glCompressedTexSubImage2D");
    BIND(generateMipmap, "glGenerateMipmap"); BIND(copyTexSubImage2D, "glCopyTexSubImage2D"); BIND(genFramebuffers, "glGenFramebuffers");
    BIND(framebufferTexture2D, "glFramebufferTexture2D"); BIND(framebufferRenderbuffer, "glFramebufferRenderbuffer");
    BIND(checkFramebufferStatus, "glCheckFramebufferStatus"); BIND(bindRenderbuffer, "glBindRenderbuffer"); BIND(renderbufferStorage, "glRenderbufferStorage");
    BIND(uniform1f, "glUniform1f"); BIND(uniform1i, "glUniform1i"); BIND(uniform1iv, "glUniform1iv"); BIND(uniform2iv, "glUniform2iv");
    BIND(uniform3iv, "glUniform3iv"); BIND(uniform4iv, "glUniform4iv"); BIND(uniform1fv, "glUniform1fv"); BIND(uniform2fv, "glUniform2fv");
    BIND(uniform3fv, "glUniform3fv"); BIND(uniform4fv, "glUniform4fv"); BIND(uniformMatrix4fv, "glUniformMatrix4fv");
    // The two whose size parameters are pointer sized in GLES2, and the BGRA upload (as gl_function_table.cpp does for Android).
    static void (*s_texImage2D)(uint32_t, int32_t, int32_t, int32_t, int32_t, int32_t, uint32_t, uint32_t, const void*);
    static void (*s_bufferData)(uint32_t, intptr_t, const void*, uint32_t);
    static void (*s_bufferSubData)(uint32_t, intptr_t, intptr_t, const void*);
    s_texImage2D = reinterpret_cast<decltype(s_texImage2D)>(GetProcAddress(g_libGLES, "glTexImage2D"));
    s_bufferData = reinterpret_cast<decltype(s_bufferData)>(GetProcAddress(g_libGLES, "glBufferData"));
    s_bufferSubData = reinterpret_cast<decltype(s_bufferSubData)>(GetProcAddress(g_libGLES, "glBufferSubData"));
    t.texImage2D = [](uint32_t target, int32_t level, int32_t internalFormat, int32_t w, int32_t h, int32_t border, uint32_t format, uint32_t type,
                      const void* px) {
        if (format == 0x80E1 && internalFormat == 0x1908) internalFormat = 0x80E1;
        s_texImage2D(target, level, internalFormat, w, h, border, format, type, px);
    };
    t.bufferData = [](uint32_t target, int32_t size, const void* data, uint32_t usage) { s_bufferData(target, size, data, usage); };
    t.bufferSubData = [](uint32_t target, int32_t offset, int32_t size, const void* data) { s_bufferSubData(target, offset, size, data); };

    // RT debug (DH2_SHDUMP=<dir>): every shader source handed to GL is written to <dir>/shader_<id>.glsl; DH2_SHPATCH=<file> applies "FROM=>TO" lines (backslash-n = newline).
    if (const char* sd = std::getenv("DH2_SHDUMP")) {
        static std::string s_dir = sd;
        static decltype(t.shaderSource) o_ss; o_ss = t.shaderSource;
        t.shaderSource = [](uint32_t sh, int32_t n, const char* const* str, const int32_t* len) {
            std::string all;
            for (int i = 0; i < n; ++i) all += (len && len[i] > 0) ? std::string(str[i], len[i]) : std::string(str[i]);
            if (const char* pf = std::getenv("DH2_SHPATCH")) if (FILE* f = std::fopen(pf, "r")) {
                char line[2048];
                while (std::fgets(line, sizeof line, f)) {
                    std::string l = line;
                    while (!l.empty() && (l.back() == '\n' || l.back() == '\r')) l.pop_back();
                    size_t e = l.find("=>");
                    if (e == std::string::npos) continue;
                    std::string a = l.substr(0, e), b = l.substr(e + 2);
                    for (size_t q; (q = b.find("\n")) != std::string::npos;) b.replace(q, 2, "\n");
                    for (size_t q; (q = a.find("\n")) != std::string::npos;) a.replace(q, 2, "\n");
                    for (size_t q = 0; !a.empty() && (q = all.find(a, q)) != std::string::npos; q += b.size()) all.replace(q, a.size(), b);
                }
                std::fclose(f);
            }
            if (FILE* f = std::fopen((s_dir + "/shader_" + std::to_string(sh) + ".glsl").c_str(), "wb")) { std::fwrite(all.data(), 1, all.size(), f); std::fclose(f); }
            const char* cp = all.c_str();
            o_ss(sh, 1, &cp, nullptr);
        };
    }
    // RT debug (DH2_DRAWDUMP=<frame>): per-draw texture bindings and UV ranges of client-array draws, for rendering bisects.
    if (const char* dd = std::getenv("DH2_DRAWDUMP")) {
        static int s_dumpFrame = std::atoi(dd);
        static uint32_t s_unit = 0, s_bound[8] = {}, s_curTex = 0, s_arrayBuf = 0, s_elemBuf = 0;
        struct TI { int w, h; uint32_t fmt; uint32_t h0; };
        static std::map<uint32_t, TI> s_tex;
        struct AP { int size; uint32_t type; int stride; const void* ptr; bool buf; bool en; };
        static AP s_ap[16] = {};
        static decltype(t.bindTexture) o_bind; static decltype(t.activeTexture) o_act; static decltype(t.compressedTexImage2D) o_cti;
        static decltype(t.vertexAttribPointer) o_vap; static decltype(t.bindBuffer) o_bb; static decltype(t.drawElements) o_de; static decltype(t.texImage2D) o_ti;
        static decltype(t.enableVertexAttribArray) o_en; static decltype(t.disableVertexAttribArray) o_dis;
        o_bind = t.bindTexture; o_act = t.activeTexture; o_cti = t.compressedTexImage2D; o_vap = t.vertexAttribPointer; o_bb = t.bindBuffer; o_de = t.drawElements;
        o_ti = t.texImage2D; o_en = t.enableVertexAttribArray; o_dis = t.disableVertexAttribArray;
        t.activeTexture = [](uint32_t u) { s_unit = (u - 0x84C0) & 7; o_act(u); };
        t.bindTexture = [](uint32_t tg, uint32_t id) { s_bound[s_unit] = id; if (currentFrame() == s_dumpFrame) std::fprintf(g_runnerOut, "[gl] bindTexture unit=%u id=%u\n", s_unit, id); o_bind(tg, id); };
        t.bindBuffer = [](uint32_t tg, uint32_t b) { if (tg == 0x8892) s_arrayBuf = b; else s_elemBuf = b; o_bb(tg, b); };
        t.enableVertexAttribArray = [](uint32_t i) { if (i < 16) s_ap[i].en = true; o_en(i); };
        t.disableVertexAttribArray = [](uint32_t i) { if (i < 16) s_ap[i].en = false; o_dis(i); };
        t.compressedTexImage2D = [](uint32_t tg, int32_t lv, uint32_t f, int32_t w, int32_t h, int32_t b, int32_t sz, const void* d) {
            if (lv == 0) { uint32_t hh = 0; if (d) for (int i = 0; i < 64 && i < sz; ++i) hh = hh * 31 + static_cast<const uint8_t*>(d)[i];
                s_tex[s_bound[s_unit]] = {w, h, f, hh}; std::fprintf(g_runnerOut, "[tex] id=%u %dx%d cfmt=0x%x sz=%d h=%08x\n", s_bound[s_unit], w, h, f, sz, hh); }
            o_cti(tg, lv, f, w, h, b, sz, d); };
        t.texImage2D = [](uint32_t tg, int32_t lv, int32_t f, int32_t w, int32_t h, int32_t b, uint32_t fm, uint32_t ty, const void* d) {
            if (lv == 0) { uint32_t hh = 0; if (d) for (int i = 0; i < 64; ++i) hh = hh * 31 + static_cast<const uint8_t*>(d)[i];
                s_tex[s_bound[s_unit]] = {w, h, fm, hh}; std::fprintf(g_runnerOut, "[tex] id=%u %dx%d fmt=0x%x type=0x%x h=%08x\n", s_bound[s_unit], w, h, fm, ty, hh); }
            if (lv == 0 && d && ty == 0x1401 && w >= 256 && std::getenv("DH2_TEXDUMP")) { char nm[512]; std::snprintf(nm, sizeof nm, "%s/tex_%u_%dx%d_%x.raw", std::getenv("DH2_TEXDUMP"), s_bound[s_unit], w, h, fm);
                if (FILE* fo = std::fopen(nm, "wb")) { std::fwrite(d, 1, size_t(w) * h * 4, fo); std::fclose(fo); } }
            o_ti(tg, lv, f, w, h, b, fm, ty, d); };
        t.vertexAttribPointer = [](uint32_t i, int32_t sz, uint32_t ty, uint8_t n, int32_t st, const void* p) {
            if (i < 16) s_ap[i] = {sz, ty, st, p, s_arrayBuf != 0, s_ap[i].en}; o_vap(i, sz, ty, n, st, p); };

        static uint32_t s_prog = 0; static std::map<uint64_t, std::string> s_uname;
        static decltype(t.useProgram) o_up = t.useProgram; static decltype(t.getUniformLocation) o_gul = t.getUniformLocation; static decltype(t.uniformMatrix4fv) o_um = t.uniformMatrix4fv;
        t.useProgram = [](uint32_t p) { s_prog = p; o_up(p); };
        t.getUniformLocation = [](uint32_t p, const char* n) { int r = o_gul(p, n); s_uname[(uint64_t(p) << 32) | uint32_t(r)] = n; return r; };
        t.uniformMatrix4fv = [](int32_t loc, int32_t cnt, uint8_t tr, const float* m) {
            if (currentFrame() == s_dumpFrame) { auto it = s_uname.find((uint64_t(s_prog) << 32) | uint32_t(loc));
                if (it != s_uname.end() && it->second.find("exture") != std::string::npos || it->second.find("WorldViewIT") != std::string::npos) { std::fprintf(g_runnerOut, "[umat] prog=%u %s:", s_prog, it->second.c_str());
                    for (int i = 0; i < 16; ++i) std::fprintf(g_runnerOut, " %.3f", m[i]); std::fprintf(g_runnerOut, "\n"); } }
            o_um(loc, cnt, tr, m); };
        static decltype(t.uniform1f) o_u1f = t.uniform1f;
        t.uniform1f = [](int32_t loc, float v) {
            if (currentFrame() == s_dumpFrame) { auto it = s_uname.find((uint64_t(s_prog) << 32) | uint32_t(loc));
                if (it != s_uname.end() && it->second.find("envmap") != std::string::npos) std::fprintf(g_runnerOut, "[u1f] prog=%u %s=%g\n", s_prog, it->second.c_str(), v); }
            o_u1f(loc, v); };
        static decltype(t.uniform4fv) o_u4fv = t.uniform4fv;
        t.uniform4fv = [](int32_t loc, int32_t n, const float* v) {
            { auto it = s_uname.find((uint64_t(s_prog) << 32) | uint32_t(loc));
                if (it != s_uname.end() && it->second.find("fog") != std::string::npos) std::fprintf(g_runnerOut, "[fog4] f=%d prog=%u %s=%g,%g,%g,%g\n", currentFrame(), s_prog, it->second.c_str(), v[0], v[1], v[2], v[3]); }
            if (currentFrame() == s_dumpFrame) { auto it = s_uname.find((uint64_t(s_prog) << 32) | uint32_t(loc));
                if (it != s_uname.end() && n >= 1 && (it->second.find("Color") != std::string::npos || it->second.find("color") != std::string::npos || it->second.find("Ambient") != std::string::npos))
                    std::fprintf(g_runnerOut, "[u4fv] prog=%u %s=%g,%g,%g,%g\n", s_prog, it->second.c_str(), v[0], v[1], v[2], v[3]); }
            o_u4fv(loc, n, v); };
        static decltype(t.uniform2fv) o_u2fv = t.uniform2fv;
        t.uniform2fv = [](int32_t loc, int32_t n, const float* v) {
            { auto it = s_uname.find((uint64_t(s_prog) << 32) | uint32_t(loc));
                if (it != s_uname.end() && it->second.find("fog") != std::string::npos) std::fprintf(g_runnerOut, "[fog2] f=%d prog=%u %s=%g,%g\n", currentFrame(), s_prog, it->second.c_str(), v[0], v[1]); }
            o_u2fv(loc, n, v); };
        static decltype(t.uniform1fv) o_u1fv = t.uniform1fv;
        t.uniform1fv = [](int32_t loc, int32_t n, const float* v) {
            if (currentFrame() == s_dumpFrame) { auto it = s_uname.find((uint64_t(s_prog) << 32) | uint32_t(loc));
                if (it != s_uname.end() && it->second.find("nvmap") != std::string::npos) std::fprintf(g_runnerOut, "[u1fv] prog=%u %s=%g\n", s_prog, it->second.c_str(), v[0]); }
            o_u1fv(loc, n, v); };
        t.drawElements = [](uint32_t mode, int32_t cnt, uint32_t ty, const void* ind) {
            if (currentFrame() == s_dumpFrame) {
                { static int done = -1; if (done != currentFrame()) { done = currentFrame(); rtCharDump(); } }
                std::fprintf(stderr, "[drawmark] cnt=%d prog=%u tex0=%u\n", cnt, s_prog, s_bound[0]); std::fprintf(g_runnerOut, "[prog] %u\n", s_prog);
                std::fprintf(g_runnerOut, "[draw] mode=%x cnt=%d ibuf=%u tex0=%u tex1=%u tex2=%u", mode, cnt, s_elemBuf, s_bound[0], s_bound[1], s_bound[2]);
                for (int u = 0; u < 3; ++u) { auto it = s_tex.find(s_bound[u]); if (it != s_tex.end()) std::fprintf(g_runnerOut, " [u%d %dx%d h=%08x]", u, it->second.w, it->second.h, it->second.h0); }
                if (!s_elemBuf && ind && ty == 0x1403) {
                    const uint16_t* ix = static_cast<const uint16_t*>(ind);
                    for (int a = 0; a < 16; ++a) {
                        if (!s_ap[a].en || s_ap[a].buf || s_ap[a].type != 0x1406 || !s_ap[a].ptr) continue;
                        float mn[4] = {1e9f, 1e9f, 1e9f, 1e9f}, mx[4] = {-1e9f, -1e9f, -1e9f, -1e9f};
                        for (int i = 0; i < cnt; ++i) { const float* v = reinterpret_cast<const float*>(static_cast<const char*>(s_ap[a].ptr) + size_t(ix[i]) * (s_ap[a].stride ? s_ap[a].stride : s_ap[a].size * 4));
                            for (int c = 0; c < s_ap[a].size && c < 4; ++c) { mn[c] = std::min(mn[c], v[c]); mx[c] = std::max(mx[c], v[c]); } }
                        std::fprintf(g_runnerOut, " a%d(%d)[", a, s_ap[a].size);
                        for (int c = 0; c < s_ap[a].size && c < 4; ++c) std::fprintf(g_runnerOut, "%.3f..%.3f ", mn[c], mx[c]);
                        std::fprintf(g_runnerOut, "]");
                    }
                }
                std::fprintf(g_runnerOut, "\n");
                if (const char* ud = std::getenv("DH2_UVDUMP")) if (!s_elemBuf && ind && ty == 0x1403 && s_bound[0] == uint32_t(std::atoi(ud))) {
                    const uint16_t* ix = static_cast<const uint16_t*>(ind);
                    for (int i = 0; i < cnt; ++i) { std::fprintf(g_runnerOut, "[uv] cnt=%d i=%d", cnt, i);
                        for (int a = 0; a < 16; ++a) { if (!s_ap[a].en || s_ap[a].buf || s_ap[a].type != 0x1406 || !s_ap[a].ptr) continue;
                            const float* v = reinterpret_cast<const float*>(static_cast<const char*>(s_ap[a].ptr) + size_t(ix[i]) * (s_ap[a].stride ? s_ap[a].stride : s_ap[a].size * 4));
                            std::fprintf(g_runnerOut, " a%d:", a); for (int c = 0; c < s_ap[a].size && c < 4; ++c) std::fprintf(g_runnerOut, "%.4f,", v[c]); }
                        for (int a = 0; a < 16; ++a) { if (!s_ap[a].en || s_ap[a].buf || s_ap[a].type != 0x1401 || !s_ap[a].ptr) continue;
                            const uint8_t* bv = reinterpret_cast<const uint8_t*>(s_ap[a].ptr) + size_t(ix[i]) * (s_ap[a].stride ? s_ap[a].stride : s_ap[a].size);
                            std::fprintf(g_runnerOut, " b%d:", a); for (int c = 0; c < s_ap[a].size && c < 4; ++c) std::fprintf(g_runnerOut, "%u,", bv[c]); }
                        std::fprintf(g_runnerOut, "\n"); }
                }
            }
            { static int skipTex = std::getenv("DH2_SKIPTEX") ? std::atoi(std::getenv("DH2_SKIPTEX")) : -1; static int skipProg = std::getenv("DH2_SKIPPROG") ? std::atoi(std::getenv("DH2_SKIPPROG")) : -1;
              if ((skipTex >= 0 && int(s_bound[0]) == skipTex) || (skipProg >= 0 && int(s_prog) == skipProg)) return; }
            { static int rmCnt = std::getenv("DH2_REMAP_CNT") ? std::atoi(std::getenv("DH2_REMAP_CNT")) : -1; static int rmTo = std::getenv("DH2_REMAP_TO") ? std::atoi(std::getenv("DH2_REMAP_TO")) : -1;
              if (rmCnt == cnt && rmTo > 0 && s_bound[0] != uint32_t(rmTo)) { const uint32_t was = s_bound[0]; o_act(0x84C0); o_bind(0x0DE1, uint32_t(rmTo)); o_de(mode, cnt, ty, ind); o_bind(0x0DE1, was); o_act(0x84C0 + s_unit); return; } }
            o_de(mode, cnt, ty, ind); };
    }
}
#undef BIND

std::string dllDir(const Options& opt) {
    std::string d = opt.angleDir;
    if (d.empty()) {
        char exe[MAX_PATH];
        GetModuleFileNameA(nullptr, exe, MAX_PATH);
        d = exe;
        d.resize(d.find_last_of("\\/") + 1);
    }
    if (!d.empty() && d.back() != '\\' && d.back() != '/') d += '\\';
    return d;
}

bool createWindowAndContext(const Options& opt) {
    g_width = opt.width;
    g_height = opt.height;
    SetProcessDPIAware();
    HINSTANCE inst = GetModuleHandleA(nullptr);
    WNDCLASSA wc{};
    wc.lpfnWndProc = wndProc;
    wc.hInstance = inst;
    wc.hCursor = LoadCursor(nullptr, IDC_ARROW);
    wc.lpszClassName = "dh2_host_window";
    RegisterClassA(&wc);
    const DWORD style = WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX | WS_VISIBLE;
    RECT r{0, 0, g_width, g_height};
    AdjustWindowRect(&r, style, FALSE);
    g_hwnd = CreateWindowA(wc.lpszClassName, "Dungeon Hunter 2 (host runner)", style, CW_USEDEFAULT, CW_USEDEFAULT, r.right - r.left, r.bottom - r.top,
                           nullptr, nullptr, inst, nullptr);
    if (!g_hwnd) return false;

    const std::string dir = dllDir(opt);
    SetDllDirectoryA(dir.c_str());   // libEGL finds libGLESv2.dll and d3dcompiler_47.dll here
    g_libEGL = LoadLibraryA((dir + "libEGL.dll").c_str());
    g_libGLES = LoadLibraryA((dir + "libGLESv2.dll").c_str());
    if (!g_libEGL || !g_libGLES) {
        std::fprintf(g_runnerOut, "cannot load ANGLE libEGL.dll / libGLESv2.dll from %s (use --angle <dir>)\n", dir.c_str());
        return false;
    }
    bool ok = load(g_libEGL, "eglGetDisplay", p_eglGetDisplay) && load(g_libEGL, "eglInitialize", p_eglInitialize) &&
              load(g_libEGL, "eglChooseConfig", p_eglChooseConfig) && load(g_libEGL, "eglCreateWindowSurface", p_eglCreateWindowSurface) &&
              load(g_libEGL, "eglCreateContext", p_eglCreateContext) && load(g_libEGL, "eglMakeCurrent", p_eglMakeCurrent) &&
              load(g_libEGL, "eglSwapBuffers", p_eglSwapBuffers) && load(g_libEGL, "eglSwapInterval", p_eglSwapInterval) &&
              load(g_libEGL, "eglBindAPI", p_eglBindAPI) && load(g_libEGL, "eglGetError", p_eglGetError) && load(g_libGLES, "glReadPixels", p_glReadPixels);
    if (!ok) return false;
    g_dpy = p_eglGetDisplay(GetDC(g_hwnd));
    int major = 0, minor = 0;
    if (!p_eglInitialize(g_dpy, &major, &minor)) {
        std::fprintf(g_runnerOut, "eglInitialize failed 0x%x\n", p_eglGetError());
        return false;
    }
    p_eglBindAPI(0x30A0);   // EGL_OPENGL_ES_API
    // remaster: multisample anti-aliasing like the Android surface (DH2_MSAA = samples, default 4, 0 = off)
    const char* msaaEnv = std::getenv("DH2_MSAA");
    const int msaa = msaaEnv ? std::atoi(msaaEnv) : 4;
    const int cfgAttrMsaa[] = {0x3024, 8, 0x3023, 8, 0x3022, 8, 0x3021, 8, 0x3025, 24, 0x3026, 8, 0x3040, 4 /*ES2*/, 0x3033, 4 /*window*/,
                               0x3032, 1 /*sample buffers*/, 0x3031, msaa /*samples*/, 0x3038};
    const int cfgAttr[] = {0x3024, 8, 0x3023, 8, 0x3022, 8, 0x3021, 8, 0x3025, 24, 0x3026, 8, 0x3040, 4 /*ES2*/, 0x3033, 4 /*window*/, 0x3038};
    EGLConfig cfg = nullptr;
    int n = 0;
    if (msaa > 0 && p_eglChooseConfig(g_dpy, cfgAttrMsaa, &cfg, 1, &n) && n >= 1) {
        std::fprintf(g_runnerOut, "EGL config: MSAA %dx\n", msaa);
    } else if (!p_eglChooseConfig(g_dpy, cfgAttr, &cfg, 1, &n) || n < 1) {
        std::fprintf(g_runnerOut, "eglChooseConfig failed\n");
        return false;
    }
    g_surf = p_eglCreateWindowSurface(g_dpy, cfg, g_hwnd, nullptr);
    // remaster: an OpenGL ES 3 context like the phone's (the post-processing resolve needs glBlitFramebuffer); ES 2 if refused
    const int ctxAttr3[] = {0x3098, 3, 0x3038};
    const int ctxAttr[] = {0x3098, 2, 0x3038};
    g_ctx = p_eglCreateContext(g_dpy, cfg, nullptr, ctxAttr3);
    if (!g_ctx) g_ctx = p_eglCreateContext(g_dpy, cfg, nullptr, ctxAttr);
    g_dh2GLGetProc = [](const char* name) -> void* { return reinterpret_cast<void*>(GetProcAddress(g_libGLES, name)); };
    if (!g_surf || !g_ctx || !p_eglMakeCurrent(g_dpy, g_surf, g_surf, g_ctx)) {
        std::fprintf(g_runnerOut, "EGL surface/context failed 0x%x\n", p_eglGetError());
        return false;
    }
    p_eglSwapInterval(g_dpy, 0);
    bindTable(glitch::video::deps::activeGLFunctionTable());
    std::fprintf(g_runnerOut, "[window] EGL %d.%d, GL_RENDERER %s\n", major, minor,
                 (const char*)glitch::video::deps::activeGLFunctionTable().getString(0x1F01));
    return true;
}

}  // namespace

int runWindowLoop(const Options& opt) {
    g_runnerOut = splitConsole(opt);
    std::vector<ScriptEvent> script;
    if (!opt.scriptPath.empty() && !loadScript(opt.scriptPath, script)) {
        std::fprintf(g_runnerOut, "cannot read script %s\n", opt.scriptPath.c_str());
        return 2;
    }
    if (!createWindowAndContext(opt)) return 4;
    g_screenshotHook = [](const char* path) { saveBmp(path); };
    if (!bootGame(opt)) {
        std::fprintf(g_runnerOut, "boot failed\n");
        return 3;
    }
    std::fprintf(g_runnerOut, "[runner] booted (window %dx%d, %s clock)\n", opt.width, opt.height, opt.realtime ? "wall" : "fixed");
    std::fflush(g_runnerOut);
    bool quit = false;
    for (int f = 0; !quit && !g_closed && (opt.frames <= 0 || f < opt.frames); ++f) {
        MSG m;
        while (PeekMessageA(&m, nullptr, 0, 0, PM_REMOVE)) {
            TranslateMessage(&m);
            DispatchMessageA(&m);
        }
        if (g_closed) break;
        scriptApplyFrame(script, f, opt, quit);
        if (!opt.realtime) clockAdvance(opt.dtMs);
        runFrame();
        if (g_wantShot) {
            g_wantShot = false;
            saveBmp((opt.outDir + "/shot_" + std::to_string(f) + ".bmp").c_str());
        }
        p_eglSwapBuffers(g_dpy, g_surf);
        if (opt.logEvery > 0 && f % opt.logEvery == 0) logState(f);
    }
    logState(currentFrame());
    std::fflush(g_runnerOut);
    audioClose();
    return 0;
}

}  // namespace dh2host
