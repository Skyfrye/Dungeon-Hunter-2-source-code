// Checks for the first-person and Maya camera animators, the collision response animator and the default animator factory
// (scene/CSceneNodeAnimatorCameraFPS.hpp, CSceneNodeAnimatorCameraMaya.hpp, CSceneNodeAnimatorCollisionResponse.hpp,
// CDefaultSceneNodeAnimatorFactory.hpp). Exit status is non-zero when a check fails.
#include <cmath>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-scene-collada-gui/scene/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CDefaultSceneNodeAnimatorFactory.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCameraFPS.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCameraMaya.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCollisionResponse.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorDelete.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorRotation.hpp"

using namespace glitch::scene;
using glitch::core::triangle3d;
using glitch::core::vector3d;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

bool near(float a, float b, float tolerance = 1e-3f) { return std::fabs(a - b) <= tolerance; }

class TestSceneManager : public CSceneManager {
public:
    TestSceneManager()
        : CSceneManager(nullptr, boost::intrusive_ptr<glitch::io::IFileSystem>(), nullptr, nullptr, nullptr) {}
    void registerSkinnedMesh(void*) override {}
};

// A selector that hands out its triangles whatever the box (enough for a unit-radius ellipsoid).
class FakeSelector : public ITriangleSelector {
public:
    explicit FakeSelector(std::vector<triangle3d<float>> tris) : triangles(std::move(tris)) {}
    int getTriangleCount() const override { return static_cast<int>(triangles.size()); }
    void getTriangles(triangle3d<float>* out, int arraySize, int& outCount, const glitch::core::CMatrix4<float>*) const override {
        copy(out, arraySize, outCount);
    }
    void getTriangles(triangle3d<float>* out, int arraySize, int& outCount, const glitch::core::aabbox3d<float>&,
                      const glitch::core::CMatrix4<float>*) const override {
        copy(out, arraySize, outCount);
    }
    void getTriangles(triangle3d<float>* out, int arraySize, int& outCount, const glitch::core::line3d<float>&,
                      const glitch::core::CMatrix4<float>*) const override {
        copy(out, arraySize, outCount);
    }

private:
    void copy(triangle3d<float>* out, int arraySize, int& outCount) const {
        int n = 0;
        for (const auto& t : triangles) {
            if (n >= arraySize) break;
            out[n++] = t;
        }
        outCount = n;
    }
    std::vector<triangle3d<float>> triangles;
};

triangle3d<float> makeFloor() {
    triangle3d<float> t;
    t.A = vector3d<float>{-10.0f, 0.0f, -10.0f};
    t.B = vector3d<float>{10.0f, 0.0f, -10.0f};
    t.C = vector3d<float>{-10.0f, 0.0f, 10.0f};
    return t;
}

glitch::SEvent keyEvent(int key, bool down) {
    glitch::SEvent e;
    e.EventType = glitch::EET_KEY_INPUT_EVENT;
    e.KeyInput.Char = 0;
    e.KeyInput.Key = key;
    e.KeyInput.PressedDown = down;
    e.KeyInput.Shift = false;
    e.KeyInput.Control = false;
    return e;
}

glitch::SEvent mouseEvent(int event, int x = 0, int y = 0) {
    glitch::SEvent e;
    e.EventType = glitch::EET_MOUSE_INPUT_EVENT;
    e.MouseInput.X = x;
    e.MouseInput.Y = y;
    e.MouseInput.Wheel = 0.0f;
    e.MouseInput.Event = event;
    return e;
}

}  // namespace

