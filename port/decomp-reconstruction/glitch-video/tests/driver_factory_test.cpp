// Partial constructors and factories: createNullDriver, the CGLSLShader and CGLSLShaderCode
// driver constructors, and the CMaterialRendererManager temporary-id lookups.
#include "glitch-video/gl_small.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/shader_code.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    using namespace glitch::video;

    // createNullDriver ignores the device and returns a fresh driver.
    CNullDriver* driver = createNullDriver(nullptr);
    CHECK(driver != nullptr);
    CHECK(driver->endScene());
    delete driver;

    // The shader and shader-code constructors accept a null driver in the tests.
    CGLSLShader shader(nullptr);
    CHECK(shader.m_glProgram == 0);
    CGLSLShader defaultShader;
    CHECK(defaultShader.m_glProgram == 0);
    CGLSLShaderCode code(nullptr);
    CHECK(code.m_name.empty());

    // CMaterialRendererManager: the id comes back only when the flag word is set and the id is non-zero.
    CMaterialRendererManager manager(nullptr);
    CMaterialRendererManager::STemporaryID id;
    id.value = 5;
    CHECK(manager.getTechnique(id) == 0);
    CHECK(manager.getParameterDef(id) == 0);
    manager.m_creationState = new CMaterialRendererManager::SCreationState(nullptr);
    CHECK(manager.getTechnique(id) == 5);
    CHECK(manager.getParameterDef(id) == 5);
    id.value = 0;
    CHECK(manager.getTechnique(id) == 0);
    CHECK(manager.getParameterDef(id) == 0);
    manager.clearCreationState();
    CHECK(manager.m_creationState == nullptr);

    std::printf("%s\n", failures ? "driver_factory: FAILED" : "driver_factory: ok");
    return failures != 0;
}
