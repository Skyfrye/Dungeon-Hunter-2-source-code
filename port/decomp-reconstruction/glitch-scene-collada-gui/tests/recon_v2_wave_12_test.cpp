#include <cstdint>
#include <cstdio>

#include "glitch-scene-collada-gui/recon/v2/wave_12.hpp"

int main() {
    using namespace glitch::collada::recon_v2_12;
    int failures = 0;
    if (kThunkCount != 19) {
        std::printf("FAIL thunk count %zu\n", kThunkCount);
        ++failures;
    }
    for (std::size_t i = 0; i < kThunkCount; ++i) {
        if (!isThunk(kThunkAddresses[i])) {
            std::printf("FAIL thunk 0x%x not found\n", static_cast<unsigned>(kThunkAddresses[i]));
            ++failures;
        }
        for (std::size_t j = i + 1; j < kThunkCount; ++j) {
            if (kThunkAddresses[i] == kThunkAddresses[j]) {
                std::printf("FAIL duplicate thunk\n");
                ++failures;
            }
        }
    }
    if (isThunk(0x634a88) || isThunk(0x638764)) {
        std::printf("FAIL non-thunk classified as thunk\n");
        ++failures;
    }
    std::printf("%s (%d failures)\n", failures ? "FAILED" : "PASS", failures);
    return failures ? 1 : 0;
}
