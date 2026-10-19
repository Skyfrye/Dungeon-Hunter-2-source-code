// Checks for the canonical glitch::scene animator, timeline, camera, empty, mesh and scene-manager classes, and for the
// CLightSceneNode / CBillboardSceneNode stand-ins that have no canonical header yet. The CBatchMesh / CBatchSceneNode checks
// that used to be here are in scene_batch_test.cpp.
#include "glitch-scene-collada-gui/scene_nodes.hpp"
#include "glitch-video/null_driver.hpp"  // the billboard's constructor needs a driver (createBuffer)

#include <cstdio>

using namespace glitch::scene;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// ISceneNodeAnimator is abstract: animateNode and createClone are pure.
class TestAnimator : public ISceneNodeAnimator {
public:
    void animateNode(ISceneNode*, std::uint32_t) override {}
    ISceneNodeAnimator* createClone() override { return nullptr; }
};

// ITimelineController is abstract: the clip interface is pure.
class TestTimeline : public ITimelineController {
public:
    float setClip(std::int32_t) override { return 0.0f; }
    std::int32_t setClip(const char*) override { return -1; }
    std::int32_t getClipIndex(const char*) const override { return -1; }
    std::int32_t getClipCount() const override { return 0; }
    std::uint32_t getClipStart(std::int32_t) const override { return 0; }
    std::uint32_t getClipEnd(std::int32_t) const override { return 0; }
    std::uint32_t getClipLength(std::int32_t) const override { return 0; }
    std::uint32_t getCurrentClipStart() const override { return 0; }
    std::uint32_t getCurrentClipEnd() const override { return 0; }
    std::uint32_t getCurrentClipLength() const override { return 0; }
    std::int32_t getCurrentClipIndex() const override { return -1; }
    const char* getClipName(std::int32_t) const override { return nullptr; }
    void setLoop(bool) override {}
    void setRange(std::int32_t, std::int32_t, bool) override {}
};

// CSceneManager is abstract (registerSkinnedMesh is pure) and has no default constructor.
class TestSceneManager : public CSceneManager {
public:
    TestSceneManager()
        : CSceneManager(nullptr, boost::intrusive_ptr<glitch::io::IFileSystem>(), nullptr, nullptr, nullptr) {}
    void registerSkinnedMesh(void*) override {}
};

}  // namespace

