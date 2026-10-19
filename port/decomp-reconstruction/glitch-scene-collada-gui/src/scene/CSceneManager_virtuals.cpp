// The CSceneManager virtuals that are not part of the frame path (src/scene/CSceneManager_render.cpp), the scene file I/O
// (src/scene/CSceneManager_scene_io.cpp) or the plain accessors (src/scene/CSceneManager.cpp): the constructor, the destructor, the
// attribute exchange, update, clear, createNewSceneManager and the compile entry points. This file defines the key function
// (serializeAttributes), so it carries the vtable; see src/scene/CSceneManager.cpp for the accessors and the faithful bodies.
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

#include <cstddef>
#include <exception>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada/CGlitchNewParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/gui/ICursorControl.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/scene/CColladaBinaryFileLoader.hpp"
#include "glitch-scene-collada-gui/scene/CDefaultSceneNodeAnimatorFactory.hpp"
#include "glitch-scene-collada-gui/scene/CAppendMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CBatchSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CDefaultSceneNodeFactory.hpp"
#include "glitch-scene-collada-gui/scene_simple_accessors.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMeshCache.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-video/batch_driver.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

// Sentinel passed to update() to reset the clock from the timer.
constexpr float kUpdateResetTime = -123460.0f;

// Adds / drops a use of a reference-counted object (the original: ++*(object + 4); IReferenceCounted::drop).
template <typename T>
void grab(T* object) {
    if (object != nullptr) ++object->referenceCounter;
}
template <typename T>
void release(T* object) {
    if (object != nullptr) object->drop();
}

// The batch driver (glitch::video::CBatchDriver, 0x264 bytes) now exists (glitch-video/include/glitch-video/
// batch_driver.hpp, included above), so the sizeof SFINAE below selects the allocating overload and the `long` fallback
// is dead code kept only so this TU still compiles if the include is ever dropped. The second helper drops the driver
// through IReferenceCounted::drop, as the original's destructor does (0x58eb70).
template <typename T, std::size_t = sizeof(T)>
T* makeBatchDriver(video::IVideoDriver* driver, int) {
    const auto* device = driver->m_device;
    std::uint32_t width = 0;
    std::uint32_t height = 0;
    std::memcpy(&width, device->creationParameters.bytes + 0x40, sizeof(width));
    std::memcpy(&height, device->creationParameters.bytes + 0x44, sizeof(height));
    return new T(width, height, driver);
}
template <typename T>
T* makeBatchDriver(video::IVideoDriver*, long) {
    return nullptr;
}
template <typename T, std::size_t = sizeof(T)>
void dropBatchDriver(T* batchDriver, int) {
    if (batchDriver != nullptr) batchDriver->drop();
}
template <typename T>
void dropBatchDriver(T*, long) {}

}  // namespace

