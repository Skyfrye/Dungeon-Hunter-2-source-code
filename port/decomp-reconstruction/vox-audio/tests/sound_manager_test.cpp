// VoxSoundManager::ConvertVisual3DToSound3D scales each component by 0.01 and the empty iPod
// members can be called without effect.
#include <cmath>
#include <cstdio>

#include "vox-audio/vox/sound_manager.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)
}  // namespace

// The destructor's body is in batch p1-vox-audio-VoxSoundManager-3a5f5c-1.cpp (game glue, not linked into this test).
// The test only needs the members destroyed, so empty bodies are enough here (the sound pack's is not linked either).
VoxSoundManager::~VoxSoundManager() {}
namespace vox {
VoxSoundPackXML::~VoxSoundPackXML() {}
}  // namespace vox

int main() {
    glitch::core::vector3d<float> visual{250.0f, -100.0f, 0.5f};
    glitch::core::vector3d<float> sound = VoxSoundManager::ConvertVisual3DToSound3D(visual);
    CHECK(std::fabs(sound.X - 2.5f) < 1e-6f);
    CHECK(std::fabs(sound.Y + 1.0f) < 1e-6f);
    CHECK(std::fabs(sound.Z - 0.005f) < 1e-6f);

    // The input is not modified.
    CHECK(visual.X == 250.0f && visual.Y == -100.0f && visual.Z == 0.5f);

    VoxSoundManager manager;
    manager.SetIPodShuffle();
    manager.UpdateIPodAsync();

    return g_failures == 0 ? 0 : 1;
}
