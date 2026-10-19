#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// Batch g1-game-world-RootSceneNode-e402f1-0 (part 1 of 2): the debug counters, the animation roots and the displacement,
// the cull gate, the bounding box, the animator hooks, NewAnim and the destructor. The constructors are in
// g1-game-world-RootSceneNode-e402f1-1 (part 2).
//
// The engine base glitch::collada::CRootSceneNode derives from CSceneNode and so from glitch::scene::ISceneNode (canonical
// layout: animators list at +0xfc, children at +0xf0, flags at +0x11c). The bodies below use those members through the
// base. Bodies that still need an unknown are partial; the note in each one names the missing part.

#include <cstdint>

#include <cstring>

#include "dh2/AnimApplicator.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/aabb.hpp"
#include "glitch-scene-collada-gui/scene/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/global/GetApplicator.hpp"
#include "dh2/global/scene_nodes.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"  // the displacement node is dropped by the destructor

// The camera that UpdateEnlargedViewFrustum fills (static initializer 0x35d9c0: id -1, position (0, 0, 0), target (0, 0, 100), not
// orthogonal) and the factor on its field of view (.data 0x999748).
glitch::scene::CCameraSceneNode RootSceneNode::s_enlargedCamera(-1, glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f},
                                                                glitch::core::vector3d<float>{0.0f, 0.0f, 100.0f}, false);
float RootSceneNode::s_frustumScale = 1.2f;

// Debug counters, bumped by updateAbsolutePosition and onAnimate and cleared by ResetDebugCounters.
std::uint32_t RootSceneNode::s_dbgNumUpdateAbsolutePosition = 0;
std::uint32_t RootSceneNode::s_dbgAnimatedNodeCount = 0;
std::uint32_t RootSceneNode::s_dbgUpdateTimeNodeCount = 0;

// 0x35c058 _ZN13RootSceneNode18ResetDebugCountersEv
void RootSceneNode::ResetDebugCounters() {
    s_dbgNumUpdateAbsolutePosition = 0;
    s_dbgAnimatedNodeCount = 0;
    s_dbgUpdateTimeNodeCount = 0;
}

// 0x35c09c _ZN13RootSceneNode11ForwardAnimEj
// Walks the animators list (+0xfc). For each animator: tc = getTimelineCtrl() (vptr+0x44); when tc is not null,
// tc->jumpTo(time + tc->currentTimeMs) (vptr+0x0c, the word at +0x04).
void RootSceneNode::ForwardAnim(std::uint32_t time) {
    for (auto it = getAnimators().begin(); it != getAnimators().end(); ++it) {
        glitch::scene::ITimelineController* tc = (*it)->getTimelineCtrl();
        if (tc != nullptr) {
            tc->jumpTo(static_cast<std::int32_t>(time + static_cast<std::uint32_t>(tc->currentTimeMs)));
        }
    }
}

// 0x35c0f4 _ZN13RootSceneNode12onUpdateTimeEj
// Gate: ISceneNode flags (+0x11c) & 0x201 == 0x201 (visible and animate). Then updateTime(time) (vptr+0x14) on each animator.
void RootSceneNode::onUpdateTime(std::uint32_t time) {
    if ((flags & (glitch::scene::ESNF_VISIBLE | glitch::scene::ESNF_ANIMATE)) == (glitch::scene::ESNF_VISIBLE | glitch::scene::ESNF_ANIMATE)) {
        for (auto it = getAnimators().begin(); it != getAnimators().end(); ++it) {
            (*it)->updateTime(time);
        }
    }
}

// 0x35c268 _ZN13RootSceneNode14PlainOnAnimateEj
// Thunk: forwards to the engine base's onAnimate.
void RootSceneNode::PlainOnAnimate(std::uint32_t time) {
    glitch::collada::CRootSceneNode::onAnimate(time);
}

// 0x35c26c _ZN13RootSceneNode10setVisibleEb
// Stores the request at +0x209. For false it also calls glitch::scene::ISceneNode::setVisible(false).
void RootSceneNode::setVisible(bool visible) {
    m_visibleRequested = visible;
    if (!visible) {
        glitch::scene::ISceneNode::setVisible(false);
    }
}

