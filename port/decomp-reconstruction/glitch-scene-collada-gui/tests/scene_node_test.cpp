// Tests for the canonical glitch::scene::ISceneNode (scene/ISceneNode.hpp, src/scene/ISceneNode.cpp). ISceneNode is abstract
// (render and getBoundingBox are pure), so the checks run on a small concrete node. Nodes are reference counted objects and are
// created with new: a child that is removed is dropped, which would delete a stack object.
#include <cstdio>
#include <cstring>

#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

using namespace glitch::scene;

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL: %s\n", what);
        ++failures;
    }
}

class TestNode : public ISceneNode {
public:
    explicit TestNode(int nodeId = 0)
        : ISceneNode(nodeId, glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f}, glitch::core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                     glitch::core::vector3d<float>{1.0f, 1.0f, 1.0f}) {}
    void render(void*) override { ++renders; }
    const glitch::core::aabbox3d<float>& getBoundingBox() const override { return box; }
    int notifications = 0;
    bool lastNotification = false;
    void notifyVisibilityChanged(bool visibleInParent) override {
        ++notifications;
        lastNotification = visibleInParent;
        ISceneNode::notifyVisibilityChanged(visibleInParent);
    }
    int renders = 0;
    glitch::core::aabbox3d<float> box{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
};

class TestAnimator : public ISceneNodeAnimator {
public:
    void animateNode(ISceneNode*, std::uint32_t timeMs) override {
        ++animated;
        lastTime = timeMs;
    }
    ISceneNodeAnimator* createClone() override { return nullptr; }
    void onBind(ISceneNode* node) override {
        ++bound;
        boundTo = node;
    }
    void onUnbind(ISceneNode*) override { ++unbound; }
    int animated = 0;
    int bound = 0;
    int unbound = 0;
    std::uint32_t lastTime = 0;
    ISceneNode* boundTo = nullptr;
};

void testDefaults() {
    auto* node = new TestNode(3);
    check(node->getID() == 3, "the constructor stores the id");
    node->setID(42);
    check(node->getID() == 42, "setID / getID");
    check(std::strcmp(node->getUID(), "") == 0 && std::strcmp(node->getScopeID(), "") == 0, "the base uid and scope id are empty (0x596fe4)");
    check(node->getRenderVertexCount(nullptr) == 0xffffffffu, "getRenderVertexCount returns -1 (0x596e24)");
    check(node->getMaterialCount() == 0 && node->getMaterial(0).get() == nullptr, "the base node has no materials");
    check(node->getAnimators().empty() && node->getBindedAnimators().empty() && node->getChildren().empty(), "the three lists start empty");
    check(node->getTriangleSelector() == nullptr, "no triangle selector");
    check(node->getType() == ESNT_UNKNOWN, "getType is 'unkn' (0x6e6b6e75)");
    check(node->clone() == nullptr, "the base clone returns null");
    // The constructor stores 0x60f (0x5990c0); its closing updateAbsolutePosition(false) rebuilds the relative matrix, which clears
    // the scale / rotation / position-changed bits, and then raises the absolute-changed and box-dirty bits.
    check(node->flags == (ESNF_VISIBLE | ESNF_ANIMATE | ESNF_ANIMATE_ONLY_VISIBLE | ESNF_ABSOLUTE_CHANGED | ESNF_BOX_DIRTY),
          "the flags after construction");
    check(node->getParent() == nullptr, "no parent");
    check(node->automaticCulling == 0, "automatic culling starts at 0");
    node->drop();
}

