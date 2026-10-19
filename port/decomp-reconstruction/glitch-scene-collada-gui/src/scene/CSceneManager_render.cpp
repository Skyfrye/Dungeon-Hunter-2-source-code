// The frame path of glitch::scene::CSceneManager (canonical class: scene/CSceneManager.hpp): the nested render list entries,
// registerNodeForRendering, the render list templates, registerSceneNodes, drawAll, drawInit, drawShadowReceivers and
// renderLists. Scene owner pass (R3b); it replaces the stubs that lived in src/scene/CSceneManager_virtuals.cpp.
//
// The frame, as the two drawAll overloads run it: drawInit(driver), collect the node lists (unless the hierarchy is unchanged),
// setupCamera, registerSceneNodes (every visible, uncculled node files itself with registerNodeForRendering during its
// onRegisterSceneNode), drawShadowReceivers, renderLists, then the render pass goes back to 9 and the per-frame statistics are
// written to the attribute set ("calls" and "culled") and cleared.
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

#include <functional>

#include "glitch-core-io/core/sort.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/scene/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/IShadowVolumeSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

// `anonymous namespace'::Stats and dword_9F687C: registerNodeForRendering counts its calls, and the ones it refuses.
std::int32_t gCalls = 0;
std::int32_t gCulled = 0;

// `anonymous namespace'::SStats::reset (0x58a75c): publishes both counters as the attributes "calls" and "culled" and clears them.
void resetStats(io::CAttributes& attributes) {
    attributes.setAttribute("calls", gCalls);
    attributes.setAttribute("culled", gCulled);
    gCalls = 0;
    gCulled = 0;
}

// True when the first render pass of the material's current technique carries the transparency state bit (0x10000 of the second
// state word): the test registerNodeForRendering makes before it chooses between the default and the transparent list.
bool hasTransparentTechnique(const video::CMaterial& material) {
    const video::STechnique& technique = material.m_renderer->m_techniques[material.getTechnique()];
    return (technique.passes[0].stateWords[1] & 0x10000u) != 0;
}

// The window the render lists slide over the entries: while an entry renders, `current` is that entry and `next` the one after it.
// `list` ends with the sentinel entry renderList appended. `orderOf` gives the third word (the sort order for the entries that
// have one, zero for the others). The state the loops leave behind (current and next both the sentinel) is the one the original
// leaves.
template <typename Entry, typename OrderOf>
void renderEntries(CSceneManager& manager, core::svector<Entry>& list, OrderOf orderOf, bool cull) {
    const std::size_t count = list.size() - 1;
    manager.currentNode = manager.nextNode;
    manager.currentUserData = manager.nextUserData;
    manager.currentSortOrder = manager.nextSortOrder;
    manager.nextNode = list[0].node;
    manager.nextUserData = list[0].userData;
    manager.nextSortOrder = orderOf(list[0]);
    for (std::size_t i = 1; i <= count; ++i) {
        ISceneNode* node = manager.nextNode;
        void* userData = manager.nextUserData;
        manager.currentNode = manager.nextNode;
        manager.currentUserData = manager.nextUserData;
        manager.currentSortOrder = manager.nextSortOrder;
        manager.nextNode = list[i].node;
        manager.nextUserData = list[i].userData;
        manager.nextSortOrder = orderOf(list[i]);
        if (cull && node != nullptr && manager.isCulled(node)) {
            continue;
        }
        node->render(userData);
    }
    manager.currentNode = manager.nextNode;
    manager.currentUserData = manager.nextUserData;
    manager.currentSortOrder = manager.nextSortOrder;
    manager.nextNode = list.back().node;
    manager.nextUserData = list.back().userData;
    manager.nextSortOrder = 0;
}

}  // namespace

// ---- Nested node entries ----------------------------------------------------------------------------------------------

// 0x350c98 _ZN6glitch5scene13CSceneManager17SDefaultNodeEntryC1EPNS0_10ISceneNodeEN5boost13intrusive_ptrINS_5video9CMaterialEEEPvi
// The sort order 0x7fffffff means "ask the node": it is replaced by the node's rendering layer (vptr+0xd8).
CSceneManager::SDefaultNodeEntry::SDefaultNodeEntry(ISceneNode* n, boost::intrusive_ptr<video::CMaterial> m, void* data,
                                                    int order)
    : node(n), userData(data), material(m), sortOrder(order == 0x7fffffff ? n->getRenderingLayer() : order) {}

