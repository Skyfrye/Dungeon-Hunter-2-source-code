// Checks for the glitch::collada timeline and streaming-manager members of collada_misc.hpp (the skinned meshes and the skin techniques are
// canonical classes now: skinned_mesh_test.cpp). The
// animators, the synchronized sets and the animation-set templates are canonical classes now (collada_animators_test.cpp).
#include "glitch-scene-collada-gui/collada_misc.hpp"

#include <cstdio>

using namespace glitch::collada;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CTimelineController timeline;
    CHECK(timeline.getScale() == 1.0f);
    timeline.scale = 0.5f;
    CHECK(timeline.getScale() == 0.5f);

    CAnimationStreamingManager streaming;
    CHECK(CAnimationStreamingManager::Instance == &streaming);
    CHECK(streaming.cacheUsage == 0 && streaming.registry.empty() && streaming.cacheEntries.empty());
    CAnimationStreamingManager::Instance = nullptr;

    std::printf("%s\n", failures ? "collada_misc: FAILED" : "collada_misc: ok");
    return failures != 0;
}
