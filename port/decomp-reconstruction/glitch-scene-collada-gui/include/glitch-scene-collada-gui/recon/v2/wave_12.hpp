// Wave 12 of the partial-row rerun. Nothing in this wave could be reconstructed
// completely: the owning glitch::ps particle layouts and the CGlitchNewParticleSystemSceneNode
// layout are not in the allowed layout headers. The rows that are pure forwarding
// thunks are listed here so they are not reimplemented (ledger status skipped, note thunk).
#ifndef GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_12_HPP
#define GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_12_HPP

#include <cstddef>
#include <cstdint>

namespace glitch::collada::recon_v2_12 {

// Elf addresses of wave 12 rows whose body is a single forwarding branch.
inline constexpr std::uint32_t kThunkAddresses[] = {
    0x623220, 0x623278, 0x6232e0, 0x623338, 0x6233a0, 0x6233f8, 0x623450, 0x6234b8,
    0x623510, 0x623578, 0x6235d0, 0x623638, 0x623690, 0x6236f8, 0x623750, 0x6237b8,
    0x623810, 0x634518, 0x637a60,
};
inline constexpr std::size_t kThunkCount = sizeof(kThunkAddresses) / sizeof(kThunkAddresses[0]);

bool isThunk(std::uint32_t elfAddress);

}  // namespace glitch::collada::recon_v2_12

#endif  // GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_12_HPP