// 0x3539e8 _ZNK6glitch5scene13CSceneManager17SDefaultNodeEntryltERKS1_
// Larger sort order first. With equal sort orders: a null material sorts before a set one (pointer order; two null materials
// order by node); two materials with the same hash code order by the nodes' vertex counts, others by CMaterial::operator<.
bool CSceneManager::SDefaultNodeEntry::operator<(const SDefaultNodeEntry& other) const {
    const boost::intrusive_ptr<const video::CMaterial> otherMaterial(other.material.get(), true);
    if (sortOrder > other.sortOrder) return true;
    if (sortOrder != other.sortOrder) return false;
    const video::CMaterial* a = material.get();
    const video::CMaterial* b = otherMaterial.get();
    if (a == nullptr || b == nullptr) {
        if (a == nullptr && b == nullptr) return std::less<const ISceneNode*>()(node, other.node);
        return std::less<const video::CMaterial*>()(a, b);
    }
    if (a->getHashCode() == b->getHashCode()) {
        const std::int32_t mine = static_cast<std::int32_t>(node->getRenderVertexCount(userData));
        const std::int32_t theirs = static_cast<std::int32_t>(other.node->getRenderVertexCount(other.userData));
        return mine < theirs;
    }
    return *a < *b;
}

// 0x350cf4 _ZN6glitch5scene13CSceneManager18SDistanceNodeEntryC1EPNS0_10ISceneNodeERKNS_4core8vector3dIfEEPv
// distance = |node translation - position|^2 + (squared extent of the node's box) * -0.5 (the box is vptr+0x30).
CSceneManager::SDistanceNodeEntry::SDistanceNodeEntry(ISceneNode* n, const core::vector3d<float>& position, void* data)
    : node(n), userData(data) {
    const core::CMatrix4<float>& m = n->getAbsoluteTransformation();
    const float dx = m.M[12] - position.X;
    const float dy = m.M[13] - position.Y;
    const float dz = m.M[14] - position.Z;
    const float distanceSquared = (dx * dx + dy * dy) + dz * dz;
    const core::aabbox3d<float>& box = n->getBoundingBox();
    const float ex = box.MaxEdge.X - box.MinEdge.X;
    const float ey = box.MaxEdge.Y - box.MinEdge.Y;
    const float ez = box.MaxEdge.Z - box.MinEdge.Z;
    const float extentSquared = (ex * ex + ey * ey) + ez * ez;
    distance = static_cast<double>(distanceSquared) + static_cast<double>(extentSquared) * -0.5;
}

// 0x354e8c _ZN6glitch5scene13CSceneManager21STransparentNodeEntryC1EPNS0_10ISceneNodeERKNS_4core8vector3dIfEEN5boost13intrusive_ptrINS_5video9CMaterialEEEPvPS8_i
// sort order as in SDefaultNodeEntry; distance = |point - position|^2 + the node's camera offset (vptr+0xd0), where the point
// is `transformed` when given and the node's translation otherwise.
CSceneManager::STransparentNodeEntry::STransparentNodeEntry(ISceneNode* n, const core::vector3d<float>& position,
                                                            boost::intrusive_ptr<video::CMaterial> m, void* data,
                                                            const core::vector3d<float>* transformed, int order)
    : node(n), userData(data), material(m), sortOrder(order == 0x7fffffff ? n->getRenderingLayer() : order) {
    float px, py, pz;
    if (transformed != nullptr) {
        px = transformed->X;
        py = transformed->Y;
        pz = transformed->Z;
    } else {
        const core::CMatrix4<float>& matrix = n->getAbsoluteTransformation();
        px = matrix.M[12];
        py = matrix.M[13];
        pz = matrix.M[14];
    }
    const float dx = px - position.X;
    const float dy = py - position.Y;
    const float dz = pz - position.Z;
    distance = ((dx * dx) + (dy * dy)) + (dz * dz) + n->getCameraOffset();
}

// 0x58d710 _ZN6glitch5scene13CSceneManager21STransparentNodeEntryD1Ev
CSceneManager::STransparentNodeEntry::~STransparentNodeEntry() = default;

