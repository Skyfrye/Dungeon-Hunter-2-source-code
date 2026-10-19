// gameswf::canvas, the path methods the DH2 glyph provider calls (upstream gameswf_canvas.h:40-42).
//
// Gameloft's build calls these three members on the canvas that a glyph provider holds (+0x20). The
// upstream class derives from shape_character_def and its header does not compile in this tree
// (gameswf_impl.h names gameswf::bitmap_info in the wrong namespace), so only the members used here are
// declared. The class derives from the DH2 ref_counted, as the binary releases it with drop_ref at offset 0.
//
// Bodies: upstream gameswf_canvas.cpp, not in the tree's compile set. Declarations only.

#ifndef VENDOR_GAMESWF_CANVAS_HPP
#define VENDOR_GAMESWF_CANVAS_HPP

#include "vendor-gameswf/ref_counted.hpp"

#ifndef GAMESWF_CANVAS_H  // DH2: when upstream gameswf_canvas.h is already included (via gameswf_sprite.h) its canvas is the class
namespace gameswf {

struct canvas : public ref_counted {
    // gameswf_canvas.h:40. Binary: gameswf::canvas::move_to(float, float).
    void move_to(float x, float y);
    // gameswf_canvas.h:41.
    void line_to(float x, float y);
    // gameswf_canvas.h:42. Quadratic segment: control (cx, cy), anchor (ax, ay).
    void curve_to(float cx, float cy, float ax, float ay);
};

}  // namespace gameswf
#endif  // GAMESWF_CANVAS_H

#endif  // VENDOR_GAMESWF_CANVAS_HPP
