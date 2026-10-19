#include "glitch-video/render_state.hpp"

namespace glitch::video {

// 0x5d797c _ZN6glitch5video12SRenderStateC1Ev
// Partial: the constructor only writes the default words; the meaning of each
// field is not identified yet (see render_state.hpp). The C2 variant is not in the queue.
SRenderState::SRenderState() = default;

}  // namespace glitch::video
