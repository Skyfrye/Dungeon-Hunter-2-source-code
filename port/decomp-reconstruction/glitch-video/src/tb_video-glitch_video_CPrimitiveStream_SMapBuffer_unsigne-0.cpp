// Batch e1-glitch-video-glitch_video_CPrimitiveStream_SMapBuffer_unsigne-0: one function, the reset clone
// of CPrimitiveStream::SMapBuffer<unsigned short const>. After the unification wave the definition is the nested
// template in primitive_stream.hpp; this file holds the out-of-line instance the binary has.
#include "glitch-video/tb/cprimitivestream_smapbuffer_ushort.hpp"

namespace glitch::video {

// 0x5911a0 _ZN6glitch5video16CPrimitiveStream10SMapBufferIKtE5resetERKS1_NS0_24E_BUFFER_READ_MAP_ACCESSE.clone.2
// (access is 1 in this clone). The reset is defined in primitive_stream.hpp; this instantiates it.
template struct CPrimitiveStream::SMapBuffer<const uint16_t>;

}  // namespace glitch::video
