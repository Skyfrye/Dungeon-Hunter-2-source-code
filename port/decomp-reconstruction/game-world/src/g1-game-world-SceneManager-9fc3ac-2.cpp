// SceneManager, batch g1-game-world-SceneManager-9fc3ac-2 (part 3 of 3). Functions in address order:
//   0x356c9c ~SceneManager (D0)            skipped: compiler-generated deleting destructor
//   0x357780 renderCustomList<SDefaultNodeEntry>
//   0x357dc0 clearRenderLists
//   0x357ea4 _registerSceneNodes
//   0x358008 renderCustomLists
//   0x3586ac SearchByName(vector&, string)
//   0x3587a0 _renderLists
//   0x3592b0 _drawAll
//   0x359338 drawAll
//   0x3594a4 LoadFXLib
//   0x3596f8 LoadScene
//   0x359a38 AddSkyBoxSceneNode
//   0x359b68 PreloadScene
//   0x359c60 GetMaterial(node, char*)
//   0x359d08 SetMaterialRimLightEffects(material)
//   0x359fac SearchByName(vector&, char*)
//   0x35a044 SearchByName(visit, char*)
//   0x35a0e4 SearchByName(char*) -> node
//   0x35a188 SetMaterialRimLightEffects(node)
//   0x35a3d8 registerNodeForCustomRendering
//
// The render lists of the engine base (CSceneManager +0x30 .. +0x8f) are typed members of the canonical CSceneManager header
// (cameraNodes, lightNodes, shadowVolumeNodes, shadowMeshNodes, preSolidNodes, defaultNodes, transparentNodes), and the two game
// lists (+0x464, +0x470) are typed vectors of SceneManager. The walks below slide the current / next rendered-node words
// (CSceneManager +0x9c .. +0xb0) over the entries exactly as the engine's renderList does.

#include <cstdint>
#include <cstring>
#include "glitch-core-io/io/write_file.hpp"
#include "glitch-video/image_loaders.hpp"
#include "glitch-video/video_driver.hpp"
#include <ctime>
#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>

#include "core-platform/util.hpp"
#include "dh2/Application.hpp"
#include "dh2/ColladaFactory.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Level.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/SkinnedMeshSceneNodeEx.hpp"
#include "dh2/SkyBoxMeshSceneNode.hpp"
#include "dh2/batch/BatchNodeCompiler.hpp"
#include "dh2/batch/GOBatchSceneNode.hpp"
#include "glitch-core-io/core/sort.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"

extern int gAssertLevel;

namespace {

using glitch::scene::CSceneManager;
using glitch::scene::ISceneNode;

// The text of the material's shared-string name (CMaterial +0x1c, text at +4); an unnamed material reads as the empty string where
// the original passes null on to its string calls.
const char* MaterialName(const glitch::video::CMaterial& material) {
    return material.m_hasName ? material.m_nameText.c_str() : "";
}

// The window the render lists slide over the entries: while an entry renders, the current words hold that entry and the next words
// the one after it. `list` ends with the sentinel entry the caller appended; `orderOf` gives the third word of an entry (the sort
// order for the entries that have one, zero for the others); `before(i)` runs ahead of the render of entry i - 1, with entry i
// being its successor. The state the loops leave behind (current and next both the sentinel) is the one the original leaves.
template <typename Entry, typename OrderOf, typename Before>
void RunEntries(CSceneManager& manager, glitch::core::svector<Entry>& list, OrderOf orderOf, Before before) {
    const std::size_t count = list.size() - 1;
    manager.currentNode = manager.nextNode;
    manager.currentUserData = manager.nextUserData;
    manager.currentSortOrder = manager.nextSortOrder;
    manager.nextNode = list[0].node;
    manager.nextUserData = list[0].userData;
    manager.nextSortOrder = orderOf(list[0]);
    for (std::size_t i = 1; i <= count; ++i) {
        before(i);
        ISceneNode* node = manager.nextNode;
        void* userData = manager.nextUserData;
        manager.currentNode = manager.nextNode;
        manager.currentUserData = manager.nextUserData;
        manager.currentSortOrder = manager.nextSortOrder;
        manager.nextNode = list[i].node;
        manager.nextUserData = list[i].userData;
        manager.nextSortOrder = orderOf(list[i]);
        node->render(userData);
    }
    manager.currentNode = manager.nextNode;
    manager.currentUserData = manager.nextUserData;
    manager.currentSortOrder = manager.nextSortOrder;
    manager.nextNode = list.back().node;
    manager.nextUserData = list.back().userData;
    manager.nextSortOrder = 0;
}

// Batching switch of the driver (option bit 8, value 256) around an entry of the default or transparent list, evaluated ahead of each
// render: an entry that is too big for a batch (more vertices than the driver's largest batched index count) turns batching off, an
// entry that can batch with its successor (both small, same material or same material hash) turns it on, and the end of a batch
// group turns it off. `previousEnded` carries the original's flag between entries.
template <typename Entry>
void SwitchBatching(glitch::video::IVideoDriver* videoDriver, const Entry& current, const Entry& next, bool& previousEnded) {
    const bool batching = ((videoDriver->m_options >> 8) & 1u) != 0;
    const std::int32_t limit = static_cast<std::int32_t>(videoDriver->m_maxBatchIndices);
    bool canBatch = false;
    bool tooBig = false;
    if (static_cast<std::int32_t>(current.node->getRenderVertexCount(current.userData)) <= limit) {
        if (next.node != nullptr && static_cast<std::int32_t>(next.node->getRenderVertexCount(next.userData)) <= limit &&
            current.material && next.material &&
            (current.material.get() == next.material.get() ||
             current.material->getHashCode() == next.material->getHashCode())) {
            canBatch = true;
        }
    } else {
        tooBig = true;
    }
    bool handled = false;
    if (batching) {
        if (tooBig) {
            videoDriver->setOption(256, false);
            handled = true;
        }
    } else if (canBatch) {
        videoDriver->setOption(256, true);
        handled = true;
    }
    if (!handled && previousEnded && batching && !canBatch) {
        videoDriver->setOption(256, false);
    }
    previousEnded = !canBatch;
}

}  // namespace