// 0x35c27c _ZN13RootSceneNode22updateAbsolutePositionEb
// Counts the call, then forwards to glitch::scene::ISceneNode::updateAbsolutePosition.
void RootSceneNode::updateAbsolutePosition(bool recurse) {
    ++s_dbgNumUpdateAbsolutePosition;
    glitch::scene::ISceneNode::updateAbsolutePosition(recurse);
}

// 0x35c51c _ZN13RootSceneNode25UpdateEnlargedViewFrustumEPN6glitch5scene13CSceneManagerE
// Static (the manager is in r0). When the manager has an active camera, s_enlargedCamera takes its absolute position, target and
// up vector; near, far and aspect when they differ; the field of view of the camera times s_frustumScale when it differs; the
// matrices are then recalculated.
void RootSceneNode::UpdateEnlargedViewFrustum(glitch::scene::CSceneManager* manager) {
    glitch::scene::ICameraSceneNode* camera = manager->activeCamera;   // +0xe4
    if (camera == nullptr) {
        return;
    }
    s_enlargedCamera.setPosition(camera->getAbsolutePosition());
    s_enlargedCamera.updateAbsolutePosition(false);
    s_enlargedCamera.setTarget(camera->getTarget());
    const glitch::core::vector3d<float>& up = s_enlargedCamera.getUpVector();
    const glitch::core::vector3d<float>& cameraUp = camera->getUpVector();
    if (up.X != cameraUp.X || up.Y != cameraUp.Y || up.Z != cameraUp.Z) {
        s_enlargedCamera.setUpVector(camera->getUpVector());
    }
    if (s_enlargedCamera.getNearValue() != camera->getNearValue()) {
        s_enlargedCamera.setNearValue(camera->getNearValue());
    }
    if (s_enlargedCamera.getFarValue() != camera->getFarValue()) {
        s_enlargedCamera.setFarValue(camera->getFarValue());
    }
    if (s_enlargedCamera.getAspectRatio() != camera->getAspectRatio()) {
        s_enlargedCamera.setAspectRatio(camera->getAspectRatio());
    }
    if (s_enlargedCamera.getFOV() != camera->getFOV() * s_frustumScale) {
        s_enlargedCamera.setFOV(camera->getFOV() * s_frustumScale);
    }
    s_enlargedCamera.recalculateMatrices();
}

// 0x35c784 _ZNK13RootSceneNode17IsVisibleFastTestEv
// False when the switch Optim_DisableUpdateTimeOnlyForCulledNode is on. Otherwise true when the cull gate is off, or when the game
// object exists and its world box (+0x12c) passes the culling test before update.
bool RootSceneNode::IsVisibleFastTest() const {
    if (DebugSwitches::GetInstance()->GetSwitch("Optim_DisableUpdateTimeOnlyForCulledNode")) {
        return false;
    }
    if (!m_cullBeforeUpdate) {
        return true;
    }
    if (m_object == nullptr) {
        return false;
    }
    GameObject* object = static_cast<GameObject*>(m_object);
    return !object->TestCullingBeforeUpdate(*reinterpret_cast<const aabb<float>*>(object->m_absAabb));
}

// 0x35c854 _ZN13RootSceneNode18RefreshBoundingBoxEv
// The listing (0x35c854) calls the const overload CSceneNode::computeBoundingBox(aabbox3d&) with the box at +0x130 (R1 = this + 0x130),
// not the parameterless virtual (K 0xf4): the union of the mesh children's absolute (transformed) boxes. Then the node position
// (getPosition, vptr+0xa0) is subtracted from both corners of the box. The parameterless version unions relative transforms, which
// OptimizeStatic (VisualObject::SetParent of a static owner) has baked to absolute positions, so module boxes picked up the module's
// own offset one more time and the generated RoomZones of every module away from the origin sat in the wrong place.
void RootSceneNode::RefreshBoundingBox() {
    glitch::collada::CSceneNode::computeBoundingBox(boundingBox);
    glitch::core::aabbox3d<float>& box = boundingBox;   // +0x130
    box.MinEdge.X = box.MinEdge.X - getPosition().X;
    box.MinEdge.Y = box.MinEdge.Y - getPosition().Y;
    box.MinEdge.Z = box.MinEdge.Z - getPosition().Z;
    box.MaxEdge.X = box.MaxEdge.X - getPosition().X;
    box.MaxEdge.Y = box.MaxEdge.Y - getPosition().Y;
    box.MaxEdge.Z = box.MaxEdge.Z - getPosition().Z;
}

