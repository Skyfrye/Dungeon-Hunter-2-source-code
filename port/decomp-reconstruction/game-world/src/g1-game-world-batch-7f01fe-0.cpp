// Batch g1-game-world-batch-7f01fe-0: batch::BatchNodeCompiler, its segment callback
// (BatchNodeCompiler::SGameObjectLinkedCallback) and batch::GOBatchSceneNode.
// The owner headers are game/include/dh2/batch/BatchNodeCompiler.hpp and GOBatchSceneNode.hpp.
// Every function starts with its original address.

#include "dh2/batch/BatchNodeCompiler.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <vector>

#include "core-platform/w7_global_02.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/batch/CBatchMeshExt.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/net_singletons.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"
#include "glitch-video/video_driver.hpp"
#include "dh2/batch/GOBatchSceneNode.hpp"
#include "dh2/global/SceneNodeHelpers.hpp"
#include "glitch-scene-collada-gui/scene/CBatchMesh.hpp"
#include "glitch-scene-collada-gui/scene/CBatchSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

// core-platform/memory.hpp declares this. It is not included: its glitch_core stand-ins clash with glitch-shared.
extern int gAssertLevel;

namespace batch {

// 0x3ef180 batch::BatchNodeCompiler::SGameObjectLinkedCallback::~SGameObjectLinkedCallback()
// The complete destructor of the callback has an empty body (the original is a bare return).
BatchNodeCompiler::SGameObjectLinkedCallback::~SGameObjectLinkedCallback() {}

// 0x3ef394 batch::BatchNodeCompiler::SGameObjectLinkedCallback::~SGameObjectLinkedCallback() (deleting)
// skipped: the deleting destructor stores the vptr and calls CustomFree. The compiler generates it from the
// virtual destructor above (the same body plus operator delete), as for the other D0 destructors.

// 0x3efe58 batch::BatchNodeCompiler::SGameObjectLinkedCallback::operator()(glitch::scene::CBatchMesh *,void *,glitch::scene::SCompileInfo const&)
// The original takes the rendered node from the scene manager (+0x04) and looks it up in the owner's m_nodeObjects (+0x0c). It then
// stores the GameObject (or 0) in the segment's extra slot (CBatchMeshExt<GameObject*>, after the 44-byte record) and sets the visible
// byte (GameObject +0x2fc) of the object. The second argument is not a pointer in the binary: it is the segment index (r2 times the
// mesh's segment stride (+0x70 of CBatchMesh), plus 44). The third argument (SCompileInfo const&) is never read. When no node is found,
// the original reports ASSERT(go != 0) (gAssertLevel 1) and then writes the visible byte through the null object (a fault); the write is
// not repeated.
void BatchNodeCompiler::SGameObjectLinkedCallback::operator()(glitch::scene::CBatchMesh* mesh, void* segmentData,
                                                             const glitch::scene::SCompileInfo& /*info*/) {
    const auto* rendered = reinterpret_cast<const glitch::scene::ISceneNode*>(m_sceneManager->getCurrentRenderedNode(nullptr, nullptr));

    // Lower bound of the key: found only when the key is equal to the rendered node.
    const auto& nodeObjects = m_compiler->m_nodeObjects;
    GameObject* object = nullptr;
    auto it = nodeObjects.lower_bound(rendered);
    if (it != nodeObjects.end() && !(rendered < it->first)) {
        object = it->second;
    }

    const auto index = static_cast<std::size_t>(reinterpret_cast<std::uintptr_t>(segmentData));
    if (index < mesh->segmentCount()) {
        std::memcpy(mesh->segmentExtra(index), &object, sizeof(object));   // the original writes unchecked
    }

    if (object) {
        // GameObject +0x2fc (unk_2fc): the byte the original sets to 1 for a linked object.
        object->unk_2fc = 1;
        return;
    }
    // Not found: the original reports the failed assert. See the note above for the write it then makes.
    if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "go != 0",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources/Data/Collada/BatchNodeCompiler.h", 72);
    }
}

