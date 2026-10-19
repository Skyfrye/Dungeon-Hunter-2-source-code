// getStringW of the bool and int scalar attributes, and the colour and matrix type names.
#include "glitch-core-io/io/scalar_attributes.hpp"
#include "glitch-core-io/io/typed_attributes.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

int main() {
    CBoolAttribute yes("yes", true, false);
    CBoolAttribute no("no", false, false);
    CHECK(yes.getStringW() == L"true");
    CHECK(no.getStringW() == L"false");

    CIntAttribute neg("neg", -42, false);
    CIntAttribute zero("zero", 0, false);
    CHECK(neg.getStringW() == L"-42");
    CHECK(zero.getStringW() == L"0");

    CColorAttribute color("c", glitch::video::SColorf{0.f, 0.f, 0.f, 0.f}, false);
    CHECK(std::wstring(color.getTypeString()) == L"color");
    CMatrixAttribute matrix("m", glitch::core::CMatrix4<float>{}, false);
    CHECK(std::wstring(matrix.getTypeString()) == L"matrix");

    if (failures == 0) std::printf("scalar_string_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
