// Wave 12: classification helpers only. The remaining rows stay partial in the ledger
// (see ledger_parts/wave_12.csv); their bodies depend on layouts not yet in the layout headers.
#include "glitch-scene-collada-gui/recon/v2/wave_12.hpp"

namespace glitch::collada::recon_v2_12 {

bool isThunk(std::uint32_t elfAddress) {
    for (std::size_t i = 0; i < kThunkCount; ++i) {
        if (kThunkAddresses[i] == elfAddress) {
            return true;
        }
    }
    return false;
}

}  // namespace glitch::collada::recon_v2_12
