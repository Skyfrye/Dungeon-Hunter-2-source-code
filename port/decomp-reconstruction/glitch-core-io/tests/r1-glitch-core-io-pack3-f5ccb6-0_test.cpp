// r1-glitch-core-io-pack3-f5ccb6-0: SIDedCollection remove and removeAll on a plain-value collection
// (the SShaderParameterDef shape). Checks the trailing trim of 0x5e9e7c / 0x5d9f74 (an all-unset vector
// keeps its length; otherwise the vector is cut after its last set entry), the id reuse that follows,
// and the uint16 count returned by removeAll (0x5c1104 and 0x5da080).
#include <cstdint>
#include <cstdio>
#include <type_traits>
#include <utility>

#include "glitch-core-io/core/sided_collection.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace sc = glitch::core::detail::sidedcollection;
using glitch::core::detail::SIDedCollection;

struct PackTestProperties {
    int flags = 0;
};

// Plain 16-byte value: an entry is set when a is non-zero, and every value counts as used once.
struct PackTestParameterDef {
    int a = 0, b = 0, c = 0, d = 0;
};
struct PackTestParameterTraits {
    template <class P>
    static bool isSet(const P& p) { return p.a != 0; }
    template <class P>
    static int useCount(const P&) { return 1; }
};

using ParameterCollection =
    SIDedCollection<PackTestParameterDef, std::uint16_t, false, PackTestProperties, PackTestParameterTraits>;

int main() {
    static_assert(std::is_same<decltype(std::declval<ParameterCollection&>().removeAll(false)), std::uint16_t>::value,
                  "removeAll returns the uint16 count");

    ParameterCollection params;
    PackTestParameterDef value;

    // Three entries: alpha=0, beta=1, gamma=2.
    value.a = 1;
    CHECK(params.add("alpha", value) == 0);
    value.a = 2;
    CHECK(params.add("beta", value) == 1);
    value.a = 3;
    CHECK(params.add("gamma", value) == 2);
    CHECK(params.size() == 3);
    CHECK(params.entries.size() == 3);
    CHECK(params.getNextId() == 3);

    // Removing the last entry cuts the vector to the last set entry.
    CHECK(params.remove(2, false));
    CHECK(params.size() == 2);
    CHECK(params.entries.size() == 2);
    CHECK(params.getNextId() == 2);

    // Removing the first entry leaves a set entry at the end, so the length stays at two.
    CHECK(params.remove(0, false));
    CHECK(params.size() == 1);
    CHECK(params.entries.size() == 2);
    CHECK(params.getNextId() == 0);
    CHECK(params.getMaxID() == 1);

    // Removing the last set entry leaves every entry unset: the vector keeps its length.
    CHECK(params.remove(1, false));
    CHECK(params.size() == 0);
    CHECK(params.entries.size() == 2);
    CHECK(params.getMaxID() == 1);
    CHECK(params.getNextId() == 0);
    CHECK(!params.remove(1, false));  // already gone

    // The next add reuses the lowest free id.
    value.a = 4;
    CHECK(params.add("delta", value) == 0);
    CHECK(params.size() == 1);
    CHECK(params.entries.size() == 2);
    CHECK(params.getId("delta") == 0);
    CHECK(params.getId("alpha") == 0xffff);

    // removeAll(false) removes every entry in name order and returns the count as a uint16.
    value.a = 5;
    CHECK(params.add("epsilon", value) == 1);
    CHECK(params.add("zeta", value) == 2);
    CHECK(params.size() == 3);  // delta, epsilon and zeta
    const std::uint16_t removed = params.removeAll(false);
    CHECK(removed == 3);
    CHECK(params.size() == 0);
    CHECK(params.entries.size() == 3);  // all unset: the length is kept
    CHECK(params.getMaxID() == 2);

    // removeAll on an empty collection returns zero and changes nothing.
    CHECK(params.removeAll(true) == 0);
    CHECK(params.entries.size() == 3);

    std::printf("%s\n", failures ? "r1-glitch-core-io-pack3-f5ccb6-0: FAILED" : "r1-glitch-core-io-pack3-f5ccb6-0: ok");
    return failures != 0;
}