// 0x35cc0c _ZN13RootSceneNode21ResetPositionFromFileEv
// The original runs only when the children list has a first child. It then sets that child's position to zero, its
// rotation to quaternion (0, 0, 0) and its scale to (1, 1, 1), sets this node's position to zero, and calls the child's
// updateAbsolutePosition(false). Note: the original tests the raw list head against 4, which is a non-null child pointer
// (the child is head - 4). An empty list is not reproduced: the original reads the child count word as a child there.
void RootSceneNode::ResetPositionFromFile() {
    if (getChildren().empty()) {
        return;
    }
    glitch::scene::ISceneNode* child = *getChildren().begin();
    glitch::core::vector3d<float> zero;
    zero.X = 0.0f;
    zero.Y = 0.0f;
    zero.Z = 0.0f;
    child->setPosition(zero);
    glitch::core::quaternion rotation;
    rotation.set(0.0f, 0.0f, 0.0f);
    child->setRotation(rotation);
    glitch::core::vector3d<float> one;
    one.X = 1.0f;
    one.Y = 1.0f;
    one.Z = 1.0f;
    child->setScale(one);
    setPosition(zero);
    child->updateAbsolutePosition(false);
}

// 0x35ccdc _ZN13RootSceneNode11GetAnimRootEb
// Search order: root_camera (only when alternate is false), then Bip01, Root and root_character, each by findSceneNodeRef.
glitch::scene::ISceneNode* RootSceneNode::GetAnimRoot(bool alternate) {
    glitch::scene::ISceneNode* result = nullptr;
    if (alternate || (result = findSceneNodeRef(this, "root_camera")) == nullptr) {
        result = findSceneNodeRef(this, "Bip01");
        if (result == nullptr) {
            result = findSceneNodeRef(this, "Root");
            if (result == nullptr) {
                return findSceneNodeRef(this, "root_character");
            }
        }
    }
    return result;
}

// 0x35cd5c _ZN13RootSceneNode10_CalcDeltaERN6glitch4core8vector3dIfEE
// Zeroes the delta, then adds the delta of each animator applicator. A null applicator trips the assert (RootSceneNode.cpp:244).
void RootSceneNode::_CalcDelta(glitch::core::vector3d<float>& delta) {
    delta.X = 0.0f;  // +0x00
    delta.Y = 0.0f;  // +0x04
    delta.Z = 0.0f;  // +0x08
    for (auto it = getAnimators().begin(); it != getAnimators().end(); ++it) {
        AnimApplicator* applicator = GetApplicator(*it);
        if (applicator == nullptr) {
            // ASSERT(aa) FAILED: RootSceneNode.cpp:244 (printed at assert level 1)
            continue;
        }
        delta.X += applicator->m_delta.X;
        delta.Y += applicator->m_delta.Y;
        delta.Z += applicator->m_delta.Z;
    }
}

// 0x35ce6c _ZN13RootSceneNode11_ResetDeltaEj
// For each animator, ResetDelta(time) (AnimApplicator vptr+0x0c) on its applicator. A null applicator trips the assert
// (RootSceneNode.cpp:222, printed at assert level 1).
void RootSceneNode::_ResetDelta(std::uint32_t time) {
    for (auto it = getAnimators().begin(); it != getAnimators().end(); ++it) {
        AnimApplicator* applicator = GetApplicator(*it);
        if (applicator == nullptr) {
            // ASSERT(aa) FAILED: RootSceneNode.cpp:222
            continue;
        }
        applicator->ResetDelta(time);
    }
}