void testFlagsAndSmallMembers() {
    auto* node = new TestNode();
    node->flags = 0x1;
    check(!node->isDebugObject(), "debug bit clear");
    node->setIsDebugObject(true);
    check(node->isDebugObject() && node->flags == 0x81, "bit 7 is the debug-object flag and bit 0 is untouched");
    node->setIsDebugObject(false);
    check(!node->isDebugObject() && node->flags == 0x1, "clearing the debug bit");

    int data = 0;
    node->setGameData(&data);
    check(node->getGameData() == &data, "game data (+0x124)");
    node->setCameraOffset(2.5f);
    check(node->getCameraOffset() == 2.5f, "camera offset (+0x128)");
    node->setRenderingLayer(7);
    check(node->getRenderingLayer() == 7, "rendering layer (+0x12c)");
    node->setAutomaticCulling(ECULL_FRUSTUM_BOX);
    check(node->automaticCulling == ECULL_FRUSTUM_BOX, "setAutomaticCulling stores the mode (0x59719c)");
    node->setName("hero");
    check(std::strcmp(node->getName(), "hero") == 0, "setName / getName");
    node->setName(glitch::core::stringc("villain"));
    check(std::strcmp(node->getName(), "villain") == 0, "setName(std::string)");
    node->drop();
}

void testTransforms() {
    auto* node = new TestNode();
    check(node->getAbsoluteTransformation().M[0] == 1.0f && node->getAbsoluteTransformation().M[12] == 0.0f,
          "the absolute matrix starts as identity");
    node->setPosition(glitch::core::vector3d<float>{1.0f, 2.0f, 3.0f});
    check((node->flags & ESNF_POSITION_CHANGED) != 0, "setPosition raises the position-changed bit (0x59712c)");
    check(node->getPosition().Y == 2.0f, "getPosition");
    const auto& relative = node->getRelativeTransformation();
    check(relative.M[12] == 1.0f && relative.M[13] == 2.0f && relative.M[14] == 3.0f, "the relative matrix carries the translation");
    check((node->flags & ESNF_POSITION_CHANGED) == 0 && (node->flags & ESNF_RELATIVE_UPDATED) != 0,
          "getRelativeTransformation clears the changed bits and sets bit 4 (0x598908)");
    node->updateAbsolutePosition(false);
    check(node->getAbsoluteTransformation().M[12] == 1.0f && node->getAbsoluteTransformation().M[14] == 3.0f,
          "without a parent the absolute matrix is the relative one");
    check(node->getAbsolutePosition().X == 1.0f, "getAbsolutePosition reads the translation column");

    auto* child = new TestNode(1);
    node->addChild(child);
    child->setPosition(glitch::core::vector3d<float>{10.0f, 0.0f, 0.0f});
    child->updateAbsolutePosition(false);
    check(child->getAbsolutePosition().X == 11.0f && child->getAbsolutePosition().Y == 2.0f,
          "a child's absolute position is composed with its parent's");
    child->drop();
    node->drop();
}

void testChildren() {
    auto* parent = new TestNode(1);
    auto* a = new TestNode(2);
    auto* b = new TestNode(3);
    check(a->referenceCounter == 1, "a new node holds one use");
    parent->addChild(a);
    parent->addChild(b);
    check(parent->getChildren().size() == 2 && !parent->getChildren().empty(), "two children");
    check(a->getParent() == parent && b->getParent() == parent, "the children know their parent");
    check(a->referenceCounter == 2, "addChild takes a use on the child (0x598864)");
    auto it = parent->getChildren().begin();
    check(*it == a, "children keep insertion order");
    ++it;
    check(*it == b, "second child");

    check(parent->removeChild(a), "removeChild reports success");
    check(a->getParent() == nullptr && a->referenceCounter == 1, "removeChild drops the parent's use");
    check(parent->getChildren().size() == 1, "one child left");
    check(!parent->removeChild(a), "removing a non-child fails");

    // Adding a child that already has a parent moves it.
    auto* other = new TestNode(4);
    other->addChild(b);
    check(b->getParent() == other && parent->getChildren().empty() && other->getChildren().size() == 1, "re-parenting detaches first (remove())");
    check(b->referenceCounter == 2, "one use for the test, one for the new parent");

    other->removeAll();
    check(other->getChildren().empty() && b->getParent() == nullptr && b->referenceCounter == 1, "removeAll drops every child (0x5987e8)");

    parent->addChild(a);
    a->remove();
    check(parent->getChildren().empty() && a->getParent() == nullptr, "remove() detaches from the parent (0x59706c)");

    // A node never becomes its own child.
    parent->addChild(parent);
    check(parent->getChildren().empty(), "addChild(this) is ignored");

    a->drop();
    b->drop();
    other->drop();
    parent->drop();
}