// 0x3f1868 batch::BatchNodeCompiler::Free()
void BatchNodeCompiler::Free() {
    // Drops the batch node through its IReferenceCounted base (the original uses the base at the vtable's offset).
    if (m_batchNode) {
        m_batchNode->drop();
    }
    m_batchNode = nullptr;
    m_gameObjects.clear();
    m_nodeObjects.clear();
}

// 0x3f1a48 batch::BatchNodeCompiler::~BatchNodeCompiler()
// Free, then the member destructors release the object list and the node map. The original frees the list storage
// with the node allocator for small blocks and CustomFree for large ones; std::vector does both.
BatchNodeCompiler::~BatchNodeCompiler() {
    Free();
}

// 0x3f5dcc batch::BatchNodeCompiler::_MapMeshNode(GameObject *,glitch::scene::ISceneNode *)
// Records object for node, then does the same for every child of node (the children hang off the child list at +0xf0).
void BatchNodeCompiler::_MapMeshNode(GameObject* object, glitch::scene::ISceneNode* node) {
    if (!node) {
        return;
    }
    m_nodeObjects[node] = object;
    const glitch::scene::SChildList& children = node->getChildren();
    for (auto it = children.begin(); it != children.end(); ++it) {
        _MapMeshNode(object, *it);
    }
}

// 0x50cd44 batch::GOBatchSceneNode::isSegmentVisible(glitch::scene::CBatchMesh::SSegment const&)
// The segment's GameObject is the pointer in the extra slot of the record numbered by the segment's info index (SSegment +0x04); the
// segment is hidden when the object is zonable (vtable +0xc4) with zoning enabled (+0x2ee) and not in its zone (+0x2f0), or when the
// object is not visible (ObjectBase +0x80). Otherwise the segment's visible byte (SSegment +0x20) is the answer. An info index outside the
// mesh is not guarded in the original; here it falls back to the visible byte.
bool GOBatchSceneNode::isSegmentVisible(const glitch::scene::CBatchMesh::SSegment& segment) {
    GameObject* object = nullptr;
    if (segment.infoIndex < mesh->segmentCount()) {
        std::memcpy(&object, mesh->segmentExtra(segment.infoIndex), sizeof(object));
    }
    if (object != nullptr &&
        ((object->IsZonable() && object->m_zoningEnabled && !object->m_inZone) || !object->m_visible)) {
        return false;
    }
    return segment.visible != 0;
}

// 0x50cf08 batch::GOBatchSceneNode::~GOBatchSceneNode() (complete)
// The original resets the vptrs of the bases and runs CBatchSceneNode's destructor. The compiler does the same for
// the empty body.
GOBatchSceneNode::~GOBatchSceneNode() {}

// 0x50cfa8 batch::BatchNodeCompiler::MakeNoBatchVisible(glitch::scene::ISceneNode *,bool)
// Sets the visibility of node and of its children when the node name contains "nobatch", and returns true when the
// node or one of its children matched.
bool BatchNodeCompiler::MakeNoBatchVisible(glitch::scene::ISceneNode* node, bool visible) {
    bool matched = false;
    const char* name = node->getName();
    if (std::strstr(name, "nobatch") != nullptr) {
        SetNodeVisibleRecur(node, visible);
        matched = true;
    }
    const glitch::scene::SChildList& children = node->getChildren();
    for (auto it = children.begin(); it != children.end(); ++it) {
        // The original calls the child first and then combines the result: every child is visited.
        const bool childMatched = MakeNoBatchVisible(*it, visible);
        matched = childMatched || matched;
    }
    return matched;
}

