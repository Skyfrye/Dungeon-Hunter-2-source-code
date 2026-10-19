#include "vox-audio/vox/adpcm_state.hpp"

// 0x896038 _ZN10AdpcmStateC2Ev
// 0x89604c _ZN10AdpcmStateC1Ev
// The default member initializers in adpcm_state.hpp give the same stores
// (value = 0xffff, flag = 0) as both constructor variants.

// 0x896060 _ZN10AdpcmStateD2Ev
// 0x896064 _ZN10AdpcmStateD1Ev
// Trivial destructors: the original body is a bare return.
