// Round trips for the geometry and colour accessors of CNumbersAttribute.
#include "glitch-core-io/io/numbers_attribute.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;
namespace core = glitch::core;

int main() {
    // float list of 6: line3d / aabbox3d read components 0..5 and zero-fill nothing here
    CNumbersAttribute box;
    box.isFloatList = true;
    box.floatValues = {0.f, 0.f, 0.f, 0.f, 0.f, 0.f};
    box.count = 6;
    core::aabbox3d<float> b{{1.f, 2.f, 3.f}, {4.f, 5.f, 6.f}};
    box.setBoundingBox(b);
    core::aabbox3d<float> r = box.getBBox();
    CHECK(r.MinEdge.X == 1.f && r.MinEdge.Z == 3.f && r.MaxEdge.Y == 5.f && r.MaxEdge.Z == 6.f);

    // int list: setters truncate float values
    CNumbersAttribute ints;
    ints.intValues = {0, 0, 0, 0};
    ints.count = 4;
    ints.setVector4d(core::vector4d<float>{1.9f, -2.9f, 3.5f, 4.f});
    CHECK(ints.intValues[0] == 1 && ints.intValues[1] == -2 && ints.intValues[2] == 3 && ints.intValues[3] == 4);
    core::vector4d<float> v4 = ints.getVector4d();
    CHECK(v4.X == 1.f && v4.Y == -2.f && v4.W == 4.f);

    // short list: missing components read as 0, writes stop at count
    CNumbersAttribute two;
    two.intValues = {7, 8};
    two.count = 2;
    core::vector4d<float> v2 = two.getVector4d();
    CHECK(v2.X == 7.f && v2.Y == 8.f && v2.Z == 0.f && v2.W == 0.f);
    two.setVector4d(core::vector4d<float>{9.f, 10.f, 11.f, 12.f});
    CHECK(two.intValues.size() == 2 && two.intValues[0] == 9 && two.intValues[1] == 10);

    // plane and lines
    CNumbersAttribute planeAttr;
    planeAttr.isFloatList = true;
    planeAttr.floatValues = {0.f, 0.f, 0.f, 0.f};
    planeAttr.count = 4;
    planeAttr.setPlane(core::plane3d<float>{{0.f, 1.f, 0.f}, -2.5f});
    core::plane3d<float> p = planeAttr.getPlane();
    CHECK(p.Normal.Y == 1.f && p.D == -2.5f);

    CNumbersAttribute line;
    line.intValues = {0, 0, 0, 0};
    line.count = 4;
    line.setLine2d(core::line2d<std::int32_t>{{1, 2}, {3, 4}});
    core::line2d<float> l2 = line.getLine2d();
    CHECK(l2.start.X == 1.f && l2.start.Y == 2.f && l2.end.X == 3.f && l2.end.Y == 4.f);

    CNumbersAttribute line3;
    line3.isFloatList = true;
    line3.floatValues.assign(9, 0.f);
    line3.count = 9;
    line3.setTriangle3d(core::triangle3d<float>{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}});
    core::triangle3d<float> t = line3.getTriangle();
    CHECK(t.A.X == 1.f && t.B.Y == 1.f && t.C.Z == 1.f);
    core::line3d<float> l3 = line3.getLine3d();
    CHECK(l3.start.X == 1.f && l3.start.Y == 0.f && l3.end.X == 0.f && l3.end.Y == 1.f && l3.end.Z == 0.f);

    // colour: 4 bytes packed in order, float list divides by 255
    CNumbersAttribute colorInt;
    colorInt.intValues = {0, 0, 0, 0};
    colorInt.count = 4;
    colorInt.setColor(glitch::video::SColor{0x80403020u});
    CHECK(colorInt.intValues[0] == 0x20 && colorInt.intValues[1] == 0x30 &&
          colorInt.intValues[2] == 0x40 && colorInt.intValues[3] == 0x80);
    CHECK(colorInt.getColor().color == 0x80403020u);

    CNumbersAttribute colorF;
    colorF.isFloatList = true;
    colorF.floatValues = {0.f, 0.f, 0.f, 0.f};
    colorF.count = 4;
    colorF.setColor(glitch::video::SColor{0xff00ff00u});
    CHECK(colorF.floatValues[1] == 1.f && colorF.floatValues[0] == 0.f);
    CHECK(colorF.getColor().color == 0xff00ff00u);

    CNumbersAttribute colorSf;
    colorSf.intValues = {0, 0, 0, 0};
    colorSf.count = 4;
    colorSf.setColor(glitch::video::SColorf{1.f, 0.5f, 0.f, 1.f});
    CHECK(colorSf.intValues[0] == 255 && colorSf.intValues[1] == 127 && colorSf.intValues[3] == 255);

    // matrix: row-major, truncated into int lists
    CNumbersAttribute mat;
    mat.intValues.assign(16, 0);
    mat.count = 16;
    core::CMatrix4<float> m{};
    for (int i = 0; i < 16; ++i) m.M[i] = static_cast<float>(i) + 0.5f;
    mat.setMatrix(m);
    CHECK(mat.intValues[0] == 0 && mat.intValues[5] == 5 && mat.intValues[15] == 15);

    // isIdentity: a set flag answers at once; otherwise diagonals are 1 +- 1e-6 and off-diagonals
    // are within 1e-6 in magnitude. A match caches the flag.
    auto makeMatrix = [](float diag, float off) {
        core::CMatrix4<float> r{};
        for (int i = 0; i < 4; ++i)
            for (int j = 0; j < 4; ++j) r.M[i * 4 + j] = (i == j) ? diag : off;
        return r;
    };
    core::CMatrix4<float> identity(core::CMatrix4<float>::EM4CONST_IDENTITY);
    CHECK(identity.isIdentity());
    core::CMatrix4<float> flagged{};
    flagged.flag = true;
    CHECK(flagged.isIdentity());
    core::CMatrix4<float> zero{};
    CHECK(!zero.isIdentity() && !zero.flag);
    core::CMatrix4<float> nearIdentity = makeMatrix(1.0f, 5e-7f);
    CHECK(nearIdentity.isIdentity() && nearIdentity.flag);
    CHECK(!makeMatrix(1.0f, 2e-6f).isIdentity());
    CHECK(!makeMatrix(1.0f, -2e-6f).isIdentity());
    CHECK(!makeMatrix(1.0f, 0.5f).isIdentity());
    CHECK(!makeMatrix(1.0f - 2e-6f, 0.0f).isIdentity());
    CHECK(!makeMatrix(1.0f + 2e-6f, 0.0f).isIdentity());
    core::CMatrix4<float> scaled = makeMatrix(2.0f, 0.0f);
    CHECK(!scaled.isIdentity() && !scaled.flag);
    const core::CMatrix4<float> constIdentity = makeMatrix(1.0f, 0.0f);
    CHECK(constIdentity.isIdentity() && constIdentity.flag);

    if (failures == 0) std::printf("numbers_geometry_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