// 0x35cf48 _ZN13RootSceneNode19_HandleDisplacementEj
// The animation root position is read, the applicators delta is scaled by this node scale (x, y; z is zeroed) and rotated by its
// rotation, and this node moves by it (setPosition, vptr+0xa4). With a displacement node that node is set to the negated old root
// position (and updated); otherwise the animation root goes to (0, 0, z) and the alternate root moves by the old offset.
// Returns whether the rotated delta is non-zero.
bool RootSceneNode::_HandleDisplacement(std::uint32_t time) {
    (void)time;
    const glitch::core::vector3d<float> rootPosition = m_animRoot->getPosition();   // vptr+0xa0
    glitch::core::vector3d<float> delta = {0.0f, 0.0f, 0.0f};
    _CalcDelta(delta);
    delta.X = delta.X * scale.X;      // +0xc8
    delta.Y = delta.Y * scale.Y;
    delta.Z = 0.0f;
    delta = rotation * delta;         // +0xb8
    const glitch::core::vector3d<float> position = getPosition();
    setPosition(glitch::core::vector3d<float>{position.X + delta.X, position.Y + delta.Y, position.Z + delta.Z});
    if (m_displacementNode != nullptr) {
        m_displacementNode->setPosition(glitch::core::vector3d<float>{-rootPosition.X, -rootPosition.Y, -rootPosition.Z});
        m_displacementNode->updateAbsolutePosition(false);
    } else {
        m_animRoot->setPosition(glitch::core::vector3d<float>{0.0f, 0.0f, rootPosition.Z});
        if (m_animRootAlt != nullptr) {
            const glitch::core::vector3d<float> altPosition = m_animRootAlt->getPosition();
            m_animRootAlt->setPosition(glitch::core::vector3d<float>{altPosition.X - rootPosition.X, altPosition.Y - rootPosition.Y,
                                                                       altPosition.Z - rootPosition.Z});
        }
    }
    return delta.X != 0.0f || delta.Y != 0.0f || delta.Z != 0.0f;
}

// 0x35d168 _ZN13RootSceneNode9onAnimateEj
// A pending visible request is applied first (the scene manager is told). Nodes that are not animated (flags 0x200 clear, or
// visible-only animation while hidden) only record the time. With a game object the world box (grown by the node box when the
// object has no x and y extent) is tested against s_enlargedCamera frustum unless the object is just made visible or a cut scene
// runs. A culled node runs only onUpdateTime and the displacement (once, when it was animated last frame); a visible node runs
// every animator, the displacement, the absolute position update (unless the object has a net owner) and the children.
void RootSceneNode::onAnimate(std::uint32_t time) {
    bool justMadeVisible = false;
    if (m_visibleRequested) {
        if ((flags & glitch::scene::ESNF_VISIBLE) == 0) {
            glitch::scene::ISceneNode::setVisible(true);
            sceneManager->notifyVisibilityChanged();    // +0x110
            m_visibleRequested = false;
            justMadeVisible = true;
        }
    }
    if (((flags & glitch::scene::ESNF_ANIMATE_ONLY_VISIBLE) != 0 && (flags & glitch::scene::ESNF_VISIBLE) == 0) ||
        (flags & glitch::scene::ESNF_ANIMATE) == 0) {
        m_lastAnimTime = time;
        return;
    }
    bool culled = false;
    if (m_object != nullptr && !justMadeVisible && !ScriptManager::s_inst.m_inCutScene) {
        GameObject* object = static_cast<GameObject*>(m_object);
        glitch::core::aabbox3d<float> box;
        std::memcpy(&box, object->m_absAabb, sizeof(box));
        if (object->m_zeroSizeAabb) {
            box.addInternalBox(getBoundingBox());
        }
        if (!s_enlargedCamera.getViewFrustum()->intersects(box) && (flags & glitch::scene::ESNF_ANIMATE_ONLY_VISIBLE) != 0) {
            culled = true;
        }
    }
    if (culled && !unk_20a) {
        onUpdateTime(time);
        bool refresh = false;
        if (m_displacementEnabled) {
            for (auto it = getAnimators().begin(); it != getAnimators().end(); ++it) {
                GetApplicator(*it)->AnimateNode(time);
            }
            refresh = _HandleDisplacement(time);
            flags &= ~glitch::scene::ESNF_ABSOLUTE_CHANGED;
        }
        if (refresh || unk_208) {
            updateAbsolutePosition(true);
            unk_208 = false;
        }
        ++s_dbgUpdateTimeNodeCount;
        unk_20a = false;
        m_lastAnimTime = time;
        return;
    }
    ++s_dbgAnimatedNodeCount;
    (void)DebugSwitches::GetInstance()->GetSwitch("isTracingGlitchOnAnimate");
    for (auto it = getAnimators().begin(); it != getAnimators().end(); ++it) {
        (*it)->animateNode(this, time);
    }
    if (m_displacementEnabled) {
        _HandleDisplacement(time);
    }
    if (m_object == nullptr || static_cast<GameObject*>(m_object)->m_netOwnerId == -1) {
        updateAbsolutePosition(false);
    }
    for (auto it = getChildren().begin(); it != getChildren().end(); ++it) {
        (*it)->onAnimate(time);
    }
    unk_20a = !culled;
    flags &= ~glitch::scene::ESNF_ABSOLUTE_CHANGED;
    m_lastAnimTime = time;
}