int main() {
    TestAnimator animator;
    CHECK(animator.getType() == ESNAT_UNKNOWN);
    CHECK(static_cast<std::uint32_t>(animator.getType()) == 10);
    CHECK(!animator.isEventReceiverEnabled());
    CHECK(animator.getLength() == 0);
    CHECK(animator.getTimelineCtrl() == nullptr);
    animator.updateTime(5);
    animator.computeAnimationValues(5);
    animator.applyAnimationValues(5);
    CHECK(!animator.onEvent(glitch::SEvent()));

    {
        auto* empty = new CEmptySceneNode(4);
        CHECK(empty->getType() == ESNT_EMPTY && static_cast<std::uint32_t>(empty->getType()) == 0x79746d65u);
        CHECK(empty->getID() == 4);
        CHECK(empty->boundingBox.MinEdge.X == -1.0f && empty->boundingBox.MaxEdge.Z == 1.0f);
        CHECK(&empty->getBoundingBox() == &empty->boundingBox);
        CHECK(empty->automaticCulling == 0);
        empty->render(nullptr);
        ISceneNode* copy = empty->clone();
        CHECK(copy != nullptr && copy->getType() == ESNT_EMPTY && copy->getID() == 4);
        if (copy != nullptr) copy->drop();
        empty->drop();
    }

    CCameraSceneNode camera(0, glitch::core::vector3d<float>(), glitch::core::vector3d<float>(), false);
    // ICameraSceneNode is abstract (it has pure slots), so its default getTargetNode is reached through a camera.
    const ICameraSceneNode& base = camera;
    CHECK(base.getTargetNode() == nullptr);
    CHECK(!base.isOrthogonal());
    CHECK(camera.getType() == ESNT_CAMERA && static_cast<std::uint32_t>(camera.getType()) == 0x5f6d6163u);
    CHECK(camera.isInputReceiverEnabled());  // the constructor sets inputReceiverEnabled (+0x165 = 1)
    camera.setInputReceiverEnabled(false);
    CHECK(!camera.isInputReceiverEnabled());
    camera.setInputReceiverEnabled(true);
    CHECK(camera.isInputReceiverEnabled());
    camera.frustum.box.MinEdge.X = 1.0f;  // the camera's box is the frustum's box
    CHECK(camera.getBoundingBox().MinEdge.X == 1.0f);

    {
        // CSceneManager's nested render-list entries (ctors 0x350c98, 0x350cf4, 0x354e8c).
        auto* node = new CEmptySceneNode(1);  // box (-1,-1,-1)..(1,1,1)
        node->absoluteTransform.M[12] = 3.0f;
        node->absoluteTransform.M[13] = 4.0f;
        node->absoluteTransform.M[14] = 0.0f;
        node->setRenderingLayer(7);
        node->setCameraOffset(2.0f);
        const glitch::core::vector3d<float> origin{0.0f, 0.0f, 0.0f};
        // Squared distance 25 minus half the squared box extent (12 / 2 = 6): 19.
        CSceneManager::SDistanceNodeEntry distance(node, origin, nullptr);
        CHECK(distance.node == node);
        CHECK(distance.distance > 18.999 && distance.distance < 19.001);
        // 0x7fffffff asks the node for its rendering layer.
        CSceneManager::SDefaultNodeEntry fixedOrder(node, boost::intrusive_ptr<glitch::video::CMaterial>(), nullptr, 5);
        CHECK(fixedOrder.sortOrder == 5);
        CSceneManager::SDefaultNodeEntry nodeOrder(node, boost::intrusive_ptr<glitch::video::CMaterial>(), nullptr, 0x7fffffff);
        CHECK(nodeOrder.sortOrder == 7);
        CHECK(nodeOrder < fixedOrder && !(fixedOrder < nodeOrder));  // larger sort order first
        // Distance 25 plus the camera offset 2.
        CSceneManager::STransparentNodeEntry transparent(node, origin, boost::intrusive_ptr<glitch::video::CMaterial>(), nullptr,
                                                         nullptr, 9);
        CHECK(transparent.sortOrder == 9);
        CHECK(transparent.distance > 26.999f && transparent.distance < 27.001f);
        node->drop();
    }

    CLightSceneNode light(false);
    CHECK(light.getType() == 0x7468676cu);
    {
        auto* mesh = new CMeshSceneNode(boost::intrusive_ptr<IMesh>(), 1, glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f},
                                        glitch::core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                                        glitch::core::vector3d<float>{1.0f, 1.0f, 1.0f});
        CHECK(mesh->getType() == ESNT_MESH && static_cast<std::uint32_t>(mesh->getType()) == 0x6873656du);
        CHECK(mesh->getMesh().get() == nullptr);
        CHECK(mesh->automaticCulling == 2);
        mesh->drop();
    }
    {
        TestSceneManager manager;
        CSceneManagerRootNode* root = static_cast<CSceneManagerRootNode*>(manager.rootNode);
        CHECK(root != nullptr && root->getType() == ESNT_SCENE_MANAGER_ROOT);
        CHECK(static_cast<std::uint32_t>(root->getType()) == 0x72676d73u);
        CHECK(root->getID() == -1);
        CHECK(root->sceneManager == &manager);
    }

    TestSceneManager manager;
    CHECK(manager.hierarchyChanged && manager.visibilityChanged);  // both flags start set (the constructor, 0x58d908)
    manager.hierarchyChanged = manager.visibilityChanged = false;
    manager.notifyVisibilityChanged();
    CHECK(manager.visibilityChanged && !manager.hierarchyChanged);
    manager.visibilityChanged = false;
    manager.notifyHierarchyChanged();
    CHECK(manager.hierarchyChanged && manager.visibilityChanged);
    CHECK(manager.createMeshWriter(0) == nullptr);

    // The billboard's constructor attaches one vertex stream table over its four vertices through the driver's
    // createBuffer, so it needs a driver: CNullDriver stands in for the video driver, as it does in the
    // glitch-video tests. The count word and the corners' colours (0 and 2 the second colour, 1 and 3 the first)
    // are what that constructor writes.
    glitch::video::CNullDriver billboardDriver(static_cast<glitch::IDevice*>(nullptr));
    const glitch::video::SColor billboardTop{0xFF112233u};
    const glitch::video::SColor billboardBottom{0xFF445566u};
    CBillboardSceneNode billboard(&billboardDriver, 0, glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f},
                                  glitch::core::dimension2d<float>{1.0f, 1.0f}, billboardTop, billboardBottom);
    CHECK(billboard.getType() == 0x6c6c6962u);
    CHECK(billboard.getMaterialCount() == 1);
    CHECK(billboard.vertexStreams.get() != nullptr);
    CHECK(billboard.vertexStreams->m_field08 == 4);
    CHECK(billboard.vertices[0].color.color == billboardBottom.color && billboard.vertices[2].color.color == billboardBottom.color);
    CHECK(billboard.vertices[1].color.color == billboardTop.color && billboard.vertices[3].color.color == billboardTop.color);
    billboard.size.Width = 3.0f;
    billboard.size.Height = 4.0f;
    CHECK(billboard.getSize().Width == 3.0f && billboard.getSize().Height == 4.0f);

    // The mesh base reports no user property.
    {
        auto* batch = new CBatchMesh();
        const IMesh& meshBase = *batch;
        CHECK(meshBase.getUserProperty() == nullptr);
        batch->drop();
    }

    {
        TestTimeline timeline;
        CHECK(timeline.jumpTo(42) == 0.0f);
        CHECK(timeline.currentTimeMs == 42);  // the base jumpTo stores the time at +0x04
        CHECK(!timeline.getLoop());
        CHECK(timeline.getScale() == 1.0f);
        timeline.setScale(2.0f);
        CHECK(timeline.getScale() == 1.0f);
        CHECK(timeline.update(7) == 0);
    }

    // Scene manager colour and rendered-node words.
    TestSceneManager sceneMgr;
    sceneMgr.setShadowColor(glitch::video::SColor{0x44u});
    CHECK(sceneMgr.shadowColors[3].color == 0x44u);
    CHECK(sceneMgr.setSceneNodeRenderPass(5) == 9);  // the constructor value (+0x174)
    CHECK(sceneMgr.setSceneNodeRenderPass(6) == 5);
    glitch::video::SColorf ambient{0.1f, 0.2f, 0.3f, 1.0f};
    sceneMgr.setAmbientLight(ambient);
    CHECK(sceneMgr.ambientLight.b == 0.3f);
    int nodeMarker = 0;
    sceneMgr.currentUserData = &nodeMarker;
    sceneMgr.currentSortOrder = 9;
    sceneMgr.currentNode = reinterpret_cast<ISceneNode*>(static_cast<std::uintptr_t>(4));
    void* renderedUserData = nullptr;
    std::int32_t renderedSortOrder = 0;
    CHECK(sceneMgr.getCurrentRenderedNode(&renderedUserData, &renderedSortOrder) == 4);
    CHECK(renderedUserData == &nodeMarker && renderedSortOrder == 9);
    CHECK(sceneMgr.getCurrentRenderedNode(nullptr, nullptr) == 4);

    std::printf("%s\n", failures ? "scene_nodes: FAILED" : "scene_nodes: ok");
    return failures != 0;
}
