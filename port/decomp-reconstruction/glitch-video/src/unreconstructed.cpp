#include "glitch-video/unreconstructed.hpp"

#include <cstdio>
#include <cstdlib>

namespace glitch::video::detail {

void unreconstructed(const char* function, uint32_t address) {
    std::fprintf(stderr, "glitch-video: %s (0x%x) is not reconstructed\n", function, address);
    std::abort();
}

}  // namespace glitch::video::detail