// 0x357780 void SceneManager::renderCustomList<glitch::scene::CSceneManager::SDefaultNodeEntry>(
//              E_SCENE_NODE_CUSTOM_RENDER_PASS, glitch::core::svector<SDefaultNodeEntry, SAllocator>&)
// renderPass (+0x174) is the pass when it is 8 or less, otherwise 9; m_customRenderPass (+0x488) is the pass. A sentinel entry is
// appended and the walk slides the current / next rendered-node words over the entries (the sort order of an entry is the third word),
// calling ISceneNode::render(userData) on each; the list ends empty (resize to zero).
template <>
void SceneManager::renderCustomList<glitch::scene::CSceneManager::SDefaultNodeEntry>(
        std::uint32_t pass, glitch::core::svector<glitch::scene::CSceneManager::SDefaultNodeEntry>& list) {
    renderPass = static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(pass <= 8 ? pass : 9);   // +0x174
    m_customRenderPass = pass;                                                                  // +0x488
    list.push_back(SDefaultNodeEntry(nullptr, boost::intrusive_ptr<glitch::video::CMaterial>(), nullptr, 0));
    RunEntries(*this, list, [](const SDefaultNodeEntry& entry) { return entry.sortOrder; }, [](std::size_t) {});
    list.clear();
}

// 0x357dc0 SceneManager::clearRenderLists()
// The original resizes the seven render-list vectors of the engine base to zero, in this order: +0x3c (unsorted entries),
// +0x48 (distance entries), +0x54 and +0x60 (render-data sort entries), +0x6c (second unsorted list), +0x78 (default
// entries) and +0x84 (transparent entries). The canonical CSceneManager header declares each of them.
void SceneManager::clearRenderLists() {
    cameraNodes.clear();          // +0x3c
    lightNodes.clear();           // +0x48
    shadowVolumeNodes.clear();    // +0x54
    shadowMeshNodes.clear();      // +0x60
    preSolidNodes.clear();        // +0x6c
    defaultNodes.clear();         // +0x78
    transparentNodes.clear();     // +0x84
}

