// CNumbersAttribute::setString (0x325070), checked against the Irrlicht 1.5.1 text parser it was built on: the list is zeroed, then up to
// count numbers are read, each preceded by a skip to the next digit or '-'. An int list truncates what fast_atof_move returns.
#include "glitch-core-io/io/numbers_attribute.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

int main() {
    CNumbersAttribute floats;
    floats.isFloatList = true;
    floats.floatValues = {9.f, 9.f, 9.f};
    floats.count = 3;
    floats.setString("1.5 -2.25 7");
    CHECK(floats.floatValues[0] == 1.5f && floats.floatValues[1] == -2.25f && floats.floatValues[2] == 7.f);
    // Separators and letters between the numbers are skipped; the list is cleared first, so the missing values read 0.
    floats.setString("x=4, y");
    CHECK(floats.floatValues[0] == 4.f && floats.floatValues[1] == 0.f && floats.floatValues[2] == 0.f);
    // More numbers than the count: the rest of the text is left alone.
    floats.setString("1 2 3 4 5");
    CHECK(floats.floatValues[0] == 1.f && floats.floatValues[1] == 2.f && floats.floatValues[2] == 3.f && floats.floatValues.size() == 3);
    floats.setString("");
    CHECK(floats.floatValues[0] == 0.f && floats.floatValues[1] == 0.f && floats.floatValues[2] == 0.f);
    floats.floatValues = {5.f, 5.f, 5.f};
    floats.setString(nullptr);  // the list is cleared, nothing is read
    CHECK(floats.floatValues[0] == 0.f);

    CNumbersAttribute ints;
    ints.intValues = {1, 1, 1};
    ints.count = 3;
    ints.setString("10, -20 , 3.9");
    CHECK(ints.intValues[0] == 10 && ints.intValues[1] == -20 && ints.intValues[2] == 3);  // 3.9 truncates
    ints.setString("-7");
    CHECK(ints.intValues[0] == -7 && ints.intValues[1] == 0 && ints.intValues[2] == 0);

    // A list with no elements is left alone and the text is not read.
    CNumbersAttribute none;
    none.setString("1 2 3");
    CHECK(none.count == 0 && none.intValues.empty() && none.floatValues.empty());

    return failures != 0;
}