// 0x50d71c batch::GOBatchSceneNode::updateSegmentVisibility()
// Does nothing unless the node is visible. clearVisibleSegments gives the batch count. A node with no scene manager takes the device's
// (+0x1c) and reloads the current level through Application::LoadLevel with the staged temp_* arguments (online games pass false for
// isRemotelyTriggered). A node the manager culls is left alone. Otherwise the manager's culling switch is saved and, when it was on,
// cleared for the duration; the mode is the node's segment mode (+0x138) and the camera the manager's active one, with the switch off
// both are zero. Per batch, by the mode: 0 / 4 with the visible-index cache off count every segment, with it on collect them
// (SUniverseIntersector); 1 the camera frustum's box (SBoxIntersector); 2 SFrustumBoxIntersector; 8 SFrustumBoxIntersector3. Every
// record from the solid batch count (+0x144) on is stamped with the current tick and emptied, and the switch is restored.
void GOBatchSceneNode::updateSegmentVisibility() {
    if ((flags & glitch::scene::ESNF_VISIBLE) == 0) {
        return;
    }
    const std::int32_t batchCount = clearVisibleSegments();
    if (sceneManager == nullptr) {
        sceneManager = DeviceSceneManager();
        Application& application = ApplicationGetInstance();
        Level* currentLevel = application.GetCurrentLevel();
        if (currentLevel) {
            const bool online = GetOnlineGameFlag();    // COnline +0x05; the original also asks PlayerManager::IsLocalPlayerHosting and drops the answer
            application.LoadLevel(currentLevel->m_levelName.c_str(), temp_entryPointId, temp_savegameSlot, temp_resume,
                                  temp_useSpawnPoint, temp_difficulty, online ? false : temp_isRemotelyTriggered, temp_seed,
                                  temp_syncedSeed);
        }
    }
    if (!sceneManager->isCulled(this)) {
        const bool cullingWasOn = sceneManager->cullingEnabled;                  // scene manager +0x250
        std::uint32_t mode = 0;
        glitch::scene::ICameraSceneNode* camera = nullptr;
        if (cullingWasOn) {
            mode = unk_138;
            sceneManager->cullingEnabled = false;
            camera = sceneManager->activeCamera;                                  // +0xe4
        }
        for (std::int32_t batch = 0; batch < batchCount; ++batch) {
            switch (mode) {
                case 0:
                case 4:
                    if (visibleIndexCacheOn) {
                        addVisibleSegments(static_cast<std::uint32_t>(batch), SUniverseIntersector{});
                    } else {
                        visibleEntry(static_cast<std::uint32_t>(batch))->count =
                            static_cast<std::uint16_t>(mesh->batches[batch].endSegmentInfo - mesh->batches[batch].firstSegmentInfo);
                    }
                    break;
                case 1:
                    addVisibleSegments(static_cast<std::uint32_t>(batch), SBoxIntersector{&camera->getViewFrustum()->box});
                    break;
                case 2:
                    addVisibleSegments(static_cast<std::uint32_t>(batch), SFrustumBoxIntersector{camera->getViewFrustum()});
                    break;
                case 8:
                    addVisibleSegments(static_cast<std::uint32_t>(batch), SFrustumBoxIntersector3{camera->getViewFrustum()});
                    break;
                default:
                    break;
            }
        }
        for (std::uint32_t entry = static_cast<std::uint32_t>(unk_144); entry < mesh->batches.size(); ++entry) {
            visibleEntry(entry)->tick = glitch::os::Timer::TickCount;
            visibleEntry(entry)->count = 0;
        }
        if (cullingWasOn) {
            sceneManager->cullingEnabled = true;
        }
    }
}

// 0x50dabc batch::GOBatchSceneNode::~GOBatchSceneNode() (deleting)
// skipped: the deleting destructor is generated by the compiler from the virtual destructor above. The original also
// stores the secondary vptrs of its bases before it frees the object, which the compiler does too.

// 0x50dbbc batch::BatchNodeCompiler::Trim()
// Releases the object list storage (the vector is replaced by an empty one) and clears the node map.
void BatchNodeCompiler::Trim() {
    m_gameObjects.clear();
    std::vector<GameObject*>().swap(m_gameObjects);
    m_nodeObjects.clear();
}