// 0x357ea4 SceneManager::_registerSceneNodes(glitch::scene::ISceneNode*)
// The frame counter; needRegister (a function-local static) is cleared with the counter when it, or the cut scene byte (ELF
// 0x9a600c, ScriptManager m_inCutScene), is set, and is then 1 for a cut scene and m_forceRegister otherwise. On a full-registration
// frame (hierarchy changed, or the counter is a multiple of the interval) the render lists and the batch list are emptied and
// CSceneManager::registerSceneNodes runs; otherwise the level's batch node updates its segment visibility and every entry of the
// batch list (a SkinnedMeshSceneNodeEx) runs its first virtual, prepareSkinForRendering.
void SceneManager::_registerSceneNodes(glitch::scene::ISceneNode* node) {
    static bool needRegister = false;       // SceneManager::_registerSceneNodes::needRegister

    ++m_registerCounter;                    // +0x440
    const bool inCutScene = ScriptManager::s_inst.m_inCutScene;   // byte_9A600C
    if (needRegister || inCutScene) {
        m_registerCounter = 0;
        needRegister = inCutScene ? true : m_forceRegister;
    } else {
        needRegister = m_forceRegister;     // +0x448
    }

    Level* currentLevel = ApplicationGetInstance().GetCurrentLevel();

    if (visibilityChanged || m_registerCounter % m_registerInterval == 0) {   // +0x289, +0x440 and +0x444
        clearRenderLists();
        m_batchEnd = m_batchBegin;          // +0x480 = +0x47c when they differ
        glitch::scene::CSceneManager::registerSceneNodes(node);
        m_forceRegister = false;            // +0x448
        m_registerCounter = 0;              // +0x440
        visibilityChanged = false;          // +0x289
    } else {
        if (currentLevel) {
            batch::BatchNodeCompiler* compiler = currentLevel->m_batchNodeCompiler;   // Level +0x158
            if (compiler) {
                batch::GOBatchSceneNode* batchNode = compiler->m_batchNode;            // BatchNodeCompiler +0x34
                if (batchNode) {
                    batchNode->updateSegmentVisibility();
                }
            }
        }
        const std::ptrdiff_t batchCount = m_batchEnd - m_batchBegin;
        for (std::ptrdiff_t i = 0; i < batchCount; ++i) {
            static_cast<SkinnedMeshSceneNodeEx*>(m_batchBegin[i])->prepareSkinForRendering();   // vtable +0x00
        }
    }
}

// 0x358008 SceneManager::renderCustomLists(glitch::video::IVideoDriver*)
// Custom pass 0 over the camera list; the driver's dynamic lights are deleted; the light list is sorted, cut to the driver's light
// limit (IVideoDriver +0x3c) and walked as pass 1; the pre-solid list is pass 2; the default list is sorted and walked as pass 4;
// the shadow mesh list (sorted when its byte-truncated count is above one) is pass 6; the transparent list is sorted and walked as
// pass 7; the second game list (+0x470) is sorted and walked as pass 10, the driver clears the depth buffer (vtable +0xa8 with 2),
// the first game list (+0x464) is sorted and walked as pass 9, and the deletion list is cleared.
void SceneManager::renderCustomLists(glitch::video::IVideoDriver* videoDriver) {
    renderCustomList<SUnsortedNodeEntry>(0, cameraNodes);                       // +0x3c
    videoDriver->deleteAllDynamicLights();
    if (lightNodes.size() > 1) {
        glitch::core::heapsort(lightNodes.data(), static_cast<int>(lightNodes.size()));
    }
    lightNodes.resize(std::min<std::size_t>(lightNodes.size(), videoDriver->m_dynamicLightLimit));
    m_customRenderPass = 1;                                                     // +0x488
    renderPass = static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(1);      // +0x174
    lightNodes.push_back(SDistanceNodeEntry());
    RunEntries(*this, lightNodes, [](const SDistanceNodeEntry&) { return 0; }, [](std::size_t) {});
    lightNodes.clear();

    renderCustomList<SUnsortedNodeEntry>(2, preSolidNodes);                     // +0x6c
    if (defaultNodes.size() > 1) {
        glitch::core::heapsort(defaultNodes.data(), static_cast<int>(defaultNodes.size()));
    }
    renderCustomList<SDefaultNodeEntry>(4, defaultNodes);                       // +0x78

    if (static_cast<std::uint8_t>(shadowMeshNodes.size()) > 1u) {
        glitch::core::heapsort(shadowMeshNodes.data(), static_cast<int>(shadowMeshNodes.size()));
    }
    renderPass = static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(6);
    m_customRenderPass = 6;
    shadowMeshNodes.push_back(SRenderDataSortNodeEntry());
    RunEntries(*this, shadowMeshNodes, [](const SRenderDataSortNodeEntry&) { return 0; }, [](std::size_t) {});
    shadowMeshNodes.clear();                                                    // +0x60

    if (transparentNodes.size() > 1) {
        glitch::core::heapsort(transparentNodes.data(), static_cast<int>(transparentNodes.size()));
    }
    renderPass = static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(7);
    m_customRenderPass = 7;
    transparentNodes.push_back(STransparentNodeEntry());
    RunEntries(*this, transparentNodes, [](const STransparentNodeEntry& entry) { return entry.sortOrder; }, [](std::size_t) {});
    transparentNodes.clear();                                                   // +0x84

    if (m_gameNodes470.size() > 1) {
        glitch::core::heapsort(m_gameNodes470.data(), static_cast<int>(m_gameNodes470.size()));
    }
    renderCustomList<SDefaultNodeEntry>(10, m_gameNodes470);
    videoDriver->clearBuffers(2);
    if (m_gameNodes464.size() > 1) {
        glitch::core::heapsort(m_gameNodes464.data(), static_cast<int>(m_gameNodes464.size()));
    }
    renderCustomList<SDefaultNodeEntry>(9, m_gameNodes464);
    clearDeletionList();
}

