// Batch e1-glitch-video-glitch_video_CVertexStreams-0: the destructor of glitch::video::CVertexStreams
// (complete-object variant D1). See the header for the layout and the partial note.
#include "glitch-video/vertex_streams.hpp"

namespace glitch::video {

// 0x5a0a1c _ZN6glitch5video14CVertexStreamsD1Ev / 0x5a09e0 (D2)
// Hex-Rays: walks the entry array from this+0x14 to the end pointer at this+0x10, 16 bytes per entry,
// and calls glitch::IReferenceCounted::drop on each non-null first word (the SVertexStream buffer).
// The counting intrusive_ptr does the same: resetting each entry's buffer drops it. The vectors free the rest.
CVertexStreams::~CVertexStreams() {
    for (SVertexStream& entry : m_streams) {  // entries at +0x14, 16 bytes each
        if (entry.buffer) {                   // +0x00 of the entry: the buffer, null when unset
            entry.buffer = nullptr;           // IReferenceCounted::drop(buffer)
        }
    }
}

}  // namespace glitch::video
