// Checks for the glitch::scene::CSceneManager frame path and its helpers (src/scene/CSceneManager_render.cpp, _virtuals.cpp and
// _scene_io.cpp): the render list entries and their order, registerNodeForRendering, renderList (the sliding current / next node
// words), registerSceneNodes, the constructor's default factories, loader and mesh cache, getMesh, update and createNewSceneManager;
// CDefaultSceneNodeFactory and CColladaBinaryFileLoader. Exit status is non-zero when a check fails.
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "glitch-core-io/core/sort.hpp"
#include "glitch-scene-collada-gui/scene/CColladaBinaryFileLoader.hpp"
#include "glitch-scene-collada-gui/scene/CDefaultSceneNodeFactory.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMeshCache.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/SAnimatedMesh.hpp"
#include "glitch-scene-collada-gui/scene/SceneFactories.hpp"
#include "glitch-video/texture.hpp"

using namespace glitch::scene;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

class TestSceneManager : public CSceneManager {
public:
    TestSceneManager()
        : CSceneManager(nullptr, boost::intrusive_ptr<glitch::io::IFileSystem>(), nullptr, nullptr, nullptr) {}
};

// A node that logs its render calls and what the manager says about the current and the next node at that moment.
struct RenderRecord {
    int id;
    std::uintptr_t userData;
    std::uintptr_t current;
    std::uintptr_t next;
    std::int32_t order;
};

class RecordingNode : public CEmptySceneNode {
public:
    RecordingNode(int nodeId, CSceneManager* manager, std::vector<RenderRecord>* records) : CEmptySceneNode(nodeId), manager(manager), records(records) {}
    void render(void* userData) override {
        void* currentData = nullptr;
        void* nextData = nullptr;
        std::int32_t order = -1;
        std::int32_t nextOrder = -1;
        const std::uintptr_t current = manager->getCurrentRenderedNode(&currentData, &order);
        const std::uintptr_t next = manager->getNextRenderedNode(&nextData, &nextOrder);
        records->push_back({getID(), reinterpret_cast<std::uintptr_t>(userData), current, next, order});
        CHECK(currentData == userData);
    }
    int onRegisterSceneNode() override {
        ++registerCalls;
        return answer;
    }
    CSceneManager* manager;
    std::vector<RenderRecord>* records;
    int registerCalls = 0;
    int answer = 1;
};

// A loader that accepts ".foo" and makes a one-frame animated mesh.
class FooLoader : public IMeshLoader {
public:
    bool isALoadableFileExtension(const char* fileName) const override { return std::strstr(fileName, ".foo") != nullptr; }
    boost::intrusive_ptr<IAnimatedMesh> createMesh(glitch::io::IReadFile*) override {
        ++created;
        return boost::intrusive_ptr<IAnimatedMesh>(new SAnimatedMesh(boost::intrusive_ptr<IMesh>(), 0), true);
    }
    int created = 0;
};

// A read file that only knows its name.
class NameFile : public glitch::io::IReadFile {
public:
    explicit NameFile(const char* fileName) : name(fileName) {}
    std::int32_t read(void*, std::uint32_t) override { return 0; }
    bool readAsync(void*, std::uint32_t, glitch::io::ReadAsyncCallBack, void*) override { return false; }
    bool readAsync(void*, std::uint32_t, long, glitch::io::ReadAsyncCallBack, void*) override { return false; }
    bool seek(long, bool) override { ++seeks; return true; }
    glitch::io::IReadFile* clone() const override { return nullptr; }
    long getSize() const override { return 0; }
    long getPos() const override { return 0; }
    const char* getFileName() const override { return name.c_str(); }
    const char* getFullPath() const override { return name.c_str(); }
    std::string name;
    int seeks = 0;
};

}  // namespace

