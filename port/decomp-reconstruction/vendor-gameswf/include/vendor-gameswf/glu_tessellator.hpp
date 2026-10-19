// GLU tessellator entry points that the DH2 binary calls (SGI GLU, linked into libDungeonHunter2.so).
//
// The binary calls them by C++ name (_Z10gluNewTessv, _Z15gluTessPropertyP13GLUtesselatorid, ...), so
// these declarations have C++ linkage. The tessellator's own code is in the binary and is not in this
// tree; a host build needs a GLU implementation or the test stand-ins.
//
// Constants are the SGI glu.h values. The *_DATA callbacks receive the polygon data pointer as their
// last argument, which is how the binary's callbacks take their tesselator_accepter.

#ifndef VENDOR_GAMESWF_GLU_TESSELLATOR_HPP
#define VENDOR_GAMESWF_GLU_TESSELLATOR_HPP

struct GLUtesselator;

GLUtesselator* gluNewTess();                                                // _Z10gluNewTessv
void gluDeleteTess(GLUtesselator* tess);                                    // _Z13gluDeleteTessP13GLUtesselator
void gluTessProperty(GLUtesselator* tess, int which, double value);         // _Z15gluTessPropertyP13GLUtesselatorid
void gluTessCallback(GLUtesselator* tess, int which, void (*callback)());   // _Z15gluTessCallbackP13GLUtesselatoriPFvvE
void gluTessEndPolygon(GLUtesselator* tess);                                // _Z17gluTessEndPolygonP13GLUtesselator
void gluTessVertex(GLUtesselator* tess, double* location, void* vertex_data);  // _Z13gluTessVertexP13GLUtesselatorPdPv
// DH2: called by triangle_intersector::process (0x7889ec) and final_shape::flush (0x7893bc). C++ linkage as the others:
// the binary calls _Z19gluTessBeginPolygonP13GLUtesselatorPv, _Z19gluTessBeginContourP13GLUtesselator and
// _Z17gluTessEndContourP13GLUtesselator, which these declarations mangle to.
void gluTessBeginPolygon(GLUtesselator* tess, void* polygon_data);  // DH2
void gluTessBeginContour(GLUtesselator* tess);                       // DH2
void gluTessEndContour(GLUtesselator* tess);                         // DH2

namespace glu {

// GLU_TESS_* property and callback ids.
constexpr int TESS_WINDING_ODD = 100130;
constexpr int TESS_WINDING_ABS_GEQ_TWO = 100134;
constexpr int TESS_WINDING_RULE = 100140;
constexpr int TESS_BOUNDARY_ONLY = 100141;
constexpr int TESS_BEGIN_DATA = 100106;
constexpr int TESS_VERTEX_DATA = 100107;
constexpr int TESS_END_DATA = 100108;
constexpr int TESS_ERROR_DATA = 100109;
constexpr int TESS_COMBINE_DATA = 100111;

}  // namespace glu

// GL primitive modes, as the begin callback receives them.
namespace gl_prim {

constexpr int POINTS = 0x0000;
constexpr int LINES = 0x0001;
constexpr int LINE_LOOP = 0x0002;
constexpr int LINE_STRIP = 0x0003;
constexpr int TRIANGLES = 0x0004;
constexpr int TRIANGLE_STRIP = 0x0005;
constexpr int TRIANGLE_FAN = 0x0006;

}  // namespace gl_prim

#endif  // VENDOR_GAMESWF_GLU_TESSELLATOR_HPP
