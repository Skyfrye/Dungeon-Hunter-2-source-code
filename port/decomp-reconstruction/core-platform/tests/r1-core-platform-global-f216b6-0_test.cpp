// Checks for the <global> batch r1-core-platform-global-f216b6-0: the Point3D vector
// stream operators (0x3133e0 writer, 0x313498 reader) and the stream output of the
// vector and colour types (0x30fdd0, 0x30ff48, 0x310178).
#include <cstdio>
#include <cstdlib>
#include <sstream>
#include <vector>

#include "core-platform/stream_ops.hpp"
#include "core-platform/w7_global_00.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// A colour from its four bytes (component 0 is the low byte, as in the original).
static glitch::video::SColor MakeColor(unsigned char b0, unsigned char b1, unsigned char b2, unsigned char b3) {
    glitch::video::SColor c;
    c.setComponent(0, b0);
    c.setComponent(1, b1);
    c.setComponent(2, b2);
    c.setComponent(3, b3);
    return c;
}

int main() {
    // 0x313498: "X,Y,Z" elements separated by ';' (the separator read is a ';' or ' ' test).
    {
        std::istringstream is("1,2,3;4,5,6");
        std::vector<Point3D<float>> pts;
        is >> pts;
        CHECK(pts.size() == 2);
        CHECK(pts.size() == 2 && pts[0].X == 1.f && pts[0].Y == 2.f && pts[0].Z == 3.f);
        CHECK(pts.size() == 2 && pts[1].X == 4.f && pts[1].Y == 5.f && pts[1].Z == 6.f);
    }
    // A single element with no trailing separator: the separator read hits end of input.
    {
        std::istringstream is("7,8,9");
        std::vector<Point3D<float>> pts;
        is >> pts;
        CHECK(pts.size() == 1);
        CHECK(pts.size() == 1 && pts[0].X == 7.f && pts[0].Y == 8.f && pts[0].Z == 9.f);
    }
    // The element's inner separators are not the loop separator. A ';' inside an element
    // must not make the loop continue: "1;2;3" is one point (reference behaviour).
    {
        std::istringstream is("1;2;3");
        std::vector<Point3D<float>> pts;
        is >> pts;
        CHECK(pts.size() == 1);
        CHECK(pts.size() == 1 && pts[0].X == 1.f && pts[0].Y == 2.f && pts[0].Z == 3.f);
    }
    // Z fails to parse at end of input: one point, and the final separator read does not continue.
    {
        std::istringstream is("1;2;x");
        std::vector<Point3D<float>> pts;
        is >> pts;
        CHECK(pts.size() == 1);
        CHECK(pts.size() == 1 && pts[0].X == 1.f && pts[0].Y == 2.f && pts[0].Z == 0.f);
    }
    // Inner ';' separators in the first element, then a real ';' element separator: two points.
    {
        std::istringstream is("1,2,3;4;5;6");
        std::vector<Point3D<float>> pts;
        is >> pts;
        CHECK(pts.size() == 2);
        CHECK(pts.size() == 2 && pts[1].X == 4.f && pts[1].Y == 5.f && pts[1].Z == 6.f);
    }
    // Writer and reader are inverses for a three-element list.
    {
        std::vector<Point3D<float>> in{{0.5f, 1.f, -2.f}, {3.f, 4.f, 5.f}, {6.f, 7.f, 8.f}};
        std::ostringstream os;
        os << in;
        CHECK(os.str() == "0.5,1,-2;3,4,5;6,7,8");
        std::istringstream is(os.str());
        std::vector<Point3D<float>> out;
        is >> out;
        CHECK(out.size() == in.size());
        bool same = out.size() == in.size();
        for (std::size_t i = 0; same && i < in.size(); ++i) {
            same = out[i].X == in[i].X && out[i].Y == in[i].Y && out[i].Z == in[i].Z;
        }
        CHECK(same);
    }
    // 0x3133e0 on an empty vector writes nothing.
    {
        std::ostringstream os;
        std::vector<Point3D<float>> none;
        os << none;
        CHECK(os.str().empty());
    }
    // 0x310178: R, G and B are raw characters with ',' between them.
    {
        std::ostringstream os;
        os << MakeColor('x', 'y', 'z', 0);
        CHECK(os.str() == "x,y,z");
    }
    // 0x30ff48 and 0x30fdd0 separators.
    {
        std::ostringstream os;
        os << glitch::core::vector3d<int>{-1, 0, 2};
        CHECK(os.str() == "-1,0,2");
    }

    std::printf("%s\n", failures ? "r1-core-platform-global-f216b6-0: FAILED" : "r1-core-platform-global-f216b6-0: ok");
    return failures != 0;
}
