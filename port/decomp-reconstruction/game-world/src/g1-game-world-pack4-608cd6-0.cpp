// Batch g1-game-world-pack4-608cd6-0: the six UnderlaySceneNode functions (AddUnderlayNode, the complete and deleting
// destructors, render, onRegisterSceneNode and getBoundingBox). Declarations come from dh2/UnderlaySceneNode.hpp and the
// render helper from dh2/global/underlay_scene_node.hpp.
//
// Reconstructed: AddUnderlayNode (0x326fcc), the complete destructor (0x381ad4) and onRegisterSceneNode (0x381cf0).
// Partial: render (0x381b90) and getBoundingBox (0x381e48). Each comment names what is missing.
// Skipped: the deleting destructor (D0 0x381b54), which is the complete destructor followed by CustomFree.
//
// Include note: the scene headers (ISceneNode.hpp through glitch-core-io/io/interfaces.hpp) and the glitch-video headers
// (video_driver.hpp and what it includes) redefine the same classes (IBuffer, CImage, CLight, vector3d, SEvent) when they
// share a translation unit. So this file does not include glitch-video/video_driver.hpp, and the IVideoDriver calls in
// render are not bound (see its comment). core-platform/memory.hpp is not included for the same reason; gAssertLevel is
// declared here, as in the other game-world batches.

#include "dh2/UnderlaySceneNode.hpp"

#include <cstddef>
#include <cstdio>
#include <cstdlib>

#include "dh2/Application.hpp"                               // ApplicationGetInstance
#include "dh2/CameraLevel.hpp"                               // CameraLevel::m_camera (CameraBase +0x08)
#include "dh2/DebugSwitches.hpp"                             // DebugSwitches::s_inst
#include "dh2/Level.hpp"                                     // Level::m_camera (+0x128)
#include "dh2/global/underlay_scene_node.hpp"                // TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"  // registerNodeForRendering (vptr+0x24)
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-video/video_driver.hpp"  // near and far values, render

// Global assert level (libDungeonHunter2.so, the same variable as core-platform/memory.hpp declares).
extern int gAssertLevel;

namespace {

// The ASSERT in getBoundingBox prints this file name, as the original does.
constexpr char kUnderlaySceneNodeFile[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\UnderlaySceneNode.cpp";

// The camera's near and far values during the underlay pass (float bits 1112014848 and 1195593728).
constexpr float kUnderlayCameraNear = 50.0f;
constexpr float kUnderlayCameraFar = 50000.0f;

// A zero box. getBoundingBox returns it in place of the original's null reference (see its comment).
const glitch::core::aabbox3d<float>& ZeroBoundingBox() {
    static const glitch::core::aabbox3d<float> kZero{};
    return kZero;
}

}  // namespace

// 0x326fcc _ZN17UnderlaySceneNode15AddUnderlayNodeEPN6glitch5scene10ISceneNodeE
// Reconstructed. The original scans the whole list and returns when node is already there. Otherwise it appends node and
// calls node->setVisible(false) (ISceneNode K 0x48). The list is a std::vector here, so push_back does the append and the
// growth. The original grows its GlitchAlloc storage by doubling, which is not reproduced; the element order is the same.
void UnderlaySceneNode::AddUnderlayNode(glitch::scene::ISceneNode* node) {
    for (glitch::scene::ISceneNode* existing : m_underlayNodes) {
        if (existing == node) {
            return;
        }
    }
    m_underlayNodes.push_back(node);
    node->setVisible(false);
}

// 0x381ad4 _ZN17UnderlaySceneNodeD1Ev
// Reconstructed. The original stores the primary vptr (_ZTV17UnderlaySceneNode+0x1c) at +0x00 and the vptr of the virtual
// base glitch::IReferenceCounted (_ZTV17UnderlaySceneNode+0x120) at +0x13c. It frees the underlay list storage (GlitchFree
// on the vector begin at +0x130), then calls the ISceneNode base-object destructor with the VTT (_ZTT17UnderlaySceneNode+4).
// The compiler emits the same sequence for this empty body: it stores both vptrs, the std::vector member frees its storage
// (operator delete, not GlitchFree; the port's std containers stand in for the glitch ones, as in AddUnderlayNode), and the
// base destructors run last. The +0x13c store is the virtual base that dh2/UnderlaySceneNode.hpp leaves to ISceneNode.
UnderlaySceneNode::~UnderlaySceneNode() {}

// 0x381b54 _ZN17UnderlaySceneNodeD0Ev
// skipped: compiler-generated deleting destructor. It is the complete destructor (0x381ad4) followed by CustomFree(this).
// A delete expression does the same.

// 0x381b90 _ZN17UnderlaySceneNode6renderEPv
// partial. Bound: the level is Application::GetCurrentLevel(). When its camera (Level +0x128) is set, the camera's glitch
// camera (CameraBase +0x08) gets near 50.0 and far 50000.0, after the old values are read back. It renders with a null
// context (ICameraSceneNode K 0x1c). Each underlay node goes to the helper at 0x381a10. Then the camera gets the old near and
// far values back and renders again with a null context.
// Not bound, 1: the IVideoDriver calls. The scene manager's driver (sceneManager+0x14) gets setDepthRange(0.8, 1.0) (K 0x11c)
// before the nodes and setDepthRange(0.0, 0.8) after them. The complete IVideoDriver cannot be included in this translation
// unit (see the include note above), so these two calls are missing.
// Not bound, 2: the per-node work. It is TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse (0x381a10), declared in
// dh2/global/underlay_scene_node.hpp. Its core-platform row is skipped and it has no body in the tree.
// The camera and the list are not checked beyond what the original checks, and the camera is not null-checked, as in the
// original.
void UnderlaySceneNode::render(void* renderContext) {
    (void)renderContext;  // the original does not read its context argument
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        return;
    }
    CameraLevel* levelCamera = level->m_camera;
    if (levelCamera == nullptr) {
        return;
    }
    glitch::scene::ICameraSceneNode* camera = levelCamera->m_camera;

