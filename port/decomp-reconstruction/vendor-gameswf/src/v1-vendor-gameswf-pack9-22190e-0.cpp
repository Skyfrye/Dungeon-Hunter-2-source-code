// Batch v1-vendor-gameswf-pack9-22190e-0 (vendor-gameswf). The ledger holds each row's status.
//
// gameswf::triangle_intersector and gameswf::final_shape are Gameloft classes; their headers are
// vendor-gameswf/triangle_intersector.hpp and vendor-gameswf/final_shape.hpp (new in this batch).
// tesselate_new::curve (0x786670, internal linkage) is not defined here. Its DH2 body is written in place in
// upstream gameswf_tesselate.cpp, the unit that owns it, the same unit as add_curve_segment and its static s_tolerance.
// The array destructors are template instances of upstream base/container.h and are ledgered upstream.
// The text_glyph_record members are partial: upstream gameswf_text.h does not declare their layout.
//
// Test: vendor-gameswf/tests/v1-vendor-gameswf-pack9-22190e-0_test.cpp (final_shape only).

#include <cmath>

#include "gameswf/gameswf.h"
#include "vendor-gameswf/final_shape.hpp"
#include "vendor-gameswf/glu_tessellator.hpp"
#include "vendor-gameswf/tesselator_accepter.hpp"
#include "vendor-gameswf/triangle_intersector.hpp"

