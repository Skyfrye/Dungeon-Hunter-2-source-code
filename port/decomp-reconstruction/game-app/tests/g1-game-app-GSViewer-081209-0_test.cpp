// Test for batch g1-game-app-GSViewer-081209-0. Covers the constructor (the three node words are cleared),
// Ctor (the camera, the target and the light are created with the decoded arguments, attached to the scene root,
// the light is switched to the ambient type, the target node is the camera's target and the camera is the
// manager's active camera, and the manager's ambient light becomes white), Dtor (the three words are released and
// cleared and the manager is cleared), Update (forwarded to the manager as (float dt, false)) and Draw (forwarded
// to the manager with a null node).
//
// The camera, the target, the light and the manager are the canonical glitch::scene classes, so their
// constructors run for real and the addChild / setActiveCamera / setAmbientLight / setTarget calls the batch
// makes are the real ones. What the test supplies is the process state around them: GSViewer reaches the manager
// through DeviceSceneManager() (the device word at Application::m_device +0x1c), and neither the device nor the
// Application singleton is part of this batch, so the definition below returns the test's manager from it (the
// other game tests stand in for the application singleton the same way). The manager's clear / update / drawAll
// slots run the engine renderer (the video driver, the render and batch lists), which the test does not build, so
// the test's manager records those three calls instead.
// Exit status 0 means every check passed.
#include <cstdio>

#include "dh2/GSViewer.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "glitch-scene-collada-gui/scene_nodes.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// The manager the batch reaches through the device. A real CSceneManager, so its constructor creates the root
// node that Ctor attaches the camera, the target and the light to, and setActiveCamera / setAmbientLight store
// into it. The three slots GSViewer reaches that would draw are recorded instead.
class TestSceneManager : public glitch::scene::CSceneManager {
public:
    TestSceneManager()
        : CSceneManager(nullptr, boost::intrusive_ptr<glitch::io::IFileSystem>(), nullptr, nullptr, nullptr) {}

    // CSceneManager is abstract: registerSkinnedMesh is pure.
    void registerSkinnedMesh(void*) override {}

    // CSceneManager vtable +0x68 / +0x60 / +0x3c.
    void clear() override { ++clearCalls; }
    void update(float elapsed, bool updateAnimators) override {
        ++updateCalls;
        lastElapsed = elapsed;
        lastUpdateAnimators = updateAnimators;
    }
    void drawAll(glitch::scene::ISceneNode* node) override {
        ++drawAllCalls;
        lastDrawnNode = node;
    }

    int clearCalls = 0;
    int updateCalls = 0;
    int drawAllCalls = 0;
    float lastElapsed = -1.0f;
    bool lastUpdateAnimators = true;
    glitch::scene::ISceneNode* lastDrawnNode = reinterpret_cast<glitch::scene::ISceneNode*>(1);
};

// Built on first use, so nothing here depends on static initialisation order.
TestSceneManager& Manager() {
    static TestSceneManager manager;
    return manager;
}

}  // namespace

// DeviceSceneManager (game-world/src/g1-game-world-VisualObject-0654b6-2.cpp) is the device word Application::m_device
// +0x1c. The device is not part of this batch, so the test's manager stands in for it. The test links with
// --allow-multiple-definition and its own object comes first, so this definition wins.
SceneManager* DeviceSceneManager() {
    return reinterpret_cast<SceneManager*>(static_cast<glitch::scene::CSceneManager*>(&Manager()));
}

// Empty stand-ins for the StateBase members that GSViewer's vtable and destructor refer to.
StateBase::~StateBase() {}
void StateBase::Ctor(const StateMachine*) {}
void StateBase::Dtor(const StateMachine*) {}
void StateBase::Pause(const StateMachine*) {}
void StateBase::Resume(const StateMachine*) {}
void StateBase::Update(StateMachine*, double) {}
void StateBase::Draw(const StateMachine*) {}
void StateBase::Draw2D(const StateMachine*) {}
void StateBase::Sleep(const StateMachine*) {}
void StateBase::WakeUp(const StateMachine*) {}

