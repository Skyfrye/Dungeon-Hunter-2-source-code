#include "glitch-core-io/core/matrix4_base.hpp"

namespace glitch::core::detail {

namespace {

// out[r + 4c] = sum over k of a[r + 4k] * b[k + 4c], summed left to right as the ARM code does.
// Rows and columns run over 0..3 (full product) or 0..2 (the 3x4 form, see mult34).
CMatrix4<float> productOf(const CMatrix4<float>& a, const CMatrix4<float>& b) {
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
    out.flag = false;
    return out;
}

}  // namespace

// 0x35e118 _ZNK6glitch4core6detail12CMatrix4BaseIfE4multERKS3_
CMatrix4<float> mult(const CMatrix4<float>& self, const CMatrix4<float>& other) {
    if (self.flag) return other;
    if (other.flag) return self;
    return productOf(self, other);
}

// 0x597884 _ZNK6glitch4core6detail12CMatrix4BaseIfE6mult34ERKS3_RS3_
CMatrix4<float>& mult34(const CMatrix4<float>& self, const CMatrix4<float>& other, CMatrix4<float>& out) {
    if (self.flag || other.flag) {
        out = self.flag ? other : self;
        return out;
    }
    CMatrix4<float> result{};
    for (int c = 0; c < 3; ++c) {
        for (int r = 0; r < 3; ++r) {
            const float p0 = self.M[r] * other.M[4 * c];
            const float p1 = self.M[r + 4] * other.M[4 * c + 1];
            const float p2 = self.M[r + 8] * other.M[4 * c + 2];
            result.M[r + 4 * c] = (p0 + p1) + p2;
        }
    }
    // Translation column: the 3x3 part applied to the other's translation, plus this translation.
    for (int r = 0; r < 3; ++r) {
        const float p0 = self.M[r] * other.M[12];
        const float p1 = self.M[r + 4] * other.M[13];
        const float p2 = self.M[r + 8] * other.M[14];
        result.M[12 + r] = ((p0 + p1) + p2) + self.M[12 + r];
    }
    result.M[3] = 0.0f;
    result.M[7] = 0.0f;
    result.M[11] = 0.0f;
    result.M[15] = 1.0f;
    result.flag = false;
    out = result;
    return out;
}

// 0x5822c8 _ZN6glitch4core6detail12CMatrix4BaseIfE12setbyproductERKS3_S5_
// Identity short-cuts on the flag at +0x40: a copy of the other side takes the whole 65-byte record, flag
// included. When neither side is the identity, the original calls setbyproduct_nocheck (0x40ea54) with the
// same arguments; that is the full product, so it is called here as well.
void setbyproduct(CMatrix4<float>& self, const CMatrix4<float>& a, const CMatrix4<float>& b) {
    if (a.flag) {
        self = b;
    } else if (!b.flag) {
        setbyproduct_nocheck(self, a, b);
    } else {
        self = a;
    }
}

}  // namespace glitch::core::detail
