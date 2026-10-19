#include "core-platform/util.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CHECK(!util_number_is_power_2(0));
    CHECK(util_number_is_power_2(1));
    CHECK(util_number_is_power_2(2));
    CHECK(util_number_is_power_2(1u << 31));
    CHECK(!util_number_is_power_2(3));
    CHECK(!util_number_is_power_2(96));

    const char* hay = "a/b/a/b";
    CHECK(strrstr(hay, "a/") == hay + 4);
    CHECK(strrstr(hay, "") == hay);
    CHECK(strrstr(hay, "zz") == nullptr);

    std::printf("%s\n", failures ? "util: FAILED" : "util: ok");
    return failures != 0;
}