int main() {
    TestSceneManager& manager = Manager();

    {
        // Constructor: all three node words are null.
        GSViewer view;
        Check(view.m_camera == nullptr, "constructor clears the camera word");
        Check(view.m_target == nullptr, "constructor clears the target word");
        Check(view.m_light == nullptr, "constructor clears the light word");

        // Ctor: the camera is created with the decoded arguments (id -1, position (0, -500, 0), farToInfinity
        // false), attached to the root and made active; the target and the light are created and attached too.
        view.Ctor(nullptr);
        Check(view.m_camera != nullptr, "Ctor stores the camera in the camera word");
        Check(view.m_target != nullptr, "Ctor stores the target node in the target word");
        Check(view.m_light != nullptr, "Ctor stores the light node in the light word");
        Check(manager.activeCamera == view.m_camera, "the camera is the manager's active camera");
        Check(manager.ambientLight.r == 1.0f && manager.ambientLight.g == 1.0f &&
                  manager.ambientLight.b == 1.0f && manager.ambientLight.a == 1.0f,
              "the ambient light is white");
        if (view.m_camera != nullptr) {
            Check(view.m_camera->getID() == -1, "camera id is -1");
            const glitch::core::vector3d<float>& position = view.m_camera->getPosition();
            Check(position.X == 0.0f && position.Y == -500.0f && position.Z == 0.0f,
                  "camera position is (0, -500, 0)");
            Check(!view.m_camera->getFarToInifinity(), "camera is not far to infinity");
            Check(view.m_camera->parent == manager.rootNode, "the camera is attached to the scene root");
        }
        if (view.m_target != nullptr) {
            Check(view.m_target->getID() == -1, "target id is -1");
            Check(view.m_target->parent == manager.rootNode, "the target is attached to the scene root");
            // The last thing Ctor does with the camera is setTarget(m_target->getAbsolutePosition()), which
            // replaces the (0, 0, 100) the camera was constructed with.
            const glitch::core::vector3d<float> absolute = view.m_target->getAbsolutePosition();
            const glitch::core::vector3d<float>& target = view.m_camera->getTarget();
            Check(target.X == absolute.X && target.Y == absolute.Y && target.Z == absolute.Z,
                  "the camera target is the target node's absolute position");
            Check(target.X == 0.0f && target.Y == 0.0f && target.Z == 0.0f, "the target node sits at the origin");
        }
        if (view.m_light != nullptr) {
            Check(view.m_light->parent == manager.rootNode, "the light is attached to the scene root");
            Check(view.m_light->light.get() != nullptr, "the light node carries a light");
            Check(view.m_light->light->m_type == 2, "the light is switched to the ambient type");
        }

        // Update: the manager's update with (float dt, false).
        const int updatesBefore = manager.updateCalls;
        view.Update(nullptr, 0.25);
        Check(manager.updateCalls == updatesBefore + 1, "Update forwards to the manager's update");
        Check(manager.lastElapsed == 0.25f, "Update passes the time as a float");
        Check(!manager.lastUpdateAnimators, "Update passes false");

        // Draw: the manager's drawAll with no node.
        const int drawsBefore = manager.drawAllCalls;
        view.Draw(nullptr);
        Check(manager.drawAllCalls == drawsBefore + 1, "Draw forwards to the manager's drawAll");
        Check(manager.lastDrawnNode == nullptr, "Draw passes a null node");

        // Dtor: the three words are released on the nodes' reference-counted base and cleared, and the manager is
        // cleared. The three nodes are still attached to the scene root, which holds one use of each, so the test
        // takes one more use before the release (the game's own other owners hold some): the release is then
        // observable as a count one lower, and no node that the root still links is freed.
        glitch::scene::CCameraSceneNode* const camera = view.m_camera;
        glitch::scene::CEmptySceneNode* const target = view.m_target;
        glitch::scene::CLightSceneNode* const light = view.m_light;
        ++camera->referenceCounter;
        ++target->referenceCounter;
        ++light->referenceCounter;
        const int clearCallsBefore = manager.clearCalls;
        view.Dtor(nullptr);
        Check(view.m_camera == nullptr, "Dtor clears the camera word");
        Check(view.m_target == nullptr, "Dtor clears the target word");
        Check(view.m_light == nullptr, "Dtor clears the light word");
        Check(camera->referenceCounter == 2, "Dtor released the camera's use");
        Check(target->referenceCounter == 1, "Dtor released the target's use");
        Check(light->referenceCounter == 1, "Dtor released the light's use");
        Check(manager.clearCalls == clearCallsBefore + 1, "Dtor clears the scene manager");
    }

    if (g_failures == 0) {
        std::printf("g1-game-app-GSViewer-081209-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-GSViewer-081209-0 test: %d check(s) failed\n", g_failures);
    return 1;
}
