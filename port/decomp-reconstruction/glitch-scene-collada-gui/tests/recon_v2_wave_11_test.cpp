// Wave 11 test: checks the layout members this wave relies on and the row counts.
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <type_traits>

#include "glitch-scene-collada-gui/recon/v2/wave_11.hpp"

namespace ac = glitch::collada;
namespace rv = glitch::collada::recon_v2_11;

int main() {
    int failures = 0;
    auto check = [&](bool ok, const char* what) {
        if (!ok) {
            std::printf("FAIL: %s\n", what);
            ++failures;
        }
    };
    // The accessor is the canonical host-width class (collada/SAnimationAccessor.hpp): the animation at +0x00, the outputs at +0x04
    // and the key-search cache at +0x08 are pointers, so the checks are on the member order and types, not on the 32-bit offsets.
    check(std::is_same_v<decltype(ac::SAnimationAccessor::animation), const ac::SAnimation*>, "animation is a pointer");
    check(std::is_same_v<decltype(ac::SAnimationAccessor::outputs), const ac::SAnimationOutput*>, "outputs is a pointer");
    check(std::is_same_v<decltype(ac::SAnimationAccessor::cache), ac::SAnimationKeyCache*>, "cache is a pointer");
    check(offsetof(ac::SAnimationAccessor, animation) < offsetof(ac::SAnimationAccessor, outputs) &&
              offsetof(ac::SAnimationAccessor, outputs) < offsetof(ac::SAnimationAccessor, cache),
          "member order animation, outputs, cache");
    check(std::is_same_v<decltype(ac::animation_track::CApplicatorInfo::parameterId), std::uint16_t>,
          "parameterId is a 16-bit field");
    // CMaterialApplicatorInfo::clone (0x667ed0) allocates 0x0c bytes and copies the words at +0x04 and +0x08.
    check(std::is_same_v<decltype(ac::animation_track::CApplicatorInfo::word_0x04), std::uint32_t>, "word_0x04 is a word");
    check(rv::kThunkRows + rv::kPartialRows == 100, "wave 11 has 100 rows");
    std::printf("%s: %u thunks skipped, %u partial\n", failures ? "FAILED" : "PASSED",
                rv::kThunkRows, rv::kPartialRows);
    return failures ? 1 : 0;
}
