// glitch::video::detail: free function templates of the detail namespace. Only the
// render-state apply path (0x5b71d8) is declared here. Its body is in
// glitch-video/src/tb_video-glitch_video_detail-0.cpp.
#pragma once

#include "glitch-video/tb/renderpass_srenderstate.hpp"

namespace glitch::video::detail {

// 0x5b71d8 apply<true, renderpass::SRenderState, CCommonGLDriver<...>>: walks the render-state
// word (SRenderState +0x04) and calls the per-group apply path or disables the GL capability
// whose driver cache flag is set. The first template argument is not used by the body.
// Partial: the instantiation is not provided yet (see the source file for what is missing).
template <bool, typename State, typename Driver>
void apply(const State& state, Driver* driver);

}  // namespace glitch::video::detail
