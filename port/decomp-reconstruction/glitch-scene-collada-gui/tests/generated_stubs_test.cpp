#include "glitch-scene-collada-gui/generated_stubs.hpp"

#include <cstdio>

// Each stub's constant or empty body is checked against the Hex-Rays pseudocode
// (see the address comments in generated_stubs.hpp).
using namespace glitch::collada::stubs;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    stub_62fee4(nullptr);
    stub_62fee8(nullptr);
    CHECK(stub_62feec(nullptr) == 1717920100u);
    stub_62fef8(nullptr);
    stub_62ff04(nullptr);
    CHECK(stub_62ff38(nullptr) == 1u);
    CHECK(stub_637b78(nullptr) == 1734697316u);
    CHECK(stub_646160(nullptr) == 1835360612u);
    stub_646188(nullptr);
    CHECK(stub_6493f8(nullptr) == 1298489700u);
    CHECK(stub_64bb84(nullptr) == 1885692260u);
    CHECK(stub_65cd1c(nullptr) == 1852137828u);
    CHECK(stub_6669f8(nullptr) == 1936023908u);
    CHECK(stub_667774(nullptr) == 0u);
    stub_669b6c(nullptr);
    CHECK(stub_66b938(nullptr) == 0u);
    CHECK(stub_66d078(nullptr) == 0u);
    CHECK(stub_66e770(nullptr) == 0u);
    CHECK(stub_66f6b8(nullptr) == 1u);
    CHECK(stub_66f6c0(nullptr) == 1u);
    CHECK(stub_6e5168(nullptr) == 1667588452u);
    CHECK(stub_6e5a2c(nullptr) == 1936618083u);
    std::printf("%s\n", failures ? "generated_stubs: FAILED" : "generated_stubs: ok");
    return failures != 0;
}
