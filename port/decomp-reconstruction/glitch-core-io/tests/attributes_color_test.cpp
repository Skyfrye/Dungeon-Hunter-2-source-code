// Colour and type-name paths of CAttributes: addColor, the by-name colour setters and
// getAttributeTypeString.
#include "glitch-core-io/io/attributes.hpp"

#include <cmath>
#include <cstdio>
#include <cwchar>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using glitch::io::CAttributes;
using glitch::video::SColor;
using glitch::video::SColorf;

int main() {
    CAttributes attrs(nullptr);

    // addColor stores byte / 255 per channel, low byte first.
    attrs.addColor("c", SColor{0x80402010u}, false);
    CHECK(attrs.getAttributeCount() == 1);
    SColorf f = attrs.getColorf("c");
    CHECK(std::fabs(f.r - 16.f / 255.f) < 1e-6f);
    CHECK(std::fabs(f.g - 32.f / 255.f) < 1e-6f);
    CHECK(std::fabs(f.b - 64.f / 255.f) < 1e-6f);
    CHECK(std::fabs(f.a - 128.f / 255.f) < 1e-6f);

    // by-name setter on an existing attribute updates it (float list: byte / 255)
    attrs.setAttribute("c", SColor{0xff000000u});
    CHECK(attrs.getAttributeCount() == 1);
    CHECK(attrs.getColorf("c").a == 1.f && attrs.getColorf("c").r == 0.f);

    // by-name setter on a missing attribute adds one
    attrs.setAttribute("d", SColorf{1.f, 0.f, 0.f, 0.5f});
    CHECK(attrs.getAttributeCount() == 2);
    CHECK(std::fabs(attrs.getColorf("d").a - 0.5f) < 1e-6f);

    // addStringAsColor ignores the string and stores a zero colour
    attrs.addStringAsColor("s", L"ignored", true);
    CHECK(attrs.getAttributeCount() == 3);
    CHECK(attrs.getColorf("s").r == 0.f && attrs.getColorf("s").a == 0.f);

    // type names: out of range and missing names give "unknown"
    CHECK(std::wcscmp(attrs.getAttributeTypeString(9), L"unknown") == 0);
    CHECK(std::wcscmp(attrs.getAttributeTypeString(-1), L"unknown") == 0);
    CHECK(std::wcscmp(attrs.getAttributeTypeString("missing"), L"unknown") == 0);

    // by-name setter on a missing name adds a float-list colour; the packed read gives the word back
    CAttributes ints(nullptr);
    ints.setAttribute("x", SColor{0x80402010u});
    CHECK(ints.getAttributeCount() == 1);
    CHECK(ints.getColor("x").color == 0x80402010u);

    if (failures == 0) std::printf("attributes_color_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
