// gameswf::grid_index_pick_good_grid_size<float> as the DH2 binary has it (0x7b2298). The binary symbol is a
// GCC clone: the grid_scale argument (0.707) is folded into the body, so the clone takes four arguments. Upstream
// r1714 (base/grid_index.h) has the template in the global namespace with a float grid_scale argument; the body
// below follows the clone, not the template.
//
// The constants are the binary's float bit patterns: 0.707f is 0x3F34FDF4, and grid_scale * grid_scale is
// 0x3EFFEC36 (about 0.49985, folded by the compiler from 0.707f * 0.707f).
//
// Body: vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-5.cpp

#ifndef VENDOR_GAMESWF_GRID_CELLS_HPP
#define VENDOR_GAMESWF_GRID_CELLS_HPP

#include <cmath>
#include <climits>

namespace gameswf {
namespace grid_dh2 {

// 0.707f, bits 0x3F34FDF4.
constexpr float kGridScale = 0x1.69fbe8p-1f;
// 0.707f * 0.707f, bits 0x3EFFEC36.
constexpr float kGridScaleSquared = 0x1.ffd86cp-2f;

// ARM __aeabi_f2iz: truncates toward zero, saturates at the int limits, and gives 0 for NaN.
inline int float_to_int_truncating(float v) {
    if (v != v) {
        return 0;
    }
    if (v >= 2147483648.0f) {
        return INT_MAX;
    }
    if (v <= -2147483648.0f) {
        return INT_MIN;
    }
    return static_cast<int>(v);
}

// The clamp the binary applies to each count: above 255 gives 256, below 1 gives 1.
inline int clamp_cells(int v) {
    if (v > 255) {
        return 256;
    }
    if (v < 1) {
        return 1;
    }
    return v;
}

// The body of gameswf::grid_index_pick_good_grid_size for a box of the given extent (width = max.x - min.x,
// height = max.y - min.y). Both counts start at 1. With no items they stay 1. With a box of positive area the
// counts follow the box shape, and a zero-area box takes its count from the non-zero side (x when width > 0,
// else y, the other stays 1). NaN area is not positive, so it takes the zero-area path, as the binary does.
inline void grid_cells_for_extent(float width, float height, int item_count_estimate, int* x_cells, int* y_cells) {
    *x_cells = 1;
    *y_cells = 1;
    if (item_count_estimate <= 0) {
        return;
    }
    const float area = width * height;
    if (area > 0.0f) {
        const float sqrt_n = std::sqrt(static_cast<float>(item_count_estimate));
        const float x_share = (width * width) / area;
        const float y_share = (height * height) / area;
        const float x_scaled = x_share * kGridScale;
        const float y_scaled = y_share * kGridScale;
        *x_cells = float_to_int_truncating(sqrt_n * x_scaled);
        *y_cells = float_to_int_truncating(sqrt_n * y_scaled);
    } else if (width > 0.0f) {
        *x_cells = float_to_int_truncating(static_cast<float>(item_count_estimate) * kGridScaleSquared);
    } else {
        *y_cells = float_to_int_truncating(static_cast<float>(item_count_estimate) * kGridScaleSquared);
    }
    *x_cells = clamp_cells(*x_cells);
    *y_cells = clamp_cells(*y_cells);
}

}  // namespace grid_dh2
}  // namespace gameswf

#endif  // VENDOR_GAMESWF_GRID_CELLS_HPP
