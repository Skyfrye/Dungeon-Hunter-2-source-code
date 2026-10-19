// Batch r1n-net-transport-pack3-8001d6-0: NetStructInterpolation<float>::AddValue (0x3a3e64).
// The ring has 20 slots, the window is 40, and words 43-45 hold the oldest index and its two marks.
// The expected values follow the Hex-Rays body and the constructor (0x3a681c) that zeroes words 43-45.
#include "net-transport/net_struct_interpolation.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

class Probe : public NetStructInterpolation<float> {
public:
    unsigned head() const { return head_; }
    unsigned oldest() const { return oldest_; }
    unsigned markA() const { return mark_a_; }
    unsigned markB() const { return mark_b_; }
    unsigned count() const { return count_; }
    unsigned window() const { return window_; }
};

}  // namespace

int main() {
    Probe p;

    // Initial state: what the constructor leaves (words 43-45 zero, window 40, head 0).
    CHECK(p.head() == 0);
    CHECK(p.oldest() == 0);
    CHECK(p.markA() == 0 && p.markB() == 0);
    CHECK(p.window() == 40);
    CHECK(p.count() == 0);

    // The first 19 samples do not wrap: the head moves and the oldest index stays at 0.
    for (unsigned n = 1; n <= 19; ++n) {
        CHECK(p.AddValue(1.0f, n) == 20);
        CHECK(p.head() == n % 20);
        CHECK(p.oldest() == 0);
    }

    // The 20th sample fills the ring: the head wraps to 0 and the oldest index moves to 1 (both marks too).
    CHECK(p.AddValue(1.0f, 20) == 20);
    CHECK(p.head() == 0);
    CHECK(p.oldest() == 1);
    CHECK(p.markA() == 1 && p.markB() == 1);

    // From then on the oldest index is (n - 19) mod 20 after n samples, and the head is n mod 20.
    for (unsigned n = 21; n <= 80; ++n) {
        p.AddValue(1.0f, n);
        CHECK(p.head() == n % 20);
        CHECK(p.oldest() == (n - 19) % 20);
        CHECK(p.markA() == p.oldest() && p.markB() == p.oldest());
    }

    // The count grows to the window (40) and then stays there: each sample evicts one share.
    Probe q;
    for (unsigned n = 1; n <= 40; ++n) {
        q.AddValue(1.0f, n);
        CHECK(q.count() == n);
    }
    for (unsigned n = 41; n <= 50; ++n) {
        q.AddValue(1.0f, n);
        CHECK(q.count() == 40);
    }

    if (failures == 0) std::printf("r1n-net-transport-pack3-8001d6-0_test: OK\n");
    return failures == 0 ? 0 : 1;
}