// 0x3538ac _ZNK6glitch5scene13CSceneManager21STransparentNodeEntryltERKS1_
// Larger sort order first, then the larger distance first, then (null materials before set ones, two nulls by node) equal
// materials by the nodes' vertex counts and the others by CMaterial::operator<.
bool CSceneManager::STransparentNodeEntry::operator<(const STransparentNodeEntry& other) const {
    const boost::intrusive_ptr<const video::CMaterial> otherMaterial(other.material.get(), true);
    if (sortOrder > other.sortOrder) return true;
    if (sortOrder != other.sortOrder) return false;
    if (distance > other.distance) return true;
    if (distance != other.distance) return false;
    const video::CMaterial* a = material.get();
    const video::CMaterial* b = otherMaterial.get();
    if (a == nullptr || b == nullptr) {
        if (a == nullptr && b == nullptr) return std::less<const ISceneNode*>()(node, other.node);
        return std::less<const video::CMaterial*>()(a, b);
    }
    if (*a == *b) {
        const std::int32_t mine = static_cast<std::int32_t>(node->getRenderVertexCount(userData));
        const std::int32_t theirs = static_cast<std::int32_t>(other.node->getRenderVertexCount(other.userData));
        return mine < theirs;
    }
    return *a < *b;
}

// ---- Registration ------------------------------------------------------------------------------------------------------

// 0x58f348 _ZN6glitch5scene13CSceneManager24registerNodeForRenderingEPNS0_10ISceneNodeERKN5boost13intrusive_ptrINS_5video9CMaterialEEEPvNS0_24E_SCENE_NODE_RENDER_PASSEPKNS_4core8vector3dIfEEi
// Files the node into the list of the pass (see scene_types.hpp for the passes). Every call counts in the frame statistics; a
// refused one (a camera already listed, or a pass the manager does not know) also counts as culled and answers false.
//   0 camera: unsorted, refused when the node is listed already       1 light: by distance to the camera position
//   2 pre-solid: unsorted     3 automatic: the transparent list for a material whose technique is transparent (unless the
//   manager is compiling a batch), else the default list     4 solid: default list     5 and 6: render-data lists
//   7 shadow receiver: unsorted     8 transparent: the transparent list, or the default list while compiling
bool CSceneManager::registerNodeForRendering(ISceneNode* node, const boost::intrusive_ptr<video::CMaterial>& material,
                                             void* userData, E_SCENE_NODE_RENDER_PASS pass,
                                             const core::vector3d<float>* position, int sortOrder) {
    switch (pass) {
        case ESNRP_CAMERA:
            for (const SUnsortedNodeEntry& entry : cameraNodes) {
                if (entry.node == node) {
                    ++gCulled;
                    ++gCalls;
                    return false;
                }
            }
            cameraNodes.push_back(SUnsortedNodeEntry{node, userData});
            break;
        case ESNRP_LIGHT:
            lightNodes.push_back(SDistanceNodeEntry(node, cameraPosition, userData));
            break;
        case ESNRP_PRE_SOLID:
            preSolidNodes.push_back(SUnsortedNodeEntry{node, userData});
            break;
        case ESNRP_AUTOMATIC:
            if (material && hasTransparentTechnique(*material) && !batchCompiling) {
                transparentNodes.push_back(STransparentNodeEntry(node, cameraPosition, material, userData, position, sortOrder));
                break;
            }
            defaultNodes.push_back(SDefaultNodeEntry(node, material, userData, sortOrder));
            break;
        case ESNRP_SOLID:
            defaultNodes.push_back(SDefaultNodeEntry(node, material, userData, sortOrder));
            break;
        case ESNRP_SHADOW_VOLUME:
            shadowVolumeNodes.push_back(SRenderDataSortNodeEntry{node, userData});
            break;
        case ESNRP_SHADOW_MESH:
            shadowMeshNodes.push_back(SRenderDataSortNodeEntry{node, userData});
            break;
        case ESNRP_SHADOW_RECEIVER:
            shadowReceiverNodes.push_back(SUnsortedNodeEntry{node, userData});
            break;
        case ESNRP_TRANSPARENT:
            if (batchCompiling) {
                defaultNodes.push_back(SDefaultNodeEntry(node, material, userData, sortOrder));
            } else {
                transparentNodes.push_back(STransparentNodeEntry(node, cameraPosition, material, userData, position, sortOrder));
            }
            break;
        default:
            ++gCulled;
            ++gCalls;
            return false;
    }
    ++gCalls;
    return true;
}

