#include "core-platform/obj_str.hpp"

#include <cstdio>
#include <cstring>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    char buf[64];
    int i = -42;
    ObjToStr(buf, i);
    CHECK(std::strcmp(buf, "-42") == 0);
    glitch::core::vector3d<float> v{1.f, 2.5f, -3.f};
    ObjToStr(buf, v);
    CHECK(std::strcmp(buf, "1.000000,2.500000,-3.000000") == 0);
    Point2D<int> p2{3, -4};
    ObjToStr(buf, p2);
    CHECK(std::strcmp(buf, "3,-4") == 0);
    bool b = true;
    ObjToStr(buf, b);
    CHECK(std::strcmp(buf, "1") == 0);
    float f = 0.5f;
    ObjToStr(buf, f);
    CHECK(std::strcmp(buf, "0.500000") == 0);
    std::vector<Point3D<float>> pts;
    std::strcpy(buf, "keep");
    ObjToStr(buf, pts);
    CHECK(std::strcmp(buf, "keep") == 0);  // empty body: buffer untouched

    int parsed = 0;
    StrToObj("17", parsed);
    CHECK(parsed == 17);
    bool flag = false;
    StrToObj("0", flag);
    CHECK(!flag);
    StrToObj("5", flag);
    CHECK(flag);
    float fv = 0.f;
    StrToObj("2.25", fv);
    CHECK(fv == 2.25f);
    Point3D<float> p3{1.f, -2.f, 0.5f};
    ObjToStr(buf, p3);
    CHECK(std::strcmp(buf, "1.000000,-2.000000,0.500000") == 0);
    glitch::core::dimension2d<float> dim{640.f, 960.f};
    ObjToStr(buf, dim);
    CHECK(std::strcmp(buf, "640.000000,960.000000") == 0);

    Point2D<int> q{0, 0};
    StrToObj("12,-7", q);
    CHECK(q.X == 12 && q.Y == -7);
    StrToObj("5", q);  // missing second token leaves Y alone
    CHECK(q.X == 5 && q.Y == -7);
    StrToObj("", q);  // no tokens: nothing is stored
    CHECK(q.X == 5 && q.Y == -7);

    Point3D<int> pi{0, 0, 0};
    StrToObj("2.9,3,-4", pi);  // first component truncates toward zero
    CHECK(pi.X == 2 && pi.Y == 3 && pi.Z == -4);

    Point3D<float> pf{0, 0, 0};
    StrToObj("1.5,,2.25", pf);  // strtok skips the empty middle token
    CHECK(pf.X == 1.5f && pf.Y == 2.25f && pf.Z == 0.f);

    glitch::core::vector3d<float> vf{0, 0, 0};
    StrToObj("0.25,0.5,0.75", vf);
    CHECK(vf.X == 0.25f && vf.Y == 0.5f && vf.Z == 0.75f);

    glitch::core::dimension2d<int> di{0, 0};
    StrToObj("800,600", di);
    CHECK(di.Width == 800 && di.Height == 600);

    glitch::core::dimension2d<float> df{0, 0};
    StrToObj("1.25,2", df);
    CHECK(df.Width == 1.25f && df.Height == 2.f);

    std::printf("%s\n", failures ? "obj_str: FAILED" : "obj_str: ok");
    return failures != 0;
}
