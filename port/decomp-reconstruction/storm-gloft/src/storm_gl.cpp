// Reconstructed from libStormGLOFT.so (armeabi-v7a), 0x3732c..0x38c18. GL entry points that JNI_OnLoad splices into
// libDungeonHunter2.so's import table: shader optimisation, GL_RENDERER spoofing, texture format fallback.
#include "storm_gloft.hpp"
#include <android/log.h>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#define SLOG(...) __android_log_print(ANDROID_LOG_INFO, "StormGLOFT", __VA_ARGS__)

extern "C" { int is16BitRendering = 0; int isHighDevice = 0; }
static int g_lowMem = -1;   // dword_DE004

// 0x3732c. Concatenates the source strings (a stray "#endif]" token is rewritten to "#endif"), runs glslopt_optimize
// and submits the result; on failure it logs and submits the original text.
int my_glShaderSource(GLuint shader, GLsizei count, const char* const* string, const GLint* length) {
    std::string src;
    for (GLsizei i = 0; i < count; ++i) {
        if (!string[i]) continue;
        std::string part = (length && length[i] >= 0) ? std::string(string[i], strnlen(string[i], (size_t)length[i]))
                                                      : std::string(string[i]);
        std::string::size_type p = part.find("#endif]");
        if (p != std::string::npos) part.replace(p, 7, "#endif");
        src += part;
    }
#ifdef STORM_HAVE_GLSLOPT
    GLint type = 0;
    glGetShaderiv(shader, GL_SHADER_TYPE, &type);
    glslopt_ctx* ctx = glslopt_initialize(1);
    glslopt_shader* s = glslopt_optimize(ctx, type == GL_FRAGMENT_SHADER, src.c_str(), 0);
    if (glslopt_get_status(s)) {
        SLOG("Optimized shader: %i", (int)shader);
        std::string out = glslopt_get_output(s);
        glslopt_shader_delete(s);
        const char* c = out.c_str();
        glShaderSource(shader, 1, &c, nullptr);
        return 0;
    }
    SLOG("FAIL glslopt_optimize! ShaderID == %i", (int)shader);
#endif
    const char* c = src.c_str();
    glShaderSource(shader, 1, &c, nullptr);
    return 0;
}

// 0x37c04: the game sees an ARM Mali-T604 ES 2.0 whatever the device.
const char* my_glGetString(GLenum name) {
    switch (name) {
        case GL_VENDOR: return "ARM";
        case GL_RENDERER: return "Mali-T604";
        case GL_VERSION: return "OpenGL ES 2.0";
        case GL_EXTENSIONS: return "GL_OES_compressed_ETC1_RGB8_texture GL_ARM_mali_program_binary";
        case GL_SHADING_LANGUAGE_VERSION: return "OpenGL ES GLSL ES 1.00";
        default: return (const char*)glGetString(name);
    }
}

static void logTexError(GLenum e) {
    if (!e) return;
    if (e == GL_INVALID_OPERATION) SLOG("glTexImage2D return GL_INVALID_OPERATION");
    else SLOG("glTexImage2D return error code 0x%04x", e);
}

// 0x38b34 / 0x38b90
void convertRGBA8888ToRGBA4444(const unsigned char* s, int bytes, unsigned char* d) {
    for (int i = 0; i + 3 < bytes; i += 4, d += 2) {
        uint16_t v = (uint16_t)(((s[i] & 0xF0) << 8) | (16 * (s[i + 1] & 0xF0)) | (s[i + 2] & 0xF0) | (s[i + 3] >> 4));
        memcpy(d, &v, 2);
    }
}
void convertRGB888ToRGB565(const unsigned char* s, int bytes, unsigned char* d) {
    for (int i = 0; i + 2 < bytes; i += 3, d += 2) {
        uint16_t v = (uint16_t)(((s[i] & 0xF8) << 8) | (8 * (s[i + 1] & 0xFC)) | (s[i + 2] >> 3));
        memcpy(d, &v, 2);
    }
}

// 0x382fc. With 16-bit rendering on, RGBA8888 uploads become RGBA4444 and RGB888 uploads become RGB565.
int my_glTexImage2D(GLenum target, GLint level, GLint ifmt, GLsizei w, GLsizei h, GLint border, GLenum format,
                    GLenum type, const void* pixels) {
    GLenum err = glGetError();
    if (is16BitRendering) {
        if (ifmt == GL_RGBA && type == GL_UNSIGNED_BYTE) {
            int n = w * h;
            unsigned char* t = (unsigned char*)malloc(4 * (size_t)n);
            convertRGBA8888ToRGBA4444((const unsigned char*)pixels, 4 * n, t);
            glTexImage2D(target, level, GL_RGBA, w, h, border, format, GL_UNSIGNED_SHORT_4_4_4_4, t);
            logTexError(err);
            free(t);
            return 0;
        }
        if (ifmt == GL_RGB && type == GL_UNSIGNED_BYTE) {
            int n = 3 * w * h;
            unsigned char* t = (unsigned char*)malloc((size_t)n);
            convertRGB888ToRGB565((const unsigned char*)pixels, n, t);
            glTexImage2D(target, level, GL_RGB, w, h, border, format, GL_UNSIGNED_SHORT_5_6_5, t);
            logTexError(err);
            free(t);
            return 0;
        }
    }
    glTexImage2D(target, level, ifmt, w, h, border, format, type, pixels);
    logTexError(err);
    return 0;
}