// 0x58d908 _ZN6glitch5scene13CSceneManagerC1EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_3gui14ICursorControlEPNS0_10IMeshCacheEPNS7_15IGUIEnvironmentE (complete object)
// 0x58ddd0 _ZN6glitch5scene13CSceneManagerC2EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_3gui14ICursorControlEPNS0_10IMeshCacheEPNS7_15IGUIEnvironmentE (base object)
// Reconstructed (the two symbols are one C++ constructor here, as in the rest of the port), with one host deviation.
// The order of the original: the driver (also kept at +0x18) and the batch driver built from the device's screen size
// (operator new(0x264) then CBatchDriver(width, height, driver) at 0x58d994-0x58d9bc, stored at this +0x1c), the file
// system, the stencil clear value 127 set on the driver, the root node (CSceneManagerRootNode, linked into the +0x08
// child list), then a use of the driver, the cursor control and the GUI environment, a use of the mesh cache or a new
// CMeshCache over the driver, the CSceneCollisionManager, the CColladaBinaryFileLoader (the first external mesh loader,
// its creation use is the list's), the CDefaultSceneNodeFactory and CDefaultSceneNodeAnimatorFactory (registered, then
// the creator's use is dropped) and the shadow colour 0x96000000.
// Deviation, named: the original dereferences the video driver unconditionally, and the port still cannot - 0x58d994
// reads the device out of the driver (`LDR R3,[R6,#0xD4]`) and makeBatchDriver dereferences the device in turn, while
// the scene tests build a CSceneManager with a null driver (seven test subclasses do). The batch driver is therefore
// created only when the driver is present; CNullDriver's constructor would fault on a null driver anyway. With a real
// driver the allocation now happens: glitch-video landed glitch::video::CBatchDriver (batch_driver.hpp, 0x264 bytes)
// for this batch, so the sizeof SFINAE in makeBatchDriver above selects the allocating overload.
CSceneManager::CSceneManager(video::IVideoDriver* videoDriver, const boost::intrusive_ptr<io::IFileSystem>& fileSystemArg,
                             gui::ICursorControl* cursorControlArg, IMeshCache* meshCacheArg,
                             gui::IGUIEnvironment* guiEnvironmentArg)
    : fileSystem(fileSystemArg) {
    driver = videoDriver;
    driverCopy = videoDriver;
    if (videoDriver != nullptr) {
        batchDriver = makeBatchDriver<video::CBatchDriver>(videoDriver, 0);
    }
    cursorControl = cursorControlArg;
    meshCache = meshCacheArg;
    guiEnvironment = guiEnvironmentArg;
    if (videoDriver != nullptr) {
        videoDriver->setClearStencil(127);
    }
    auto* root = new CSceneManagerRootNode(this);
    rootNode = root;
    SListLink* rootLink = static_cast<SListLink*>(static_cast<ISceneNode*>(root));
    SListLink* tail = rootChildren.sentinel.prev;
    rootLink->prev = tail;
    tail->next = rootLink;
    rootChildren.sentinel.prev = rootLink;
    rootLink->next = &rootChildren.sentinel;
    ++rootChildren.count;
    grab(videoDriver);
    grab(cursorControlArg);
    grab(guiEnvironmentArg);
    if (meshCacheArg != nullptr) {
        grab(meshCacheArg);
    } else {
        meshCache = new CMeshCache(videoDriver);
    }
    collisionManager = new CSceneCollisionManager(this, driver);
    externalMeshLoaders.push_back(new CColladaBinaryFileLoader(this, fileSystem));
    auto* nodeFactory = new CDefaultSceneNodeFactory(this, cursorControl, fileSystem);
    registerSceneNodeFactory(nodeFactory);
    nodeFactory->drop();
    auto* animatorFactory = new CDefaultSceneNodeAnimatorFactory(this, cursorControl);
    registerSceneNodeAnimatorFactory(animatorFactory);
    animatorFactory->drop();
    setShadowColor(video::SColor{0x96000000u});
}

// 0x58eb70 _ZN6glitch5scene13CSceneManagerD1Ev
// 0x58ef1c _ZN6glitch5scene13CSceneManagerD2Ev
// 0x58ef00 _ZN6glitch5scene13CSceneManagerD0Ev (skipped)
// The order of the original: the deletion queue, the uses of the cursor control, the collision manager and the GUI
// environment, the external mesh loaders, the active camera, the mesh cache, the node and animator factories, the root node
// (after unlinking the root child list), the render node list, the batch driver and the driver; the vectors, the strings, the
// attribute set and the file system follow as members. After the driver the two shared billboard buffers of the particle nodes are
// released (CParticleSystemSceneNode::deleteSharedBuffer, then CGlitchNewParticleSystemSceneNode::deleteSharedBuffer).
CSceneManager::~CSceneManager() {
    clearDeletionList();
    release(cursorControl);
    release(collisionManager);
    release(guiEnvironment);
    for (IMeshLoader* loader : externalMeshLoaders) {
        release(loader);
    }
    if (activeCamera != nullptr) {
        ICameraSceneNode* camera = activeCamera;
        activeCamera = nullptr;
        camera->drop();
    }
    release(meshCache);
    for (ISceneNodeFactory* factory : sceneNodeFactories) {
        release(factory);
    }
    for (ISceneNodeAnimatorFactory* factory : sceneNodeAnimatorFactories) {
        release(factory);
    }
    SListLink* link = rootChildren.sentinel.next;
    while (link != &rootChildren.sentinel) {
        SListLink* following = link->next;
        link->next = nullptr;
        link->prev = nullptr;
        link = following;
    }
    rootChildren.sentinel.next = &rootChildren.sentinel;
    rootChildren.sentinel.prev = &rootChildren.sentinel;
    rootChildren.count = 0;
    release(rootNode);
    renderNodes.clear();
    dropBatchDriver(batchDriver, 0);
    release(driverCopy);
    collada::CParticleSystemSceneNode::deleteSharedBuffer();
    collada::CGlitchNewParticleSystemSceneNode::deleteSharedBuffer();
}

