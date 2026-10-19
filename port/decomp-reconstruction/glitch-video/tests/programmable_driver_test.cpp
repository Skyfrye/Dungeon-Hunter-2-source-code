// Programmable GL driver constants, shader hooks, the GLSL shader program name,
// and the image loader/writer constructors and factories.
#include "glitch-video/gl_small.hpp"
#include "glitch-video/image_loaders.hpp"
#include "glitch-video/programmable_gl_driver.hpp"
#include "glitch-video/texture_loaders.hpp"

#include "glitch-video/deps/gl_function_table.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::video;

namespace {
uint32_t g_useProgramArg = 0xffffffffu;
int g_useProgramCalls = 0;
uint32_t g_nextProgram = 7;
}  // namespace

int main() {
    auto& table = deps::activeGLFunctionTable();
    table.useProgram = [](uint32_t p) { ++g_useProgramCalls; g_useProgramArg = p; };
    table.createProgram = []() -> uint32_t { return g_nextProgram++; };

    // Constant getters.
    CProgrammableGLDriver driver;
    driver.onSet3DMode();
    CHECK(driver.queryMaxLightCount() == 8);
    CHECK(driver.getMaxUserClipPlanes() == 6);
    CHECK(driver.getDriverType() == 0x78);
    CHECK(driver.getShaderManager() != nullptr);  // the constructor builds a CGLSLShaderManager (0x5b5c40)
    driver.setTextureLODBiasTexEnv(nullptr);

    // Shader program: createProgram stores the GL name; commitShader binds it.
    CGLSLShader shader;
    CHECK(shader.m_glProgram == 0);
    CHECK(shader.createProgram());
    CHECK(shader.m_glProgram == 7);
    driver.commitShader(&shader);
    CHECK(g_useProgramCalls == 1 && g_useProgramArg == 7);

    // Destroying a different shader keeps the current one; destroying it clears the slot.
    CGLSLShader other;
    driver.onShaderDestroyed(&other);
    CHECK(driver.hasCurrentShader());
    driver.onShaderDestroyed(&shader);
    CHECK(!driver.hasCurrentShader());

    // Image loaders: the reference word is 1 after construction.
    CImageLoaderDDS* ddsLoader = createImageLoaderDDS();
    CHECK(ddsLoader != nullptr && ddsLoader->referenceCounter == 1);
    delete ddsLoader;
    CImageLoaderJPG* jpgLoader = createImageLoaderJPG();
    CHECK(jpgLoader != nullptr);
    delete jpgLoader;
    CImageLoaderPVR* pvrLoader = createImageLoaderPVR();
    CHECK(pvrLoader != nullptr && pvrLoader->referenceCounter == 1);
    delete pvrLoader;
    CImageLoaderBMP* bmpLoader = createImageLoaderBMP();
    CHECK(bmpLoader != nullptr);
    delete bmpLoader;

    // Writers.
    CImageWriterJPG* jpgWriter = createImageWriterJPG();
    CHECK(jpgWriter != nullptr);
    delete jpgWriter;
    CImageWriterPNG* pngWriter = createImageWriterPNG();
    CHECK(pngWriter != nullptr);
    delete pngWriter;
    CImageWriterTGA* tgaWriter = createImageWriterTGA();
    CHECK(tgaWriter != nullptr);
    delete tgaWriter;

    if (failures == 0) {
        std::printf("programmable_driver_test: all checks passed\n");
        return 0;
    }
    std::printf("programmable_driver_test: %d failure(s)\n", failures);
    return 1;
}