namespace {

// The walk of 0x58b88c: the node registers when it is visible and not culled, and its children are walked when it reports
// itself registered. The original walks the tree with parent links and explicit state; this recursion visits the same nodes in
// the same order.
void registerSubtree(CSceneManager& manager, ISceneNode* node) {
    if ((node->flags & ESNF_VISIBLE) != 0 && !manager.isCulled(node) && node->onRegisterSceneNode() != 0) {
        for (ISceneNode* child : node->getChildren()) {
            registerSubtree(manager, child);
        }
    }
}

// The walk of 0x589fa4 (no culling test).
void registerCompileSubtree(ISceneNode* node) {
    if ((node->flags & ESNF_VISIBLE) != 0 && node->onRegisterSceneNode() != 0) {
        for (ISceneNode* child : node->getChildren()) {
            registerCompileSubtree(child);
        }
    }
}

}  // namespace

// 0x58b88c _ZN6glitch5scene13CSceneManager18registerSceneNodesEPNS0_10ISceneNodeE
// With a node: that subtree. Without: every collected node that is visible and not culled (the lists are rebuilt first when the
// hierarchy changed); the answers of onRegisterSceneNode are not used for the flat list.
void CSceneManager::registerSceneNodes(ISceneNode* node) {
    if (node != nullptr) {
        registerSubtree(*this, node);
        return;
    }
    if (hierarchyChanged) {
        collectAllNodes();
    }
    for (std::size_t i = 0; i < renderNodes.size(); ++i) {
        ISceneNode* candidate = renderNodes[i];
        if ((candidate->flags & ESNF_VISIBLE) != 0 && !isCulled(candidate)) {
            candidate->onRegisterSceneNode();
        }
    }
}

// 0x589128 _ZN6glitch5scene13CSceneManager18registerSceneNodesERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEE
// Registers each node of the vector through the virtual single-node overload (vptr+0x28).
void CSceneManager::registerSceneNodes(const core::svector<ISceneNode*>& nodes) {
    for (ISceneNode* node : nodes) {
        registerSceneNodes(node);
    }
}

// 0x589fa4 _ZN6glitch5scene13CSceneManager24registerSceneNodesCompileEPNS0_10ISceneNodeE
// A null node means the root. The node itself is registered when it is visible and onRegisterSceneNode returns non-zero;
// then its visible children are walked the same way.
void CSceneManager::registerSceneNodesCompile(ISceneNode* node) {
    registerCompileSubtree(node != nullptr ? node : rootNode);
}

// 0x589168 _ZN6glitch5scene13CSceneManager24registerSceneNodesCompileERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEE
void CSceneManager::registerSceneNodesCompile(const core::svector<ISceneNode*>& nodes) {
    for (ISceneNode* node : nodes) {
        registerSceneNodesCompile(node);
    }
}

// ---- The render lists --------------------------------------------------------------------------------------------------

// 0x58aee4 _ZN6glitch5scene13CSceneManager10renderListINS1_18SUnsortedNodeEntryEEEvNS0_24E_SCENE_NODE_RENDER_PASSERSt6vectorIT_NS_4core10SAllocatorIS6_LNS_6memory13E_MEMORY_HINTE0EEEEbb
// 0x353f50 (.clone.4, the cull test removed), likewise the SRenderDataSortNodeEntry clones 0x353c7c (.clone.10) and 0x58acac (.clone.8,
// which also always clears the list): one template, the clones are the same body with constant arguments.
template <typename Entry>
void CSceneManager::renderList(E_SCENE_NODE_RENDER_PASS pass, core::svector<Entry>& list, bool clearList, bool cull) {
    renderPass = pass;
    list.push_back(Entry());
    renderEntries(*this, list, [](const Entry&) { return 0; }, cull);
    if (clearList) {
        list.clear();
    } else {
        list.pop_back();
    }
}

template void CSceneManager::renderList<CSceneManager::SUnsortedNodeEntry>(E_SCENE_NODE_RENDER_PASS,
                                                                           core::svector<SUnsortedNodeEntry>&, bool, bool);
template void CSceneManager::renderList<CSceneManager::SRenderDataSortNodeEntry>(E_SCENE_NODE_RENDER_PASS,
                                                                                 core::svector<SRenderDataSortNodeEntry>&, bool, bool);

