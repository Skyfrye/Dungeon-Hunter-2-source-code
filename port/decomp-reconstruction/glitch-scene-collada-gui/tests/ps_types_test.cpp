// Checks for the glitch::ps shape tags and the particle-system heap helpers. The stand-in model templates this test used to check
// (the empty initialisers, the world-matrix accessor, the colour track test) are the canonical members of ps/ParticleModels.hpp now;
// tests/ps_models_test.cpp runs them inside a real particle system.
#include "glitch-scene-collada-gui/ps_types.hpp"

#include <cstdio>
#include <cstring>

using namespace glitch::ps;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CHECK(PDPoint().getType() == 3);
    CHECK(PDLine().getType() == 4);
    CHECK(PDBox().getType() == 0);
    CHECK(PDCylinder().getType() == 2);
    CHECK(PDCone().getType() == 5);
    CHECK(PDSphere().getType() == 1);
    CHECK(PDBlob().getType() == 6);

    CHECK(PDPoint().size() == 1.0f);
    CHECK(PDBlob().size() == 1.0f);

    // PS_NEW / PS_FREE: a block can be written and given back.
    void* block = PS_NEW(64);
    CHECK(block != nullptr);
    std::memset(block, 0xAB, 64);
    PS_FREE(block);

    std::printf("%s\n", failures ? "ps_types: FAILED" : "ps_types: ok");
    return failures != 0;
}
