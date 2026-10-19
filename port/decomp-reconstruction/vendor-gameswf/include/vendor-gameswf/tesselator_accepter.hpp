// gameswf::tesselator_accepter (Gameloft; not in upstream gameswf r1714).
//
// Takes the GLU tessellator's output for one filled path and turns it into points, indices and
// triangles or line strips for a gameswf::mesh_set. With the direct flag set, add_point skips GLU and
// keeps the points itself, and end_shape(mesh_set*) takes the callback_end_tris path.
//
// Layout of the DH2 object, 32-bit offsets (no vtable: the class is not polymorphic):
//   +0x00 int                    m_type       primitive mode from the begin callback (the constructor
//                                             does not set it; 0 until a begin callback arrives)
//   +0x04 array<point>           m_vertices   vertices of the current primitive (buffer +4, size +8,
//                                             capacity +0x0c, borrowed flag +0x10: 16 bytes)
//   +0x14 array<point>           m_points     output points (flag +0x20)
//   +0x24 array<unsigned short>  m_indices    output indices into m_points (triangle lists; flag +0x30)
//   +0x34 bool                   m_direct     second constructor argument
//   +0x35 bool                   m_strip      first constructor argument
//   +0x38 GLUtesselator*         m_tess
// The original object size is not recovered; it is at least 0x3c bytes.
//
// The vertex slots that GLU receives are a process-wide pool (gameswf::s_tesselator_accepter_allocator in
// the binary), not members of this class. Bodies: vendor-gameswf/src/v1-vendor-gameswf-gameswf_tesselator_accepter-d2b877-0.cpp

#ifndef VENDOR_GAMESWF_TESSELATOR_ACCEPTER_HPP
#define VENDOR_GAMESWF_TESSELATOR_ACCEPTER_HPP

#include <cstdint>

#include "base/container.h"        // gameswf::array (upstream)
#include "gameswf/gameswf.h"       // gameswf::point (upstream; compiles on its own)
#include "vendor-gameswf/glu_tessellator.hpp"

namespace gameswf {

// Declared in gameswf/gameswf_shape.h (upstream), which the source file includes; this header only forward-declares it
// so that it stays light.
struct mesh_set;

class tesselator_accepter {
public:
    // 0x7859a0 (C1). Creates the GLU tessellator and registers the callbacks.
    tesselator_accepter(bool strip, bool direct, bool winding_abs_geq_two);
    // 0x78810c (D1)
    ~tesselator_accepter();

    // 0x787578. Resets the vertex pool count and empties the three arrays. Returns this.
    tesselator_accepter* init();
    // 0x788264
    void add_point(point& p);
    // 0x7887a8. Copies the output points (and the indices unless strip) into the caller's arrays.
    void end_shape(array<point>& out_points, array<unsigned short>& out_indices);
    // 0x789298. Emits the output into a mesh set for the given style.
    void end_shape(mesh_set* out, int style);

    // GLU callbacks, registered in the constructor. Static; the polygon data (this) is the last argument.
    static void callback_begin(int type, tesselator_accepter* self);                           // 0x7871f4
    static void callback_vertex(const void* vertex, tesselator_accepter* self);                // 0x786cc8
    static void callback_combine(double* coords, void** data, float* weight, void** out_data,
                                 tesselator_accepter* self);                                   // 0x7854f8
    static void callback_error(int error, tesselator_accepter* self);                          // 0x78558c
    static void callback_end_strip(tesselator_accepter* self);                                 // 0x788360
    static void callback_end_tris(tesselator_accepter* self);                                  // 0x788cac

    // DH2: triangle_intersector::process (0x7889ec) and final_shape::flush (0x7893bc) read m_type, m_vertices,
    // m_direct and m_tess directly, as the binary does.
    friend class triangle_intersector;  // DH2
    friend class final_shape;           // DH2

private:
    int m_type;                          // +0x00
    array<point> m_vertices;             // +0x04
    array<point> m_points;               // +0x14
    array<unsigned short> m_indices;     // +0x24
    bool m_direct;                       // +0x34
    bool m_strip;                        // +0x35
    GLUtesselator* m_tess;               // +0x38
};

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_TESSELATOR_ACCEPTER_HPP
