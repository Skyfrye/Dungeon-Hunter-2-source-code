#include "glitch-scene-collada-gui/track_defaults.hpp"

#include <cstdio>

using namespace glitch::collada::track_defaults;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CHECK(CColladaFactory_createMaterialRenderer_3506a4(1, 2) == nullptr);
    std::printf("%s\n", failures ? "track_defaults: FAILED" : "track_defaults: ok");
    return failures != 0;
}
