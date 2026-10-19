// Randomizer seed sequence (Schrage step) and the Printer print forms.
#include "glitch-core-io/os/logging.hpp"
#include "glitch-core-io/os/randomizer.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using glitch::os::Randomizer;
using glitch::os::Printer;

int main() {
    Randomizer::reset();
    CHECK(Randomizer::Seed == 0x0f0f0f0f);

    // One step: 40692 * seed mod 0x7fffff07 (computed directly with 64-bit arithmetic).
    auto reference = [](std::int64_t x) {
        std::int64_t r = (x * 40692) % 0x7fffff07;
        if (r < 0) r += 0x7fffff07;
        return r;
    };
    std::int64_t expected = 0x0f0f0f0f;
    for (int i = 0; i < 1000; ++i) {
        Randomizer::rand();
        expected = reference(expected);
        if (Randomizer::Seed != expected) {
            std::printf("FAIL step %d: got %d expected %lld\n", i, Randomizer::Seed, static_cast<long long>(expected));
            ++failures;
            break;
        }
    }
    CHECK(Randomizer::Seed > 0);

    // print and vprint write to stdout followed by a newline.
    Printer::print("print %d", 7);
    Printer::logf("no logger %s", "x");     // no logger installed: nothing happens
    Printer::logf(glitch::os::ELL_INFORMATION, "no logger %d", 1);

    if (failures == 0) std::printf("randomizer_printer_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
