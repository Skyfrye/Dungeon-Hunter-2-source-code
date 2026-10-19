// Host check for CMaterialRendererManager::SCreationState::addRenderPass (0x5d93e8). The engine-only
// calls (process buffer, binding count of the shader) are replaced by stubs here. The test checks the
// list logic: append on an empty list, reuse after a reset, cursor advance, and the shader counts.
#include <cstdio>
#include <cstdint>

#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/shader_attributes.hpp"

namespace glitch::core {
// Same declarations as the source file (process_buffer.hpp is not on this include path).
struct SScopedEnableProcessBufferHeapExcess {
    explicit SScopedEnableProcessBufferHeapExcess(bool enable);
    bool previous = false;
};
int* allocProcessBuffer(int size);
void setProcessBufferHeapExcessEnabled(bool enabled);
}  // namespace glitch::core

namespace {

bool g_excess = false;
int g_excessSets = 0;

}  // namespace

namespace glitch::core {

SScopedEnableProcessBufferHeapExcess::SScopedEnableProcessBufferHeapExcess(bool enable) {
    previous = g_excess;
    g_excess = enable;
}

void setProcessBufferHeapExcessEnabled(bool enabled) {
    g_excess = enabled;
    ++g_excessSets;
}

// Fills the block with 0xff so the test can see that addRenderPass clears it.
int* allocProcessBuffer(int size) {
    const int words = size / 4;
    int* block = new int[static_cast<size_t>(words)];
    for (int i = 0; i < words; ++i) block[i] = -1;
    return block;
}

}  // namespace glitch::core

namespace {

// addRenderPass reads the stage records of a real IShader (shaderBindingEntryCount is called inside the same
// translation unit, so a test double cannot replace it): every test shader has two binding entries,
// (stage1.count + stage0.count) - (stage1.field04 + stage0.field04).
struct FakeShader : glitch::video::IShader {
    void releaseDriverSpecificResources() override {}
    FakeShader() : glitch::video::IShader(0, "fake", nullptr) {
        m_stageParameters[0].count = 2;
        m_stageParameters[1].count = 0;
    }
};

int g_failures = 0;
#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

using glitch::video::CMaterialRendererManager;
using SState = CMaterialRendererManager::SCreationState;

// Pass list length, counting from the head sentinel.
int passCount(const SState& s) {
    int n = 0;
    for (const SState::SPassNode* node = s.m_passSentinel.next; node != &s.m_passSentinel; node = node->next) ++n;
    return n;
}

}  // namespace

int main() {
    FakeShader shaders[3];
    for (FakeShader& shader : shaders) shader.referenceCounter = 10;  // never reaches one, so nothing is deleted

    glitch::video::detail::renderpass::SRenderState renderState;
    const glitch::video::detail::material::SRenderState materialState{};  // unread by addRenderPass (symbol parity)

    char techniqueName[] = "technique";
    SState state(techniqueName);
    // The constructor of the port does not link the pass sentinel yet; the original does. Link it here.
    state.m_passSentinel.next = &state.m_passSentinel;
    state.m_passSentinel.prev = &state.m_passSentinel;

    // 1. Empty list: the first pass is appended, the cursor points at it, the shader is counted once.
    state.addRenderPass(&shaders[0], renderState, materialState);
    CHECK(passCount(state) == 1);
    CHECK(state.m_passCursor == state.m_passSentinel.next);
    CHECK(state.m_pinkCounter24 == 1);
    CHECK(shaders[0].referenceCounter == 11);
    CHECK(state.m_bindingTotal == 2);
    const SState::SPassNode* first = state.m_passSentinel.next;
    CHECK(first->pass.flag30 == 1);
    CHECK(first->pass.bindings != nullptr && first->pass.bindings[0] == 0 && first->pass.bindings[3] == 0);

    // 2. Cursor at the tail: append a second pass.
    state.addRenderPass(&shaders[1], renderState, materialState);
    CHECK(passCount(state) == 2);
    CHECK(state.m_passCursor == state.m_passSentinel.prev);
    CHECK(shaders[1].referenceCounter == 11);
    CHECK(shaders[0].referenceCounter == 11);

    // 3. Reset as makeTechnique does (count 0, cursor 0). The next pass reuses the first node and
    //    releases the shader it held.
    state.m_pinkCounter24 = 0;
    state.m_passCursor = nullptr;
    state.addRenderPass(&shaders[2], renderState, materialState);
    CHECK(passCount(state) == 2);
    CHECK(first->pass.shader == &shaders[2]);
    CHECK(shaders[0].referenceCounter == 10);
    CHECK(shaders[2].referenceCounter == 11);
    CHECK(state.m_passCursor == first);

    // 4. Cursor is not at the tail: the node after it is reused (node 2 gives up shaders[1]).
    state.addRenderPass(&shaders[0], renderState, materialState);
    CHECK(passCount(state) == 2);
    CHECK(state.m_passCursor == state.m_passSentinel.prev);
    CHECK(shaders[1].referenceCounter == 10);
    CHECK(shaders[0].referenceCounter == 11);

    // 5. Cursor at the tail again with count 2: append a third node.
    state.addRenderPass(&shaders[1], renderState, materialState);
    CHECK(passCount(state) == 3);
    CHECK(state.m_passCursor == state.m_passSentinel.prev);
    CHECK(shaders[1].referenceCounter == 11);
    CHECK(state.m_bindingTotal == 10);
    CHECK(g_excess == false);  // the guard restored the previous value after each append
    CHECK(g_excessSets >= 2);

    if (g_failures == 0) std::printf("material_renderer_manager_add_render_pass_test: all checks passed\n");
    return g_failures == 0 ? 0 : 1;
}
