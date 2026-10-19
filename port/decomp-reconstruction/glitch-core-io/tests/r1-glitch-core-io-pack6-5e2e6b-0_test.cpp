// Batch r1-glitch-core-io-pack6-5e2e6b-0 checks:
//   - SIDedCollection<boost::intrusive_ptr<video::IShaderCode>, unsigned short, false,
//     SEmptyProperties, SValueTraits>::SIdValue (0x6e08b0 C2, 0x6e08b8 C1): the constructor stores
//     the u16 id at +0x00 (STRH R1, [R0]) and writes nothing else. The collection itself is not
//     built here: its destructor releases the values through IReferenceCounted::drop, which this
//     test does not link.
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <type_traits>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/sided_collection.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

namespace sc = glitch::core::detail::sidedcollection;

using ShaderCodeCollection = glitch::core::detail::SIDedCollection<
    boost::intrusive_ptr<glitch::video::IShaderCode>, std::uint16_t, false,
    sc::SEmptyProperties, sc::SValueTraits>;
using ShaderCodeIdValue = ShaderCodeCollection::SIdValue;

}  // namespace

int main() {
    // The property record of this instance is empty, so the mapped value is the id alone.
    CHECK(std::is_empty<sc::SEmptyProperties>::value);
    CHECK(std::is_standard_layout<ShaderCodeIdValue>::value);
    CHECK(offsetof(ShaderCodeIdValue, id) == 0);

    // The constructor stores the id as given (unsigned short, the id type of every instance).
    {
        ShaderCodeIdValue first(static_cast<std::uint16_t>(0x1234));
        CHECK(first.id == 0x1234);
        ShaderCodeIdValue zero(static_cast<std::uint16_t>(0));
        CHECK(zero.id == 0);
        ShaderCodeIdValue invalid(static_cast<std::uint16_t>(0xffff));  // the invalid id
        CHECK(invalid.id == 0xffff);
    }

    std::printf("%s\n", failures ? "r1-glitch-core-io-pack6-5e2e6b-0: FAILED" : "r1-glitch-core-io-pack6-5e2e6b-0: ok");
    return failures != 0;
}
