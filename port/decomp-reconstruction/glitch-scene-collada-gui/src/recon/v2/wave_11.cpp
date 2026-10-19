// Wave 11 (recon v2). No body in this wave could be written completely against
// the layouts: the 35 single-branch bodies are thunks (skipped), and the 65
// remaining bodies depend on unmapped externals (CInterpreter, CBlender,
// IMaterialParameters::setParameterCvt, SAnimationAccessor::getOutput) or on
// guest vtable dispatch. See ledger_parts/wave_11.csv for per-row notes.
#include "glitch-scene-collada-gui/recon/v2/wave_11.hpp"
