// gameswf::triangle_intersector (Gameloft; not in upstream gameswf r1714).
//
// Holds one tesselator_accepter (the GLU wrapper, tesselator_accepter.hpp). The constructor allocates it
// with the strip flag set, the direct flag clear and the winding rule GLU_TESS_WINDING_ABS_GEQ_TWO.
// Layout recovered from the constructor (C1 0x785b08, C2 0x785b3c) and the destructor:
//   +0x00 tesselator_accepter*  m_acc   the only member; 4 bytes in the binary. render_handler_glitch.hpp
//                                       places this object at +0x36c of render_handler_glitch.
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack9-22190e-0.cpp

#ifndef VENDOR_GAMESWF_TRIANGLE_INTERSECTOR_HPP
#define VENDOR_GAMESWF_TRIANGLE_INTERSECTOR_HPP

#include "base/container.h"        // gameswf::array (upstream)
#include "gameswf/gameswf.h"       // gameswf::point (upstream)
#include "vendor-gameswf/tesselator_accepter.hpp"

namespace gameswf {

class triangle_intersector {
public:
    // 0x785b08 (C1) and 0x785b3c (C2): the same body. Allocates the tesselator_accepter.
    triangle_intersector();
    // 0x788204 (D2) and 0x788234 (D1): the same body. Deletes the tesselator_accepter.
    ~triangle_intersector();

    // 0x7889ec. Tesselates two triangles (three points each) into out. Only the first triangle's orientation
    // is compared with the second's: a same-side pair is fed forward, an opposite-side pair in reverse.
    void process(point* a, point* b, array<point>& out);

    tesselator_accepter* m_acc;  // +0x00
};

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_TRIANGLE_INTERSECTOR_HPP