// 0x3586ac SceneManager::SearchByName(glitch::scene::ISceneNode*, glitch::core::svector<ISceneNode*>&, std::string const&, bool)
// Preorder search of the subtree under root. A node whose name matches is appended to out before its children are
// searched. The flag selects a prefix match (strncmp over the length of name) or an exact match (strcmp).
void SceneManager::SearchByName(glitch::scene::ISceneNode* root, glitch::core::svector<glitch::scene::ISceneNode*>& out,
                                const std::string& name, bool flag) {
    if (!root) {
        return;
    }
    const char* nodeName = root->getName();
    const bool matched = flag ? std::strncmp(nodeName, name.c_str(), name.size()) == 0
                              : std::strcmp(nodeName, name.c_str()) == 0;
    if (matched) {
        out.push_back(root);
    }
    for (glitch::scene::ISceneNode* child : root->getChildren()) {
        SearchByName(child, out, name, flag);
    }
}

// 0x3587a0 SceneManager::_renderLists(glitch::video::IVideoDriver*)
// When the registration counter (+0x440) is zero the lists are sorted: lights (cut to the driver's light limit), default, shadow
// volumes and shadow meshes (both only when the byte-truncated count is above one) and transparent. Then, with the clear flag
// unk_43c (+0x43c): the camera list (pass 0), the driver's dynamic lights deleted, the light list (pass 1), the pre-solid list
// (pass 2), the default list (pass 4; when it is not empty the driver's batching option, bit 8, is switched around the entries by
// vertex count and material), the shadow volumes (colour writes off, pass 5), the shadow meshes (colour writes on, pass 6) and the
// transparent list (pass 8, the same batching switch); the deletion list is cleared last. A list ends empty when the clear flag is
// set and loses only its sentinel otherwise.
void SceneManager::_renderLists(glitch::video::IVideoDriver* videoDriver) {
    if (m_registerCounter == 0) {                                               // +0x440
        if (lightNodes.size() > 1) {
            glitch::core::heapsort(lightNodes.data(), static_cast<int>(lightNodes.size()));
        }
        lightNodes.resize(std::min<std::size_t>(lightNodes.size(), videoDriver->m_dynamicLightLimit));
        if (defaultNodes.size() > 1) {
            glitch::core::heapsort(defaultNodes.data(), static_cast<int>(defaultNodes.size()));
        }
        if (static_cast<std::uint8_t>(shadowVolumeNodes.size()) > 1u) {
            glitch::core::heapsort(shadowVolumeNodes.data(), static_cast<int>(shadowVolumeNodes.size()));
        }
        if (static_cast<std::uint8_t>(shadowMeshNodes.size()) > 1u) {
            glitch::core::heapsort(shadowMeshNodes.data(), static_cast<int>(shadowMeshNodes.size()));
        }
        if (transparentNodes.size() > 1) {
            glitch::core::heapsort(transparentNodes.data(), static_cast<int>(transparentNodes.size()));
        }
    }
    const bool clearLists = unk_43c;                                            // +0x43c
    renderList(static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(0), cameraNodes, clearLists, false);
    videoDriver->deleteAllDynamicLights();

    // The lights.
    renderPass = static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(1);
    lightNodes.push_back(SDistanceNodeEntry());
    RunEntries(*this, lightNodes, [](const SDistanceNodeEntry&) { return 0; }, [](std::size_t) {});
    if (clearLists) {
        lightNodes.clear();
    } else {
        lightNodes.pop_back();
    }

    renderList(static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(2), preSolidNodes, clearLists, false);

    // The default list: the batching option follows the entries.
    if (!defaultNodes.empty()) {
        renderPass = static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(4);
        defaultNodes.push_back(SDefaultNodeEntry(nullptr, boost::intrusive_ptr<glitch::video::CMaterial>(), nullptr, 0));
        bool previousEnded = true;
        RunEntries(*this, defaultNodes, [](const SDefaultNodeEntry& entry) { return entry.sortOrder; },
                   [&](std::size_t i) { SwitchBatching(driver, defaultNodes[i - 1], defaultNodes[i], previousEnded); });
        if (clearLists) {
            defaultNodes.clear();
        } else {
            defaultNodes.pop_back();
        }
    }

    // The shadow volumes with colour writes off, then the shadow meshes with them on.
    videoDriver->setColorMask(false, false, false, false);                      // vtable +0xd4
    renderList(static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(5), shadowVolumeNodes, clearLists, false);
    videoDriver->setColorMask(true, true, true, true);
    renderList(static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(6), shadowMeshNodes, clearLists, false);

    // The transparent list.
    if (!transparentNodes.empty()) {
        renderPass = static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(8);
        transparentNodes.push_back(STransparentNodeEntry());
        bool previousEnded = true;
        RunEntries(*this, transparentNodes, [](const STransparentNodeEntry& entry) { return entry.sortOrder; },
                   [&](std::size_t i) { SwitchBatching(driver, transparentNodes[i - 1], transparentNodes[i], previousEnded); });
        if (clearLists) {
            transparentNodes.clear();
        } else {
            transparentNodes.pop_back();
        }
    }
    clearDeletionList();
}

