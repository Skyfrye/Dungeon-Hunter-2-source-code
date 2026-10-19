// Test for glitch::collada::detail::constructCompatibilityTable (batch e1-glitch-scene-collada-gui-glitch_collada_detail-0).
// Checks the identity relation and a few of the compatibility masks against the original layout.
#include <cstdint>
#include <cstdio>

#include "glitch-scene-collada-gui/tb/glitch_collada_detail.hpp"

using glitch::collada::detail::compatibilityWordForType;
using glitch::collada::detail::constructCompatibilityTable;
using glitch::collada::detail::kCompatibilityRowCount;

namespace {

bool hasBit(const glitch::collada::detail::SCompatibilityTable* t, unsigned row, unsigned type) {
    return (t->words[compatibilityWordForType(row, type)] >> (type & 31u)) & 1u;
}

int failures = 0;

void check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++failures;
    }
}

}  // namespace

int main() {
    const auto* t = constructCompatibilityTable();

    // Every row has its own bit set.
    bool identity = true;
    for (unsigned i = 0; i < kCompatibilityRowCount; ++i) {
        identity = identity && hasBit(t, i, i);
    }
    check(identity, "row i has bit i");

    // Row 23: identity plus the 0x3600000 mask (bits 21, 22, 24, 25) at word 0.
    check(hasBit(t, 23, 21) && hasBit(t, 23, 22) && hasBit(t, 23, 23) && hasBit(t, 23, 24) && hasBit(t, 23, 25),
          "row 23 bits 21..25");
    check(!hasBit(t, 23, 20) && !hasBit(t, 23, 26), "row 23 has no bit 20 or 26");

    // Row 91 word 2 mask 0x7800000 gives bits 87..90, plus identity bit 91.
    check(hasBit(t, 91, 87) && hasBit(t, 91, 90) && hasBit(t, 91, 91), "row 91 bits 87..91");
    check(!hasBit(t, 91, 86), "row 91 has no bit 86");

    // Calling again is stable (the identity pass clears and rebuilds each row).
    const auto before = t->words[compatibilityWordForType(23, 22)];
    constructCompatibilityTable();
    check(before == t->words[compatibilityWordForType(23, 22)], "second call is stable");

    std::printf(failures == 0 ? "collada_detail_0_test OK\n" : "collada_detail_0_test FAILED\n");
    return failures == 0 ? 0 : 1;
}