namespace gameswf {

// ---------------------------------------------------------------------------------------------------
// triangle_intersector

// 0x785b08 gameswf::triangle_intersector::triangle_intersector()   [C1]
// 0x785b3c gameswf::triangle_intersector::triangle_intersector()   [C2, same body]
//   Allocates a tesselator_accepter (strip flag 1, direct flag 0, winding ABS_GEQ_TWO) and stores it in m_acc.
//   The binary calls operator new(0x3c) and the constructor; the host build's sizeof differs.
triangle_intersector::triangle_intersector() : m_acc(new tesselator_accepter(true, false, true)) {}

// 0x788204 gameswf::triangle_intersector::~triangle_intersector()   [D2]
// 0x788234 gameswf::triangle_intersector::~triangle_intersector()   [D1, same body]
//   Deletes the tesselator_accepter if present. The binary runs its destructor and then
//   gameswf::free_internal; delete does both. m_acc is not cleared, as in the binary.
triangle_intersector::~triangle_intersector() {
    if (m_acc) {
        delete m_acc;
    }
}

// 0x7889ec gameswf::triangle_intersector::process(gameswf::point*, gameswf::point*, gameswf::array<gameswf::point>&)
//   Tesselates two triangles a and b (three points each) into out. Sides: the signed term of each triangle,
//   E = (p2.y - p0.y) * -(p1.x - p0.x) + (p1.y - p0.y) * (p2.x - p0.x). When E(a) * E(b) >= 0 the second
//   triangle goes into the GLU contour in forward order, otherwise in reverse (2, 1, 0). The direct flag makes
//   the vertex array the output: m_type becomes 3 and the vertices are cleared first.
void triangle_intersector::process(point* a2, point* a3, array<point>& out) {
    tesselator_accepter* acc = m_acc;
    acc->init();
    GLUtesselator* tess = acc->m_tess;
    gluTessBeginPolygon(tess, acc);
    if (acc->m_direct) {
        acc->m_type = gl_prim::LINE_STRIP;  // *(int*)this = 3
        acc->m_vertices.resize(0);          // size 0; the buffer stays, as in the binary
    }

    const auto side = [](const point* t) {
        return (t[2].m_y - t[0].m_y) * -(t[1].m_x - t[0].m_x) + (t[1].m_y - t[0].m_y) * (t[2].m_x - t[0].m_x);
    };
    const bool same_side = side(a2) * side(a3) >= 0.0f;

    gluTessBeginContour(tess);
    for (int i = 0; i < 3; ++i) {
        acc->add_point(a2[i]);
    }
    gluTessEndContour(tess);

    gluTessBeginContour(tess);
    if (same_side) {
        for (int i = 0; i < 3; ++i) {
            acc->add_point(a3[i]);
        }
    } else {
        for (int i = 2; i >= 0; --i) {
            acc->add_point(a3[i]);
        }
    }
    gluTessEndContour(tess);

    array<unsigned short> indices;
    acc->end_shape(out, indices);
}

// ---------------------------------------------------------------------------------------------------
// final_shape

// 0x786fac gameswf::final_shape::add_curve(float, float, float, float, float, float)
//   Adds the quadratic curve (a, control c, end b). The curve is split while the flatness test is at or above
//   m_tolerance. Each leaf's end point is appended to m_cur through the recursion, and b is appended at the end.
//   The pen point m_last is set to the point stored last.
//   The binary returns the bits of its last float argument in r0; the value is not part of the result.
void final_shape::add_curve(float ax, float ay, float cx, float cy, float bx, float by) {
    float midx = (ax + bx) * 0.5f;
    float midy = (ay + by) * 0.5f;
    float qx = (cx + midx) * 0.5f;
    float qy = (cy + midy) * 0.5f;
    if (m_tolerance <= std::fabs(midx - qx) + std::fabs(midy - qy)) {
        for (;;) {
            add_curve(ax, ay, (ax + cx) * 0.5f, (ay + cy) * 0.5f, qx, qy);
            cx = (bx + cx) * 0.5f;
            cy = (by + cy) * 0.5f;
            const float rx = (bx + qx) * 0.5f;
            const float ry = (by + qy) * 0.5f;
            const float mx = (rx + cx) * 0.5f;
            const float my = (ry + cy) * 0.5f;
            const bool flat = m_tolerance > std::fabs(rx - mx) + std::fabs(ry - my);
            ax = qx;
            ay = qy;
            if (flat) {
                break;
            }
            qx = mx;
            qy = my;
        }
    }
    m_cur.m_points.push_back(point(bx, by));
    m_last = m_cur.m_points.back();
}

// 0x787fc8 gameswf::final_shape::~final_shape()   [D1]
//   Clears the current path's points and frees their buffer, then clears the segments (each segment's points are
//   freed by its destructor) and frees the segment buffer. The binary's zeroing loop runs only for a negative
//   count and is not reproduced.
final_shape::~final_shape() {
    m_cur.m_points.resize(0);
    m_cur.m_points.reserve(0);
    m_segments.resize(0);
    m_segments.reserve(0);
}

// 0x787eec gameswf::array<gameswf::final_shape::segment>::push_back<gameswf::final_shape::segment>(gameswf::final_shape::segment const&)
//   The instance of the member template push_back<U> defined in base/container.h (DH2): reserve(n + n/2) only when the new
//   count is above the buffer size, then the segment is copy-constructed into the open slot (its point array is copied with
//   the array growth rule, and its borrowed flag starts cleared). end_path calls it as m_segments.push_back<segment>(m_cur).
//   No body in this file.

// 0x78956c gameswf::final_shape::merge_segment(gameswf::final_shape::segment*)
//   Tries to join cur onto one stored segment at a shared end point. Segments are tested in order; empty ones and
//   cur itself are skipped. For a segment s (cur c, c's last point cl, first point cf; s's last sl, first sf):
//     A. sf == cl: c drops its last point and s is appended to it; the result replaces s. Returns 1.
//     B. cl == sl: c drops its last point and is reversed; the result is appended to s. Returns 1.
//     C. sl == cf: s drops its last point and c is appended to it. Returns 1.
//     D. sf == cf: c is reversed and drops its last point (its old first); s is appended to it, and the result
//        replaces s. Returns 1.
//   Returns 0 when no segment joins. Precondition: cur has points (end_path checks this).
//   The array resizes follow the DH2 rule of base/container.h (grow by new + new/2 above the capacity, never compact), which is
//   the rule of the binary's inlined resizes, so capacities match as well as values.
int final_shape::merge_segment(segment* cur) {
    if (m_segments.size() <= 0) {
        return 0;
    }
    array<point>& c = cur->m_points;
    for (int i = 0; i < m_segments.size(); ++i) {
        segment& s = m_segments[i];
        array<point>& sp = s.m_points;
        if (sp.size() == 0 || &s == cur) {
            continue;
        }
        const int cn = c.size();
        const int cl = cn - 1;
        const int sn = sp.size();
        const point cfirst = c[0];
        const point clast = c[cl];
        const point sfirst = sp[0];
        const point slast = sp[sn - 1];

        if (sfirst == clast) {  // case A
            c.resize(cl);
            c.resize(cl + sn);
            for (int k = 0; k < sn; ++k) {
                c[cl + k] = sp[k];
            }
            sp.resize(c.size());
            for (int k = 0; k < c.size(); ++k) {
                sp[k] = c[k];
            }
            return 1;
        }

        if (clast == slast) {  // case B
            c.resize(cl);
            for (int i0 = 0, j0 = cl - 1; i0 < j0; ++i0, --j0) {
                const point t = c[i0];
                c[i0] = c[j0];
                c[j0] = t;
            }
            if (cl <= 0) {
                return 1;
            }
            const int base = sp.size();
            sp.resize(base + cl);
            for (int k = 0; k < cl; ++k) {
                sp[base + k] = c[k];
            }
            return 1;
        }

        if (slast == cfirst) {  // case C
            const int sl = sn - 1;
            sp.resize(sl);
            if (c.size() <= 0) {
                return 1;
            }
            sp.resize(sl + c.size());
            for (int k = 0; k < c.size(); ++k) {
                sp[sl + k] = c[k];
            }
            return 1;
        }

        if (sfirst == cfirst) {  // case D
            for (int i0 = 0, j0 = cn - 1; i0 < j0; ++i0, --j0) {
                const point t = c[i0];
                c[i0] = c[j0];
                c[j0] = t;
            }
            c.resize(cl);
            c.resize(cl + sn);
            for (int k = 0; k < sn; ++k) {
                c[cl + k] = sp[k];
            }
            sp.resize(c.size());
            for (int k = 0; k < c.size(); ++k) {
                sp[k] = c[k];
            }
            return 1;
        }
    }
    return 0;
}

// 0x7893bc gameswf::final_shape::flush(gameswf::mesh_set*, gameswf::tesselator_accepter&)
//   Starts the GLU polygon and contour, and feeds each segment as points. Without m_keep_segments, a last point
//   equal to the first is dropped from the points fed. Each segment that starts and ends on the same point also
//   closes its contour (end contour, begin contour). Then the shape is ended for m_style, and the segments are
//   cleared.
//   The clearing call is pseudocode-visible as a one-argument resize. It is read as resize(0), the same pattern as
//   the destructor (0x787fc8). The binary's zeroing loop for a negative count is not reproduced.
void final_shape::flush(mesh_set* out, tesselator_accepter& tess) {
    tess.init();
    GLUtesselator* g = tess.m_tess;
    gluTessBeginPolygon(g, &tess);
    if (tess.m_direct) {
        tess.m_type = gl_prim::LINE_STRIP;  // *(int*)a3 = 3
        tess.m_vertices.resize(0);
    }
    gluTessBeginContour(g);
    for (int s = 0; s < m_segments.size(); ++s) {
        segment& seg = m_segments[s];
        const int count = seg.m_points.size();
        int use = count;
        if (!m_keep_segments && seg.m_points[0] == seg.m_points[count - 1]) {
            use = count - 1;
        }
        for (int k = 0; k < use; ++k) {
            tess.add_point(seg.m_points[k]);
        }
        if (seg.m_points[0] == seg.m_points[count - 1]) {
            gluTessEndContour(g);
            gluTessBeginContour(g);
        }
    }
    gluTessEndContour(g);
    tess.end_shape(out, m_style);
    m_segments.resize(0);
}

// 0x789cfc gameswf::final_shape::end_path()
//   If the current path has points: a path is kept as its own segment when m_keep_segments is set, or
//   merged into a stored segment; if the merge fails, it is kept as its own segment. Then the current path is
//   emptied. The binary keeps the buffer (only the count is zeroed), as resize(0) does in the DH2 container.
void final_shape::end_path() {
    if (m_cur.m_points.size() == 0) {
        return;
    }
    if (m_keep_segments) {
        m_segments.push_back<segment>(m_cur);
    } else if (!merge_segment(&m_cur)) {
        m_segments.push_back<segment>(m_cur);
    }
    m_cur.m_points.resize(0);
}

}  // namespace gameswf

// ---------------------------------------------------------------------------------------------------
// No body in this file (see the ledger notes for each row).
//
// 0x786670 gameswf::tesselate_new::curve(float, float, float, float, float, float)   [reconstructed, upstream unit]
//   Body: upstream gameswf/gameswf_tesselate.cpp (DH2, in place, static, next to add_curve_segment).
//
// 0x78a5b8 gameswf::text_glyph_record::~text_glyph_record()                         [partial]
// 0x78a8b8 gameswf::text_glyph_record::text_glyph_record(gameswf::text_glyph_record const&)   [partial]
//
// Template instances of upstream base/container.h array::~array (clear, then reserve(0)): upstream rows.
// 0x7862b8 array<gameswf::tesselate::fill_segment>::~array()
// 0x787858 array<gameswf::tesselate_new::path_part>::~array()
// 0x787e80 array<gameswf::point>::~array()