// 0x381dc: PVRTC 2/4 bpp, RGB or RGBA, decoded to RGBA8888 (RGB output keeps three bytes per pixel).
int DecompressPVRTC(GLenum target, GLint level, GLenum fmt, GLsizei w, GLsizei h, GLint border, const void* data) {
    int px = w * h;
    unsigned char* rgba = (unsigned char*)malloc(4 * (size_t)px);
    PVRTDecompressPVRTC(data, (fmt | 2) == 0x8C03, w, h, rgba);
    unsigned char* out = rgba;
    GLenum f = GL_RGB;
    if ((fmt | 1) == 0x8C03) f = GL_RGBA;
    else {
        out = (unsigned char*)malloc(3 * (size_t)px);
        for (int i = 0; i < px; ++i) { out[3 * i] = rgba[4 * i]; out[3 * i + 1] = rgba[4 * i + 1]; out[3 * i + 2] = rgba[4 * i + 2]; }
        free(rgba);
    }
    my_glTexImage2D(target, level, f, w, h, border, f, GL_UNSIGNED_BYTE, out);
    free(out);
    return 0;
}

// 0x386b8: DXT1 (0x83F0/0x83F1), DXT3 (0x83F2), DXT5 (0x83F3).
int DecompressS3TC(GLenum target, GLint level, GLenum fmt, GLsizei w, GLsizei h, GLint border, const void* data) {
    uint32_t* out = (uint32_t*)malloc(4 * (size_t)w * (size_t)h);
    const unsigned char* s = (const unsigned char*)data;
    switch (fmt) {
        case 0x83F0: case 0x83F1: BlockDecompressImageDXT1(w, h, s, out); break;
        case 0x83F2: BlockDecompressImageDXT3(w, h, s, out); break;
        case 0x83F3: BlockDecompressImageDXT5(w, h, s, out); break;
        default: free(out); return 0;
    }
    my_glTexImage2D(target, level, GL_RGBA, w, h, border, GL_RGBA, GL_UNSIGNED_BYTE, out);
    free(out);
    return 0;
}

// 0x387a0: ATITC (0x8C92 RGB, 0x87EE explicit alpha, 0x8C93 interpolated alpha); the original allocates 48 bytes/texel.
int DecompressATC(GLenum target, GLint level, GLenum fmt, GLsizei w, GLsizei h, GLint border, const void* data) {
    if (fmt != 0x87EE && fmt != 0x8C93 && fmt != 0x8C92) { return 0; }
    uint32_t* out = (uint32_t*)malloc(48 * (size_t)w * (size_t)h);
    DecompressATITC((const unsigned char*)data, out, w, h, fmt);
    my_glTexImage2D(target, level, GL_RGBA, w, h, border, GL_RGBA, GL_UNSIGNED_BYTE, out);
    free(out);
    return 0;
}

// 0x38858
int DecompressETC(GLenum target, GLint level, GLenum, GLsizei w, GLsizei h, GLint border, const void* data) {
    unsigned char* out = (unsigned char*)malloc(4 * (size_t)w * (size_t)h);
    DecompressETC1((unsigned char*)data, out, w, h);
    my_glTexImage2D(target, level, GL_RGBA, w, h, border, GL_RGBA, GL_UNSIGNED_BYTE, out);
    free(out);
    return 0;
}

// 0x388e4: compressed uploads are decoded on the CPU and re-sent uncompressed.
int my_glCompressedTexImage2D(GLenum target, GLint level, GLenum ifmt, GLsizei w, GLsizei h, GLint border, GLsizei,
                              const void* data) {
    switch (ifmt) {
        case 0x83F0: case 0x83F1: case 0x83F2: case 0x83F3: DecompressS3TC(target, level, ifmt, w, h, border, data); break;
        case 0x87EE: case 0x8C92: case 0x8C93: DecompressATC(target, level, ifmt, w, h, border, data); break;
        case 0x8C00: case 0x8C01: case 0x8C02: case 0x8C03: DecompressPVRTC(target, level, ifmt, w, h, border, data); break;
        case 0x8D64: DecompressETC(target, level, ifmt, w, h, border, data); break;   // GL_ETC1_RGB8_OES (36196)
        default: break;
    }
    return 0;
}

// 0x38be0 / 0x38bfc: the game's viewport and scissor origin is forced to (0,0).
int my_glViewport(int, int, GLsizei w, GLsizei h) { glViewport(0, 0, w, h); return 0; }
int my_glScissor(int, int, GLsizei w, GLsizei h) { glScissor(0, 0, w, h); return 0; }

// 0x38c18: MemTotal below 1 GiB (the value is in kB), cached.
int IsLowMemoryPlatform() {
    if (g_lowMem != -1) return g_lowMem == 1 ? 1 : 0;
    g_lowMem = 0;
    FILE* f = fopen("/proc/meminfo", "r");
    if (!f) return 0;
    unsigned long long kb = 0;
    int n = fscanf(f, "MemTotal: %llu kB", &kb);
    int c = fclose(f);
    if (n == 1 && c == 0) g_lowMem = kb < 0x100000;
    return g_lowMem == 1 ? 1 : 0;
}