// 0x588fe8 _ZNK6glitch5scene13CSceneManager19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Writes the root node's name ("Name"), its id ("Id") and the ambient light ("AmbientLight", four floats).
void CSceneManager::serializeAttributes(io::IAttributes* attributesOut, io::SAttributeReadWriteOptions* /*options*/) const {
    attributesOut->addString("Name", rootNode->getName(), false);
    attributesOut->addInt("Id", rootNode->getID(), false);
    attributesOut->addColorf("AmbientLight", ambientLight, false);
}

// 0x58bbc4 _ZN6glitch5scene13CSceneManager21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Reads "Name", "Id" and "AmbientLight" into the root node and the ambient light, then resets the root's transform (zero
// position, identity rotation, unit scale), makes it visible, clears culling and the debug flag, and updates its matrix.
void CSceneManager::deserializeAttributes(io::IAttributes* attributesIn, io::SAttributeReadWriteOptions* /*options*/) {
    rootNode->setName(core::to_stringc(attributesIn->getString("Name")));
    rootNode->setID(attributesIn->getInt("Id"));
    ambientLight = attributesIn->getColorf("AmbientLight");
    rootNode->setPosition(core::vector3d<float>{0.0f, 0.0f, 0.0f});
    core::quaternion identity;
    identity.X = 0.0f;
    identity.Y = 0.0f;
    identity.Z = 0.0f;
    identity.W = 1.0f;
    rootNode->setRotation(identity);
    rootNode->setScale(core::vector3d<float>{1.0f, 1.0f, 1.0f});
    rootNode->setVisible(true);
    rootNode->setAutomaticCulling(static_cast<E_CULLING_TYPE>(0));
    rootNode->setIsDebugObject(false);
    rootNode->updateAbsolutePosition(false);
}

// 0x58ff10 / 0x58fccc (segment size) and 0x58fee0 / 0x58fc9c (maximal index count): the four compile overloads. Each stores the
// segmentation parameters in the batch driver (the vector3d at +0x250 .. +0x258 with the mode byte +0x260 cleared, or the count at
// +0x25C with the mode byte set) and runs compileInternal (the vector overloads call 0x58fd10, the node overloads 0x58facc).
CBatchSceneNode* CSceneManager::compile(const core::svector<ISceneNode*>& nodes, CBatchSceneNode* batch, bool flag,
                                        ISegmentCompileCallback* compileCallback,
                                        ISplitSegmentChoiceCallback* choiceCallback,
                                        core::vector3d<float> segmentSize) {
    batchDriver->segmentSize = segmentSize;  // +0x250 .. +0x258
    batchDriver->segmentSizeMode = false;    // +0x260
    return compileInternal(nodes, batch, flag, compileCallback, choiceCallback);
}
CBatchSceneNode* CSceneManager::compile(const core::svector<ISceneNode*>& nodes, CBatchSceneNode* batch, bool flag,
                                        ISegmentCompileCallback* compileCallback,
                                        ISplitSegmentChoiceCallback* choiceCallback, std::uint32_t maxIndexCount) {
    batchDriver->segmentSizeMode = true;     // +0x260
    batchDriver->maxIndices = maxIndexCount; // +0x25C
    return compileInternal(nodes, batch, flag, compileCallback, choiceCallback);
}
CBatchSceneNode* CSceneManager::compile(ISceneNode* node, CBatchSceneNode* batch, bool flag,
                                        ISegmentCompileCallback* compileCallback,
                                        ISplitSegmentChoiceCallback* choiceCallback,
                                        core::vector3d<float> segmentSize) {
    batchDriver->segmentSize = segmentSize;
    batchDriver->segmentSizeMode = false;
    return compileInternal(node, batch, flag, compileCallback, choiceCallback);
}
CBatchSceneNode* CSceneManager::compile(ISceneNode* node, CBatchSceneNode* batch, bool flag,
                                        ISegmentCompileCallback* compileCallback,
                                        ISplitSegmentChoiceCallback* choiceCallback, std::uint32_t maxIndexCount) {
    batchDriver->segmentSizeMode = true;
    batchDriver->maxIndices = maxIndexCount;
    return compileInternal(node, batch, flag, compileCallback, choiceCallback);
}

