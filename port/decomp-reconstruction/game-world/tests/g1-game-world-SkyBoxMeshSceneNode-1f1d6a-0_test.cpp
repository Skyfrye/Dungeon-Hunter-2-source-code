// Test for batch g1-game-world-SkyBoxMeshSceneNode-1f1d6a-0.
//
// Covers what the batch binds on the host without an engine: getType's constant, the constructor's render gate and
// null node, the pass edit the constructor makes, onRegisterSceneNode's return value, the render gate, and a destructor
// with no node.
//
// The mesh is a REAL glitch::collada::CMesh: the constructor at 0x362810 ends its stores with `getMaterial(0)` on the
// mesh (a vtable call on the node's mesh at +0x134), then reads the material's renderer (+0x04 of the material) and the
// first render pass of the renderer's first technique (0x36292c..0x36296c). A null mesh dereferences that null material,
// so the test supplies the material and its renderer. The reference counting on the node passed in is still not
// exercised (that needs a complete glitch::scene::IMeshSceneNode). onRegisterSceneNode reads the scene manager's driver
// (+0x14), so a zeroed scene manager is installed for it; ISceneNode::sceneManager is protected, hence the accessor.

#include <cstdio>
#include <cstring>

#include "dh2/SkyBoxMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_driver.hpp"

namespace {

// ISceneNode::sceneManager (+0x110) is protected: the checks install a manager for onRegisterSceneNode.
class TestSkyBoxNode : public SkyBoxMeshSceneNode {
public:
    using SkyBoxMeshSceneNode::SkyBoxMeshSceneNode;
    void setSceneManagerForTest(glitch::scene::CSceneManager* manager) { sceneManager = manager; }
};

}  // namespace

int main() {
    int failures = 0;

    {
        // The material and its renderer the constructor edits: the renderer's first technique's first pass, whose
        // second state word loses bit 0x100000 and whose flag byte becomes 1 when the bit was set.
        // CMaterialRenderer and CMaterial are NOT IReferenceCounted: their count is their first word, the constructors
        // store 0 (material_renderer.hpp / material.hpp) and the intrusive_ptr two-argument form adds the first use.
        // They are therefore allocated with operator new, not on the stack, or the last release would free a stack
        // object (heap corruption).
        glitch::video::CMaterialRenderer* renderer = new glitch::video::CMaterialRenderer();
        renderer->m_techniqueCount = 1;
        glitch::video::STechnique technique;
        glitch::video::SRenderPass pass;
        pass.stateWords[1] = 0x00100000u;
        pass.flag30 = 0;
        technique.passCount = 1;
        technique.passes = &pass;
        renderer->m_techniques = &technique;

        glitch::video::CMaterial* material = new glitch::video::CMaterial();
        material->m_renderer = boost::intrusive_ptr<glitch::video::CMaterialRenderer>(renderer, true);

        glitch::collada::CMesh* mesh = new glitch::collada::CMesh();  // the test-only empty mesh (buffers, see the header)
        mesh->buffers.resize(1);
        mesh->buffers[0].material = boost::intrusive_ptr<glitch::video::CMaterial>(material, true);

        // A null node is enough for the checks below: the constructor sets the gate and keeps the node pointer.
        TestSkyBoxNode node(boost::intrusive_ptr<glitch::collada::IMesh>(mesh, true), nullptr);

        if (node.getType() != 1601792883) {
            std::printf("FAIL: getType() is %d, expected 1601792883\n", node.getType());
            ++failures;
        }
        if (!node.m_renderEnabled) {
            std::printf("FAIL: m_renderEnabled is false after construction\n");
            ++failures;
        }
        if (node.unk_13c != nullptr) {
            std::printf("FAIL: node pointer is not null after construction with a null node\n");
            ++failures;
        }
        if ((pass.stateWords[1] & 0x00100000u) != 0) {
            std::printf("FAIL: the constructor did not clear bit 0x100000 of the pass state word\n");
            ++failures;
        }
        if (pass.flag30 != 1) {
            std::printf("FAIL: the constructor did not set the pass flag when the bit was set\n");
            ++failures;
        }

        // onRegisterSceneNode asks the mesh how each buffer renders; with no driver it returns 1 without registering.
        // The manager is raw zeroed storage (CSceneManager has no default constructor); its driver field is null.
        alignas(glitch::scene::CSceneManager) unsigned char managerStorage[sizeof(glitch::scene::CSceneManager)];
        std::memset(managerStorage, 0, sizeof managerStorage);
        node.setSceneManagerForTest(reinterpret_cast<glitch::scene::CSceneManager*>(managerStorage));
        if (node.onRegisterSceneNode() != 1) {
            std::printf("FAIL: onRegisterSceneNode() did not return 1\n");
            ++failures;
        }

        // With the gate clear, render must return at once. The partial body draws nothing either way.
        node.m_renderEnabled = false;
        node.render(nullptr);
        if (node.m_renderEnabled) {
            std::printf("FAIL: render() changed m_renderEnabled\n");
            ++failures;
        }
    }

    if (failures == 0) {
        std::printf("SkyBoxMeshSceneNode test: all checks passed\n");
        return 0;
    }
    std::printf("SkyBoxMeshSceneNode test: %d failure(s)\n", failures);
    return 1;
}