int main() {
    // ---- first-person camera ------------------------------------------------------------------------------------------
    {
        CSceneNodeAnimatorCameraFPS fps(nullptr, 100.0f, 1000.0f, 5.0f, nullptr, 0, false);
        CHECK(fps.getType() == ESNAT_CAMERA_FPS && static_cast<int>(fps.getType()) == 7);
        CHECK(fps.isEventReceiverEnabled());
        CHECK(near(fps.getMoveSpeed(), 1.0f) && near(fps.getRotateSpeed(), 100.0f));  // the move speed is stored per millisecond
        CHECK(fps.keyMap.size() == 5 && fps.keyMap[0].keyCode == 38 && fps.keyMap[4].action == 4 && fps.keyMap[4].keyCode == 74);
        fps.setMoveSpeed(2.0f);
        fps.setRotateSpeed(3.0f);
        CHECK(fps.getMoveSpeed() == 2.0f && fps.getRotateSpeed() == 3.0f);
        fps.setVerticalMovement(true);
        CHECK(!fps.noVerticalMovement);
        fps.setVerticalMovement(false);
        CHECK(fps.noVerticalMovement);

        // key events go through the key map
        CHECK(fps.onEvent(keyEvent(38, true)) && fps.cursorKeys[0]);
        CHECK(fps.onEvent(keyEvent(38, false)) && !fps.cursorKeys[0]);
        CHECK(!fps.onEvent(keyEvent(99, true)));
        fps.cursorKeys[2] = true;
        fps.allKeysUp();
        CHECK(!fps.cursorKeys[2]);
        // a mouse move without a cursor control reads the event position over a 640 x 480 screen
        CHECK(fps.onEvent(mouseEvent(glitch::EMIE_MOUSE_MOVED, 640, 0)));
        CHECK(near(fps.cursorPos.X, 1.0f) && near(fps.cursorPos.Y, 0.0f));
        CHECK(!fps.onEvent(mouseEvent(glitch::EMIE_LMOUSE_PRESSED_DOWN)));
        glitch::SEvent gui;
        CHECK(!fps.onEvent(gui));

        // a custom key map: only the mapped actions are kept
        glitch::SKeyMap map[3] = {{glitch::EKA_MOVE_FORWARD, 87}, {glitch::EKA_STRAFE_RIGHT, 68}, {42, 1}};
        fps.setKeyMap(map, 3);
        CHECK(fps.keyMap.size() == 2 && fps.keyMap[0].keyCode == 87 && fps.keyMap[1].action == 3);
        CHECK(fps.onEvent(keyEvent(68, true)) && fps.cursorKeys[3]);

        // moving forward along the look direction
        CCameraSceneNode camera(1, vector3d<float>{0.0f, 0.0f, 0.0f}, vector3d<float>{0.0f, 0.0f, 100.0f}, false);
        CSceneNodeAnimatorCameraFPS walker(nullptr, 100.0f, 1000.0f, 5.0f, nullptr, 0, false);
        walker.cursorPos = glitch::core::position2d<float>{0.5f, 0.5f};
        walker.animateNode(&camera, 1000);  // the first call only starts the clock
        CHECK(near(camera.getPosition().Z, 0.0f));
        walker.cursorKeys[0] = true;
        walker.animateNode(&camera, 1010);
        CHECK(near(camera.getPosition().X, 0.0f) && near(camera.getPosition().Z, 10.0f, 1e-2f));
        CHECK(near(camera.getTarget().Z, 110.0f, 1e-2f));
        CHECK(near(walker.targetVector.Z, 100.0f, 1e-2f));
        auto* clone = static_cast<CSceneNodeAnimatorCameraFPS*>(walker.createClone());
        CHECK(near(clone->getMoveSpeed(), 1.0f) && clone->keyMap.size() == 5 && clone->noVerticalMovement == false);
        clone->drop();
        // other node types are left alone
        CEmptySceneNode empty(2);
        walker.animateNode(&empty, 2000);
        CHECK(empty.getPosition().Z == 0.0f);
    }

    // ---- Maya camera --------------------------------------------------------------------------------------------------
    {
        CSceneNodeAnimatorCameraMaya maya(nullptr, -1500.0f, 200.0f, 1500.0f);
        CHECK(maya.getType() == ESNAT_CAMERA_MAYA && static_cast<int>(maya.getType()) == 8);
        CHECK(maya.isEventReceiverEnabled());
        CHECK(maya.getRotateSpeed() == -1500.0f && maya.getZoomSpeed() == 200.0f && maya.getMoveSpeed() == 1500.0f);
        CHECK(near(maya.currentZoom, 80.0f) && maya.mousePos.X == 0.5f && maya.mousePos.Y == 0.5f);
        maya.setZoomSpeed(1.0f);
        maya.setMoveSpeed(2.0f);
        maya.setRotateSpeed(3.0f);
        CHECK(maya.getZoomSpeed() == 1.0f && maya.getMoveSpeed() == 2.0f && maya.getRotateSpeed() == 3.0f);

        CHECK(maya.onEvent(mouseEvent(glitch::EMIE_LMOUSE_PRESSED_DOWN)) && maya.isMouseKeyDown(0));
        CHECK(maya.onEvent(mouseEvent(glitch::EMIE_MMOUSE_PRESSED_DOWN)) && maya.isMouseKeyDown(1));
        CHECK(maya.onEvent(mouseEvent(glitch::EMIE_RMOUSE_PRESSED_DOWN)) && maya.isMouseKeyDown(2));
        CHECK(maya.onEvent(mouseEvent(glitch::EMIE_MMOUSE_LEFT_UP)) && !maya.isMouseKeyDown(1));
        CHECK(maya.onEvent(mouseEvent(glitch::EMIE_LMOUSE_LEFT_UP)) && !maya.isMouseKeyDown(0));
        CHECK(maya.onEvent(mouseEvent(glitch::EMIE_RMOUSE_LEFT_UP)) && !maya.isMouseKeyDown(2));
        CHECK(!maya.onEvent(mouseEvent(glitch::EMIE_MOUSE_WHEEL)));
        glitch::SEvent keyboard = keyEvent(10, true);
        CHECK(!maya.onEvent(keyboard));
        maya.mouseKeyDown[1] = true;
        maya.allKeysUp();
        CHECK(!maya.isMouseKeyDown(1));

        // updateAnimationState: the distance between the camera and its target becomes the zoom
        maya.pos = vector3d<float>{10.0f, 0.0f, 0.0f};
        maya.target = vector3d<float>{};
        maya.updateAnimationState();
        CHECK(near(maya.currentZoom, 10.0f));

        // with no gesture the camera is placed currentZoom away from its target, along +x
        CCameraSceneNode camera(1, vector3d<float>{0.0f, 0.0f, 0.0f}, vector3d<float>{1.0f, 2.0f, 3.0f}, false);
        CSceneNodeAnimatorCameraMaya orbit(nullptr, -1500.0f, 200.0f, 1500.0f);
        orbit.animateNode(&camera, 0);
        CHECK(orbit.oldCamera == &camera);
        CHECK(near(camera.getTarget().X, 1.0f) && near(camera.getTarget().Y, 2.0f) && near(camera.getTarget().Z, 3.0f));
        CHECK(near(camera.getPosition().X, 81.0f) && near(camera.getPosition().Y, 2.0f) && near(camera.getPosition().Z, 3.0f));
        auto* clone = static_cast<CSceneNodeAnimatorCameraMaya*>(orbit.createClone());
        CHECK(clone->getRotateSpeed() == -1500.0f && clone->getZoomSpeed() == 200.0f && clone->getMoveSpeed() == 1500.0f);
        clone->drop();
    }

    // ---- collision response -------------------------------------------------------------------------------------------
    {
        TestSceneManager manager;
        manager.collisionManager = new CSceneCollisionManager(&manager, nullptr);
        auto* floor = new FakeSelector({makeFloor()});
        auto* node = new CEmptySceneNode(1);
        node->setPosition(vector3d<float>{0.0f, 5.0f, 0.0f});
        auto* animator = new CSceneNodeAnimatorCollisionResponse(&manager, floor, node, vector3d<float>{1.0f, 1.0f, 1.0f},
                                                                 vector3d<float>{0.0f, -10000.0f, 0.0f}, vector3d<float>{}, 0.001f);
        CHECK(animator->getType() == ESNAT_COLLISION_RESPONSE && static_cast<int>(animator->getType()) == 6);
        CHECK(floor->referenceCounter == 2 && animator->getWorld() == floor);
        CHECK(near(animator->getGravity().Y, -10.0f) && animator->getEllipsoidRadius().X == 1.0f);
        CHECK(near(animator->lastPosition.Y, 5.0f) && !animator->isCamera && !animator->isFalling());
        animator->animateNode(node, 100);  // gravity pulls the node down onto the floor
        CHECK(near(node->getPosition().Y, 1.001f, 1e-2f));
        CHECK(!animator->isFalling());
        CHECK(near(animator->lastPosition.Y, node->getPosition().Y));
        animator->animateNode(nullptr, 200);  // another node: only setNode runs
        CHECK(animator->node == nullptr);
        animator->setNode(node);

        animator->setSlidingSpeed(0.5f);
        animator->setEllipsoidTranslation(vector3d<float>{0.0f, 1.0f, 0.0f});
        CHECK(animator->getSlidingSpeed() == 0.5f && animator->getEllipsoidTranslation().Y == 1.0f);
        glitch::io::CAttributes attributes(nullptr);
        animator->serializeAttributes(&attributes, nullptr);
        CSceneNodeAnimatorCollisionResponse restored(&manager, nullptr, nullptr, vector3d<float>{}, vector3d<float>{}, vector3d<float>{}, 0.0f);
        restored.animateCameraTarget = false;
        restored.deserializeAttributes(&attributes, nullptr);
        CHECK(near(restored.radius.X, 1.0f) && near(restored.gravity.Y, -10.0f) && near(restored.translation.Y, 1.0f) &&
              restored.animateCameraTarget);

        auto* clone = static_cast<CSceneNodeAnimatorCollisionResponse*>(animator->createClone());
        CHECK(near(clone->getGravity().Y, -10.0f) && clone->getWorld() == floor && floor->referenceCounter == 3);
        clone->drop();
        // setWorld swaps the selectors and their uses
        auto* other = new FakeSelector({});
        animator->setWorld(other);
        CHECK(floor->referenceCounter == 1 && other->referenceCounter == 2 && animator->getWorld() == other);
        animator->drop();
        CHECK(other->referenceCounter == 1);
        other->drop();
        floor->drop();
        node->drop();
        manager.collisionManager->drop();
        manager.collisionManager = nullptr;
    }

    // ---- default animator factory -------------------------------------------------------------------------------------
    {
        TestSceneManager manager;
        CDefaultSceneNodeAnimatorFactory factory(&manager, nullptr);
        CHECK(factory.getCreatableSceneNodeAnimatorTypeCount() == 9);
        CHECK(factory.getCreateableSceneNodeAnimatorType(8) == ESNAT_CAMERA_MAYA && factory.getCreateableSceneNodeAnimatorType(9) == ESNAT_UNKNOWN);
        CHECK(std::strcmp(factory.getCreateableSceneNodeAnimatorTypeName(0u), "flyCircle") == 0);
        CHECK(std::strcmp(factory.getCreateableSceneNodeAnimatorTypeName(ESNAT_CAMERA_FPS), "cameraFPS") == 0);
        CHECK(factory.getCreateableSceneNodeAnimatorTypeName(9u) == nullptr && SceneNodeAnimatorTypeNames[9] == nullptr);
        CHECK(factory.getTypeFromName("rotation") == ESNAT_ROTATION && factory.getTypeFromName("cameraMaya") == ESNAT_CAMERA_MAYA);
        CHECK(factory.getTypeFromName("Rotation") == ESNAT_UNKNOWN && factory.getTypeFromName("nope") == ESNAT_UNKNOWN);

        auto* node = new CEmptySceneNode(1);
        ISceneNodeAnimator* rotation = factory.createSceneNodeAnimator(ESNAT_ROTATION, node);
        CHECK(rotation != nullptr && rotation->getType() == ESNAT_ROTATION && node->getAnimators().size() == 1);
        CHECK(near(static_cast<CSceneNodeAnimatorRotation*>(rotation)->rotation.X, 0.3f, 0.2f));
        ISceneNodeAnimator* deletion = factory.createSceneNodeAnimator("deletion", node);
        CHECK(deletion != nullptr && deletion->getType() == ESNAT_DELETION && node->getAnimators().size() == 2);
        CHECK(static_cast<CSceneNodeAnimatorDelete*>(deletion)->sceneManager == &manager);
        ISceneNodeAnimator* detached = factory.createSceneNodeAnimator(ESNAT_CAMERA_MAYA, nullptr);
        CHECK(detached != nullptr && detached->getType() == ESNAT_CAMERA_MAYA && node->getAnimators().size() == 2);
        CHECK(factory.createSceneNodeAnimator(ESNAT_UNKNOWN, node) == nullptr);
        CHECK(factory.createSceneNodeAnimator("nope", node) == nullptr);
        for (int type = 0; type < 9; ++type) {
            ISceneNodeAnimator* made = factory.createSceneNodeAnimator(static_cast<E_SCENE_NODE_ANIMATOR_TYPE>(type), nullptr);
            CHECK(made != nullptr && static_cast<int>(made->getType()) == type);
            if (made != nullptr) made->drop();
        }
        detached->drop();
        node->drop();
    }

    std::printf("%s\n", failures ? "scene_camera_animators: FAILED" : "scene_camera_animators: ok");
    return failures != 0;
}