// 0x590660 _ZN6glitch5scene13CSceneManager11renderListsEPNS_5video12IVideoDriverE
// Draws what registerSceneNodes collected, in this order: the cameras; the driver's dynamic lights are reset, the ambient light is
// published as the global parameter, the lights nearest to the camera (as many as the driver takes) render as pass 1; the
// pre-solid nodes; the default list sorted (pass 4); the shadow volumes (colour writes off), followed by the full-screen shadow
// quad when there were any (the count is taken as a byte, as in the original); the shadow meshes; the transparent list sorted,
// farthest first (pass 8); finally the deletion queue is cleared.
void CSceneManager::renderLists(video::IVideoDriver* videoDriver) {
    renderList(ESNRP_CAMERA, cameraNodes, true, false);

    videoDriver->deleteAllDynamicLights();
    const std::uint32_t ambientIndex = 0;
    videoDriver->m_globalParameters->setParameter<video::SColorf>(videoDriver->m_ambientLightId, ambientIndex, ambientLight);

    // The lights.
    if (lightNodes.size() > 1) {
        core::heapsort(lightNodes.data(), static_cast<int>(lightNodes.size()));
    }
    lightNodes.resize(std::min<std::size_t>(lightNodes.size(), videoDriver->m_dynamicLightLimit));
    renderPass = ESNRP_LIGHT;
    lightNodes.push_back(SDistanceNodeEntry());
    renderEntries(*this, lightNodes, [](const SDistanceNodeEntry&) { return 0; }, false);
    lightNodes.clear();

    renderList(ESNRP_PRE_SOLID, preSolidNodes, true, false);

    // The default list.
    if (defaultNodes.size() > 1) {
        core::heapsort(defaultNodes.data(), static_cast<int>(defaultNodes.size()));
    }
    renderPass = ESNRP_SOLID;
    defaultNodes.push_back(SDefaultNodeEntry(nullptr, boost::intrusive_ptr<video::CMaterial>(), nullptr, 0));
    renderEntries(*this, defaultNodes, [](const SDefaultNodeEntry& entry) { return entry.sortOrder; }, false);
    defaultNodes.clear();

    // The shadow volumes: colour writes are off while they render, then the shadowed zone is darkened with a full-screen quad.
    const std::uint8_t volumeCount = static_cast<std::uint8_t>(shadowVolumeNodes.size());
    videoDriver->setColorMask(false, false, false, false);
    if (volumeCount > 1) {
        core::heapsort(shadowVolumeNodes.data(), static_cast<int>(shadowVolumeNodes.size()));
    }
    renderList(ESNRP_SHADOW_VOLUME, shadowVolumeNodes, true, false);
    videoDriver->setColorMask(true, true, true, true);
    if (volumeCount != 0) {
        const boost::intrusive_ptr<video::CMaterial>& shadowMaterial = IShadowVolumeSceneNode::Material;
        if (shadowMaterial) shadowMaterial->m_technique = IShadowVolumeSceneNode::TechniqueDraw;
        const std::uint8_t technique = shadowMaterial ? static_cast<std::uint8_t>(shadowMaterial->getTechnique()) : 255;
        videoDriver->setMaterial(shadowMaterial, technique, nullptr);
        videoDriver->drawFullScreenQuad(shadowColors);
    }

    // The shadow meshes.
    if (static_cast<std::uint8_t>(shadowMeshNodes.size()) > 1u) {
        core::heapsort(shadowMeshNodes.data(), static_cast<int>(shadowMeshNodes.size()));
    }
    renderList(ESNRP_SHADOW_MESH, shadowMeshNodes, true, false);

    // The transparent list.
    if (transparentNodes.size() > 1) {
        core::heapsort(transparentNodes.data(), static_cast<int>(transparentNodes.size()));
    }
    renderPass = ESNRP_TRANSPARENT;
    transparentNodes.push_back(STransparentNodeEntry());
    renderEntries(*this, transparentNodes, [](const STransparentNodeEntry& entry) { return entry.sortOrder; }, false);
    transparentNodes.clear();

    clearDeletionList();
}

// ---- The frame ---------------------------------------------------------------------------------------------------------

// 0x58b728 _ZN6glitch5scene13CSceneManager7drawAllERKSt6vectorIPNS0_10ISceneNodeENS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEE
// drawInit(driver), collectAllNodes(nodes), setupCamera, registerSceneNodes(nodes), drawShadowReceivers, renderLists(driver), then
// the render pass 9 and the statistics reset. The virtual slots are called through the vtable.
void CSceneManager::drawAll(const core::svector<ISceneNode*>& nodes) {
    drawInit(driver);
    collectAllNodes(nodes);
    setupCamera();
    registerSceneNodes(nodes);
    drawShadowReceivers();
    renderLists(driver);
    renderPass = ESNRP_NONE;
    resetStats(attributes);
}

