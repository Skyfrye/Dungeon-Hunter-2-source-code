#include "net-transport/net_struct_interpolation.hpp"

// The template destructors are defined in the header. This translation unit makes the two
// binary instantiations explicit so the symbols exist in the library.
template class NetStructInterpolation<float>;
template class NetStructInterpolatedRangedFloat<18, -200000, 200000>;
template class NetStructInterpolatedRangedFloat<16, -50000, 50000>;
