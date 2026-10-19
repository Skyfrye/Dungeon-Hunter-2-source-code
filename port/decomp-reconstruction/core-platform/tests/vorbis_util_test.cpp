#include "core-platform/vorbis_util.hpp"

#include <cmath>
#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CHECK(bit_reverse(0x00000001u) == 0x80000000u);
    CHECK(bit_reverse(0x80000000u) == 0x00000001u);
    CHECK(bit_reverse(0x12345678u) == 0x1E6A2C48u);
    CHECK(bit_reverse(bit_reverse(0xDEADBEEFu)) == 0xDEADBEEFu);

    CHECK(ilog(0) == 0);
    CHECK(ilog(1) == 1);
    CHECK(ilog(2) == 2);
    CHECK(ilog(7) == 3);
    CHECK(ilog(8) == 4);
    CHECK(ilog(255) == 8);
    CHECK(ilog(256) == 9);
    CHECK(ilog(0x4000) == 15);
    CHECK(ilog(0x80000000u) == 0);  // top bit set: no bit count
    CHECK(ilog(0x7FFFFFFFu) == 31);

    unsigned int a = 3, b = 9, c = 9;
    CHECK(uint32_compare(&a, &b) == 0xFFFFFFFFu);
    CHECK(uint32_compare(&b, &a) == 1u);
    CHECK(uint32_compare(&b, &c) == 0u);
    unsigned short p = 4, q = 2;
    CHECK(point_compare(&p, &q) == 1u);
    CHECK(point_compare(&q, &p) == 0xFFFFFFFFu);

    // DCT-IV (direct form): X[k] = sum_j x[j] * cos(pi/(4n) * (2j+1)(2k+1)).
    {
        const int n = 4;
        const double pi = 3.14159265358979323846;
        float data[4] = {1.0f, 2.0f, -1.0f, 0.5f};
        const float in[4] = {1.0f, 2.0f, -1.0f, 0.5f};
        dct_iv_slow(data, n);
        for (int k = 0; k < n; ++k) {
            double expect = 0.0;
            for (int j = 0; j < n; ++j) {
                expect += in[j] * std::cos(pi / (4.0 * n) * (2 * j + 1) * (2 * k + 1));
            }
            CHECK(std::fabs(data[k] - expect) < 1e-4);
        }
    }

    std::printf("%s\n", failures ? "vorbis_util: FAILED" : "vorbis_util: ok");
    return failures != 0;
}