int main() {
    TestSceneManager* manager = new TestSceneManager();
    std::vector<RenderRecord> records;

    // The constructor's defaults: a mesh cache, a collision manager, the Collada loader, both default factories, the shadow colour.
    CHECK(manager->meshCache != nullptr && manager->meshCache->getMeshCount() == 0);
    CHECK(manager->collisionManager != nullptr);
    CHECK(manager->externalMeshLoaders.size() == 1);
    CHECK(manager->externalMeshLoaders[0]->isALoadableFileExtension("scene.bdae"));
    CHECK(!manager->externalMeshLoaders[0]->isALoadableFileExtension("scene.dae"));
    CHECK(manager->sceneNodeFactories.size() == 1 && manager->sceneNodeAnimatorFactories.size() == 1);
    CHECK(manager->shadowColors[0].color == 0x96000000u && manager->shadowColors[3].color == 0x96000000u);
    CHECK(manager->renderPass == ESNRP_NONE && manager->cullingEnabled);

    // The default node factory: sixteen types, names and types by index, by type and by name.
    CDefaultSceneNodeFactory* factory = static_cast<CDefaultSceneNodeFactory*>(manager->sceneNodeFactories[0]);
    CHECK(factory->getCreatableSceneNodeTypeCount() == 16);
    CHECK(std::strcmp(factory->getCreateableSceneNodeTypeName(0u), "cube") == 0);
    CHECK(std::strcmp(factory->getCreateableSceneNodeTypeName(15u), "cameraFPS") == 0);
    CHECK(factory->getCreateableSceneNodeTypeName(16u) == nullptr);
    CHECK(factory->getCreateableSceneNodeType(16u) == ESNT_UNKNOWN);
    CHECK(factory->getCreateableSceneNodeType(10u) == ESNT_CAMERA);
    CHECK(factory->getTypeFromName("camera") == ESNT_CAMERA && factory->getTypeFromName("nothing") == ESNT_UNKNOWN);
    CHECK(std::strcmp(factory->getCreateableSceneNodeTypeName(ESNT_BILLBOARD), "billBoard") == 0);
    CHECK(factory->getCreateableSceneNodeTypeName(ESNT_BATCH) == nullptr);
    CHECK(std::strcmp(manager->getSceneNodeTypeName(ESNT_LIGHT), "light") == 0);
    {
        ISceneNode* parent = manager->addSceneNode("empty", nullptr);  // under the root
        CHECK(parent != nullptr && parent->getType() == ESNT_EMPTY && parent->getParent() == manager->rootNode);
        CHECK(manager->addSceneNode("shadowVolume", nullptr) == nullptr);   // no case in the original
        CHECK(manager->addSceneNode("unknown thing", nullptr) == nullptr);
        ISceneNode* light = factory->addSceneNode(ESNT_LIGHT, parent);
        CHECK(light != nullptr && light->getType() == ESNT_LIGHT && light->getParent() == parent);
    }

    // registerNodeForRendering: cameras refuse a node listed twice; the passes go to their lists.
    auto* a = new RecordingNode(1, manager, &records);
    auto* b = new RecordingNode(2, manager, &records);
    auto* c = new RecordingNode(3, manager, &records);
    boost::intrusive_ptr<glitch::video::CMaterial> noMaterial;
    CHECK(manager->registerNodeForRendering(a, noMaterial, nullptr, ESNRP_CAMERA, nullptr, 0x7FFFFFFF));
    CHECK(!manager->registerNodeForRendering(a, noMaterial, nullptr, ESNRP_CAMERA, nullptr, 0x7FFFFFFF));
    CHECK(manager->registerNodeForRendering(b, noMaterial, nullptr, ESNRP_CAMERA, nullptr, 0x7FFFFFFF));
    CHECK(manager->cameraNodes.size() == 2);
    CHECK(!manager->registerNodeForRendering(a, noMaterial, nullptr, 9, nullptr, 0));   // no such pass
    CHECK(manager->registerNodeForRendering(a, noMaterial, reinterpret_cast<void*>(7), ESNRP_SOLID, nullptr, 0x7FFFFFFF));
    CHECK(manager->defaultNodes.size() == 1 && manager->defaultNodes[0].sortOrder == a->getRenderingLayer());
    CHECK(manager->registerNodeForRendering(b, noMaterial, nullptr, ESNRP_SOLID, nullptr, 5));
    CHECK(manager->defaultNodes[1].sortOrder == 5);
    CHECK((manager->defaultNodes[1] < manager->defaultNodes[0]) == (5 > manager->defaultNodes[0].sortOrder));
    CHECK(manager->registerNodeForRendering(a, noMaterial, nullptr, ESNRP_AUTOMATIC, nullptr, 0));   // no material: default list
    CHECK(manager->defaultNodes.size() == 3 && manager->transparentNodes.empty());
    CHECK(manager->registerNodeForRendering(c, noMaterial, nullptr, ESNRP_TRANSPARENT, nullptr, 0));
    CHECK(manager->transparentNodes.size() == 1);
    manager->batchCompiling = true;
    CHECK(manager->registerNodeForRendering(c, noMaterial, nullptr, ESNRP_TRANSPARENT, nullptr, 0));
    CHECK(manager->transparentNodes.size() == 1 && manager->defaultNodes.size() == 4);
    manager->batchCompiling = false;
    CHECK(manager->registerNodeForRendering(a, noMaterial, reinterpret_cast<void*>(9), ESNRP_SHADOW_VOLUME, nullptr, 0));
    CHECK(manager->registerNodeForRendering(b, noMaterial, reinterpret_cast<void*>(3), ESNRP_SHADOW_VOLUME, nullptr, 0));
    CHECK(manager->registerNodeForRendering(c, noMaterial, reinterpret_cast<void*>(5), ESNRP_SHADOW_MESH, nullptr, 0));
    CHECK(manager->registerNodeForRendering(c, noMaterial, nullptr, ESNRP_SHADOW_RECEIVER, nullptr, 0));
    CHECK(manager->shadowVolumeNodes.size() == 2 && manager->shadowMeshNodes.size() == 1 && manager->shadowReceiverNodes.size() == 1);

    // The render-data lists order by the user data, the light list by distance, the transparent list farthest first.
    glitch::core::heapsort(manager->shadowVolumeNodes.data(), 2);
    CHECK(manager->shadowVolumeNodes[0].node == b && manager->shadowVolumeNodes[1].node == a);
    a->setPosition(0.0f, 0.0f, 10.0f);
    b->setPosition(0.0f, 0.0f, 2.0f);
    a->updateAbsolutePosition(false);
    b->updateAbsolutePosition(false);
    manager->cameraPosition = glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f};
    CHECK(manager->registerNodeForRendering(a, noMaterial, nullptr, ESNRP_LIGHT, nullptr, 0));
    CHECK(manager->registerNodeForRendering(b, noMaterial, nullptr, ESNRP_LIGHT, nullptr, 0));
    glitch::core::heapsort(manager->lightNodes.data(), 2);
    CHECK(manager->lightNodes[0].node == b && manager->lightNodes[1].node == a);
    CHECK(manager->lightNodes[0].distance < manager->lightNodes[1].distance);
    CHECK(manager->registerNodeForRendering(a, noMaterial, nullptr, ESNRP_TRANSPARENT, nullptr, 0));
    CHECK(manager->registerNodeForRendering(b, noMaterial, nullptr, ESNRP_TRANSPARENT, nullptr, 0));
    CHECK(manager->transparentNodes.size() == 3);
    glitch::core::heapsort(manager->transparentNodes.data(), 3);
    CHECK(manager->transparentNodes[0].node == a);   // 100 away from the camera: the farthest is drawn first
    CHECK(manager->transparentNodes[2].node == b || manager->transparentNodes[2].node == c);

    // renderList: entries render in order with the sliding current / next words; the sentinel goes away or the list is emptied.
    manager->preSolidNodes.clear();
    CHECK(manager->registerNodeForRendering(a, noMaterial, reinterpret_cast<void*>(11), ESNRP_PRE_SOLID, nullptr, 0));
    CHECK(manager->registerNodeForRendering(b, noMaterial, reinterpret_cast<void*>(22), ESNRP_PRE_SOLID, nullptr, 0));
    CHECK(manager->registerNodeForRendering(c, noMaterial, reinterpret_cast<void*>(33), ESNRP_PRE_SOLID, nullptr, 0));
    manager->renderList(ESNRP_PRE_SOLID, manager->preSolidNodes, false, false);
    CHECK(records.size() == 3 && manager->renderPass == ESNRP_PRE_SOLID);
    CHECK(records[0].id == 1 && records[1].id == 2 && records[2].id == 3);
    CHECK(records[0].userData == 11 && records[1].userData == 22 && records[2].userData == 33);
    CHECK(records[0].current == reinterpret_cast<std::uintptr_t>(a) && records[0].next == reinterpret_cast<std::uintptr_t>(b));
    CHECK(records[1].current == reinterpret_cast<std::uintptr_t>(b) && records[1].next == reinterpret_cast<std::uintptr_t>(c));
    CHECK(records[2].current == reinterpret_cast<std::uintptr_t>(c) && records[2].next == 0);   // the sentinel follows the last
    CHECK(manager->preSolidNodes.size() == 3);   // not cleared: only the sentinel was removed
    CHECK(manager->getCurrentRenderedNode(nullptr, nullptr) == 0 && manager->getNextRenderedNode(nullptr, nullptr) == 0);
    records.clear();
    manager->renderList(ESNRP_PRE_SOLID, manager->preSolidNodes, true, true);   // with the cull test: no camera, nothing is culled
    CHECK(records.size() == 3 && manager->preSolidNodes.empty());
    records.clear();
    manager->renderList(ESNRP_PRE_SOLID, manager->preSolidNodes, true, false);
    CHECK(records.empty());

    // registerSceneNodes over a tree: invisible nodes and the children of a node that answers 0 are skipped.
    auto* root = new RecordingNode(10, manager, &records);
    auto* childA = new RecordingNode(11, manager, &records);
    auto* childB = new RecordingNode(12, manager, &records);
    auto* grandChild = new RecordingNode(13, manager, &records);
    auto* hidden = new RecordingNode(14, manager, &records);
    root->addChild(childA);
    root->addChild(childB);
    root->addChild(hidden);
    childA->addChild(grandChild);
    childB->answer = 0;
    hidden->setVisible(false);
    manager->registerSceneNodes(root);
    CHECK(root->registerCalls == 1 && childA->registerCalls == 1 && childB->registerCalls == 1 && grandChild->registerCalls == 1);
    CHECK(hidden->registerCalls == 0);
    childB->addChild(new RecordingNode(15, manager, &records));
    manager->registerSceneNodesCompile(root);
    CHECK(root->registerCalls == 2 && childB->registerCalls == 2 && grandChild->registerCalls == 2);
    CHECK(static_cast<RecordingNode*>(*childB->getChildren().begin())->registerCalls == 0);   // childB answered 0

    // update: the clock advances; the root node is animated when the animators are not updated separately.
    const float before = manager->time;
    manager->update(25.0f, false);
    CHECK(manager->time == before + 25.0f && !manager->hierarchyChanged);

    // getMesh: the loaders are asked newest first, the result is cached under the file name, a second call is a cache hit.
    FooLoader* loader = new FooLoader();
    manager->addExternalMeshLoader(loader);
    loader->drop();   // the manager holds its own use
    {
        NameFile file("Level/Rock.FOO");
        boost::intrusive_ptr<IAnimatedMesh> mesh = manager->getMesh(&file);
        CHECK(mesh && loader->created == 1 && file.seeks == 1);
        CHECK(manager->meshCache->getMeshCount() == 1);
        boost::intrusive_ptr<IAnimatedMesh> again = manager->getMesh(&file);
        CHECK(again.get() == mesh.get() && loader->created == 1);
        NameFile unknown("Level/Rock.bar");
        CHECK(!manager->getMesh(&unknown) && manager->meshCache->getMeshCount() == 1);
        CHECK(!manager->getMesh(static_cast<glitch::io::IReadFile*>(nullptr)));
    }

    // Shadow receiver targets keep their own uses.
    {
        struct Target : IShadowReceiverTarget {
            std::int32_t getLayerCount() override { return 0; }
            void selectLayer(std::int32_t) override {}
            void begin(glitch::video::IVideoDriver*) override {}
            void endLayer(glitch::video::IVideoDriver*) override {}
            void finish(glitch::video::IVideoDriver*) override {}
        };
        boost::intrusive_ptr<IShadowReceiverTarget> target(new Target());
        manager->addShadowReceiverTarget(target);
        manager->addShadowReceiverTarget(target);   // already listed
        CHECK(manager->shadowReceiverTargets.size() == 1 && target->referenceCounter == 2);
        manager->removeShadowReceiverTarget(boost::intrusive_ptr<glitch::video::ITexture>());   // matches the null texture
        CHECK(manager->shadowReceiverTargets.empty() && target->referenceCounter == 1);
        manager->addShadowReceiverTarget(target);
        manager->clear();   // removeAll on the root, and the targets go
        CHECK(manager->shadowReceiverTargets.empty() && target->referenceCounter == 1);
    }

    // createNewSceneManager: a second manager over the same arguments, optionally with a clone of the root.
    {
        CSceneManager* plain = manager->createNewSceneManager(false);
        CHECK(plain != nullptr && plain != manager && plain->rootNode != manager->rootNode);
        CHECK(plain->rootNode->getType() == ESNT_SCENE_MANAGER_ROOT);
        plain->drop();
        CSceneManager* copied = manager->createNewSceneManager(true);
        CHECK(copied != nullptr && copied->rootNode != manager->rootNode && copied->rootNode->getType() == ESNT_EMPTY);
        copied->drop();
    }

    a->drop();
    b->drop();
    c->drop();
    root->drop();
    manager->drop();
    std::printf("%s\n", failures ? "scene_manager_frame: FAILED" : "scene_manager_frame: ok");
    return failures != 0;
}
