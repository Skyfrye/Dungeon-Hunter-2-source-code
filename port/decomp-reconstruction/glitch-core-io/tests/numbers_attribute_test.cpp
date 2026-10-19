#include "glitch-core-io/io/numbers_attribute.hpp"

#include <cstdio>
#include <cwchar>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

int main() {
    CNumbersAttribute ints;
    ints.intValues = {0, 0, 0};
    ints.count = 3;
    CHECK(ints.getType() == 0x18 && !ints.isFloat());
    CHECK(ints.getBool() == false);
    ints.setInt(7);
    CHECK(ints.getInt() == 7 && ints.getFloat() == 7.f);
    CHECK(ints.getBool());
    ints.setFloat(3.9f);
    CHECK(ints.getInt() == 3);   // truncation for int lists
    ints.setBool(true);
    CHECK(ints.getInt() == 1);

    CNumbersAttribute floats;
    floats.isFloatList = true;
    floats.floatValues = {0.f, 0.f};
    floats.count = 2;
    CHECK(floats.getType() == 0x17 && floats.isFloat());
    CHECK(std::wcscmp(floats.getTypeString(), L"floatlist") == 0);
    floats.setInt(4);
    CHECK(floats.getFloat() == 4.f && floats.getInt() == 4);
    floats.setFloat(-2.5f);
    CHECK(floats.getFloat() == -2.5f);
    CHECK(floats.getBool());

    CNumbersAttribute empty;
    CHECK(empty.getInt() == 0 && empty.getFloat() == 0.f && !empty.getBool());
    CHECK(CNumbersAttribute::isNumberList());

    std::printf("%s\n", failures ? "numbers_attribute: FAILED" : "numbers_attribute: ok");
    return failures != 0;
}
