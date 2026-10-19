// Wave 11 (recon v2): partial-row rerun for the glitch::collada::animation_track
// applicator and interpreter bodies (slices 13 and 14). Layout header in use:
// glitch-scene-collada-gui/layouts/animation_track.hpp.
#ifndef GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_11_HPP
#define GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_11_HPP

#include "glitch-scene-collada-gui/layouts/animation_track.hpp"

namespace glitch::collada::recon_v2_11 {

// Rows in wave_11.tsv that are single forwarding branches (thunks). Not reimplemented.
inline constexpr unsigned kThunkRows = 35;
// Rows that stay partial: each needs an unmapped external or a guest vtable/pointer read.
inline constexpr unsigned kPartialRows = 65;

}  // namespace glitch::collada::recon_v2_11

#endif  // GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_11_HPP
