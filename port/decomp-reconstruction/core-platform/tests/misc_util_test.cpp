#include "core-platform/misc_util.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // A block whose checksum is appended in host order sums to zero.
    unsigned char block[8] = {0x45, 0x00, 0x00, 0x1c, 0x12, 0x34, 0, 0};
    const unsigned short sum = in_cksum(block, 6);
    std::memcpy(block + 6, &sum, sizeof sum);
    CHECK(in_cksum(block, 8) == 0);

    // One odd byte is added unshifted: ~0x12 in 16 bits.
    const unsigned char odd[1] = {0x12};
    CHECK(in_cksum(odd, 1) == 0xFFED);
    CHECK(in_cksum(odd, 0) == 0xFFFF);

    Point3D<float> c{255.f, 10.f, 0.f};
    CHECK(Color255To01(c) == 0.0f);  // returns the new Z
    CHECK(c.X == 1.0f && c.Y == 10.f / 255.f && c.Z == 0.0f);

    int* p = new int(5);
    SafeDelete(p);
    CHECK(p == nullptr);
    SafeDelete(p);  // null: no-op

    std::printf("%s\n", failures ? "misc_util: FAILED" : "misc_util: ok");
    return failures != 0;
}
