#include "glitch-video/gl_small.hpp"
#include "glitch-video/null_shader.hpp"
#include "glitch-video/null_shader_manager.hpp"
#include "glitch-video/shader_code.hpp"
#include "video_test_types.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::video;

int main() {
    // Shader code table: insert, find by name, unknown name gives null.
    CGLSLShaderManager codes;  // an ICodeShaderManager with its createEmptyShader
    auto a = boost::intrusive_ptr<IShaderCode>(new test::TestShaderCode("alpha"), true)  /* born with count 0 */;
    auto b = boost::intrusive_ptr<IShaderCode>(new test::TestShaderCode("beta"), true);
    codes.addShaderCode(a);
    codes.addShaderCode(b);
    CHECK(codes.getShaderCode("alpha").get() == a.get());
    CHECK(codes.getShaderCode("beta").get() == b.get());
    CHECK(!codes.getShaderCode("gamma"));
    CHECK(a->referenceCounter == 2);  // the local and the collection
    // The collection removes only the entries nothing else holds (removeUnused = removeAll(false)).
    codes.removeUnusedShaderCodes();
    CHECK(codes.getShaderCode("alpha"));
    CHECK(codes.getShaderCode("beta"));
    a = boost::intrusive_ptr<IShaderCode>();  // now the collection is the only user of alpha
    codes.removeUnusedShaderCodes();
    CHECK(!codes.getShaderCode("alpha"));
    CHECK(codes.getShaderCode("beta"));      // still held by b

    // Named shader: hash is the id, mask is 1, dirty flag is cleared by updateHash.
    CNullShader named(42, "shader", nullptr);
    CHECK(named.getHashValue() == 42);
    CHECK(named.m_vertexAttributeMask == 1);
    CHECK(!named.m_hashDirty);
    named.m_id = 9;
    named.m_hashDirty = true;
    CHECK(named.getHashValue() == 9);   // dirty -> recomputed
    CHECK(named.getShaderSize() == 0);  // size is not computed by updateHash

    // Manager: same name yields the same shader; removeUnusedShaders empties it.
    CNullShaderManager manager(nullptr);
    auto s1 = manager.createShader("s");
    auto s2 = manager.createShader("s");
    CHECK(s1.get() == s2.get());
    CHECK(manager.createEmptyShader("ignored").get() != s1.get());
    manager.removeUnusedShaders();
    CHECK(manager.m_shaders.size() == 1);   // still held by s1 and s2
    s1 = nullptr;
    s2 = nullptr;
    manager.removeUnusedShaders();
    CHECK(manager.m_shaders.size() == 0);

    std::printf("%s\n", failures ? "shader_code: FAILED" : "shader_code: ok");
    return failures != 0;
}
