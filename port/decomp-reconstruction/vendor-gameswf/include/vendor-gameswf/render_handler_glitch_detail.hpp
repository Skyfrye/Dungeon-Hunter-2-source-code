// Pure arithmetic of the render_handler_glitch draw paths (batch v1-vendor-gameswf-render_handler_glitch-fd003c-2).
//
// Kept out of the class and out of the .cpp so the test needs no link: every helper here takes plain floats and
// ints. Each one restates a block of the Hex-Rays pseudocode of the function named in its comment, with the same
// operand order, so that the float results match the binary.
#ifndef VENDOR_GAMESWF_RENDER_HANDLER_GLITCH_DETAIL_HPP
#define VENDOR_GAMESWF_RENDER_HANDLER_GLITCH_DETAIL_HPP

#include <cstdint>

namespace render_handler_glitch_detail {

// Blend slot that begin_submit_mask stores as the material index (BufferedRenderer::m_materialIndex). The
// mask paths test for it, and set_blend_mode leaves it alone.
inline constexpr int kMaskBlendIndex = 15;

// Indices of the two triangles of a bitmap quad (draw_bitmap): (0, 1, 2) and (1, 2, 3). The pseudocode stores them
// as three 32-bit words 0x00010000, 0x00010002 and 0x00030002, which read as u16 in little-endian order are these.
inline constexpr uint16_t kQuadIndices[6] = {0, 1, 2, 1, 2, 3};

// draw_bitmap rounds each staging position to a grid of 20 units (whole pixels in twips) when the handler's byte at
// +0x04 is non-zero: 20 * ((int)v + 10) / 20, with C integer division, which truncates toward zero.
inline float snap_to_pixel(float v) {
    return static_cast<float>(20 * ((static_cast<int>(v) + 10) / 20));
}

// The four staging positions of a bitmap quad (draw_bitmap). The rect is {xmin, xmax, ymin, ymax} (gameswf::rect);
// the matrix is gameswf::matrix, m_[2][3] row-major, passed as six floats {m00, m01, m02, m10, m11, m12}.
// Vertex order: 0 = (xmin, ymin), 1 = (xmax, ymin), 2 = (xmin, ymax), 3 = vertex 1 + vertex 2 - vertex 0.
struct QuadPositions {
    float x[4];
    float y[4];
};

// The sums are written in the pseudocode's order: each product, then the first add, then the matrix offset.
inline QuadPositions quad_positions(const float* m, const float* rect) {
    const float x0 = rect[0];
    const float x1 = rect[1];
    const float y0 = rect[2];
    const float y1 = rect[3];
    const float m00 = m[0];
    const float m01 = m[1];
    const float m02 = m[2];
    const float m10 = m[3];
    const float m11 = m[4];
    const float m12 = m[5];

    const float px0 = (x0 * m00 + y0 * m01) + m02;  // pseudocode v61
    const float py0 = (x0 * m10 + y0 * m11) + m12;  // pseudocode v62
    const float px1 = m02 + (y0 * m01 + x1 * m00);  // pseudocode v54
    const float py1 = m12 + (y0 * m11 + x1 * m10);  // pseudocode v56
    const float px2 = m02 + (x0 * m00 + y1 * m01);  // pseudocode v10
    const float py2 = m12 + (x0 * m10 + y1 * m11);  // pseudocode v11

    QuadPositions q{};
    q.x[0] = px0;
    q.y[0] = py0;
    q.x[1] = px1;
    q.y[1] = py1;
    q.x[2] = px2;
    q.y[2] = py2;
    q.x[3] = (px1 + px2) - px0;
    q.y[3] = (py1 + py2) - py0;
    return q;
}

// draw_mesh_primitive: one staging position (x, y, z) through the 4x4 matrix, which is column-major: element
// (row r, column c) is m[c * 4 + r]. The three results come from the original values, as the pseudocode does.
inline void transform_xyz(const float* m, float& x, float& y, float& z) {
    const float ox = x;
    const float oy = y;
    const float oz = z;
    const float nx = ((ox * m[0] + oy * m[4]) + oz * m[8]) + m[12];
    const float ny = ((ox * m[1] + oy * m[5]) + oz * m[9]) + m[13];
    const float nz = ((ox * m[2] + oy * m[6]) + oz * m[10]) + m[14];
    x = nx;
    y = ny;
    z = nz;
}

}  // namespace render_handler_glitch_detail

#endif  // VENDOR_GAMESWF_RENDER_HANDLER_GLITCH_DETAIL_HPP
