// Host check of the shader name helpers (ok1-ShaderNames.cpp): the dictionary lookups, the sub id by type and sortParameters.
#include <cstdio>
#include <string>

#include "glitch-video/shader_manager.hpp"

using namespace glitch::video;

static int failures = 0;
#define CHECK(c)                                                          \
    do {                                                                  \
        if (!(c)) {                                                       \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);       \
            ++failures;                                                   \
        }                                                                 \
    } while (0)

// Needs the real SShaderParameterDef members, guessSubIdFromName(char const*, char const*) and the logger from the libraries.
int main() {
    CHECK(guessShaderParameterType("WorldViewProjectionMatrix") == 39);
    CHECK(guessShaderParameterType("matWVP") == 39);
    CHECK(guessShaderParameterType("Light[3]Color_nonexistent") == 255);
    CHECK(guessShaderParameterType("worldT") == 50);
    CHECK(guessShaderParameterType("AlphaRef") == 10);
    CHECK(guessShaderParameterType("zzzNotAName") == 255);
    CHECK(guessShaderVertexAttribute("Position") == 0);
    CHECK(guessShaderVertexAttribute("TexCoord3") == 4);
    CHECK(guessShaderVertexAttribute("SkinIndices") == 29);
    CHECK(guessShaderVertexAttribute("nothing") == 255);

    SShaderParameterDef defs[4];
    defs[0].parameterType = 39;
    defs[1].parameterType = 40;  // automatic
    defs[2].parameterType = 6;
    defs[3].parameterType = 33;  // not in 34..62: not automatic
    defs[0].count = 10;
    defs[1].count = 11;
    defs[2].count = 12;
    defs[3].count = 13;
    CHECK(sortParameters(defs, 4) == 2);   // 39 and 40 are automatic (34..62) and go in front (first-boot fix: the port had them behind)
    CHECK(defs[0].count == 10 && defs[1].count == 11 && defs[2].count == 12 && defs[3].count == 13);
    CHECK(sortParameters(defs, 0) == 0);
    CHECK(guessSubIdFromName("Light4Pos", 20) == 4);   // 19..27 asks for "light": the number after it (0x5e7e00 returns 4)
    CHECK(guessSubIdFromName("x", 50) == 255);         // a type without a sub id
    CHECK(guessSubIdFromName("x", 2) == 0);            // sampler / texture: both 255 -> 0
    std::printf("%s\n", failures == 0 ? "ok" : "FAILED");
    return failures;
}