void testVisibility() {
    auto* parent = new TestNode(1);
    auto* child = new TestNode(2);
    parent->addChild(child);
    child->notifications = 0;
    parent->setVisible(false);
    check((parent->flags & ESNF_VISIBLE) == 0 && !parent->visible, "setVisible(false) clears the visible bit");
    check(child->notifications == 1 && !child->lastNotification, "the children are told (notifyVisibilityChanged)");
    check((child->flags & ESNF_VISIBLE) == 0, "the child is not effectively visible while its parent is hidden");
    parent->setVisible(true);
    check((parent->flags & ESNF_VISIBLE) != 0 && child->notifications == 2 && child->lastNotification, "showing again re-notifies");
    child->drop();
    parent->drop();
}

void testAnimators() {
    auto* node = new TestNode();
    auto* animator = new TestAnimator();
    node->addAnimator(animator);
    check(animator->referenceCounter == 2, "addAnimator takes a use (0x598770)");
    check(animator->bound == 1 && animator->boundTo == node, "addAnimator calls onBind");
    check(!node->getAnimators().empty(), "the animator list has an entry");

    node->onAnimate(500);
    check(animator->animated == 1 && animator->lastTime == 500, "onAnimate runs the animators (0x596d6c)");

    node->flags &= ~static_cast<std::uint32_t>(ESNF_ANIMATE);
    node->onAnimate(600);
    check(animator->animated == 1, "onAnimate does nothing while the animate bit is clear");
    node->flags |= ESNF_ANIMATE;

    node->removeAnimator(animator);
    check(animator->unbound == 1 && animator->referenceCounter == 1 && node->getAnimators().empty(),
          "removeAnimator calls onUnbind and drops the node's use (0x5986e8)");

    node->addAnimator(animator);
    node->removeAnimators();
    check(animator->unbound == 2 && node->getAnimators().empty() && animator->referenceCounter == 1, "removeAnimators clears the list (0x598658)");

    node->addBindedAnimator(animator);
    node->addBindedAnimator(animator);
    int binded = 0;
    for (auto it = node->getBindedAnimators().begin(); it != node->getBindedAnimators().end(); ++it) ++binded;
    check(binded == 1, "addBindedAnimator ignores a duplicate (0x597d58)");
    node->removeBindedAnimators();
    check(node->getBindedAnimators().empty(), "removeBindedAnimators clears the list");

    animator->drop();
    node->drop();
}

void testSearches() {
    auto* root = new TestNode(1);
    auto* child = new TestNode(2);
    auto* grandchild = new TestNode(3);
    root->addChild(child);
    child->addChild(grandchild);
    root->setName("root");
    child->setName("Child");
    grandchild->setName("leaf");
    check(root->getSceneNodeFromName("leaf") == grandchild, "getSceneNodeFromName searches the subtree");
    check(root->getSceneNodeFromName("missing") == nullptr, "an unknown name gives null");
    check(root->getSceneNodeFromName("child") == child, "the name search is case-insensitive (strcasecmp)");
    check(root->getSceneNodeFromType(ESNT_ANY) != nullptr, "'any_' matches every node (0x596f6c)");
    check(root->getSceneNodeFromType(ESNT_CAMERA) == nullptr, "no camera in the subtree");
    glitch::core::svector<ISceneNode*> found;
    root->getSceneNodesFromType(ESNT_UNKNOWN, found);
    check(found.size() == 3, "getSceneNodesFromType collects the node and its descendants");
    grandchild->drop();
    child->drop();
    root->drop();
}

}  // namespace

int main() {
    testDefaults();
    testFlagsAndSmallMembers();
    testTransforms();
    testChildren();
    testVisibility();
    testAnimators();
    testSearches();
    std::printf("%s\n", failures ? "scene_node: FAILED" : "scene_node: ok");
    return failures != 0;
}
