// libStormGLOFT.so (Gameloft's GL compatibility shim for Dungeon Hunter 2, armv7 original). Reconstructed layer: see
// reports/decomp-reconstruction/STORMGLOFT.md. Addresses are armeabi-v7a file offsets of the original.
#pragma once
#include <GLES2/gl2.h>
#include <cstddef>
#include <cstdint>

// glsl-optimizer entry points (third party, not vendored: see the report). Define STORM_HAVE_GLSLOPT and link it to
// enable shader optimisation; without it my_glShaderSource forwards the concatenated source unchanged.
struct glslopt_ctx;
struct glslopt_shader;
#ifdef STORM_HAVE_GLSLOPT
glslopt_ctx* glslopt_initialize(int target);
glslopt_shader* glslopt_optimize(glslopt_ctx*, int type, const char* src, unsigned options);
bool glslopt_get_status(glslopt_shader*);
const char* glslopt_get_output(glslopt_shader*);
void glslopt_shader_delete(glslopt_shader*);
#endif

extern "C" {
extern int is16BitRendering;   // original data export
extern int isHighDevice;       // original data export
}

int hook_import_function(const char* lib, const char* symbol, unsigned char* replacement);   // 0x371e4
int ChangePageProperty(unsigned long addr, unsigned int len);                                 // 0x37ce0
int SafeMemRead(unsigned long addr, unsigned int len, char* out);                             // 0x37d8c
int SafeMemWrite(unsigned long addr, unsigned int len, char* in);                             // 0x37ecc
int PatchOpcode(const char* lib, unsigned long offset);                                       // 0x3800c

int my_glShaderSource(GLuint shader, GLsizei count, const char* const* string, const GLint* length);   // 0x3732c
const char* my_glGetString(GLenum name);                                                               // 0x37c04
int my_glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border,
                    GLenum format, GLenum type, const void* pixels);                                   // 0x382fc
int my_glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height,
                              GLint border, GLsizei imageSize, const void* data);                      // 0x388e4
int my_glViewport(int, int, GLsizei w, GLsizei h);                                                      // 0x38be0
int my_glScissor(int, int, GLsizei w, GLsizei h);                                                       // 0x38bfc
int DecompressPVRTC(GLenum target, GLint level, GLenum fmt, GLsizei w, GLsizei h, GLint border, const void* d);
int DecompressS3TC(GLenum target, GLint level, GLenum fmt, GLsizei w, GLsizei h, GLint border, const void* d);
int DecompressATC(GLenum target, GLint level, GLenum fmt, GLsizei w, GLsizei h, GLint border, const void* d);
int DecompressETC(GLenum target, GLint level, GLenum fmt, GLsizei w, GLsizei h, GLint border, const void* d);
void convertRGBA8888ToRGBA4444(const unsigned char* src, int bytes, unsigned char* dst);
void convertRGB888ToRGB565(const unsigned char* src, int bytes, unsigned char* dst);
int IsLowMemoryPlatform();

// texture decoders (storm_texture.cpp)
void BlockDecompressImageDXT1(unsigned long w, unsigned long h, const unsigned char* src, uint32_t* dst);
void BlockDecompressImageDXT3(unsigned long w, unsigned long h, const unsigned char* src, uint32_t* dst);
void BlockDecompressImageDXT5(unsigned long w, unsigned long h, const unsigned char* src, uint32_t* dst);
void DecompressETC1(unsigned char* src, unsigned char* dst, int w, int h);
void DecompressATITC(const unsigned char* src, uint32_t* dst, unsigned long w, unsigned long h, unsigned int fmt);
void PVRTDecompressPVRTC(const void* src, int is2bpp, int w, int h, unsigned char* dst);

// state shared by the storm_native* wrappers (original globals my_width/my_height/orig_width/orig_height)
extern int storm_my_width, storm_my_height, storm_orig_width, storm_orig_height;
