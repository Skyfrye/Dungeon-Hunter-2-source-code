// Transcription check for the float constants of MenuMerchant::CreateAvatarCamera (0x433318).
// The bodies in g1-game-ui-MenuMerchant-5569f0-0.cpp use these literals; the Hex-Rays pseudocode gives them as 32-bit
// words (v7, v9, v8 and the setter arguments). This test compares each literal with its word. It links no engine code,
// so the rest of the module (camera, scene and menu calls) is not covered here.
// Build and run: bash tools/trackb/check_tu.sh --test <this file>
#include <cstdint>
#include <cstdio>
#include <cstring>

namespace {

int failures = 0;

void check(const char* name, float value, std::uint32_t expectedBits) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof bits);
    if (bits != expectedBits) {
        std::printf("FAIL %s: bits 0x%08X, expected 0x%08X\n", name, static_cast<unsigned>(bits),
                    static_cast<unsigned>(expectedBits));
        ++failures;
    }
}

}  // namespace

int main() {
    // Camera position (0, -800, 200) and target (0, 0, 200): v9 and v8 in the original.
    check("position.x", 0.0f, 0x00000000u);
    check("position.y", -800.0f, 0xC4480000u);
    check("position.z", 200.0f, 0x43480000u);
    check("target.z", 200.0f, 0x43480000u);
    // Up vector (0, 0, 1): v7 in the original.
    check("up.z", 1.0f, 0x3F800000u);
    // Setter arguments, by vtable call-site offset.
    check("setAspectRatio (+0x138)", 1.66775239f, 0x3FD578E9u);
    check("setFOV (+0x13c)", 0.558519006f, 0x3F0EFB1Au);
    check("setNearValue (+0x130)", 10.0f, 0x41200000u);
    check("setFarValue (+0x134)", 1000.0f, 0x447A0000u);

    if (failures == 0) {
        std::printf("MenuMerchant constants: OK\n");
        return 0;
    }
    return 1;
}