// 0x3592b0 SceneManager::_drawAll(glitch::scene::ISceneNode*)
// Calls the virtual drawInit on the driver (vptr+0x40), collects every node when no node was given and the hierarchy
// changed, runs setupCamera (vptr+0x44), registers the scene nodes, registers the automatic lights, runs
// drawShadowReceivers (vptr+0x4c), renders the lists and leaves the render pass at 9.
void SceneManager::_drawAll(glitch::scene::ISceneNode* node) {
    drawInit(driverCopy);                                                  // +0x18 driver, vptr+0x40
    if (!node && hierarchyChanged) {                                       // +0x288
        glitch::scene::CSceneManager::collectAllNodes();
    }
    setupCamera();                                                         // vptr+0x44
    _registerSceneNodes(node);
    _RegisterAutomacticLights();
    drawShadowReceivers();                                                 // vptr+0x4c
    _renderLists(driverCopy);
    renderPass = 9u;                                                       // +0x174
}

// 0x359338 SceneManager::drawAll(glitch::scene::ISceneNode*)
// Updates the light sets (LightSetManager::Update on m_lightSetManager, +0x294), draws the frame (_drawAll) and serves a pending
// screenshot request: the flag at +0x290 is cleared and, when the ToggleGamepadScreenShot debug switch is on, the driver's
// screen shot is written to screenshot_<time>.tga through a CImageWriterTGA.
void SceneManager::drawAll(glitch::scene::ISceneNode* node) {
    m_lightSetManager.Update();                                            // +0x294 light set update, before the draw
    _drawAll(node);
    if (m_screenshotRequested) {                                           // +0x290
        m_screenshotRequested = false;
        DebugSwitches::s_inst.load();
        const std::string switchName("ToggleGamepadScreenShot");
        if (DebugSwitches::s_inst.GetSwitch(switchName)) {
            char fileName[100];
            std::sprintf(fileName, "screenshot_%u.tga", static_cast<unsigned int>(std::time(nullptr)));
            boost::intrusive_ptr<glitch::video::CImage> image = driver->createScreenShot();  // CSceneManager::driver (+0x14), vtable +0x98
            glitch::io::IWriteFile* file = glitch::io::createWriteFile(fileName, false);
            glitch::video::CImageWriterTGA* writer = new glitch::video::CImageWriterTGA();
            writer->writeImage(file, image, 0);                            // vtable +0x10
            writer->drop();
            file->drop();
        }
    }
}

// 0x3594a4 SceneManager::LoadFXLib(char const*, char const*)
// Opens the database of the first file with ColladaFactory::s_factory (the missing file name reports the assert at line 1298 and goes
// on), then constructs the effect named by the second argument on the driver (+0x14): the name as it is when it contains "-fx",
// the name with "-fx" appended otherwise, and the first effect of the file when no name is given. The renderer is returned counted.
boost::intrusive_ptr<glitch::video::CMaterialRenderer> SceneManager::LoadFXLib(const char* file, const char* effectName) {
    if (!file) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "filename",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\SceneManager.cpp", 1298);
        }
    }
    glitch::collada::CColladaDatabase database(file, &ColladaFactory::s_factory);
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer;
    if (effectName) {
        if (strrstr(effectName, "-fx")) {
            renderer = boost::intrusive_ptr<glitch::video::CMaterialRenderer>(
                database.constructEffect(driver, effectName, nullptr), false);
        } else {
            std::string name(effectName);
            name.append("-fx");
            renderer = boost::intrusive_ptr<glitch::video::CMaterialRenderer>(
                database.constructEffect(driver, name.c_str(), nullptr), false);
        }
    } else {
        renderer = boost::intrusive_ptr<glitch::video::CMaterialRenderer>(
            database.constructEffect(driver, static_cast<const char*>(nullptr), nullptr), false);
    }
    return renderer;
}

