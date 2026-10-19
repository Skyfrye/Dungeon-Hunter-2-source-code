// Batch e1-glitch-core-io-glitch_core_detail_CMatrix4Base_float-0: the in-place and no-check products of
// glitch::core::detail::CMatrix4Base<float>. Declarations are in glitch-core-io/core/matrix4_base.hpp.
#include "glitch-core-io/core/matrix4_base.hpp"

namespace glitch::core::detail {

namespace {

// Full 4x4 product as the ARM code computes it. Element out[r + 4c] is
//   ((a[r] * b[4c] + a[r+4] * b[4c+1]) + a[r+8] * b[4c+2]) + a[r+12] * b[4c+3]
// with the additions left to right, so the float rounding order matches the pseudocode.
// The pseudocode writes the 16 results in place; the result is built in a local and copied,
// which only differs when the output aliases an input (no caller does that).
CMatrix4<float> fullProduct(const CMatrix4<float>& a, const CMatrix4<float>& b) {
    CMatrix4<float> out{};
    for (int c = 0; c < 4; ++c) {
        for (int r = 0; r < 4; ++r) {
            const float p0 = a.M[r] * b.M[4 * c];
            const float p1 = a.M[r + 4] * b.M[4 * c + 1];
            const float p2 = a.M[r + 8] * b.M[4 * c + 2];
            const float p3 = a.M[r + 12] * b.M[4 * c + 3];
            out.M[r + 4 * c] = ((p0 + p1) + p2) + p3;
        }
    }
    return out;
}

}  // namespace

// 0x40ea54 _ZN6glitch4core6detail12CMatrix4BaseIfE20setbyproduct_nocheckERKS3_S5_
// Writes self = a * b in full, then clears the identity flag at +0x40 (the pseudocode stores 0 there).
void setbyproduct_nocheck(CMatrix4<float>& self, const CMatrix4<float>& a, const CMatrix4<float>& b) {
    CMatrix4<float> product = fullProduct(a, b);
    product.flag = false;  // +0x40: *(_BYTE *)(result + 64) = 0
    self = product;
}

// 0x50f6d8 _ZN6glitch4core6detail12CMatrix4BaseIfE6multEqERKS3_
CMatrix4<float>& multEq(CMatrix4<float>& self, const CMatrix4<float>& other) {
    if (other.flag) {
        // Identity on the right: nothing to do (the pseudocode returns this).
        return self;
    }
    if (self.flag) {
        // Identity on the left: self becomes other, a 65-byte copy in the original (values + flag).
        self = other;
        return self;
    }
    // General case: multiply a copy of the old self, since setbyproduct_nocheck writes into self.
    const CMatrix4<float> old = self;
    setbyproduct_nocheck(self, old, other);
    return self;
}

}  // namespace glitch::core::detail
