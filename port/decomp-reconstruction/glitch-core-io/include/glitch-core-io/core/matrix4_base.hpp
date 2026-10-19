// glitch::core::detail::CMatrix4Base<float> products. The original members are free functions
// here: the object comes first, as the ARM code passes this in r0. Storage is the deps stand-in
// CMatrix4<float> (16 values at +0x00, the identity flag at +0x40). The index pattern follows the
// pseudocode exactly: out[r + 4c] = sum over k of a[r + 4k] * b[k + 4c].
#pragma once

#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::core::detail {

// 0x35e118 CMatrix4Base<float>::mult(const CMatrix4Base&) const: this * other. When either side
// carries the identity flag, the other side is returned unchanged.
CMatrix4<float> mult(const CMatrix4<float>& self, const CMatrix4<float>& other);

// 0x597884 CMatrix4Base<float>::mult34(const CMatrix4Base&, CMatrix4Base&) const: the product
// with the last row fixed to (0, 0, 0, 1), written to out. The identity short-cuts copy.
CMatrix4<float>& mult34(const CMatrix4<float>& self, const CMatrix4<float>& other, CMatrix4<float>& out);

// 0x5822c8 CMatrix4Base<float>::setbyproduct(const CMatrix4Base&, const CMatrix4Base&): self = a * b,
// with the identity short-cuts. The general case calls setbyproduct_nocheck, as the original does.
void setbyproduct(CMatrix4<float>& self, const CMatrix4<float>& a, const CMatrix4<float>& b);

// 0x40ea54 CMatrix4Base<float>::setbyproduct_nocheck(const CMatrix4Base&, const CMatrix4Base&): self = a * b
// as a full 4x4 product with no identity short-cut; the flag of self is cleared.
void setbyproduct_nocheck(CMatrix4<float>& self, const CMatrix4<float>& a, const CMatrix4<float>& b);

// 0x50f6d8 CMatrix4Base<float>::multEq(const CMatrix4Base&): self *= other, in place. Returns self.
// When other carries the identity flag, self is unchanged; when self is the identity, it becomes other.
CMatrix4<float>& multEq(CMatrix4<float>& self, const CMatrix4<float>& other);

}  // namespace glitch::core::detail