// 0x3596f8 SceneManager::LoadScene(char const*, char const*, bool, bool)
// Builds the scene on the device's video driver (device +0x10) with ColladaFactory::s_factory: a node name gives the node
// "<name>-node" of the file (constructNode), otherwise the whole scene (constructScene). The new root takes the file name (+0x1bc)
// and the node name (+0x1d4); flagB resets its position from the file; a node name attaches the file's animator (constructAnimator,
// added to the root and dropped); automatic culling is set to 2; for a node name whose first child is a "_module" every grandchild
// whose name contains none of "_minimap", "_mesh", "_floor" and "_exit" is removed; flagA adds the root to the scene root (vtable +0x5c).
glitch::scene::ISceneNode* SceneManager::LoadScene(const char* file, const char* nodeName, bool flagA, bool flagB) {
    glitch::video::IVideoDriver* videoDriver = ApplicationGetInstance().m_device->videoDriver;   // dword_99F73C + 0x10
    glitch::collada::CRootSceneNode* loaded;
    if (nodeName && *nodeName) {
        std::string name(nodeName);
        name.append("-node");
        loaded = glitch::collada::CColladaDatabase::constructNode(videoDriver, file, name.c_str(), &ColladaFactory::s_factory);
    } else {
        loaded = glitch::collada::CColladaDatabase::constructScene(videoDriver, file, true, &ColladaFactory::s_factory);
    }
    RootSceneNode* root = static_cast<RootSceneNode*>(loaded);     // the game factory builds a RootSceneNode
    if (root) {
        root->m_fileName.assign(file, file + std::strlen(file));   // +0x1bc
        if (nodeName) {
            root->m_name.assign(nodeName, nodeName + std::strlen(nodeName));   // +0x1d4
        } else {
            root->m_name.assign("");
        }
    }
    if (flagB && root) {
        root->ResetPositionFromFile();
    }
    if (root && nodeName) {
        glitch::scene::ISceneNodeAnimator* animator = static_cast<glitch::scene::ISceneNodeAnimator*>(
            glitch::collada::CColladaDatabase::constructAnimator(file, &ColladaFactory::s_factory));
        if (animator) {
            root->addAnimator(animator);                           // vtable +0x6c
            animator->drop();
        }
    }
    if (root) {
        root->setAutomaticCulling(static_cast<glitch::scene::E_CULLING_TYPE>(2));
        if (nodeName && !root->getChildren().empty()) {
            ISceneNode* first = *root->getChildren().begin();
            if (std::strstr(first->getName(), "_module")) {
                glitch::core::svector<ISceneNode*> grandChildren;       // the next link is taken before a removal, so the list is copied first
                for (ISceneNode* grandChild : first->getChildren()) {
                    grandChildren.push_back(grandChild);
                }
                for (ISceneNode* child : grandChildren) {
                    if (!std::strstr(child->getName(), "_minimap") && !std::strstr(child->getName(), "_mesh") &&
                        !std::strstr(child->getName(), "_floor") && !std::strstr(child->getName(), "_exit")) {
                        child->remove();                           // vtable +0x68
                    }
                }
            }
        }
        if (flagA) {
            rootNode->addChild(root);                              // vtable +0x5c
        }
    }
    return root;
}

