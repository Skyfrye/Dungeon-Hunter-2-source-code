// addStringAs* and addString of glitch::io::CAttributes: the attribute is appended to the
// current group with its default value, then the value is set from the wide string.
#include <cstdio>

#include "glitch-core-io/io/attributes.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch;

int main() {
    io::CAttributes attrs(nullptr);

    attrs.addStringAsInt("count", L"42", true);
    CHECK(attrs.getAttributeCount() == 1);
    CHECK(attrs.getInt("count") == 42);
    CHECK(attrs.getAttributeP("count")->flag);

    attrs.addStringAsBool("on", L"true", false);
    CHECK(attrs.getBool("on"));
    CHECK(!attrs.getAttributeP("on")->flag);

    // A string attribute keeps the text it was created with.
    attrs.addString("text", L"hello", false);
    CHECK(attrs.getString("text") == "hello");

    // The default value is built first, then setString(wchar_t) runs (vtable +0x94): CNumbersAttribute::setString
    // resets every value to 0 (0x325070) before it parses the text, so an empty string leaves all zeros.
    attrs.addStringAsRect("rect", L"", false);
    CHECK(attrs.getRect("rect").LowerRightCorner.X == 0 && attrs.getRect("rect").LowerRightCorner.Y == 0);
    attrs.addStringAsMatrix("m", L"", false);
    CHECK(attrs.getMatrix("m").M[0] == 0.f && attrs.getMatrix("m").M[15] == 0.f);
    attrs.addStringAsLine2d("seg", L"", false);
    CHECK(attrs.getLine2d("seg").end.X == 0.f && attrs.getLine2d("seg").start.X == 0.f);
    attrs.addStringAsBox3d("box", L"", false);
    CHECK(attrs.getBox3d("box").MinEdge.X == 0.f && attrs.getBox3d("box").MaxEdge.Z == 0.f);

    // A non-empty string overwrites the values in order.
    attrs.addStringAsLine2d("seg2", L"1 2 3 4", false);
    CHECK(attrs.getLine2d("seg2").start.X == 1.f && attrs.getLine2d("seg2").end.Y == 4.f);
    attrs.addStringAsMatrix("m2", L"1 0 0 0 0 1 0 0 0 0 1 0 5 6 7 1", false);
    CHECK(attrs.getMatrix("m2").M[0] == 1.f && attrs.getMatrix("m2").M[12] == 5.f && attrs.getMatrix("m2").M[15] == 1.f);

    // Each add appends one attribute to the current group, in call order.
    CHECK(attrs.getAttributeCount() == 9);
    CHECK(attrs.getAttributeName(0) == std::string("count"));
    CHECK(attrs.getAttributeName(6) == std::string("box"));

    std::printf("%s\n", failures ? "attributes_string_as: FAILED" : "attributes_string_as: ok");
    return failures != 0;
}