// 0x58fd10 _ZN6glitch5scene13CSceneManager15compileInternalERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEPNS0_15CBatchSceneNodeEbPNS0_23ISegmentCompileCallbackEPNS0_27ISplitSegmentChoiceCallbackE
// 0x58facc _ZN6glitch5scene13CSceneManager15compileInternalEPNS0_10ISceneNodeEPNS0_15CBatchSceneNodeEbPNS0_23ISegmentCompileCallbackEPNS0_27ISplitSegmentChoiceCallbackE
// The two bodies are identical but for the registration call (vptr+0x34 for a node vector, vptr+0x30 for a node tree) and the
// node collection (the vector overload collects the vector, the node overload collects the batch node it is filling - as the
// listing does). A batch node (id -1) is created when none is given. The stack objects are the segment-compile callback (+0x238)
// and the end-of-batch callback (+0x234) the batch driver calls while the nodes are rendered into it. The batch driver becomes the
// manager's driver for the registration and the render (drawInit, the batch flag raised unless it already is), is flushed, the
// configurations are finalized, the node's vptr+0xfc runs with the original driver, which is restored.
CBatchSceneNode* CSceneManager::compileInternal(const core::svector<ISceneNode*>& nodes, CBatchSceneNode* batch, bool flag,
                                                ISegmentCompileCallback* compileCallback,
                                                ISplitSegmentChoiceCallback* choiceCallback) {
    CBatchSceneNode* batchNode = batch;
    if (batchNode == nullptr) {
        batchNode = new CBatchSceneNode(-1);
    }
    SDefaultSegmentCompileCallback segmentCallback;
    segmentCallback.node = batchNode;
    segmentCallback.sceneManager = this;
    segmentCallback.userCallback = compileCallback;
    segmentCallback.batchIndex = -1;
    SDefaultEndOfBatchCallback endCallback;
    endCallback.node = batchNode;
    endCallback.compileState = &segmentCallback;
    endCallback.driver = driverCopy;
    endCallback.usage = 4;
    batchDriver->endOfBatchCallback = &endCallback;
    batchDriver->segmentCompileCallback = &segmentCallback;
    batchDriver->m_choiceCallback = choiceCallback;
    batchDriver->initBuffer();
    drawInit(batchDriver);
    collectAllNodes(nodes);
    if (batchCompiling) {
        registerSceneNodesCompile(nodes);
    } else {
        batchCompiling = true;
        registerSceneNodesCompile(nodes);
        batchCompiling = false;
    }
    renderLists(batchDriver);
    batchDriver->flush();
    endCallback.finalize();
    batchNode->setup(flag, driverCopy);
    driver = driverCopy;
    batchDriver->releaseBuffer();
    return batchNode;
}
CBatchSceneNode* CSceneManager::compileInternal(ISceneNode* node, CBatchSceneNode* batch, bool flag,
                                                ISegmentCompileCallback* compileCallback,
                                                ISplitSegmentChoiceCallback* choiceCallback) {
    CBatchSceneNode* batchNode = batch;
    if (batchNode == nullptr) {
        batchNode = new CBatchSceneNode(-1);
    }
    SDefaultSegmentCompileCallback segmentCallback;
    segmentCallback.node = batchNode;
    segmentCallback.sceneManager = this;
    segmentCallback.userCallback = compileCallback;
    segmentCallback.batchIndex = -1;
    SDefaultEndOfBatchCallback endCallback;
    endCallback.node = batchNode;
    endCallback.compileState = &segmentCallback;
    endCallback.driver = driverCopy;
    endCallback.usage = 4;
    batchDriver->endOfBatchCallback = &endCallback;
    batchDriver->segmentCompileCallback = &segmentCallback;
    batchDriver->m_choiceCallback = choiceCallback;
    batchDriver->initBuffer();
    drawInit(batchDriver);
    collectAllNodes(batchNode);
    if (batchCompiling) {
        registerSceneNodesCompile(node);
    } else {
        batchCompiling = true;
        registerSceneNodesCompile(node);
        batchCompiling = false;
    }
    renderLists(batchDriver);
    batchDriver->flush();
    endCallback.finalize();
    batchNode->setup(flag, driverCopy);
    driver = driverCopy;
    batchDriver->releaseBuffer();
    return batchNode;
}