// 0x359a38 SceneManager::AddSkyBoxSceneNode(char const*, char const*)
// An empty file name does nothing. The sky scene is loaded (LoadScene with flagA clear and flagB set) and its first mesh node (type
// 'daem') is looked up. With one, the previous sky box (+0x438) is removed and dropped, the mesh node's mesh (vtable +0xf8) goes to a
// new SkyBoxMeshSceneNode, which is added to the root and kept at +0x438, and the loaded scene is dropped. A scene without a mesh
// node is left loaded, as in the original.
void SceneManager::AddSkyBoxSceneNode(const char* fileA, const char* fileB) {
    if (*fileA == '\0') {
        return;
    }
    glitch::scene::ISceneNode* loaded = LoadScene(fileA, fileB, false, true);
    if (!loaded) {
        return;
    }
    glitch::scene::ISceneNode* meshNode =
        getSceneNodeFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(0x6D656164u), loaded);   // 'daem'
    if (!meshNode) {
        return;
    }
    if (m_skyBox) {
        m_skyBox->remove();                                        // vtable +0x68
        m_skyBox->drop();
        m_skyBox = nullptr;
    }
    glitch::scene::IMeshSceneNode* sceneMeshNode = static_cast<glitch::scene::IMeshSceneNode*>(meshNode);
    boost::intrusive_ptr<glitch::collada::IMesh> mesh(static_cast<glitch::collada::IMesh*>(sceneMeshNode->getMesh().get()), true);
    SkyBoxMeshSceneNode* sky = new SkyBoxMeshSceneNode(mesh, sceneMeshNode);
    rootNode->addChild(sky);                                       // vtable +0x5c
    m_skyBox = sky;
    loaded->drop();
}

// 0x359b68 SceneManager::PreloadScene(char const*, char const*)
// Loads a scene without attaching it to the root and remembers its root node in m_loadedScenes.
void SceneManager::PreloadScene(const char* file, const char* nodeName) {
    glitch::scene::ISceneNode* scene = LoadScene(file, nodeName, false, false);
    if (scene) {
        m_loadedScenes.push_back(scene);
    }
}

// 0x359c60 SceneManager::GetMaterial(glitch::scene::ISceneNode*, char const*, bool)
// A null node or a null name gives a null material (the original writes 0 through its hidden result slot); otherwise the result of the std::string overload (0x355000).
boost::intrusive_ptr<glitch::video::CMaterial> SceneManager::GetMaterial(glitch::scene::ISceneNode* node, const char* name, bool flag) {
    if (!node || !name) {
        return boost::intrusive_ptr<glitch::video::CMaterial>();
    }
    return GetMaterial(node, std::string(name), flag);
}

// 0x359d08 SceneManager::SetMaterialRimLightEffects(boost::intrusive_ptr<glitch::video::CMaterial>, float, std::string)
// Applies to a material whose renderer name starts with GL_Diffuse or GL_Xray and whose name is longer than two characters and starts
// with GL_ or XR_. RimLight_Level takes the power when it is above -0.5. With a non-empty tag, the texture "data/3d/textures/<tag>"
// (the device's texture manager, IVideoDriver +0xe0) is stored into RimLight unless the current RimLight texture's name contains
// "char_rim_light_off.tga".
void SceneManager::SetMaterialRimLightEffects(boost::intrusive_ptr<glitch::video::CMaterial> material, float power,
                                              std::string tag) {
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
    const char* rendererName = renderer->m_name;
    if (!std::strncmp(rendererName, "GL_Diffuse", 10) || !std::strncmp(rendererName, "GL_Xray", 7)) {
        const char* name = MaterialName(*material);
        if (std::strlen(name) > 2 && (!std::strncmp(name, "GL_", 3) || !std::strncmp(name, "XR_", 3))) {
            const std::uint16_t levelId = material->m_renderer->getParameterID("RimLight_Level", 0);
            const std::uint16_t rimId = material->m_renderer->getParameterID("RimLight", 0);
            if (levelId != 0xFFFF && power > -0.5) {
                material->parameters.setParameter<float>(levelId, 0u, power);
            }
            if (rimId != 0xFFFF && !tag.empty() && tag[0] != '\0') {
                std::string path("data/3d/textures/");
                path.append(tag);
                boost::intrusive_ptr<glitch::video::ITexture> texture =
                    ApplicationGetInstance().m_device->videoDriver->m_textureManager->getTexture(path.c_str(), nullptr);
                boost::intrusive_ptr<glitch::video::ITexture> current;
                material->parameters.getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(rimId, 0u, current);
                if (!(current && std::strstr(current->m_name.c_str(), "char_rim_light_off.tga"))) {
                    material->parameters.setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(rimId, 0u, texture);
                }
            }
        }
    }
}

// (the three char* SearchByName overloads, 0x359fac / 0x35a044 / 0x35a0e4, live in g1-game-world-SceneManager-9fc3ac-0.cpp)

