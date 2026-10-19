// Test for batch g1-game-world-ModularSkinnedMeshSceneNode-a4b53e-0.
//
// Covers the state the batch's constructor sets on the host: the base constructor
// leaves the render gate set. Construction goes through the base's constructor, defined in
// g1-game-world-BaseMeshSceneNode-fb9ec3-0.cpp, which is linked in with this test.
//
// The base's explicit specialization for CMeshSceneNode calls glitch::collada::CMeshSceneNode::render. That engine body is
// not linked here, so this test supplies an empty stub for it. The rest of the batch's functions are partial and are not
// exercised.

#include <cstdio>

#include "dh2/ModularSkinnedMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"

namespace glitch::collada {
// Stub for the engine body that the base's CMeshSceneNode render specialization calls.
void CMeshSceneNode::render(void* /*context*/) {}
}  // namespace glitch::collada

int main() {
    int failures = 0;

    {
        // A null mesh is enough: the base constructor only stores the render gate and drops the mesh.
        ModularSkinnedMeshSceneNode node(boost::intrusive_ptr<glitch::collada::IMesh>(nullptr));
        if (!node.m_renderEnabled) {
            std::printf("FAIL: m_renderEnabled is false after construction\n");
            ++failures;
        }
    }

    if (failures == 0) {
        std::printf("ModularSkinnedMeshSceneNode test: all checks passed\n");
        return 0;
    }
    std::printf("ModularSkinnedMeshSceneNode test: %d failure(s)\n", failures);
    return 1;
}