// 0x58b9f0 _ZN6glitch5scene13CSceneManager6updateEfb
// The reset sentinel (-123460) re-reads the clock from the timer; otherwise `elapsed` is added. The time is then truncated
// to milliseconds. The node lists are rebuilt when the hierarchy changed. With updateAnimators the animated nodes take
// onUpdateTime; without it the root node takes onAnimate.
void CSceneManager::update(float elapsed, bool updateAnimators) {
    if (elapsed == kUpdateResetTime) {
        time = static_cast<float>(os::Timer::getTime());
    } else {
        time += elapsed;
    }
    const auto timeMs = static_cast<std::uint32_t>(time);
    if (hierarchyChanged) {
        collectAllNodes();
    }
    if (updateAnimators) {
        for (std::size_t i = 0; i < animatedNodes.size(); ++i) {
            animatedNodes[i]->onUpdateTime(timeMs);
        }
    } else {
        rootNode->onAnimate(timeMs);
    }
}

// 0x589888 _ZN6glitch5scene13CSceneManager5clearEv
// Removes every child of the root node (vptr+0x64) and drops the shadow receiver targets.
void CSceneManager::clear() {
    if (rootNode != nullptr) {
        rootNode->removeAll();
    }
    shadowReceiverTargets.clear();
}

// 0x58dd50 _ZN6glitch5scene13CSceneManager21createNewSceneManagerEb
// A new manager over the same driver, file system, cursor control, mesh cache and GUI environment (operator new(0x294): a plain
// CSceneManager); with `copyRoot` its own root node is dropped and replaced by a clone of this manager's root (vptr+0xc0). The
// original leaves the dropped root's link in the child list at +0x08 (a dangling entry the destructor then walks); the port unlinks
// it first, and the clone is not linked, as in the original.
CSceneManager* CSceneManager::createNewSceneManager(bool copyRoot) {
    auto* created = new CSceneManager(driver, fileSystem, cursorControl, meshCache, guiEnvironment);
    if (copyRoot) {
        SListLink* link = static_cast<SListLink*>(created->rootNode);
        link->prev->next = link->next;
        link->next->prev = link->prev;
        link->next = nullptr;
        link->prev = nullptr;
        --created->rootChildren.count;
        created->rootNode->drop();
        created->rootNode = rootNode->clone();
    }
    return created;
}

// K 0x88: see the declaration. Ends the program like a call through the imported __cxa_pure_virtual does.
void CSceneManager::registerSkinnedMesh(void* /*skinnedMeshNode*/) {
    std::terminate();
}

}  // namespace glitch::scene
