// gameswf::final_shape (Gameloft; not in upstream gameswf r1714).
//
// Collects one shape's paths as flattened point segments, then feeds them to a tesselator_accepter in flush.
// Layout recovered from add_curve, end_path, merge_segment, flush and the destructor. 32-bit offsets:
//   +0x00 bool            m_keep_segments  nonzero: end_path keeps each path as its own segment, and flush
//                                          uses every point of a segment. Zero: end_path tries merge_segment
//                                          first, and flush drops a last point that equals the first.
//   +0x04 int             m_style          style passed to tesselator_accepter::end_shape by flush
//   +0x08 float           m_tolerance      flatness tolerance of add_curve
//   +0x0c array<segment>  m_segments       finished segments
//   +0x1c segment         m_cur            the path being built: one array<point> (buffer +0x1c, size +0x20, capacity
//                                          +0x24, and the array's own borrowed flag at +0x28, zero from its
//                                          constructor).
//   +0x2c point           m_last           the last point add_curve stored (the pen position)
// The constructor is not in this batch, and the object size past +0x34 is not recovered.
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack9-22190e-0.cpp

#ifndef VENDOR_GAMESWF_FINAL_SHAPE_HPP
#define VENDOR_GAMESWF_FINAL_SHAPE_HPP

#include "base/container.h"        // gameswf::array (upstream)
#include "gameswf/gameswf.h"       // gameswf::point (upstream)
#include "vendor-gameswf/tesselator_accepter.hpp"

namespace gameswf {

class final_shape {
public:
    // A path's points: one array<point>, 16 bytes. The byte the binary keeps at +0x0c is the array's own
    // borrowed flag; push_back<segment> stores a copy with the flag cleared (array copies do not carry it over).
    struct segment {
        segment() : m_points() {}
        array<point> m_points;  // +0x00 (buffer +0, size +4, capacity +8, borrowed flag +0x0c)
    };

    // 0x787fc8 (D1). Clears the current path and the segments, freeing their buffers.
    ~final_shape();

    // 0x786fac. Adds a quadratic curve from a through control c to end b. The curve is split while the flatness
    // test is at or above m_tolerance; each leaf's end point is appended to m_cur, then b is appended.
    void add_curve(float ax, float ay, float cx, float cy, float bx, float by);

    // 0x789cfc. Closes the current path (if it has points): keeps it as a segment, or merges it into a stored one
    // when m_keep_segments is zero and merge_segment succeeds. Then empties m_cur.
    void end_path();

    // 0x78956c. Tries to join cur onto one stored segment at a shared end point (see the body for the four
    // cases). Returns 1 when a join happened, 0 otherwise. cur is not a stored segment.
    int merge_segment(segment* cur);

    // 0x7893bc. Feeds every stored segment into the tesselator as a contour, ends the shape for m_style,
    // then empties m_segments.
    void flush(mesh_set* out, tesselator_accepter& tess);

    bool m_keep_segments;                // +0x00
    int m_style;                         // +0x04
    float m_tolerance;                   // +0x08
    array<segment> m_segments;           // +0x0c
    segment m_cur;                       // +0x1c
    point m_last;                        // +0x2c
};

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_FINAL_SHAPE_HPP