// 0x50dc84 batch::BatchNodeCompiler::Compile(bool)
// Builds the batch node for the level and sets each object's batch state. On first use the node is created over a CBatchMeshExt<GameObject*>
// (segment stride 0x30), made visible, its automatic culling switched off (0) and its segment mode (+0x138) set to 2. Loop 1: every
// object with a visual object and a node adds the node to the scene root (vtable +0x5c), hides its "nobatch" parts, reads the
// isTracingBatchingCompiler switch when there were any (the answer is not used) and joins the node list. With a non-empty list the scene
// manager compiles it into the batch node with this compiler's segment callback (vtable +0x50, no split choice, zero segment size);
// with quantize set and a driver type with any of bits 0 to 2 the batch mesh quantizes its components; the mesh buffers are flushed
// and m_compiled is set. Loop 2: every object with a visual object shows its "nobatch" parts again; when there were none, a Decor or
// Module object (ObjectBase +0x48) drops its visual object. Trim ends the compile.
void BatchNodeCompiler::Compile(bool quantize) {
    SceneManager* sceneManager = DeviceSceneManager();                        // dword_99F73C + 0x1c
    glitch::scene::ISceneNode* root = sceneManager->rootNode;                 // +0x04

    if (!m_batchNode) {
        boost::intrusive_ptr<glitch::scene::CBatchMesh> batchMesh(new glitch::scene::CBatchMeshExt<GameObject*>(), true);
        m_linkedCallback.m_compiler = this;                                   // +0x0c
        m_batchNode = new GOBatchSceneNode(-1, batchMesh);
        m_batchNode->setVisible(true);                                        // vtable +0x48
        m_batchNode->setAutomaticCulling(0);
        m_batchNode->unk_138 = 2;                                             // +0x138
    }

    glitch::core::svector<glitch::scene::ISceneNode*> nodes;
    for (GameObject* object : m_gameObjects) {
        VisualObject* visual = object->m_visualObject;                        // +0x2d8
        if (!visual) {
            continue;
        }
        glitch::scene::ISceneNode* node = visual->m_node;                     // VisualObject +0x08
        if (!node) {
            continue;
        }
        root->addChild(node);                                                 // vtable +0x5c
        if (MakeNoBatchVisible(node, false)) {
            DebugSwitches::s_inst.load();
            DebugSwitches::s_inst.GetSwitch(std::string("isTracingBatchingCompiler"));
        }
        nodes.push_back(node);
    }
    if (!nodes.empty()) {
        m_linkedCallback.m_sceneManager = sceneManager;                       // +0x08
        sceneManager->compile(nodes, m_batchNode, false, &m_linkedCallback, nullptr, glitch::core::vector3d<float>());
        glitch::video::IVideoDriver* deviceDriver = ApplicationGetInstance().m_device->videoDriver;   // dword_99F73C + 0x10
        if (quantize && (static_cast<std::uint32_t>(deviceDriver->getDriverType()) & 7u) != 0) {
            m_batchNode->mesh->quantizeComponents(false, true, sceneManager->driver);
        }
        FlushMeshBuffers(m_batchNode->mesh.get(), true, false, false);
        m_compiled = true;
    }

    for (GameObject* object : m_gameObjects) {
        VisualObject* visual = object->m_visualObject;
        if (!visual) {
            continue;
        }
        if (MakeNoBatchVisible(visual->m_node, true)) {
            DebugSwitches::s_inst.load();
            DebugSwitches::s_inst.GetSwitch(std::string("isTracingBatchingCompiler"));
            continue;
        }
        const char* gameType = object->m_gameType.c_str();                    // ObjectBase +0x48
        if (!std::strcmp(gameType, "Decor") || !std::strcmp(gameType, "Module")) {
            object->SetVisualObject(static_cast<VisualObject*>(nullptr));
        }
    }
    Trim();
}

}  // namespace batch