// 0x35d4cc _ZN13RootSceneNode19_EnableDisplacementEb
// Off, or an animation root already set: only the flag is stored. Otherwise the
// two animation roots are found (the alternate one is dropped when it equals the first), a displacement node (CEmptySceneNode, id
// -1) takes all the children of this node and is added to it, and every applicator gets the animation root as reference node; a
// missing applicator turns the displacement off again.
void RootSceneNode::_EnableDisplacement(bool enable) {
    if (!enable || m_animRoot != nullptr) {
        m_displacementEnabled = enable;
        return;
    }
    m_animRoot = GetAnimRoot(false);
    m_animRootAlt = GetAnimRoot(true);
    if (m_animRoot != nullptr) {
        if (m_animRootAlt == m_animRoot) {
            m_animRootAlt = nullptr;
        } else if (m_animRootAlt != nullptr) {
            ++m_animRootAlt->referenceCounter;
        }
        ++m_animRoot->referenceCounter;
        m_displacementNode = new glitch::scene::CEmptySceneNode(-1);
        for (auto it = getChildren().begin(); it != getChildren().end();) {
            glitch::scene::ISceneNode* child = *it;
            ++it;
            m_displacementNode->addChild(child);
        }
        addChild(m_displacementNode);
        for (auto it = getAnimators().begin(); it != getAnimators().end(); ++it) {
            AnimApplicator* applicator = GetApplicator(*it);
            if (applicator == nullptr) {
                m_displacementEnabled = false;
                return;
            }
            applicator->SetRefNode(m_animRoot);
        }
        m_displacementEnabled = enable;
    } else {
        m_animRootAlt = nullptr;
    }
}

// 0x35d624 _ZN13RootSceneNode7NewAnimEb
// Calls _EnableDisplacement with the request. Then, when displacement is on and an animation root exists, and the last
// animation time is not zero, it runs _ResetDelta with (last time + 1) and calls onAnimate with the last time through the
// vtable. The callees _EnableDisplacement, _ResetDelta and onAnimate are partial, so this body is exact only as far as
// their behaviour is.
void RootSceneNode::NewAnim(bool enable) {
    _EnableDisplacement(enable);
    if (m_displacementEnabled && m_animRoot != nullptr) {
        const std::uint32_t lastTime = m_lastAnimTime;
        if (lastTime != 0) {
            _ResetDelta(lastTime + 1);
            onAnimate(lastTime);
        }
    }
}

// 0x35d67c _ZN13RootSceneNodeD1Ev
// Drops the animation root (+0x1f0), the alternate root (+0x1f4) and the displacement node (+0x1f8), and clears each
// pointer. The original's member strings (m_name at +0x1d4, then m_fileName at +0x1bc) and the base destructor run after
// that body. C++ runs them in the same order after this body. The vptr stores are the compiler's. The secondary vptr
// store at +0x20c is not written here (see the part 2 note on m_secondaryVptr).
RootSceneNode::~RootSceneNode() {
    if (m_animRoot != nullptr) {
        m_animRoot->drop();
        m_animRoot = nullptr;
    }
    if (m_animRootAlt != nullptr) {
        m_animRootAlt->drop();
        m_animRootAlt = nullptr;
    }
    if (m_displacementNode != nullptr) {
        m_displacementNode->drop();
        m_displacementNode = nullptr;
    }
}

// 0x35d748 _ZN13RootSceneNodeD0Ev
// Skipped: the deleting destructor. It calls the complete-object destructor above and then frees the object. The C++
// delete expression generates it from the destructor.

// 0x35d764 _ZN13RootSceneNodeD2Ev
// Skipped: the base-object destructor, which takes the VTT as its second argument and restores the vptrs of the virtual
// base from it. The compiler generates it from the destructor above.
