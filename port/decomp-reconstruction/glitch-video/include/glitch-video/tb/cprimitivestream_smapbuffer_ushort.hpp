// glitch::video::CPrimitiveStream::SMapBuffer<unsigned short const>: the mapped view of a primitive stream's index
// buffer. The canonical definition is the nested template in glitch-video/primitive_stream.hpp (engine unification wave
// u1-video); this header only names the unsigned short const instance the way the earlier batch did.
//
// 0x5911a0 _ZN6glitch5video16CPrimitiveStream10SMapBufferIKtE5resetERKS1_NS0_24E_BUFFER_READ_MAP_ACCESSE.clone.2 is the
// compiler clone of reset() with the access fixed to 1; the port keeps the generic reset (access is a parameter), which
// a call with access 1 matches.
#pragma once

#include <cstdint>

#include "glitch-video/primitive_stream.hpp"

namespace glitch::video::tb {

using CPrimitiveStreamSMapBufferU16 = CPrimitiveStream::SMapBuffer<const uint16_t>;

}  // namespace glitch::video::tb