// 0x58b7f4 _ZN6glitch5scene13CSceneManager7drawAllEPNS0_10ISceneNodeE
// The same frame for a node tree (the whole scene when null); the driver is the copy at +0x18 here, and the node lists are rebuilt
// only for the whole scene and only when the hierarchy changed.
void CSceneManager::drawAll(ISceneNode* node) {
    drawInit(driverCopy);
    if (node == nullptr && hierarchyChanged) {
        collectAllNodes();
    }
    setupCamera();
    registerSceneNodes(node);
    drawShadowReceivers();
    renderLists(driverCopy);
    renderPass = ESNRP_NONE;
    resetStats(attributes);
}

// 0x589e7c _ZN6glitch5scene13CSceneManager8drawInitEPNS_5video12IVideoDriverE
// Makes the argument the manager's driver, clears the "drawn" attribute, and sets the driver option 0x80 to the attribute
// "Allow_ZWrite_On_Transparent".
void CSceneManager::drawInit(video::IVideoDriver* videoDriver) {
    driver = videoDriver;
    attributes.setAttribute("drawn", 0);
    videoDriver->setOption(0x80, attributes.getBool("Allow_ZWrite_On_Transparent"));
}

// 0x58b0a8 _ZN6glitch5scene13CSceneManager19drawShadowReceiversEv
// For every registered shadow receiver target, when there are receiver nodes: the target's clear colour and camera become the
// driver's and the manager's; for each of the target's layers the camera is updated with its projection mirrored in x (the first
// column of the matrix negated), rendered as a camera, the buffers are cleared (colour and depth) and the receiver nodes are drawn
// with the cull test; the list is emptied with the last layer. The driver's clear colour and the manager's camera are restored.
void CSceneManager::drawShadowReceivers() {
    if (shadowReceiverTargets.empty() || shadowReceiverNodes.empty()) {
        return;
    }
    boost::intrusive_ptr<ICameraSceneNode> savedCamera(activeCamera, true);
    const video::SColor savedClearColor = driver->getClearColor();
    for (std::size_t t = 0; t < shadowReceiverTargets.size(); ++t) {
        IShadowReceiverTarget* target = shadowReceiverTargets[t].get();
        driver->setClearColor(target->clearColor);
        ICameraSceneNode* camera = target->camera;
        setActiveCamera(camera);
        target->begin(driver);
        const std::int32_t layers = target->getLayerCount();
        for (std::int32_t layer = 0; layer < layers; ++layer) {
            target->selectLayer(layer);
            camera->updateAbsolutePosition(false);
            static_cast<CCameraSceneNode*>(camera)->recalculateMatrices();
            core::CMatrix4<float> projection = camera->getProjectionMatrix();
            projection.M[0] = -projection.M[0];
            projection.M[4] = -projection.M[4];
            projection.M[8] = -projection.M[8];
            projection.M[12] = -projection.M[12];
            projection.flag = false;
            camera->setProjectionMatrix(projection, false);
            camera->render(nullptr);
            target->endLayer(driver);
            driver->clearBuffers(3);
            renderList(ESNRP_SHADOW_RECEIVER, shadowReceiverNodes, layer == layers - 1, true);
            target->finish(driver);
        }
    }
    driver->setClearColor(savedClearColor);
    setActiveCamera(savedCamera.get());
}

// 0x58ca64 _ZNK6glitch5scene13CSceneManager8isCulledERKNS_4core8aabbox3dIfEENS0_14E_CULLING_TYPEE
// The box-only form of the test: false without an active camera; otherwise by the culling mode: 2 SViewFrustum::intersects,
// 8 intersects3, 1 against the frustum box; any other mode is not culled. (Unlike the node form it does not look at cullingEnabled.)
bool CSceneManager::isCulled(const core::aabbox3d<float>& box, E_CULLING_TYPE culling) const {
    if (activeCamera == nullptr) {
        return false;
    }
    const SViewFrustum* frustum = activeCamera->getViewFrustum();
    switch (culling) {
        case ECULL_FRUSTUM_BOX:
            return !frustum->intersects(box);
        case ECULL_FRUSTUM_BOX_3:
            return !frustum->intersects3(box);
        case ECULL_BOX: {
            const core::aabbox3d<float>& f = frustum->box;
            if (box.MinEdge.X <= f.MaxEdge.X && box.MinEdge.Y <= f.MaxEdge.Y && box.MinEdge.Z <= f.MaxEdge.Z &&
                box.MaxEdge.X >= f.MinEdge.X && box.MaxEdge.Y >= f.MinEdge.Y) {
                return !(box.MaxEdge.Z >= f.MinEdge.Z);
            }
            return true;
        }
        default:
            return false;
    }
}

}  // namespace glitch::scene
