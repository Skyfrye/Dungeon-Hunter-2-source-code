// Checks for the scene-node animators CSceneNodeAnimatorDelete, FlyCircle, FlyStraight, FollowSpline, Rotation and Texture
// (scene/CSceneNodeAnimator*.hpp): the motion each one gives a node, the attribute round trips, createClone and the type tags.
#include <cmath>
#include <cstdio>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorDelete.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorFlyCircle.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorFlyStraight.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorFollowSpline.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorRotation.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorTexture.hpp"

using namespace glitch::scene;
using glitch::core::quaternion;
using glitch::core::vector3d;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

bool near(float a, float b, float tolerance = 1e-4f) {
    return std::fabs(a - b) <= tolerance;
}

bool nearVec(const vector3d<float>& a, float x, float y, float z, float tolerance = 1e-4f) {
    return near(a.X, x, tolerance) && near(a.Y, y, tolerance) && near(a.Z, z, tolerance);
}

class TestSceneManager : public CSceneManager {
public:
    TestSceneManager()
        : CSceneManager(nullptr, boost::intrusive_ptr<glitch::io::IFileSystem>(), nullptr, nullptr, nullptr) {}
    void registerSkinnedMesh(void*) override {}
};

}  // namespace

int main() {
    // ---- Delete -------------------------------------------------------------------------------------------------------
    {
        TestSceneManager manager;
        auto* node = new CEmptySceneNode(1);
        node->setPosition(vector3d<float>{0.0f, 0.0f, 0.0f});
        manager.rootNode->addChild(node);
        CSceneNodeAnimatorDelete animator(&manager, 100);
        CHECK(animator.getType() == ESNAT_DELETION && static_cast<int>(animator.getType()) == 5);
        CHECK(animator.deleteTime == 100 && animator.sceneManager == &manager);
        animator.animateNode(node, 100);  // deleteTime >= timeMs: still alive
        CHECK(manager.deletionQueue.empty());
        animator.animateNode(nullptr, 5000);  // a null node counts as alive
        CHECK(manager.deletionQueue.empty());
        animator.animateNode(node, 101);
        CHECK(manager.deletionQueue.size() == 1 && manager.deletionQueue[0] == node);
        manager.clearDeletionList();
        CHECK(manager.deletionQueue.empty());

        // The "IRR_Editor" attribute of the scene manager keeps nodes from being queued.
        auto* second = new CEmptySceneNode(2);
        manager.rootNode->addChild(second);
        manager.attributes.addBool("IRR_Editor", true, false);
        animator.animateNode(second, 101);
        CHECK(manager.deletionQueue.empty());
        manager.attributes.setAttribute("IRR_Editor", false);
        animator.animateNode(second, 101);
        CHECK(manager.deletionQueue.size() == 1);
        manager.clearDeletionList();

        CSceneNodeAnimatorDelete noManager(nullptr, 0);
        auto* third = new CEmptySceneNode(3);
        noManager.animateNode(third, 10);  // no scene manager: nothing happens
        third->drop();

        ISceneNodeAnimator* clone = animator.createClone();
        auto* cloneDelete = static_cast<CSceneNodeAnimatorDelete*>(clone);
        CHECK(cloneDelete->deleteTime == 100 && cloneDelete->sceneManager == &manager);
        clone->drop();
    }

    // ---- Rotation -----------------------------------------------------------------------------------------------------
    {
        auto* node = new CEmptySceneNode(1);
        CSceneNodeAnimatorRotation animator(0, quaternion{0.1f, 0.0f, 0.0f, 0.0f});
        CHECK(animator.getType() == ESNAT_ROTATION && static_cast<int>(animator.getType()) == 3);
        animator.animateNode(node, 0);  // no time passed: the node is untouched
        CHECK(node->getRotation().X == 0.0f && node->getRotation().W == 1.0f);
        animator.animateNode(node, 100);  // 100 ms = 10 steps of the increment
        CHECK(near(node->getRotation().X, 1.0f) && node->getRotation().W == 1.0f);
        CHECK(animator.lastTime == 100);
        animator.animateNode(node, 100);
        CHECK(near(node->getRotation().X, 1.0f));
        animator.animateNode(nullptr, 500);
        CHECK(animator.lastTime == 100);

        glitch::io::CAttributes attributes(nullptr);
        animator.serializeAttributes(&attributes, nullptr);
        CSceneNodeAnimatorRotation restored(7, quaternion{});
        restored.deserializeAttributes(&attributes, nullptr);
        CHECK(near(restored.rotation.X, 0.1f) && restored.rotation.W == 0.0f && restored.lastTime == 7);

        auto* clone = static_cast<CSceneNodeAnimatorRotation*>(animator.createClone());
        CHECK(clone->lastTime == 100 && near(clone->rotation.X, 0.1f));
        clone->drop();
        node->drop();
    }

    // ---- FlyStraight --------------------------------------------------------------------------------------------------
    {
        auto* node = new CEmptySceneNode(1);
        CSceneNodeAnimatorFlyStraight animator(vector3d<float>{0.0f, 0.0f, 0.0f}, vector3d<float>{10.0f, 0.0f, 0.0f}, 1000, false, 0);
        CHECK(animator.getType() == ESNAT_FLY_STRAIGHT && static_cast<int>(animator.getType()) == 1);
        CHECK(animator.wayLength == 10.0f && animator.vector.X == 1.0f && near(animator.timeFactor, 0.01f));
        animator.animateNode(node, 500);
        CHECK(nearVec(node->getPosition(), 5.0f, 0.0f, 0.0f));
        animator.animateNode(node, 1500);  // not looping: parked on the end point
        CHECK(nearVec(node->getPosition(), 10.0f, 0.0f, 0.0f));
        animator.loop = true;
        animator.animateNode(node, 1500);  // looping: 1500 mod 1000 = 500
        CHECK(nearVec(node->getPosition(), 5.0f, 0.0f, 0.0f));

        glitch::io::CAttributes attributes(nullptr);
        animator.serializeAttributes(&attributes, nullptr);
        CSceneNodeAnimatorFlyStraight restored(vector3d<float>{}, vector3d<float>{}, 1, false, 0);
        restored.deserializeAttributes(&attributes, nullptr);
        CHECK(nearVec(restored.end, 10.0f, 0.0f, 0.0f) && restored.timeForWay == 1000 && restored.loop);
        CHECK(near(restored.timeFactor, 0.01f));

        auto* clone = static_cast<CSceneNodeAnimatorFlyStraight*>(animator.createClone());
        CHECK(clone->timeForWay == 1000 && clone->loop && clone->startTime == 0 && nearVec(clone->end, 10.0f, 0.0f, 0.0f));
        clone->drop();
        node->drop();
    }

    // ---- FlyCircle ----------------------------------------------------------------------------------------------------
    {
        auto* node = new CEmptySceneNode(1);
        const float quarterTurn = 1.5707964f / 1000.0f;  // a quarter circle in 1000 ms
        CSceneNodeAnimatorFlyCircle animator(0, vector3d<float>{1.0f, 2.0f, 3.0f}, 2.0f, quarterTurn, vector3d<float>{0.0f, 1.0f, 0.0f});
        CHECK(animator.getType() == ESNAT_FLY_CIRCLE && static_cast<int>(animator.getType()) == 0);
        // direction (0, 1, 0): vecV = direction x (50, 0, 0) = (0, 0, -50) normalized, vecU = direction x vecV.
        CHECK(nearVec(animator.vecV, 0.0f, 0.0f, -1.0f) && nearVec(animator.vecU, -1.0f, 0.0f, 0.0f));
        animator.animateNode(node, 0);
        CHECK(nearVec(node->getPosition(), -1.0f, 2.0f, 3.0f));
        animator.animateNode(node, 1000);
        CHECK(nearVec(node->getPosition(), 1.0f, 2.0f, 1.0f));

        // A direction without a y component picks the other cross product axis.
        CSceneNodeAnimatorFlyCircle flat(0, vector3d<float>{}, 1.0f, 1.0f, vector3d<float>{1.0f, 0.0f, 0.0f});
        CHECK(nearVec(flat.vecV, 0.0f, 0.0f, 1.0f) || nearVec(flat.vecV, 0.0f, 0.0f, -1.0f));

        glitch::io::CAttributes attributes(nullptr);
        animator.serializeAttributes(&attributes, nullptr);
        CSceneNodeAnimatorFlyCircle restored(55, vector3d<float>{}, 0.0f, 0.0f, vector3d<float>{0.0f, 1.0f, 0.0f});
        restored.deserializeAttributes(&attributes, nullptr);
        CHECK(nearVec(restored.center, 1.0f, 2.0f, 3.0f) && near(restored.radius, 2.0f) && near(restored.speed, quarterTurn, 1e-9f));
        CHECK(restored.startTime == 0);  // deserialize resets the start time

        // A zero direction in the attributes becomes (0, 1, 0).
        glitch::io::CAttributes zero(nullptr);
        zero.addVector3d("Center", vector3d<float>{}, false);
        zero.addFloat("Radius", 1.0f, false);
        zero.addFloat("Speed", 1.0f, false);
        zero.addVector3d("Direction", vector3d<float>{}, false);
        CSceneNodeAnimatorFlyCircle fromZero(9, vector3d<float>{}, 0.0f, 0.0f, vector3d<float>{1.0f, 0.0f, 0.0f});
        fromZero.deserializeAttributes(&zero, nullptr);
        CHECK(nearVec(fromZero.direction, 0.0f, 1.0f, 0.0f));

        auto* clone = static_cast<CSceneNodeAnimatorFlyCircle*>(animator.createClone());
        CHECK(clone->startTime == 0 && near(clone->radius, 2.0f) && nearVec(clone->vecU, -1.0f, 0.0f, 0.0f));
        clone->drop();
        node->drop();
    }

    // ---- FollowSpline -------------------------------------------------------------------------------------------------
    {
        auto* node = new CEmptySceneNode(1);
        const glitch::core::svector<vector3d<float>> points = {{0.0f, 0.0f, 0.0f}, {1.0f, 0.0f, 0.0f}, {2.0f, 0.0f, 0.0f}, {3.0f, 0.0f, 0.0f}};
        CSceneNodeAnimatorFollowSpline animator(0, points, 1.0f, 0.5f);
        CHECK(animator.getType() == ESNAT_FOLLOW_SPLINE && static_cast<int>(animator.getType()) == 2);
        animator.animateNode(node, 0);
        CHECK(nearVec(node->getPosition(), 0.0f, 0.0f, 0.0f));
        animator.animateNode(node, 1000);  // one second at speed 1 is the next point
        CHECK(nearVec(node->getPosition(), 1.0f, 0.0f, 0.0f));
        animator.animateNode(node, 500);  // halfway between the first two points (the curve bulges by the tangents)
        CHECK(nearVec(node->getPosition(), 0.25f, 0.0f, 0.0f));
        animator.animateNode(node, 4000);  // four seconds: the indices wrap to point 0
        CHECK(nearVec(node->getPosition(), 0.0f, 0.0f, 0.0f));

        CSceneNodeAnimatorFollowSpline single(0, {{4.0f, 5.0f, 6.0f}}, 1.0f, 0.5f);
        single.animateNode(node, 1234);
        CHECK(nearVec(node->getPosition(), 4.0f, 5.0f, 6.0f));
        CSceneNodeAnimatorFollowSpline none(0, {}, 1.0f, 0.5f);
        none.animateNode(node, 1234);  // no points: nothing happens
        CHECK(nearVec(node->getPosition(), 4.0f, 5.0f, 6.0f));

        glitch::io::CAttributes attributes(nullptr);
        animator.serializeAttributes(&attributes, nullptr);
        CSceneNodeAnimatorFollowSpline restored(0, {}, 0.0f, 0.0f);
        restored.deserializeAttributes(&attributes, nullptr);
        CHECK(restored.points.size() == 4 && near(restored.speed, 1.0f) && near(restored.tightness, 0.5f));
        CHECK(nearVec(restored.points[3], 3.0f, 0.0f, 0.0f));
        CHECK(attributes.existsAttribute("\x01") && attributes.existsAttribute("\x04") && !attributes.existsAttribute("\x05"));

        // Flag 2 of the options adds a terminating zero point on writing and removes up to two trailing zero points on reading.
        glitch::io::SAttributeReadWriteOptions options{2};
        glitch::io::CAttributes withFlag(nullptr);
        animator.serializeAttributes(&withFlag, &options);
        CHECK(withFlag.existsAttribute("\x05") && !withFlag.existsAttribute("\x06"));
        CSceneNodeAnimatorFollowSpline trimmed(0, {}, 0.0f, 0.0f);
        trimmed.deserializeAttributes(&withFlag, &options);
        CHECK(trimmed.points.size() == 4);
        CSceneNodeAnimatorFollowSpline untrimmed(0, {}, 0.0f, 0.0f);
        untrimmed.deserializeAttributes(&withFlag, nullptr);
        CHECK(untrimmed.points.size() == 5);

        auto* clone = static_cast<CSceneNodeAnimatorFollowSpline*>(animator.createClone());
        CHECK(clone->points.size() == 4 && near(clone->speed, 1.0f) && near(clone->tightness, 0.5f) && clone->startTime == 0);
        clone->drop();
        node->drop();
    }

    // ---- Texture ------------------------------------------------------------------------------------------------------
    {
        CSceneNodeAnimatorTexture animator({}, 100, true, 50);
        CHECK(animator.getType() == ESNAT_TEXTURE && static_cast<int>(animator.getType()) == 4);
        CHECK(animator.timePerFrame == 100 && animator.startTime == 50 && animator.endTime == 50 && animator.loop);
        animator.updateTime(10);
        animator.clearTextures();
        animator.animateNode(nullptr, 1000);  // no textures: nothing is touched (the node is not even looked at)

        glitch::io::CAttributes attributes(nullptr);
        animator.serializeAttributes(&attributes, nullptr);
        CSceneNodeAnimatorTexture restored({}, 1, false, 0);
        restored.deserializeAttributes(&attributes, nullptr);
        CHECK(restored.timePerFrame == 100 && restored.loop && restored.textures.empty());

        auto* clone = static_cast<CSceneNodeAnimatorTexture*>(animator.createClone());
        CHECK(clone->timePerFrame == 100 && clone->startTime == 50 && clone->loop);
        clone->drop();
    }

    std::printf("%s\n", failures ? "scene_node_animators: FAILED" : "scene_node_animators: ok");
    return failures != 0;
}
