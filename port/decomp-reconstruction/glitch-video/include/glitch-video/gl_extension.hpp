// glitch::video::E_GL_EXTENSION: the OpenGL extensions the driver recognises. The values are the indices into the name table
// (getStringsInternal(E_GL_EXTENSION*) 0x6de848, 439 names: GL_ARB_multitexture first, GL_IMG_texture_format_BGRA8888 last); bit
// (index & 31) of extension word (index >> 5) is set in the driver's extension words (CCommonGLDriverBase +0x7b8, 14 words) when
// the extension string lists it. Unlike the other E_* types of glitch-video this one is a real enum, because
// glitch::core::getValue<E_GL_EXTENSION> (0x6dd6dc) is a template whose mangled name carries the type.
#pragma once

#include <cstdint>

namespace glitch::video {

enum E_GL_EXTENSION : int32_t {
    EGLE_NONE = 0xFFFF,  // getValue's "not found"
};

// 0x6de848: the null-terminated table of extension names.
const char* const* getStringsInternal(E_GL_EXTENSION*);

}  // namespace glitch::video

namespace glitch::core {

// 0x6dd6dc: the index of a name in the table, or 0xFFFF.
template <typename T>
T getValue(const char* name);
template <>
video::E_GL_EXTENSION getValue<video::E_GL_EXTENSION>(const char* name);

}  // namespace glitch::core