// 0x35a188 SceneManager::SetMaterialRimLightEffects(glitch::scene::ISceneNode*, float, std::string)
// Applies the rim light to every material of the nodes of the three character types under node (the root when node is
// null). The type tags are 'daem' (0x6d656164), 'daes' (0x73656164) and 'daeM' (0x4d656164), packed as fourcc values.
void SceneManager::SetMaterialRimLightEffects(glitch::scene::ISceneNode* node, float power, std::string tag) {
    glitch::scene::ISceneNode* root = node ? node : rootNode;             // +0x04 when node is null
    glitch::core::svector<glitch::scene::ISceneNode*> found;
    SearchByType(root, found, 0x6D656164u);
    SearchByType(root, found, 0x73656164u);
    SearchByType(root, found, 0x4D656164u);
    for (glitch::scene::ISceneNode* current : found) {
        const int count = static_cast<int>(current->getMaterialCount());
        for (int i = 0; i < count; ++i) {
            boost::intrusive_ptr<glitch::video::CMaterial> material =
                    current->getMaterial(static_cast<std::uint32_t>(i));
            SetMaterialRimLightEffects(material, power, tag);
        }
    }
}

// 0x35a3d8 SceneManager::registerNodeForCustomRendering(glitch::scene::ISceneNode*, boost::intrusive_ptr<CMaterial> const&,
//              void*, E_SCENE_NODE_CUSTOM_RENDER_PASS, glitch::core::vector3d<float> const*, int)
// Returns 1 when the node was filed into a list for the pass and 0 otherwise. Pass 0 refuses a node that is already in the camera
// list; pass 1 files a distance entry measured from the camera position (+0xe8); passes 2, 5 and 6 file plain entries; pass 4 and
// pass 3 with no material file default entries; pass 3 with a material, and pass 7, file a default entry when the batch compile
// flag (+0x28a) is set or (pass 3) the first pass of the material's technique does not carry the transparency bit (0x10000 of the
// second state word), and a transparent entry otherwise; passes 9 and 10 file default entries into the game lists at +0x464 and +0x470.
int SceneManager::registerNodeForCustomRendering(glitch::scene::ISceneNode* node,
                                                 const boost::intrusive_ptr<glitch::video::CMaterial>& material,
                                                 void* userData, std::uint32_t pass,
                                                 const glitch::core::vector3d<float>* position, int sortOrder) {
    switch (pass) {
    case 0:
        for (const SUnsortedNodeEntry& entry : cameraNodes) {                 // +0x3c
            if (entry.node == node) {
                return 0;
            }
        }
        cameraNodes.push_back(SUnsortedNodeEntry{node, userData});
        return 1;
    case 1:
        lightNodes.push_back(SDistanceNodeEntry(node, cameraPosition, userData));   // +0x48, position +0xe8
        return 1;
    case 2:
        preSolidNodes.push_back(SUnsortedNodeEntry{node, userData});          // +0x6c
        return 1;
    case 3:
        if (!material) {
            defaultNodes.push_back(SDefaultNodeEntry(node, boost::intrusive_ptr<glitch::video::CMaterial>(), userData, sortOrder));
            return 1;
        }
        if ((material->m_renderer->m_techniques[material->getTechnique()].passes->stateWords[1] & 0x10000u) == 0 ||
            batchCompiling) {                                                 // +0x28a
            defaultNodes.push_back(SDefaultNodeEntry(node, material, userData, sortOrder));
        } else {
            transparentNodes.push_back(STransparentNodeEntry(node, cameraPosition, material, userData, position, sortOrder));
        }
        return 1;
    case 4:
        defaultNodes.push_back(SDefaultNodeEntry(node, material, userData, sortOrder));       // +0x78
        return 1;
    case 5:
        shadowVolumeNodes.push_back(SRenderDataSortNodeEntry{node, userData});                // +0x54
        return 1;
    case 6:
        shadowMeshNodes.push_back(SRenderDataSortNodeEntry{node, userData});                  // +0x60
        return 1;
    case 7:
        if (!batchCompiling) {                                                // +0x28a
            transparentNodes.push_back(STransparentNodeEntry(node, cameraPosition, material, userData, position, sortOrder));   // +0x84
        } else {
            defaultNodes.push_back(SDefaultNodeEntry(node, material, userData, sortOrder));
        }
        return 1;
    case 9:
        m_gameNodes464.push_back(SDefaultNodeEntry(node, material, userData, sortOrder));     // +0x464
        return 1;
    case 10:
        m_gameNodes470.push_back(SDefaultNodeEntry(node, material, userData, sortOrder));     // +0x470
        return 1;
    default:
        return 0;
    }
}