    const float savedNear = camera->getNearValue();  // vptr+0x11c
    const float savedFar = camera->getFarValue();    // vptr+0x120
    camera->setNearValue(kUnderlayCameraNear);       // vptr+0x130
    camera->setFarValue(kUnderlayCameraFar);         // vptr+0x134
    camera->render(nullptr);                         // vptr+0x1c with a null context

    glitch::video::IVideoDriver* driver = sceneManager->driver;  // +0x14
    driver->setDepthRange(0.8f, 1.0f);  // vptr+0x11c

    // The count is read on every pass, as the original reads the list bounds again after each call.
    for (std::size_t i = 0; i < m_underlayNodes.size(); ++i) {
        TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse(m_underlayNodes[i]);
    }

    camera->setNearValue(savedNear);                 // vptr+0x130
    camera->setFarValue(savedFar);                   // vptr+0x134
    camera->render(nullptr);                         // vptr+0x1c with a null context

    driver->setDepthRange(0.0f, 0.8f);  // vptr+0x11c
}

// 0x381cf0 _ZN17UnderlaySceneNode19onRegisterSceneNodeEv
// Reconstructed. Each debug switch is read after a DebugSwitches::load, as the original does. If IsUsingToggleDisplayMode or
// IsUsingCharacterShowRoom is set, or the underlay list is empty, the node registers nothing and the result is 0. Otherwise
// the node goes to the scene manager (vptr+0x24, registerNodeForRendering) with a null material, user data 0, pass 4, no
// position and sort order 0x7fffffff, and the result is 1.
int UnderlaySceneNode::onRegisterSceneNode() {
    DebugSwitches::s_inst.load();
    if (DebugSwitches::s_inst.GetSwitch("IsUsingToggleDisplayMode")) {
        return 0;
    }
    DebugSwitches::s_inst.load();
    if (DebugSwitches::s_inst.GetSwitch("IsUsingCharacterShowRoom")) {
        return 0;
    }
    if (m_underlayNodes.empty()) {
        return 0;
    }
    boost::intrusive_ptr<glitch::video::CMaterial> material;  // null: the original passes a zeroed slot
    sceneManager->registerNodeForRendering(this, material, nullptr, 4, nullptr, 0x7FFFFFFF);
    return 1;
}

// 0x381e48 _ZNK17UnderlaySceneNode14getBoundingBoxEv
// partial. The original asserts that the call is not supported. gAssertLevel 2 writes to address 0 to crash; the port's
// shared convention is std::abort for that. gAssertLevel 1 prints ASSERT(!"not supported") FAILED at line 39. Then the
// original returns null. A C++ reference cannot be null, so this returns a reference to a zero box. A caller that reads
// the result therefore gets zeros where the original faults.
const glitch::core::aabbox3d<float>& UnderlaySceneNode::getBoundingBox() const {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "!\"not supported\"", kUnderlaySceneNodeFile, 39);
    }
    return ZeroBoundingBox();
}
