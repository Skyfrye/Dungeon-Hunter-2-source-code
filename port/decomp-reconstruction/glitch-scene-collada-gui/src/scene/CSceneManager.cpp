// Bodies of glitch::scene::CSceneManager (canonical class: scene/CSceneManager.hpp). This file replaces
// src/scene_nodes.cpp (the CSceneManager accessors), src/tb_scene-collada-gui-glitch_scene_CSceneManager-0.cpp (isCulled and
// the draw stubs) and the CSceneManager free functions of recon/slice_05.cpp and recon/slice_06.cpp that were written against
// stand-in managers. The comment before each function is `// 0xADDR symbol`; a comment with PARTIAL marks a partial row.
//
// Vtable note: the class is abstract (registerSkinnedMesh is pure), so its vtable is emitted where the first non-inline virtual
// (serializeAttributes) is defined. That function is in src/scene/CSceneManager_virtuals.cpp together with every other virtual
// that is not yet faithful, so a program that only calls notifyHierarchyChanged (ISceneNode does) does not pull the vtable.
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"
#include "glitch-scene-collada-gui/scene/SceneFactories.hpp"
#include "glitch-video/texture.hpp"

namespace glitch::scene {

namespace {

// Adds a use to a reference-counted object (the original: ++*(object + 4), or +vbase + 4 for the virtual-base classes).
template <typename T>
void grab(T* object) {
    if (object != nullptr) ++object->referenceCounter;
}

// Drops a use; the object is deleted when the count reaches zero.
template <typename T>
void release(T* object) {
    if (object != nullptr) object->drop();
}

// Frustum-box half of CSceneManager::isCulled, case 1 (box mode). True when the node box is outside the frustum box.
bool isBoxCulledByFrustumBox(const core::aabbox3d<float>& box, const core::aabbox3d<float>& frustumBox) {
    if (box.MinEdge.X > frustumBox.MaxEdge.X) return true;
    if (box.MinEdge.Y > frustumBox.MaxEdge.Y) return true;
    if (box.MinEdge.Z > frustumBox.MaxEdge.Z) return true;
    if (box.MaxEdge.X < frustumBox.MinEdge.X) return true;
    if (box.MaxEdge.Y < frustumBox.MinEdge.Y) return true;
    return !(box.MaxEdge.Z >= frustumBox.MinEdge.Z);
}

}  // namespace

// 0x5890a8 _ZN6glitch5scene13CSceneManager23notifyVisibilityChangedEv
void CSceneManager::notifyVisibilityChanged() {
    visibilityChanged = true;
}

// 0x5890b4 _ZN6glitch5scene13CSceneManager22notifyHierarchyChangedEv
void CSceneManager::notifyHierarchyChanged() {
    hierarchyChanged = true;
    notifyVisibilityChanged();
}

// 0x5890c0 _ZN6glitch5scene13CSceneManager15setActiveCameraEPNS0_16ICameraSceneNodeE
// Replaces the active camera (adds a use to the new one, drops the old) and raises the visibility flag.
void CSceneManager::setActiveCamera(ICameraSceneNode* camera) {
    if (activeCamera == camera) return;
    ICameraSceneNode* previous = activeCamera;
    grab(camera);
    release(previous);
    activeCamera = camera;
    notifyVisibilityChanged();
}

// 0x5891ac _ZN6glitch5scene13CSceneManager14setShadowColorENS_5video6SColorE
void CSceneManager::setShadowColor(video::SColor color) {
    for (video::SColor& slot : shadowColors) {
        slot = color;
    }
}

// 0x589354 _ZN6glitch5scene13CSceneManager22setSceneNodeRenderPassENS0_24E_SCENE_NODE_RENDER_PASSE
E_SCENE_NODE_RENDER_PASS CSceneManager::setSceneNodeRenderPass(E_SCENE_NODE_RENDER_PASS pass) {
    const E_SCENE_NODE_RENDER_PASS previous = renderPass;
    renderPass = pass;
    return previous;
}

// 0x589508 _ZN6glitch5scene13CSceneManager15setAmbientLightERKNS_5video7SColorfE
void CSceneManager::setAmbientLight(const video::SColorf& color) {
    ambientLight = color;
}

// 0x589518 _ZNK6glitch5scene13CSceneManager22getCurrentRenderedNodeEPPvPi
std::uintptr_t CSceneManager::getCurrentRenderedNode(void** userData, std::int32_t* sortOrder) const {
    if (userData != nullptr) *userData = currentUserData;
    if (sortOrder != nullptr) *sortOrder = currentSortOrder;
    return reinterpret_cast<std::uintptr_t>(currentNode);
}

// 0x589538 _ZNK6glitch5scene13CSceneManager19getNextRenderedNodeEPPvPi
std::uintptr_t CSceneManager::getNextRenderedNode(void** userData, std::int32_t* sortOrder) const {
    if (userData != nullptr) *userData = nextUserData;
    if (sortOrder != nullptr) *sortOrder = nextSortOrder;
    return reinterpret_cast<std::uintptr_t>(nextNode);
}

// 0x589558 _ZN6glitch5scene13CSceneManager16createMeshWriterENS0_17EMESH_WRITER_TYPEE
IMeshWriter* CSceneManager::createMeshWriter(EMESH_WRITER_TYPE /*type*/) {
    return nullptr;
}

// 0x589328 _ZN6glitch5scene13CSceneManager17postEventFromUserERKNS_6SEventE
// Hands the event to the active camera (vptr+0x100, ICameraSceneNode::onEvent); false without a camera.
bool CSceneManager::postEventFromUser(const glitch::SEvent& event) {
    if (activeCamera != nullptr) {
        return activeCamera->onEvent(event);
    }
    return false;
}

// 0x589e18 _ZN6glitch5scene13CSceneManager11setupCameraEv
// Clears the camera position, then, with an active camera, runs its onRegisterSceneNode (vptr+0x10, which recalculates the
// matrices) and stores its absolute position.
void CSceneManager::setupCamera() {
    cameraPosition = core::vector3d<float>{0.0f, 0.0f, 0.0f};
    if (activeCamera != nullptr) {
        activeCamera->onRegisterSceneNode();
        cameraPosition = activeCamera->getAbsolutePosition();
    }
}

// 0x589208 _ZN6glitch5scene13CSceneManager16getSceneNodeFromIdEiPNS0_10ISceneNodeE
// Depth-first search from `start` (the root when null); the recursion goes through the manager's own virtual.
ISceneNode* CSceneManager::getSceneNodeFromId(int searchId, ISceneNode* start) {
    ISceneNode* from = start != nullptr ? start : rootNode;
    if (from->getID() == searchId) return from;
    for (ISceneNode* child : from->children) {
        if (ISceneNode* found = getSceneNodeFromId(searchId, child)) return found;
    }
    return nullptr;
}

// 0x589d48 _ZN6glitch5scene13CSceneManager17getSceneNodeFromUIDEPKcPNS0_10ISceneNodeE
ISceneNode* CSceneManager::getSceneNodeFromUID(const char* uid, ISceneNode* start) {
    ISceneNode* from = start != nullptr ? start : rootNode;
    return from->getSceneNodeFromUID(uid);
}

// 0x589d58 _ZN6glitch5scene13CSceneManager18getSceneNodeFromNameEPKcPNS0_10ISceneNodeE
ISceneNode* CSceneManager::getSceneNodeFromName(const char* nodeName, ISceneNode* start) {
    ISceneNode* from = start != nullptr ? start : rootNode;
    return from->getSceneNodeFromName(nodeName);
}

// 0x589298 _ZN6glitch5scene13CSceneManager18getSceneNodeFromTypeENS0_17E_SCENE_NODE_TYPEEPNS0_10ISceneNodeE
ISceneNode* CSceneManager::getSceneNodeFromType(E_SCENE_NODE_TYPE type, ISceneNode* start) {
    ISceneNode* from = start != nullptr ? start : rootNode;
    if (from->getType() == type || type == ESNT_ANY) return from;
    for (ISceneNode* child : from->children) {
        if (ISceneNode* found = getSceneNodeFromType(type, child)) return found;
    }
    return nullptr;
}

// 0x58c3cc _ZN6glitch5scene13CSceneManager19getSceneNodesFromTypeENS0_17E_SCENE_NODE_TYPEERSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEES5_
void CSceneManager::getSceneNodesFromType(E_SCENE_NODE_TYPE type, core::svector<ISceneNode*>& out, ISceneNode* start) {
    ISceneNode* from = start != nullptr ? start : rootNode;
    from->getSceneNodesFromType(type, out);
}

// 0x58942c _ZN6glitch5scene13CSceneManager12addSceneNodeEPKcPNS0_10ISceneNodeE
// Asks the registered node factories, newest first, until one creates the node (parent: the root when null).
ISceneNode* CSceneManager::addSceneNode(const char* typeName, ISceneNode* parent) {
    ISceneNode* target = parent != nullptr ? parent : rootNode;
    for (std::size_t i = sceneNodeFactories.size(); i-- > 0;) {
        if (ISceneNode* created = sceneNodeFactories[i]->addSceneNode(typeName, target)) return created;
    }
    return nullptr;
}

// 0x5893c0 _ZNK6glitch5scene13CSceneManager20getSceneNodeTypeNameENS0_17E_SCENE_NODE_TYPEE
// The first factory, newest first, that knows the type gives its name.
const char* CSceneManager::getSceneNodeTypeName(E_SCENE_NODE_TYPE type) const {
    for (std::size_t i = sceneNodeFactories.size(); i-- > 0;) {
        if (const char* found = sceneNodeFactories[i]->getCreateableSceneNodeTypeName(type)) return found;
    }
    return nullptr;
}

// 0x5894a4 _ZNK6glitch5scene13CSceneManager19getAnimatorTypeNameENS0_26E_SCENE_NODE_ANIMATOR_TYPEE
// The first animator factory, oldest first, that knows the type gives its name.
const char* CSceneManager::getAnimatorTypeName(E_SCENE_NODE_ANIMATOR_TYPE type) const {
    for (ISceneNodeAnimatorFactory* factory : sceneNodeAnimatorFactories) {
        if (const char* found = factory->getCreateableSceneNodeAnimatorTypeName(type)) return found;
    }
    return nullptr;
}

// 0x58ae20 _ZN6glitch5scene13CSceneManager24registerSceneNodeFactoryEPNS0_17ISceneNodeFactoryE
void CSceneManager::registerSceneNodeFactory(ISceneNodeFactory* factory) {
    if (factory == nullptr) return;
    grab(factory);
    sceneNodeFactories.push_back(factory);
}

// 0x58d758 _ZN6glitch5scene13CSceneManager31registerSceneNodeAnimatorFactoryEPNS0_25ISceneNodeAnimatorFactoryE
void CSceneManager::registerSceneNodeAnimatorFactory(ISceneNodeAnimatorFactory* factory) {
    if (factory == nullptr) return;
    grab(factory);
    sceneNodeAnimatorFactories.push_back(factory);
}

// 0x58d8ac _ZN6glitch5scene13CSceneManager19addExternalMeshLoaderEPNS0_11IMeshLoaderE
void CSceneManager::addExternalMeshLoader(IMeshLoader* loader) {
    if (loader == nullptr) return;
    grab(loader);
    externalMeshLoaders.push_back(loader);
}

// 0x58a7f0 _ZN6glitch5scene13CSceneManager23addShadowReceiverTargetEN5boost13intrusive_ptrINS0_21IShadowReceiverTargetEEE
// Appends the target unless it is already registered; the list holds a use of its own.
void CSceneManager::addShadowReceiverTarget(boost::intrusive_ptr<IShadowReceiverTarget> target) {
    for (const boost::intrusive_ptr<IShadowReceiverTarget>& existing : shadowReceiverTargets) {
        if (existing == target) return;
    }
    shadowReceiverTargets.push_back(target);
}

// 0x5897d4 _ZN6glitch5scene13CSceneManager26removeShadowReceiverTargetEN5boost13intrusive_ptrINS0_21IShadowReceiverTargetEEE
// Removes the first registered entry equal to `target` (dropping the list's use).
void CSceneManager::removeShadowReceiverTarget(boost::intrusive_ptr<IShadowReceiverTarget> target) {
    for (auto it = shadowReceiverTargets.begin(); it != shadowReceiverTargets.end(); ++it) {
        if (*it == target) {
            shadowReceiverTargets.erase(it);
            return;
        }
    }
}

// 0x589754 _ZN6glitch5scene13CSceneManager26removeShadowReceiverTargetEN5boost13intrusive_ptrINS_5video8ITextureEEE
// Removes the first registered target whose texture (IShadowReceiverTarget +0x0c) is the given texture, null included.
void CSceneManager::removeShadowReceiverTarget(boost::intrusive_ptr<video::ITexture> texture) {
    for (auto it = shadowReceiverTargets.begin(); it != shadowReceiverTargets.end(); ++it) {
        if ((*it)->texture == texture) {
            shadowReceiverTargets.erase(it);
            return;
        }
    }
}

// 0x58b350 _ZN6glitch5scene13CSceneManager17clearDeletionListEv
// Removes every queued node from its parent, drops the queue's use and empties the queue.
void CSceneManager::clearDeletionList() {
    for (std::size_t i = 0; i < deletionQueue.size(); ++i) {
        ISceneNode* node = deletionQueue[i];
        node->remove();
        node->drop();
    }
    deletionQueue.clear();
}

// 0x58b4e0 _ZN6glitch5scene13CSceneManager18addToDeletionQueueEPNS0_10ISceneNodeE
void CSceneManager::addToDeletionQueue(ISceneNode* node) {
    if (node == nullptr) return;
    ++node->referenceCounter;
    deletionQueue.push_back(node);
}

// 0x58ab28 _ZNK6glitch5scene13CSceneManager8isCulledEPKNS0_10ISceneNodeE
// False when culling is off or there is no active camera; otherwise by the node's culling mode on its transformed box:
// 1 against the frustum box, 2 SViewFrustum::intersects, 8 intersects3; any other mode is not culled.
bool CSceneManager::isCulled(const ISceneNode* node) const {
    if (!cullingEnabled || activeCamera == nullptr) {
        return false;
    }
    const SViewFrustum* frustum = activeCamera->getViewFrustum();
    switch (node->automaticCulling) {
        case ECULL_FRUSTUM_BOX:
            return !frustum->intersects(node->getTransformedBoundingBox());
        case ECULL_FRUSTUM_BOX_3:
            return !frustum->intersects3(node->getTransformedBoundingBox());
        case ECULL_BOX:
            return isBoxCulledByFrustumBox(node->getTransformedBoundingBox(), frustum->box);
        default:
            return false;
    }
}

// 0x58b558 _ZN6glitch5scene13CSceneManager14collectAllNodesEPNS0_10ISceneNodeE
// Files the node into the render list unless it is an empty, dummy, 'daen' or scene-manager-root node, into the animated
// list when it has animators, then recurses over the children.
void CSceneManager::collectAllNodes(ISceneNode* node) {
    const E_SCENE_NODE_TYPE type = node->getType();
    if (type != ESNT_EMPTY && type != ESNT_DUMMY_TRANSFORMATION && type != ESNT_DAEN && type != ESNT_SCENE_MANAGER_ROOT) {
        renderNodes.push_back(node);
    }
    if (!node->getAnimators().empty()) {
        animatedNodes.push_back(node);
    }
    for (ISceneNode* child : node->getChildren()) {
        collectAllNodes(child);
    }
}

// 0x58b7ac _ZN6glitch5scene13CSceneManager14collectAllNodesEv
// Rebuilds both lists from the root when the hierarchy changed.
void CSceneManager::collectAllNodes() {
    if (hierarchyChanged) {
        renderNodes.clear();
        animatedNodes.clear();
        collectAllNodes(rootNode);
        hierarchyChanged = false;
    }
}

// 0x58b6c8 _ZN6glitch5scene13CSceneManager14collectAllNodesERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEE
// Rebuilds both lists from the given nodes.
void CSceneManager::collectAllNodes(const core::svector<ISceneNode*>& nodes) {
    renderNodes.clear();
    animatedNodes.clear();
    for (ISceneNode* node : nodes) {
        collectAllNodes(node);
    }
    hierarchyChanged = false;
}

}  // namespace glitch::scene
