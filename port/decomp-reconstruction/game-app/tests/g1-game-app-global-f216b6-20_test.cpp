// Test for batch g1-game-app-global-f216b6-20. Covers the PVRTC colour interpolation and twiddle index (checked against
// an independent transcription of the Hex-Rays text), the node visibility pass-through, the empty native sound
// bodies and the PVRTC start value. Exit status 0 means every check passed.
//
// IsNodeMesh (in another batch of this category) and the application singleton accessor are not part of this link,
// so the fakes below stand in for them. They are only used by the visibility check.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/global/pvrtc_decompress.hpp"
#include "dh2/global/platform_app.hpp"
#include "dh2/global/scene_nodes.hpp"

namespace {

int g_failures = 0;
bool g_fakeIsNodeMesh = false;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

// Fake for IsNodeMesh (queue row 50e514, another batch).
bool IsNodeMesh(glitch::scene::ISceneNode* /*node*/) {
    return g_fakeIsNodeMesh;
}

// Fakes for the singleton accessor and the saved-option read. GetGameMusicVolume is linked but not called here.
Application& ApplicationGetInstance() {
    std::abort();
}

int Application::GetSavedOption(const char* /*name*/) {
    return 0;
}

// Globals.cpp is not linked here. GetAccelerometerParams reads these words, so the test defines them (zero, as in Globals.cpp).
std::uint32_t mAccelerometerX = 0;
std::uint32_t mAccelerometerY = 0;
std::uint32_t mAccelerometerZ = 0;

namespace {

void CheckInterpolate(const int* a1, const int* a2, const int* a3, const int* a4, int a5, int a6, int a7,
                      int expectResult, const int expect[4], const char* what) {
    int out[4] = {0, 0, 0, 0};
    const int result = InterpolateColours(a1, a2, a3, a4, a5, a6, a7, out);
    Check(result == expectResult, what);
    for (int i = 0; i < 4; ++i) {
        if (out[i] != expect[i]) {
            std::printf("  %s word %d: got %d want %d\n", what, i, out[i], expect[i]);
            Check(false, what);
            break;
        }
    }
}

void TestInterpolateColours() {
    const int c1[4] = {1, 1, 1, 1};
    const int c8[4] = {8, 8, 8, 8};
    const int zero[4] = {0, 0, 0, 0};
    const int four[4] = {4, 4, 4, 4};
    const int w8a[4] = {8, 8, 8, 17};
    const int w8b[4] = {66, 66, 66, 136};
    const int w12[4] = {12, 12, 12, 25};
    const int w20[4] = {20, 20, 20, 42};
    const int v4a[4] = {66, 74, 82, 187};
    const int v8a[4] = {12, 20, 28, 76};

    CheckInterpolate(c1, c1, c1, c1, 0, 0, 0, 4, w8a, "uniform c=1, 4 steps");
    CheckInterpolate(c8, c8, c8, c8, 0, 0, 0, 4, w8b, "uniform c=8, 4 steps");
    CheckInterpolate(c1, c1, c1, c1, 1, 0, 0, 8, w8a, "uniform c=1, 8 steps");
    CheckInterpolate(zero, four, zero, zero, 0, 1, 0, 4, w12, "a2 = 4, horizontal weight 1");
    CheckInterpolate(zero, four, zero, zero, 1, 1, 2, 20, w20, "a2 = 4, 8 steps, weights 1 and 2");

    const int a1[4] = {1, 2, 3, 4};
    const int a2[4] = {5, 6, 7, 8};
    const int a3[4] = {9, 10, 11, 12};
    const int a4[4] = {13, 14, 15, 16};
    CheckInterpolate(a1, a2, a3, a4, 0, 3, 1, 4, v4a, "varied corners, 4 steps");
    CheckInterpolate(a1, a2, a3, a4, 1, 5, 6, 12, v8a, "varied corners, 8 steps");
}

void CheckTwiddle(std::uint32_t a1, std::uint32_t a2, std::uint32_t a3, std::uint32_t a4, std::uint32_t expect,
                  const char* what) {
    const std::uint32_t got = TwiddleUV(a1, a2, a3, a4);
    if (got != expect) {
        std::printf("  %s: got %u want %u\n", what, static_cast<unsigned>(got), static_cast<unsigned>(expect));
        Check(false, what);
    }
}

void TestTwiddleUV() {
    CheckTwiddle(4, 4, 1, 0, 1, "TwiddleUV(4,4,1,0)");
    CheckTwiddle(4, 4, 2, 0, 4, "TwiddleUV(4,4,2,0)");
    CheckTwiddle(4, 4, 0, 1, 2, "TwiddleUV(4,4,0,1)");
    CheckTwiddle(4, 4, 0, 2, 8, "TwiddleUV(4,4,0,2)");
    CheckTwiddle(4, 4, 3, 3, 15, "TwiddleUV(4,4,3,3)");
    CheckTwiddle(4, 4, 3, 0, 5, "TwiddleUV(4,4,3,0)");
    CheckTwiddle(4, 8, 0, 4, 16, "TwiddleUV(4,8,0,4)");
    CheckTwiddle(4, 8, 3, 7, 31, "TwiddleUV(4,8,3,7)");
    CheckTwiddle(2, 2, 1, 1, 3, "TwiddleUV(2,2,1,1)");
    CheckTwiddle(2, 2, 0, 1, 2, "TwiddleUV(2,2,0,1)");
    CheckTwiddle(1, 1, 5, 9, 5, "TwiddleUV(1,1,5,9)");
    CheckTwiddle(8, 8, 5, 2, 25, "TwiddleUV(8,8,5,2)");
}

void TestVisibility() {
    glitch::scene::ISceneNode* node = nullptr;
    Check(IsNodeVisible(node) == 1, "IsNodeVisible is always 1");
    g_fakeIsNodeMesh = true;
    Check(IsVisibleMeshNode(node) == 1, "IsVisibleMeshNode passes a mesh node through");
    g_fakeIsNodeMesh = false;
    Check(IsVisibleMeshNode(node) == 0, "IsVisibleMeshNode rejects a non-mesh node");
}

void TestPvrtcStartValue() {
    std::uint8_t buffer[4] = {0, 0, 0, 0};
    Check(PVRTCDecompress(nullptr, 0, 16, 0, buffer) == 4, "PVRTCDecompress start value, 4 bpp");
    Check(PVRTCDecompress(nullptr, 1, 16, 0, buffer) == 2, "PVRTCDecompress start value, 2 bpp");
    Check(PVRTCDecompress(nullptr, 0, 4, 0, buffer) == 2, "PVRTCDecompress start value clamps to 2");
}

// A 4 bits per pixel image of 8 x 8 pixels is 2 x 2 blocks. Four identical opaque blocks: colour A pure red (5 bits of red, bit 15 set),
// colour B pure green. Modulation 0 selects colour A everywhere, modulation 3 (all bits set) selects colour B.
void TestPvrtcDecode() {
    std::uint32_t blocks[8];
    for (int block = 0; block < 4; ++block) {
        blocks[2 * block + 1] = (0x8000u | (31u << 5)) << 16 | (0x8000u | (31u << 10));
    }
    std::uint8_t pixels[8 * 8 * 4];
    for (int block = 0; block < 4; ++block) {
        blocks[2 * block] = 0u;
    }
    std::memset(pixels, 0x55, sizeof(pixels));
    Check(PVRTCDecompress(blocks, 0, 8, 8, pixels) == 8, "PVRTCDecompress returns yDim");
    bool allRed = true;
    for (int i = 0; i < 64; ++i) {
        allRed = allRed && pixels[4 * i] == 255 && pixels[4 * i + 1] == 0 && pixels[4 * i + 2] == 0 && pixels[4 * i + 3] == 255;
    }
    Check(allRed, "PVRTCDecompress modulation 0 gives colour A");
    for (int block = 0; block < 4; ++block) {
        blocks[2 * block] = 0xFFFFFFFFu;
    }
    PVRTCDecompress(blocks, 0, 8, 8, pixels);
    bool allGreen = true;
    for (int i = 0; i < 64; ++i) {
        allGreen = allGreen && pixels[4 * i] == 0 && pixels[4 * i + 1] == 255 && pixels[4 * i + 2] == 0 && pixels[4 * i + 3] == 255;
    }
    Check(allGreen, "PVRTCDecompress modulation 3 gives colour B");
}

void TestNativeSoundBodies() {
    GetNativeSoundRaw();
    GetNativeResourceSoundRawLength();
    Check(true, "empty native sound bodies return");
}

}  // namespace

int main() {
    TestInterpolateColours();
    TestTwiddleUV();
    TestVisibility();
    TestPvrtcStartValue();
    TestPvrtcDecode();
    TestNativeSoundBodies();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-global-f216b6-20 tests passed\n");
    return 0;
}
