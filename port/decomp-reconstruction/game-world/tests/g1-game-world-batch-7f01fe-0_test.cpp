// Test for the state-only functions of batch::BatchNodeCompiler (batch g1-game-world-batch-7f01fe-0):
// Trim, Free and the destructor. The node map is keyed by pointers that are only compared, never dereferenced, so
// the test uses fake addresses. m_batchNode stays null: Free would drop a real GOBatchSceneNode.
// Returns non-zero on failure.

#include <cstdint>
#include <cstdio>

#include "dh2/batch/BatchNodeCompiler.hpp"
#include "dh2/GameObject.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace {

int failures = 0;

void check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++failures;
    }
}

GameObject* fakeObject(std::uintptr_t value) {
    return reinterpret_cast<GameObject*>(value);
}

const glitch::scene::ISceneNode* fakeNode(std::uintptr_t value) {
    return reinterpret_cast<const glitch::scene::ISceneNode*>(value);
}

void fill(batch::BatchNodeCompiler& compiler) {
    for (std::uintptr_t i = 1; i <= 8; ++i) {
        compiler.m_gameObjects.push_back(fakeObject(0x1000 + i * 16));
        compiler.m_nodeObjects[fakeNode(0x2000 + i * 16)] = fakeObject(0x1000 + i * 16);
    }
}

}  // namespace

int main() {
    // Trim: the object list is emptied and its storage released; the node map is cleared.
    {
        batch::BatchNodeCompiler compiler{};
        fill(compiler);
        check(compiler.m_gameObjects.size() == 8, "fill: object list has 8 entries");
        check(compiler.m_nodeObjects.size() == 8, "fill: node map has 8 entries");
        compiler.Trim();
        check(compiler.m_gameObjects.empty(), "Trim: object list is empty");
        check(compiler.m_gameObjects.capacity() == 0, "Trim: object list storage is released");
        check(compiler.m_nodeObjects.empty(), "Trim: node map is empty");
    }

    // Trim on an already empty compiler is a no-op.
    {
        batch::BatchNodeCompiler compiler{};
        compiler.Trim();
        check(compiler.m_gameObjects.empty(), "Trim on empty: object list is empty");
        check(compiler.m_nodeObjects.empty(), "Trim on empty: node map is empty");
    }

    // Free: no batch node to drop, so it clears the object list and the node map and keeps m_batchNode null.
    {
        batch::BatchNodeCompiler compiler{};
        fill(compiler);
        compiler.Free();
        check(compiler.m_batchNode == nullptr, "Free: m_batchNode is null");
        check(compiler.m_gameObjects.empty(), "Free: object list is empty");
        check(compiler.m_nodeObjects.empty(), "Free: node map is empty");
    }

    // The destructor runs Free and the member destructors on a filled compiler without faulting.
    {
        auto* compiler = new batch::BatchNodeCompiler{};
        fill(*compiler);
        delete compiler;
    }

    if (failures == 0) {
        std::printf("g1-game-world-batch-7f01fe-0 test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
